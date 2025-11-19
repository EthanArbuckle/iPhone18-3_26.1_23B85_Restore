void sub_22C3A8E40()
{
  sub_22C36BA7C();
  v0 = sub_22C908A0C();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = *(sub_22C9087DC() + 16);
  if (v9)
  {
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v12 = *(v10 + 64);
    sub_22C36BA94();
    v15 = v13 + v14;
    v32 = *(v10 + 56);
    v33 = v16;
    v31 = (v10 - 8);
    v17 = MEMORY[0x277D84F90];
    v30 = v0;
    do
    {
      v33(v8, v15, v0);
      v34[0] = sub_22C90891C();
      v34[1] = v18;
      MEMORY[0x28223BE20](v34[0]);
      sub_22C369920();
      *(v19 - 16) = v34;
      v21 = sub_22C5EC08C(sub_22C3AC11C, v20, v17);

      if (v21)
      {
        (*v31)(v8, v0);
      }

      else
      {
        v22 = sub_22C90891C();
        v24 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = *(v17 + 16);
          sub_22C590270();
          v17 = v28;
        }

        v25 = *(v17 + 16);
        if (v25 >= *(v17 + 24) >> 1)
        {
          sub_22C590270();
          v17 = v29;
        }

        v0 = v30;
        (*v31)(v8, v30);
        *(v17 + 16) = v25 + 1;
        v26 = v17 + 16 * v25;
        *(v26 + 32) = v22;
        *(v26 + 40) = v24;
      }

      v15 += v32;
      --v9;
    }

    while (v9);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  sub_22C3A5968(v17);

  sub_22C36CC48();
}

void sub_22C3A909C()
{
  sub_22C36BA7C();
  v0 = sub_22C90069C();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C9063DC();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C3A8E40();
  if (!v15)
  {
    sub_22C903F6C();
    v16 = sub_22C9063CC();
    v17 = sub_22C90AADC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22C366000, v16, v17, "No newestClientRequestId, returning a UUID.", v18, 2u);
      MEMORY[0x2318B9880](v18, -1, -1);
    }

    v19 = *(v12 + 8);
    v20 = sub_22C36EBF0();
    v21(v20);
    sub_22C90068C();
    sub_22C90065C();
    (*(v3 + 8))(v8, v0);
  }

  sub_22C372FA4();
  sub_22C36CC48();
}

uint64_t sub_22C3A9268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v5 = sub_22C9089DC();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v32 - v14;
  v16 = sub_22C90873C();
  v17 = sub_22C369824(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v24 = v23 - v22;
  v32[1] = a1;
  sub_22C9089EC();
  v25 = sub_22C9087DC();
  v36[3] = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  v36[4] = sub_22C3AC13C();
  v36[0] = v25;
  sub_22C9089CC();
  v26 = *(v8 + 8);
  v26(v13, v5);
  sub_22C36FF94(v36);
  if ((*(v8 + 88))(v15, v5) != *MEMORY[0x277D1E858])
  {
    v26(v15, v5);
    goto LABEL_9;
  }

  (*(v8 + 96))(v15, v5);
  (*(v19 + 32))(v24, v15, v16);
  if (sub_22C90891C() == v33 && v27 == v34)
  {
  }

  else
  {
    v29 = sub_22C90B4FC();

    if ((v29 & 1) == 0)
    {
      (*(v19 + 8))(v24, v16);
LABEL_9:
      v30 = sub_22C903B1C();
      return sub_22C36C640(v35, 1, 1, v30);
    }
  }

  sub_22C90871C();
  return (*(v19 + 8))(v24, v16);
}

void sub_22C3A9540()
{
  sub_22C36BA7C();
  v1 = v0;
  v2 = sub_22C9089DC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v8 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v8);
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22C908A0C();
  v15 = sub_22C369824(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v22 = v21 - v20;
  v23 = sub_22C9087DC();
  sub_22C3A5950(v23);

  if (sub_22C370B74(v13, 1, v14) == 1)
  {
    sub_22C3AC228(v13, &qword_27D9BA808, &qword_22C90C6E0);
    v24 = 1;
  }

  else
  {
    v38 = v1;
    v25 = *(v17 + 32);
    v25(v22, v13, v14);
    sub_22C9089EC();
    v26 = *(v5 + 88);
    v27 = sub_22C370018();
    if (v28(v27) == *MEMORY[0x277D1E838])
    {
      v29 = *(v5 + 8);
      v30 = sub_22C370018();
      v31(v30);
      v32 = v38;
      v33 = sub_22C372FA4();
      (v25)(v33);
      v1 = v32;
      v24 = 0;
    }

    else
    {
      (*(v17 + 8))(v22, v14);
      v34 = *(v5 + 8);
      v35 = sub_22C370018();
      v36(v35);
      v24 = 1;
      v1 = v38;
    }
  }

  sub_22C36C640(v1, v24, 1, v14);
  sub_22C36CC48();
}

void sub_22C3A97AC()
{
  sub_22C36BA7C();
  v1 = v0;
  v49 = sub_22C901FAC();
  v2 = sub_22C369824(v49);
  v43 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C3698A8();
  v48 = v6;
  sub_22C36BA0C();
  v7 = sub_22C9089DC();
  v8 = sub_22C369824(v7);
  v52 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  v51 = v12;
  sub_22C36BA0C();
  v13 = sub_22C908CEC();
  v14 = sub_22C369824(v13);
  v41 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v20 = v19 - v18;
  v21 = sub_22C908A0C();
  v22 = sub_22C369824(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v29 = v28 - v27;
  v30 = sub_22C9087DC();
  v31 = *(v30 + 16);
  if (v31)
  {
    v50 = v13;
    v40 = v1;
    v32 = *(v24 + 80);
    sub_22C36BA94();
    v13 = v30 + v33;
    v1 = v51;
    v55 = (v52 + 88);
    v54 = *MEMORY[0x277D1E730];
    v45 = (v52 + 96);
    v46 = (v52 + 8);
    v53 = (v41 + 32);
    v42 = v30 + v33;
    v44 = (v43 + 8);
    v47 = v30;
    while (v31 <= *(v30 + 16))
    {
      --v31;
      (*(v24 + 16))(v29, v13 + *(v24 + 72) * v31, v21);
      sub_22C9089EC();
      (*(v24 + 8))(v29, v21);
      if ((*v55)(v1, v7) == v54)
      {
        (*v45)(v1, v7);
        v34 = v20;
        v35 = *v53;
        v13 = v50;
        (*v53)(v34, v1, v50);
        sub_22C9068FC();
        v36 = sub_22C901F6C();
        (*v44)(v48, v49);
        if (v36)
        {

          v1 = v40;
          v35(v40, v34, v50);
          v39 = 0;
          goto LABEL_11;
        }

        sub_22C372050();
        v37 = sub_22C372FA4();
        v38(v37);
        v20 = v34;
        v1 = v51;
        v30 = v47;
        v13 = v42;
        if (!v31)
        {
          goto LABEL_9;
        }
      }

      else
      {
        (*v46)(v1, v7);
        if (!v31)
        {
LABEL_9:

          v39 = 1;
          v1 = v40;
          v13 = v50;
          goto LABEL_11;
        }
      }
    }

    __break(1u);
  }

  v39 = 1;
LABEL_11:
  sub_22C36C640(v1, v39, 1, v13);
  sub_22C36CC48();
}

uint64_t sub_22C3A9BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v484 = a2;
  v486 = a3;
  v455 = sub_22C906AFC();
  v5 = sub_22C369824(v455);
  v524 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  sub_22C36D234(v9);
  v10 = sub_22C3A5908(&qword_27D9BAA00, &qword_22C911F60);
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C36D5B4();
  sub_22C36D234(v14);
  v15 = sub_22C3A5908(&qword_27D9BAA08, &qword_22C90D038);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  sub_22C36D5B4();
  sub_22C3698F8(v19);
  v451 = sub_22C9063DC();
  v20 = sub_22C369824(v451);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C3698A8();
  sub_22C3698F8(v23);
  v446 = sub_22C90769C();
  v24 = sub_22C369824(v446);
  v445 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C3698A8();
  sub_22C36D234(v28);
  v29 = sub_22C3A5908(&qword_27D9BAA10, &qword_22C90D040);
  v30 = sub_22C369914(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA64();
  sub_22C3698F8(v34);
  v447 = sub_22C90658C();
  v35 = sub_22C369824(v447);
  v437 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA64();
  sub_22C3698F8(v41);
  v42 = sub_22C906ACC();
  v43 = sub_22C369824(v42);
  v525 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v47);
  sub_22C36BA64();
  sub_22C36D234(v48);
  v49 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v49);
  v51 = *(v50 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v52);
  sub_22C36D5B4();
  sub_22C36D234(v53);
  v54 = sub_22C3A5908(&qword_27D9BAA20, &qword_22C90D048);
  sub_22C369914(v54);
  v56 = *(v55 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v57);
  sub_22C36D5B4();
  sub_22C3698F8(v58);
  v471 = sub_22C90839C();
  v59 = sub_22C369824(v471);
  v457 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22C3698A8();
  sub_22C3698F8(v63);
  v470 = sub_22C9083DC();
  v64 = sub_22C369824(v470);
  v487 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v68);
  sub_22C36BA64();
  sub_22C3698F8(v69);
  v482 = sub_22C906DDC();
  v70 = sub_22C369824(v482);
  v523 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  sub_22C3698A8();
  sub_22C3698F8(v74);
  v527 = sub_22C90654C();
  v75 = sub_22C369824(v527);
  v77 = v76;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v75);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v80);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v81);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v82);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v83);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v84);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v85);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v86);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v87);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v88);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v89);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v90);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v91);
  sub_22C36BA64();
  v519 = v92;
  sub_22C36BA0C();
  v93 = sub_22C901FAC();
  v94 = sub_22C369824(v93);
  v96 = v95;
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v94);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v99);
  sub_22C36BA64();
  v516 = v100;
  sub_22C36BA0C();
  v101 = sub_22C9070DC();
  v102 = sub_22C369824(v101);
  v520 = v103;
  v521 = v102;
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v102);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v106);
  sub_22C36BA64();
  v526 = v107;
  sub_22C36BA0C();
  v507 = sub_22C9089DC();
  v108 = sub_22C369824(v507);
  v110 = v109;
  v112 = *(v111 + 64);
  MEMORY[0x28223BE20](v108);
  sub_22C3698A8();
  sub_22C3698F8(v113);
  v496 = sub_22C9088CC();
  v114 = sub_22C369824(v496);
  v116 = v115;
  v118 = *(v117 + 64);
  MEMORY[0x28223BE20](v114);
  sub_22C3698A8();
  sub_22C3698F8(v119);
  v505 = sub_22C908A0C();
  v120 = sub_22C369824(v505);
  v122 = v121;
  v124 = *(v123 + 64);
  MEMORY[0x28223BE20](v120);
  sub_22C3698A8();
  sub_22C36D234(v125);
  v485 = v3;
  if (!*(sub_22C9087DC() + 16))
  {
    goto LABEL_79;
  }

  v464 = v42;
  v126 = *(v122 + 80);
  sub_22C36BA94();
  v503 = v127 + v129;
  v502 = v110 + 88;
  v493[2] = v110 + 8;
  v493[1] = v110 + 96;
  v493[0] = v116 + 32;
  v515 = (v77 + 88);
  v489 = (v77 + 16);
  v510 = (v77 + 96);
  v501 = *MEMORY[0x277D1E6F8];
  v512 = *MEMORY[0x277D1DAA8];
  v498 = *MEMORY[0x277D1D9F8];
  v490 = *MEMORY[0x277D1DAC0];
  v475 = v523 + 4;
  v476 = v523 + 1;
  v513 = v77 + 8;
  v480 = *MEMORY[0x277D1DAA0];
  v474 = *MEMORY[0x277D1DA98];
  v492 = (v116 + 8);
  v472 = *MEMORY[0x277D1DA50];
  v469 = *MEMORY[0x277D1DA78];
  v460 = *MEMORY[0x277D1DA48];
  v459 = *MEMORY[0x277D1DAE8];
  v458 = *MEMORY[0x277D1DA80];
  v453 = *MEMORY[0x277D1DAE0];
  v449 = *MEMORY[0x277D1DAB8];
  v497 = *MEMORY[0x277D1DEE8];
  v500[2] = v122 + 16;
  v500[1] = v122 + 8;
  v130 = v520;
  v511 = v520 + 16;
  v523 = (v96 + 8);
  v514 = (v520 + 8);
  v466 = v487 + 8;
  v131 = v519;
  v132 = v494;
  v500[0] = v127;
  v495 = v122;
  while (1)
  {
    if (v128 > *(v127 + 16))
    {
      __break(1u);
LABEL_85:
      sub_22C37EFC0();

      v344 = *v131;
      v345 = v131[1];
      v346 = *(v130 + 48);
      v347 = sub_22C3A5908(&qword_27D9BAA38, &unk_22C911F90);
      v348 = *(v347 + 48);
      *v461 = v344;
      v461[1] = v345;
      (*(v96 + 32))(v461 + v348, v131 + v346, v93);
      sub_22C36C640(v461, 0, 1, v347);
      v349 = v461[1];
      v525 = *v461;
      v522(v461 + *(v347 + 48), v93);
      sub_22C906ABC();
      sub_22C37205C(&v466);
      sub_22C908A2C();
      v350 = *(v445 + 8);
      v350(v448, v446);
      if (sub_22C370B74(v344, 1, v447) == 1)
      {

        sub_22C3AC228(v344, &qword_27D9BAA10, &qword_22C90D040);
        type metadata accessor for InterpreterError();
        sub_22C37FC10();
        sub_22C3AC27C(v351, v352);
        swift_allocError();
        v354 = v353;
        sub_22C906ABC();
        v355 = sub_22C90768C();
        v357 = v356;
        v350(v448, v446);
        *v354 = v355;
        v354[1] = v357;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_22C36BA4C(v493);
        v358(v463, v464);
LABEL_96:
        v395 = sub_22C3884F0();
        v396(v395, v521);
        v397 = sub_22C3AC2C4();
        v398(v397);
        sub_22C372050();
        return v399(v519, v527);
      }

      (*(v437 + 32))(v430, v344, v447);
      sub_22C9068FC();
      (*(v437 + 16))(v435, v430, v447);
      sub_22C906ABC();
      v366 = v486;
      sub_22C907D4C();
      (*(v437 + 8))(v430, v447);
      sub_22C36BA4C(v493);
      v367(v132, v464);
      v368 = sub_22C3884F0();
      v369(v368, v521);
      v370 = sub_22C3AC2C4();
      v371(v370);
      v372 = sub_22C907D6C();
      v373 = v366;
      goto LABEL_98;
    }

    v133 = a1;
    v134 = *(v122 + 72);
    v508 = v128 - 1;
    v135 = *(v122 + 16);
    v136 = sub_22C382584();
    v137 = v505;
    v138(v136);
    sub_22C37205C(&v533);
    sub_22C9089EC();
    (*(v122 + 8))(v130, v137);
    sub_22C36BA4C(&v532);
    v130 = v507;
    v139(v122, v507);
    sub_22C369908(&v531 + 4);
    if (v182)
    {
      break;
    }

    sub_22C36BA4C(&v524);
    v313(v122, v130);
    v127 = sub_22C37EFC0();
    v122 = v495;
    a1 = v133;
LABEL_73:
    v128 = v508;
    if (!v508)
    {
      goto LABEL_79;
    }
  }

  sub_22C36BA4C(&v523);
  v140(v122, v130);
  sub_22C36BA4C(&v522);
  v141 = v122;
  v142 = v496;
  v143(v132, v141, v496);
  v130 = v132;
  a1 = v133;
  v509 = *(sub_22C90887C() + 16);
  if (!v509)
  {

    sub_22C36BA4C(&v521);
    v314(v132, v142);
    v127 = sub_22C37EFC0();
    v122 = v495;
    goto LABEL_73;
  }

  LODWORD(v525) = 0;
  v144 = 0;
  v130 = v520;
  v145 = v521;
  v146 = *(v520 + 80);
  sub_22C36BA94();
  v517 = v147 + v148;
  v149 = v489;
  v518 = v147;
  while (2)
  {
    if (v144 >= *(v147 + 16))
    {
      __break(1u);
LABEL_81:
      v329 = v424;
      sub_22C37EFC0();

      (*(v457 + 32))(v456, v130, v471);
      sub_22C3860DC();
      v330 = v473;
      MEMORY[0x2318B5880]();
      sub_22C37205C(&v476);
      sub_22C646D68(v145, v331, v332, v333, v334, v335, v336, v337, v424, v426, v428, v430, v431, v433, v435, v437, v439, v440, v442, v443);
      v338 = sub_22C3AC2F4();
      v339(v338);
      v340 = v521;
      if (sub_22C370B74(v144, 1, v521) == 1)
      {
        v341 = &qword_27D9BAA18;
        v342 = &qword_22C911C40;
        v343 = v144;
LABEL_83:
        sub_22C3AC228(v343, v341, v342);
LABEL_92:
        v377 = v487;
        sub_22C903F8C();
        v378 = v470;
        (*(v377 + 16))(v450, v330, v470);
        v379 = sub_22C9063CC();
        v380 = sub_22C90AADC();
        if (os_log_type_enabled(v379, v380))
        {
          v381 = swift_slowAlloc();
          v525 = swift_slowAlloc();
          v530 = v525;
          *v381 = 136315138;
          MEMORY[0x2318B5880]();
          sub_22C3698BC();
          sub_22C3AC27C(v382, v383);
          sub_22C90B47C();
          v384 = sub_22C3AC2F4();
          v385(v384);
          sub_22C37B4D4();
          (v145)(v450, v470);
          v386 = sub_22C372FA4();
          v389 = sub_22C36F9F4(v386, v387, v388);

          *(v381 + 4) = v389;
          _os_log_impl(&dword_22C366000, v379, v380, "expected call transcript expression for statementId %s", v381, 0xCu);
          v390 = v525;
          sub_22C36FF94(v525);
          MEMORY[0x2318B9880](v390, -1, -1);
          v378 = v470;
          MEMORY[0x2318B9880](v381, -1, -1);
        }

        else
        {

          sub_22C37B4D4();
          (v145)(v450, v378);
        }

        sub_22C36FB04(&v473);
        v391(v452, v451);
        type metadata accessor for InterpreterError();
        sub_22C37FC10();
        sub_22C3AC27C(v392, v393);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_22C36FB04(&v485);
        v394(v456, v471);
        (v145)(v473, v378);
        goto LABEL_96;
      }

      v359 = *(v520 + 32);
      v360 = sub_22C36EBF0();
      v361(v360);
      sub_22C90702C();
      (v131)(v441, v527);
      sub_22C369908(v500 + 4);
      if (!v182)
      {
        sub_22C3704B8();
        v374 = sub_22C36EBF0();
        v375(v374);
        sub_22C372050();
        v376(v441, v527);
        goto LABEL_92;
      }

      v329(v441, v527);
      sub_22C36BA4C(&v492);
      v362(v432, v441, v464);
      sub_22C37205C(&v471);
      sub_22C906ABC();
      sub_22C908A2C();
      sub_22C36FB04(&v468);
      v363(v340, v446);
      if (sub_22C370B74(v434, 1, v447) == 1)
      {
        sub_22C36BA4C(v493);
        v364(v432, v464);
        sub_22C3704B8();
        v365(v444, v521);
        v341 = &qword_27D9BAA10;
        v342 = &qword_22C90D040;
        v343 = v434;
        goto LABEL_83;
      }

      v400 = *(v438 + 32);
      v401 = sub_22C37493C();
      v403 = v402(v401);
      MEMORY[0x2318B5880](v403);
      (*(v438 + 16))(v436, v429, v447);
      sub_22C906ABC();
      sub_22C90825C();
      sub_22C907D4C();
      v404 = *(v438 + 8);
      v405 = sub_22C379ED8();
      v406(v405);
      sub_22C36BA4C(v493);
      v407(v432, v464);
      v408 = *v514;
      v409 = v521;
      (*v514)(v444, v521);
      sub_22C36FB04(&v485);
      v410(v456, v471);
      sub_22C36BA4C(&v496);
      v411(v330, v470);
      v408(v526, v409);
      v412 = sub_22C3AC2C4();
      v413(v412);
      v372 = sub_22C907D6C();
      v373 = v486;
LABEL_98:
      sub_22C36C640(v373, 0, 1, v372);
      sub_22C372050();
      v415 = v519;
      return v414(v415, v527);
    }

    (*(v130 + 16))(v526, v517 + *(v130 + 72) * v144, v145);
    sub_22C3860DC();
    sub_22C9068FC();
    LODWORD(v524) = sub_22C3AC304();
    v150 = *v523;
    v151 = sub_22C379ED8();
    v522 = v152;
    (v152)(v151);
    sub_22C90702C();
    v153 = v131;
    v131 = *v515;
    v154 = (*v515)(v153, v527);
    if (v154 == v512)
    {
      v155 = *v149;
      v132 = v499;
      v156 = sub_22C36BA70();
      v157(v156);
      sub_22C38A840();
      v158 = sub_22C36BA70();
      v159(v158);
      v160 = *(sub_22C906F2C() - 8);
      v161 = v160[11];
      v162 = sub_22C36BA70();
      v163(v162);
      sub_22C369908(v528);
      if (!v182)
      {
        v177 = sub_22C36BA34();
        v178(v177);
        v179 = v160[1];
        v180 = sub_22C36BA70();
        v181(v180);
        goto LABEL_27;
      }

      v164 = v160[12];
      v165 = sub_22C36BA70();
      v166(v165);
      v167 = 0;
      v168 = *v132;
      v132 = *(*v132 + 16);
      while (v132 != v167)
      {
        sub_22C379EC4();
        v171 = v168 + v169 + *(v96 + 72) * v170;
        sub_22C3698BC();
        sub_22C3AC27C(&qword_27D9BAA28, v172);
        v173 = sub_22C3772A8();
        v167 = v145;
        if (v173)
        {
          goto LABEL_15;
        }
      }

LABEL_26:

      v194 = sub_22C36BA34();
      v195(v194);
LABEL_27:
      v131 = v519;
LABEL_28:
      ++v144;
      LODWORD(v525) = v524 | v525;
      sub_22C372050();
      v196(v131, v527);
      v130 = v520;
      v147 = v518;
      if (v144 != v509)
      {
        continue;
      }

      v315 = sub_22C3AC2C4();
      v316(v315);
      v122 = v495;
      if ((v525 & 1) == 0)
      {
        v132 = v494;
        v127 = sub_22C37EFC0();
        goto LABEL_73;
      }

      sub_22C37EFC0();
LABEL_79:

      v328 = sub_22C907D6C();
      return sub_22C36C640(v486, 1, 1, v328);
    }

    break;
  }

  sub_22C369908(v529);
  if (v182)
  {
    v174 = v491;
    v131 = v519;
    v175 = v527;
    (*v149)(v491, v519, v527);
    sub_22C38A840();
    v176(v174, v175);
    goto LABEL_23;
  }

  sub_22C369908(&v519 + 4);
  if (v182)
  {
    v183 = *v149;
    sub_22C382584();
    v131 = v519;
    sub_22C370008();
    v184();
    v185 = sub_22C3AC2E4();
    v186(v185, v132);
    sub_22C906FDC();
    v187 = sub_22C906FFC();
LABEL_22:
    sub_22C369848(v187);
    (*(v188 + 8))(v153);
LABEL_23:
    v189 = sub_22C3AC304();
    v190 = sub_22C3AC2F4();
    v191(v190);
    if (v189)
    {
      goto LABEL_76;
    }

    goto LABEL_24;
  }

  sub_22C369908(&v509 + 4);
  if (v197)
  {
    v198 = v477;
    v131 = v519;
    (*v149)(v477, v519, v527);
    sub_22C38A840();
    v199 = sub_22C36BA70();
    v200(v199);
    sub_22C36BA4C(&v505);
    v201 = v478;
    v202(v478, v198, v482);
    sub_22C906DAC();
    v427 = sub_22C3AC304();
    v203 = sub_22C379ED8();
    v204 = v522;
    v132 = v523;
    (v522)(v203);
    if (v427)
    {
      sub_22C37EFC0();

      sub_22C36BA4C(v506);
      v327(v201, v482);
    }

    else
    {
      sub_22C906DBC();
      v426 = a1;
      v205 = sub_22C901F6C();
      v206 = sub_22C379ED8();
      v204(v206);
      sub_22C36BA4C(v506);
      v207(v201, v482);
      if ((v205 & 1) == 0)
      {
        v208 = sub_22C36BA34();
        v209(v208);
        a1 = v426;
        v149 = v489;
        goto LABEL_28;
      }

LABEL_76:
      sub_22C37EFC0();
    }

LABEL_75:
    sub_22C372050();
    v317(v131, v527);
    v318 = v483;
    v319 = v526;
    sub_22C9068FC();
    sub_22C3A9BB4(v318, v484);
    v320 = v496;
    v321 = v494;
    v322 = v492;
    v323 = sub_22C3AC2F4();
    v324(v323);
    sub_22C3704B8();
    v325(v319, v521);
    return (*v322)(v321, v320);
  }

  sub_22C369908(v504);
  if (v210)
  {
    v211 = *v149;
    sub_22C382584();
    v131 = v519;
    sub_22C370008();
    v212();
    v213 = sub_22C3AC2E4();
    v215 = v214(v213, v132);
    MEMORY[0x2318B4220](v215);
    v187 = sub_22C906D7C();
    goto LABEL_22;
  }

  sub_22C369908(&v501);
  if (v216)
  {
    v217 = v527;
    (*v149)(v467, v519, v527);
    v425 = *v510;
    (*v510)(v467, v217);
    sub_22C36BA4C(&v495);
    v145 = v470;
    v218(v473, v467, v470);
    v132 = sub_22C9083CC();
    sub_22C37B198(v132, v219, v220, v221, v222, v223, v224, v225, v425);
    MEMORY[0x28223BE20](v226);
    sub_22C369920();
    *(v227 - 16) = a1;
    v130 = v468;
    v228 = v488;
    sub_22C6B05BC();
    v488 = v228;

    if (sub_22C370B74(v468, 1, v471) != 1)
    {
      goto LABEL_81;
    }

    sub_22C36BA4C(&v496);
    v229(v473, v145);
    v230 = sub_22C36BA34();
    v231(v230);
    v232 = v468;
    v233 = &qword_27D9BAA20;
    v234 = &qword_22C90D048;
    goto LABEL_46;
  }

  sub_22C369908(v500 + 4);
  if (v235)
  {
    v236 = *v149;
    v237 = sub_22C382584();
    v238 = v527;
    v239(v237, v519, v527);
    v240 = sub_22C3AC2E4();
    v241(v240, v238);
    sub_22C36BA4C(&v492);
    v132 = v463;
    v242 = sub_22C36BA70();
    v145 = v464;
    v243(v242);
    v244 = sub_22C906A8C();
    sub_22C37B198(v244, v245, v246, v247, v248, v249, v250, v251, v424);
    MEMORY[0x28223BE20](v252);
    sub_22C369920();
    *(v253 - 16) = a1;
    v131 = v462;
    v254 = v488;
    sub_22C6B05E8();
    v488 = v254;

    v130 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
    if (sub_22C370B74(v462, 1, v130) != 1)
    {
      goto LABEL_85;
    }

    sub_22C36BA4C(v493);
    v255(v463, v464);
    v256 = sub_22C36BA34();
    v257(v256);
    sub_22C3AC228(v462, &qword_27D9BAA00, &qword_22C911F60);
    v258 = sub_22C3A5908(&qword_27D9BAA38, &unk_22C911F90);
    sub_22C36C640(v461, 1, 1, v258);
    v232 = v461;
    v233 = &qword_27D9BAA08;
    v234 = &qword_22C90D038;
LABEL_46:
    sub_22C3AC228(v232, v233, v234);
    goto LABEL_27;
  }

  sub_22C369908(&v488 + 4);
  v131 = v519;
  v145 = v521;
  v153 = v465;
  if (v259)
  {
    v192 = sub_22C3884F0();
    goto LABEL_25;
  }

  sub_22C369908(&v488);
  if (v260)
  {
    v261 = *v149;
    v262 = sub_22C382584();
    v263 = v527;
    v264(v262, v131, v527);
    v265 = sub_22C3AC2E4();
    v266(v265, v263);
    sub_22C3860DC();
    MEMORY[0x2318B4800]();
    v187 = sub_22C90734C();
    goto LABEL_22;
  }

  sub_22C369908(&v486 + 4);
  if (!v267)
  {
    sub_22C369908(&v478 + 4);
    if (v277)
    {
      v278 = *v149;
      v279 = sub_22C382584();
      v280 = v131;
      v281 = v527;
      v282(v279, v280, v527);
      v283 = sub_22C3AC2E4();
      v285 = v284(v283, v281);
      v132 = MEMORY[0x2318B47E0](v285);
      v286 = sub_22C90731C();
      sub_22C369848(v286);
      (*(v287 + 8))();
      v288 = 0;
      v289 = v132[2];
      while (v289 != v288)
      {
        sub_22C379EC4();
        v292 = v132 + v290 + *(v96 + 72) * v291;
        sub_22C3698BC();
        sub_22C3AC27C(&qword_27D9BAA28, v293);
        v294 = sub_22C3772A8();
        v288 = v145;
        if (v294)
        {
LABEL_15:
          sub_22C37EFC0();

          v131 = v519;
          goto LABEL_75;
        }
      }

      goto LABEL_26;
    }

    sub_22C369908(&v472);
    if (v295)
    {
      v296 = *v149;
      v297 = sub_22C382584();
      v298 = v131;
      v299 = v527;
      v300(v297, v298, v527);
      v301 = sub_22C3AC2E4();
      v303 = v302(v301, v299);
      v132 = MEMORY[0x2318B4480](v303);
      v304 = sub_22C906FBC();
      sub_22C369848(v304);
      (*(v305 + 8))();
      v306 = 0;
      v307 = v132[2];
      while (v307 != v306)
      {
        sub_22C379EC4();
        v310 = v132 + v308 + *(v96 + 72) * v309;
        sub_22C3698BC();
        sub_22C3AC27C(&qword_27D9BAA28, v311);
        v312 = sub_22C3772A8();
        v306 = v145;
        if (v312)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_26;
    }

LABEL_24:
    v192 = sub_22C3884F0();
    v145 = v521;
LABEL_25:
    v193(v192, v145);
    goto LABEL_28;
  }

  v268 = *v149;
  sub_22C370008();
  v269();
  sub_22C38A840();
  v270 = v132;
  v132 = v455;
  v271(v454, v270);
  sub_22C36BA4C(v479);
  v272(v465, v454, v455);
  sub_22C3860DC();
  MEMORY[0x2318B3FB0]();
  v273 = sub_22C3AC304();
  v274 = sub_22C3AC2F4();
  v275(v274);
  if ((v273 & 1) == 0)
  {
    sub_22C36BA4C(v481);
    v276(v465, v455);
    goto LABEL_24;
  }

  sub_22C37EFC0();

  v416 = v526;
  sub_22C9068FC();
  v417 = (*(v437 + 104))(v435, *MEMORY[0x277D1DB18], v447);
  MEMORY[0x2318B4B50](v417);
  sub_22C37205C(&v471);
  sub_22C90766C();
  v418 = v486;
  sub_22C907D4C();
  sub_22C36BA4C(v481);
  v419(v465, v455);
  sub_22C3704B8();
  v420(v416, v521);
  v421 = sub_22C3AC2C4();
  v422(v421);
  v423 = sub_22C907D6C();
  sub_22C36C640(v418, 0, 1, v423);
  sub_22C372050();
  v415 = v131;
  return v414(v415, v527);
}

