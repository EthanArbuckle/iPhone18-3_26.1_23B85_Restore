uint64_t sub_1B06F30E4()
{
  v11 = 0;
  v3 = (*(*(sub_1B0E459C8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v10 = &v2 - v3;
  v4 = (*(*(sub_1B0E45C58() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v9 = &v2 - v4;
  v5 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v8 = &v2 - v5;
  sub_1B06FF124();
  v6 = sub_1B0E44838();
  v7 = v0;
  sub_1B039B81C();
  sub_1B06F3280();
  sub_1B06F3320(v10);
  result = sub_1B0E45C68();
  qword_1EB6DC020 = result;
  return result;
}

uint64_t sub_1B06F3280()
{
  sub_1B070B188(0);
  sub_1B0E45C58();
  sub_1B06FF188();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E19E0, &qword_1B0E9ABD0);
  sub_1B070E3B4();
  return sub_1B0E460A8();
}

uint64_t sub_1B06F3320@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E8098];
  v1 = sub_1B0E459C8();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t *sub_1B06F338C()
{
  if (qword_1EB6DC018 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DC020;
}

uint64_t sub_1B06F33EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v20 = a4;
  v21 = a5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E465D8();
  v12 = sub_1B0E44598();

  MEMORY[0x1E69E5928](a3);

  v5 = swift_allocObject();
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  v18 = sub_1B070E43C;
  v19 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = 0;
  v16 = sub_1B06F38E8;
  v17 = &block_descriptor_2395;
  v11 = _Block_copy(&aBlock);

  [a1 renewCredentialsWithOptions:v12 completion:v11];
  _Block_release(v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t sub_1B06F35C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v21 = a2;
  v19 = a4;
  v20 = a5;
  v22 = sub_1B070E4B0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v24 = 0;
  v29 = sub_1B0E44238();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v17 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v28 = &v17 - v17;
  v33 = sub_1B0E44288();
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v18 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v23);
  v32 = &v17 - v18;
  v45 = v6;
  v44 = v7;
  v43 = a3;
  v41 = v8;
  v42 = v9;
  sub_1B0E44278();
  sub_1B0E44228();

  MEMORY[0x1E69E5928](v21);
  v10 = swift_allocObject();
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v14 = v10;
  v15 = v23;
  v14[2] = v19;
  v14[3] = v11;
  v14[4] = v15;
  v14[5] = v12;
  v39 = v13;
  v40 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = 0;
  v37 = sub_1B038C908;
  v38 = &block_descriptor_2401;
  v25 = _Block_copy(&aBlock);
  MEMORY[0x1B2727B00](v24, v32, v28);
  _Block_release(v25);

  (*(v26 + 8))(v28, v29);
  return (*(v30 + 8))(v32, v33);
}

uint64_t sub_1B06F3868(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{

  a1(a3, a4);
}

uint64_t sub_1B06F38E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);

  MEMORY[0x1E69E5928](a3);
  v4(a2, a3);
  MEMORY[0x1E69E5920](a3);
}

uint64_t sub_1B06F3968(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = a2;
  v19 = sub_1B070B53C;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v13 = (*(*(_s6LoggerVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = &v12 - v13;
  v26 = MEMORY[0x1EEE9AC00](v17);
  v27 = v3;
  v25 = v2;
  v24 = *(v2 + 16);
  MEMORY[0x1E69E5928](v24);
  sub_1B0394784(v14 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_logger, v23);
  v22 = *(v14 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_queue);
  MEMORY[0x1E69E5928](v22);
  v16 = 7;
  v21 = swift_allocObject();

  v15 = v14;
  swift_weakInit();

  v4 = swift_allocObject();
  v5 = v18;
  v6 = v19;
  v7 = v21;
  v8 = v22;
  v9 = v4;
  v10 = v23;
  v20 = v9;
  v9[2] = v17;
  v9[3] = v5;
  v9[4] = v7;
  sub_1B06E39F0(v10, v8, v6, v9);

  MEMORY[0x1E69E5920](v22);
  sub_1B039480C(v23);
  return MEMORY[0x1E69E5920](v24);
}

uint64_t sub_1B06F3B5C(uint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v11 = a1;
  v10 = a2 & 1;
  v9[5] = a3;
  v9[6] = a4;
  v9[4] = a5 + 16;

  a3(a1);

  if (a2)
  {
    swift_beginAccess();
    v9[0] = swift_weakLoadStrong();
    if (v9[0])
    {

      sub_1B0391AD4(v9);
      swift_endAccess();
      sub_1B06ED0D0();
    }

    else
    {
      sub_1B0391AD4(v9);
      return swift_endAccess();
    }
  }

  return result;
}

dispatch_group_t sub_1B06F3C88()
{
  v6 = 0;
  v7 = 0;
  v3 = dispatch_group_create();
  MEMORY[0x1E69E5928](v3);
  v6 = v3;
  v4 = sub_1B070AC10();
  v5 = v0 & 1;
  v2 = sub_1B08D932C(&v4, &unk_1F26A9368);

  v7 = v2;
  sub_1B070E5F4(&v6);
  return v3;
}

uint64_t sub_1B06F3D18(uint64_t a1)
{
  v506 = v523;
  v500 = a1;
  v491 = 0;
  v465 = sub_1B039BBE8;
  v466 = sub_1B0394C30;
  v467 = sub_1B0394C24;
  v468 = sub_1B039BA2C;
  v469 = sub_1B039BA88;
  v470 = sub_1B039BB94;
  v471 = sub_1B0394C24;
  v472 = sub_1B039BBA0;
  v473 = sub_1B039BC08;
  v474 = sub_1B070B550;
  v475 = sub_1B039BCF8;
  v476 = sub_1B0398F5C;
  v477 = sub_1B0398F5C;
  v478 = sub_1B0399178;
  v479 = sub_1B0398F5C;
  v480 = sub_1B0398F5C;
  v481 = sub_1B039BA94;
  v482 = sub_1B0398F5C;
  v483 = sub_1B0398F5C;
  v484 = sub_1B0399178;
  v485 = sub_1B0398F5C;
  v486 = sub_1B0398F5C;
  v487 = sub_1B03991EC;
  v488 = sub_1B0398F5C;
  v489 = sub_1B0398F5C;
  v490 = sub_1B039BCEC;
  memset(v533, 0, sizeof(v533));
  v508 = __b;
  v510 = 40;
  memset(__b, 0, sizeof(__b));
  v530 = 0;
  v531 = 0;
  v511 = 0;
  v492 = 0;
  v493 = _s6LoggerVMa();
  v494 = (*(*(v493 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v495 = &v111 - v494;
  v496 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v497 = &v111 - v496;
  v498 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v499 = &v111 - v498;
  v501 = sub_1B0E439A8();
  v502 = *(v501 - 8);
  v503 = v501 - 8;
  v504 = (*(v502 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v500);
  v7 = v506;
  v505 = &v111 - v504;
  v506[38] = v6;
  v7[37] = v1;
  v507 = sub_1B06FFBDC(v6);
  v506[36] = v507;
  sub_1B06F6420();
  v506[35] = sub_1B0E44588();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v509 = &v534;
  sub_1B0E45448();
  memcpy(v508, v509, v510);
  for (i = v511; ; i = v113)
  {
    v462 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1948, &qword_1B0E9A0A8);
    sub_1B0E45508();
    v463 = v506[28];
    v464 = v506[29];
    if (!v464)
    {
      break;
    }

    v460 = v463;
    v461 = v464;
    v8 = v506;
    v9 = v464;
    v456 = v464;
    v455 = v463;
    v506[26] = v463;
    v8[27] = v9;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v458 = *MEMORY[0x1E699AFF0];
    MEMORY[0x1E69E5928](v458);
    v10 = sub_1B0E44AD8();
    v11 = v455;
    v12 = v456;
    v13 = v506;
    v457 = &v529;
    v506[24] = v10;
    v13[25] = v14;
    v13[22] = v11;
    v13[23] = v12;
    v459 = MEMORY[0x1B2726DE0](v13[24], v13[25], v13[22], v13[23]);
    sub_1B03B1198(v457);
    MEMORY[0x1E69E5920](v458);
    if (v459)
    {
      goto LABEL_11;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v453 = *MEMORY[0x1E699AFF8];
    MEMORY[0x1E69E5928](v453);
    v15 = sub_1B0E44AD8();
    v16 = v455;
    v17 = v456;
    v18 = v506;
    v452 = &v528;
    v506[20] = v15;
    v18[21] = v19;
    v18[18] = v16;
    v18[19] = v17;
    v454 = MEMORY[0x1B2726DE0](v18[20], v18[21], v18[18], v18[19]);
    sub_1B03B1198(v452);
    MEMORY[0x1E69E5920](v453);
    if (v454)
    {
      goto LABEL_11;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v450 = *MEMORY[0x1E699B000];
    MEMORY[0x1E69E5928](v450);
    v20 = sub_1B0E44AD8();
    v21 = v455;
    v22 = v456;
    v23 = v506;
    v449 = &v527;
    v506[16] = v20;
    v23[17] = v24;
    v23[14] = v21;
    v23[15] = v22;
    v451 = MEMORY[0x1B2726DE0](v23[16], v23[17], v23[14], v23[15]);
    sub_1B03B1198(v449);
    MEMORY[0x1E69E5920](v450);
    if (v451)
    {
      goto LABEL_11;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v447 = *MEMORY[0x1E699B008];
    MEMORY[0x1E69E5928](v447);
    v25 = sub_1B0E44AD8();
    v26 = v455;
    v27 = v456;
    v28 = v506;
    v446 = &v526;
    v506[12] = v25;
    v28[13] = v29;
    v28[10] = v26;
    v28[11] = v27;
    v448 = MEMORY[0x1B2726DE0](v28[12], v28[13], v28[10], v28[11]);
    sub_1B03B1198(v446);
    MEMORY[0x1E69E5920](v447);
    if (v448)
    {
      goto LABEL_11;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v30 = sub_1B0E44838();
    v31 = v455;
    v32 = v456;
    v33 = v506;
    v444 = &v525;
    v506[8] = v30;
    v33[9] = v34;
    v33[6] = v31;
    v33[7] = v32;
    v445 = MEMORY[0x1B2726DE0](v33[8], v33[9], v33[6], v33[7]);
    sub_1B03B1198(v444);
    if (v445)
    {
      goto LABEL_11;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v35 = sub_1B0E44838();
    v36 = v455;
    v37 = v456;
    v38 = v506;
    v442 = &v524;
    v506[4] = v35;
    v38[5] = v39;
    v38[2] = v36;
    v38[3] = v37;
    v443 = MEMORY[0x1B2726DE0](v38[4], v38[5], v38[2], v38[3]);
    sub_1B03B1198(v442);
    if (v443)
    {
LABEL_11:

      v440 = &v513;
      v513 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1950, &qword_1B0E9A0B0);
      sub_1B0E454D8();
      v441 = v462;
    }

    else
    {

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v438 = *MEMORY[0x1E699AFE0];
      MEMORY[0x1E69E5928](v438);
      v40 = sub_1B0E44AD8();
      v41 = v455;
      v42 = v456;
      v43 = v506;
      v437 = v523;
      v523[0] = v40;
      v506[1] = v44;
      v522[2] = v41;
      v522[3] = v42;
      v439 = MEMORY[0x1B2726DE0](v523[0], v43[1], v41, v42);
      sub_1B03B1198(v437);
      MEMORY[0x1E69E5920](v438);
      if (v439)
      {
        goto LABEL_14;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v435 = *MEMORY[0x1E699AFE8];
      MEMORY[0x1E69E5928](v435);
      v45 = sub_1B0E44AD8();
      v434 = v522;
      v522[0] = v45;
      v522[1] = v46;
      v521[2] = v455;
      v521[3] = v456;
      v436 = MEMORY[0x1B2726DE0](v45, v46, v455, v456);
      sub_1B03B1198(v434);
      MEMORY[0x1E69E5920](v435);
      if (v436)
      {
LABEL_14:

        v433 = &v514;
        v514 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1950, &qword_1B0E9A0B0);
        sub_1B0E454D8();
        v441 = v462;
      }

      else
      {

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v431 = *MEMORY[0x1E699B010];
        MEMORY[0x1E69E5928](v431);
        v47 = sub_1B0E44AD8();
        v430 = v521;
        v521[0] = v47;
        v521[1] = v48;
        v520[1] = v455;
        v520[2] = v456;
        v432 = MEMORY[0x1B2726DE0](v47, v48, v455, v456);
        sub_1B03B1198(v430);
        MEMORY[0x1E69E5920](v431);
        if (v432)
        {

          v429 = &v515;
          v515 = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1950, &qword_1B0E9A0B0);
          sub_1B0E454D8();
          v441 = v462;
        }

        else
        {
          v49 = v505;

          (*(v502 + 16))(v49, v500, v501);
          sub_1B0394784(v500, v499);
          sub_1B0394784(v499, v497);
          sub_1B03F4FD0(v499, v495);
          v50 = (v497 + *(v493 + 20));
          v393 = *v50;
          v394 = *(v50 + 1);
          sub_1B039480C(v497);
          v392 = 24;
          v406 = 7;
          v51 = swift_allocObject();
          v52 = v394;
          v397 = v51;
          *(v51 + 16) = v393;
          *(v51 + 20) = v52;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v53 = swift_allocObject();
          v54 = v394;
          v395 = v53;
          *(v53 + 16) = v393;
          *(v53 + 20) = v54;

          v405 = 32;
          v55 = swift_allocObject();
          v56 = v395;
          v402 = v55;
          *(v55 + 16) = v465;
          *(v55 + 24) = v56;
          sub_1B0394868();
          sub_1B0394868();

          sub_1B039480C(v495);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v57 = swift_allocObject();
          v58 = v456;
          v407 = v57;
          *(v57 + 16) = v455;
          *(v57 + 24) = v58;
          v427 = sub_1B0E43988();
          v428 = sub_1B0E458E8();
          v404 = 17;
          v409 = swift_allocObject();
          v399 = 16;
          *(v409 + 16) = 16;
          v410 = swift_allocObject();
          v401 = 4;
          *(v410 + 16) = 4;
          v59 = swift_allocObject();
          v396 = v59;
          *(v59 + 16) = v466;
          *(v59 + 24) = 0;
          v60 = swift_allocObject();
          v61 = v396;
          v411 = v60;
          *(v60 + 16) = v467;
          *(v60 + 24) = v61;
          v412 = swift_allocObject();
          *(v412 + 16) = 0;
          v413 = swift_allocObject();
          *(v413 + 16) = 1;
          v62 = swift_allocObject();
          v63 = v397;
          v398 = v62;
          *(v62 + 16) = v468;
          *(v62 + 24) = v63;
          v64 = swift_allocObject();
          v65 = v398;
          v414 = v64;
          *(v64 + 16) = v469;
          *(v64 + 24) = v65;
          v415 = swift_allocObject();
          *(v415 + 16) = v399;
          v416 = swift_allocObject();
          *(v416 + 16) = v401;
          v66 = swift_allocObject();
          v400 = v66;
          *(v66 + 16) = v470;
          *(v66 + 24) = 0;
          v67 = swift_allocObject();
          v68 = v400;
          v417 = v67;
          *(v67 + 16) = v471;
          *(v67 + 24) = v68;
          v418 = swift_allocObject();
          *(v418 + 16) = 0;
          v419 = swift_allocObject();
          *(v419 + 16) = v401;
          v69 = swift_allocObject();
          v70 = v402;
          v403 = v69;
          *(v69 + 16) = v472;
          *(v69 + 24) = v70;
          v71 = swift_allocObject();
          v72 = v403;
          v420 = v71;
          *(v71 + 16) = v473;
          *(v71 + 24) = v72;
          v421 = swift_allocObject();
          *(v421 + 16) = 34;
          v422 = swift_allocObject();
          *(v422 + 16) = 8;
          v73 = swift_allocObject();
          v74 = v407;
          v408 = v73;
          *(v73 + 16) = v474;
          *(v73 + 24) = v74;
          v75 = swift_allocObject();
          v76 = v408;
          v424 = v75;
          *(v75 + 16) = v475;
          *(v75 + 24) = v76;
          v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v423 = sub_1B0E46A48();
          v425 = v77;

          v78 = v409;
          v79 = v425;
          *v425 = v476;
          v79[1] = v78;

          v80 = v410;
          v81 = v425;
          v425[2] = v477;
          v81[3] = v80;

          v82 = v411;
          v83 = v425;
          v425[4] = v478;
          v83[5] = v82;

          v84 = v412;
          v85 = v425;
          v425[6] = v479;
          v85[7] = v84;

          v86 = v413;
          v87 = v425;
          v425[8] = v480;
          v87[9] = v86;

          v88 = v414;
          v89 = v425;
          v425[10] = v481;
          v89[11] = v88;

          v90 = v415;
          v91 = v425;
          v425[12] = v482;
          v91[13] = v90;

          v92 = v416;
          v93 = v425;
          v425[14] = v483;
          v93[15] = v92;

          v94 = v417;
          v95 = v425;
          v425[16] = v484;
          v95[17] = v94;

          v96 = v418;
          v97 = v425;
          v425[18] = v485;
          v97[19] = v96;

          v98 = v419;
          v99 = v425;
          v425[20] = v486;
          v99[21] = v98;

          v100 = v420;
          v101 = v425;
          v425[22] = v487;
          v101[23] = v100;

          v102 = v421;
          v103 = v425;
          v425[24] = v488;
          v103[25] = v102;

          v104 = v422;
          v105 = v425;
          v425[26] = v489;
          v105[27] = v104;

          v106 = v424;
          v107 = v425;
          v425[28] = v490;
          v107[29] = v106;
          sub_1B0394964();

          if (os_log_type_enabled(v427, v428))
          {
            v108 = v462;
            v370 = sub_1B0E45D78();
            v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v371 = sub_1B03949A8(0);
            v372 = sub_1B03949A8(1);
            v373 = v520;
            v520[0] = v370;
            v374 = &v519;
            v519 = v371;
            v375 = &v518;
            v518 = v372;
            sub_1B0394A48(2, v520);
            sub_1B0394A48(5, v373);
            v516 = v476;
            v517 = v409;
            sub_1B03949FC(&v516, v373, v374, v375);
            v376 = v108;
            v377 = v409;
            v378 = v410;
            v379 = v411;
            v380 = v412;
            v381 = v413;
            v382 = v414;
            v383 = v415;
            v384 = v416;
            v385 = v417;
            v386 = v418;
            v387 = v419;
            v388 = v420;
            v389 = v421;
            v390 = v422;
            v391 = v424;
            if (v108)
            {
              v353 = v377;
              v354 = v378;
              v355 = v379;
              v356 = v380;
              v357 = v381;
              v358 = v382;
              v359 = v383;
              v360 = v384;
              v361 = v385;
              v362 = v386;
              v363 = v387;
              v364 = v388;
              v365 = v389;
              v366 = v390;
              v367 = v391;
              v128 = v391;
              v127 = v390;
              v126 = v389;
              v125 = v388;
              v124 = v387;
              v123 = v386;
              v122 = v385;
              v121 = v384;
              v120 = v383;
              v119 = v382;
              v118 = v381;
              v117 = v380;
              v116 = v379;
              v115 = v378;

              __break(1u);
            }

            else
            {
              v516 = v477;
              v517 = v410;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v337 = 0;
              v338 = v409;
              v339 = v410;
              v340 = v411;
              v341 = v412;
              v342 = v413;
              v343 = v414;
              v344 = v415;
              v345 = v416;
              v346 = v417;
              v347 = v418;
              v348 = v419;
              v349 = v420;
              v350 = v421;
              v351 = v422;
              v352 = v424;
              v516 = v478;
              v517 = v411;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v321 = 0;
              v322 = v409;
              v323 = v410;
              v324 = v411;
              v325 = v412;
              v326 = v413;
              v327 = v414;
              v328 = v415;
              v329 = v416;
              v330 = v417;
              v331 = v418;
              v332 = v419;
              v333 = v420;
              v334 = v421;
              v335 = v422;
              v336 = v424;
              v516 = v479;
              v517 = v412;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v305 = 0;
              v306 = v409;
              v307 = v410;
              v308 = v411;
              v309 = v412;
              v310 = v413;
              v311 = v414;
              v312 = v415;
              v313 = v416;
              v314 = v417;
              v315 = v418;
              v316 = v419;
              v317 = v420;
              v318 = v421;
              v319 = v422;
              v320 = v424;
              v516 = v480;
              v517 = v413;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v289 = 0;
              v290 = v409;
              v291 = v410;
              v292 = v411;
              v293 = v412;
              v294 = v413;
              v295 = v414;
              v296 = v415;
              v297 = v416;
              v298 = v417;
              v299 = v418;
              v300 = v419;
              v301 = v420;
              v302 = v421;
              v303 = v422;
              v304 = v424;
              v516 = v481;
              v517 = v414;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v273 = 0;
              v274 = v409;
              v275 = v410;
              v276 = v411;
              v277 = v412;
              v278 = v413;
              v279 = v414;
              v280 = v415;
              v281 = v416;
              v282 = v417;
              v283 = v418;
              v284 = v419;
              v285 = v420;
              v286 = v421;
              v287 = v422;
              v288 = v424;
              v516 = v482;
              v517 = v415;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v257 = 0;
              v258 = v409;
              v259 = v410;
              v260 = v411;
              v261 = v412;
              v262 = v413;
              v263 = v414;
              v264 = v415;
              v265 = v416;
              v266 = v417;
              v267 = v418;
              v268 = v419;
              v269 = v420;
              v270 = v421;
              v271 = v422;
              v272 = v424;
              v516 = v483;
              v517 = v416;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v241 = 0;
              v242 = v409;
              v243 = v410;
              v244 = v411;
              v245 = v412;
              v246 = v413;
              v247 = v414;
              v248 = v415;
              v249 = v416;
              v250 = v417;
              v251 = v418;
              v252 = v419;
              v253 = v420;
              v254 = v421;
              v255 = v422;
              v256 = v424;
              v516 = v484;
              v517 = v417;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v225 = 0;
              v226 = v409;
              v227 = v410;
              v228 = v411;
              v229 = v412;
              v230 = v413;
              v231 = v414;
              v232 = v415;
              v233 = v416;
              v234 = v417;
              v235 = v418;
              v236 = v419;
              v237 = v420;
              v238 = v421;
              v239 = v422;
              v240 = v424;
              v516 = v485;
              v517 = v418;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v209 = 0;
              v210 = v409;
              v211 = v410;
              v212 = v411;
              v213 = v412;
              v214 = v413;
              v215 = v414;
              v216 = v415;
              v217 = v416;
              v218 = v417;
              v219 = v418;
              v220 = v419;
              v221 = v420;
              v222 = v421;
              v223 = v422;
              v224 = v424;
              v516 = v486;
              v517 = v419;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v193 = 0;
              v194 = v409;
              v195 = v410;
              v196 = v411;
              v197 = v412;
              v198 = v413;
              v199 = v414;
              v200 = v415;
              v201 = v416;
              v202 = v417;
              v203 = v418;
              v204 = v419;
              v205 = v420;
              v206 = v421;
              v207 = v422;
              v208 = v424;
              v516 = v487;
              v517 = v420;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v177 = 0;
              v178 = v409;
              v179 = v410;
              v180 = v411;
              v181 = v412;
              v182 = v413;
              v183 = v414;
              v184 = v415;
              v185 = v416;
              v186 = v417;
              v187 = v418;
              v188 = v419;
              v189 = v420;
              v190 = v421;
              v191 = v422;
              v192 = v424;
              v516 = v488;
              v517 = v421;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v161 = 0;
              v162 = v409;
              v163 = v410;
              v164 = v411;
              v165 = v412;
              v166 = v413;
              v167 = v414;
              v168 = v415;
              v169 = v416;
              v170 = v417;
              v171 = v418;
              v172 = v419;
              v173 = v420;
              v174 = v421;
              v175 = v422;
              v176 = v424;
              v516 = v489;
              v517 = v422;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v145 = 0;
              v146 = v409;
              v147 = v410;
              v148 = v411;
              v149 = v412;
              v150 = v413;
              v151 = v414;
              v152 = v415;
              v153 = v416;
              v154 = v417;
              v155 = v418;
              v156 = v419;
              v157 = v420;
              v158 = v421;
              v159 = v422;
              v160 = v424;
              v516 = v490;
              v517 = v424;
              sub_1B03949FC(&v516, v520, &v519, &v518);
              v129 = 0;
              v130 = v409;
              v131 = v410;
              v132 = v411;
              v133 = v412;
              v134 = v413;
              v135 = v414;
              v136 = v415;
              v137 = v416;
              v138 = v417;
              v139 = v418;
              v140 = v419;
              v141 = v420;
              v142 = v421;
              v143 = v422;
              v144 = v424;
              _os_log_impl(&dword_1B0389000, v427, v428, "[%.*hhx-%.*X] Credentials: Unsupported auth method %{public}s", v370, 0x21u);
              sub_1B03998A8(v371);
              sub_1B03998A8(v372);
              sub_1B0E45D58();

              v368 = v129;
            }
          }

          else
          {
            v109 = v462;

            v368 = v109;
          }

          v114 = v368;
          MEMORY[0x1E69E5920](v427);
          (*(v502 + 8))(v505, v501);
          v441 = v114;
        }
      }
    }

    v113 = v441;
  }

  sub_1B06B91B0(__b);
  v111 = v533;
  v112 = v506[35];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B039E440(v111);

  return v112;
}

unint64_t sub_1B06F6420()
{
  v2 = qword_1EB6DBC98;
  if (!qword_1EB6DBC98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBC98);
    return WitnessTable;
  }

  return v2;
}

uint64_t (*sub_1B06F649C(NSObject *a1, uint64_t a2))(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  dispatch_group_enter(a1);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5928](a1);

  v2 = swift_allocObject();
  result = sub_1B070B55C;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1B06F655C(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v304 = a1;
  v306 = a2;
  v305 = a3;
  v248 = sub_1B039BBE8;
  v249 = sub_1B0394C30;
  v250 = sub_1B0394C24;
  v251 = sub_1B039BA2C;
  v252 = sub_1B039BA88;
  v253 = sub_1B039BB94;
  v254 = sub_1B0394C24;
  v255 = sub_1B039BBA0;
  v256 = sub_1B039BC08;
  v257 = sub_1B0398F5C;
  v258 = sub_1B0398F5C;
  v259 = sub_1B0399178;
  v260 = sub_1B0398F5C;
  v261 = sub_1B0398F5C;
  v262 = sub_1B039BA94;
  v263 = sub_1B0398F5C;
  v264 = sub_1B0398F5C;
  v265 = sub_1B0399178;
  v266 = sub_1B0398F5C;
  v267 = sub_1B0398F5C;
  v268 = sub_1B03991EC;
  v269 = sub_1B039BBE8;
  v270 = sub_1B0394C24;
  v271 = sub_1B039BA2C;
  v272 = sub_1B039BA88;
  v273 = sub_1B0394C24;
  v274 = sub_1B039BBA0;
  v275 = sub_1B039BC08;
  v276 = sub_1B0398F5C;
  v277 = sub_1B0398F5C;
  v278 = sub_1B0399178;
  v279 = sub_1B0398F5C;
  v280 = sub_1B0398F5C;
  v281 = sub_1B039BA94;
  v282 = sub_1B0398F5C;
  v283 = sub_1B0398F5C;
  v284 = sub_1B0399178;
  v285 = sub_1B0398F5C;
  v286 = sub_1B0398F5C;
  v287 = sub_1B03991EC;
  v337 = 0;
  v338 = 0;
  v336 = 0;
  v335 = 0;
  v288 = 0;
  v325 = 0;
  v326 = 0;
  v321 = 0;
  v322 = 0;
  v296 = 0;
  v289 = _s6LoggerVMa();
  v290 = (*(*(v289 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](0);
  v291 = v113 - v290;
  v292 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v293 = v113 - v292;
  v294 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v295 = v113 - v294;
  v297 = sub_1B0E439A8();
  v298 = *(v297 - 8);
  v299 = v297 - 8;
  v300 = (*(v298 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v296);
  v301 = v113 - v300;
  v302 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v303 = v113 - v302;
  v307 = sub_1B0E44B68();
  v308 = *(v307 - 8);
  v309 = v307 - 8;
  v310 = (*(v308 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v312);
  v311 = v113 - v310;
  v337 = v10;
  v338 = v11;
  v336 = v12;
  v335 = v9;
  MEMORY[0x1E69E5928](v9);
  v313 = [v312 username];
  if (v313)
  {
    v247 = v313;
    v242 = v313;
    v243 = sub_1B0E44AD8();
    v244 = v13;
    MEMORY[0x1E69E5920](v242);
    v245 = v243;
    v246 = v244;
  }

  else
  {
    v245 = 0;
    v246 = 0;
  }

  v333 = v245;
  v334 = v246;
  if (v246)
  {
    v235 = &v333;
    v236 = v333;
    v237 = v334;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v235);
    MEMORY[0x1E69E5920](v312);
    sub_1B0E44B48();
    sub_1B0394868();
    v238 = sub_1B0E44AE8();
    v239 = v14;
    (*(v308 + 8))(v311, v307);

    v240 = v238;
    v241 = v239;
  }

  else
  {
    sub_1B03B1198(&v333);
    MEMORY[0x1E69E5920](v312);
    v240 = 0;
    v241 = 0xF000000000000000;
  }

  v233 = v241;
  v234 = v240;
  if ((v241 & 0xF000000000000000) != 0xF000000000000000)
  {
    v231 = v234;
    v232 = v233;
    v228 = v233;
    v229 = v234;
    v325 = v234;
    v326 = v233;
    MEMORY[0x1E69E5928](v312);
    v15 = [v312 password];
    v230 = v15;
    if (v15)
    {
      v227 = v230;
      v222 = v230;
      v223 = sub_1B0E44AD8();
      v224 = v16;
      MEMORY[0x1E69E5920](v222);
      v225 = v223;
      v226 = v224;
    }

    else
    {
      v225 = 0;
      v226 = 0;
    }

    v323 = v225;
    v324 = v226;
    if (v226)
    {
      v215 = &v323;
      v216 = v323;
      v217 = v324;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1198(v215);
      MEMORY[0x1E69E5920](v312);
      sub_1B0E44B48();
      sub_1B0394868();
      v218 = sub_1B0E44AE8();
      v219 = v17;
      (*(v308 + 8))(v311, v307);

      v220 = v218;
      v221 = v219;
    }

    else
    {
      sub_1B03B1198(&v323);
      MEMORY[0x1E69E5920](v312);
      v220 = 0;
      v221 = 0xF000000000000000;
    }

    v213 = v221;
    v214 = v220;
    if ((v221 & 0xF000000000000000) != 0xF000000000000000)
    {
      v211 = v214;
      v212 = v213;
      v177 = v213;
      v178 = v214;
      v321 = v214;
      v322 = v213;
      (*(v298 + 16))(v303, v305, v297);
      sub_1B0394784(v305, v295);
      sub_1B0394784(v295, v293);
      sub_1B03F4FD0(v295, v291);
      v18 = (v293 + *(v289 + 20));
      v180 = *v18;
      v181 = *(v18 + 1);
      sub_1B039480C(v293);
      v179 = 24;
      v191 = 7;
      v19 = swift_allocObject();
      v20 = v181;
      v184 = v19;
      *(v19 + 16) = v180;
      *(v19 + 20) = v20;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v21 = swift_allocObject();
      v22 = v181;
      v182 = v21;
      *(v21 + 16) = v180;
      *(v21 + 20) = v22;

      v190 = 32;
      v23 = swift_allocObject();
      v24 = v182;
      v192 = v23;
      *(v23 + 16) = v248;
      *(v23 + 24) = v24;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v291);
      v209 = sub_1B0E43988();
      v210 = sub_1B0E45908();
      v188 = 17;
      v194 = swift_allocObject();
      v186 = 16;
      *(v194 + 16) = 16;
      v195 = swift_allocObject();
      v189 = 4;
      *(v195 + 16) = 4;
      v25 = swift_allocObject();
      v183 = v25;
      *(v25 + 16) = v249;
      *(v25 + 24) = 0;
      v26 = swift_allocObject();
      v27 = v183;
      v196 = v26;
      *(v26 + 16) = v250;
      *(v26 + 24) = v27;
      v197 = swift_allocObject();
      *(v197 + 16) = 0;
      v198 = swift_allocObject();
      *(v198 + 16) = 1;
      v28 = swift_allocObject();
      v29 = v184;
      v185 = v28;
      *(v28 + 16) = v251;
      *(v28 + 24) = v29;
      v30 = swift_allocObject();
      v31 = v185;
      v199 = v30;
      *(v30 + 16) = v252;
      *(v30 + 24) = v31;
      v200 = swift_allocObject();
      *(v200 + 16) = v186;
      v201 = swift_allocObject();
      *(v201 + 16) = v189;
      v32 = swift_allocObject();
      v187 = v32;
      *(v32 + 16) = v253;
      *(v32 + 24) = 0;
      v33 = swift_allocObject();
      v34 = v187;
      v202 = v33;
      *(v33 + 16) = v254;
      *(v33 + 24) = v34;
      v203 = swift_allocObject();
      *(v203 + 16) = 0;
      v204 = swift_allocObject();
      *(v204 + 16) = v189;
      v35 = swift_allocObject();
      v36 = v192;
      v193 = v35;
      *(v35 + 16) = v255;
      *(v35 + 24) = v36;
      v37 = swift_allocObject();
      v38 = v193;
      v206 = v37;
      *(v37 + 16) = v256;
      *(v37 + 24) = v38;
      v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v205 = sub_1B0E46A48();
      v207 = v39;

      v40 = v194;
      v41 = v207;
      *v207 = v257;
      v41[1] = v40;

      v42 = v195;
      v43 = v207;
      v207[2] = v258;
      v43[3] = v42;

      v44 = v196;
      v45 = v207;
      v207[4] = v259;
      v45[5] = v44;

      v46 = v197;
      v47 = v207;
      v207[6] = v260;
      v47[7] = v46;

      v48 = v198;
      v49 = v207;
      v207[8] = v261;
      v49[9] = v48;

      v50 = v199;
      v51 = v207;
      v207[10] = v262;
      v51[11] = v50;

      v52 = v200;
      v53 = v207;
      v207[12] = v263;
      v53[13] = v52;

      v54 = v201;
      v55 = v207;
      v207[14] = v264;
      v55[15] = v54;

      v56 = v202;
      v57 = v207;
      v207[16] = v265;
      v57[17] = v56;

      v58 = v203;
      v59 = v207;
      v207[18] = v266;
      v59[19] = v58;

      v60 = v204;
      v61 = v207;
      v207[20] = v267;
      v61[21] = v60;

      v62 = v206;
      v63 = v207;
      v207[22] = v268;
      v63[23] = v62;
      sub_1B0394964();

      if (os_log_type_enabled(v209, v210))
      {
        v64 = v288;
        v170 = sub_1B0E45D78();
        v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v169 = 0;
        v171 = sub_1B03949A8(0);
        v172 = sub_1B03949A8(v169);
        v173 = &v318;
        v318 = v170;
        v174 = &v317;
        v317 = v171;
        v175 = &v316;
        v316 = v172;
        sub_1B0394A48(0, &v318);
        sub_1B0394A48(4, v173);
        v314 = v257;
        v315 = v194;
        sub_1B03949FC(&v314, v173, v174, v175);
        v176 = v64;
        if (v64)
        {

          __break(1u);
        }

        else
        {
          v314 = v258;
          v315 = v195;
          sub_1B03949FC(&v314, &v318, &v317, &v316);
          v167 = 0;
          v314 = v259;
          v315 = v196;
          sub_1B03949FC(&v314, &v318, &v317, &v316);
          v166 = 0;
          v314 = v260;
          v315 = v197;
          sub_1B03949FC(&v314, &v318, &v317, &v316);
          v165 = 0;
          v314 = v261;
          v315 = v198;
          sub_1B03949FC(&v314, &v318, &v317, &v316);
          v164 = 0;
          v314 = v262;
          v315 = v199;
          sub_1B03949FC(&v314, &v318, &v317, &v316);
          v163 = 0;
          v314 = v263;
          v315 = v200;
          sub_1B03949FC(&v314, &v318, &v317, &v316);
          v162 = 0;
          v314 = v264;
          v315 = v201;
          sub_1B03949FC(&v314, &v318, &v317, &v316);
          v161 = 0;
          v314 = v265;
          v315 = v202;
          sub_1B03949FC(&v314, &v318, &v317, &v316);
          v160 = 0;
          v314 = v266;
          v315 = v203;
          sub_1B03949FC(&v314, &v318, &v317, &v316);
          v159 = 0;
          v314 = v267;
          v315 = v204;
          sub_1B03949FC(&v314, &v318, &v317, &v316);
          v158 = 0;
          v314 = v268;
          v315 = v206;
          sub_1B03949FC(&v314, &v318, &v317, &v316);
          _os_log_impl(&dword_1B0389000, v209, v210, "[%.*hhx-%.*X] Credentials: Adding username + password auth", v170, 0x17u);
          v157 = 0;
          sub_1B03998A8(v171);
          sub_1B03998A8(v172);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v209);
      (*(v298 + 8))(v303, v297);
      sub_1B03B2000(v229, v228);
      sub_1B03B2000(v178, v177);
      v319[0] = v229;
      v319[1] = v228;
      v319[2] = v178;
      v319[3] = v177;
      v319[5] &= 0xCFFFFFFFFFFFFFFFLL;
      v319[7] &= 0xCFFFFFFFFFFFFFFFLL;
      v319[9] &= 0xCFFFFFFFFFFFFFFFLL;
      v156 = v320;
      v154 = 80;
      memcpy(v320, v319, sizeof(v320));
      v155 = __dst;
      memcpy(__dst, v320, sizeof(__dst));
      v304(__dst);
      sub_1B070B568(v156);
      sub_1B0391D50(v178, v177);
      return sub_1B0391D50(v229, v228);
    }

    sub_1B0391D50(v229, v228);
  }

  (*(v298 + 16))(v301, v305, v297);
  sub_1B0394784(v305, v295);
  sub_1B0394784(v295, v293);
  sub_1B03F4FD0(v295, v291);
  v66 = (v293 + *(v289 + 20));
  v123 = *v66;
  v124 = *(v66 + 1);
  sub_1B039480C(v293);
  v122 = 24;
  v134 = 7;
  v67 = swift_allocObject();
  v68 = v124;
  v127 = v67;
  *(v67 + 16) = v123;
  *(v67 + 20) = v68;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v69 = swift_allocObject();
  v70 = v124;
  v125 = v69;
  *(v69 + 16) = v123;
  *(v69 + 20) = v70;

  v133 = 32;
  v71 = swift_allocObject();
  v72 = v125;
  v135 = v71;
  *(v71 + 16) = v269;
  *(v71 + 24) = v72;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v291);
  v152 = sub_1B0E43988();
  v153 = sub_1B0E458E8();
  v131 = 17;
  v137 = swift_allocObject();
  v129 = 16;
  *(v137 + 16) = 16;
  v138 = swift_allocObject();
  v132 = 4;
  *(v138 + 16) = 4;
  v73 = swift_allocObject();
  v126 = v73;
  *(v73 + 16) = v249;
  *(v73 + 24) = 0;
  v74 = swift_allocObject();
  v75 = v126;
  v139 = v74;
  *(v74 + 16) = v270;
  *(v74 + 24) = v75;
  v140 = swift_allocObject();
  *(v140 + 16) = 0;
  v141 = swift_allocObject();
  *(v141 + 16) = 1;
  v76 = swift_allocObject();
  v77 = v127;
  v128 = v76;
  *(v76 + 16) = v271;
  *(v76 + 24) = v77;
  v78 = swift_allocObject();
  v79 = v128;
  v142 = v78;
  *(v78 + 16) = v272;
  *(v78 + 24) = v79;
  v143 = swift_allocObject();
  *(v143 + 16) = v129;
  v144 = swift_allocObject();
  *(v144 + 16) = v132;
  v80 = swift_allocObject();
  v130 = v80;
  *(v80 + 16) = v253;
  *(v80 + 24) = 0;
  v81 = swift_allocObject();
  v82 = v130;
  v145 = v81;
  *(v81 + 16) = v273;
  *(v81 + 24) = v82;
  v146 = swift_allocObject();
  *(v146 + 16) = 0;
  v147 = swift_allocObject();
  *(v147 + 16) = v132;
  v83 = swift_allocObject();
  v84 = v135;
  v136 = v83;
  *(v83 + 16) = v274;
  *(v83 + 24) = v84;
  v85 = swift_allocObject();
  v86 = v136;
  v149 = v85;
  *(v85 + 16) = v275;
  *(v85 + 24) = v86;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v148 = sub_1B0E46A48();
  v150 = v87;

  v88 = v137;
  v89 = v150;
  *v150 = v276;
  v89[1] = v88;

  v90 = v138;
  v91 = v150;
  v150[2] = v277;
  v91[3] = v90;

  v92 = v139;
  v93 = v150;
  v150[4] = v278;
  v93[5] = v92;

  v94 = v140;
  v95 = v150;
  v150[6] = v279;
  v95[7] = v94;

  v96 = v141;
  v97 = v150;
  v150[8] = v280;
  v97[9] = v96;

  v98 = v142;
  v99 = v150;
  v150[10] = v281;
  v99[11] = v98;

  v100 = v143;
  v101 = v150;
  v150[12] = v282;
  v101[13] = v100;

  v102 = v144;
  v103 = v150;
  v150[14] = v283;
  v103[15] = v102;

  v104 = v145;
  v105 = v150;
  v150[16] = v284;
  v105[17] = v104;

  v106 = v146;
  v107 = v150;
  v150[18] = v285;
  v107[19] = v106;

  v108 = v147;
  v109 = v150;
  v150[20] = v286;
  v109[21] = v108;

  v110 = v149;
  v111 = v150;
  v150[22] = v287;
  v111[23] = v110;
  sub_1B0394964();

  if (os_log_type_enabled(v152, v153))
  {
    v112 = v288;
    v115 = sub_1B0E45D78();
    v113[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v114 = 0;
    v116 = sub_1B03949A8(0);
    v117 = sub_1B03949A8(v114);
    v118 = &v331;
    v331 = v115;
    v119 = &v330;
    v330 = v116;
    v120 = &v329;
    v329 = v117;
    sub_1B0394A48(0, &v331);
    sub_1B0394A48(4, v118);
    v327 = v276;
    v328 = v137;
    sub_1B03949FC(&v327, v118, v119, v120);
    v121 = v112;
    if (v112)
    {

      __break(1u);
    }

    else
    {
      v327 = v277;
      v328 = v138;
      sub_1B03949FC(&v327, &v331, &v330, &v329);
      v113[11] = 0;
      v327 = v278;
      v328 = v139;
      sub_1B03949FC(&v327, &v331, &v330, &v329);
      v113[10] = 0;
      v327 = v279;
      v328 = v140;
      sub_1B03949FC(&v327, &v331, &v330, &v329);
      v113[9] = 0;
      v327 = v280;
      v328 = v141;
      sub_1B03949FC(&v327, &v331, &v330, &v329);
      v113[8] = 0;
      v327 = v281;
      v328 = v142;
      sub_1B03949FC(&v327, &v331, &v330, &v329);
      v113[7] = 0;
      v327 = v282;
      v328 = v143;
      sub_1B03949FC(&v327, &v331, &v330, &v329);
      v113[6] = 0;
      v327 = v283;
      v328 = v144;
      sub_1B03949FC(&v327, &v331, &v330, &v329);
      v113[5] = 0;
      v327 = v284;
      v328 = v145;
      sub_1B03949FC(&v327, &v331, &v330, &v329);
      v113[4] = 0;
      v327 = v285;
      v328 = v146;
      sub_1B03949FC(&v327, &v331, &v330, &v329);
      v113[3] = 0;
      v327 = v286;
      v328 = v147;
      sub_1B03949FC(&v327, &v331, &v330, &v329);
      v113[2] = 0;
      v327 = v287;
      v328 = v149;
      sub_1B03949FC(&v327, &v331, &v330, &v329);
      _os_log_impl(&dword_1B0389000, v152, v153, "[%.*hhx-%.*X] Credentials: Missing username/password.", v115, 0x17u);
      v113[1] = 0;
      sub_1B03998A8(v116);
      sub_1B03998A8(v117);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v152);
  (*(v298 + 8))(v301, v297);
  memset(v332, 0, 40);
  v332[5] = 0x3000000000000000;
  v332[6] = 0;
  v332[7] = 0x1000000000000000;
  v332[8] = 0;
  v332[9] = 0x3000000000000000;
  memcpy(v340, v332, sizeof(v340));
  return (v304)(v340);
}

uint64_t sub_1B06F85B0(void (*a1)(uint64_t), void (*a2)(uint64_t), uint64_t a3)
{
  v593 = a1;
  v592 = a2;
  v591 = a3;
  v479 = sub_1B039BBE8;
  v480 = sub_1B0394C30;
  v481 = sub_1B0394C24;
  v482 = sub_1B039BA2C;
  v483 = sub_1B039BA88;
  v484 = sub_1B039BB94;
  v485 = sub_1B0394C24;
  v486 = sub_1B039BBA0;
  v487 = sub_1B039BC08;
  v488 = sub_1B070B854;
  v489 = sub_1B03B0DF8;
  v490 = sub_1B0398F5C;
  v491 = sub_1B0398F5C;
  v492 = sub_1B0399178;
  v493 = sub_1B0398F5C;
  v494 = sub_1B0398F5C;
  v495 = sub_1B039BA94;
  v496 = sub_1B0398F5C;
  v497 = sub_1B0398F5C;
  v498 = sub_1B0399178;
  v499 = sub_1B0398F5C;
  v500 = sub_1B0398F5C;
  v501 = sub_1B03991EC;
  v502 = sub_1B0398F5C;
  v503 = sub_1B0398F5C;
  v504 = sub_1B0399260;
  v505 = sub_1B039BBE8;
  v506 = sub_1B0394C24;
  v507 = sub_1B039BA2C;
  v508 = sub_1B039BA88;
  v509 = sub_1B0394C24;
  v510 = sub_1B039BBA0;
  v511 = sub_1B039BC08;
  v512 = sub_1B070B98C;
  v513 = sub_1B03B0DF8;
  v514 = sub_1B0398F5C;
  v515 = sub_1B0398F5C;
  v516 = sub_1B0399178;
  v517 = sub_1B0398F5C;
  v518 = sub_1B0398F5C;
  v519 = sub_1B039BA94;
  v520 = sub_1B0398F5C;
  v521 = sub_1B0398F5C;
  v522 = sub_1B0399178;
  v523 = sub_1B0398F5C;
  v524 = sub_1B0398F5C;
  v525 = sub_1B03991EC;
  v526 = sub_1B0398F5C;
  v527 = sub_1B0398F5C;
  v528 = sub_1B0399260;
  v529 = sub_1B039BBE8;
  v530 = sub_1B0394C24;
  v531 = sub_1B039BA2C;
  v532 = sub_1B039BA88;
  v533 = sub_1B0394C24;
  v534 = sub_1B039BBA0;
  v535 = sub_1B039BC08;
  v536 = sub_1B0398F5C;
  v537 = sub_1B0398F5C;
  v538 = sub_1B0399178;
  v539 = sub_1B0398F5C;
  v540 = sub_1B0398F5C;
  v541 = sub_1B039BA94;
  v542 = sub_1B0398F5C;
  v543 = sub_1B0398F5C;
  v544 = sub_1B0399178;
  v545 = sub_1B0398F5C;
  v546 = sub_1B0398F5C;
  v547 = sub_1B03991EC;
  v548 = sub_1B039BBE8;
  v549 = sub_1B0394C24;
  v550 = sub_1B039BA2C;
  v551 = sub_1B039BA88;
  v552 = sub_1B0394C24;
  v553 = sub_1B039BBA0;
  v554 = sub_1B039BC08;
  v555 = sub_1B0398F5C;
  v556 = sub_1B0398F5C;
  v557 = sub_1B0399178;
  v558 = sub_1B0398F5C;
  v559 = sub_1B0398F5C;
  v560 = sub_1B039BA94;
  v561 = sub_1B0398F5C;
  v562 = sub_1B0398F5C;
  v563 = sub_1B0399178;
  v564 = sub_1B0398F5C;
  v565 = sub_1B0398F5C;
  v566 = sub_1B03991EC;
  v567 = sub_1B070B85C;
  v638 = 0;
  v639 = 0;
  v637 = 0;
  v636 = 0;
  v635 = 0;
  v568 = 0;
  v579 = 0;
  v569 = _s6LoggerVMa();
  v570 = *(v569 - 8);
  v571 = v570;
  v572 = *(v570 + 64);
  v573 = (v572 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](0);
  v574 = v236 - v573;
  v575 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v576 = v236 - v575;
  v577 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v578 = v236 - v577;
  v580 = sub_1B0E439A8();
  v581 = *(v580 - 8);
  v582 = v580 - 8;
  v583 = (*(v581 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v579);
  v584 = v236 - v583;
  v585 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v586 = v236 - v585;
  v587 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v588 = v236 - v587;
  v589 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v590 = v236 - v589;
  v598 = sub_1B0E43108();
  v595 = *(v598 - 8);
  v596 = v598 - 8;
  v594 = (*(v595 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v593);
  v597 = v236 - v594;
  v638 = v14;
  v639 = v15;
  v637 = v16;
  v636 = v3;
  sub_1B0705A4C(v236 - v594);
  sub_1B0E43098();
  v599 = v17;
  v635 = v17;
  (*(v595 + 8))(v597, v598);
  v600 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1958, &qword_1B0E9A0B8);
  v602 = &v634;
  v634 = 0xC0F86A0000000000;
  v601 = &v633;
  v633 = v599;
  v603 = sub_1B070B7CC();
  if (sub_1B0E45138())
  {
    (*(v581 + 16))(v590, v591, v580);
    sub_1B0394784(v591, v578);
    sub_1B0394784(v578, v576);
    sub_1B03F4FD0(v578, v574);
    v18 = (v576 + *(v569 + 20));
    v447 = *v18;
    v448 = *(v18 + 1);
    sub_1B039480C(v576);
    v446 = 24;
    v458 = 7;
    v19 = swift_allocObject();
    v20 = v448;
    v451 = v19;
    *(v19 + 16) = v447;
    *(v19 + 20) = v20;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v21 = swift_allocObject();
    v22 = v448;
    v449 = v21;
    *(v21 + 16) = v447;
    *(v21 + 20) = v22;

    v457 = 32;
    v23 = swift_allocObject();
    v24 = v449;
    v459 = v23;
    *(v23 + 16) = v529;
    *(v23 + 24) = v24;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v574);
    v476 = sub_1B0E43988();
    v477 = sub_1B0E45908();
    v455 = 17;
    v461 = swift_allocObject();
    v453 = 16;
    *(v461 + 16) = 16;
    v462 = swift_allocObject();
    v456 = 4;
    *(v462 + 16) = 4;
    v25 = swift_allocObject();
    v450 = v25;
    *(v25 + 16) = v480;
    *(v25 + 24) = 0;
    v26 = swift_allocObject();
    v27 = v450;
    v463 = v26;
    *(v26 + 16) = v530;
    *(v26 + 24) = v27;
    v464 = swift_allocObject();
    *(v464 + 16) = 0;
    v465 = swift_allocObject();
    *(v465 + 16) = 1;
    v28 = swift_allocObject();
    v29 = v451;
    v452 = v28;
    *(v28 + 16) = v531;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    v31 = v452;
    v466 = v30;
    *(v30 + 16) = v532;
    *(v30 + 24) = v31;
    v467 = swift_allocObject();
    *(v467 + 16) = v453;
    v468 = swift_allocObject();
    *(v468 + 16) = v456;
    v32 = swift_allocObject();
    v454 = v32;
    *(v32 + 16) = v484;
    *(v32 + 24) = 0;
    v33 = swift_allocObject();
    v34 = v454;
    v469 = v33;
    *(v33 + 16) = v533;
    *(v33 + 24) = v34;
    v470 = swift_allocObject();
    *(v470 + 16) = 0;
    v471 = swift_allocObject();
    *(v471 + 16) = v456;
    v35 = swift_allocObject();
    v36 = v459;
    v460 = v35;
    *(v35 + 16) = v534;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v460;
    v473 = v37;
    *(v37 + 16) = v535;
    *(v37 + 24) = v38;
    v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v472 = sub_1B0E46A48();
    v474 = v39;

    v40 = v461;
    v41 = v474;
    *v474 = v536;
    v41[1] = v40;

    v42 = v462;
    v43 = v474;
    v474[2] = v537;
    v43[3] = v42;

    v44 = v463;
    v45 = v474;
    v474[4] = v538;
    v45[5] = v44;

    v46 = v464;
    v47 = v474;
    v474[6] = v539;
    v47[7] = v46;

    v48 = v465;
    v49 = v474;
    v474[8] = v540;
    v49[9] = v48;

    v50 = v466;
    v51 = v474;
    v474[10] = v541;
    v51[11] = v50;

    v52 = v467;
    v53 = v474;
    v474[12] = v542;
    v53[13] = v52;

    v54 = v468;
    v55 = v474;
    v474[14] = v543;
    v55[15] = v54;

    v56 = v469;
    v57 = v474;
    v474[16] = v544;
    v57[17] = v56;

    v58 = v470;
    v59 = v474;
    v474[18] = v545;
    v59[19] = v58;

    v60 = v471;
    v61 = v474;
    v474[20] = v546;
    v61[21] = v60;

    v62 = v473;
    v63 = v474;
    v474[22] = v547;
    v63[23] = v62;
    sub_1B0394964();

    if (os_log_type_enabled(v476, v477))
    {
      v64 = v568;
      v439 = sub_1B0E45D78();
      v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v438 = 0;
      v440 = sub_1B03949A8(0);
      v441 = sub_1B03949A8(v438);
      v442 = &v608;
      v608 = v439;
      v443 = &v607;
      v607 = v440;
      v444 = &v606;
      v606 = v441;
      sub_1B0394A48(0, &v608);
      sub_1B0394A48(4, v442);
      v604 = v536;
      v605 = v461;
      sub_1B03949FC(&v604, v442, v443, v444);
      v445 = v64;
      if (v64)
      {

        __break(1u);
      }

      else
      {
        v604 = v537;
        v605 = v462;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v435 = 0;
        v604 = v538;
        v605 = v463;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v434 = 0;
        v604 = v539;
        v605 = v464;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v433 = 0;
        v604 = v540;
        v605 = v465;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v432 = 0;
        v604 = v541;
        v605 = v466;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v431 = 0;
        v604 = v542;
        v605 = v467;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v430 = 0;
        v604 = v543;
        v605 = v468;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v429 = 0;
        v604 = v544;
        v605 = v469;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v428 = 0;
        v604 = v545;
        v605 = v470;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v427 = 0;
        v604 = v546;
        v605 = v471;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v426 = 0;
        v604 = v547;
        v605 = v473;
        sub_1B03949FC(&v604, &v608, &v607, &v606);
        v425 = 0;
        _os_log_impl(&dword_1B0389000, v476, v477, "[%.*hhx-%.*X] Credentials: OAuth did expire long ago.", v439, 0x17u);
        v424 = 0;
        sub_1B03998A8(v440);
        sub_1B03998A8(v441);
        sub_1B0E45D58();

        v436 = v425;
      }
    }

    else
    {
      v65 = v568;

      v436 = v65;
    }

    v422 = v436;
    MEMORY[0x1E69E5920](v476);
    (*(v581 + 8))(v590, v580);
    v423 = v422;
  }

  else
  {
    v632 = 0;
    v631 = v599;
    if (sub_1B0E45138())
    {
      (*(v581 + 16))(v588, v591, v580);
      sub_1B0394784(v591, v578);
      sub_1B0394784(v578, v576);
      sub_1B03F4FD0(v578, v574);
      v66 = (v576 + *(v569 + 20));
      v385 = *v66;
      v386 = *(v66 + 1);
      sub_1B039480C(v576);
      v388 = 24;
      v399 = 7;
      v67 = swift_allocObject();
      v68 = v386;
      v390 = v67;
      *(v67 + 16) = v385;
      *(v67 + 20) = v68;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v69 = swift_allocObject();
      v70 = v386;
      v387 = v69;
      *(v69 + 16) = v385;
      *(v69 + 20) = v70;

      v398 = 32;
      v71 = swift_allocObject();
      v72 = v387;
      v395 = v71;
      *(v71 + 16) = v505;
      *(v71 + 24) = v72;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v574);
      v400 = swift_allocObject();
      *(v400 + 16) = v599;
      v420 = sub_1B0E43988();
      v421 = sub_1B0E45908();
      v397 = 17;
      v402 = swift_allocObject();
      v392 = 16;
      *(v402 + 16) = 16;
      v403 = swift_allocObject();
      v394 = 4;
      *(v403 + 16) = 4;
      v73 = swift_allocObject();
      v389 = v73;
      *(v73 + 16) = v480;
      *(v73 + 24) = 0;
      v74 = swift_allocObject();
      v75 = v389;
      v404 = v74;
      *(v74 + 16) = v506;
      *(v74 + 24) = v75;
      v405 = swift_allocObject();
      *(v405 + 16) = 0;
      v406 = swift_allocObject();
      *(v406 + 16) = 1;
      v76 = swift_allocObject();
      v77 = v390;
      v391 = v76;
      *(v76 + 16) = v507;
      *(v76 + 24) = v77;
      v78 = swift_allocObject();
      v79 = v391;
      v407 = v78;
      *(v78 + 16) = v508;
      *(v78 + 24) = v79;
      v408 = swift_allocObject();
      *(v408 + 16) = v392;
      v409 = swift_allocObject();
      *(v409 + 16) = v394;
      v80 = swift_allocObject();
      v393 = v80;
      *(v80 + 16) = v484;
      *(v80 + 24) = 0;
      v81 = swift_allocObject();
      v82 = v393;
      v410 = v81;
      *(v81 + 16) = v509;
      *(v81 + 24) = v82;
      v411 = swift_allocObject();
      *(v411 + 16) = 0;
      v412 = swift_allocObject();
      *(v412 + 16) = v394;
      v83 = swift_allocObject();
      v84 = v395;
      v396 = v83;
      *(v83 + 16) = v510;
      *(v83 + 24) = v84;
      v85 = swift_allocObject();
      v86 = v396;
      v413 = v85;
      *(v85 + 16) = v511;
      *(v85 + 24) = v86;
      v414 = swift_allocObject();
      *(v414 + 16) = 0;
      v415 = swift_allocObject();
      *(v415 + 16) = 8;
      v87 = swift_allocObject();
      v88 = v400;
      v401 = v87;
      *(v87 + 16) = v512;
      *(v87 + 24) = v88;
      v89 = swift_allocObject();
      v90 = v401;
      v417 = v89;
      *(v89 + 16) = v513;
      *(v89 + 24) = v90;
      v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v416 = sub_1B0E46A48();
      v418 = v91;

      v92 = v402;
      v93 = v418;
      *v418 = v514;
      v93[1] = v92;

      v94 = v403;
      v95 = v418;
      v418[2] = v515;
      v95[3] = v94;

      v96 = v404;
      v97 = v418;
      v418[4] = v516;
      v97[5] = v96;

      v98 = v405;
      v99 = v418;
      v418[6] = v517;
      v99[7] = v98;

      v100 = v406;
      v101 = v418;
      v418[8] = v518;
      v101[9] = v100;

      v102 = v407;
      v103 = v418;
      v418[10] = v519;
      v103[11] = v102;

      v104 = v408;
      v105 = v418;
      v418[12] = v520;
      v105[13] = v104;

      v106 = v409;
      v107 = v418;
      v418[14] = v521;
      v107[15] = v106;

      v108 = v410;
      v109 = v418;
      v418[16] = v522;
      v109[17] = v108;

      v110 = v411;
      v111 = v418;
      v418[18] = v523;
      v111[19] = v110;

      v112 = v412;
      v113 = v418;
      v418[20] = v524;
      v113[21] = v112;

      v114 = v413;
      v115 = v418;
      v418[22] = v525;
      v115[23] = v114;

      v116 = v414;
      v117 = v418;
      v418[24] = v526;
      v117[25] = v116;

      v118 = v415;
      v119 = v418;
      v418[26] = v527;
      v119[27] = v118;

      v120 = v417;
      v121 = v418;
      v418[28] = v528;
      v121[29] = v120;
      sub_1B0394964();

      if (os_log_type_enabled(v420, v421))
      {
        v122 = v568;
        v378 = sub_1B0E45D78();
        v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v377 = 0;
        v379 = sub_1B03949A8(0);
        v380 = sub_1B03949A8(v377);
        v381 = &v613;
        v613 = v378;
        v382 = &v612;
        v612 = v379;
        v383 = &v611;
        v611 = v380;
        sub_1B0394A48(0, &v613);
        sub_1B0394A48(5, v381);
        v609 = v514;
        v610 = v402;
        sub_1B03949FC(&v609, v381, v382, v383);
        v384 = v122;
        if (v122)
        {

          __break(1u);
        }

        else
        {
          v609 = v515;
          v610 = v403;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v374 = 0;
          v609 = v516;
          v610 = v404;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v373 = 0;
          v609 = v517;
          v610 = v405;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v372 = 0;
          v609 = v518;
          v610 = v406;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v371 = 0;
          v609 = v519;
          v610 = v407;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v370 = 0;
          v609 = v520;
          v610 = v408;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v369 = 0;
          v609 = v521;
          v610 = v409;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v368 = 0;
          v609 = v522;
          v610 = v410;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v367 = 0;
          v609 = v523;
          v610 = v411;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v366 = 0;
          v609 = v524;
          v610 = v412;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v365 = 0;
          v609 = v525;
          v610 = v413;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v364 = 0;
          v609 = v526;
          v610 = v414;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v363 = 0;
          v609 = v527;
          v610 = v415;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v362 = 0;
          v609 = v528;
          v610 = v417;
          sub_1B03949FC(&v609, &v613, &v612, &v611);
          v361 = 0;
          _os_log_impl(&dword_1B0389000, v420, v421, "[%.*hhx-%.*X] Credentials: OAuth did expire %ld seconds ago.", v378, 0x21u);
          v360 = 0;
          sub_1B03998A8(v379);
          sub_1B03998A8(v380);
          sub_1B0E45D58();

          v375 = v361;
        }
      }

      else
      {
        v123 = v568;

        v375 = v123;
      }

      v359 = v375;
      MEMORY[0x1E69E5920](v420);
      (*(v581 + 8))(v588, v580);
      v423 = v359;
    }

    else
    {
      (*(v581 + 16))(v586, v591, v580);
      sub_1B0394784(v591, v578);
      sub_1B0394784(v578, v576);
      sub_1B03F4FD0(v578, v574);
      v124 = (v576 + *(v569 + 20));
      v322 = *v124;
      v323 = *(v124 + 1);
      sub_1B039480C(v576);
      v325 = 24;
      v336 = 7;
      v125 = swift_allocObject();
      v126 = v323;
      v327 = v125;
      *(v125 + 16) = v322;
      *(v125 + 20) = v126;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v127 = swift_allocObject();
      v128 = v323;
      v324 = v127;
      *(v127 + 16) = v322;
      *(v127 + 20) = v128;

      v335 = 32;
      v129 = swift_allocObject();
      v130 = v324;
      v332 = v129;
      *(v129 + 16) = v479;
      *(v129 + 24) = v130;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v574);
      v337 = swift_allocObject();
      *(v337 + 16) = v599;
      v357 = sub_1B0E43988();
      v358 = sub_1B0E45908();
      v334 = 17;
      v339 = swift_allocObject();
      v329 = 16;
      *(v339 + 16) = 16;
      v340 = swift_allocObject();
      v331 = 4;
      *(v340 + 16) = 4;
      v131 = swift_allocObject();
      v326 = v131;
      *(v131 + 16) = v480;
      *(v131 + 24) = 0;
      v132 = swift_allocObject();
      v133 = v326;
      v341 = v132;
      *(v132 + 16) = v481;
      *(v132 + 24) = v133;
      v342 = swift_allocObject();
      *(v342 + 16) = 0;
      v343 = swift_allocObject();
      *(v343 + 16) = 1;
      v134 = swift_allocObject();
      v135 = v327;
      v328 = v134;
      *(v134 + 16) = v482;
      *(v134 + 24) = v135;
      v136 = swift_allocObject();
      v137 = v328;
      v344 = v136;
      *(v136 + 16) = v483;
      *(v136 + 24) = v137;
      v345 = swift_allocObject();
      *(v345 + 16) = v329;
      v346 = swift_allocObject();
      *(v346 + 16) = v331;
      v138 = swift_allocObject();
      v330 = v138;
      *(v138 + 16) = v484;
      *(v138 + 24) = 0;
      v139 = swift_allocObject();
      v140 = v330;
      v347 = v139;
      *(v139 + 16) = v485;
      *(v139 + 24) = v140;
      v348 = swift_allocObject();
      *(v348 + 16) = 0;
      v349 = swift_allocObject();
      *(v349 + 16) = v331;
      v141 = swift_allocObject();
      v142 = v332;
      v333 = v141;
      *(v141 + 16) = v486;
      *(v141 + 24) = v142;
      v143 = swift_allocObject();
      v144 = v333;
      v350 = v143;
      *(v143 + 16) = v487;
      *(v143 + 24) = v144;
      v351 = swift_allocObject();
      *(v351 + 16) = 0;
      v352 = swift_allocObject();
      *(v352 + 16) = 8;
      v145 = swift_allocObject();
      v146 = v337;
      v338 = v145;
      *(v145 + 16) = v488;
      *(v145 + 24) = v146;
      v147 = swift_allocObject();
      v148 = v338;
      v354 = v147;
      *(v147 + 16) = v489;
      *(v147 + 24) = v148;
      v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v353 = sub_1B0E46A48();
      v355 = v149;

      v150 = v339;
      v151 = v355;
      *v355 = v490;
      v151[1] = v150;

      v152 = v340;
      v153 = v355;
      v355[2] = v491;
      v153[3] = v152;

      v154 = v341;
      v155 = v355;
      v355[4] = v492;
      v155[5] = v154;

      v156 = v342;
      v157 = v355;
      v355[6] = v493;
      v157[7] = v156;

      v158 = v343;
      v159 = v355;
      v355[8] = v494;
      v159[9] = v158;

      v160 = v344;
      v161 = v355;
      v355[10] = v495;
      v161[11] = v160;

      v162 = v345;
      v163 = v355;
      v355[12] = v496;
      v163[13] = v162;

      v164 = v346;
      v165 = v355;
      v355[14] = v497;
      v165[15] = v164;

      v166 = v347;
      v167 = v355;
      v355[16] = v498;
      v167[17] = v166;

      v168 = v348;
      v169 = v355;
      v355[18] = v499;
      v169[19] = v168;

      v170 = v349;
      v171 = v355;
      v355[20] = v500;
      v171[21] = v170;

      v172 = v350;
      v173 = v355;
      v355[22] = v501;
      v173[23] = v172;

      v174 = v351;
      v175 = v355;
      v355[24] = v502;
      v175[25] = v174;

      v176 = v352;
      v177 = v355;
      v355[26] = v503;
      v177[27] = v176;

      v178 = v354;
      v179 = v355;
      v355[28] = v504;
      v179[29] = v178;
      sub_1B0394964();

      if (os_log_type_enabled(v357, v358))
      {
        v180 = v568;
        v315 = sub_1B0E45D78();
        v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v314 = 0;
        v316 = sub_1B03949A8(0);
        v317 = sub_1B03949A8(v314);
        v318 = &v618;
        v618 = v315;
        v319 = &v617;
        v617 = v316;
        v320 = &v616;
        v616 = v317;
        sub_1B0394A48(0, &v618);
        sub_1B0394A48(5, v318);
        v614 = v490;
        v615 = v339;
        sub_1B03949FC(&v614, v318, v319, v320);
        v321 = v180;
        if (v180)
        {

          __break(1u);
        }

        else
        {
          v614 = v491;
          v615 = v340;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v311 = 0;
          v614 = v492;
          v615 = v341;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v310 = 0;
          v614 = v493;
          v615 = v342;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v309 = 0;
          v614 = v494;
          v615 = v343;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v308 = 0;
          v614 = v495;
          v615 = v344;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v307 = 0;
          v614 = v496;
          v615 = v345;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v306 = 0;
          v614 = v497;
          v615 = v346;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v305 = 0;
          v614 = v498;
          v615 = v347;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v304 = 0;
          v614 = v499;
          v615 = v348;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v303 = 0;
          v614 = v500;
          v615 = v349;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v302 = 0;
          v614 = v501;
          v615 = v350;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v301 = 0;
          v614 = v502;
          v615 = v351;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v300 = 0;
          v614 = v503;
          v615 = v352;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v299 = 0;
          v614 = v504;
          v615 = v354;
          sub_1B03949FC(&v614, &v618, &v617, &v616);
          v298 = 0;
          _os_log_impl(&dword_1B0389000, v357, v358, "[%.*hhx-%.*X] Credentials: OAuth will expire in %ld seconds.", v315, 0x21u);
          v297 = 0;
          sub_1B03998A8(v316);
          sub_1B03998A8(v317);
          sub_1B0E45D58();

          v312 = v298;
        }
      }

      else
      {
        v181 = v568;

        v312 = v181;
      }

      v296 = v312;
      MEMORY[0x1E69E5920](v357);
      (*(v581 + 8))(v586, v580);
      v423 = v296;
    }
  }

  v295 = v423;
  if (sub_1B070616C(v591))
  {
    (*(v581 + 16))(v584, v591, v580);
    sub_1B0394784(v591, v578);
    sub_1B0394784(v578, v576);
    sub_1B03F4FD0(v578, v574);
    v182 = (v576 + *(v569 + 20));
    v264 = *v182;
    v265 = *(v182 + 1);
    sub_1B039480C(v576);
    v263 = 24;
    v275 = 7;
    v183 = swift_allocObject();
    v184 = v265;
    v268 = v183;
    *(v183 + 16) = v264;
    *(v183 + 20) = v184;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v185 = swift_allocObject();
    v186 = v265;
    v266 = v185;
    *(v185 + 16) = v264;
    *(v185 + 20) = v186;

    v274 = 32;
    v187 = swift_allocObject();
    v188 = v266;
    v276 = v187;
    *(v187 + 16) = v548;
    *(v187 + 24) = v188;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v574);
    v293 = sub_1B0E43988();
    v294 = sub_1B0E45908();
    v272 = 17;
    v278 = swift_allocObject();
    v270 = 16;
    *(v278 + 16) = 16;
    v279 = swift_allocObject();
    v273 = 4;
    *(v279 + 16) = 4;
    v189 = swift_allocObject();
    v267 = v189;
    *(v189 + 16) = v480;
    *(v189 + 24) = 0;
    v190 = swift_allocObject();
    v191 = v267;
    v280 = v190;
    *(v190 + 16) = v549;
    *(v190 + 24) = v191;
    v281 = swift_allocObject();
    *(v281 + 16) = 0;
    v282 = swift_allocObject();
    *(v282 + 16) = 1;
    v192 = swift_allocObject();
    v193 = v268;
    v269 = v192;
    *(v192 + 16) = v550;
    *(v192 + 24) = v193;
    v194 = swift_allocObject();
    v195 = v269;
    v283 = v194;
    *(v194 + 16) = v551;
    *(v194 + 24) = v195;
    v284 = swift_allocObject();
    *(v284 + 16) = v270;
    v285 = swift_allocObject();
    *(v285 + 16) = v273;
    v196 = swift_allocObject();
    v271 = v196;
    *(v196 + 16) = v484;
    *(v196 + 24) = 0;
    v197 = swift_allocObject();
    v198 = v271;
    v286 = v197;
    *(v197 + 16) = v552;
    *(v197 + 24) = v198;
    v287 = swift_allocObject();
    *(v287 + 16) = 0;
    v288 = swift_allocObject();
    *(v288 + 16) = v273;
    v199 = swift_allocObject();
    v200 = v276;
    v277 = v199;
    *(v199 + 16) = v553;
    *(v199 + 24) = v200;
    v201 = swift_allocObject();
    v202 = v277;
    v290 = v201;
    *(v201 + 16) = v554;
    *(v201 + 24) = v202;
    v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v289 = sub_1B0E46A48();
    v291 = v203;

    v204 = v278;
    v205 = v291;
    *v291 = v555;
    v205[1] = v204;

    v206 = v279;
    v207 = v291;
    v291[2] = v556;
    v207[3] = v206;

    v208 = v280;
    v209 = v291;
    v291[4] = v557;
    v209[5] = v208;

    v210 = v281;
    v211 = v291;
    v291[6] = v558;
    v211[7] = v210;

    v212 = v282;
    v213 = v291;
    v291[8] = v559;
    v213[9] = v212;

    v214 = v283;
    v215 = v291;
    v291[10] = v560;
    v215[11] = v214;

    v216 = v284;
    v217 = v291;
    v291[12] = v561;
    v217[13] = v216;

    v218 = v285;
    v219 = v291;
    v291[14] = v562;
    v219[15] = v218;

    v220 = v286;
    v221 = v291;
    v291[16] = v563;
    v221[17] = v220;

    v222 = v287;
    v223 = v291;
    v291[18] = v564;
    v223[19] = v222;

    v224 = v288;
    v225 = v291;
    v291[20] = v565;
    v225[21] = v224;

    v226 = v290;
    v227 = v291;
    v291[22] = v566;
    v227[23] = v226;
    sub_1B0394964();

    if (os_log_type_enabled(v293, v294))
    {
      v228 = v295;
      v256 = sub_1B0E45D78();
      v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v255 = 0;
      v257 = sub_1B03949A8(0);
      v258 = sub_1B03949A8(v255);
      v259 = &v623;
      v623 = v256;
      v260 = &v622;
      v622 = v257;
      v261 = &v621;
      v621 = v258;
      sub_1B0394A48(0, &v623);
      sub_1B0394A48(4, v259);
      v619 = v555;
      v620 = v278;
      sub_1B03949FC(&v619, v259, v260, v261);
      v262 = v228;
      if (v228)
      {

        __break(1u);
      }

      else
      {
        v619 = v556;
        v620 = v279;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v253 = 0;
        v619 = v557;
        v620 = v280;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v252 = 0;
        v619 = v558;
        v620 = v281;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v251 = 0;
        v619 = v559;
        v620 = v282;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v250 = 0;
        v619 = v560;
        v620 = v283;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v249 = 0;
        v619 = v561;
        v620 = v284;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v248 = 0;
        v619 = v562;
        v620 = v285;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v247 = 0;
        v619 = v563;
        v620 = v286;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v246 = 0;
        v619 = v564;
        v620 = v287;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v245 = 0;
        v619 = v565;
        v620 = v288;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        v244 = 0;
        v619 = v566;
        v620 = v290;
        sub_1B03949FC(&v619, &v623, &v622, &v621);
        _os_log_impl(&dword_1B0389000, v293, v294, "[%.*hhx-%.*X] Credentials: Renewing OAuth credentials.", v256, 0x17u);
        v243 = 0;
        sub_1B03998A8(v257);
        sub_1B03998A8(v258);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v293);
    (*(v581 + 8))(v584, v580);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1960, &qword_1B0E9A0C0);
    sub_1B0E46A48();
    v236[1] = MEMORY[0x1E69E69B8];
    v236[2] = MEMORY[0x1E69E7CA0] + 8;
    v236[3] = MEMORY[0x1E69E69C0];
    v236[4] = sub_1B0E445D8();
    v242 = sub_1B0E44598();

    sub_1B0394784(v591, v578);

    MEMORY[0x1E69E5928](v478);
    v237 = (*(v571 + 80) + 16) & ~*(v571 + 80);
    v238 = (v237 + v572 + 7) & 0xFFFFFFFFFFFFFFF8;
    v239 = (v238 + 23) & 0xFFFFFFFFFFFFFFF8;
    v240 = swift_allocObject();
    sub_1B03F4FD0(v578, v240 + v237);
    v229 = v592;
    v230 = v239;
    v231 = v567;
    v232 = v240;
    v233 = v478;
    v234 = (v240 + v238);
    *v234 = v593;
    v234[1] = v229;
    *(v232 + v230) = v233;
    v629 = v231;
    v630 = v232;
    aBlock = MEMORY[0x1E69E9820];
    v625 = 1107296256;
    v626 = 0;
    v627 = sub_1B06F38E8;
    v628 = &block_descriptor_1211;
    v241 = _Block_copy(&aBlock);

    [v478 renewCredentialsWithOptions:v242 completion:v241];
    _Block_release(v241);
    return MEMORY[0x1E69E5920](v242);
  }

  else
  {

    v236[0] = v640;
    sub_1B0708E54(v591, v640);
    v593(v236[0]);
    sub_1B070B568(v236[0]);
  }
}

uint64_t sub_1B06FC2B8(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v139 = a1;
  v141 = a2;
  v140 = a3;
  v110 = sub_1B070B994;
  v111 = sub_1B039BBE8;
  v112 = sub_1B0394C30;
  v113 = sub_1B0394C24;
  v114 = sub_1B039BA2C;
  v115 = sub_1B039BA88;
  v116 = sub_1B039BB94;
  v117 = sub_1B0394C24;
  v118 = sub_1B039BBA0;
  v119 = sub_1B039BC08;
  v120 = sub_1B0398F5C;
  v121 = sub_1B0398F5C;
  v122 = sub_1B0399178;
  v123 = sub_1B0398F5C;
  v124 = sub_1B0398F5C;
  v125 = sub_1B039BA94;
  v126 = sub_1B0398F5C;
  v127 = sub_1B0398F5C;
  v128 = sub_1B0399178;
  v129 = sub_1B0398F5C;
  v130 = sub_1B0398F5C;
  v131 = sub_1B03991EC;
  v169 = 0;
  v170 = 0;
  v168 = 0;
  v167 = 0;
  v132 = 0;
  v161 = 0;
  v133 = 0;
  v134 = sub_1B0E439A8();
  v135 = *(v134 - 8);
  v136 = v134 - 8;
  v137 = (*(v135 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v138 = v61 - v137;
  v142 = _s6LoggerVMa();
  v143 = *(v142 - 8);
  v144 = v143;
  v148 = *(v143 + 64);
  v145 = (v148 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v152);
  v146 = v61 - v145;
  v147 = (v148 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v149 = v61 - v147;
  v150 = (v148 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v151 = v61 - v150;
  v169 = v6;
  v170 = v7;
  v168 = v8;
  v167 = v5;
  MEMORY[0x1E69E5928](v5);
  objc_opt_self();
  v153 = swift_dynamicCastObjCClass();
  if (v153)
  {
    v109 = v153;
  }

  else
  {
    MEMORY[0x1E69E5920](v152);
    v109 = 0;
  }

  v108 = v109;
  if (v109)
  {
    v107 = v108;
    v106 = v108;
    v161 = v108;
    sub_1B0394784(v140, v151);

    v102 = (*(v144 + 80) + 16) & ~*(v144 + 80);
    v103 = (v102 + v148 + 7) & 0xFFFFFFFFFFFFFFF8;
    v104 = swift_allocObject();
    sub_1B03F4FD0(v151, v104 + v102);
    v9 = v141;
    v10 = v110;
    v11 = v104;
    v12 = (v104 + v103);
    *v12 = v139;
    v12[1] = v9;
    v159 = v10;
    v160 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v155 = 1107296256;
    v156 = 0;
    v157 = sub_1B0705908;
    v158 = &block_descriptor_1464;
    v105 = _Block_copy(&aBlock);

    [v106 appleID2AuthWithCompletion_];
    _Block_release(v105);
    return MEMORY[0x1E69E5920](v106);
  }

  else
  {
    (*(v135 + 16))(v138, v140, v134);
    sub_1B0394784(v140, v151);
    sub_1B0394784(v151, v149);
    sub_1B03F4FD0(v151, v146);
    v14 = (v149 + *(v142 + 20));
    v71 = *v14;
    v72 = *(v14 + 1);
    sub_1B039480C(v149);
    v70 = 24;
    v82 = 7;
    v15 = swift_allocObject();
    v16 = v72;
    v75 = v15;
    *(v15 + 16) = v71;
    *(v15 + 20) = v16;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v17 = swift_allocObject();
    v18 = v72;
    v73 = v17;
    *(v17 + 16) = v71;
    *(v17 + 20) = v18;

    v81 = 32;
    v19 = swift_allocObject();
    v20 = v73;
    v83 = v19;
    *(v19 + 16) = v111;
    *(v19 + 24) = v20;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v146);
    v100 = sub_1B0E43988();
    v101 = sub_1B0E458E8();
    v79 = 17;
    v85 = swift_allocObject();
    v77 = 16;
    *(v85 + 16) = 16;
    v86 = swift_allocObject();
    v80 = 4;
    *(v86 + 16) = 4;
    v21 = swift_allocObject();
    v74 = v21;
    *(v21 + 16) = v112;
    *(v21 + 24) = 0;
    v22 = swift_allocObject();
    v23 = v74;
    v87 = v22;
    *(v22 + 16) = v113;
    *(v22 + 24) = v23;
    v88 = swift_allocObject();
    *(v88 + 16) = 0;
    v89 = swift_allocObject();
    *(v89 + 16) = 1;
    v24 = swift_allocObject();
    v25 = v75;
    v76 = v24;
    *(v24 + 16) = v114;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v76;
    v90 = v26;
    *(v26 + 16) = v115;
    *(v26 + 24) = v27;
    v91 = swift_allocObject();
    *(v91 + 16) = v77;
    v92 = swift_allocObject();
    *(v92 + 16) = v80;
    v28 = swift_allocObject();
    v78 = v28;
    *(v28 + 16) = v116;
    *(v28 + 24) = 0;
    v29 = swift_allocObject();
    v30 = v78;
    v93 = v29;
    *(v29 + 16) = v117;
    *(v29 + 24) = v30;
    v94 = swift_allocObject();
    *(v94 + 16) = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = v80;
    v31 = swift_allocObject();
    v32 = v83;
    v84 = v31;
    *(v31 + 16) = v118;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v84;
    v97 = v33;
    *(v33 + 16) = v119;
    *(v33 + 24) = v34;
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v96 = sub_1B0E46A48();
    v98 = v35;

    v36 = v85;
    v37 = v98;
    *v98 = v120;
    v37[1] = v36;

    v38 = v86;
    v39 = v98;
    v98[2] = v121;
    v39[3] = v38;

    v40 = v87;
    v41 = v98;
    v98[4] = v122;
    v41[5] = v40;

    v42 = v88;
    v43 = v98;
    v98[6] = v123;
    v43[7] = v42;

    v44 = v89;
    v45 = v98;
    v98[8] = v124;
    v45[9] = v44;

    v46 = v90;
    v47 = v98;
    v98[10] = v125;
    v47[11] = v46;

    v48 = v91;
    v49 = v98;
    v98[12] = v126;
    v49[13] = v48;

    v50 = v92;
    v51 = v98;
    v98[14] = v127;
    v51[15] = v50;

    v52 = v93;
    v53 = v98;
    v98[16] = v128;
    v53[17] = v52;

    v54 = v94;
    v55 = v98;
    v98[18] = v129;
    v55[19] = v54;

    v56 = v95;
    v57 = v98;
    v98[20] = v130;
    v57[21] = v56;

    v58 = v97;
    v59 = v98;
    v98[22] = v131;
    v59[23] = v58;
    sub_1B0394964();

    if (os_log_type_enabled(v100, v101))
    {
      v60 = v132;
      v63 = sub_1B0E45D78();
      v61[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v62 = 0;
      v64 = sub_1B03949A8(0);
      v65 = sub_1B03949A8(v62);
      v66 = &v166;
      v166 = v63;
      v67 = &v165;
      v165 = v64;
      v68 = &v164;
      v164 = v65;
      sub_1B0394A48(0, &v166);
      sub_1B0394A48(4, v66);
      v162 = v120;
      v163 = v85;
      sub_1B03949FC(&v162, v66, v67, v68);
      v69 = v60;
      if (v60)
      {

        __break(1u);
      }

      else
      {
        v162 = v121;
        v163 = v86;
        sub_1B03949FC(&v162, &v166, &v165, &v164);
        v61[10] = 0;
        v162 = v122;
        v163 = v87;
        sub_1B03949FC(&v162, &v166, &v165, &v164);
        v61[9] = 0;
        v162 = v123;
        v163 = v88;
        sub_1B03949FC(&v162, &v166, &v165, &v164);
        v61[8] = 0;
        v162 = v124;
        v163 = v89;
        sub_1B03949FC(&v162, &v166, &v165, &v164);
        v61[7] = 0;
        v162 = v125;
        v163 = v90;
        sub_1B03949FC(&v162, &v166, &v165, &v164);
        v61[6] = 0;
        v162 = v126;
        v163 = v91;
        sub_1B03949FC(&v162, &v166, &v165, &v164);
        v61[5] = 0;
        v162 = v127;
        v163 = v92;
        sub_1B03949FC(&v162, &v166, &v165, &v164);
        v61[4] = 0;
        v162 = v128;
        v163 = v93;
        sub_1B03949FC(&v162, &v166, &v165, &v164);
        v61[3] = 0;
        v162 = v129;
        v163 = v94;
        sub_1B03949FC(&v162, &v166, &v165, &v164);
        v61[2] = 0;
        v162 = v130;
        v163 = v95;
        sub_1B03949FC(&v162, &v166, &v165, &v164);
        v61[1] = 0;
        v162 = v131;
        v163 = v97;
        sub_1B03949FC(&v162, &v166, &v165, &v164);
        _os_log_impl(&dword_1B0389000, v100, v101, "[%.*hhx-%.*X] Credentials: Trying to Apple Token 2 for non iCloud account.", v63, 0x17u);
        v61[0] = 0;
        sub_1B03998A8(v64);
        sub_1B03998A8(v65);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v100);
    (*(v135 + 8))(v138, v134);

    sub_1B0701190(v139, v141, v140);
  }
}

uint64_t sub_1B06FD86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v177 = a1;
  v176 = a2;
  v173 = a3;
  v174 = a4;
  v192 = a5;
  v175 = a6;
  v126 = sub_1B039BBE8;
  v127 = sub_1B0394C30;
  v128 = sub_1B0394C24;
  v129 = sub_1B039BA2C;
  v130 = sub_1B039BA88;
  v131 = sub_1B039BB94;
  v132 = sub_1B0394C24;
  v133 = sub_1B039BBA0;
  v134 = sub_1B039BC08;
  v135 = sub_1B0398F5C;
  v136 = sub_1B0398F5C;
  v137 = sub_1B0399178;
  v138 = sub_1B0398F5C;
  v139 = sub_1B0398F5C;
  v140 = sub_1B039BA94;
  v141 = sub_1B0398F5C;
  v142 = sub_1B0398F5C;
  v143 = sub_1B0399178;
  v144 = sub_1B0398F5C;
  v145 = sub_1B0398F5C;
  v146 = sub_1B03991EC;
  v147 = sub_1B070BAB8;
  v212 = 0;
  v211 = 0;
  v210 = 0;
  v208 = 0;
  v209 = 0;
  v206 = 0;
  v207 = 0;
  v148 = 0;
  v171 = 0;
  v149 = sub_1B0E44238();
  v150 = *(v149 - 8);
  v151 = v149 - 8;
  v152 = (*(v150 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v153 = &v72 - v152;
  v154 = sub_1B0E44288();
  v155 = *(v154 - 8);
  v156 = v154 - 8;
  v157 = (*(v155 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v171);
  v158 = &v72 - v157;
  v159 = _s6LoggerVMa();
  v160 = (*(*(v159 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v171);
  v161 = &v72 - v160;
  v162 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v163 = &v72 - v162;
  v164 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v165 = &v72 - v164;
  v166 = sub_1B0E439A8();
  v167 = *(v166 - 8);
  v168 = v166 - 8;
  v169 = (*(v167 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v171);
  v170 = &v72 - v169;
  v184 = sub_1B0E44208();
  v181 = *(v184 - 8);
  v182 = v184 - 8;
  v172 = (*(v181 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v171);
  v183 = (&v72 - v172);
  v188 = sub_1B0E44418();
  v185 = *(v188 - 8);
  v186 = v188 - 8;
  v179 = *(v185 + 64);
  v178 = (v179 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v177);
  v187 = &v72 - v178;
  v180 = (v179 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v191 = &v72 - v180;
  v212 = &v72 - v180;
  v211 = v12;
  v210 = v13;
  v208 = v14;
  v209 = v15;
  v206 = a5;
  v207 = v16;
  sub_1B0E44408();
  v17 = v181;
  *v183 = 60;
  v18 = *MEMORY[0x1E69E7F48];
  (*(v17 + 104))();
  MEMORY[0x1B2726590](v187, v183);
  (*(v181 + 8))(v183, v184);
  v189 = *(v185 + 8);
  v190 = v185 + 8;
  v189(v187, v188);
  MEMORY[0x1E69E5928](a5);
  v193 = sub_1B0E45978();
  MEMORY[0x1E69E5920](v192);
  if (v193)
  {
    (*(v167 + 16))(v170, v176, v166);
    sub_1B0394784(v176, v165);
    sub_1B0394784(v165, v163);
    sub_1B03F4FD0(v165, v161);
    v19 = (v163 + *(v159 + 20));
    v95 = *v19;
    v96 = *(v19 + 1);
    sub_1B039480C(v163);
    v94 = 24;
    v106 = 7;
    v20 = swift_allocObject();
    v21 = v96;
    v99 = v20;
    *(v20 + 16) = v95;
    *(v20 + 20) = v21;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v22 = swift_allocObject();
    v23 = v96;
    v97 = v22;
    *(v22 + 16) = v95;
    *(v22 + 20) = v23;

    v105 = 32;
    v24 = swift_allocObject();
    v25 = v97;
    v107 = v24;
    *(v24 + 16) = v126;
    *(v24 + 24) = v25;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v161);
    v124 = sub_1B0E43988();
    v125 = sub_1B0E458E8();
    v103 = 17;
    v109 = swift_allocObject();
    v101 = 16;
    *(v109 + 16) = 16;
    v110 = swift_allocObject();
    v104 = 4;
    *(v110 + 16) = 4;
    v26 = swift_allocObject();
    v98 = v26;
    *(v26 + 16) = v127;
    *(v26 + 24) = 0;
    v27 = swift_allocObject();
    v28 = v98;
    v111 = v27;
    *(v27 + 16) = v128;
    *(v27 + 24) = v28;
    v112 = swift_allocObject();
    *(v112 + 16) = 0;
    v113 = swift_allocObject();
    *(v113 + 16) = 1;
    v29 = swift_allocObject();
    v30 = v99;
    v100 = v29;
    *(v29 + 16) = v129;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v100;
    v114 = v31;
    *(v31 + 16) = v130;
    *(v31 + 24) = v32;
    v115 = swift_allocObject();
    *(v115 + 16) = v101;
    v116 = swift_allocObject();
    *(v116 + 16) = v104;
    v33 = swift_allocObject();
    v102 = v33;
    *(v33 + 16) = v131;
    *(v33 + 24) = 0;
    v34 = swift_allocObject();
    v35 = v102;
    v117 = v34;
    *(v34 + 16) = v132;
    *(v34 + 24) = v35;
    v118 = swift_allocObject();
    *(v118 + 16) = 0;
    v119 = swift_allocObject();
    *(v119 + 16) = v104;
    v36 = swift_allocObject();
    v37 = v107;
    v108 = v36;
    *(v36 + 16) = v133;
    *(v36 + 24) = v37;
    v38 = swift_allocObject();
    v39 = v108;
    v121 = v38;
    *(v38 + 16) = v134;
    *(v38 + 24) = v39;
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v120 = sub_1B0E46A48();
    v122 = v40;

    v41 = v109;
    v42 = v122;
    *v122 = v135;
    v42[1] = v41;

    v43 = v110;
    v44 = v122;
    v122[2] = v136;
    v44[3] = v43;

    v45 = v111;
    v46 = v122;
    v122[4] = v137;
    v46[5] = v45;

    v47 = v112;
    v48 = v122;
    v122[6] = v138;
    v48[7] = v47;

    v49 = v113;
    v50 = v122;
    v122[8] = v139;
    v50[9] = v49;

    v51 = v114;
    v52 = v122;
    v122[10] = v140;
    v52[11] = v51;

    v53 = v115;
    v54 = v122;
    v122[12] = v141;
    v54[13] = v53;

    v55 = v116;
    v56 = v122;
    v122[14] = v142;
    v56[15] = v55;

    v57 = v117;
    v58 = v122;
    v122[16] = v143;
    v58[17] = v57;

    v59 = v118;
    v60 = v122;
    v122[18] = v144;
    v60[19] = v59;

    v61 = v119;
    v62 = v122;
    v122[20] = v145;
    v62[21] = v61;

    v63 = v121;
    v64 = v122;
    v122[22] = v146;
    v64[23] = v63;
    sub_1B0394964();

    if (os_log_type_enabled(v124, v125))
    {
      v65 = v148;
      v87 = sub_1B0E45D78();
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v86 = 0;
      v88 = sub_1B03949A8(0);
      v89 = sub_1B03949A8(v86);
      v90 = &v198;
      v198 = v87;
      v91 = &v197;
      v197 = v88;
      v92 = &v196;
      v196 = v89;
      sub_1B0394A48(0, &v198);
      sub_1B0394A48(4, v90);
      v194 = v135;
      v195 = v109;
      sub_1B03949FC(&v194, v90, v91, v92);
      v93 = v65;
      if (v65)
      {

        __break(1u);
      }

      else
      {
        v194 = v136;
        v195 = v110;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v84 = 0;
        v194 = v137;
        v195 = v111;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v83 = 0;
        v194 = v138;
        v195 = v112;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v82 = 0;
        v194 = v139;
        v195 = v113;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v81 = 0;
        v194 = v140;
        v195 = v114;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v80 = 0;
        v194 = v141;
        v195 = v115;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v79 = 0;
        v194 = v142;
        v195 = v116;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v78 = 0;
        v194 = v143;
        v195 = v117;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v77 = 0;
        v194 = v144;
        v195 = v118;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v76 = 0;
        v194 = v145;
        v195 = v119;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        v75 = 0;
        v194 = v146;
        v195 = v121;
        sub_1B03949FC(&v194, &v198, &v197, &v196);
        _os_log_impl(&dword_1B0389000, v124, v125, "[%.*hhx-%.*X] Timed out waiting for credentials.", v87, 0x17u);
        v74 = 0;
        sub_1B03998A8(v88);
        sub_1B03998A8(v89);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v124);
    (*(v167 + 8))(v170, v166);
  }

  MEMORY[0x1E69E5928](v192);

  v66 = swift_allocObject();
  v67 = v175;
  v68 = v173;
  v69 = v174;
  v70 = v147;
  v66[2] = v192;
  v66[3] = v67;
  v66[4] = v68;
  v66[5] = v69;
  v204 = v70;
  v205 = v66;
  aBlock = MEMORY[0x1E69E9820];
  v200 = 1107296256;
  v201 = 0;
  v202 = sub_1B038C908;
  v203 = &block_descriptor_1546;
  v73 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](0, v158, v153, v73);
  (*(v150 + 8))(v153, v149);
  (*(v155 + 8))(v158, v154);
  _Block_release(v73);

  return (v189)(v191, v188);
}

unint64_t sub_1B06FF124()
{
  v2 = qword_1EB6DA870;
  if (!qword_1EB6DA870)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA870);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B06FF188()
{
  v2 = qword_1EB6DA880;
  if (!qword_1EB6DA880)
  {
    sub_1B0E45C58();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA880);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF210()
{
  v2 = qword_1EB6DBE18;
  if (!qword_1EB6DBE18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBE18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF28C()
{
  v2 = qword_1EB6DCCC8;
  if (!qword_1EB6DCCC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DCCC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF304()
{
  v2 = qword_1EB6E1900;
  if (!qword_1EB6E1900)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1900);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF380()
{
  v2 = qword_1EB6E1908;
  if (!qword_1EB6E1908)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1908);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF3FC()
{
  v2 = qword_1EB6E1910;
  if (!qword_1EB6E1910)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1910);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF478()
{
  v2 = qword_1EB6E1918;
  if (!qword_1EB6E1918)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1918);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF4F4()
{
  v2 = qword_1EB6E1920;
  if (!qword_1EB6E1920)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1920);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF570()
{
  v2 = qword_1EB6E1928;
  if (!qword_1EB6E1928)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1928);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF5EC()
{
  v2 = qword_1EB6E1930;
  if (!qword_1EB6E1930)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1930);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF668()
{
  v2 = qword_1EB6E1938;
  if (!qword_1EB6E1938)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1938);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06FF6F0(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 24);

  return a1;
}

uint64_t sub_1B06FF7A8(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v32 = a1;
  v33 = a2;
  v31 = a3;
  v29 = a4;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v39 = 0;
  v44 = 0;
  v23 = sub_1B0E43108();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v14[-v26];
  v44 = &v14[-v26];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1968, &qword_1B0E9A0C8);
  v28 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v14[-v28];
  v30 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v33);
  v34 = &v14[-v30];
  v41 = v5;
  v42 = v4;
  v40 = v6;
  v39 = v7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B06BC2F4(v31, v34);
  v8 = v33;
  v9 = v35;
  v10 = v34;
  v11 = *(v36 + 48);
  *v35 = v32;
  v9[1] = v8;
  sub_1B06BC984(v10, v9 + v11);
  v37 = v35[1];
  v38 = *(v36 + 48);
  if (v37)
  {
    v22 = v37;
    v20 = v37;
    if ((*(v24 + 48))(v35 + v38, 1, v23) == 1)
    {
      v43 = 1;

      v21 = 1;
    }

    else
    {
      (*(v24 + 16))(v27, v35 + v38, v23);
      sub_1B0E43048();
      if (v12 >= 60.0)
      {
        v17 = *(v24 + 8);
        v16 = v24 + 8;
        v17(v27, v23);
        v43 = 2;
        v17(v35 + v38, v23);

        v21 = 2;
      }

      else
      {
        v44 = v27;
        v43 = 1;
        v19 = *(v24 + 8);
        v18 = v24 + 8;
        v19();
        (v19)(v35 + v38, v23);

        v21 = 1;
      }
    }
  }

  else
  {
    v43 = 0;
    sub_1B06B97A8(v35 + v38);
    v21 = 0;
  }

  v15 = v21;
  (*(v24 + 8))(v29, v23);
  sub_1B06B97A8(v31);

  return v15;
}

uint64_t sub_1B06FFBDC(uint64_t a1)
{
  v154 = a1;
  v124 = sub_1B039BBE8;
  v125 = sub_1B0394C30;
  v126 = sub_1B0394C24;
  v127 = sub_1B039BA2C;
  v128 = sub_1B039BA88;
  v129 = sub_1B039BB94;
  v130 = sub_1B0394C24;
  v131 = sub_1B039BBA0;
  v132 = sub_1B039BC08;
  v133 = sub_1B0398F5C;
  v134 = sub_1B0398F5C;
  v135 = sub_1B0399178;
  v136 = sub_1B0398F5C;
  v137 = sub_1B0398F5C;
  v138 = sub_1B039BA94;
  v139 = sub_1B0398F5C;
  v140 = sub_1B0398F5C;
  v141 = sub_1B0399178;
  v142 = sub_1B0398F5C;
  v143 = sub_1B0398F5C;
  v144 = sub_1B03991EC;
  v170 = 0;
  v169 = 0;
  v145 = 0;
  v161 = 0;
  v162 = 0;
  v146 = 0;
  v147 = _s6LoggerVMa();
  v148 = (*(*(v147 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](0);
  v149 = v59 - v148;
  v150 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v151 = v59 - v150;
  v152 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v153 = v59 - v152;
  v155 = sub_1B0E439A8();
  v156 = *(v155 - 8);
  v157 = v155 - 8;
  v158 = (*(v156 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v160);
  v159 = v59 - v158;
  v170 = v6;
  v169 = v5;
  MEMORY[0x1E69E5928](v5);
  v168 = [v160 preferredAuthScheme];
  if (v168)
  {
    v121 = &v168;
    v122 = v168;
    MEMORY[0x1E69E5928](v168);
    sub_1B06D4E94(v121);
    MEMORY[0x1E69E5920](v160);
    v123 = [v122 name];
    if (v123)
    {
      v120 = v123;
      v115 = v123;
      v116 = sub_1B0E44AD8();
      v117 = v7;
      MEMORY[0x1E69E5920](v115);
      v118 = v116;
      v119 = v117;
    }

    else
    {
      v118 = 0;
      v119 = 0;
    }

    v112 = v119;
    v111 = v118;
    MEMORY[0x1E69E5920](v122);
    v113 = v111;
    v114 = v112;
  }

  else
  {
    sub_1B06D4E94(&v168);
    MEMORY[0x1E69E5920](v160);
    v113 = 0;
    v114 = 0;
  }

  v109 = v114;
  v110 = v113;
  if (v114)
  {
    v107 = v110;
    v108 = v109;
    v104 = v109;
    v101 = v110;
    v161 = v110;
    v162 = v109;
    v103 = MEMORY[0x1E69E6158];
    v100 = sub_1B0E46A48();
    v102 = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = v102;
    v10 = v104;
    *v102 = v101;
    v9[1] = v10;
    sub_1B0394964();
    v105 = sub_1B0E45438();

    return v105;
  }

  else
  {
    (*(v156 + 16))(v159, v154, v155);
    sub_1B0394784(v154, v153);
    sub_1B0394784(v153, v151);
    sub_1B03F4FD0(v153, v149);
    v11 = (v151 + *(v147 + 20));
    v69 = *v11;
    v70 = *(v11 + 1);
    sub_1B039480C(v151);
    v68 = 24;
    v80 = 7;
    v12 = swift_allocObject();
    v13 = v70;
    v73 = v12;
    *(v12 + 16) = v69;
    *(v12 + 20) = v13;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v14 = swift_allocObject();
    v15 = v70;
    v71 = v14;
    *(v14 + 16) = v69;
    *(v14 + 20) = v15;

    v79 = 32;
    v16 = swift_allocObject();
    v17 = v71;
    v81 = v16;
    *(v16 + 16) = v124;
    *(v16 + 24) = v17;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v149);
    v98 = sub_1B0E43988();
    v99 = sub_1B0E458E8();
    v77 = 17;
    v83 = swift_allocObject();
    v75 = 16;
    *(v83 + 16) = 16;
    v84 = swift_allocObject();
    v78 = 4;
    *(v84 + 16) = 4;
    v18 = swift_allocObject();
    v72 = v18;
    *(v18 + 16) = v125;
    *(v18 + 24) = 0;
    v19 = swift_allocObject();
    v20 = v72;
    v85 = v19;
    *(v19 + 16) = v126;
    *(v19 + 24) = v20;
    v86 = swift_allocObject();
    *(v86 + 16) = 0;
    v87 = swift_allocObject();
    *(v87 + 16) = 1;
    v21 = swift_allocObject();
    v22 = v73;
    v74 = v21;
    *(v21 + 16) = v127;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v74;
    v88 = v23;
    *(v23 + 16) = v128;
    *(v23 + 24) = v24;
    v89 = swift_allocObject();
    *(v89 + 16) = v75;
    v90 = swift_allocObject();
    *(v90 + 16) = v78;
    v25 = swift_allocObject();
    v76 = v25;
    *(v25 + 16) = v129;
    *(v25 + 24) = 0;
    v26 = swift_allocObject();
    v27 = v76;
    v91 = v26;
    *(v26 + 16) = v130;
    *(v26 + 24) = v27;
    v92 = swift_allocObject();
    *(v92 + 16) = 0;
    v93 = swift_allocObject();
    *(v93 + 16) = v78;
    v28 = swift_allocObject();
    v29 = v81;
    v82 = v28;
    *(v28 + 16) = v131;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    v31 = v82;
    v95 = v30;
    *(v30 + 16) = v132;
    *(v30 + 24) = v31;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v94 = sub_1B0E46A48();
    v96 = v32;

    v33 = v83;
    v34 = v96;
    *v96 = v133;
    v34[1] = v33;

    v35 = v84;
    v36 = v96;
    v96[2] = v134;
    v36[3] = v35;

    v37 = v85;
    v38 = v96;
    v96[4] = v135;
    v38[5] = v37;

    v39 = v86;
    v40 = v96;
    v96[6] = v136;
    v40[7] = v39;

    v41 = v87;
    v42 = v96;
    v96[8] = v137;
    v42[9] = v41;

    v43 = v88;
    v44 = v96;
    v96[10] = v138;
    v44[11] = v43;

    v45 = v89;
    v46 = v96;
    v96[12] = v139;
    v46[13] = v45;

    v47 = v90;
    v48 = v96;
    v96[14] = v140;
    v48[15] = v47;

    v49 = v91;
    v50 = v96;
    v96[16] = v141;
    v50[17] = v49;

    v51 = v92;
    v52 = v96;
    v96[18] = v142;
    v52[19] = v51;

    v53 = v93;
    v54 = v96;
    v96[20] = v143;
    v54[21] = v53;

    v55 = v95;
    v56 = v96;
    v96[22] = v144;
    v56[23] = v55;
    sub_1B0394964();

    if (os_log_type_enabled(v98, v99))
    {
      v57 = v145;
      v61 = sub_1B0E45D78();
      v59[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v60 = 0;
      v62 = sub_1B03949A8(0);
      v63 = sub_1B03949A8(v60);
      v64 = &v167;
      v167 = v61;
      v65 = &v166;
      v166 = v62;
      v66 = &v165;
      v165 = v63;
      sub_1B0394A48(0, &v167);
      sub_1B0394A48(4, v64);
      v163 = v133;
      v164 = v83;
      sub_1B03949FC(&v163, v64, v65, v66);
      v67 = v57;
      if (v57)
      {

        __break(1u);
      }

      else
      {
        v163 = v134;
        v164 = v84;
        sub_1B03949FC(&v163, &v167, &v166, &v165);
        v59[11] = 0;
        v163 = v135;
        v164 = v85;
        sub_1B03949FC(&v163, &v167, &v166, &v165);
        v59[10] = 0;
        v163 = v136;
        v164 = v86;
        sub_1B03949FC(&v163, &v167, &v166, &v165);
        v59[9] = 0;
        v163 = v137;
        v164 = v87;
        sub_1B03949FC(&v163, &v167, &v166, &v165);
        v59[8] = 0;
        v163 = v138;
        v164 = v88;
        sub_1B03949FC(&v163, &v167, &v166, &v165);
        v59[7] = 0;
        v163 = v139;
        v164 = v89;
        sub_1B03949FC(&v163, &v167, &v166, &v165);
        v59[6] = 0;
        v163 = v140;
        v164 = v90;
        sub_1B03949FC(&v163, &v167, &v166, &v165);
        v59[5] = 0;
        v163 = v141;
        v164 = v91;
        sub_1B03949FC(&v163, &v167, &v166, &v165);
        v59[4] = 0;
        v163 = v142;
        v164 = v92;
        sub_1B03949FC(&v163, &v167, &v166, &v165);
        v59[3] = 0;
        v163 = v143;
        v164 = v93;
        sub_1B03949FC(&v163, &v167, &v166, &v165);
        v59[2] = 0;
        v163 = v144;
        v164 = v95;
        sub_1B03949FC(&v163, &v167, &v166, &v165);
        _os_log_impl(&dword_1B0389000, v98, v99, "[%.*hhx-%.*X] Credentials: No auth schemes for account.", v61, 0x17u);
        v59[1] = 0;
        sub_1B03998A8(v62);
        sub_1B03998A8(v63);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v98);
    (*(v156 + 8))(v159, v155);
    v59[0] = MEMORY[0x1E69E6158];
    sub_1B0E46A48();
    return sub_1B0E45438();
  }
}

uint64_t *sub_1B0701190(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v254 = a1;
  v255 = a2;
  v256 = a3;
  v205 = sub_1B039BBE8;
  v206 = sub_1B0394C30;
  v207 = sub_1B0394C24;
  v208 = sub_1B039BA2C;
  v209 = sub_1B039BA88;
  v210 = sub_1B039BB94;
  v211 = sub_1B0394C24;
  v212 = sub_1B039BBA0;
  v213 = sub_1B039BC08;
  v214 = sub_1B0398F5C;
  v215 = sub_1B0398F5C;
  v216 = sub_1B0399178;
  v217 = sub_1B0398F5C;
  v218 = sub_1B0398F5C;
  v219 = sub_1B039BA94;
  v220 = sub_1B0398F5C;
  v221 = sub_1B0398F5C;
  v222 = sub_1B0399178;
  v223 = sub_1B0398F5C;
  v224 = sub_1B0398F5C;
  v225 = sub_1B03991EC;
  v226 = sub_1B039BBE8;
  v227 = sub_1B0394C24;
  v228 = sub_1B039BA2C;
  v229 = sub_1B039BA88;
  v230 = sub_1B0394C24;
  v231 = sub_1B039BBA0;
  v232 = sub_1B039BC08;
  v233 = sub_1B0398F5C;
  v234 = sub_1B0398F5C;
  v235 = sub_1B0399178;
  v236 = sub_1B0398F5C;
  v237 = sub_1B0398F5C;
  v238 = sub_1B039BA94;
  v239 = sub_1B0398F5C;
  v240 = sub_1B0398F5C;
  v241 = sub_1B0399178;
  v242 = sub_1B0398F5C;
  v243 = sub_1B0398F5C;
  v244 = sub_1B03991EC;
  v285 = 0;
  v286 = 0;
  v284 = 0;
  v283 = 0;
  v245 = 0;
  v275 = 0;
  v246 = 0;
  v247 = _s6LoggerVMa();
  v248 = (*(*(v247 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](0);
  v249 = v107 - v248;
  v250 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v251 = v107 - v250;
  v252 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v253 = v107 - v252;
  v257 = sub_1B0E439A8();
  v258 = *(v257 - 8);
  v259 = v257 - 8;
  v261 = *(v258 + 64);
  v260 = (v261 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v256);
  v262 = v107 - v260;
  v263 = (v261 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v264 = v107 - v263;
  v285 = v10;
  v286 = v11;
  v284 = v9;
  v283 = v3;
  v265 = v287;
  sub_1B0702DB4(v9, v287);
  memcpy(v288, v265, sizeof(v288));
  v266 = v288[7] & 0x3000000000000000;
  v267 = v288[9] & 0x3000000000000000;
  if ((v288[5] & 0x3000000000000000) == 0x3000000000000000 && v266 == 0x3000000000000000 && v267 == 0x3000000000000000)
  {
    (*(v258 + 16))(v262, v256, v257);
    sub_1B0394784(v256, v253);
    sub_1B0394784(v253, v251);
    sub_1B03F4FD0(v253, v249);
    v60 = (v251 + *(v247 + 20));
    v117 = *v60;
    v118 = *(v60 + 1);
    sub_1B039480C(v251);
    v116 = 24;
    v128 = 7;
    v61 = swift_allocObject();
    v62 = v118;
    v121 = v61;
    *(v61 + 16) = v117;
    *(v61 + 20) = v62;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v63 = swift_allocObject();
    v64 = v118;
    v119 = v63;
    *(v63 + 16) = v117;
    *(v63 + 20) = v64;

    v127 = 32;
    v65 = swift_allocObject();
    v66 = v119;
    v129 = v65;
    *(v65 + 16) = v226;
    *(v65 + 24) = v66;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v249);
    v146 = sub_1B0E43988();
    v147 = sub_1B0E458E8();
    v125 = 17;
    v131 = swift_allocObject();
    v123 = 16;
    *(v131 + 16) = 16;
    v132 = swift_allocObject();
    v126 = 4;
    *(v132 + 16) = 4;
    v67 = swift_allocObject();
    v120 = v67;
    *(v67 + 16) = v206;
    *(v67 + 24) = 0;
    v68 = swift_allocObject();
    v69 = v120;
    v133 = v68;
    *(v68 + 16) = v227;
    *(v68 + 24) = v69;
    v134 = swift_allocObject();
    *(v134 + 16) = 0;
    v135 = swift_allocObject();
    *(v135 + 16) = 1;
    v70 = swift_allocObject();
    v71 = v121;
    v122 = v70;
    *(v70 + 16) = v228;
    *(v70 + 24) = v71;
    v72 = swift_allocObject();
    v73 = v122;
    v136 = v72;
    *(v72 + 16) = v229;
    *(v72 + 24) = v73;
    v137 = swift_allocObject();
    *(v137 + 16) = v123;
    v138 = swift_allocObject();
    *(v138 + 16) = v126;
    v74 = swift_allocObject();
    v124 = v74;
    *(v74 + 16) = v210;
    *(v74 + 24) = 0;
    v75 = swift_allocObject();
    v76 = v124;
    v139 = v75;
    *(v75 + 16) = v230;
    *(v75 + 24) = v76;
    v140 = swift_allocObject();
    *(v140 + 16) = 0;
    v141 = swift_allocObject();
    *(v141 + 16) = v126;
    v77 = swift_allocObject();
    v78 = v129;
    v130 = v77;
    *(v77 + 16) = v231;
    *(v77 + 24) = v78;
    v79 = swift_allocObject();
    v80 = v130;
    v143 = v79;
    *(v79 + 16) = v232;
    *(v79 + 24) = v80;
    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v142 = sub_1B0E46A48();
    v144 = v81;

    v82 = v131;
    v83 = v144;
    *v144 = v233;
    v83[1] = v82;

    v84 = v132;
    v85 = v144;
    v144[2] = v234;
    v85[3] = v84;

    v86 = v133;
    v87 = v144;
    v144[4] = v235;
    v87[5] = v86;

    v88 = v134;
    v89 = v144;
    v144[6] = v236;
    v89[7] = v88;

    v90 = v135;
    v91 = v144;
    v144[8] = v237;
    v91[9] = v90;

    v92 = v136;
    v93 = v144;
    v144[10] = v238;
    v93[11] = v92;

    v94 = v137;
    v95 = v144;
    v144[12] = v239;
    v95[13] = v94;

    v96 = v138;
    v97 = v144;
    v144[14] = v240;
    v97[15] = v96;

    v98 = v139;
    v99 = v144;
    v144[16] = v241;
    v99[17] = v98;

    v100 = v140;
    v101 = v144;
    v144[18] = v242;
    v101[19] = v100;

    v102 = v141;
    v103 = v144;
    v144[20] = v243;
    v103[21] = v102;

    v104 = v143;
    v105 = v144;
    v144[22] = v244;
    v105[23] = v104;
    sub_1B0394964();

    if (os_log_type_enabled(v146, v147))
    {
      v106 = v245;
      v109 = sub_1B0E45D78();
      v107[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v108 = 0;
      v110 = sub_1B03949A8(0);
      v111 = sub_1B03949A8(v108);
      v112 = &v281;
      v281 = v109;
      v113 = &v280;
      v280 = v110;
      v114 = &v279;
      v279 = v111;
      sub_1B0394A48(0, &v281);
      sub_1B0394A48(4, v112);
      v277 = v233;
      v278 = v131;
      sub_1B03949FC(&v277, v112, v113, v114);
      v115 = v106;
      if (v106)
      {

        __break(1u);
      }

      else
      {
        v277 = v234;
        v278 = v132;
        sub_1B03949FC(&v277, &v281, &v280, &v279);
        v107[12] = 0;
        v277 = v235;
        v278 = v133;
        sub_1B03949FC(&v277, &v281, &v280, &v279);
        v107[11] = 0;
        v277 = v236;
        v278 = v134;
        sub_1B03949FC(&v277, &v281, &v280, &v279);
        v107[10] = 0;
        v277 = v237;
        v278 = v135;
        sub_1B03949FC(&v277, &v281, &v280, &v279);
        v107[9] = 0;
        v277 = v238;
        v278 = v136;
        sub_1B03949FC(&v277, &v281, &v280, &v279);
        v107[8] = 0;
        v277 = v239;
        v278 = v137;
        sub_1B03949FC(&v277, &v281, &v280, &v279);
        v107[7] = 0;
        v277 = v240;
        v278 = v138;
        sub_1B03949FC(&v277, &v281, &v280, &v279);
        v107[6] = 0;
        v277 = v241;
        v278 = v139;
        sub_1B03949FC(&v277, &v281, &v280, &v279);
        v107[5] = 0;
        v277 = v242;
        v278 = v140;
        sub_1B03949FC(&v277, &v281, &v280, &v279);
        v107[4] = 0;
        v277 = v243;
        v278 = v141;
        sub_1B03949FC(&v277, &v281, &v280, &v279);
        v107[3] = 0;
        v277 = v244;
        v278 = v143;
        sub_1B03949FC(&v277, &v281, &v280, &v279);
        _os_log_impl(&dword_1B0389000, v146, v147, "[%.*hhx-%.*X] Credentials: Missing username/password.", v109, 0x17u);
        v107[2] = 0;
        sub_1B03998A8(v110);
        sub_1B03998A8(v111);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v146);
    (*(v258 + 8))(v262, v257);
    memset(v282, 0, 40);
    v282[5] = 0x3000000000000000;
    v282[6] = 0;
    v282[7] = 0x1000000000000000;
    v282[8] = 0;
    v282[9] = 0x3000000000000000;
    memcpy(v290, v282, sizeof(v290));
    return v254(v290);
  }

  else
  {
    v172 = v288;
    memcpy(v276, v288, sizeof(v276));
    v275 = v288;
    (*(v258 + 16))(v264, v256, v257);
    sub_1B0394784(v256, v253);
    sub_1B0394784(v253, v251);
    sub_1B03F4FD0(v253, v249);
    v12 = (v251 + *(v247 + 20));
    v174 = *v12;
    v175 = *(v12 + 1);
    sub_1B039480C(v251);
    v173 = 24;
    v185 = 7;
    v13 = swift_allocObject();
    v14 = v175;
    v178 = v13;
    *(v13 + 16) = v174;
    *(v13 + 20) = v14;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v15 = swift_allocObject();
    v16 = v175;
    v176 = v15;
    *(v15 + 16) = v174;
    *(v15 + 20) = v16;

    v184 = 32;
    v17 = swift_allocObject();
    v18 = v176;
    v186 = v17;
    *(v17 + 16) = v205;
    *(v17 + 24) = v18;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v249);
    v203 = sub_1B0E43988();
    v204 = sub_1B0E45908();
    v182 = 17;
    v188 = swift_allocObject();
    v180 = 16;
    *(v188 + 16) = 16;
    v189 = swift_allocObject();
    v183 = 4;
    *(v189 + 16) = 4;
    v19 = swift_allocObject();
    v177 = v19;
    *(v19 + 16) = v206;
    *(v19 + 24) = 0;
    v20 = swift_allocObject();
    v21 = v177;
    v190 = v20;
    *(v20 + 16) = v207;
    *(v20 + 24) = v21;
    v191 = swift_allocObject();
    *(v191 + 16) = 0;
    v192 = swift_allocObject();
    *(v192 + 16) = 1;
    v22 = swift_allocObject();
    v23 = v178;
    v179 = v22;
    *(v22 + 16) = v208;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v179;
    v193 = v24;
    *(v24 + 16) = v209;
    *(v24 + 24) = v25;
    v194 = swift_allocObject();
    *(v194 + 16) = v180;
    v195 = swift_allocObject();
    *(v195 + 16) = v183;
    v26 = swift_allocObject();
    v181 = v26;
    *(v26 + 16) = v210;
    *(v26 + 24) = 0;
    v27 = swift_allocObject();
    v28 = v181;
    v196 = v27;
    *(v27 + 16) = v211;
    *(v27 + 24) = v28;
    v197 = swift_allocObject();
    *(v197 + 16) = 0;
    v198 = swift_allocObject();
    *(v198 + 16) = v183;
    v29 = swift_allocObject();
    v30 = v186;
    v187 = v29;
    *(v29 + 16) = v212;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v187;
    v200 = v31;
    *(v31 + 16) = v213;
    *(v31 + 24) = v32;
    v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v199 = sub_1B0E46A48();
    v201 = v33;

    v34 = v188;
    v35 = v201;
    *v201 = v214;
    v35[1] = v34;

    v36 = v189;
    v37 = v201;
    v201[2] = v215;
    v37[3] = v36;

    v38 = v190;
    v39 = v201;
    v201[4] = v216;
    v39[5] = v38;

    v40 = v191;
    v41 = v201;
    v201[6] = v217;
    v41[7] = v40;

    v42 = v192;
    v43 = v201;
    v201[8] = v218;
    v43[9] = v42;

    v44 = v193;
    v45 = v201;
    v201[10] = v219;
    v45[11] = v44;

    v46 = v194;
    v47 = v201;
    v201[12] = v220;
    v47[13] = v46;

    v48 = v195;
    v49 = v201;
    v201[14] = v221;
    v49[15] = v48;

    v50 = v196;
    v51 = v201;
    v201[16] = v222;
    v51[17] = v50;

    v52 = v197;
    v53 = v201;
    v201[18] = v223;
    v53[19] = v52;

    v54 = v198;
    v55 = v201;
    v201[20] = v224;
    v55[21] = v54;

    v56 = v200;
    v57 = v201;
    v201[22] = v225;
    v57[23] = v56;
    sub_1B0394964();

    if (os_log_type_enabled(v203, v204))
    {
      v58 = v245;
      v165 = sub_1B0E45D78();
      v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v164 = 0;
      v166 = sub_1B03949A8(0);
      v167 = sub_1B03949A8(v164);
      v168 = &v272;
      v272 = v165;
      v169 = &v271;
      v271 = v166;
      v170 = &v270;
      v270 = v167;
      sub_1B0394A48(0, &v272);
      sub_1B0394A48(4, v168);
      v268 = v214;
      v269 = v188;
      sub_1B03949FC(&v268, v168, v169, v170);
      v171 = v58;
      if (v58)
      {

        __break(1u);
      }

      else
      {
        v268 = v215;
        v269 = v189;
        sub_1B03949FC(&v268, &v272, &v271, &v270);
        v162 = 0;
        v268 = v216;
        v269 = v190;
        sub_1B03949FC(&v268, &v272, &v271, &v270);
        v161 = 0;
        v268 = v217;
        v269 = v191;
        sub_1B03949FC(&v268, &v272, &v271, &v270);
        v160 = 0;
        v268 = v218;
        v269 = v192;
        sub_1B03949FC(&v268, &v272, &v271, &v270);
        v159 = 0;
        v268 = v219;
        v269 = v193;
        sub_1B03949FC(&v268, &v272, &v271, &v270);
        v158 = 0;
        v268 = v220;
        v269 = v194;
        sub_1B03949FC(&v268, &v272, &v271, &v270);
        v157 = 0;
        v268 = v221;
        v269 = v195;
        sub_1B03949FC(&v268, &v272, &v271, &v270);
        v156 = 0;
        v268 = v222;
        v269 = v196;
        sub_1B03949FC(&v268, &v272, &v271, &v270);
        v155 = 0;
        v268 = v223;
        v269 = v197;
        sub_1B03949FC(&v268, &v272, &v271, &v270);
        v154 = 0;
        v268 = v224;
        v269 = v198;
        sub_1B03949FC(&v268, &v272, &v271, &v270);
        v153 = 0;
        v268 = v225;
        v269 = v200;
        sub_1B03949FC(&v268, &v272, &v271, &v270);
        _os_log_impl(&dword_1B0389000, v203, v204, "[%.*hhx-%.*X] Credentials: Adding Apple Token auth.", v165, 0x17u);
        v152 = 0;
        sub_1B03998A8(v166);
        sub_1B03998A8(v167);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v203);
    (*(v258 + 8))(v264, v257);
    v151 = v276;
    sub_1B069506C(v276, v273);
    v150 = v274;
    v148 = 80;
    memcpy(v274, v151, sizeof(v274));
    v149 = __dst;
    memcpy(__dst, v274, sizeof(__dst));
    v254(__dst);
    sub_1B070B568(v150);
    result = v151;
    sub_1B070BB30(v151);
  }

  return result;
}

void *sub_1B0702DB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v252 = a2;
  v288 = a1;
  v253 = sub_1B039BBE8;
  v254 = sub_1B0394C30;
  v255 = sub_1B0394C24;
  v256 = sub_1B039BA2C;
  v257 = sub_1B039BA88;
  v258 = sub_1B039BB94;
  v259 = sub_1B0394C24;
  v260 = sub_1B039BBA0;
  v261 = sub_1B039BC08;
  v262 = sub_1B0398F5C;
  v263 = sub_1B0398F5C;
  v264 = sub_1B0399178;
  v265 = sub_1B0398F5C;
  v266 = sub_1B0398F5C;
  v267 = sub_1B039BA94;
  v268 = sub_1B0398F5C;
  v269 = sub_1B0398F5C;
  v270 = sub_1B0399178;
  v271 = sub_1B0398F5C;
  v272 = sub_1B0398F5C;
  v273 = sub_1B03991EC;
  v326 = *MEMORY[0x1E69E9840];
  v303 = 0;
  v302 = 0;
  v274 = 0;
  v298 = 0;
  v320 = 0;
  v321 = 0;
  v318 = 0;
  v319 = 0;
  v296 = 0;
  v313 = 0;
  v314 = 0;
  v309 = 0;
  v310 = 0;
  v304 = 0;
  v305 = 0;
  v282 = 0;
  v275 = _s6LoggerVMa();
  v276 = (*(*(v275 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v277 = &v72 - v276;
  v278 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v279 = &v72 - v278;
  v280 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v281 = &v72 - v280;
  v283 = sub_1B0E439A8();
  v284 = *(v283 - 8);
  v285 = v283 - 8;
  v286 = (*(v284 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v282);
  v287 = &v72 - v286;
  v289 = sub_1B0E44B68();
  v290 = *(v289 - 8);
  v291 = v289 - 8;
  v292 = (*(v290 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v294);
  v293 = &v72 - v292;
  v303 = v7;
  v302 = v6;
  MEMORY[0x1E69E5928](v6);
  objc_opt_self();
  v295 = swift_dynamicCastObjCClass();
  if (v295)
  {
    v251 = v295;
  }

  else
  {
    MEMORY[0x1E69E5920](v294);
    v251 = 0;
  }

  v250 = v251;
  if (v251)
  {
    v249 = v250;
    v246 = v250;
    v298 = v250;
    v8 = [v250 personID];
    v247 = v8;
    if (v8)
    {
      v245 = v247;
      v240 = v247;
      v241 = sub_1B0E44AD8();
      v242 = v9;
      MEMORY[0x1E69E5920](v240);
      v243 = v241;
      v244 = v242;
    }

    else
    {
      v243 = 0;
      v244 = 0;
    }

    v238 = v244;
    v239 = v243;
    if (v244)
    {
      v236 = v239;
      v237 = v238;
      v231 = v238;
      v230 = v239;
      sub_1B0E44B48();
      sub_1B0394868();
      v232 = sub_1B0E44AE8();
      v233 = v10;
      (*(v290 + 8))(v293, v289);

      v234 = v232;
      v235 = v233;
    }

    else
    {
      v234 = 0;
      v235 = 0xF000000000000000;
    }

    v228 = v235;
    v229 = v234;
    if ((v235 & 0xF000000000000000) == 0xF000000000000000)
    {
      MEMORY[0x1E69E5920](v246);
      v248 = v274;
    }

    else
    {
      v226 = v229;
      v227 = v228;
      v223 = v228;
      v224 = v229;
      v320 = v229;
      v321 = v228;
      v11 = [v246 authToken];
      v225 = v11;
      if (v11)
      {
        v222 = v225;
        v217 = v225;
        v218 = sub_1B0E44AD8();
        v219 = v12;
        MEMORY[0x1E69E5920](v217);
        v220 = v218;
        v221 = v219;
      }

      else
      {
        v220 = 0;
        v221 = 0;
      }

      v215 = v221;
      v216 = v220;
      if (v221)
      {
        v213 = v216;
        v214 = v215;
        v208 = v215;
        v207 = v216;
        sub_1B0E44B48();
        sub_1B0394868();
        v209 = sub_1B0E44AE8();
        v210 = v13;
        (*(v290 + 8))(v293, v289);

        v211 = v209;
        v212 = v210;
      }

      else
      {
        v211 = 0;
        v212 = 0xF000000000000000;
      }

      v205 = v212;
      v206 = v211;
      if ((v212 & 0xF000000000000000) == 0xF000000000000000)
      {
        sub_1B0391D50(v224, v223);
        MEMORY[0x1E69E5920](v246);
        v248 = v274;
      }

      else
      {
        v203 = v206;
        v204 = v205;
        v199 = v205;
        v200 = v206;
        v318 = v206;
        v319 = v205;
        v317 = 0;
        v297 = 0;
        v202 = [v246 anisetteDataWithError_];
        v201 = v297;
        MEMORY[0x1E69E5928](v297);
        v14 = v317;
        v317 = v201;
        MEMORY[0x1E69E5920](v14);
        if (v202)
        {
          v198 = v202;
          v196 = v202;
          v197 = v274;
        }

        else
        {
          v72 = v317;
          v73 = sub_1B0E42CD8();
          MEMORY[0x1E69E5920](v72);
          swift_willThrow();
          v74 = 0;

          v196 = 0;
          v197 = v74;
        }

        v194 = v197;
        v195 = v196;
        if (v196)
        {
          v193 = v195;
          v191 = v195;
          v296 = v195;
          v15 = [v195 machineID];
          v192 = v15;
          if (v15)
          {
            v190 = v192;
            v185 = v192;
            v186 = sub_1B0E44AD8();
            v187 = v16;
            MEMORY[0x1E69E5920](v185);
            v188 = v186;
            v189 = v187;
          }

          else
          {
            v188 = 0;
            v189 = 0;
          }

          v315 = v188;
          v316 = v189;
          if (v189)
          {
            v178 = &v315;
            v179 = v315;
            v180 = v316;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B03B1198(v178);
            sub_1B0E44B48();
            sub_1B0394868();
            v181 = sub_1B0E44AE8();
            v182 = v17;
            (*(v290 + 8))(v293, v289);

            v183 = v181;
            v184 = v182;
          }

          else
          {
            sub_1B03B1198(&v315);
            v183 = 0;
            v184 = 0xF000000000000000;
          }

          v176 = v184;
          v177 = v183;
          if ((v184 & 0xF000000000000000) == 0xF000000000000000)
          {
            MEMORY[0x1E69E5920](v191);
            sub_1B0391D50(v200, v199);
            sub_1B0391D50(v224, v223);
            MEMORY[0x1E69E5920](v246);
            v248 = v194;
          }

          else
          {
            v174 = v177;
            v175 = v176;
            v171 = v176;
            v172 = v177;
            v313 = v177;
            v314 = v176;
            v18 = [v191 oneTimePassword];
            v173 = v18;
            if (v18)
            {
              v170 = v173;
              v165 = v173;
              v166 = sub_1B0E44AD8();
              v167 = v19;
              MEMORY[0x1E69E5920](v165);
              v168 = v166;
              v169 = v167;
            }

            else
            {
              v168 = 0;
              v169 = 0;
            }

            v311 = v168;
            v312 = v169;
            if (v169)
            {
              v158 = &v311;
              v159 = v311;
              v160 = v312;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B03B1198(v158);
              sub_1B0E44B48();
              sub_1B0394868();
              v161 = sub_1B0E44AE8();
              v162 = v20;
              (*(v290 + 8))(v293, v289);

              v163 = v161;
              v164 = v162;
            }

            else
            {
              sub_1B03B1198(&v311);
              v163 = 0;
              v164 = 0xF000000000000000;
            }

            v156 = v164;
            v157 = v163;
            if ((v164 & 0xF000000000000000) == 0xF000000000000000)
            {
              sub_1B0391D50(v172, v171);
              MEMORY[0x1E69E5920](v191);
              sub_1B0391D50(v200, v199);
              sub_1B0391D50(v224, v223);
              MEMORY[0x1E69E5920](v246);
              v248 = v194;
            }

            else
            {
              v154 = v157;
              v155 = v156;
              v151 = v156;
              v152 = v157;
              v309 = v157;
              v310 = v156;
              v21 = [v246 clientInfo];
              v153 = v21;
              if (v21)
              {
                v150 = v153;
                v145 = v153;
                v146 = sub_1B0E44AD8();
                v147 = v22;
                MEMORY[0x1E69E5920](v145);
                v148 = v146;
                v149 = v147;
              }

              else
              {
                v148 = 0;
                v149 = 0;
              }

              v143 = v149;
              v144 = v148;
              if (v149)
              {
                v141 = v144;
                v142 = v143;
                v136 = v143;
                v135 = v144;
                sub_1B0E44B48();
                sub_1B0394868();
                v137 = sub_1B0E44AE8();
                v138 = v23;
                (*(v290 + 8))(v293, v289);

                v139 = v137;
                v140 = v138;
              }

              else
              {
                v139 = 0;
                v140 = 0xF000000000000000;
              }

              v133 = v140;
              v134 = v139;
              if ((v140 & 0xF000000000000000) != 0xF000000000000000)
              {
                v131 = v134;
                v132 = v133;
                v304 = v134;
                v305 = v133;
                v306[0] = v224;
                v306[1] = v223;
                v306[2] = v200;
                v306[3] = v199;
                v306[4] = v172;
                v306[5] = v171;
                v306[6] = v152;
                v306[7] = v151;
                v306[8] = v134;
                v306[9] = v133;
                v128 = v307;
                v130 = 80;
                memcpy(v307, v306, sizeof(v307));
                v307[5] &= 0xCFFFFFFFFFFFFFFFLL;
                v307[7] = v307[7] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
                v307[9] &= 0xCFFFFFFFFFFFFFFFLL;
                v129 = v308;
                memcpy(v308, v307, sizeof(v308));
                MEMORY[0x1E69E5920](v191);
                MEMORY[0x1E69E5920](v246);
                memcpy(__dst, v129, v130);
                goto LABEL_63;
              }

              sub_1B0391D50(v152, v151);
              sub_1B0391D50(v172, v171);
              MEMORY[0x1E69E5920](v191);
              sub_1B0391D50(v200, v199);
              sub_1B0391D50(v224, v223);
              MEMORY[0x1E69E5920](v246);
              v248 = v194;
            }
          }
        }

        else
        {
          sub_1B0391D50(v200, v199);
          sub_1B0391D50(v224, v223);
          MEMORY[0x1E69E5920](v246);
          v248 = v194;
        }
      }
    }
  }

  else
  {
    v248 = v274;
  }

  v95 = v248;
  (*(v284 + 16))(v287, v288, v283);
  sub_1B0394784(v288, v281);
  sub_1B0394784(v281, v279);
  sub_1B03F4FD0(v281, v277);
  v24 = (v279 + *(v275 + 20));
  v97 = *v24;
  v98 = *(v24 + 1);
  sub_1B039480C(v279);
  v96 = 24;
  v108 = 7;
  v25 = swift_allocObject();
  v26 = v98;
  v101 = v25;
  *(v25 + 16) = v97;
  *(v25 + 20) = v26;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v27 = swift_allocObject();
  v28 = v98;
  v99 = v27;
  *(v27 + 16) = v97;
  *(v27 + 20) = v28;

  v107 = 32;
  v29 = swift_allocObject();
  v30 = v99;
  v109 = v29;
  *(v29 + 16) = v253;
  *(v29 + 24) = v30;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v277);
  v126 = sub_1B0E43988();
  v127 = sub_1B0E458E8();
  v105 = 17;
  v111 = swift_allocObject();
  v103 = 16;
  *(v111 + 16) = 16;
  v112 = swift_allocObject();
  v106 = 4;
  *(v112 + 16) = 4;
  v31 = swift_allocObject();
  v100 = v31;
  *(v31 + 16) = v254;
  *(v31 + 24) = 0;
  v32 = swift_allocObject();
  v33 = v100;
  v113 = v32;
  *(v32 + 16) = v255;
  *(v32 + 24) = v33;
  v114 = swift_allocObject();
  *(v114 + 16) = 0;
  v115 = swift_allocObject();
  *(v115 + 16) = 1;
  v34 = swift_allocObject();
  v35 = v101;
  v102 = v34;
  *(v34 + 16) = v256;
  *(v34 + 24) = v35;
  v36 = swift_allocObject();
  v37 = v102;
  v116 = v36;
  *(v36 + 16) = v257;
  *(v36 + 24) = v37;
  v117 = swift_allocObject();
  *(v117 + 16) = v103;
  v118 = swift_allocObject();
  *(v118 + 16) = v106;
  v38 = swift_allocObject();
  v104 = v38;
  *(v38 + 16) = v258;
  *(v38 + 24) = 0;
  v39 = swift_allocObject();
  v40 = v104;
  v119 = v39;
  *(v39 + 16) = v259;
  *(v39 + 24) = v40;
  v120 = swift_allocObject();
  *(v120 + 16) = 0;
  v121 = swift_allocObject();
  *(v121 + 16) = v106;
  v41 = swift_allocObject();
  v42 = v109;
  v110 = v41;
  *(v41 + 16) = v260;
  *(v41 + 24) = v42;
  v43 = swift_allocObject();
  v44 = v110;
  v123 = v43;
  *(v43 + 16) = v261;
  *(v43 + 24) = v44;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v122 = sub_1B0E46A48();
  v124 = v45;

  v46 = v111;
  v47 = v124;
  *v124 = v262;
  v47[1] = v46;

  v48 = v112;
  v49 = v124;
  v124[2] = v263;
  v49[3] = v48;

  v50 = v113;
  v51 = v124;
  v124[4] = v264;
  v51[5] = v50;

  v52 = v114;
  v53 = v124;
  v124[6] = v265;
  v53[7] = v52;

  v54 = v115;
  v55 = v124;
  v124[8] = v266;
  v55[9] = v54;

  v56 = v116;
  v57 = v124;
  v124[10] = v267;
  v57[11] = v56;

  v58 = v117;
  v59 = v124;
  v124[12] = v268;
  v59[13] = v58;

  v60 = v118;
  v61 = v124;
  v124[14] = v269;
  v61[15] = v60;

  v62 = v119;
  v63 = v124;
  v124[16] = v270;
  v63[17] = v62;

  v64 = v120;
  v65 = v124;
  v124[18] = v271;
  v65[19] = v64;

  v66 = v121;
  v67 = v124;
  v124[20] = v272;
  v67[21] = v66;

  v68 = v123;
  v69 = v124;
  v124[22] = v273;
  v69[23] = v68;
  sub_1B0394964();

  if (os_log_type_enabled(v126, v127))
  {
    v70 = v95;
    v88 = sub_1B0E45D78();
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v87 = 0;
    v89 = sub_1B03949A8(0);
    v90 = sub_1B03949A8(v87);
    v91 = &v301;
    v301 = v88;
    v92 = &v323;
    v323 = v89;
    v93 = &v322;
    v322 = v90;
    sub_1B0394A48(0, &v301);
    sub_1B0394A48(4, v91);
    v299 = v262;
    v300 = v111;
    sub_1B03949FC(&v299, v91, v92, v93);
    v94 = v70;
    if (v70)
    {

      __break(1u);
    }

    else
    {
      v299 = v263;
      v300 = v112;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v85 = 0;
      v299 = v264;
      v300 = v113;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v84 = 0;
      v299 = v265;
      v300 = v114;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v83 = 0;
      v299 = v266;
      v300 = v115;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v82 = 0;
      v299 = v267;
      v300 = v116;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v81 = 0;
      v299 = v268;
      v300 = v117;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v80 = 0;
      v299 = v269;
      v300 = v118;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v79 = 0;
      v299 = v270;
      v300 = v119;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v78 = 0;
      v299 = v271;
      v300 = v120;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v77 = 0;
      v299 = v272;
      v300 = v121;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v76 = 0;
      v299 = v273;
      v300 = v123;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      _os_log_impl(&dword_1B0389000, v126, v127, "[%.*hhx-%.*X] Credentials: Missing details for using Apple Token auth.", v88, 0x17u);
      v75 = 0;
      sub_1B03998A8(v89);
      sub_1B03998A8(v90);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v126);
  (*(v284 + 8))(v287, v283);
  memset(__src, 0, 40);
  __src[5] = 0x3000000000000000;
  __src[6] = 0;
  __src[7] = 0x3000000000000000;
  __src[8] = 0;
  __src[9] = 0x3000000000000000;
  memcpy(__dst, __src, sizeof(__dst));
LABEL_63:
  result = memcpy(v252, __dst, 0x50uLL);
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0704918(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *), uint64_t a6)
{
  v146 = a1;
  v152 = a2;
  v142 = a3;
  v143 = a4;
  v144 = a5;
  v145 = a6;
  v112 = sub_1B039BBE8;
  v113 = sub_1B0394C30;
  v114 = sub_1B0394C24;
  v115 = sub_1B039BA2C;
  v116 = sub_1B039BA88;
  v117 = sub_1B039BB94;
  v118 = sub_1B0394C24;
  v119 = sub_1B039BBA0;
  v120 = sub_1B039BC08;
  v121 = sub_1B0398F5C;
  v122 = sub_1B0398F5C;
  v123 = sub_1B0399178;
  v124 = sub_1B0398F5C;
  v125 = sub_1B0398F5C;
  v126 = sub_1B039BA94;
  v127 = sub_1B0398F5C;
  v128 = sub_1B0398F5C;
  v129 = sub_1B0399178;
  v130 = sub_1B0398F5C;
  v131 = sub_1B0398F5C;
  v132 = sub_1B03991EC;
  v167 = 0;
  v168 = 0;
  v166 = 0;
  v165 = 0;
  v163 = 0;
  v164 = 0;
  v133 = 0;
  v153 = 0;
  v154 = 0;
  v134 = 0;
  v135 = _s6LoggerVMa();
  v136 = (*(*(v135 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](0);
  v137 = v64 - v136;
  v138 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v139 = v64 - v138;
  v140 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v141 = v64 - v140;
  v147 = sub_1B0E439A8();
  v148 = *(v147 - 8);
  v149 = v147 - 8;
  v150 = (*(v148 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v146);
  v151 = v64 - v150;
  v167 = v10;
  v168 = v11;
  v166 = v12;
  v165 = v13;
  v163 = v14;
  v164 = v15;
  sub_1B070E18C(v10, v11);
  if ((v152 & 0xF000000000000000) == 0xF000000000000000)
  {
    (*(v148 + 16))(v151, v143, v147);
    sub_1B0394784(v143, v141);
    sub_1B0394784(v141, v139);
    sub_1B03F4FD0(v141, v137);
    v17 = (v139 + *(v135 + 20));
    v74 = *v17;
    v75 = *(v17 + 1);
    sub_1B039480C(v139);
    v73 = 24;
    v85 = 7;
    v18 = swift_allocObject();
    v19 = v75;
    v78 = v18;
    *(v18 + 16) = v74;
    *(v18 + 20) = v19;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v20 = swift_allocObject();
    v21 = v75;
    v76 = v20;
    *(v20 + 16) = v74;
    *(v20 + 20) = v21;

    v84 = 32;
    v22 = swift_allocObject();
    v23 = v76;
    v86 = v22;
    *(v22 + 16) = v112;
    *(v22 + 24) = v23;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v137);
    v103 = sub_1B0E43988();
    v104 = sub_1B0E458E8();
    v82 = 17;
    v88 = swift_allocObject();
    v80 = 16;
    *(v88 + 16) = 16;
    v89 = swift_allocObject();
    v83 = 4;
    *(v89 + 16) = 4;
    v24 = swift_allocObject();
    v77 = v24;
    *(v24 + 16) = v113;
    *(v24 + 24) = 0;
    v25 = swift_allocObject();
    v26 = v77;
    v90 = v25;
    *(v25 + 16) = v114;
    *(v25 + 24) = v26;
    v91 = swift_allocObject();
    *(v91 + 16) = 0;
    v92 = swift_allocObject();
    *(v92 + 16) = 1;
    v27 = swift_allocObject();
    v28 = v78;
    v79 = v27;
    *(v27 + 16) = v115;
    *(v27 + 24) = v28;
    v29 = swift_allocObject();
    v30 = v79;
    v93 = v29;
    *(v29 + 16) = v116;
    *(v29 + 24) = v30;
    v94 = swift_allocObject();
    *(v94 + 16) = v80;
    v95 = swift_allocObject();
    *(v95 + 16) = v83;
    v31 = swift_allocObject();
    v81 = v31;
    *(v31 + 16) = v117;
    *(v31 + 24) = 0;
    v32 = swift_allocObject();
    v33 = v81;
    v96 = v32;
    *(v32 + 16) = v118;
    *(v32 + 24) = v33;
    v97 = swift_allocObject();
    *(v97 + 16) = 0;
    v98 = swift_allocObject();
    *(v98 + 16) = v83;
    v34 = swift_allocObject();
    v35 = v86;
    v87 = v34;
    *(v34 + 16) = v119;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v87;
    v100 = v36;
    *(v36 + 16) = v120;
    *(v36 + 24) = v37;
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v99 = sub_1B0E46A48();
    v101 = v38;

    v39 = v88;
    v40 = v101;
    *v101 = v121;
    v40[1] = v39;

    v41 = v89;
    v42 = v101;
    v101[2] = v122;
    v42[3] = v41;

    v43 = v90;
    v44 = v101;
    v101[4] = v123;
    v44[5] = v43;

    v45 = v91;
    v46 = v101;
    v101[6] = v124;
    v46[7] = v45;

    v47 = v92;
    v48 = v101;
    v101[8] = v125;
    v48[9] = v47;

    v49 = v93;
    v50 = v101;
    v101[10] = v126;
    v50[11] = v49;

    v51 = v94;
    v52 = v101;
    v101[12] = v127;
    v52[13] = v51;

    v53 = v95;
    v54 = v101;
    v101[14] = v128;
    v54[15] = v53;

    v55 = v96;
    v56 = v101;
    v101[16] = v129;
    v56[17] = v55;

    v57 = v97;
    v58 = v101;
    v101[18] = v130;
    v58[19] = v57;

    v59 = v98;
    v60 = v101;
    v101[20] = v131;
    v60[21] = v59;

    v61 = v100;
    v62 = v101;
    v101[22] = v132;
    v62[23] = v61;
    sub_1B0394964();

    if (os_log_type_enabled(v103, v104))
    {
      v63 = v133;
      v66 = sub_1B0E45D78();
      v64[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v65 = 0;
      v67 = sub_1B03949A8(0);
      v68 = sub_1B03949A8(v65);
      v69 = &v161;
      v161 = v66;
      v70 = &v160;
      v160 = v67;
      v71 = &v159;
      v159 = v68;
      sub_1B0394A48(0, &v161);
      sub_1B0394A48(4, v69);
      v157 = v121;
      v158 = v88;
      sub_1B03949FC(&v157, v69, v70, v71);
      v72 = v63;
      if (v63)
      {

        __break(1u);
      }

      else
      {
        v157 = v122;
        v158 = v89;
        sub_1B03949FC(&v157, &v161, &v160, &v159);
        v64[11] = 0;
        v157 = v123;
        v158 = v90;
        sub_1B03949FC(&v157, &v161, &v160, &v159);
        v64[10] = 0;
        v157 = v124;
        v158 = v91;
        sub_1B03949FC(&v157, &v161, &v160, &v159);
        v64[9] = 0;
        v157 = v125;
        v158 = v92;
        sub_1B03949FC(&v157, &v161, &v160, &v159);
        v64[8] = 0;
        v157 = v126;
        v158 = v93;
        sub_1B03949FC(&v157, &v161, &v160, &v159);
        v64[7] = 0;
        v157 = v127;
        v158 = v94;
        sub_1B03949FC(&v157, &v161, &v160, &v159);
        v64[6] = 0;
        v157 = v128;
        v158 = v95;
        sub_1B03949FC(&v157, &v161, &v160, &v159);
        v64[5] = 0;
        v157 = v129;
        v158 = v96;
        sub_1B03949FC(&v157, &v161, &v160, &v159);
        v64[4] = 0;
        v157 = v130;
        v158 = v97;
        sub_1B03949FC(&v157, &v161, &v160, &v159);
        v64[3] = 0;
        v157 = v131;
        v158 = v98;
        sub_1B03949FC(&v157, &v161, &v160, &v159);
        v64[2] = 0;
        v157 = v132;
        v158 = v100;
        sub_1B03949FC(&v157, &v161, &v160, &v159);
        _os_log_impl(&dword_1B0389000, v103, v104, "[%.*hhx-%.*X] Credentials: Unable to get Apple Token 2.", v66, 0x17u);
        v64[1] = 0;
        sub_1B03998A8(v67);
        sub_1B03998A8(v68);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v103);
    (*(v148 + 8))(v151, v147);

    memset(v162, 0, 40);
    v162[5] = 0x3000000000000000;
    v162[6] = 0;
    v162[7] = 0x1000000000000000;
    v162[8] = 0;
    v162[9] = 0x3000000000000000;
    v64[0] = v170;
    memcpy(v170, v162, sizeof(v170));
    v144(v170);
  }

  else
  {
    v110 = v146;
    v111 = v152;
    v109 = v152;
    v108 = v146;
    v153 = v146;
    v154 = v152;

    sub_1B03B2000(v108, v109);
    v155[0] = v108;
    v155[1] = v109;
    v155[5] &= 0xCFFFFFFFFFFFFFFFLL;
    v155[7] &= 0xCFFFFFFFFFFFFFFFLL;
    v155[9] = v155[9] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
    v107 = v156;
    v105 = 80;
    memcpy(v156, v155, sizeof(v156));
    v106 = __dst;
    memcpy(__dst, v156, sizeof(__dst));
    v144(__dst);
    sub_1B070B568(v107);

    return sub_1B0391D50(v108, v109);
  }
}

uint64_t sub_1B0705908(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);

  MEMORY[0x1E69E5928](a2);
  if (a2)
  {
    v6 = sub_1B0E42F38();
    v7 = v3;
    MEMORY[0x1E69E5920](a2);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xF000000000000000;
  }

  MEMORY[0x1E69E5928](a3);
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v11(v8, v9);

  sub_1B070E144(v8, v9);
}

uint64_t sub_1B0705A4C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v32 = 0;
  v21 = sub_1B0E43108();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v4 - v24;
  v26 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v28);
  v27 = &v4 - v26;
  v32 = v1;
  MEMORY[0x1E69E5928](v1);
  v29 = [v28 oauth2Token];
  if (v29)
  {
    v19 = v29;
    v14 = v29;
    v15 = sub_1B0E44AD8();
    v16 = v2;
    MEMORY[0x1E69E5920](v14);
    v17 = v15;
    v18 = v16;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v13 = v18;
  v12 = v17;
  MEMORY[0x1E69E5920](v28);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31[0] = v12;
  v31[1] = v13;
  v30[0] = v12;
  v30[1] = v13;
  v11 = v13 != 0;
  v10 = v11;
  sub_1B03B1198(v30);
  if (v10)
  {
    v9 = [v28 credentialExpiryDate];
    if (v9)
    {
      v8 = v9;
      v7 = v9;
      sub_1B0E430D8();
      (*(v22 + 32))(v27, v25, v21);
      (*(v22 + 56))(v27, 0, 1, v21);
      MEMORY[0x1E69E5920](v7);
    }

    else
    {
      (*(v22 + 56))(v27, 1, 1, v21);
    }

    v5 = *(v22 + 48);
    v6 = v22 + 48;
    if (v5(v27, 1, v21) == 1)
    {
      sub_1B0E43038();
      if (v5(v27, 1, v21) != 1)
      {
        sub_1B06B97A8(v27);
      }
    }

    else
    {
      (*(v22 + 32))(v20, v27, v21);
    }

    return sub_1B03B1198(v31);
  }

  else
  {
    sub_1B0E43038();
    return sub_1B03B1198(v31);
  }
}

uint64_t sub_1B0705E38(double a1)
{
  v2 = -a1;
  if (((COERCE_UNSIGNED_INT64(-a1) >> 52) & 0x7FF) == 0x7FF)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (v2 <= -9.22337204e18)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (v2 >= 9.22337204e18)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  return v2;
}

uint64_t sub_1B0705FD4(double a1)
{
  if (((*&a1 >> 52) & 0x7FFLL) == 0x7FF)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (a1 <= -9.22337204e18)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (a1 >= 9.22337204e18)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  return a1;
}

uint64_t sub_1B070616C(uint64_t a1)
{
  v10 = a1;
  v23 = 0;
  v22 = 0;
  v11 = sub_1B0E43108();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v10);
  v15 = v6 - v14;
  v16 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v17 = v6 - v16;
  v23 = v4;
  v22 = v1;
  v19 = sub_1B06F3D18(v4);
  v18 = &v21;
  v21 = 2;
  sub_1B06F6420();
  v20 = sub_1B0E45528();

  if (v20)
  {
    sub_1B0705A4C(v17);
    sub_1B0E43088();
    sub_1B070BB90();
    v8 = sub_1B0E44958();
    v7 = *(v12 + 8);
    v6[1] = v12 + 8;
    v7(v15, v11);
    v7(v17, v11);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B0706354(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v410 = a1;
  v399 = a2;
  v395 = a3;
  v396 = a4;
  v397 = a5;
  v398 = a6;
  v322 = sub_1B039BBE8;
  v323 = sub_1B0394C30;
  v324 = sub_1B0394C24;
  v325 = sub_1B039BA2C;
  v326 = sub_1B039BA88;
  v327 = sub_1B039BB94;
  v328 = sub_1B0394C24;
  v329 = sub_1B039BBA0;
  v330 = sub_1B039BC08;
  v331 = sub_1B070B2F4;
  v332 = sub_1B070B324;
  v333 = sub_1B0398F5C;
  v334 = sub_1B0398F5C;
  v335 = sub_1B0399178;
  v336 = sub_1B0398F5C;
  v337 = sub_1B0398F5C;
  v338 = sub_1B039BA94;
  v339 = sub_1B0398F5C;
  v340 = sub_1B0398F5C;
  v341 = sub_1B0399178;
  v342 = sub_1B0398F5C;
  v343 = sub_1B0398F5C;
  v344 = sub_1B03991EC;
  v345 = sub_1B0398F5C;
  v346 = sub_1B0398F5C;
  v347 = sub_1B070B4B4;
  v348 = sub_1B039BBE8;
  v349 = sub_1B0394C24;
  v350 = sub_1B039BA2C;
  v351 = sub_1B039BA88;
  v352 = sub_1B0394C24;
  v353 = sub_1B039BBA0;
  v354 = sub_1B039BC08;
  v355 = sub_1B0398F5C;
  v356 = sub_1B0398F5C;
  v357 = sub_1B0399178;
  v358 = sub_1B0398F5C;
  v359 = sub_1B0398F5C;
  v360 = sub_1B039BA94;
  v361 = sub_1B0398F5C;
  v362 = sub_1B0398F5C;
  v363 = sub_1B0399178;
  v364 = sub_1B0398F5C;
  v365 = sub_1B0398F5C;
  v366 = sub_1B03991EC;
  v367 = sub_1B039BBE8;
  v368 = sub_1B0394C24;
  v369 = sub_1B039BA2C;
  v370 = sub_1B039BA88;
  v371 = sub_1B0394C24;
  v372 = sub_1B039BBA0;
  v373 = sub_1B039BC08;
  v374 = sub_1B0398F5C;
  v375 = sub_1B0398F5C;
  v376 = sub_1B0399178;
  v377 = sub_1B0398F5C;
  v378 = sub_1B0398F5C;
  v379 = sub_1B039BA94;
  v380 = sub_1B0398F5C;
  v381 = sub_1B0398F5C;
  v382 = sub_1B0399178;
  v383 = sub_1B0398F5C;
  v384 = sub_1B0398F5C;
  v385 = sub_1B03991EC;
  v432 = 0;
  v431 = 0;
  v430 = 0;
  v428 = 0;
  v429 = 0;
  v427 = 0;
  v426 = 0;
  v386 = 0;
  v387 = 0;
  v388 = _s6LoggerVMa();
  v389 = (*(*(v388 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](0);
  v390 = v171 - v389;
  v391 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v392 = v171 - v391;
  v393 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v394 = v171 - v393;
  v400 = sub_1B0E439A8();
  v401 = *(v400 - 8);
  v402 = v400 - 8;
  v406 = *(v401 + 64);
  v403 = (v406 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v399);
  v404 = v171 - v403;
  v405 = (v406 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v407 = v171 - v405;
  v408 = (v406 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v409 = v171 - v408;
  v432 = v13;
  v431 = v12;
  v430 = v14;
  v428 = v15;
  v429 = v16;
  v427 = v17;
  MEMORY[0x1E69E5928](v12);
  if (v410)
  {
    if (v410 == 1)
    {
      if (v399)
      {
        v269 = v399;
        v112 = v404;
        v183 = v399;
        MEMORY[0x1E69E5928](v399);
        v426 = v183;
        (*(v401 + 16))(v112, v395, v400);
        sub_1B0394784(v395, v394);
        sub_1B0394784(v394, v392);
        sub_1B03F4FD0(v394, v390);
        v113 = (v392 + *(v388 + 20));
        v179 = *v113;
        v180 = *(v113 + 1);
        sub_1B039480C(v392);
        v182 = 24;
        v194 = 7;
        v114 = swift_allocObject();
        v115 = v180;
        v185 = v114;
        *(v114 + 16) = v179;
        *(v114 + 20) = v115;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v116 = swift_allocObject();
        v117 = v180;
        v181 = v116;
        *(v116 + 16) = v179;
        *(v116 + 20) = v117;

        v193 = 32;
        v118 = swift_allocObject();
        v119 = v181;
        v190 = v118;
        *(v118 + 16) = v322;
        *(v118 + 24) = v119;
        sub_1B0394868();
        sub_1B0394868();

        sub_1B039480C(v390);
        MEMORY[0x1E69E5928](v183);
        v195 = swift_allocObject();
        *(v195 + 16) = v183;
        v215 = sub_1B0E43988();
        v216 = sub_1B0E458E8();
        v192 = 17;
        v197 = swift_allocObject();
        v187 = 16;
        *(v197 + 16) = 16;
        v198 = swift_allocObject();
        v189 = 4;
        *(v198 + 16) = 4;
        v120 = swift_allocObject();
        v184 = v120;
        *(v120 + 16) = v323;
        *(v120 + 24) = 0;
        v121 = swift_allocObject();
        v122 = v184;
        v199 = v121;
        *(v121 + 16) = v324;
        *(v121 + 24) = v122;
        v200 = swift_allocObject();
        *(v200 + 16) = 0;
        v201 = swift_allocObject();
        *(v201 + 16) = 1;
        v123 = swift_allocObject();
        v124 = v185;
        v186 = v123;
        *(v123 + 16) = v325;
        *(v123 + 24) = v124;
        v125 = swift_allocObject();
        v126 = v186;
        v202 = v125;
        *(v125 + 16) = v326;
        *(v125 + 24) = v126;
        v203 = swift_allocObject();
        *(v203 + 16) = v187;
        v204 = swift_allocObject();
        *(v204 + 16) = v189;
        v127 = swift_allocObject();
        v188 = v127;
        *(v127 + 16) = v327;
        *(v127 + 24) = 0;
        v128 = swift_allocObject();
        v129 = v188;
        v205 = v128;
        *(v128 + 16) = v328;
        *(v128 + 24) = v129;
        v206 = swift_allocObject();
        *(v206 + 16) = 0;
        v207 = swift_allocObject();
        *(v207 + 16) = v189;
        v130 = swift_allocObject();
        v131 = v190;
        v191 = v130;
        *(v130 + 16) = v329;
        *(v130 + 24) = v131;
        v132 = swift_allocObject();
        v133 = v191;
        v208 = v132;
        *(v132 + 16) = v330;
        *(v132 + 24) = v133;
        v209 = swift_allocObject();
        *(v209 + 16) = 64;
        v210 = swift_allocObject();
        *(v210 + 16) = 8;
        v134 = swift_allocObject();
        v135 = v195;
        v196 = v134;
        *(v134 + 16) = v331;
        *(v134 + 24) = v135;
        v136 = swift_allocObject();
        v137 = v196;
        v212 = v136;
        *(v136 + 16) = v332;
        *(v136 + 24) = v137;
        v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v211 = sub_1B0E46A48();
        v213 = v138;

        v139 = v197;
        v140 = v213;
        *v213 = v333;
        v140[1] = v139;

        v141 = v198;
        v142 = v213;
        v213[2] = v334;
        v142[3] = v141;

        v143 = v199;
        v144 = v213;
        v213[4] = v335;
        v144[5] = v143;

        v145 = v200;
        v146 = v213;
        v213[6] = v336;
        v146[7] = v145;

        v147 = v201;
        v148 = v213;
        v213[8] = v337;
        v148[9] = v147;

        v149 = v202;
        v150 = v213;
        v213[10] = v338;
        v150[11] = v149;

        v151 = v203;
        v152 = v213;
        v213[12] = v339;
        v152[13] = v151;

        v153 = v204;
        v154 = v213;
        v213[14] = v340;
        v154[15] = v153;

        v155 = v205;
        v156 = v213;
        v213[16] = v341;
        v156[17] = v155;

        v157 = v206;
        v158 = v213;
        v213[18] = v342;
        v158[19] = v157;

        v159 = v207;
        v160 = v213;
        v213[20] = v343;
        v160[21] = v159;

        v161 = v208;
        v162 = v213;
        v213[22] = v344;
        v162[23] = v161;

        v163 = v209;
        v164 = v213;
        v213[24] = v345;
        v164[25] = v163;

        v165 = v210;
        v166 = v213;
        v213[26] = v346;
        v166[27] = v165;

        v167 = v212;
        v168 = v213;
        v213[28] = v347;
        v168[29] = v167;
        sub_1B0394964();

        if (os_log_type_enabled(v215, v216))
        {
          v169 = v386;
          v172 = sub_1B0E45D78();
          v171[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v173 = sub_1B03949A8(1);
          v174 = sub_1B03949A8(0);
          v175 = &v425;
          v425 = v172;
          v176 = &v424;
          v424 = v173;
          v177 = &v423;
          v423 = v174;
          sub_1B0394A48(2, &v425);
          sub_1B0394A48(5, v175);
          v421 = v333;
          v422 = v197;
          sub_1B03949FC(&v421, v175, v176, v177);
          v178 = v169;
          if (v169)
          {

            __break(1u);
          }

          else
          {
            v421 = v334;
            v422 = v198;
            sub_1B03949FC(&v421, &v425, &v424, &v423);
            v171[13] = 0;
            v421 = v335;
            v422 = v199;
            sub_1B03949FC(&v421, &v425, &v424, &v423);
            v171[12] = 0;
            v421 = v336;
            v422 = v200;
            sub_1B03949FC(&v421, &v425, &v424, &v423);
            v171[11] = 0;
            v421 = v337;
            v422 = v201;
            sub_1B03949FC(&v421, &v425, &v424, &v423);
            v171[10] = 0;
            v421 = v338;
            v422 = v202;
            sub_1B03949FC(&v421, &v425, &v424, &v423);
            v171[9] = 0;
            v421 = v339;
            v422 = v203;
            sub_1B03949FC(&v421, &v425, &v424, &v423);
            v171[8] = 0;
            v421 = v340;
            v422 = v204;
            sub_1B03949FC(&v421, &v425, &v424, &v423);
            v171[7] = 0;
            v421 = v341;
            v422 = v205;
            sub_1B03949FC(&v421, &v425, &v424, &v423);
            v171[6] = 0;
            v421 = v342;
            v422 = v206;
            sub_1B03949FC(&v421, &v425, &v424, &v423);
            v171[5] = 0;
            v421 = v343;
            v422 = v207;
            sub_1B03949FC(&v421, &v425, &v424, &v423);
            v171[4] = 0;
            v421 = v344;
            v422 = v208;
            sub_1B03949FC(&v421, &v425, &v424, &v423);
            v171[3] = 0;
            v421 = v345;
            v422 = v209;
            sub_1B03949FC(&v421, &v425, &v424, &v423);
            v171[2] = 0;
            v421 = v346;
            v422 = v210;
            sub_1B03949FC(&v421, &v425, &v424, &v423);
            v171[1] = 0;
            v421 = v347;
            v422 = v212;
            sub_1B03949FC(&v421, &v425, &v424, &v423);
            _os_log_impl(&dword_1B0389000, v215, v216, "[%.*hhx-%.*X] Credentials: Failed to renew credentials: %@", v172, 0x21u);
            sub_1B03998A8(v173);
            sub_1B03998A8(v174);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v215);
        (*(v401 + 8))(v404, v400);
        MEMORY[0x1E69E5920](v183);
        MEMORY[0x1E69E5920](v399);
      }

      else
      {
        (*(v401 + 16))(v407, v395, v400);
        sub_1B0394784(v395, v394);
        sub_1B0394784(v394, v392);
        sub_1B03F4FD0(v394, v390);
        v65 = (v392 + *(v388 + 20));
        v238 = *v65;
        v239 = *(v65 + 1);
        sub_1B039480C(v392);
        v237 = 24;
        v249 = 7;
        v66 = swift_allocObject();
        v67 = v239;
        v242 = v66;
        *(v66 + 16) = v238;
        *(v66 + 20) = v67;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v68 = swift_allocObject();
        v69 = v239;
        v240 = v68;
        *(v68 + 16) = v238;
        *(v68 + 20) = v69;

        v248 = 32;
        v70 = swift_allocObject();
        v71 = v240;
        v250 = v70;
        *(v70 + 16) = v348;
        *(v70 + 24) = v71;
        sub_1B0394868();
        sub_1B0394868();

        sub_1B039480C(v390);
        v267 = sub_1B0E43988();
        v268 = sub_1B0E458E8();
        v246 = 17;
        v252 = swift_allocObject();
        v244 = 16;
        *(v252 + 16) = 16;
        v253 = swift_allocObject();
        v247 = 4;
        *(v253 + 16) = 4;
        v72 = swift_allocObject();
        v241 = v72;
        *(v72 + 16) = v323;
        *(v72 + 24) = 0;
        v73 = swift_allocObject();
        v74 = v241;
        v254 = v73;
        *(v73 + 16) = v349;
        *(v73 + 24) = v74;
        v255 = swift_allocObject();
        *(v255 + 16) = 0;
        v256 = swift_allocObject();
        *(v256 + 16) = 1;
        v75 = swift_allocObject();
        v76 = v242;
        v243 = v75;
        *(v75 + 16) = v350;
        *(v75 + 24) = v76;
        v77 = swift_allocObject();
        v78 = v243;
        v257 = v77;
        *(v77 + 16) = v351;
        *(v77 + 24) = v78;
        v258 = swift_allocObject();
        *(v258 + 16) = v244;
        v259 = swift_allocObject();
        *(v259 + 16) = v247;
        v79 = swift_allocObject();
        v245 = v79;
        *(v79 + 16) = v327;
        *(v79 + 24) = 0;
        v80 = swift_allocObject();
        v81 = v245;
        v260 = v80;
        *(v80 + 16) = v352;
        *(v80 + 24) = v81;
        v261 = swift_allocObject();
        *(v261 + 16) = 0;
        v262 = swift_allocObject();
        *(v262 + 16) = v247;
        v82 = swift_allocObject();
        v83 = v250;
        v251 = v82;
        *(v82 + 16) = v353;
        *(v82 + 24) = v83;
        v84 = swift_allocObject();
        v85 = v251;
        v264 = v84;
        *(v84 + 16) = v354;
        *(v84 + 24) = v85;
        v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v263 = sub_1B0E46A48();
        v265 = v86;

        v87 = v252;
        v88 = v265;
        *v265 = v355;
        v88[1] = v87;

        v89 = v253;
        v90 = v265;
        v265[2] = v356;
        v90[3] = v89;

        v91 = v254;
        v92 = v265;
        v265[4] = v357;
        v92[5] = v91;

        v93 = v255;
        v94 = v265;
        v265[6] = v358;
        v94[7] = v93;

        v95 = v256;
        v96 = v265;
        v265[8] = v359;
        v96[9] = v95;

        v97 = v257;
        v98 = v265;
        v265[10] = v360;
        v98[11] = v97;

        v99 = v258;
        v100 = v265;
        v265[12] = v361;
        v100[13] = v99;

        v101 = v259;
        v102 = v265;
        v265[14] = v362;
        v102[15] = v101;

        v103 = v260;
        v104 = v265;
        v265[16] = v363;
        v104[17] = v103;

        v105 = v261;
        v106 = v265;
        v265[18] = v364;
        v106[19] = v105;

        v107 = v262;
        v108 = v265;
        v265[20] = v365;
        v108[21] = v107;

        v109 = v264;
        v110 = v265;
        v265[22] = v366;
        v110[23] = v109;
        sub_1B0394964();

        if (os_log_type_enabled(v267, v268))
        {
          v111 = v386;
          v230 = sub_1B0E45D78();
          v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v229 = 0;
          v231 = sub_1B03949A8(0);
          v232 = sub_1B03949A8(v229);
          v233 = &v420;
          v420 = v230;
          v234 = &v419;
          v419 = v231;
          v235 = &v418;
          v418 = v232;
          sub_1B0394A48(0, &v420);
          sub_1B0394A48(4, v233);
          v416 = v355;
          v417 = v252;
          sub_1B03949FC(&v416, v233, v234, v235);
          v236 = v111;
          if (v111)
          {

            __break(1u);
          }

          else
          {
            v416 = v356;
            v417 = v253;
            sub_1B03949FC(&v416, &v420, &v419, &v418);
            v227 = 0;
            v416 = v357;
            v417 = v254;
            sub_1B03949FC(&v416, &v420, &v419, &v418);
            v226 = 0;
            v416 = v358;
            v417 = v255;
            sub_1B03949FC(&v416, &v420, &v419, &v418);
            v225 = 0;
            v416 = v359;
            v417 = v256;
            sub_1B03949FC(&v416, &v420, &v419, &v418);
            v224 = 0;
            v416 = v360;
            v417 = v257;
            sub_1B03949FC(&v416, &v420, &v419, &v418);
            v223 = 0;
            v416 = v361;
            v417 = v258;
            sub_1B03949FC(&v416, &v420, &v419, &v418);
            v222 = 0;
            v416 = v362;
            v417 = v259;
            sub_1B03949FC(&v416, &v420, &v419, &v418);
            v221 = 0;
            v416 = v363;
            v417 = v260;
            sub_1B03949FC(&v416, &v420, &v419, &v418);
            v220 = 0;
            v416 = v364;
            v417 = v261;
            sub_1B03949FC(&v416, &v420, &v419, &v418);
            v219 = 0;
            v416 = v365;
            v417 = v262;
            sub_1B03949FC(&v416, &v420, &v419, &v418);
            v218 = 0;
            v416 = v366;
            v417 = v264;
            sub_1B03949FC(&v416, &v420, &v419, &v418);
            _os_log_impl(&dword_1B0389000, v267, v268, "[%.*hhx-%.*X] Credentials: Failed to renew credentials.", v230, 0x17u);
            v217 = 0;
            sub_1B03998A8(v231);
            sub_1B03998A8(v232);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v267);
        (*(v401 + 8))(v407, v400);
        MEMORY[0x1E69E5920](v399);
      }
    }

    else
    {
      MEMORY[0x1E69E5920](v399);
    }
  }

  else
  {
    (*(v401 + 16))(v409, v395, v400);
    sub_1B0394784(v395, v394);
    sub_1B0394784(v394, v392);
    sub_1B03F4FD0(v394, v390);
    v18 = (v392 + *(v388 + 20));
    v291 = *v18;
    v292 = *(v18 + 1);
    sub_1B039480C(v392);
    v290 = 24;
    v302 = 7;
    v19 = swift_allocObject();
    v20 = v292;
    v295 = v19;
    *(v19 + 16) = v291;
    *(v19 + 20) = v20;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v21 = swift_allocObject();
    v22 = v292;
    v293 = v21;
    *(v21 + 16) = v291;
    *(v21 + 20) = v22;

    v301 = 32;
    v23 = swift_allocObject();
    v24 = v293;
    v303 = v23;
    *(v23 + 16) = v367;
    *(v23 + 24) = v24;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v390);
    v320 = sub_1B0E43988();
    v321 = sub_1B0E45908();
    v299 = 17;
    v305 = swift_allocObject();
    v297 = 16;
    *(v305 + 16) = 16;
    v306 = swift_allocObject();
    v300 = 4;
    *(v306 + 16) = 4;
    v25 = swift_allocObject();
    v294 = v25;
    *(v25 + 16) = v323;
    *(v25 + 24) = 0;
    v26 = swift_allocObject();
    v27 = v294;
    v307 = v26;
    *(v26 + 16) = v368;
    *(v26 + 24) = v27;
    v308 = swift_allocObject();
    *(v308 + 16) = 0;
    v309 = swift_allocObject();
    *(v309 + 16) = 1;
    v28 = swift_allocObject();
    v29 = v295;
    v296 = v28;
    *(v28 + 16) = v369;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    v31 = v296;
    v310 = v30;
    *(v30 + 16) = v370;
    *(v30 + 24) = v31;
    v311 = swift_allocObject();
    *(v311 + 16) = v297;
    v312 = swift_allocObject();
    *(v312 + 16) = v300;
    v32 = swift_allocObject();
    v298 = v32;
    *(v32 + 16) = v327;
    *(v32 + 24) = 0;
    v33 = swift_allocObject();
    v34 = v298;
    v313 = v33;
    *(v33 + 16) = v371;
    *(v33 + 24) = v34;
    v314 = swift_allocObject();
    *(v314 + 16) = 0;
    v315 = swift_allocObject();
    *(v315 + 16) = v300;
    v35 = swift_allocObject();
    v36 = v303;
    v304 = v35;
    *(v35 + 16) = v372;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v304;
    v317 = v37;
    *(v37 + 16) = v373;
    *(v37 + 24) = v38;
    v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v316 = sub_1B0E46A48();
    v318 = v39;

    v40 = v305;
    v41 = v318;
    *v318 = v374;
    v41[1] = v40;

    v42 = v306;
    v43 = v318;
    v318[2] = v375;
    v43[3] = v42;

    v44 = v307;
    v45 = v318;
    v318[4] = v376;
    v45[5] = v44;

    v46 = v308;
    v47 = v318;
    v318[6] = v377;
    v47[7] = v46;

    v48 = v309;
    v49 = v318;
    v318[8] = v378;
    v49[9] = v48;

    v50 = v310;
    v51 = v318;
    v318[10] = v379;
    v51[11] = v50;

    v52 = v311;
    v53 = v318;
    v318[12] = v380;
    v53[13] = v52;

    v54 = v312;
    v55 = v318;
    v318[14] = v381;
    v55[15] = v54;

    v56 = v313;
    v57 = v318;
    v318[16] = v382;
    v57[17] = v56;

    v58 = v314;
    v59 = v318;
    v318[18] = v383;
    v59[19] = v58;

    v60 = v315;
    v61 = v318;
    v318[20] = v384;
    v61[21] = v60;

    v62 = v317;
    v63 = v318;
    v318[22] = v385;
    v63[23] = v62;
    sub_1B0394964();

    if (os_log_type_enabled(v320, v321))
    {
      v64 = v386;
      v283 = sub_1B0E45D78();
      v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v282 = 0;
      v284 = sub_1B03949A8(0);
      v285 = sub_1B03949A8(v282);
      v286 = &v415;
      v415 = v283;
      v287 = &v414;
      v414 = v284;
      v288 = &v413;
      v413 = v285;
      sub_1B0394A48(0, &v415);
      sub_1B0394A48(4, v286);
      v411 = v374;
      v412 = v305;
      sub_1B03949FC(&v411, v286, v287, v288);
      v289 = v64;
      if (v64)
      {

        __break(1u);
      }

      else
      {
        v411 = v375;
        v412 = v306;
        sub_1B03949FC(&v411, &v415, &v414, &v413);
        v280 = 0;
        v411 = v376;
        v412 = v307;
        sub_1B03949FC(&v411, &v415, &v414, &v413);
        v279 = 0;
        v411 = v377;
        v412 = v308;
        sub_1B03949FC(&v411, &v415, &v414, &v413);
        v278 = 0;
        v411 = v378;
        v412 = v309;
        sub_1B03949FC(&v411, &v415, &v414, &v413);
        v277 = 0;
        v411 = v379;
        v412 = v310;
        sub_1B03949FC(&v411, &v415, &v414, &v413);
        v276 = 0;
        v411 = v380;
        v412 = v311;
        sub_1B03949FC(&v411, &v415, &v414, &v413);
        v275 = 0;
        v411 = v381;
        v412 = v312;
        sub_1B03949FC(&v411, &v415, &v414, &v413);
        v274 = 0;
        v411 = v382;
        v412 = v313;
        sub_1B03949FC(&v411, &v415, &v414, &v413);
        v273 = 0;
        v411 = v383;
        v412 = v314;
        sub_1B03949FC(&v411, &v415, &v414, &v413);
        v272 = 0;
        v411 = v384;
        v412 = v315;
        sub_1B03949FC(&v411, &v415, &v414, &v413);
        v271 = 0;
        v411 = v385;
        v412 = v317;
        sub_1B03949FC(&v411, &v415, &v414, &v413);
        _os_log_impl(&dword_1B0389000, v320, v321, "[%.*hhx-%.*X] Credentials: Did renew OAuth credentials.", v283, 0x17u);
        v270 = 0;
        sub_1B03998A8(v284);
        sub_1B03998A8(v285);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v320);
    (*(v401 + 8))(v409, v400);
    MEMORY[0x1E69E5920](v399);
  }

  v171[0] = v433;
  sub_1B0708E54(v395, v433);
  v396(v171[0]);
  sub_1B070B568(v171[0]);
}

void *sub_1B0708E54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v228 = a2;
  v278 = a1;
  v229 = sub_1B039BBE8;
  v230 = sub_1B0394C30;
  v231 = sub_1B0394C24;
  v232 = sub_1B039BA2C;
  v233 = sub_1B039BA88;
  v234 = sub_1B039BB94;
  v235 = sub_1B0394C24;
  v236 = sub_1B039BBA0;
  v237 = sub_1B039BC08;
  v238 = sub_1B0398F5C;
  v239 = sub_1B0398F5C;
  v240 = sub_1B0399178;
  v241 = sub_1B0398F5C;
  v242 = sub_1B0398F5C;
  v243 = sub_1B039BA94;
  v244 = sub_1B0398F5C;
  v245 = sub_1B0398F5C;
  v246 = sub_1B0399178;
  v247 = sub_1B0398F5C;
  v248 = sub_1B0398F5C;
  v249 = sub_1B03991EC;
  v250 = sub_1B039BBE8;
  v251 = sub_1B0394C24;
  v252 = sub_1B039BA2C;
  v253 = sub_1B039BA88;
  v254 = sub_1B0394C24;
  v255 = sub_1B039BBA0;
  v256 = sub_1B039BC08;
  v257 = sub_1B0398F5C;
  v258 = sub_1B0398F5C;
  v259 = sub_1B0399178;
  v260 = sub_1B0398F5C;
  v261 = sub_1B0398F5C;
  v262 = sub_1B039BA94;
  v263 = sub_1B0398F5C;
  v264 = sub_1B0398F5C;
  v265 = sub_1B0399178;
  v266 = sub_1B0398F5C;
  v267 = sub_1B0398F5C;
  v268 = sub_1B03991EC;
  v308 = 0;
  v307 = 0;
  v269 = 0;
  v298 = 0;
  v299 = 0;
  v296 = 0;
  v297 = 0;
  v270 = 0;
  v271 = _s6LoggerVMa();
  v272 = (*(*(v271 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v273 = v108 - v272;
  v274 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v275 = v108 - v274;
  v276 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v277 = v108 - v276;
  v279 = sub_1B0E439A8();
  v280 = *(v279 - 8);
  v281 = v279 - 8;
  v283 = *(v280 + 64);
  v282 = (v283 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v287);
  v284 = v108 - v282;
  v285 = (v283 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v286 = v108 - v285;
  v308 = v8;
  v307 = v7;
  MEMORY[0x1E69E5928](v7);
  v288 = [v287 username];
  if (v288)
  {
    v227 = v288;
    v222 = v288;
    v223 = sub_1B0E44AD8();
    v224 = v9;
    MEMORY[0x1E69E5920](v222);
    v225 = v223;
    v226 = v224;
  }

  else
  {
    v225 = 0;
    v226 = 0;
  }

  v220 = v226;
  v221 = v225;
  if (v226)
  {
    v218 = v221;
    v219 = v220;
    v215 = v220;
    v216 = v221;
    v298 = v221;
    v299 = v220;
    MEMORY[0x1E69E5920](v287);
    MEMORY[0x1E69E5928](v287);
    v10 = [v287 oauth2Token];
    v217 = v10;
    if (v10)
    {
      v214 = v217;
      v209 = v217;
      v210 = sub_1B0E44AD8();
      v211 = v11;
      MEMORY[0x1E69E5920](v209);
      v212 = v210;
      v213 = v211;
    }

    else
    {
      v212 = 0;
      v213 = 0;
    }

    v207 = v213;
    v208 = v212;
    if (v213)
    {
      v205 = v208;
      v206 = v207;
      v12 = v286;
      v171 = v207;
      v172 = v208;
      v296 = v208;
      v297 = v207;
      MEMORY[0x1E69E5920](v287);
      (*(v280 + 16))(v12, v278, v279);
      sub_1B0394784(v278, v277);
      sub_1B0394784(v277, v275);
      sub_1B03F4FD0(v277, v273);
      v13 = (v275 + *(v271 + 20));
      v174 = *v13;
      v175 = *(v13 + 1);
      sub_1B039480C(v275);
      v173 = 24;
      v185 = 7;
      v14 = swift_allocObject();
      v15 = v175;
      v178 = v14;
      *(v14 + 16) = v174;
      *(v14 + 20) = v15;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v16 = swift_allocObject();
      v17 = v175;
      v176 = v16;
      *(v16 + 16) = v174;
      *(v16 + 20) = v17;

      v184 = 32;
      v18 = swift_allocObject();
      v19 = v176;
      v186 = v18;
      *(v18 + 16) = v229;
      *(v18 + 24) = v19;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v273);
      v203 = sub_1B0E43988();
      v204 = sub_1B0E45908();
      v182 = 17;
      v188 = swift_allocObject();
      v180 = 16;
      *(v188 + 16) = 16;
      v189 = swift_allocObject();
      v183 = 4;
      *(v189 + 16) = 4;
      v20 = swift_allocObject();
      v177 = v20;
      *(v20 + 16) = v230;
      *(v20 + 24) = 0;
      v21 = swift_allocObject();
      v22 = v177;
      v190 = v21;
      *(v21 + 16) = v231;
      *(v21 + 24) = v22;
      v191 = swift_allocObject();
      *(v191 + 16) = 0;
      v192 = swift_allocObject();
      *(v192 + 16) = 1;
      v23 = swift_allocObject();
      v24 = v178;
      v179 = v23;
      *(v23 + 16) = v232;
      *(v23 + 24) = v24;
      v25 = swift_allocObject();
      v26 = v179;
      v193 = v25;
      *(v25 + 16) = v233;
      *(v25 + 24) = v26;
      v194 = swift_allocObject();
      *(v194 + 16) = v180;
      v195 = swift_allocObject();
      *(v195 + 16) = v183;
      v27 = swift_allocObject();
      v181 = v27;
      *(v27 + 16) = v234;
      *(v27 + 24) = 0;
      v28 = swift_allocObject();
      v29 = v181;
      v196 = v28;
      *(v28 + 16) = v235;
      *(v28 + 24) = v29;
      v197 = swift_allocObject();
      *(v197 + 16) = 0;
      v198 = swift_allocObject();
      *(v198 + 16) = v183;
      v30 = swift_allocObject();
      v31 = v186;
      v187 = v30;
      *(v30 + 16) = v236;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v187;
      v200 = v32;
      *(v32 + 16) = v237;
      *(v32 + 24) = v33;
      v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v199 = sub_1B0E46A48();
      v201 = v34;

      v35 = v188;
      v36 = v201;
      *v201 = v238;
      v36[1] = v35;

      v37 = v189;
      v38 = v201;
      v201[2] = v239;
      v38[3] = v37;

      v39 = v190;
      v40 = v201;
      v201[4] = v240;
      v40[5] = v39;

      v41 = v191;
      v42 = v201;
      v201[6] = v241;
      v42[7] = v41;

      v43 = v192;
      v44 = v201;
      v201[8] = v242;
      v44[9] = v43;

      v45 = v193;
      v46 = v201;
      v201[10] = v243;
      v46[11] = v45;

      v47 = v194;
      v48 = v201;
      v201[12] = v244;
      v48[13] = v47;

      v49 = v195;
      v50 = v201;
      v201[14] = v245;
      v50[15] = v49;

      v51 = v196;
      v52 = v201;
      v201[16] = v246;
      v52[17] = v51;

      v53 = v197;
      v54 = v201;
      v201[18] = v247;
      v54[19] = v53;

      v55 = v198;
      v56 = v201;
      v201[20] = v248;
      v56[21] = v55;

      v57 = v200;
      v58 = v201;
      v201[22] = v249;
      v58[23] = v57;
      sub_1B0394964();

      if (os_log_type_enabled(v203, v204))
      {
        v59 = v269;
        v164 = sub_1B0E45D78();
        v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v163 = 0;
        v165 = sub_1B03949A8(0);
        v166 = sub_1B03949A8(v163);
        v167 = &v293;
        v293 = v164;
        v168 = &v292;
        v292 = v165;
        v169 = &v291;
        v291 = v166;
        sub_1B0394A48(0, &v293);
        sub_1B0394A48(4, v167);
        v289 = v238;
        v290 = v188;
        sub_1B03949FC(&v289, v167, v168, v169);
        v170 = v59;
        if (v59)
        {

          __break(1u);
        }

        else
        {
          v289 = v239;
          v290 = v189;
          sub_1B03949FC(&v289, &v293, &v292, &v291);
          v161 = 0;
          v289 = v240;
          v290 = v190;
          sub_1B03949FC(&v289, &v293, &v292, &v291);
          v160 = 0;
          v289 = v241;
          v290 = v191;
          sub_1B03949FC(&v289, &v293, &v292, &v291);
          v159 = 0;
          v289 = v242;
          v290 = v192;
          sub_1B03949FC(&v289, &v293, &v292, &v291);
          v158 = 0;
          v289 = v243;
          v290 = v193;
          sub_1B03949FC(&v289, &v293, &v292, &v291);
          v157 = 0;
          v289 = v244;
          v290 = v194;
          sub_1B03949FC(&v289, &v293, &v292, &v291);
          v156 = 0;
          v289 = v245;
          v290 = v195;
          sub_1B03949FC(&v289, &v293, &v292, &v291);
          v155 = 0;
          v289 = v246;
          v290 = v196;
          sub_1B03949FC(&v289, &v293, &v292, &v291);
          v154 = 0;
          v289 = v247;
          v290 = v197;
          sub_1B03949FC(&v289, &v293, &v292, &v291);
          v153 = 0;
          v289 = v248;
          v290 = v198;
          sub_1B03949FC(&v289, &v293, &v292, &v291);
          v152 = 0;
          v289 = v249;
          v290 = v200;
          sub_1B03949FC(&v289, &v293, &v292, &v291);
          _os_log_impl(&dword_1B0389000, v203, v204, "[%.*hhx-%.*X] Credentials: Adding oAuth Token.", v164, 0x17u);
          v151 = 0;
          sub_1B03998A8(v165);
          sub_1B03998A8(v166);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v203);
      (*(v280 + 8))(v286, v279);
      v294[0] = v216;
      v294[1] = v215;
      v294[2] = v172;
      v294[3] = v171;
      v294[5] &= 0xCFFFFFFFFFFFFFFFLL;
      v294[7] = v294[7] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v294[9] = v294[9] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
      v149 = v295;
      v150 = 80;
      memcpy(v295, v294, sizeof(v295));
      memcpy(__dst, v295, sizeof(__dst));
      return memcpy(v228, __dst, 0x50uLL);
    }

    MEMORY[0x1E69E5920](v287);
  }

  else
  {
    MEMORY[0x1E69E5920](v287);
  }

  (*(v280 + 16))(v284, v278, v279);
  sub_1B0394784(v278, v277);
  sub_1B0394784(v277, v275);
  sub_1B03F4FD0(v277, v273);
  v60 = (v275 + *(v271 + 20));
  v118 = *v60;
  v119 = *(v60 + 1);
  sub_1B039480C(v275);
  v117 = 24;
  v129 = 7;
  v61 = swift_allocObject();
  v62 = v119;
  v122 = v61;
  *(v61 + 16) = v118;
  *(v61 + 20) = v62;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v63 = swift_allocObject();
  v64 = v119;
  v120 = v63;
  *(v63 + 16) = v118;
  *(v63 + 20) = v64;

  v128 = 32;
  v65 = swift_allocObject();
  v66 = v120;
  v130 = v65;
  *(v65 + 16) = v250;
  *(v65 + 24) = v66;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v273);
  v147 = sub_1B0E43988();
  v148 = sub_1B0E458E8();
  v126 = 17;
  v132 = swift_allocObject();
  v124 = 16;
  *(v132 + 16) = 16;
  v133 = swift_allocObject();
  v127 = 4;
  *(v133 + 16) = 4;
  v67 = swift_allocObject();
  v121 = v67;
  *(v67 + 16) = v230;
  *(v67 + 24) = 0;
  v68 = swift_allocObject();
  v69 = v121;
  v134 = v68;
  *(v68 + 16) = v251;
  *(v68 + 24) = v69;
  v135 = swift_allocObject();
  *(v135 + 16) = 0;
  v136 = swift_allocObject();
  *(v136 + 16) = 1;
  v70 = swift_allocObject();
  v71 = v122;
  v123 = v70;
  *(v70 + 16) = v252;
  *(v70 + 24) = v71;
  v72 = swift_allocObject();
  v73 = v123;
  v137 = v72;
  *(v72 + 16) = v253;
  *(v72 + 24) = v73;
  v138 = swift_allocObject();
  *(v138 + 16) = v124;
  v139 = swift_allocObject();
  *(v139 + 16) = v127;
  v74 = swift_allocObject();
  v125 = v74;
  *(v74 + 16) = v234;
  *(v74 + 24) = 0;
  v75 = swift_allocObject();
  v76 = v125;
  v140 = v75;
  *(v75 + 16) = v254;
  *(v75 + 24) = v76;
  v141 = swift_allocObject();
  *(v141 + 16) = 0;
  v142 = swift_allocObject();
  *(v142 + 16) = v127;
  v77 = swift_allocObject();
  v78 = v130;
  v131 = v77;
  *(v77 + 16) = v255;
  *(v77 + 24) = v78;
  v79 = swift_allocObject();
  v80 = v131;
  v144 = v79;
  *(v79 + 16) = v256;
  *(v79 + 24) = v80;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v143 = sub_1B0E46A48();
  v145 = v81;

  v82 = v132;
  v83 = v145;
  *v145 = v257;
  v83[1] = v82;

  v84 = v133;
  v85 = v145;
  v145[2] = v258;
  v85[3] = v84;

  v86 = v134;
  v87 = v145;
  v145[4] = v259;
  v87[5] = v86;

  v88 = v135;
  v89 = v145;
  v145[6] = v260;
  v89[7] = v88;

  v90 = v136;
  v91 = v145;
  v145[8] = v261;
  v91[9] = v90;

  v92 = v137;
  v93 = v145;
  v145[10] = v262;
  v93[11] = v92;

  v94 = v138;
  v95 = v145;
  v145[12] = v263;
  v95[13] = v94;

  v96 = v139;
  v97 = v145;
  v145[14] = v264;
  v97[15] = v96;

  v98 = v140;
  v99 = v145;
  v145[16] = v265;
  v99[17] = v98;

  v100 = v141;
  v101 = v145;
  v145[18] = v266;
  v101[19] = v100;

  v102 = v142;
  v103 = v145;
  v145[20] = v267;
  v103[21] = v102;

  v104 = v144;
  v105 = v145;
  v145[22] = v268;
  v105[23] = v104;
  sub_1B0394964();

  if (os_log_type_enabled(v147, v148))
  {
    v106 = v269;
    v110 = sub_1B0E45D78();
    v108[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v109 = 0;
    v111 = sub_1B03949A8(0);
    v112 = sub_1B03949A8(v109);
    v113 = &v304;
    v304 = v110;
    v114 = &v303;
    v303 = v111;
    v115 = &v302;
    v302 = v112;
    sub_1B0394A48(0, &v304);
    sub_1B0394A48(4, v113);
    v300 = v257;
    v301 = v132;
    sub_1B03949FC(&v300, v113, v114, v115);
    v116 = v106;
    if (v106)
    {

      __break(1u);
    }

    else
    {
      v300 = v258;
      v301 = v133;
      sub_1B03949FC(&v300, &v304, &v303, &v302);
      v108[11] = 0;
      v300 = v259;
      v301 = v134;
      sub_1B03949FC(&v300, &v304, &v303, &v302);
      v108[10] = 0;
      v300 = v260;
      v301 = v135;
      sub_1B03949FC(&v300, &v304, &v303, &v302);
      v108[9] = 0;
      v300 = v261;
      v301 = v136;
      sub_1B03949FC(&v300, &v304, &v303, &v302);
      v108[8] = 0;
      v300 = v262;
      v301 = v137;
      sub_1B03949FC(&v300, &v304, &v303, &v302);
      v108[7] = 0;
      v300 = v263;
      v301 = v138;
      sub_1B03949FC(&v300, &v304, &v303, &v302);
      v108[6] = 0;
      v300 = v264;
      v301 = v139;
      sub_1B03949FC(&v300, &v304, &v303, &v302);
      v108[5] = 0;
      v300 = v265;
      v301 = v140;
      sub_1B03949FC(&v300, &v304, &v303, &v302);
      v108[4] = 0;
      v300 = v266;
      v301 = v141;
      sub_1B03949FC(&v300, &v304, &v303, &v302);
      v108[3] = 0;
      v300 = v267;
      v301 = v142;
      sub_1B03949FC(&v300, &v304, &v303, &v302);
      v108[2] = 0;
      v300 = v268;
      v301 = v144;
      sub_1B03949FC(&v300, &v304, &v303, &v302);
      _os_log_impl(&dword_1B0389000, v147, v148, "[%.*hhx-%.*X] Credentials: Missing details for using oAuth Token.", v110, 0x17u);
      v108[1] = 0;
      sub_1B03998A8(v111);
      sub_1B03998A8(v112);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v147);
  (*(v280 + 8))(v284, v279);
  memset(__src, 0, 40);
  __src[5] = 0x3000000000000000;
  __src[6] = 0;
  __src[7] = 0x1000000000000000;
  __src[8] = 0;
  __src[9] = 0x3000000000000000;
  memcpy(__dst, __src, sizeof(__dst));
  return memcpy(v228, __dst, 0x50uLL);
}

uint64_t sub_1B070AC10()
{
  v2 = 0;
  v3 = 0;
  v1 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v1;
  v3 = 0;
  sub_1B039E440(&v2);
  return v1;
}

uint64_t sub_1B070AD2C(void *a1, NSObject *a2, uint64_t a3)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v11, __dst, sizeof(v11));
  v9[10] = a2;
  v9[11] = a3;

  sub_1B070E1D4(a1, v9);
  v8 = a1;
  sub_1B03E1B3C(sub_1B070E38C, v7, a3, &unk_1F26A9368, MEMORY[0x1E69E7CA8] + 8);
  sub_1B070B568(a1);

  return sub_1B070AE3C(a2);
}

uint64_t sub_1B070AE3C(NSObject *a1)
{
  MEMORY[0x1E69E5928](a1);
  dispatch_group_leave(a1);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t *sub_1B070AE94(uint64_t a1, const void *a2)
{
  v6[11] = a1;
  v6[10] = a2;
  result = memcpy(__dst, a2, sizeof(__dst));
  if ((__dst[5] & 0x3000000000000000) != 0x3000000000000000 || (__dst[7] & 0x3000000000000000) != 0x3000000000000000 || (__dst[9] & 0x3000000000000000) != 0x3000000000000000)
  {
    if ((__dst[5] & 0x3000000000000000) == 0x3000000000000000 && (__dst[7] & 0x3000000000000000) == 0x1000000000000000 && (__dst[9] & 0x3000000000000000) == 0x3000000000000000)
    {
      *(a1 + 8) = 1;
    }

    else
    {
      memcpy(v8, __dst, sizeof(v8));
      sub_1B069506C(v8, v6);
      sub_1B069506C(v8, v5);
      memcpy(v4, v8, sizeof(v4));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1440, &qword_1B0E99410);
      sub_1B0E452E8();
      result = v8;
      sub_1B070BB30(v8);
    }
  }

  return result;
}

uint64_t sub_1B070B030(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{

  sub_1B03E1B3C(sub_1B070B150, 0, a2, &unk_1F26A9368, &unk_1F26A9368);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a3(v6, v7 & 1);
}

uint64_t sub_1B070B188(uint64_t result)
{
  v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v5 > 0)
    {

      sub_1B0E45C58();
      v3 = sub_1B0E45278();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    v1 = sub_1B0E45C58();
    result = v4;
    v2 = v4 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));
  }

  return result;
}

void *sub_1B070B280(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B070B2F4()
{
  result = *(v0 + 16);
  sub_1B06A93F4();
  return result;
}

uint64_t sub_1B070B330(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a4();
  v8 = *a1;
  MEMORY[0x1E69E5928](v9);
  sub_1B0E45E48();
  if (v9)
  {
    MEMORY[0x1E69E5920](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (*a2)
  {
    MEMORY[0x1E69E5928](v9);
    *v5 = v9;
    result = MEMORY[0x1E69E5920](v9);
    *a2 = v5 + 1;
  }

  else
  {
    result = MEMORY[0x1E69E5920](v9);
  }

  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t block_copy_helper_781(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B070B550()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1B070115C();
  return result;
}

uint64_t sub_1B070B568(uint64_t a1)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  if (((v3 & 0x3000000000000000) != 0x3000000000000000 || (v4 & 0x3000000000000000) != 0x3000000000000000 || (v5 & 0x3000000000000000) != 0x3000000000000000) && ((v3 & 0x3000000000000000) != 0x3000000000000000 || (v4 & 0x3000000000000000) != 0x1000000000000000 || (v5 & 0x3000000000000000) != 0x3000000000000000))
  {
    sub_1B070B688(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  }

  return a1;
}

uint64_t sub_1B070B688(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v10 = (a10 >> 59) & 6;
  if (((a8 & 0x2000000000000000) != 0) | v10)
  {
    switch((((a8 & 0x2000000000000000) != 0) | v10))
    {
      case 1u:
        sub_1B0391D50(result, a2);
        sub_1B0391D50(a3, a4);
        sub_1B0391D50(a5, a6);
        sub_1B0391D50(a7, a8 & 0xDFFFFFFFFFFFFFFFLL);
        return sub_1B0391D50(a9, a10 & 0xCFFFFFFFFFFFFFFFLL);
      case 2u:
        return sub_1B0391D50(result, a2);
      case 3u:
    }
  }

  else
  {
    sub_1B0391D50(result, a2);
    return sub_1B0391D50(a3, a4);
  }

  return result;
}

unint64_t sub_1B070B7CC()
{
  v2 = qword_1EB6DA398;
  if (!qword_1EB6DA398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1958, &qword_1B0E9A0B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA398);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B070B85C(uint64_t a1, uint64_t a2)
{
  v11 = *(_s6LoggerVMa() - 8);
  v3 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v4 = (v3 + *(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v2 + v4);
  v6 = *(v2 + v4 + 8);
  v7 = *(v2 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B0706354(a1, a2, v2 + v3, v5, v6, v7);
}

uint64_t block_copy_helper_1209(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B070B994(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v12 = *(_s6LoggerVMa() - 8);
  v4 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v5 = v3 + ((v4 + *(v12 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1B0704918(a1, a2, a3, v3 + v4, v6, v7);
}

uint64_t block_copy_helper_1462(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_1544(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B070BB90()
{
  v2 = qword_1EB6DED00;
  if (!qword_1EB6DED00)
  {
    sub_1B0E43108();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DED00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070BC10()
{
  v2 = qword_1EB6E1970;
  if (!qword_1EB6E1970)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1970);
    return WitnessTable;
  }

  return v2;
}

uint64_t _s17CredentialsHelperCMa()
{
  v1 = qword_1EB6DBE00;
  if (!qword_1EB6DBE00)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B070BD1C()
{
  v2 = _s6LoggerVMa();
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

uint64_t sub_1B070BE44(unsigned int *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7C && *(a1 + 5))
    {
      v2 = *(a1 + 4);
      v6 = *a1 + 124;
    }

    else
    {
      v3 = (((*a1 | (*(a1 + 4) << 32)) & 0xFFFFFFFFFFLL) >> 33) & 0x7F;
      v4 = 127 - (((4 * v3) | (v3 >> 5)) & 0x7F);
      if (v4 >= 0x7C)
      {
        v4 = -1;
      }

      v6 = v4;
    }
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t sub_1B070BF94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    *(result + 4) = 0;
    if (a3 > 0x7C)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 > 0x7C)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 4) = 2 * (((~(a2 - 1) & 0x7F) >> 2) | (32 * (~(a2 - 1) & 0x7F)));
    }
  }

  return result;
}

unint64_t sub_1B070C178(unsigned int *a1)
{
  if (((((*a1 | (*(a1 + 4) << 32)) & 0xFFFFFFFFFFLL) >> 38) & 3) == 3)
  {
    return *a1 + 3;
  }

  else
  {
    return (((*a1 | (*(a1 + 4) << 32)) & 0xFFFFFFFFFFLL) >> 38) & 3;
  }
}

unsigned int *sub_1B070C1A8(unsigned int *result)
{
  v1 = (*result | (*(result + 4) << 32)) & 0x3FFFFFFFFFLL;
  *result = *result;
  *(result + 4) = BYTE4(v1);
  return result;
}

unsigned int *sub_1B070C1CC(unsigned int *result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = ((a2 & 3) << 38) | (*result | (*(result + 4) << 32)) & 0x1FFFFFFFFLL;
    *result = *result;
    *(result + 4) = BYTE4(v2);
  }

  else
  {
    *result = a2 - 3;
    *(result + 4) = -64;
  }

  return result;
}

uint64_t sub_1B070C27C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B070C3E4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1B070C5F4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B070C75C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B070C988(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 5))
    {
      v2 = *(a1 + 4);
      v4 = *a1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B070CA9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    if (a3)
    {
      *(result + 5) = 1;
    }
  }

  else if (a3)
  {
    *(result + 5) = 0;
  }

  return result;
}

uint64_t sub_1B070CCF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFD && *(a1 + 5))
    {
      v2 = *(a1 + 4);
      v6 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 4) - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v4 = -1;
      }

      v6 = v4;
    }
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t sub_1B070CE28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 4) = 0;
    if (a3 > 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 > 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1B070D1C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 9))
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

void *sub_1B070D30C(void *result, int a2, int a3)
{
  v3 = result;
  v4 = result + 9;
  if (a2 < 0)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 + 0x80000000;
    if (a3 < 0)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(void *a1)
{
  if ((HIBYTE(a1[1]) >> 6) < 3u)
  {
    return HIBYTE(a1[1]) >> 6;
  }

  else
  {
    return *a1 + 3;
  }
}

uint64_t get_enum_tag_for_layout_string_16IMAP2Persistence11CredentialsO(void *a1)
{
  if ((((a1[7] & 0x2000000000000000) != 0) | (a1[9] >> 59) & 6) < 4u)
  {
    return ((a1[7] & 0x2000000000000000) != 0) | ((a1[9] >> 59) & 6);
  }

  else
  {
    return *a1 + 4;
  }
}

uint64_t get_enum_tag_for_layout_string_16IMAP2Persistence11CredentialsO7MessageE12AsyncBuilderV6ResultO(uint64_t a1)
{
  v1 = (*(a1 + 56) >> 58) & 0xC;
  v2 = ~(((v1 | *(a1 + 79) & 0x30u) >> 3) | (8 * ((*(a1 + 40) >> 60) & 3 | v1))) & 0x3F;
  if (v2 >= 0x3B)
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1B070D65C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3A && *(a1 + 80))
    {
      v6 = *a1 + 57;
    }

    else
    {
      v2 = (*(a1 + 56) >> 58) & 0xC;
      v3 = ~(((v2 | *(a1 + 79) & 0x30u) >> 3) | (8 * ((*(a1 + 40) >> 60) & 3 | v2))) & 0x3F;
      if (v3 >= 0x3B)
      {
        v3 = -1;
      }

      v4 = v3 - 2;
      if (v4 < 0)
      {
        v4 = -1;
      }

      v6 = v4;
    }
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t sub_1B070D78C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x39)
  {
    *result = a2 - 58;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x39)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x39)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      v3 = ((~(a2 + 1) & 0x3F) >> 3) | (8 * (~(a2 + 1) & 0x3F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = (v3 << 60) & 0x3000000000000000;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 58) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

unint64_t sub_1B070DA34()
{
  v2 = qword_1EB6E1980;
  if (!qword_1EB6E1980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1988, qword_1B0E9A868);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1980);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070DAD4()
{
  v2 = qword_1EB6E1990;
  if (!qword_1EB6E1990)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1990);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070DB68()
{
  v2 = qword_1EB6E1998;
  if (!qword_1EB6E1998)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1998);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070DBFC()
{
  v2 = qword_1EB6E19A0;
  if (!qword_1EB6E19A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E19A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070DC90()
{
  v2 = qword_1EB6E19A8;
  if (!qword_1EB6E19A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E19A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070DD24()
{
  v2 = qword_1EB6E19B0;
  if (!qword_1EB6E19B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E19B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070DDB8()
{
  v2 = qword_1EB6E19B8;
  if (!qword_1EB6E19B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E19B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070DE4C()
{
  v2 = qword_1EB6E19C0;
  if (!qword_1EB6E19C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E19C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070DEE0()
{
  v2 = qword_1EB6E19C8;
  if (!qword_1EB6E19C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E19C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070DF74()
{
  v2 = qword_1EB6E19D0;
  if (!qword_1EB6E19D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E19D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070E008()
{
  v2 = qword_1EB6DBC90;
  if (!qword_1EB6DBC90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBC90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070E084()
{
  v2 = qword_1EB6E19D8;
  if (!qword_1EB6E19D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E19D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B070E0FC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *a2 = v4;
  *(a2 + 8) = *(a1 + 8);
  return result;
}

uint64_t sub_1B070E144(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1B0391D50(result, a2);
  }

  return result;
}

uint64_t sub_1B070E18C(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1B03B2000(result, a2);
  }

  return result;
}

void *sub_1B070E1D4(uint64_t *a1, void *a2)
{
  v14 = a1[5];
  v15 = a1[7];
  v16 = a1[9];
  if ((v14 & 0x3000000000000000) == 0x3000000000000000 && (v15 & 0x3000000000000000) == 0x3000000000000000 && (v16 & 0x3000000000000000) == 0x3000000000000000 || (v14 & 0x3000000000000000) == 0x3000000000000000 && (v15 & 0x3000000000000000) == 0x1000000000000000 && (v16 & 0x3000000000000000) == 0x3000000000000000)
  {
    memcpy(a2, a1, 0x50uLL);
  }

  else
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = a1[2];
    v6 = a1[3];
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v10 = a1[7];
    v11 = a1[8];
    v12 = a1[9];
    sub_1B0695144(*a1, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    *a2 = v3;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
    a2[4] = v7;
    a2[5] = v8;
    a2[6] = v9;
    a2[7] = v10;
    a2[8] = v11;
    a2[9] = v12;
  }

  return a2;
}

unint64_t sub_1B070E3B4()
{
  v2 = qword_1EB6DAF00;
  if (!qword_1EB6DAF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E19E0, &qword_1B0E9ABD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF00);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_2393(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_2399(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B070E528()
{
  v1 = *(sub_1B0E42A08() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1B06E80A4(v2, v3);
}

uint64_t block_copy_helper_2405(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *sub_1B070E5F4(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  v1 = a1[1];

  return a1;
}

uint64_t sub_1B070E634()
{
  v1 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v1, qword_1EB6E19E8);
  __swift_project_value_buffer(v1, qword_1EB6E19E8);
  sub_1B0E44838();
  sub_1B0E44838();
  return sub_1B0E43998();
}

uint64_t sub_1B070E6D8()
{
  if (qword_1EB6E0B38 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E439A8();
  return __swift_project_value_buffer(v0, qword_1EB6E19E8);
}

uint64_t sub_1B070E744@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC7Message17DiskSpaceObserver_volume;
  v2 = sub_1B0E42E68();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B070E7B0()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_source);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1B070E818(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_source);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B070E8A0()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_update);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_1B070E90C(*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1B070E90C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B070E940(uint64_t a1, uint64_t a2)
{
  sub_1B070E90C(a1);
  v6 = (v2 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_update);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1B04197E4(v3);
  swift_endAccess();
  return sub_1B04197E4(a1);
}

uint64_t sub_1B070E9C4()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_lastValue);
  swift_beginAccess();
  v4 = *v2;
  v5 = v2[1];
  v3 = *(v2 + 16);
  swift_endAccess();
  return v4;
}

uint64_t sub_1B070EA3C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = v3 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_lastValue;
  swift_beginAccess();
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return swift_endAccess();
}

uint64_t sub_1B070EAB8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_1B070EB1C(a1, a2, a3, a4);
}

uint64_t sub_1B070EB1C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v73 = a1;
  v82 = a2;
  v69 = a3;
  v70 = a4;
  v80 = sub_1B070F4D0;
  v57 = sub_1B070FB1C;
  v58 = sub_1B070FDB8;
  v119 = 0;
  v118 = 0;
  v116 = 0;
  v117 = 0;
  v115 = 0;
  v102 = 0;
  v71 = 0;
  v59 = sub_1B0E44288();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v63 = v27 - v62;
  v64 = sub_1B0E44238();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v71);
  v68 = v27 - v67;
  v77 = sub_1B0E42E68();
  v74 = *(v77 - 8);
  v75 = v77 - 8;
  v72 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v82);
  v76 = v27 - v72;
  v119 = v73;
  v118 = v5;
  v116 = v6;
  v117 = v7;
  v115 = v4;
  *(v4 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_source) = v8;
  v9 = (v4 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_update);
  *v9 = 0;
  v9[1] = 0;
  v10 = v4 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_lastValue;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  MEMORY[0x1E69E5928](v5);
  v11 = v73;
  v12 = v74;
  v13 = v77;
  v14 = v76;
  *(v4 + 16) = v82;
  (*(v12 + 16))(v14, v11, v13);
  (*(v74 + 32))(v4 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_volume, v76, v77);
  v81 = swift_allocObject();

  v79 = v78;
  swift_weakInit();

  v112 = v80;
  v113 = v81;
  aBlock = MEMORY[0x1E69E9820];
  v108 = 1107296256;
  v109 = 0;
  v110 = sub_1B070FA14;
  v111 = &block_descriptor_2;
  v83 = _Block_copy(&aBlock);

  v84 = MFCreateDiskSpaceObserverSource(v82, v83);
  _Block_release(v83);
  if (v84)
  {
    v56 = v84;
    v55 = v84;
    v54 = &v85;
    sub_1B0E45FE8();
    sub_1B0392800(v54, v105);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v105, 0, sizeof(v105));
    v106 = 0;
  }

  if (v106)
  {
    v51 = v114;
    sub_1B0392800(v105, v114);
    v27[0] = v104;
    sub_1B039AEC8(v51, v104);
    v27[1] = 0;
    v41 = sub_1B0421E38();
    v39 = 7;
    swift_dynamicCast();
    v50 = v103;
    v102 = v103;
    v30 = sub_1B0E44458();
    v28 = sub_1B0E46A48();
    sub_1B0E44228();
    v15 = v28;
    sub_1B0394964();
    v29 = v15;
    sub_1B039B924();
    sub_1B0E46028();
    v35 = &unk_1F26AA248;
    v36 = 24;
    v33 = swift_allocObject();
    v31 = v33 + 16;

    v32 = v78;
    swift_weakInit();

    v100 = v57;
    v101 = v33;
    v95 = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v96 = 1107296256;
    v97 = 0;
    v98 = sub_1B038C908;
    v99 = &block_descriptor_4;
    _Block_copy(&v95);
    v34 = sub_1B0E44438();

    sub_1B0E45A88();

    v43 = swift_allocObject();
    v37 = v43 + 16;

    v38 = v78;
    swift_weakInit();

    MEMORY[0x1E69E5928](v82);

    v16 = swift_allocObject();
    v17 = v58;
    v18 = v40;
    v19 = v16;
    v20 = v43;
    *(v19 + 16) = v82;
    *(v19 + 24) = v20;
    v93 = v17;
    v94 = v19;
    v88 = MEMORY[0x1E69E9820];
    v89 = v18;
    v90 = 0;
    v91 = sub_1B038C908;
    v92 = &block_descriptor_11;
    v42 = _Block_copy(&v88);
    sub_1B06D284C();
    sub_1B06D2870();
    sub_1B0E45A78();
    (*(v65 + 8))(v68, v64);
    (*(v60 + 8))(v63, v59);
    _Block_release(v42);

    MEMORY[0x1E69E5928](v50);
    v44 = (v78 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_source);
    v45 = &v87;
    v46 = 33;
    v47 = 0;
    swift_beginAccess();
    v21 = *v44;
    *v44 = v50;
    MEMORY[0x1E69E5920](v21);
    swift_endAccess();

    v48 = (v78 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_update);
    v49 = &v86;
    swift_beginAccess();
    v22 = v48;
    v23 = v70;
    v24 = *v48;
    v25 = v48[1];
    *v48 = v69;
    v22[1] = v23;
    sub_1B04197E4(v24);
    swift_endAccess();
    MEMORY[0x1E69E5920](v50);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v52 = v78;

    MEMORY[0x1E69E5920](v82);
    (*(v74 + 8))(v73, v77);
    return v52;
  }

  else
  {
    sub_1B041C0EC(v105);

    MEMORY[0x1E69E5920](v82);
    (*(v74 + 8))(v73, v77);
    return 0;
  }
}

uint64_t sub_1B070F418(char a1, uint64_t a2)
{
  v4 = a1;
  v3[4] = a2 + 16;
  swift_beginAccess();
  v3[0] = swift_weakLoadStrong();
  if (v3[0])
  {

    sub_1B0391AD4(v3);
    swift_endAccess();
    sub_1B070F4D8();
  }

  else
  {
    sub_1B0391AD4(v3);
    return swift_endAccess();
  }
}

uint64_t sub_1B070F4D8()
{
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v28 = 0;
  v29 = sub_1B0E42E68();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v33 = &v8 - v32;
  v38 = sub_1B0E44468();
  v36 = *(v38 - 8);
  v37 = v38 - 8;
  v34 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v39 = (&v8 - v34);
  v54 = v0;

  v35 = *(v0 + 16);
  MEMORY[0x1E69E5928](v35);
  v1 = v36;
  *v39 = v35;
  v2 = *MEMORY[0x1E69E8020];
  (*(v1 + 104))();
  v40 = sub_1B0E44488();
  (*(v36 + 8))(v39, v38);
  result = v40;
  if (v40)
  {

    (*(v30 + 16))(v33, v27 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_volume, v29);
    result = sub_1B0710F18(v33);
    v25 = result;
    v26 = v4;
    if ((v5 & 1) == 0)
    {
      v23 = v25;
      v24 = v26;
      v19 = v26;
      v18 = v25;
      v52 = v25;
      v53 = v26;
      v16 = v27 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_lastValue;
      v17 = &v51;
      swift_beginAccess();
      v20 = *v16;
      v21 = *(v16 + 8);
      v22 = *(v16 + 16);
      result = swift_endAccess();
      v45 = v18;
      v46 = v19;
      v47 = 0;
      v48 = v20;
      v49 = v21;
      v50 = v22 & 1;
      v41 = v18;
      v42 = v19;
      v43 = 0;
      if (v22)
      {
        v15 = 0;
      }

      else
      {
        result = sub_1B0710E64(v41, v42, v48, v49);
        v15 = result;
      }

      if ((v15 & 1) == 0)
      {
        v11 = (v27 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_lastValue);
        v12 = &v44;
        v13 = 0;
        swift_beginAccess();
        v6 = v19;
        v7 = v11;
        *v11 = v18;
        v7[1] = v6;
        *(v7 + 16) = 0;
        swift_endAccess();
        v14 = v27 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_update;
        swift_beginAccess();
        if (*v14)
        {
          v9 = *v14;
          v10 = *(v14 + 8);

          swift_endAccess();
          v9(v18, v19);
        }

        else
        {
          return swift_endAccess();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B070FA14(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1B070FA6C(uint64_t a1)
{
  v2[4] = a1 + 16;
  swift_beginAccess();
  v2[0] = swift_weakLoadStrong();
  if (v2[0])
  {

    sub_1B0391AD4(v2);
    swift_endAccess();
    sub_1B070F4D8();
  }

  else
  {
    sub_1B0391AD4(v2);
    return swift_endAccess();
  }
}

uint64_t sub_1B070FB88(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v15 = a2;
  v26 = 0;
  v25 = 0;
  v20 = sub_1B0E44468();
  v18 = *(v20 - 8);
  v19 = v20 - 8;
  v16 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&p_Strong - v16);
  v26 = v2;
  v25 = v3 + 16;
  MEMORY[0x1E69E5928](v2);
  MEMORY[0x1E69E5928](v17);
  v4 = v18;
  *v21 = v17;
  v5 = *MEMORY[0x1E69E8020];
  (*(v4 + 104))();
  v22 = sub_1B0E44488();
  (*(v18 + 8))(v21, v20);
  result = v22;
  if (v22)
  {
    MEMORY[0x1E69E5920](v17);
    v14 = v15 + 16;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      p_Strong = &Strong;
      v13 = Strong;

      sub_1B0391AD4(p_Strong);
      swift_endAccess();
      v11 = (v13 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_update);
      v12 = &v23;
      swift_beginAccess();
      v7 = v11;
      v8 = *v11;
      v9 = v11[1];
      *v11 = 0;
      v7[1] = 0;
      sub_1B04197E4(v8);
      swift_endAccess();
    }

    else
    {
      sub_1B0391AD4(&Strong);
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B070FE28()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_source);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  result = swift_endAccess();
  if (v3)
  {
    MEMORY[0x1E69E5928](v3);
    MFCreateDiskSpaceObserverActivate(v3);
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E5920](v3);
  }

  return result;
}

uint64_t sub_1B070FEF0()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_source);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  result = swift_endAccess();
  if (v3)
  {
    MEMORY[0x1E69E5928](v3);
    MFCreateDiskSpaceObserverCancel(v3);
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E5920](v3);
  }

  return result;
}

uint64_t sub_1B070FFB8()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  v3 = OBJC_IVAR____TtC7Message17DiskSpaceObserver_volume;
  v1 = sub_1B0E42E68();
  (*(*(v1 - 8) + 8))(v0 + v3);
  sub_1B06D4E94((v0 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_source));
  sub_1B0713798((v0 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_update));
  return v4;
}

uint64_t sub_1B0710068()
{
  v0 = *sub_1B070FFB8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_1B07100CC(char *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v58 = a1;
  v78 = a2;
  v76 = a3;
  v77 = a4;
  v5 = v4;
  v6 = v58;
  v59 = v5;
  v60 = sub_1B0713540;
  v61 = sub_1B039BCF8;
  v62 = sub_1B0398F5C;
  v63 = sub_1B0398F5C;
  v64 = sub_1B039BCEC;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v101 = 0;
  v102 = 0;
  v79 = 0;
  v65 = sub_1B0E439A8();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v69 = v29 - v68;
  v70 = sub_1B0E42BE8();
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70);
  v92 = v29 - v73;
  v74 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79);
  v75 = v29 - v74;
  v80 = sub_1B0E42E68();
  v82 = *(v80 - 8);
  v81 = v80 - 8;
  v83 = v82;
  v84 = *(v82 + 64);
  v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79);
  v86 = v29 - v85;
  v87 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v88 = v29 - v87;
  v106 = v29 - v87;
  v104 = v6;
  v103 = v9;
  v101 = v10;
  v102 = v11;
  v90 = type metadata accessor for URLResourceKey();
  v89 = sub_1B0E46A48();
  sub_1B06BD0C8(MEMORY[0x1E695DEB0], v12);
  v13 = v89;
  sub_1B0394964();
  v91 = v13;
  sub_1B0694CF0();
  v93 = sub_1B0E45438();
  sub_1B0E42D38();
  v94 = 0;
  v95 = 0;

  sub_1B0E42BD8();
  (*(v71 + 8))(v92, v70);
  v57 = v94;
  v56 = v94;
  if ((*(v82 + 48))(v75, 1, v80) == 1)
  {
    v14 = v69;
    sub_1B06E3800(v75);
    v15 = sub_1B070E6D8();
    (*(v66 + 16))(v14, v15, v65);
    v41 = v83;
    (*(v82 + 16))(v86, v58, v80);
    v42 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v45 = 7;
    v46 = swift_allocObject();
    (*(v82 + 32))(v46 + v42, v86, v80);
    v54 = sub_1B0E43988();
    v55 = sub_1B0E458E8();
    v43 = 17;
    v48 = swift_allocObject();
    *(v48 + 16) = 32;
    v49 = swift_allocObject();
    *(v49 + 16) = 8;
    v44 = 32;
    v16 = swift_allocObject();
    v17 = v46;
    v47 = v16;
    *(v16 + 16) = v60;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v47;
    v51 = v18;
    *(v18 + 16) = v61;
    *(v18 + 24) = v19;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v50 = sub_1B0E46A48();
    v52 = v20;

    v21 = v48;
    v22 = v52;
    *v52 = v62;
    v22[1] = v21;

    v23 = v49;
    v24 = v52;
    v52[2] = v63;
    v24[3] = v23;

    v25 = v51;
    v26 = v52;
    v52[4] = v64;
    v26[5] = v25;
    sub_1B0394964();

    if (os_log_type_enabled(v54, v55))
    {
      v27 = v56;
      v30 = sub_1B0E45D78();
      v29[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v31 = sub_1B03949A8(0);
      v32 = sub_1B03949A8(1);
      v33 = &v100;
      v100 = v30;
      v34 = &v99;
      v99 = v31;
      v35 = &v98;
      v98 = v32;
      sub_1B0394A48(2, &v100);
      sub_1B0394A48(1, v33);
      v96 = v62;
      v97 = v48;
      sub_1B03949FC(&v96, v33, v34, v35);
      v36 = v27;
      if (v27)
      {

        __break(1u);
      }

      else
      {
        v96 = v63;
        v97 = v49;
        sub_1B03949FC(&v96, &v100, &v99, &v98);
        v29[2] = 0;
        v96 = v64;
        v97 = v51;
        sub_1B03949FC(&v96, &v100, &v99, &v98);
        _os_log_impl(&dword_1B0389000, v54, v55, "Unable to get volume for path %s", v30, 0xCu);
        sub_1B03998A8(v31);
        sub_1B03998A8(v32);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v54);
    (*(v66 + 8))(v69, v65);
    goto LABEL_11;
  }

  (*(v82 + 32))(v88, v75, v80);
  (*(v82 + 16))(v86, v88, v80);
  MEMORY[0x1E69E5928](v78);

  v40 = sub_1B070EAB8(v86, v78, v76, v77);
  if (!v40)
  {

    (*(v82 + 8))(v88, v80);
LABEL_11:

    MEMORY[0x1E69E5920](v78);
    (*(v82 + 8))(v58, v80);
    return 0;
  }

  v105 = v40;
  v38 = *(v82 + 8);
  v37 = v82 + 8;
  v38(v88, v80);

  MEMORY[0x1E69E5920](v78);
  v38(v58, v80);

  return v40;
}