uint64_t sub_22C3ABFA8()
{
  v0 = sub_22C901FAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90838C();
  v5 = sub_22C901F6C();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

unint64_t sub_22C3AC13C()
{
  result = qword_27D9BA9F8;
  if (!qword_27D9BA9F8)
  {
    sub_22C3AC1A0(&qword_27D9BA9F0, &qword_22C912420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BA9F8);
  }

  return result;
}

uint64_t sub_22C3AC1A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22C3AC228(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22C3A5908(a2, a3);
  sub_22C369848(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_22C3AC27C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C3AC2C4()
{
  v1 = **(v0 - 400);
  result = *(v0 - 368);
  v3 = *(v0 - 352);
  return result;
}

uint64_t sub_22C3AC2F4()
{
  result = v0;
  v4 = *(v1 - 136);
  v3 = *(v1 - 128);
  return result;
}

uint64_t sub_22C3AC304()
{

  return sub_22C901F6C();
}

uint64_t sub_22C3AC31C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22C90910C();
  v5 = sub_22C369824(v4);
  v128 = v6;
  v129 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698E4();
  v117 = v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA64();
  v119 = v11;
  sub_22C36BA0C();
  v12 = sub_22C90952C();
  v13 = sub_22C369824(v12);
  v126 = v14;
  v127 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C3698E4();
  v124 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA64();
  v125 = v19;
  sub_22C36BA0C();
  v131 = sub_22C90919C();
  v20 = sub_22C369824(v131);
  v134 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C3698E4();
  v116 = v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA58();
  v118 = v26;
  sub_22C369930();
  MEMORY[0x28223BE20](v27);
  sub_22C36BA58();
  v121 = v28;
  sub_22C369930();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA64();
  v130 = v30;
  sub_22C36BA0C();
  v31 = sub_22C9093BC();
  v32 = sub_22C369824(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  v120 = v37;
  sub_22C369930();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA64();
  v132 = v39;
  v40 = sub_22C3A5908(&qword_27D9BAA50, &qword_22C90D058);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v44 = &v116 - v43;
  v45 = *(v42 + 56);
  v46 = v34[2];
  v122 = v2;
  v46(&v116 - v43, v2, v31);
  v123 = a1;
  v46(&v44[v45], a1, v31);
  v47 = v34[11];
  v48 = v47(v44, v31);
  v49 = v48;
  v50 = *MEMORY[0x277D72A38];
  v133 = v34;
  if (v48 == v50)
  {
    v51 = v132;
    v46(v132, v44, v31);
    v52 = v34[12];
    v52(v51, v31);
    v120 = *v51;
    v53 = swift_projectBox();
    v54 = v47(&v44[v45], v31);
    if (v54 == v49)
    {
      v132 = v31;
      v52(&v44[v45], v31);
      v129 = *&v44[v45];
      v55 = swift_projectBox();
      v56 = v134;
      v57 = *(v134 + 16);
      v59 = v130;
      v58 = v131;
      v57(v130, v53, v131);
      v60 = v121;
      v57(v121, v55, v58);
      v61 = v125;
      sub_22C9090AC();
      v62 = v124;
      sub_22C9090AC();
      v63 = sub_22C90950C();
      v64 = *(v126 + 8);
      v65 = v62;
      v66 = v127;
      v64(v65, v127);
      v64(v61, v66);
      if (v63)
      {
        v67 = sub_22C90908C();
        v69 = v68;
        v71 = v67 == sub_22C90908C() && v69 == v70;
        v72 = v133;
        if (v71)
        {
          v73 = 1;
        }

        else
        {
          v73 = sub_22C90B4FC();
        }

        v56 = v134;
        v59 = v130;
      }

      else
      {
        v73 = 0;
        v72 = v133;
      }

      v110 = *(v56 + 8);
      v110(v60, v58);
      v110(v59, v58);

      (v72[1])(v44, v132);
      return v73 & 1;
    }

    v94 = v134;
    if (v54 == *MEMORY[0x277D729F8])
    {
      v132 = v31;
      v52(&v44[v45], v31);
      v130 = *&v44[v45];
      v95 = swift_projectBox();
      v96 = v118;
      v97 = v131;
      (*(v94 + 16))(v118, v53, v131);
      v98 = v119;
      (*(v128 + 16))(v119, v95, v129);
      v99 = v125;
      sub_22C9090AC();
      v100 = v124;
      sub_22C9090AC();
      v101 = sub_22C90950C();
      v102 = *(v126 + 8);
      v103 = v100;
      v104 = v127;
      v102(v103, v127);
      v102(v99, v104);
      if (v101)
      {
        v105 = sub_22C90908C();
        v107 = v106;
        if (v105 == sub_22C90908C() && v107 == v108)
        {
          v73 = 1;
        }

        else
        {
          v73 = sub_22C90B4FC();
        }

        v113 = v132;

        v97 = v131;
        v96 = v118;
        v114 = v119;
      }

      else
      {
        v73 = 0;
        v113 = v132;
        v114 = v98;
      }

      (*(v128 + 8))(v114, v129);
      (*(v94 + 8))(v96, v97);

      (v133[1])(v44, v113);
      return v73 & 1;
    }

    v130 = v44;
    goto LABEL_26;
  }

  v130 = v44;
  v132 = v31;
  if (v48 != *MEMORY[0x277D729F8])
  {
LABEL_27:
    v73 = sub_22C9093AC();
    sub_22C3AD35C(v130);
    return v73 & 1;
  }

  v74 = v120;
  v75 = v130;
  v76 = v132;
  v46(v120, v130, v132);
  v77 = v133[12];
  v77(v74, v76);
  v78 = *v74;
  if (v47((v75 + v45), v76) != v50)
  {
LABEL_26:

    goto LABEL_27;
  }

  v79 = swift_projectBox();
  v77((v75 + v45), v76);
  v123 = *(v75 + v45);
  v80 = swift_projectBox();
  v81 = v117;
  (*(v128 + 16))(v117, v79, v129);
  v82 = v116;
  v83 = v131;
  (*(v134 + 16))(v116, v80, v131);
  v84 = v125;
  sub_22C9090AC();
  v85 = v124;
  sub_22C9090AC();
  LOBYTE(v79) = sub_22C90950C();
  v86 = *(v126 + 8);
  v87 = v85;
  v88 = v127;
  v86(v87, v127);
  v86(v84, v88);
  if (v79)
  {
    v89 = sub_22C90908C();
    v91 = v90;
    if (v89 == sub_22C90908C() && v91 == v92)
    {
      v73 = 1;
    }

    else
    {
      v73 = sub_22C90B4FC();
    }

    v111 = v132;

    v112 = v133;
    v83 = v131;
  }

  else
  {
    v73 = 0;
    v111 = v132;
    v112 = v133;
  }

  (*(v134 + 8))(v82, v83);
  (*(v128 + 8))(v81, v129);

  (v112[1])(v130, v111);
  return v73 & 1;
}

void sub_22C3ACC84(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C90952C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C9093BC();
  v9 = sub_22C369824(v8);
  v89 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v92 = v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA58();
  v93 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  v83 = v17;
  sub_22C36BA0C();
  v18 = sub_22C90906C();
  v19 = sub_22C369824(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C3698E4();
  v82 = v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA58();
  v91 = v26;
  sub_22C369930();
  MEMORY[0x28223BE20](v27);
  v29 = v77 - v28;
  v94 = sub_22C9063DC();
  v30 = sub_22C369824(v94);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  v36 = v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90405C();
  v80 = *(v21 + 16);
  v81 = v21 + 16;
  v80(v29, v1, v18);
  v37 = sub_22C9063CC();
  v88 = sub_22C90AACC();
  v38 = os_log_type_enabled(v37, v88);
  v77[2] = v7;
  v77[3] = a1;
  if (v38)
  {
    v39 = v21;
    v40 = swift_slowAlloc();
    *v40 = 134217984;
    v41 = v2;
    v42 = v37;
    v43 = *(sub_22C90905C() + 16);

    v44 = sub_22C377B20(v39);
    v45(v44);
    *(v40 + 4) = v43;
    v37 = v42;
    v2 = v41;
    _os_log_impl(&dword_22C366000, v37, v88, "Flattening collection with %ld values", v40, 0xCu);
    v46 = v40;
    v21 = v39;
    MEMORY[0x2318B9880](v46, -1, -1);
  }

  else
  {
    v47 = sub_22C377B20(v21);
    v48(v47);
  }

  (*(v32 + 8))(v36, v94);
  v49 = sub_22C90905C();
  v50 = *(v49 + 16);
  if (!v50)
  {
LABEL_24:

    sub_22C90904C();
    sub_22C90903C();
    return;
  }

  v86 = v18;
  v77[0] = v49;
  v77[1] = v2;
  v52 = v89 + 16;
  v51 = *(v89 + 16);
  v84 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v53 = v49 + v84;
  v54 = *(v89 + 72);
  v89 += 88;
  v88 = *MEMORY[0x277D729E0];
  v94 = (v52 - 8);
  v78 = (v52 + 80);
  v79 = (v52 + 16);
  v85 = v21 + 8;
  v55 = MEMORY[0x277D84F90];
  v56 = v93;
  v57 = v83;
  v87 = v51;
  while (1)
  {
    v51(v57, v53, v8);
    v51(v56, v57, v8);
    v58 = (*v89)(v56, v8);
    if (v58 != v88)
    {
      v72 = *v94;
      (*v94)(v56, v8);
      v51(v92, v57, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = *(v55 + 16);
        sub_22C5903C0();
        v55 = v75;
      }

      v73 = *(v55 + 16);
      if (v73 >= *(v55 + 24) >> 1)
      {
        sub_22C5903C0();
        v55 = v76;
      }

      v72(v57, v8);
      *(v55 + 16) = v73 + 1;
      (*v79)(v55 + v84 + v73 * v54, v92, v8);
      v51 = v87;
      goto LABEL_23;
    }

    v59 = v52;
    (*v78)(v56, v8);
    v60 = *v56;
    v61 = swift_projectBox();
    v62 = v86;
    v80(v91, v61, v86);

    v64 = v82;
    sub_22C3ACC84(v63);
    v65 = sub_22C90905C();
    v90(v64, v62);
    v66 = *(v65 + 16);
    v67 = *(v55 + 16);
    if (__OFADD__(v67, v66))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v67 + v66 > *(v55 + 24) >> 1)
    {
      sub_22C5903C0();
      v55 = v68;
    }

    v52 = v59;
    v51 = v87;
    v57 = v83;
    if (*(v65 + 16))
    {
      if ((*(v55 + 24) >> 1) - *(v55 + 16) < v66)
      {
        goto LABEL_27;
      }

      swift_arrayInitWithCopy();

      if (v66)
      {
        v69 = *(v55 + 16);
        v70 = __OFADD__(v69, v66);
        v71 = v69 + v66;
        if (v70)
        {
          goto LABEL_28;
        }

        *(v55 + 16) = v71;
      }
    }

    else
    {

      if (v66)
      {
        goto LABEL_26;
      }
    }

    v90(v91, v86);
    (*v94)(v57, v8);
LABEL_23:
    v53 += v54;
    --v50;
    v56 = v93;
    if (!v50)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_22C3AD35C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BAA50, &qword_22C90D058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_22C90977C();
  v3 = sub_22C369824(v2);
  v40 = v4;
  v41 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C90952C();
  v11 = sub_22C369824(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v18 = (v17 - v16);
  v19 = sub_22C9094AC();
  v20 = sub_22C369824(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v27 = v26 - v25;
  v28 = *(v13 + 16);
  v28(v18, v1, v10);
  if ((*(v13 + 88))(v18, v10) == *MEMORY[0x277D72D18])
  {
    (*(v13 + 96))(v18, v10);
    v29 = *v18;
    v30 = swift_projectBox();
    (*(v22 + 16))(v27, v30, v19);

    v31 = swift_allocObject();
    sub_22C90948C();
    v32 = sub_22C9096FC();
    v34 = v33;
    (*(v40 + 8))(v9, v41);
    v31[2] = v32;
    v31[3] = v34;
    v35 = sub_22C90949C();
    v37 = v36;
    (*(v22 + 8))(v27, v19);
    v31[4] = v35;
    v31[5] = v37;
    *a1 = v31;
    v38 = *MEMORY[0x277D72D28];
    return (*(v13 + 104))();
  }

  else
  {
    (*(v13 + 8))(v18, v10);
    return (v28)(a1, v1, v10);
  }
}

uint64_t ComponentwiseRouter.__allocating_init(planGenerationService:planInterpreterService:queryDecorationService:responseGenerationService:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = swift_allocObject();
  v7 = sub_22C36EBF0();
  ComponentwiseRouter.init(planGenerationService:planInterpreterService:queryDecorationService:responseGenerationService:)(v7, v8, a3, a4);
  return v6;
}

void *ComponentwiseRouter.init(planGenerationService:planInterpreterService:queryDecorationService:responseGenerationService:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v9 = a3[1];
  v10 = *a4;
  v11 = a4[1];
  v4[2] = *a1;
  v4[3] = v5;
  v4[4] = v6;
  v4[5] = v7;
  v4[6] = v8;
  v4[7] = v9;
  v4[8] = v10;
  v4[9] = v11;
  return v4;
}

uint64_t ComponentwiseRouter.routableServiceIdentifiers()()
{
  sub_22C3A5908(&qword_27D9BAA58, &qword_22C90D080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90D070;
  v2 = v0[3];
  *(inited + 32) = v0[2];
  *(inited + 40) = v2;
  v3 = v0[5];
  *(inited + 48) = v0[4];
  *(inited + 56) = v3;
  v4 = v0[7];
  *(inited + 64) = v0[6];
  *(inited + 72) = v4;
  v5 = v0[8];
  v6 = v0[9];
  *(inited + 80) = v5;
  *(inited + 88) = v6;

  return sub_22C3AD7D4(inited);
}

uint64_t sub_22C3AD7D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22C3AFEE0();
  result = MEMORY[0x2318B7DB0](v2, &type metadata for PlannerServiceIdentifier, v3);
  v5 = 0;
  v17 = result;
  v6 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v6 == v5)
    {

      return v17;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(i - 1);
    v8 = *i;

    sub_22C6A4434(&v16, v9, v8, v10, v11, v12, v13, v14, v15, v16);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C3AD898(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22C3AF8F8();
  v10 = MEMORY[0x2318B7DB0](v2, &type metadata for PromptString.TaggedRange, v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_22C6A45F4();
      --v4;
    }

    while (v4);

    return v10;
  }

  else
  {
    sub_22C3743B4();
  }

  return v2;
}

uint64_t sub_22C3AD928(uint64_t a1)
{
  result = MEMORY[0x2318B7DB0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v15 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v15;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_22C6A4514(&v14, v7, v6, v8, v9, v10, v11, v12, v13, v14);
  }

  __break(1u);
  return result;
}

void sub_22C3AD9E8()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  v2 = sub_22C90952C();
  v3 = sub_22C369958(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C36993C();
  MEMORY[0x28223BE20](v6);
  sub_22C3714E0();
  sub_22C3AFE98(&qword_28142FA80, MEMORY[0x277D72D58]);
  sub_22C388E14();
  sub_22C37FC28(v7);
  if (v0)
  {
    sub_22C373140();
    do
    {
      v8 = sub_22C386F08();
      v1(v8);
      sub_22C3AFF48();
      sub_22C6A521C();
      v9 = sub_22C3AFF38();
      v10(v9);
      sub_22C36D5C0();
    }

    while (!v11);
  }

  else
  {
    sub_22C3743B4();
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C3ADB10()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  v2 = sub_22C902D0C();
  v3 = sub_22C369958(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C36993C();
  MEMORY[0x28223BE20](v6);
  sub_22C3714E0();
  sub_22C3AFE98(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
  sub_22C388E14();
  sub_22C37FC28(v7);
  if (v0)
  {
    sub_22C373140();
    do
    {
      v8 = sub_22C386F08();
      v1(v8);
      sub_22C3AFF48();
      sub_22C6A538C();
      v9 = sub_22C3AFF38();
      v10(v9);
      sub_22C36D5C0();
    }

    while (!v11);
  }

  else
  {
    sub_22C3743B4();
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C3ADC38()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  v2 = sub_22C901FAC();
  v3 = sub_22C369958(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C36993C();
  MEMORY[0x28223BE20](v6);
  sub_22C3714E0();
  sub_22C3AFE98(&qword_2814357B0, MEMORY[0x277D1C338]);
  sub_22C388E14();
  sub_22C37FC28(v7);
  if (v0)
  {
    sub_22C373140();
    do
    {
      v8 = sub_22C386F08();
      v1(v8);
      sub_22C3AFF48();
      sub_22C6A54FC();
      v9 = sub_22C3AFF38();
      v10(v9);
      sub_22C36D5C0();
    }

    while (!v11);
  }

  else
  {
    sub_22C3743B4();
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C3ADD60()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  v2 = sub_22C90941C();
  v3 = sub_22C369958(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C36993C();
  MEMORY[0x28223BE20](v6);
  sub_22C3714E0();
  sub_22C3AFE98(&qword_27D9BAAA0, MEMORY[0x277D72B00]);
  sub_22C388E14();
  sub_22C37FC28(v7);
  if (v0)
  {
    sub_22C373140();
    do
    {
      v8 = sub_22C386F08();
      v1(v8);
      sub_22C3AFF48();
      sub_22C6A566C();
      v9 = sub_22C3AFF38();
      v10(v9);
      sub_22C36D5C0();
    }

    while (!v11);
  }

  else
  {
    sub_22C3743B4();
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C3ADE88()
{
  sub_22C36BA7C();
  v2 = v1;
  v3 = _s14TypedCandidateVMa(0);
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C36993C();
  MEMORY[0x28223BE20](v9);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v10);
  v12 = v54 - v11;
  v13 = *(v2 + 16);
  v14 = sub_22C3AFE98(&qword_27D9BAA88, _s14TypedCandidateVMa);
  v58 = v3;
  v66 = MEMORY[0x2318B7DB0](v13, v3, v14);
  v55 = *(v2 + 16);
  if (v55)
  {
    v15 = 0;
    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v54[1] = v2;
    v54[3] = v2 + v16;
    v65 = *(v6 + 72);
    while (1)
    {
      v56 = v15;
      sub_22C372584();
      sub_22C3AFDE4(v17, v12, v18);
      v19 = v66;
      v20 = *(v66 + 40);
      sub_22C90B62C();
      sub_22C9093BC();
      sub_22C3AFE98(&qword_28142FA90, MEMORY[0x277D72A78]);
      sub_22C909F8C();
      v21 = &v12[*(v58 + 20)];
      v22 = *v21;
      v23 = *(v21 + 1);
      v24 = *(v21 + 2);
      v25 = *(v21 + 3);
      v57 = v21;
      v61 = v23;
      v62 = v22;
      sub_22C909FFC();
      v59 = v25;
      v60 = v24;
      sub_22C909FFC();
      v26 = sub_22C90B66C();
      v27 = -1 << *(v19 + 32);
      v28 = v26 & ~v27;
      v64 = v19 + 56;
      if ((*(v19 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        break;
      }

LABEL_35:
      v52 = v66;
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C372584();
      sub_22C3AFDE4(v12, v54[2], v53);
      v67 = v52;
      sub_22C6A881C();
      v66 = v67;
LABEL_37:
      sub_22C388500();
      sub_22C3AFE44();
      v15 = v56 + 1;
      if (v56 + 1 == v55)
      {
        goto LABEL_38;
      }
    }

    v63 = ~v27;
    while (1)
    {
      v29 = *(v66 + 48);
      sub_22C372584();
      sub_22C3AFDE4(v30, v0, v31);
      v32 = v12;
      if (sub_22C9093AC())
      {
        v33 = (v0 + *(v58 + 20));
        v34 = v33[2];
        v35 = v33[3];
        v36 = v33[4];
        v37 = *(v57 + 4);
        v38 = *v33 == v62 && v33[1] == v61;
        if (v38 || (sub_22C90B4FC() & 1) != 0)
        {
          v39 = v34 == v60 && v35 == v59;
          if (v39 || (sub_22C90B4FC() & 1) != 0)
          {
            if (v36 == v37)
            {
LABEL_36:
              sub_22C388500();
              sub_22C3AFE44();
              v12 = v32;
              goto LABEL_37;
            }

            if (*(v36 + 16) == *(v37 + 16))
            {
              break;
            }
          }
        }
      }

LABEL_34:
      sub_22C388500();
      sub_22C3AFE44();
      v28 = (v28 + 1) & v63;
      v12 = v32;
      if (((*(v64 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v40 = 0;
    v41 = 1 << *(v36 + 32);
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v43 = v42 & *(v36 + 64);
    v44 = (v41 + 63) >> 6;
    while (v43)
    {
      v45 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      v46 = v45 | (v40 << 6);
LABEL_28:
      v49 = *(*(v36 + 48) + v46) | (*(*(v36 + 56) + 4 * v46) << 32);
LABEL_29:
      if (v49 == 8)
      {
        goto LABEL_36;
      }

      v50 = sub_22C633A1C(v49);
      if ((v51 & 1) == 0 || *(*(v37 + 56) + 4 * v50) != *(&v49 + 1))
      {
        goto LABEL_34;
      }
    }

    while (1)
    {
      v47 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v47 >= v44)
      {
        v43 = 0;
        v49 = 8;
        goto LABEL_29;
      }

      v48 = *(v36 + 64 + 8 * v47);
      ++v40;
      if (v48)
      {
        v43 = (v48 - 1) & v48;
        v46 = __clz(__rbit64(v48)) | (v47 << 6);
        v40 = v47;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_38:

    sub_22C36CC48();
  }
}

void sub_22C3AE31C()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  v2 = sub_22C9069BC();
  v3 = sub_22C369958(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C36993C();
  MEMORY[0x28223BE20](v6);
  sub_22C3714E0();
  sub_22C3AFE98(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);
  sub_22C388E14();
  sub_22C37FC28(v7);
  if (v0)
  {
    sub_22C373140();
    do
    {
      v8 = sub_22C386F08();
      v1(v8);
      sub_22C3AFF48();
      sub_22C6A5A3C();
      v9 = sub_22C3AFF38();
      v10(v9);
      sub_22C36D5C0();
    }

    while (!v11);
  }

  else
  {
    sub_22C3743B4();
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C3AE444()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  v2 = sub_22C908C5C();
  v3 = sub_22C369958(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C36993C();
  MEMORY[0x28223BE20](v6);
  sub_22C3714E0();
  sub_22C3AFE98(&qword_27D9BAA90, MEMORY[0x277D1E968]);
  sub_22C388E14();
  sub_22C37FC28(v7);
  if (v0)
  {
    sub_22C373140();
    do
    {
      v8 = sub_22C386F08();
      v1(v8);
      sub_22C3AFF48();
      sub_22C6A58CC();
      v9 = sub_22C3AFF38();
      v10(v9);
      sub_22C36D5C0();
    }

    while (!v11);
  }

  else
  {
    sub_22C3743B4();
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C3AE56C()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  v2 = sub_22C903CCC();
  v3 = sub_22C369958(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C36993C();
  MEMORY[0x28223BE20](v6);
  sub_22C3714E0();
  sub_22C3AFE98(&qword_281435738, MEMORY[0x277D1F0E0]);
  sub_22C388E14();
  sub_22C37FC28(v7);
  if (v0)
  {
    sub_22C373140();
    do
    {
      v8 = sub_22C386F08();
      v1(v8);
      sub_22C3AFF48();
      sub_22C6A5D9C();
      v9 = sub_22C3AFF38();
      v10(v9);
      sub_22C36D5C0();
    }

    while (!v11);
  }

  else
  {
    sub_22C3743B4();
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

uint64_t sub_22C3AE694(uint64_t a1)
{
  result = MEMORY[0x2318B7DB0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v20 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_22C6A4514(&v19, v11, v12, v13, v14, v15, v16, v17, v18, v19);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v20;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_22C3AE7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v130 = sub_22C90399C();
  v24 = sub_22C369824(v130);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  v120 = v30 - v29;
  v131 = sub_22C9039FC();
  v31 = sub_22C369824(v131);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  v117 = v37 - v36;
  v134 = sub_22C3A5908(&qword_27D9BAA78, &unk_22C90D110);
  v38 = sub_22C36985C(v134);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v115 - v41;
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(0);
  v43 = sub_22C36985C(DecorationEntityValue);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v115 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v49);
  v127 = &v115 - v50;
  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(0);
  v52 = sub_22C369824(DecorationTupleParameter);
  v54 = v53;
  v56 = *(v55 + 64);
  v57 = MEMORY[0x28223BE20](v52);
  v59 = &v115 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v60);
  v139 = &v115 - v61;
  v62 = *(v23 + 16);
  v63 = sub_22C3AFE98(qword_281430F90, type metadata accessor for QueryDecorationTupleParameter);
  v133 = DecorationTupleParameter;
  v64 = MEMORY[0x2318B7DB0](v62, DecorationTupleParameter, v63);
  v123 = *(v23 + 16);
  if (v123)
  {
    v65 = 0;
    v66 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v115 = v23;
    v122 = v23 + v66;
    v67 = *(v54 + 72);
    v128 = (v26 + 8);
    v129 = (v33 + 8);
    v118 = v26 + 32;
    v116 = v33 + 32;
    v68 = v139;
    v125 = v48;
    v138 = v67;
    v119 = v42;
    do
    {
      v132 = v65;
      sub_22C36BAA0();
      sub_22C3AFDE4(v69, v68, v70);
      v71 = *(v64 + 40);
      sub_22C90B62C();
      sub_22C9097DC();
      sub_22C909FFC();

      v72 = (v68 + *(v133 + 20));
      v140 = *v72;
      MEMORY[0x2318B8B10]();
      DecorationEntity = type metadata accessor for QueryDecorationEntity(0);
      v73 = *(DecorationEntity + 20);
      sub_22C38B770();
      v137 = v72;
      v135 = v74;
      sub_22C3AFDE4(v72 + v74, v127, v75);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v77 = EnumCaseMultiPayload;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_8;
        }

        v78 = v128;
        v79 = v130;
        v77 = 1;
      }

      else
      {
        v78 = v129;
        v79 = v131;
      }

      (*v78)(v127, v79);
LABEL_8:
      sub_22C90B62C();
      MEMORY[0x2318B8B10](v77);
      v80 = sub_22C90B66C();
      MEMORY[0x2318B8B10](v80);
      v81 = sub_22C90B66C();
      v82 = -1 << *(v64 + 32);
      v83 = v81 & ~v82;
      if ((*(v64 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83))
      {
        v84 = ~v82;
        sub_22C37F6DC();
        v68 = v139;
        while (1)
        {
          v85 = *(v64 + 48);
          sub_22C36BAA0();
          sub_22C3AFDE4(v86, v59, v87);
          if ((sub_22C9097CC() & 1) != 0 && (v88 = &v59[*(v48 + 5)], *v88 == v140))
          {
            v89 = *(v134 + 48);
            sub_22C3AFDE4(&v88[*(DecorationEntity + 20)], v42, type metadata accessor for QueryDecorationEntityValue);
            sub_22C3AFDE4(v137 + v135, &v42[v89], type metadata accessor for QueryDecorationEntityValue);
            v90 = swift_getEnumCaseMultiPayload();
            if (v90)
            {
              if (v90 == 1)
              {
                sub_22C38B770();
                v48 = v125;
                sub_22C3AFDE4(v42, v125, v91);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  sub_22C36BA4C(&v143);
                  v92 = v120;
                  v93 = v130;
                  v94(v120, &v42[v89], v130);
                  HIDWORD(v124) = sub_22C90393C();
                  v95 = *v128;
                  (*v128)(v92, v93);
                  sub_22C36A6CC();
                  sub_22C3AFE44();
                  v95(v48, v93);
                  v42 = v119;
                  sub_22C37F6DC();
                  v68 = v139;
                  if ((v124 & 0x100000000) != 0)
                  {
                    goto LABEL_34;
                  }

                  sub_22C374948();
                  goto LABEL_25;
                }

                sub_22C36A6CC();
                sub_22C3AFE44();
                sub_22C36BA4C(&v145);
                v100(v48, v130);
                sub_22C37F6DC();
LABEL_23:
                v68 = v139;
              }

              else
              {
                sub_22C36A6CC();
                sub_22C3AFE44();
                v99 = swift_getEnumCaseMultiPayload();
                v68 = v139;
                if (v99 == 2)
                {
LABEL_34:
                  sub_22C374948();
                  sub_22C372068();
                  goto LABEL_32;
                }
              }

              sub_22C3AFD28(v42);
LABEL_25:
              sub_22C372068();
              goto LABEL_26;
            }

            sub_22C38B770();
            v96 = v126;
            sub_22C3AFDE4(v42, v126, v97);
            if (swift_getEnumCaseMultiPayload())
            {
              sub_22C36A6CC();
              sub_22C3AFE44();
              sub_22C36BA4C(&a9);
              v98(v96, v131);
              goto LABEL_23;
            }

            sub_22C36BA4C(&v142);
            v101 = v117;
            v48 = v96;
            v102 = v131;
            v103(v117, &v42[v89], v131);
            HIDWORD(v124) = sub_22C9039EC();
            v104 = v101;
            v105 = *v129;
            (*v129)(v104, v102);
            sub_22C36A6CC();
            sub_22C3AFE44();
            sub_22C37F6DC();
            v105();
            sub_22C374948();
            v68 = v139;
            sub_22C372068();
            if ((v124 & 0x100000000) != 0)
            {
              goto LABEL_32;
            }
          }

          else
          {
            sub_22C36A6CC();
            sub_22C3AFE44();
          }

LABEL_26:
          v83 = (v83 + 1) & v84;
          if (((*(v64 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      v68 = v139;
LABEL_31:
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C36BAA0();
      sub_22C3AFDE4(v68, v121, v106);
      v144 = v64;
      sub_22C372068();
      sub_22C6A9B74(v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
      v68 = v139;
      v64 = v144;
LABEL_32:
      sub_22C36A6CC();
      sub_22C3AFE44();
      v65 = v132 + 1;
    }

    while (v132 + 1 != v123);
  }

  sub_22C36CC48();
}

uint64_t sub_22C3AF068(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  HIDWORD(v36) = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = sub_22C3AF94C(*a1, v2, v4, v5, v6, BYTE4(v36) & 1, v7);
  v9 = sub_22C3A5908(&qword_27D9BAA68, &qword_22C90D108);
  v10 = sub_22C3AFA4C();
  v39 = MEMORY[0x2318B7DB0](v8, v9, v10);
  HIDWORD(v35) = *(a1 + 16);
  LODWORD(v36) = *(a1 + 40);
  v37 = v3;
  v11 = v2;
  v12 = v4;
  result = sub_22C3AFAB0(v3, v2, v4);
  if (v36 & 0x100000000) != 0 || (v14 = v3, v4 = v2, (v12))
  {
LABEL_6:
    __break(1u);
LABEL_7:
    sub_22C3A5038(v37, v11, BYTE4(v35) & 1);
    sub_22C3A5038(v5, v6, v36 & 1);

    sub_22C3A5038(v5, v4, 0);
    return v39;
  }

  else
  {
    while (v4 == v6)
    {
      if (v14 == v5)
      {
        goto LABEL_7;
      }

      v40 = v37;
      v41 = v11;
      LOBYTE(v42) = v12;
      v43 = v5;
      v44 = v6;
      LOBYTE(v45) = 0;
      v15 = sub_22C3772CC();
      sub_22C3AFABC(v15, v16, v17, v18);
      v19 = sub_22C3772CC();
      v22 = sub_22C3AFCD8(v19, v20, v21, v7);
      v23 = sub_22C3772CC();
      v14 = sub_22C3AFB1C(v23, v24, v25, v7);
      v4 = v26;
      v28 = v27;
      sub_22C6A6204(&v38, v22, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, vars0, vars8);

      if (v28)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22C3AF220()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  v2 = sub_22C9037EC();
  v3 = sub_22C369958(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C36993C();
  MEMORY[0x28223BE20](v6);
  sub_22C3714E0();
  sub_22C3AFE98(&qword_281435768, MEMORY[0x277D1ED90]);
  sub_22C388E14();
  sub_22C37FC28(v7);
  if (v0)
  {
    sub_22C373140();
    do
    {
      v8 = sub_22C386F08();
      v1(v8);
      sub_22C3AFF48();
      sub_22C6A65FC();
      v9 = sub_22C3AFF38();
      v10(v9);
      sub_22C36D5C0();
    }

    while (!v11);
  }

  else
  {
    sub_22C3743B4();
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C3AF348()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  v2 = sub_22C908EAC();
  v3 = sub_22C369958(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C36993C();
  MEMORY[0x28223BE20](v6);
  sub_22C3714E0();
  sub_22C3AFE98(&qword_27D9BAA80, MEMORY[0x277D72238]);
  sub_22C388E14();
  sub_22C37FC28(v7);
  if (v0)
  {
    sub_22C373140();
    do
    {
      v8 = sub_22C386F08();
      v1(v8);
      sub_22C3AFF48();
      sub_22C6A676C();
      v9 = sub_22C3AFF38();
      v10(v9);
      sub_22C36D5C0();
    }

    while (!v11);
  }

  else
  {
    sub_22C3743B4();
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

uint64_t sub_22C3AF470(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22C3AFD90();
  result = MEMORY[0x2318B7DB0](v2, &type metadata for RelevantAppSet.RelevantApp, v3);
  v5 = 0;
  v11 = result;
  v6 = *(a1 + 16);
  v7 = (a1 + 48);
  while (1)
  {
    if (v6 == v5)
    {

      return v11;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(v7 - 2);
    v8 = *(v7 - 1);
    v10 = *v7;
    v7 += 24;

    sub_22C6A68DC();
  }

  __break(1u);
  return result;
}

uint64_t ComponentwiseRouter.route(event:)@<X0>(void *a1@<X8>)
{
  v3 = sub_22C9089DC();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C9089EC();
  v9 = *(v6 + 88);
  v10 = sub_22C36EBF0();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x277D1E858])
  {
    goto LABEL_2;
  }

  if (v12 == *MEMORY[0x277D1E6F8] || v12 == *MEMORY[0x277D1E708] || v12 == *MEMORY[0x277D1E748] || v12 == *MEMORY[0x277D1E830])
  {
    goto LABEL_14;
  }

  if (v12 == *MEMORY[0x277D1E838])
  {
    v24 = *(v6 + 8);
    v25 = sub_22C36EBF0();
    v26(v25);
    v17 = v1[8];
    v16 = v1[9];
    goto LABEL_17;
  }

  if (v12 == *MEMORY[0x277D1E760] || v12 == *MEMORY[0x277D1E740] || v12 == *MEMORY[0x277D1E788])
  {
    goto LABEL_2;
  }

  if (v12 == *MEMORY[0x277D1E798])
  {
    goto LABEL_14;
  }

  if (v12 == *MEMORY[0x277D1E738])
  {
LABEL_2:
    v13 = *(v6 + 8);
    v14 = sub_22C36EBF0();
    v15(v14);
    v17 = v1[2];
    v16 = v1[3];
LABEL_17:
    *a1 = v17;
    a1[1] = v16;
  }

  if (v12 == *MEMORY[0x277D1E7D8])
  {
    goto LABEL_14;
  }

  if (v12 == *MEMORY[0x277D1E808] || v12 == *MEMORY[0x277D1E768])
  {
    goto LABEL_2;
  }

  if (v12 == *MEMORY[0x277D1E720] || v12 == *MEMORY[0x277D1E850])
  {
LABEL_14:
    v21 = *(v6 + 8);
    v22 = sub_22C36EBF0();
    v23(v22);
    v17 = v1[4];
    v16 = v1[5];
    goto LABEL_17;
  }

  if (v12 == *MEMORY[0x277D1E7D0] || v12 == *MEMORY[0x277D1E818] || v12 == *MEMORY[0x277D1E780])
  {
    v34 = *(v6 + 8);
    v35 = sub_22C36EBF0();
    v36(v35);
    v17 = v1[6];
    v16 = v1[7];
    goto LABEL_17;
  }

  if (v12 == *MEMORY[0x277D1E7B8])
  {
    goto LABEL_2;
  }

  v37 = *(v6 + 8);
  v38 = sub_22C36EBF0();
  result = v39(v38);
  *a1 = 0;
  a1[1] = 0;
  return result;
}

void *ComponentwiseRouter.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return v0;
}

uint64_t ComponentwiseRouter.__deallocating_deinit()
{
  ComponentwiseRouter.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_22C3AF8F8()
{
  result = qword_27D9BAA60;
  if (!qword_27D9BAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BAA60);
  }

  return result;
}

uint64_t sub_22C3AF94C(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_29;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a5 != a2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      v9 = v7 >> 6;
      v10 = *(a7 + 56 + 8 * (v7 >> 6));
      if (((v10 >> v7) & 1) == 0)
      {
        goto LABEL_25;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 64 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_20;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_20:
      if (v7 == a4)
      {
        return result;
      }

      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return 0;
}

unint64_t sub_22C3AFA4C()
{
  result = qword_27D9BAA70;
  if (!qword_27D9BAA70)
  {
    sub_22C3AC1A0(&qword_27D9BAA68, &qword_22C90D108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BAA70);
  }

  return result;
}

uint64_t sub_22C3AFAB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22C3AFABC(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3 & 1) != 0 || (*(a4 + 16))
  {
    goto LABEL_13;
  }

  if (*(a4 + 8) != a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*a4 > result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a4 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a4 + 32) != a2)
  {
    goto LABEL_11;
  }

  if (*(a4 + 24) <= result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_22C3AFB1C(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      result = sub_22C90AE7C();
      v5 = *(a4 + 36);
      return result;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22C3AFBA4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22C3AFC20@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_22C90952C();
  v8 = sub_22C36985C(v7);
  v10 = *(v9 + 16);
  v11 = v6 + *(v9 + 72) * v4;

  return v10(a4, v11, v8);
}

uint64_t sub_22C3AFCD8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22C3AFD28(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BAA78, &unk_22C90D110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C3AFD90()
{
  result = qword_281434880;
  if (!qword_281434880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281434880);
  }

  return result;
}

uint64_t sub_22C3AFDE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C3AFE44()
{
  v1 = sub_22C3704C4();
  v3 = v2(v1);
  sub_22C36985C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22C3AFE98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22C3AFEE0()
{
  result = qword_27D9BAAB0;
  if (!qword_27D9BAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BAAB0);
  }

  return result;
}

uint64_t AgenticActionResolutionService.telemetryTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D910];
  v3 = sub_22C90645C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22C3B005C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3B00E8;

  return AgenticActionResolutionService.setup(sessionState:)();
}

uint64_t sub_22C3B00E8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22C3B01DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3B0268;

  return AgenticActionResolutionService.handle(_:plannerServiceContext:)();
}

uint64_t sub_22C3B0268(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t AgenticPlanGenerationService.telemetryTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D8F0];
  v3 = sub_22C90645C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AgenticPlanGenerationService.__allocating_init(toolboxResources:toolExecutionSession:identityChain:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AgenticPlanGenerationService.init(toolboxResources:toolExecutionSession:identityChain:)(a1, a2, a3);
  return v6;
}

uint64_t AgenticPlanGenerationService.init(toolboxResources:toolExecutionSession:identityChain:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  sub_22C378A4C(a2, v10);
  type metadata accessor for FullPlannerService();
  swift_allocObject();
  v8 = FullPlannerService.init(toolboxResources:toolExecutionSession:identityChain:)(a1, v10, a3);
  sub_22C36FF94(a2);
  *(v4 + 16) = v8;
  return v4;
}

uint64_t AgenticPlanGenerationService.setup(sessionState:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22C3B0584, 0, 0);
}

uint64_t AgenticPlanGenerationService.handle(_:plannerServiceContext:)()
{
  sub_22C369980();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(type metadata accessor for AgenticPlannerServiceContext(0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for PlannerServiceContext() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3B06C0, 0, 0);
}

uint64_t sub_22C3B06C0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = *(v0[4] + 16);
  sub_22C3B0C34(v0[3], v1);
  PlannerServiceContext.init(adapting:)(v1, v2);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_22C3B0784;
  v5 = v0[6];
  v6 = v0[2];

  return FullPlannerService.handle(_:plannerServiceContext:)();
}

uint64_t sub_22C3B0784(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_22C369970();
  *v6 = v5;
  v7 = *(v4 + 56);
  v8 = *v2;
  *v6 = *v2;
  *(v5 + 64) = v1;

  v9 = *(v4 + 48);
  if (v1)
  {
    sub_22C3B0C98(v9);

    return MEMORY[0x2822009F8](sub_22C3B0910, 0, 0);
  }

  else
  {
    v10 = *(v5 + 40);
    sub_22C3B0C98(v9);

    v11 = *(v8 + 8);

    return v11(a1);
  }
}

uint64_t sub_22C3B0910()
{
  sub_22C369980();
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t AgenticPlanGenerationService.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AgenticPlanGenerationService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22C3B09D0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22C37524C;

  return AgenticPlanGenerationService.setup(sessionState:)(a1);
}

uint64_t sub_22C3B0A68()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C3B0B10;

  return AgenticPlanGenerationService.handle(_:plannerServiceContext:)();
}

uint64_t sub_22C3B0B10()
{
  sub_22C369980();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_22C3B0C34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgenticPlannerServiceContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3B0C98(uint64_t a1)
{
  v2 = type metadata accessor for PlannerServiceContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C3B0D64()
{
  sub_22C90B62C();
  MEMORY[0x2318B8B10](0);
  return sub_22C90B66C();
}

uint64_t sub_22C3B0DAC()
{
  sub_22C90B62C();
  MEMORY[0x2318B8B10](0);
  return sub_22C90B66C();
}

uint64_t sub_22C3B0DEC(uint64_t a1)
{
  v2 = sub_22C3B6014();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C3B0E28(uint64_t a1)
{
  v2 = sub_22C3B6014();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t AgenticPlanInterpreterService.telemetryTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D900];
  v3 = sub_22C90645C();
  v4 = sub_22C36985C(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

void AgenticPlanInterpreterService.__allocating_init<A, B>(toolboxResources:actionRequirements:toolExecutionSession:)()
{
  sub_22C3BDA38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_allocObject();
  AgenticPlanInterpreterService.init<A, B>(toolboxResources:actionRequirements:toolExecutionSession:)(v13, v11, v9, v7, v5, v3, v1);
  sub_22C3BDA24();
}

void *AgenticPlanInterpreterService.init<A, B>(toolboxResources:actionRequirements:toolExecutionSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[6] = a4;
  v7[7] = a6;
  v13 = sub_22C36D548(v7 + 3);
  v14 = *(a4 - 8);
  (*(v14 + 16))(v13, a2, a4);
  v18 = a5;
  v19 = a7;
  v15 = sub_22C36D548(&v17);
  (*(*(a5 - 8) + 32))(v15, a3, a5);
  (*(v14 + 8))(a2, a4);
  sub_22C36C730(&v17, (v7 + 8));
  return v7;
}

uint64_t AgenticPlanInterpreterService.handle(_:plannerServiceContext:)()
{
  sub_22C369980();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_22C9089DC();
  v1[15] = v4;
  sub_22C3699B8(v4);
  v1[16] = v5;
  v7 = *(v6 + 64);
  v1[17] = sub_22C3699D4();
  v8 = sub_22C9063DC();
  v1[18] = v8;
  sub_22C3699B8(v8);
  v1[19] = v9;
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v12 = type metadata accessor for StepResolution();
  sub_22C369914(v12);
  v14 = *(v13 + 64);
  v1[23] = sub_22C3699D4();
  v15 = type metadata accessor for PlanCycleId(0);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  v1[24] = sub_22C3699D4();
  v18 = sub_22C90069C();
  v1[25] = v18;
  sub_22C3699B8(v18);
  v1[26] = v19;
  v21 = *(v20 + 64);
  v1[27] = sub_22C3699D4();
  v22 = type metadata accessor for Interpreter2();
  sub_22C369914(v22);
  v24 = *(v23 + 64);
  v1[28] = sub_22C3699D4();
  v25 = sub_22C90634C();
  v1[29] = v25;
  sub_22C3699B8(v25);
  v1[30] = v26;
  v28 = *(v27 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v29 = sub_22C90636C();
  v1[33] = v29;
  sub_22C3699B8(v29);
  v1[34] = v30;
  v32 = *(v31 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3B1324, 0, 0);
}

uint64_t sub_22C3B1324()
{
  v67 = v0;
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[32];
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v60 = *(v4 + 8);
  v60(v2, v3);
  v6 = sub_22C90635C();
  v7 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v8 = v0[32];
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v6, v7, v10, "PlanResolverService.run", "", v9, 2u);
    sub_22C3699EC();
  }

  v11 = v0[36];
  v13 = v0[32];
  v12 = v0[33];
  v15 = v0[30];
  v14 = v0[31];
  v16 = v0[29];
  v62 = v0[28];
  v17 = v0[14];

  (*(v15 + 16))(v14, v13, v16);
  v18 = sub_22C9063AC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v0[37] = sub_22C90639C();
  (*(v15 + 8))(v13, v16);
  v60(v11, v12);
  v0[5] = &type metadata for PlanResolutionBiomeTelemetryStream;
  v0[6] = &off_283FC01A8;
  v21 = v17[6];
  v22 = v17[7];
  v23 = sub_22C374168(v17 + 3, v21);
  v24 = v17[11];
  v25 = v17[12];
  sub_22C374168(v17 + 8, v24);
  v26 = v17[2];
  v27 = *(v21 - 8);
  v28 = *(v27 + 64);
  v29 = sub_22C3699D4();
  (*(v27 + 16))(v29, v23, v21);
  v30 = *(v24 - 8);
  v31 = *(v30 + 64);
  sub_22C3699D4();
  (*(v30 + 16))();
  sub_22C3B5C4C((v0 + 2), (v0 + 7));

  sub_22C3B2528(v63);
  v65 = &type metadata for PersonCandidateGenerator;
  v66 = &protocol witness table for PersonCandidateGenerator;
  sub_22C6B0CF8(v26, v29, sub_22C3B5AC0, 0, (v0 + 7), v63, &v64, v62, v21, v24, v22, v25);
  v32 = v0[24];
  v33 = v0[25];
  v34 = v0[13];

  v35 = type metadata accessor for AgenticPlannerServiceContext(0);
  sub_22C3B5CFC(v34 + *(v35 + 20), v32);
  if (sub_22C370B74(v32, 1, v33) == 1)
  {
    v36 = v0[20];
    sub_22C3B5DD4(v0[24], type metadata accessor for PlanCycleId);
    sub_22C903FEC();
    v37 = sub_22C9063CC();
    v38 = sub_22C90AADC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22C366000, v37, v38, "Plan Resolution has been called, but we don't have a plan cycle id. Throwing", v39, 2u);
      sub_22C3699EC();
    }

    v40 = v0[28];
    v42 = v0[19];
    v41 = v0[20];
    v43 = v0[18];

    (*(v42 + 8))(v41, v43);
    sub_22C3B5D60();
    swift_allocError();
    swift_willThrow();
    sub_22C373164();
    sub_22C3B5DD4(v40, v44);
    sub_22C3B5CA8((v0 + 2));
    v46 = v0[36];
    v45 = v0[37];
    sub_22C3BD9FC();
    v47 = v0[23];
    v48 = v0[24];
    v57 = v0[22];
    v58 = v0[21];
    v59 = v0[20];
    v61 = v0[17];
    sub_22C3B2184();

    v49 = v0[1];

    return v49();
  }

  else
  {
    (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
    v51 = swift_task_alloc();
    v0[38] = v51;
    *v51 = v0;
    v51[1] = sub_22C3B18F4;
    v52 = v0[27];
    v53 = v0[28];
    v54 = v0[23];
    v55 = v0[12];
    v56 = v0[13];

    return Interpreter2.resolve(sessionState:contextId:planCycleId:)();
  }
}

uint64_t sub_22C3B18F4()
{
  sub_22C369980();
  v2 = *(*v1 + 304);
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  *(v5 + 312) = v0;

  if (v0)
  {
    v6 = sub_22C3B2044;
  }

  else
  {
    v6 = sub_22C3B19FC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22C3B19FC()
{
  v102 = v0;
  v1 = v0;
  v3 = v0[22];
  v2 = v0[23];
  v4 = StepResolution.toEventPayloads(omittingResponseEvents:)(1);
  sub_22C903F8C();

  v5 = sub_22C9063CC();
  v6 = sub_22C90AABC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v100 = v86;
    buf = v7;
    *v7 = 136315138;
    v8 = *(v4 + 16);
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v80 = v6;
      v82 = v5;
      v10 = v1[16];
      v101 = MEMORY[0x277D84F90];
      sub_22C3B5E2C();
      v9 = v101;
      v11 = *(v10 + 16);
      v10 += 16;
      v12 = *(v10 + 64);
      sub_22C36BA94();
      v84 = v4;
      v14 = v4 + v13;
      v92 = *(v10 + 56);
      v95 = v15;
      v16 = (v10 - 8);
      do
      {
        v17 = v1[17];
        v18 = v1;
        v19 = v1[15];
        v95(v17, v14, v19);
        v20 = sub_22C9089BC();
        v22 = v21;
        (*v16)(v17, v19);
        v101 = v9;
        v23 = *(v9 + 16);
        if (v23 >= *(v9 + 24) >> 1)
        {
          sub_22C3B5E2C();
          v9 = v101;
        }

        *(v9 + 16) = v23 + 1;
        v24 = v9 + 16 * v23;
        *(v24 + 32) = v20;
        *(v24 + 40) = v22;
        v14 += v92;
        --v8;
        v1 = v18;
      }

      while (v8);
      v5 = v82;
      v4 = v84;
      v6 = v80;
    }

    v29 = v1[22];
    v31 = v1[18];
    v30 = v1[19];
    v32 = MEMORY[0x2318B7AD0](v9, MEMORY[0x277D837D0]);
    v34 = v33;

    v35 = sub_22C36F9F4(v32, v34, &v100);

    *(buf + 4) = v35;
    _os_log_impl(&dword_22C366000, v5, v6, "resolved to %s", buf, 0xCu);
    sub_22C36FF94(v86);
    sub_22C3699EC();
    sub_22C3699EC();

    v28 = *(v30 + 8);
    v28(v29, v31);
  }

  else
  {
    v25 = v0[22];
    v27 = v0[18];
    v26 = v0[19];

    v28 = *(v26 + 8);
    v28(v25, v27);
  }

  v36 = v1[21];
  sub_22C903F8C();

  v37 = sub_22C9063CC();
  v38 = sub_22C90AACC();

  v39 = os_log_type_enabled(v37, v38);
  v40 = v1[21];
  v42 = v1[18];
  v41 = v1[19];
  if (v39)
  {
    v43 = v1[15];
    v98 = v1[18];
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v101 = v45;
    *v44 = 136315138;
    v46 = MEMORY[0x2318B7AD0](v4, v43);
    v48 = sub_22C36F9F4(v46, v47, &v101);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_22C366000, v37, v38, "Payloads: %s", v44, 0xCu);
    sub_22C36FF94(v45);
    sub_22C3699EC();
    sub_22C3699EC();

    v49 = v40;
    v50 = v98;
  }

  else
  {

    v49 = v40;
    v50 = v42;
  }

  v28(v49, v50);
  v51 = v1[39];
  v52 = v1[12];
  *(swift_task_alloc() + 16) = v52;
  sub_22C3B25C8();
  if (v51)
  {
    v55 = v1[27];
    v54 = v1[28];
    v57 = v1[25];
    v56 = v1[26];
    v58 = v1[23];

    sub_22C3797C8();
    sub_22C3B5DD4(v58, v59);
    (*(v56 + 8))(v55, v57);
    sub_22C373164();
    sub_22C3B5DD4(v54, v60);
    sub_22C3B5CA8((v1 + 2));
    v61 = v1;
    v64 = v1 + 36;
    v62 = v1[36];
    v63 = v64[1];
    sub_22C3BD9FC();
    v65 = v61[23];
    v66 = v61[24];
    v87 = v61[22];
    bufa = v61[21];
    v93 = v61[20];
    v96 = v61[17];
    sub_22C3B2184();

    v67 = v61[1];

    return v67();
  }

  else
  {
    v69 = v53;
    v71 = v1[36];
    v70 = v1[37];
    v81 = v1[35];
    v83 = v1[32];
    v73 = v1[27];
    v72 = v1[28];
    v75 = v1[25];
    v74 = v1[26];
    v76 = v1[23];
    v85 = v1[31];
    v88 = v1[24];
    bufb = v1[22];
    v94 = v1[21];
    v97 = v1[20];
    v99 = v1[17];

    sub_22C3797C8();
    sub_22C3B5DD4(v76, v77);
    (*(v74 + 8))(v73, v75);
    sub_22C373164();
    sub_22C3B5DD4(v72, v78);
    sub_22C3B5CA8((v1 + 2));
    sub_22C3B2184();

    v79 = v1[1];

    return v79(v69);
  }
}

uint64_t sub_22C3B2044()
{
  v1 = v0[28];
  (*(v0[26] + 8))(v0[27], v0[25]);
  sub_22C373164();
  sub_22C3B5DD4(v1, v2);
  sub_22C3B5CA8((v0 + 2));
  v3 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  sub_22C3BD9FC();
  v6 = v0[23];
  v7 = v0[24];
  v10 = v0[22];
  v11 = v0[21];
  v12 = v0[20];
  v13 = v0[17];
  sub_22C3B2184();

  v8 = v0[1];

  return v8();
}

uint64_t sub_22C3B2184()
{
  v31 = sub_22C90637C();
  v29 = *(v31 - 1);
  v0 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90634C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90636C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90365C();
  v13 = sub_22C90635C();
  sub_22C90638C();
  v30 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v26 = v9;
    v27 = v8;
    v28 = v3;

    sub_22C9063BC();

    v14 = v29;
    v15 = v31;
    if ((*(v29 + 88))(v2, v31) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v17 = 0;
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v2, v15);
      v31 = "%s";
      v17 = 2;
      v16 = 1;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = v17;
    *(v19 + 1) = v16;
    *(v19 + 2) = 2080;
    sub_22C90366C();
    v21 = sub_22C90AF7C();
    v23 = sub_22C36F9F4(v21, v22, &v32);

    *(v19 + 4) = v23;
    v24 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v30, v24, "PlanResolverService.run", v31, v19, 0xCu);
    sub_22C36FF94(v20);
    MEMORY[0x2318B9880](v20, -1, -1);
    MEMORY[0x2318B9880](v19, -1, -1);

    (*(v4 + 8))(v7, v28);
    return (*(v26 + 8))(v12, v27);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_22C3B2528@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22C907BFC();
  result = sub_22C907BEC();
  v4 = MEMORY[0x277D1E210];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

void sub_22C3B25C8()
{
  sub_22C370030();
  sub_22C3BDA6C();
  v22 = v2;
  v21 = sub_22C908A0C();
  v3 = sub_22C369824(v21);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v8 = *(v1 + 16);
  if (v8)
  {
    v24 = MEMORY[0x277D84F90];
    v9 = sub_22C370024();
    sub_22C3B6068(v9, v8, 0);
    v10 = sub_22C9089DC();
    sub_22C3699B8(v10);
    v12 = v1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v20 = *(v13 + 72);
    while (1)
    {
      v22(v12, &v23);
      if (v0)
      {
        break;
      }

      v0 = 0;
      v15 = *(v24 + 16);
      v14 = *(v24 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_22C3B6068(v14 > 1, v15 + 1, 1);
      }

      *(v24 + 16) = v15 + 1;
      v16 = *(v5 + 80);
      sub_22C36BA94();
      v18 = sub_22C3BDA0C(v17);
      v19(v18);
      v12 += v20;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  sub_22C3772F0();
  sub_22C36FB20();
}

void sub_22C3B2880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C389FC4(a1, a2, a3);
  if (v4)
  {
    v6 = v5;
    v18 = MEMORY[0x277D84F90];
    sub_22C3BD82C();
    sub_22C3B64D4();
    v7 = 0;
    v8 = v18;
    v9 = (v6 + 40);
    while (v4 != v7)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v16[0] = v7;
      v16[1] = v10;
      v16[2] = v11;

      v14(&v17, v16, &v15);
      if (v3)
      {

        goto LABEL_10;
      }

      v3 = 0;

      v12 = v17;
      v18 = v8;
      v13 = *(v8 + 16);
      if (v13 >= *(v8 + 24) >> 1)
      {
        sub_22C3B64D4();
        v8 = v18;
      }

      ++v7;
      *(v8 + 16) = v13 + 1;
      *(v8 + 8 * v13 + 32) = v12;
      v9 += 2;
      if (v4 == v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    sub_22C3BD86C();
  }
}

uint64_t sub_22C3B29B0(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  if (*(a3 + 16))
  {
    v16 = MEMORY[0x277D84F90];
    sub_22C3BD82C();
    sub_22C3B6440();
    v4 = v16;
    v6 = sub_22C90981C();
    sub_22C3699B8(v6);
    v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v9 + 72);
    while (1)
    {
      a1(&v15, v8, &v14);
      if (v3)
      {
        break;
      }

      v16 = v4;
      if (*(v4 + 16) >= *(v4 + 24) >> 1)
      {
        sub_22C3BD85C();
        sub_22C3B6440();
        v4 = v16;
      }

      sub_22C38B3F8();
      sub_22C382C30();
      if (v10)
      {
        return v4;
      }
    }
  }

  return v4;
}

void sub_22C3B2B00()
{
  sub_22C3BDAA8();
  if (*(v1 + 16))
  {
    v2 = v1;
    v3 = sub_22C3BD82C();
    sub_22C3B6C50(v3, v4, v5);
    v6 = sub_22C90965C();
    sub_22C3699B8(v6);
    v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v17 = *(v9 + 72);
    while (1)
    {
      v10 = sub_22C386C3C();
      v11(v10);
      if (v0)
      {
        break;
      }

      sub_22C382EB4();
      if (v12)
      {
        sub_22C379C28();
        sub_22C3B6C50(v14, v15, v16);
      }

      sub_22C3BD9AC();
      sub_22C382C30();
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    sub_22C3BD86C();
    sub_22C3BDA8C();
  }
}

uint64_t sub_22C3B2C0C(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (!*(a3 + 16))
  {
    return sub_22C3BD86C();
  }

  v34 = MEMORY[0x277D84F90];
  v6 = sub_22C3BD82C();
  sub_22C3B68D4(v6, v7, v8);
  v9 = v34;
  v10 = sub_22C9093BC();
  sub_22C3699B8(v10);
  v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v29 = *(v13 + 72);
  while (1)
  {
    a1(v31, v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v14 = v31[0];
    v15 = v31[1];
    v16 = v32;
    v17 = v33;
    v34 = v9;
    v18 = *(v9 + 16);
    if (v18 >= *(v9 + 24) >> 1)
    {
      sub_22C3BD85C();
      v27 = v22;
      v28 = v21;
      sub_22C3B68D4(v23, v24, v25);
      v15 = v27;
      v14 = v28;
      v9 = v34;
    }

    *(v9 + 16) = v18 + 1;
    v19 = v9 + 48 * v18;
    *(v19 + 32) = v14;
    *(v19 + 48) = v15;
    *(v19 + 64) = v16;
    *(v19 + 72) = v17;
    sub_22C382C30();
    if (v20)
    {
      return sub_22C3BD86C();
    }
  }

  __break(1u);
  return result;
}

void sub_22C3B2D98()
{
  sub_22C3BDAA8();
  if (*(v1 + 16))
  {
    v2 = v1;
    sub_22C3BD82C();
    sub_22C3B5E2C();
    v3 = sub_22C908EAC();
    sub_22C3699B8(v3);
    v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v6 + 72);
    while (1)
    {
      v7 = sub_22C386C3C();
      v8(v7);
      if (v0)
      {
        break;
      }

      sub_22C382EB4();
      if (v9)
      {
        sub_22C379C28();
        sub_22C3B5E2C();
      }

      sub_22C3BD9AC();
      sub_22C382C30();
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    sub_22C3BD86C();
    sub_22C3BDA8C();
  }
}

void sub_22C3B2ED0()
{
  sub_22C370030();
  v3 = v0;
  v5 = v4;
  v56 = v6;
  v57 = v7;
  v55 = sub_22C90952C();
  v8 = sub_22C369824(v55);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v54 = v12 - v11;
  v13 = *(v5 + 16);
  if (v13)
  {
    v62 = MEMORY[0x277D84F90];
    sub_22C370024();
    sub_22C3BDA4C();
    sub_22C3B6C50(v14, v15, v16);
    v17 = sub_22C57D74C(v5);
    v19 = v18;
    sub_22C3BDA78();
    v52 = v13;
    v23 = 1;
    v53 = v1;
    if ((v17 & 0x8000000000000000) == 0)
    {
      while (v17 < v23 << *(v5 + 32))
      {
        v24 = v23 << v17;
        if ((*(v1 + 8 * (v17 >> 6)) & (v23 << v17)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v5 + 36) != v21)
        {
          goto LABEL_27;
        }

        v59 = v17 >> 6;
        v60 = v21;
        v58 = v22;
        v25 = v3;
        v26 = v20;
        sub_22C388C3C();
        v27(v54);
        v17 = v57;
        v56(&v61, v54);
        if (v25)
        {
          goto LABEL_31;
        }

        v28 = sub_22C37B1AC();
        v29(v28);
        v30 = v61;
        v31 = sub_22C3BD980();
        if (v33)
        {
          sub_22C3BD9EC();
          v51 = v45;
          sub_22C3B6C50(v46, v47, v48);
          v32 = v51;
          v31 = v62;
        }

        *(v31 + 16) = v54;
        v34 = v31 + 16 * v26;
        *(v34 + 32) = v30;
        *(v34 + 40) = v32;
        if (v19)
        {
          goto LABEL_32;
        }

        v35 = *(v5 + 32);
        sub_22C3837C8();
        if (v2 >= v57)
        {
          goto LABEL_28;
        }

        v3 = 0;
        v1 = v53;
        if ((*(v53 + 8 * v59) & v24) == 0)
        {
          goto LABEL_29;
        }

        if (*(v5 + 36) != v60)
        {
          goto LABEL_30;
        }

        sub_22C379EE4();
        if (v36)
        {
          sub_22C3819A0();
          v43 = v42 + 1;
          v38 = v52;
          while (v43 < v41)
          {
            sub_22C37B918();
            if (v30)
            {
              v17 = v39;
              sub_22C3A5038(v2, v40, 0);
              sub_22C385508();
              goto LABEL_20;
            }
          }

          v44 = v39;
          sub_22C3A5038(v2, v40, 0);
          v20 = v44;
LABEL_20:
          v23 = 1;
        }

        else
        {
          sub_22C3860E8();
          v17 = v37 | v2 & 0x7FFFFFFFFFFFFFC0;
          v38 = v52;
        }

        v22 = v58 + 1;
        if (v58 + 1 == v38)
        {
          goto LABEL_24;
        }

        v19 = 0;
        v21 = *(v5 + 36);
        if ((v17 & 0x8000000000000000) != 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v49 = sub_22C37B1AC();
    v50(v49);

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_22C36FB20();
  }
}

void sub_22C3B31C4()
{
  sub_22C370030();
  v2 = v0;
  v4 = v3;
  v62 = v5;
  v63 = v6;
  v61 = sub_22C90941C();
  v7 = sub_22C369824(v61);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v60 = v11 - v10;
  v12 = *(v4 + 16);
  if (v12)
  {
    v67 = MEMORY[0x277D84F90];
    sub_22C370024();
    sub_22C3BDA4C();
    sub_22C3B68D4(v13, v14, v15);
    v16 = sub_22C57D74C(v4);
    v18 = v17;
    sub_22C3BDA78();
    v57 = v12;
    v22 = 1;
    v58 = v1;
    v59 = v4;
    if ((v16 & 0x8000000000000000) == 0)
    {
      while (v16 < v22 << *(v4 + 32))
      {
        v23 = v16 >> 6;
        v24 = v22 << v16;
        if ((*(v1 + 8 * (v16 >> 6)) & (v22 << v16)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v4 + 36) != v20)
        {
          goto LABEL_27;
        }

        v64 = v21;
        v65 = v20;
        v25 = v2;
        v26 = v19;
        sub_22C388C3C();
        v27(v60);
        v16 = v63;
        v62(v66, v60);
        if (v25)
        {
          goto LABEL_31;
        }

        v28 = sub_22C37B1AC();
        v29(v28);
        v30 = v66[4];
        v31 = sub_22C3BD980();
        if (v35)
        {
          sub_22C3BD9EC();
          v56 = v46;
          v55 = v47;
          v54 = v48;
          sub_22C3B68D4(v49, v50, v51);
          v32 = v54;
          v34 = v55;
          v33 = v56;
          v31 = v67;
        }

        *(v31 + 16) = v60;
        v36 = v31 + 48 * v26;
        *(v36 + 32) = v33;
        *(v36 + 48) = v34;
        *(v36 + 64) = v30;
        *(v36 + 72) = v32;
        if (v18)
        {
          goto LABEL_32;
        }

        v4 = v59;
        v37 = *(v59 + 32);
        sub_22C3837C8();
        if (v12 >= v63)
        {
          goto LABEL_28;
        }

        v2 = 0;
        v1 = v58;
        if ((*(v58 + 8 * v23) & v24) == 0)
        {
          goto LABEL_29;
        }

        if (*(v59 + 36) != v65)
        {
          goto LABEL_30;
        }

        sub_22C379EE4();
        if (v38)
        {
          sub_22C3819A0();
          v44 = v23 + 1;
          v12 = v57;
          while (v44 < v43)
          {
            sub_22C37B918();
            if (v30)
            {
              v16 = v41;
              sub_22C3BDAC4(v41, v42);
              sub_22C385508();
              goto LABEL_20;
            }
          }

          v45 = v41;
          sub_22C3BDAC4(v41, v42);
          v19 = v45;
LABEL_20:
          v22 = 1;
        }

        else
        {
          sub_22C3860E8();
          v16 = v40 | v39 & 0x7FFFFFFFFFFFFFC0;
          v12 = v57;
        }

        v21 = v64 + 1;
        if (v64 + 1 == v12)
        {
          goto LABEL_24;
        }

        v18 = 0;
        v20 = *(v59 + 36);
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v52 = sub_22C37B1AC();
    v53(v52);

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_22C36FB20();
  }
}

uint64_t sub_22C3B34E0(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = *(a3 + 16);
  if (!v7)
  {
    return sub_22C3BD86C();
  }

  v28 = MEMORY[0x277D84F90];
  sub_22C3BD82C();
  sub_22C3B6810();
  v9 = v28;
  v10 = sub_22C908EAC();
  sub_22C3699B8(v10);
  v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v14 = *(v13 + 72);
  while (1)
  {
    a1(&v26, v12);
    if (v6)
    {
      break;
    }

    v6 = 0;
    v15 = v27;
    v28 = v9;
    sub_22C3BD9BC();
    if (v18)
    {
      sub_22C3BD85C();
      v23 = v21;
      v24 = v20;
      sub_22C3B6810();
      v17 = v23;
      v16 = v24;
      v9 = v28;
    }

    *(v9 + 16) = v5;
    v19 = v9 + 40 * v4;
    *(v19 + 32) = v16;
    *(v19 + 48) = v17;
    *(v19 + 64) = v15;
    v12 += v14;
    if (!--v7)
    {
      return sub_22C3BD86C();
    }
  }

  __break(1u);
  return result;
}

void sub_22C3B362C()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v72 = v4;
  v73 = v5;
  v71 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  v6 = sub_22C369824(v71);
  v68 = v7;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v70 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v69 = &v61 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v61 - v14;
  v16 = *(v3 + 16);
  if (v16)
  {
    v82 = MEMORY[0x277D84F90];
    v17 = sub_22C370024();
    sub_22C3B70B8(v17, v16, 0);
    v18 = v82;
    v21 = sub_22C6339F8(v3);
    v22 = 0;
    v23 = v3 + 64;
    v63 = v19;
    v64 = v16;
    v62 = v3 + 72;
    v24 = 1;
    v66 = v3;
    v67 = v15;
    v65 = v3 + 64;
    while ((v21 & 0x8000000000000000) == 0 && v21 < v24 << *(v3 + 32))
    {
      v25 = v24 << v21;
      if ((*(v23 + 8 * (v21 >> 6)) & v25) == 0)
      {
        goto LABEL_25;
      }

      if (*(v3 + 36) != v19)
      {
        goto LABEL_26;
      }

      v77 = v25;
      v78 = v21 >> 6;
      v75 = v22;
      v76 = v19;
      v74 = v20;
      v80 = v18;
      v26 = v71;
      v27 = *(v71 + 48);
      v28 = *(v3 + 48);
      v29 = sub_22C902C9C();
      sub_22C369824(v29);
      v79 = v1;
      v31 = v30;
      v33 = v69;
      (*(v32 + 16))(v69, v28 + *(v32 + 72) * v21, v29);
      v34 = *(v3 + 56);
      v35 = sub_22C902D0C();
      sub_22C369824(v35);
      v37 = v36;
      (*(v36 + 16))(&v33[v27], v34 + *(v38 + 72) * v21, v35);
      v39 = v70;
      (*(v31 + 32))(v70, v33, v29);
      v40 = *(v26 + 48);
      v41 = v67;
      (*(v37 + 32))(v39 + v40, &v33[v27], v35);
      v42 = v73;
      v43 = v79;
      v72(v39, &v81);
      if (v43)
      {
        sub_22C36DD28(v39, &qword_27D9BAF30, &unk_22C90FAA0);

        goto LABEL_23;
      }

      v1 = 0;
      sub_22C36DD28(v39, &qword_27D9BAF30, &unk_22C90FAA0);
      v18 = v80;
      v83 = v80;
      v44 = *(v80 + 16);
      if (v44 >= *(v80 + 24) >> 1)
      {
        sub_22C3BD85C();
        sub_22C3B70B8(v58, v59, v60);
        v18 = v83;
      }

      *(v18 + 16) = v44 + 1;
      v45 = *(v68 + 80);
      sub_22C36BA94();
      sub_22C3BD6DC(v41, v18 + v46 + *(v47 + 72) * v44);
      v3 = v66;
      v48 = *(v66 + 32);
      sub_22C3837C8();
      if (v21 >= v42)
      {
        goto LABEL_27;
      }

      v23 = v65;
      if ((*(v65 + 8 * v78) & v77) == 0)
      {
        goto LABEL_28;
      }

      if (*(v3 + 36) != v76)
      {
        goto LABEL_29;
      }

      sub_22C379EE4();
      if (v49)
      {
        sub_22C3819A0();
        v53 = v52 << 6;
        v54 = v52 + 1;
        v55 = (v62 + 8 * v52);
        while (v54 < v51)
        {
          v57 = *v55++;
          v56 = v57;
          v53 += 64;
          ++v54;
          if (v57)
          {
            sub_22C3A5038(v21, v50, v74 & 1);
            v24 = 1;
            v42 = __clz(__rbit64(v56)) + v53;
            goto LABEL_20;
          }
        }

        sub_22C3A5038(v21, v50, v74 & 1);
        v24 = 1;
      }

      else
      {
        sub_22C3815D8();
      }

LABEL_20:
      v20 = 0;
      v22 = v75 + 1;
      v21 = v42;
      v19 = v63;
      if (v75 + 1 == v64)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_23:
    sub_22C36FB20();
  }
}

void sub_22C3B3AA0()
{
  sub_22C370030();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v69 = v6;
  v7 = type metadata accessor for ToolDefinitionGrammarGeneratorError(0);
  v8 = sub_22C369914(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v70 = v12 - v11;
  v13 = sub_22C90941C();
  v14 = sub_22C369824(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v71 = v18 - v17;
  v19 = *(v5 + 16);
  if (v19)
  {
    v63 = v2;
    v78 = MEMORY[0x277D84F90];
    sub_22C3BD82C();
    v21 = v20;
    sub_22C3B6440();
    v22 = sub_22C57D74C(v5);
    v24 = v5;
    v25 = v22;
    v26 = v78;
    v28 = v27;
    v29 = 0;
    v76 = v5 + 56;
    v64 = v5 + 64;
    v65 = v19;
    v30 = v71;
    v67 = v13;
    v68 = v5;
    v66 = v21;
    if ((v25 & 0x8000000000000000) == 0)
    {
      while (v25 < 1 << *(v24 + 32))
      {
        v31 = v25 >> 6;
        if ((*(v76 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v24 + 36) != v23)
        {
          goto LABEL_28;
        }

        v72 = v29;
        v73 = 1 << v25;
        v74 = v25;
        v75 = v23;
        v32 = v3;
        v33 = v26;
        (*(v21 + 16))(v30, *(v24 + 48) + *(v21 + 72) * v25, v13);
        v69(v77, v30, v70);
        if (v32)
        {
          v61 = sub_22C3BDA58();
          v62(v61);

          sub_22C3BD7BC(v70, v63, type metadata accessor for ToolDefinitionGrammarGeneratorError);
          goto LABEL_25;
        }

        v34 = sub_22C3BDA58();
        v35(v34);
        v37 = v77[0];
        v36 = v77[1];
        v39 = v77[2];
        v38 = v77[3];
        v40 = v33;
        v41 = *(v33 + 16);
        if (v41 >= *(v33 + 24) >> 1)
        {
          sub_22C3B6440();
          v40 = v33;
        }

        *(v40 + 16) = v41 + 1;
        v42 = (v40 + 32 * v41);
        v42[4] = v37;
        v42[5] = v36;
        v42[6] = v39;
        v42[7] = v38;
        if (v28)
        {
          goto LABEL_32;
        }

        v13 = v67;
        v25 = 1 << *(v68 + 32);
        v30 = v71;
        v3 = 0;
        v21 = v66;
        if (v74 >= v25)
        {
          goto LABEL_29;
        }

        v43 = *(v76 + 8 * v31);
        if ((v43 & v73) == 0)
        {
          goto LABEL_30;
        }

        if (*(v68 + 36) != v75)
        {
          goto LABEL_31;
        }

        if ((v43 & (-2 << (v74 & 0x3F))) != 0)
        {
          sub_22C3860E8();
          v25 = v45 | v44 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          sub_22C3819A0();
          v48 = v31 << 6;
          v49 = v31 + 1;
          v50 = (v64 + 8 * v31);
          while (v49 < v47)
          {
            v52 = *v50++;
            v51 = v52;
            v48 += 64;
            ++v49;
            if (v52)
            {
              v53 = v46;
              sub_22C3BDA4C();
              sub_22C3A5038(v54, v55, v56);
              v24 = v36;
              v26 = v53;
              v25 = __clz(__rbit64(v51)) + v48;
              goto LABEL_20;
            }
          }

          v57 = v46;
          sub_22C3BDA4C();
          sub_22C3A5038(v58, v59, v60);
          v24 = v36;
          v26 = v57;
LABEL_20:
          v30 = v71;
        }

        v29 = v72 + 1;
        if (v72 + 1 == v65)
        {
          goto LABEL_25;
        }

        v28 = 0;
        v23 = *(v24 + 36);
        if (v25 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_25:
    sub_22C36FB20();
  }
}

uint64_t sub_22C3B3E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  if (!*(a3 + 16))
  {
    return v4;
  }

  v16 = MEMORY[0x277D84F90];
  sub_22C3BD82C();
  sub_22C3B6440();
  v4 = v16;
  v5 = sub_22C90993C();
  sub_22C3699B8(v5);
  v7 = v6;
  v9 = v8;
  v10 = *(v7 + 80);
  v15 = *(v9 + 72);
  while (1)
  {
    v11 = sub_22C386C3C();
    v12(v11);
    if (v3)
    {
      break;
    }

    if (*(v16 + 16) >= *(v16 + 24) >> 1)
    {
      sub_22C379C28();
      sub_22C3B6440();
    }

    sub_22C38B3F8();
    sub_22C382C30();
    if (v13)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C3B3FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C389FC4(a1, a2, a3);
  if (!v5)
  {
    return sub_22C3BD86C();
  }

  v8 = v7;
  v9 = v6;
  v21 = MEMORY[0x277D84F90];
  sub_22C3BD82C();
  sub_22C3B63D4();
  v10 = v21;
  v11 = v8(0);
  sub_22C3699B8(v11);
  v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v14 + 72);
  while (1)
  {
    v19(&v20, v13);
    if (v3)
    {
      break;
    }

    v3 = 0;
    v16 = v20;
    v21 = v10;
    sub_22C3BD9BC();
    if (v17)
    {
      sub_22C379C28();
      sub_22C3B63D4();
      v10 = v21;
    }

    *(v10 + 16) = v8;
    *(v10 + 8 * v4 + 32) = v16;
    v13 += v15;
    if (!--v5)
    {
      return sub_22C3BD86C();
    }
  }

  __break(1u);
  return result;
}

void sub_22C3B4130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C3BDAA8();
  a25 = v28;
  a26 = v29;
  sub_22C389FC4(v30, v31, v32);
  if (v27)
  {
    v35 = v34;
    v36 = v33;
    a16 = MEMORY[0x277D84F90];
    sub_22C3BD82C();
    sub_22C3B5E2C();
    v37 = v35(0);
    sub_22C3699B8(v37);
    v39 = v36 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v43 = *(v40 + 72);
    while (1)
    {
      a10(&a13, v39, &a12);
      if (v26)
      {
        break;
      }

      sub_22C382EB4();
      if (v41)
      {
        sub_22C379C28();
        sub_22C3B5E2C();
      }

      sub_22C3BD9AC();
      sub_22C382C30();
      if (v42)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_10:
  sub_22C3BD86C();
  sub_22C3BDA8C();
}

uint64_t sub_22C3B4248(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = *(a3 + 16);
  if (v7)
  {
    v21 = MEMORY[0x277D84F90];
    sub_22C3BD82C();
    sub_22C3B7908();
    v9 = v21;
    v10 = sub_22C9093BC();
    sub_22C3699B8(v10);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v13 + 72);
    while (1)
    {
      a1(&v20, v12, &v19);
      if (v6)
      {
        break;
      }

      v6 = 0;
      v15 = v20;
      v21 = v9;
      sub_22C3BD9BC();
      if (v16)
      {
        sub_22C379C28();
        sub_22C3B7908();
        v9 = v21;
      }

      *(v9 + 16) = v5;
      *(v9 + v4 + 32) = v15;
      v12 += v14;
      if (!--v7)
      {
        return sub_22C3BD86C();
      }
    }
  }

  return sub_22C3BD86C();
}

void sub_22C3B4388(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = a3;
    v43 = MEMORY[0x277D84F90];
    v6 = sub_22C370024();
    sub_22C3B79B8(v6, v4, 0);
    v8 = sub_22C57D74C(v5);
    v9 = v43;
    v11 = v10;
    v12 = 0;
    v13 = v5 + 56;
    v34 = v4;
    v14 = 1;
    v38 = v5;
    v35 = v5 + 56;
    if ((v8 & 0x8000000000000000) == 0)
    {
      while (v8 < v14 << *(v5 + 32))
      {
        v15 = v8 >> 6;
        v16 = v14 << v8;
        if ((*(v13 + 8 * (v8 >> 6)) & (v14 << v8)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v5 + 36) != v7)
        {
          goto LABEL_27;
        }

        v39 = v12;
        v40 = v7;
        v17 = v9;
        v18 = v8;
        v41 = *(*(v5 + 48) + 8 * v8);

        v19 = a2;
        a1(&v42, &v41);
        if (v3)
        {
          goto LABEL_31;
        }

        v20 = v42;
        v21 = v17;
        v43 = v17;
        v22 = *(v17 + 16);
        if (v22 >= *(v21 + 24) >> 1)
        {
          sub_22C3BD9DC();
          sub_22C3B79B8(v31, v32, v33);
          v21 = v43;
        }

        *(v21 + 16) = v22 + 1;
        *(v21 + 8 * v22 + 32) = v20;
        if (v11)
        {
          goto LABEL_32;
        }

        v5 = v38;
        v23 = *(v38 + 32);
        sub_22C3837C8();
        v13 = v35;
        if (v18 >= a2)
        {
          goto LABEL_28;
        }

        if ((*(v35 + 8 * v15) & v16) == 0)
        {
          goto LABEL_29;
        }

        if (*(v38 + 36) != v40)
        {
          goto LABEL_30;
        }

        v3 = 0;
        sub_22C379EE4();
        if (v24)
        {
          sub_22C3819A0();
          v29 = v15 + 1;
          v25 = v34;
          while (v29 < v28)
          {
            sub_22C37B918();
            if (v38)
            {
              v19 = v26;
              sub_22C3A5038(v18, v27, 0);
              sub_22C385508();
              goto LABEL_20;
            }
          }

          v30 = v26;
          sub_22C3A5038(v18, v27, 0);
          v9 = v30;
LABEL_20:
          v5 = v38;
          v14 = 1;
        }

        else
        {
          sub_22C3815D8();
          v25 = v34;
        }

        v12 = v39 + 1;
        if (v39 + 1 == v25)
        {
          return;
        }

        v11 = 0;
        v7 = *(v5 + 36);
        v8 = v19;
        if ((v19 & 0x8000000000000000) != 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:

    __break(1u);
LABEL_32:
    __break(1u);
  }
}

void sub_22C3B4604()
{
  sub_22C370030();
  sub_22C3BDA6C();
  v19 = v2;
  v18 = sub_22C908C5C();
  v3 = sub_22C369824(v18);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v8 = *(v1 + 16);
  if (v8)
  {
    v22 = MEMORY[0x277D84F90];
    v9 = sub_22C370024();
    sub_22C3B7A30(v9, v8, 0);
    v10 = (v1 + 32);
    while (1)
    {
      v11 = *v10++;
      v21 = v11;
      v19(&v21, &v20);
      if (v0)
      {
        break;
      }

      v0 = 0;
      v13 = *(v22 + 16);
      v12 = *(v22 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_22C3B7A30(v12 > 1, v13 + 1, 1);
      }

      *(v22 + 16) = v13 + 1;
      v14 = *(v5 + 80);
      sub_22C36BA94();
      v16 = sub_22C3BDA0C(v15);
      v17(v16);
      if (!--v8)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  sub_22C3772F0();
  sub_22C36FB20();
}

void sub_22C3B47C8()
{
  sub_22C370030();
  sub_22C3BDA6C();
  v35 = v2;
  v34 = sub_22C906D2C();
  v3 = sub_22C369824(v34);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v41 = v9 - v8;
  v10 = *(v1 + 16);
  if (v10)
  {
    v40 = v0;
    v44 = MEMORY[0x277D84F90];
    v11 = sub_22C370024();
    sub_22C3B7B38(v11, v10, 0);
    v39 = v44;
    v13 = sub_22C57D74C(v1);
    v15 = v14;
    v16 = 0;
    v38 = v1 + 56;
    v17 = 1;
    v18 = v1;
    v36 = v1;
    if ((v13 & 0x8000000000000000) == 0)
    {
      while (v13 < v17 << *(v18 + 32))
      {
        v19 = v13 >> 6;
        v20 = v17 << v13;
        if ((*(v38 + 8 * (v13 >> 6)) & (v17 << v13)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v18 + 36) != v12)
        {
          goto LABEL_27;
        }

        v37 = v16;
        v21 = v12;
        v43 = *(*(v18 + 48) + 8 * v13);

        v35(&v43, &v42);
        if (v40)
        {

          goto LABEL_24;
        }

        v22 = v39;
        v23 = *(v39 + 16);
        v40 = 0;
        if (v23 >= *(v39 + 24) >> 1)
        {
          sub_22C3BD85C();
          sub_22C3B7B38(v31, v32, v33);
          v22 = v39;
        }

        *(v22 + 16) = v23 + 1;
        v24 = *(v5 + 80);
        sub_22C36BA94();
        v39 = v25;
        (*(v5 + 32))(v25 + v26 + *(v5 + 72) * v23, v41, v34);
        if (v15)
        {
          goto LABEL_31;
        }

        v18 = v36;
        v27 = *(v36 + 32);
        sub_22C3837C8();
        if (v13 >= 0)
        {
          goto LABEL_28;
        }

        if ((*(v38 + 8 * v19) & v20) == 0)
        {
          goto LABEL_29;
        }

        if (*(v36 + 36) != v21)
        {
          goto LABEL_30;
        }

        sub_22C379EE4();
        if (v28)
        {
          sub_22C3819A0();
          v30 = v19 + 1;
          while (v30 < v29)
          {
            sub_22C37B918();
            if (v36)
            {
              sub_22C3A5038(v13, v21, 0);
              sub_22C385508();
              goto LABEL_20;
            }
          }

          sub_22C3A5038(v13, v21, 0);
LABEL_20:
          v17 = 1;
          v18 = v36;
        }

        else
        {
          sub_22C3815D8();
        }

        v16 = v37 + 1;
        if (v37 + 1 == v10)
        {
          goto LABEL_24;
        }

        v15 = 0;
        v12 = *(v18 + 36);
        v13 = 0;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_22C3772F0();
    sub_22C36FB20();
  }
}

void sub_22C3B4D04()
{
  sub_22C370030();
  v30 = v3;
  v31 = v2;
  v5 = v4;
  v7 = v6;
  sub_22C3BDA6C();
  v32 = v8;
  v10 = v9(0);
  v11 = sub_22C3699B8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v27 - v16;
  v18 = *(v1 + 16);
  if (v18)
  {
    v33 = MEMORY[0x277D84F90];
    v19 = sub_22C370024();
    v28 = v7;
    (v7)(v19, v18, 0);
    v20 = v5(0);
    sub_22C3699B8(v20);
    v22 = v1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v29 = *(v23 + 72);
    while (1)
    {
      v31(v22);
      if (v0)
      {
        break;
      }

      v0 = 0;
      v24 = *(v33 + 16);
      if (v24 >= *(v33 + 24) >> 1)
      {
        sub_22C3BD9DC();
        v28();
      }

      *(v33 + 16) = v24 + 1;
      v25 = *(v13 + 80);
      sub_22C36BA94();
      sub_22C3BD7BC(v17, v33 + v26 + *(v13 + 72) * v24, v30);
      v22 += v29;
      if (!--v18)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_22C3772F0();
    sub_22C36FB20();
  }
}

void sub_22C3B4ED8()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v21 = v4;
  v5 = type metadata accessor for RetrievedToolWithAttribution();
  v6 = sub_22C3699B8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = *(v3 + 16);
  if (v14)
  {
    v23 = MEMORY[0x277D84F90];
    sub_22C370024();
    sub_22C3B7CA0();
    v15 = *(v8 + 80);
    sub_22C36BA94();
    v20 = v16;
    v17 = v3 + v16;
    v18 = *(v8 + 72);
    while (1)
    {
      v21(v17, &v22);
      if (v1)
      {
        break;
      }

      v1 = 0;
      v19 = *(v23 + 16);
      if (v19 >= *(v23 + 24) >> 1)
      {
        sub_22C3B7CA0();
      }

      *(v23 + 16) = v19 + 1;
      sub_22C3BD7BC(v13, v23 + v20 + v19 * v18, type metadata accessor for RetrievedToolWithAttribution);
      v17 += v18;
      if (!--v14)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  sub_22C3772F0();
  sub_22C36FB20();
}

void sub_22C3B5114(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v47 = MEMORY[0x277D84F90];
    sub_22C370024();
    sub_22C3B5E2C();
    v7 = v47;
    v9 = sub_22C57D74C(a3);
    v11 = v10;
    v12 = 0;
    v43 = a3 + 56;
    v13 = 1;
    if ((v9 & 0x8000000000000000) == 0)
    {
      while (v9 < v13 << *(a3 + 32))
      {
        v14 = v9 >> 6;
        v15 = v13 << v9;
        if ((*(v43 + 8 * (v9 >> 6)) & (v13 << v9)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a3 + 36) != v8)
        {
          goto LABEL_27;
        }

        v41 = v12;
        v42 = v8;
        v16 = v9;
        v17 = *(a3 + 48) + 24 * v9;
        v19 = *v17;
        v18 = *(v17 + 8);
        LOBYTE(v17) = *(v17 + 16);
        v44[0] = v19;
        v44[1] = v18;
        v45 = v17;

        v20 = a2;
        a1(v46, v44);
        if (v4)
        {
          goto LABEL_31;
        }

        v4 = 0;

        v21 = v46[0];
        v22 = v46[1];
        v23 = v7;
        v47 = v7;
        v24 = *(v7 + 16);
        if (v24 >= *(v23 + 24) >> 1)
        {
          sub_22C3BD9EC();
          v37 = v36;
          v38 = v35;
          sub_22C3B5E2C();
          v22 = v37;
          v21 = v38;
          v23 = v47;
        }

        *(v23 + 16) = v24 + 1;
        v25 = v23 + 16 * v24;
        *(v25 + 32) = v21;
        *(v25 + 40) = v22;
        if (v11)
        {
          goto LABEL_32;
        }

        v26 = *(a3 + 32);
        sub_22C3837C8();
        if (v16 >= a2)
        {
          goto LABEL_28;
        }

        if ((*(v43 + 8 * v14) & v15) == 0)
        {
          goto LABEL_29;
        }

        v7 = v27;
        if (*(a3 + 36) != v42)
        {
          goto LABEL_30;
        }

        sub_22C379EE4();
        if (v28)
        {
          sub_22C3819A0();
          v34 = v14 + 1;
          while (v34 < v33)
          {
            sub_22C37B918();
            if (a3)
            {
              sub_22C3BDAC4(v31, v32);
              sub_22C385508();
              goto LABEL_20;
            }
          }

          sub_22C3BDAC4(v31, v32);
LABEL_20:
          v13 = 1;
        }

        else
        {
          sub_22C3860E8();
          v20 = v30 | v29 & 0x7FFFFFFFFFFFFFC0;
        }

        v12 = v41 + 1;
        if (v41 + 1 == v5)
        {
          return;
        }

        v11 = 0;
        v8 = *(a3 + 36);
        v9 = v20;
        if (v20 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:

    __break(1u);
LABEL_32:
    __break(1u);
  }
}

void sub_22C3B53D8()
{
  sub_22C370030();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v31 = v8;
  v32 = v9;
  v30 = v10(0);
  v11 = sub_22C369824(v30);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v27 - v16;
  v18 = *(v7 + 16);
  if (v18)
  {
    v33 = MEMORY[0x277D84F90];
    v19 = sub_22C370024();
    v27 = v4;
    (v4)(v19, v18, 0);
    v20 = v2(0);
    sub_22C3699B8(v20);
    v22 = v7 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v29 = v13 + 32;
    v28 = *(v23 + 72);
    while (1)
    {
      v31(v22);
      if (v5)
      {
        break;
      }

      v5 = 0;
      v24 = *(v33 + 16);
      if (v24 >= *(v33 + 24) >> 1)
      {
        sub_22C3BD9DC();
        v27();
      }

      *(v33 + 16) = v24 + 1;
      v25 = *(v13 + 80);
      sub_22C36BA94();
      (*(v13 + 32))(v33 + v26 + *(v13 + 72) * v24, v17, v30);
      v22 += v28;
      if (!--v18)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_22C3772F0();
    sub_22C36FB20();
  }
}

uint64_t sub_22C3B55C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v30 = a2;
  v26[1] = a1;
  v26[0] = a3;
  v3 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - v8;
  v10 = sub_22C90880C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C908A0C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90878C();
  v20 = sub_22C9087DC();
  (*(v11 + 8))(v14, v10);
  sub_22C3A5950(v20);

  sub_22C3BD74C(v9, v7);
  if (sub_22C370B74(v7, 1, v15) == 1)
  {
    sub_22C36DD28(v7, &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C90735C();
    sub_22C3A5F00();
    v21 = swift_allocError();
    v22 = v29;
    v23 = v28;
    *v24 = v27;
    *(v24 + 16) = v23;
    *(v24 + 32) = v22;
    swift_willThrow();
    result = sub_22C36DD28(v9, &qword_27D9BA808, &qword_22C90C6E0);
    *v30 = v21;
  }

  else
  {
    sub_22C36DD28(v9, &qword_27D9BA808, &qword_22C90C6E0);
    (*(v16 + 32))(v19, v7, v15);
    sub_22C90893C();
    return (*(v16 + 8))(v19, v15);
  }

  return result;
}

void *AgenticPlanInterpreterService.deinit()
{
  v1 = v0[2];

  sub_22C36FF94(v0 + 3);
  sub_22C36FF94(v0 + 8);
  return v0;
}

uint64_t AgenticPlanInterpreterService.__deallocating_deinit()
{
  AgenticPlanInterpreterService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22C3B595C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C37524C;

  return AgenticPlanInterpreterService.setup(sessionState:)();
}

uint64_t sub_22C3B59E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C3B0B10;

  return AgenticPlanInterpreterService.handle(_:plannerServiceContext:)();
}

uint64_t sub_22C3B5AC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C649FAC();
  if (!v1)
  {
    v4 = result;
    result = type metadata accessor for ToolResolver();
    a1[3] = result;
    a1[4] = &off_283FBEC60;
    *a1 = v4;
  }

  return result;
}

uint64_t sub_22C3B5BBC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v6 = *(v4 + 16);
    }

    return a2();
  }

  return result;
}

uint64_t sub_22C3B5CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlanCycleId(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C3B5D60()
{
  result = qword_27D9BAAB8;
  if (!qword_27D9BAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BAAB8);
  }

  return result;
}

uint64_t sub_22C3B5DD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_22C3B5E2C()
{
  v1 = *v0;
  sub_22C3BD890();
  sub_22C3B8910();
  *v0 = v2;
}

uint64_t getEnumTagSinglePayload for AgenticPlanInterpreterService.Error(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AgenticPlanInterpreterService.Error(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C3B5FC0()
{
  result = qword_27D9BAAC0;
  if (!qword_27D9BAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BAAC0);
  }

  return result;
}

unint64_t sub_22C3B6014()
{
  result = qword_27D9BAAC8;
  if (!qword_27D9BAAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BAAC8);
  }

  return result;
}

void sub_22C3B61C8()
{
  v1 = *v0;
  sub_22C3B8910();
  *v0 = v2;
}

void *sub_22C3B626C(void *a1, int64_t a2, char a3)
{
  result = sub_22C3B81C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B628C()
{
  v1 = *v0;
  sub_22C3B80D0();
  *v0 = v2;
}

uint64_t sub_22C3B6304(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22C3B82D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B63D4()
{
  v1 = *v0;
  sub_22C3B83EC();
  *v0 = v2;
}

void sub_22C3B63F4()
{
  v1 = *v0;
  sub_22C3B8864();
  *v0 = v2;
}

void sub_22C3B6440()
{
  v1 = *v0;
  sub_22C3BD878();
  sub_22C3BD2CC();
  *v0 = v2;
}

void sub_22C3B64D4()
{
  v1 = *v0;
  sub_22C3B84D0();
  *v0 = v2;
}

void sub_22C3B64F4()
{
  v1 = *v0;
  sub_22C3BCD34();
  *v0 = v2;
}

void sub_22C3B6540()
{
  v1 = *v0;
  sub_22C3BD950();
  sub_22C3BCD34();
  *v0 = v2;
}

void sub_22C3B65D4()
{
  v1 = *v0;
  sub_22C388198();
  sub_22C3BD544(v2, v3, v4, v5, v6, v7, v8, sub_22C3D70E0);
  *v0 = v9;
}

void sub_22C3B661C()
{
  v1 = *v0;
  sub_22C3B85F0();
  *v0 = v2;
}

void sub_22C3B663C()
{
  v1 = *v0;
  sub_22C375DEC();
  sub_22C3BD544(v2, v3, v4, v5, v6, v7, v8, sub_22C3D70C8);
  *v0 = v9;
}

void sub_22C3B6684()
{
  v1 = *v0;
  sub_22C3B8780();
  *v0 = v2;
}

void sub_22C3B66A4()
{
  v1 = *v0;
  sub_22C36EBFC();
  sub_22C3B8864();
  *v0 = v2;
}

void sub_22C3B66E0()
{
  v1 = *v0;
  sub_22C3B8910();
  *v0 = v2;
}

size_t sub_22C3B672C(size_t a1, int64_t a2, char a3)
{
  result = sub_22C3B89BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B67A4()
{
  v1 = *v0;
  sub_22C3BBC08();
  *v0 = v2;
}

void sub_22C3B67F0()
{
  v1 = *v0;
  sub_22C3B8BC4();
  *v0 = v2;
}

void sub_22C3B6810()
{
  v1 = *v0;
  sub_22C3BBC08();
  *v0 = v2;
}

void *sub_22C3B68B4(void *a1, int64_t a2, char a3)
{
  result = sub_22C3B8C78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22C3B68D4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22C3B8D88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22C3B68F4(size_t a1, int64_t a2, char a3)
{
  result = sub_22C3B8EA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22C3B6A74(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22C3B906C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B6A94()
{
  v1 = *v0;
  sub_22C3B917C();
  *v0 = v2;
}

void sub_22C3B6AB4()
{
  v1 = *v0;
  sub_22C3743CC();
  sub_22C3BBC08();
  *v0 = v2;
}

uint64_t sub_22C3B6C50(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22C3B9260(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B6CC8()
{
  v1 = *v0;
  sub_22C3B9370();
  *v0 = v2;
}

uint64_t sub_22C3B6CE8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22C3B9438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22C3B6D08(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22C3B9550(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22C3B6D28(size_t a1, int64_t a2, char a3)
{
  result = sub_22C3B9660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B6D48()
{
  v1 = *v0;
  sub_22C3B982C();
  *v0 = v2;
}

void *sub_22C3B6D68(void *a1, int64_t a2, char a3)
{
  result = sub_22C3B98E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B6D88()
{
  v1 = *v0;
  sub_22C38C318();
  sub_22C3BD544(v2, v3, v4, v5, v6, v7, v8, sub_22C3D7198);
  *v0 = v9;
}

uint64_t sub_22C3B6DD0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22C3B9A2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B6DF0()
{
  v1 = *v0;
  sub_22C3B9B3C();
  *v0 = v2;
}

void sub_22C3B6E10()
{
  v1 = *v0;
  sub_22C3BBC08();
  *v0 = v2;
}

void sub_22C3B6E5C()
{
  v1 = *v0;
  sub_22C3B9BF8();
  *v0 = v2;
}

void sub_22C3B6E7C()
{
  v1 = *v0;
  sub_22C3B9CAC();
  *v0 = v2;
}

size_t sub_22C3B6E9C(size_t a1, int64_t a2, char a3)
{
  result = sub_22C3B9D70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22C3B6EBC(size_t a1, int64_t a2, char a3)
{
  result = sub_22C3B9F3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B6EDC()
{
  v1 = *v0;
  sub_22C37EB6C();
  sub_22C3BD544(v2, v3, v4, v5, v6, v7, v8, sub_22C3D735C);
  *v0 = v9;
}

void sub_22C3B6F24()
{
  v1 = *v0;
  sub_22C3BD938();
  sub_22C3BBB48();
  *v0 = v2;
}

void sub_22C3B6F58()
{
  v1 = *v0;
  sub_22C3BD920();
  sub_22C3BD544(v2, v3, v4, v5, v6, v7, v8, sub_22C3D738C);
  *v0 = v9;
}

void sub_22C3B6FA0()
{
  v1 = *v0;
  sub_22C3BD908();
  sub_22C3BD544(v2, v3, v4, v5, v6, v7, v8, sub_22C3D7168);
  *v0 = v9;
}

size_t sub_22C3B7098(size_t a1, int64_t a2, char a3)
{
  result = sub_22C3BA1A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22C3B70B8(size_t a1, int64_t a2, char a3)
{
  result = sub_22C3BA374(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22C3B70D8(size_t a1, int64_t a2, char a3)
{
  result = sub_22C3BA540(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B70F8()
{
  v1 = *v0;
  sub_22C3BA70C();
  *v0 = v2;
}

void sub_22C3B7118()
{
  v1 = *v0;
  sub_22C3BD2CC();
  *v0 = v2;
}

uint64_t sub_22C3B7168(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22C3BA860(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B7290()
{
  v1 = *v0;
  sub_22C3BB550();
  *v0 = v2;
}

void sub_22C3B72D4()
{
  v1 = *v0;
  sub_22C3BD8F0();
  sub_22C3BD544(v2, v3, v4, v5, v6, v7, v8, sub_22C3D710C);
  *v0 = v9;
}

void sub_22C3B731C()
{
  v1 = *v0;
  sub_22C3BA9AC();
  *v0 = v2;
}

size_t sub_22C3B733C(size_t a1, int64_t a2, char a3)
{
  result = sub_22C3BAB00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22C3B735C(size_t a1, int64_t a2, char a3)
{
  result = sub_22C3BACCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B737C()
{
  v1 = *v0;
  sub_22C3BAE98();
  *v0 = v2;
}

uint64_t sub_22C3B739C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22C3BAF60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B73BC()
{
  v1 = *v0;
  sub_22C3BB078();
  *v0 = v2;
}

size_t sub_22C3B73DC(size_t a1, int64_t a2, char a3)
{
  result = sub_22C3BB1CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B7454()
{
  v1 = *v0;
  sub_22C3BD8D8();
  sub_22C3BB550();
  *v0 = v2;
}

void sub_22C3B7698()
{
  v1 = *v0;
  sub_22C3BB550();
  *v0 = v2;
}

void *sub_22C3B76DC(void *a1, int64_t a2, char a3)
{
  result = sub_22C3BB644(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B7754()
{
  v1 = *v0;
  sub_22C3BB864();
  *v0 = v2;
}

void *sub_22C3B7798(void *a1, int64_t a2, char a3)
{
  result = sub_22C3BB754(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B77B8()
{
  v1 = *v0;
  sub_22C3BB864();
  *v0 = v2;
}

void *sub_22C3B77FC(void *a1, int64_t a2, char a3)
{
  result = sub_22C3BB928(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22C3B781C(void *a1, int64_t a2, char a3)
{
  result = sub_22C3BBA38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B783C()
{
  v1 = *v0;
  sub_22C3BBB48();
  *v0 = v2;
}

void sub_22C3B7880()
{
  v1 = *v0;
  sub_22C3BBB48();
  *v0 = v2;
}

void sub_22C3B78C4()
{
  v1 = *v0;
  sub_22C3BBB48();
  *v0 = v2;
}

void sub_22C3B7908()
{
  v1 = *v0;
  sub_22C3BBB48();
  *v0 = v2;
}

void sub_22C3B794C()
{
  v1 = *v0;
  sub_22C3BBC08();
  *v0 = v2;
}

void *sub_22C3B7998(void *a1, int64_t a2, char a3)
{
  result = sub_22C3BBCBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22C3B79B8(void *a1, int64_t a2, char a3)
{
  result = sub_22C3BBDCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22C3B7B90(size_t a1, int64_t a2, char a3)
{
  result = sub_22C3BC06C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22C3B7BB0(size_t a1, int64_t a2, char a3)
{
  result = sub_22C3BC238(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22C3B7BD0(size_t a1, int64_t a2, char a3)
{
  result = sub_22C3BC620(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B7CA0()
{
  v1 = *v0;
  sub_22C3BD8C0();
  sub_22C3BD544(v2, v3, v4, v5, v6, v7, v8, sub_22C3D7AAC);
  *v0 = v9;
}

void *sub_22C3B7D98(void *a1, int64_t a2, char a3)
{
  result = sub_22C3BCC24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B7DB8()
{
  v1 = *v0;
  sub_22C3BCD34();
  *v0 = v2;
}

void *sub_22C3B7F0C(void *a1, int64_t a2, char a3)
{
  result = sub_22C3BCDE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22C3B7F2C(size_t a1, int64_t a2, char a3)
{
  result = sub_22C3BCEF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22C3B7F4C(size_t a1, int64_t a2, char a3)
{
  result = sub_22C3BD0C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B7FC4()
{
  v1 = *v0;
  sub_22C3BD8A8();
  sub_22C3BD544(v2, v3, v4, v5, v6, v7, v8, sub_22C3D7C8C);
  *v0 = v9;
}

void sub_22C3B800C()
{
  v1 = *v0;
  sub_22C3BD2CC();
  *v0 = v2;
}

size_t sub_22C3B8058(size_t a1, int64_t a2, char a3)
{
  result = sub_22C3BD378(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B80D0()
{
  sub_22C3765A0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v7 == v8)
  {
LABEL_7:
    sub_22C3BD81C(v6);
    if (v3)
    {
      sub_22C3A5908(&qword_27D9BAB20, &qword_22C90D3C0);
      v9 = sub_22C3815EC();
      sub_22C37EFD8(v9);
      sub_22C3772E4(v10 / 24);
      if (v1)
      {
LABEL_9:
        v11 = sub_22C388528();
        sub_22C3D8758(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 24 * v2);
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v7)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_22C3B81C4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BAC68, &qword_22C90D508);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_22C3D874C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BAC70, &qword_22C90D510);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C3B82D4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BAF58, &qword_22C90D800);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 80);
      if (v5)
      {
LABEL_13:
        sub_22C3D7028((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BAF60, &qword_22C90D808);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_22C3B83EC()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      v8 = sub_22C375840();
      sub_22C36998C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_22C388528();
        sub_22C3D874C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C3B84D0()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BAE28, &unk_22C90D6D0);
      v8 = sub_22C375840();
      sub_22C36998C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_22C388528();
        sub_22C3D874C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BAE30, &qword_22C914EB0);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C3B85F0()
{
  sub_22C3BDA38();
  sub_22C3765A0();
  if (v4)
  {
    sub_22C37259C();
    if (v6 != v7)
    {
      sub_22C376594();
      if (v6)
      {
        goto LABEL_20;
      }

      sub_22C388518();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C3BD84C(v5);
  if (v2)
  {
    sub_22C3A5908(&qword_27D9BAEC0, &qword_22C90D768);
    v8 = sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770);
    sub_22C3699B8(v8);
    v10 = *(v9 + 72);
    v11 = sub_22C36BAB8();
    j__malloc_size(v11);
    if (v10)
    {
      sub_22C3BD83C();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        sub_22C374970(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770);
  sub_22C3699C8(v14);
  v16 = *(v15 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v18 = sub_22C386F18(v17);
    sub_22C3D70F8(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }

  sub_22C3BDA24();
}

void sub_22C3B8780()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BAED8, &qword_22C90D780);
      v8 = sub_22C375840();
      sub_22C36998C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_22C388528();
        sub_22C3D874C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BAEE0, &qword_22C90D788);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C3B8864()
{
  sub_22C36D5CC();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v8 == v9)
  {
LABEL_7:
    sub_22C372074(v7);
    if (v4)
    {
      sub_22C386714(v10, v11, v12, v13, v14, v15);
      v16 = sub_22C3BD968();
      j__malloc_size(v16);
      sub_22C3725AC();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = sub_22C36FB10();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_22C3797A8();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v8)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C3B8910()
{
  sub_22C36D5CC();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v7 == v8)
  {
LABEL_7:
    sub_22C372074(v6);
    if (v3)
    {
      sub_22C386714(v9, v10, v11, v12, v13, v14);
      v15 = sub_22C3BD968();
      sub_22C37E260(v15);
      sub_22C37ABB8(v16 / 16);
      if (v2)
      {
LABEL_9:
        v17 = sub_22C36FB10();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_22C3797A8();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v7)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_22C3B89BC(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C3A5908(&qword_27D9BAEB0, &qword_22C90D758);
  v10 = *(sub_22C3A5908(&qword_27D9BAEB8, &qword_22C90D760) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C3A5908(&qword_27D9BAEB8, &qword_22C90D760) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22C3D713C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_22C3B8BC4()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BAF90, &qword_22C90D830);
      v8 = sub_22C375840();
      sub_22C36998C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_22C388528();
        sub_22C3D874C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BAF98, &qword_22C90D838);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_22C3B8C78(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BB038, &qword_22C90D8D8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_22C3D874C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BB040, &unk_22C90D8E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C3B8D88(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BAB00, &unk_22C90D3A0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_22C3D720C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BAB08, &qword_22C91A110);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_22C3B8EA0(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C3A5908(&qword_27D9BB048, &qword_22C91B500);
  v10 = *(sub_22C3A5908(&qword_27D9BB050, &unk_22C90D8F0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C3A5908(&qword_27D9BB050, &unk_22C90D8F0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22C3D71F8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_22C3B906C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BB068, &qword_22C90D908);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_22C3D6F00((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BB070, &qword_22C90D910);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_22C3B917C()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BB078, &qword_22C90D918);
      v8 = sub_22C375840();
      sub_22C36998C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_22C388528();
        sub_22C3D874C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BB080, &qword_22C90D920);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_22C3B9260(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BAFE8, &qword_22C90D888);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_22C3A4F80((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BAFF0, &qword_22C90D890);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_22C3B9370()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BAB10, &unk_22C90D3B0);
      v8 = sub_22C3815EC();
      sub_22C37EFD8(v8);
      sub_22C3772E4(v9 / 24);
      if (v1)
      {
LABEL_9:
        v10 = sub_22C388528();
        sub_22C3D8768(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BAB18, &qword_22C91D700);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_22C3B9438(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BAFF8, &qword_22C90D898);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_22C38D024((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BB000, &unk_22C90D8A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C3B9550(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BAD88, &unk_22C90D630);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_22C3D8750((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_22C3B9660(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C3A5908(&qword_27D9BB0B8, &qword_22C90D958);
  v10 = *(sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22C3D7320(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_22C3B982C()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BB0A8, &qword_22C90D948);
      v8 = sub_22C375840();
      sub_22C36998C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_22C388528();
        sub_22C3D874C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BB0B0, &qword_22C90D950);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_22C3B98E0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BB088, &qword_22C90D928);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_22C3D874C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BB090, &unk_22C90D930);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C3B9A2C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BAB28, &qword_22C90D3C8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_22C3D6F00((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BAB30, &unk_22C90D3D0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_22C3B9B3C()
{
  sub_22C3765A0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v7 == v8)
  {
LABEL_7:
    sub_22C3BD81C(v6);
    if (v3)
    {
      sub_22C3A5908(&qword_27D9BB0E0, &qword_22C90D980);
      v9 = sub_22C3BD968();
      sub_22C37EFD8(v9);
      sub_22C3772E4(v10 / 16);
      if (v1)
      {
LABEL_9:
        v11 = sub_22C388528();
        sub_22C3A4F80(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 16 * v2);
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v7)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C3B9BF8()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BAC30, &unk_22C90D4D0);
      v8 = sub_22C375840();
      sub_22C36998C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_22C388528();
        sub_22C3D874C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BAC38, &qword_22C9190B0);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C3B9CAC()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BAE38, &qword_22C90D6E0);
      v8 = sub_22C3BD968();
      sub_22C37EFD8(v8);
      sub_22C3772E4(v9 / 16);
      if (v1)
      {
LABEL_9:
        v10 = sub_22C388528();
        sub_22C3A4F80(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BAE40, &qword_22C90D6E8);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_22C3B9D70(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C3A5908(&qword_27D9BAE58, &unk_22C90D700);
  v10 = *(sub_22C3A5908(&qword_27D9BAE60, &unk_22C911F20) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C3A5908(&qword_27D9BAE60, &unk_22C911F20) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22C3D7334(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_22C3B9F3C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C3A5908(&qword_27D9BAE68, &unk_22C90D710);
  v10 = *(sub_22C3A5908(&qword_27D9BAE70, &unk_22C90FA90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C3A5908(&qword_27D9BAE70, &unk_22C90FA90) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22C3D7348(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_22C3BA1A8(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C3A5908(&qword_27D9BAF20, &qword_22C90D7C8);
  v10 = *(sub_22C3A5908(&qword_27D9BAF28, &unk_22C90D7D0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C3A5908(&qword_27D9BAF28, &unk_22C90D7D0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22C3D7404(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_22C3BA374(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C3A5908(&qword_27D9BAF38, &qword_22C90D7E0);
  v10 = *(sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22C3D7418(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_22C3BA540(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C3A5908(&qword_27D9BAF40, &qword_22C90D7E8);
  v10 = *(sub_22C3A5908(&qword_27D9BAF48, &qword_22C90D7F0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C3A5908(&qword_27D9BAF48, &qword_22C90D7F0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22C3D742C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_22C3BA70C()
{
  sub_22C3BDA38();
  sub_22C3765A0();
  if (v4)
  {
    sub_22C37259C();
    if (v6 != v7)
    {
      sub_22C376594();
      if (v6)
      {
        goto LABEL_20;
      }

      sub_22C388518();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C3BD84C(v5);
  if (v2)
  {
    sub_22C3A5908(&qword_27D9BB0C8, &qword_22C90D968);
    v8 = sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970);
    sub_22C3699B8(v8);
    v10 = *(v9 + 72);
    v11 = sub_22C36BAB8();
    j__malloc_size(v11);
    if (v10)
    {
      sub_22C3BD83C();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        sub_22C374970(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970);
  sub_22C3699C8(v14);
  v16 = *(v15 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v18 = sub_22C386F18(v17);
    sub_22C3D7440(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }

  sub_22C3BDA24();
}

uint64_t sub_22C3BA860(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22C3A5908(&qword_27D9BAB38, &qword_22C92C1F0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_22C3D6F00((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22C3A5908(&qword_27D9BAB40, &unk_22C90D3E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_22C3BA9AC()
{
  sub_22C3BDA38();
  sub_22C3765A0();
  if (v4)
  {
    sub_22C37259C();
    if (v6 != v7)
    {
      sub_22C376594();
      if (v6)
      {
        goto LABEL_20;
      }

      sub_22C388518();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C3BD84C(v5);
  if (v2)
  {
    sub_22C3A5908(&qword_27D9BB0E8, &qword_22C90D988);
    v8 = sub_22C3A5908(&qword_27D9BB0F0, &qword_22C90D990);
    sub_22C3699B8(v8);
    v10 = *(v9 + 72);
    v11 = sub_22C36BAB8();
    j__malloc_size(v11);
    if (v10)
    {
      sub_22C3BD83C();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        sub_22C374970(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = sub_22C3A5908(&qword_27D9BB0F0, &qword_22C90D990);
  sub_22C3699C8(v14);
  v16 = *(v15 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v18 = sub_22C386F18(v17);
    sub_22C3D7540(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }

  sub_22C3BDA24();
}

size_t sub_22C3BAB00(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C3A5908(&qword_27D9BB0F8, &qword_22C90D998);
  v10 = *(sub_22C3A5908(&qword_27D9BB100, &qword_22C90D9A0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C3A5908(&qword_27D9BB100, &qword_22C90D9A0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22C3D7554(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_22C3BACCC(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C3A5908(&qword_27D9BB108, &qword_22C90D9A8);
  v10 = *(sub_22C3A5908(&qword_27D9BB110, &qword_22C90D9B0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C3A5908(&qword_27D9BB110, &qword_22C90D9B0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22C3D757C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_22C3BAE98()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BAFB8, &qword_22C90D858);
      v8 = sub_22C3815EC();
      sub_22C37EFD8(v8);
      sub_22C3772E4(v9 / 48);
      if (v1)
      {
LABEL_9:
        v10 = sub_22C388528();
        sub_22C3D7590(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BAFC0, &qword_22C90D860);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}