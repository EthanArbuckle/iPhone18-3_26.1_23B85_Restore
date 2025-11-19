uint64_t sub_1B0731CB8(uint64_t a1, int a2)
{
  v623 = v689;
  v663 = a2;
  v662 = a1;
  v658 = 0;
  v706 = 0;
  v705 = 0;
  v704 = 0;
  v703 = 0;
  v700 = 0;
  v699 = 0;
  v690 = 0;
  v689[1] = 0;
  v689[0] = 0;
  v625 = 0;
  v661 = a2 & 1;
  v626 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v627 = (*(*(v626 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v628 = v264 - v627;
  v629 = sub_1B0E439A8();
  v630 = *(v629 - 8);
  v631 = v630;
  v632 = *(v630 + 64);
  v3 = MEMORY[0x1EEE9AC00](v658);
  v634 = (v632 + 15) & 0xFFFFFFFFFFFFFFF0;
  v633 = v264 - v634;
  MEMORY[0x1EEE9AC00](v3);
  v635 = v264 - v634;
  v636 = _s6LoggerVMa_1();
  v638 = *(*(v636 - 8) + 64);
  MEMORY[0x1EEE9AC00](v636 - 8);
  v640 = (v638 + 15) & 0xFFFFFFFFFFFFFFF0;
  v637 = v264 - v640;
  v4 = MEMORY[0x1EEE9AC00](v264 - v640);
  v639 = v264 - v640;
  MEMORY[0x1EEE9AC00](v4);
  v641 = v264 - v640;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C58, &qword_1B0E9B050);
  v642 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5 - 8);
  v643 = v264 - v642;
  v644 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C60, &qword_1B0E9B058) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v658);
  v645 = v264 - v644;
  v646 = sub_1B0E42B78();
  v647 = *(v646 - 8);
  v648 = v647;
  v6 = *(v647 + 64);
  MEMORY[0x1EEE9AC00](v658);
  v649 = v264 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v650 = sub_1B0E431B8();
  v651 = *(v650 - 8);
  v652 = v651;
  v8 = *(v651 + 64);
  MEMORY[0x1EEE9AC00](v658);
  v653 = v264 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v654 = sub_1B0E43228();
  v655 = *(v654 - 8);
  v656 = v655;
  v10 = *(v655 + 64);
  MEMORY[0x1EEE9AC00](v654 - 8);
  v657 = v264 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v659 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v658);
  v660 = v264 - v659;
  v664 = sub_1B0E43108();
  v665 = *(v664 - 8);
  v666 = v665;
  v668 = *(v665 + 64);
  v667 = v668;
  v12 = MEMORY[0x1EEE9AC00](v662);
  v670 = (v668 + 15) & 0xFFFFFFFFFFFFFFF0;
  v669 = v264 - v670;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v671 = v264 - v670;
  v706 = v264 - v670;
  v705 = v13;
  v704 = v14;
  v703 = v2;
  if (v15)
  {
    goto LABEL_30;
  }

  v621 = sub_1B0829EAC();
  v622 = MailboxName.isInbox.getter(v621, v16);

  if (v622)
  {
    goto LABEL_30;
  }

  v618 = *(v624 + 16);
  v17 = v618;
  v619 = [v618 type];

  v702 = v619;
  v701 = 3;
  v620 = type metadata accessor for ECMailboxType();
  sub_1B0692640();
  if ((sub_1B0E46AE8() & 1) == 0)
  {
    goto LABEL_30;
  }

  v617 = sub_1B0740AC0();
  if (v18)
  {
    goto LABEL_30;
  }

  v616 = v617;
  v614 = v617;
  v700 = v617;
  (*(v652 + 104))(v653, *MEMORY[0x1E6969868], v650);
  sub_1B0E431C8();
  (*(v652 + 8))(v653, v650);
  v19 = *(v656 + 56);
  v613 = 1;
  v19(v645, 1, 1, v654);
  v20 = sub_1B0E43358();
  result = (*(*(v20 - 8) + 56))(v643, v613);
  v22 = __OFADD__(v614, 1);
  v615 = (v614 + 1);
  if (v22)
  {
    goto LABEL_33;
  }

  v23 = __OFSUB__(0, v615);
  v612 = -v615;
  if (v23)
  {
    goto LABEL_34;
  }

  v607 = &v242;
  v611 = 1;
  v263 = 1;
  v608 = 0;
  *iCloudCleanup = 0;
  v261 = 1;
  v260 = 0;
  v259 = 1;
  v258 = 0;
  v257 = 1;
  v256 = 0;
  v255 = 1;
  v254 = 0;
  v253 = 1;
  v252 = 0;
  v251 = 1;
  v250 = 0;
  v249 = 1;
  v248 = 0;
  v247 = 1;
  v246 = 0;
  v245 = 1;
  v244 = 0;
  v243 = 0;
  v242 = v612;
  sub_1B0E42B58();
  sub_1B0E430F8();
  sub_1B0394868();
  sub_1B0E431F8();
  v609 = *(v666 + 8);
  v610 = (v666 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v609(v669, v664);
  (*(v648 + 8))(v649, v646);
  (*(v656 + 8))(v657, v654);
  if ((*(v666 + 48))(v660, v611, v664) == 1)
  {
    sub_1B06B97A8(v660);
LABEL_30:
    v266 = 0;
    v268 = sub_1B0E46A48();
    v269 = v266;
    v270 = v266;
    v271 = v266;
    v272 = v266;
    v273 = v625;
    goto LABEL_31;
  }

  v24 = v635;
  v529 = *(v666 + 32);
  v528 = v666 + 32;
  v512 = v529;
  v513 = (v666 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v529(v671, v660, v664);
  v516 = &OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger;
  sub_1B074B69C(v624 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v641);
  v514 = *(v631 + 16);
  v515 = (v631 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v514(v24, v641, v629);
  sub_1B074B764(v641);

  sub_1B074B69C(v624 + *v516, v639);
  v25 = (v639 + *(v636 + 20));
  v519 = *v25;
  v520 = *(v25 + 1);
  v521 = *(v25 + 1);
  v522 = *(v25 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v639);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v518 = 36;
  v572 = 7;
  v26 = swift_allocObject();
  v27 = v520;
  v28 = v521;
  v29 = v522;
  v538 = v26;
  *(v26 + 16) = v519;
  *(v26 + 20) = v27;
  *(v26 + 24) = v28;
  *(v26 + 32) = v29;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30 = swift_allocObject();
  v31 = v520;
  v32 = v521;
  v33 = v522;
  v517 = v30;
  *(v30 + 16) = v519;
  *(v30 + 20) = v31;
  *(v30 + 24) = v32;
  *(v30 + 32) = v33;

  v571 = 32;
  v34 = swift_allocObject();
  v35 = v517;
  v547 = v34;
  *(v34 + 16) = sub_1B074E050;
  *(v34 + 24) = v35;
  sub_1B0394868();
  sub_1B0394868();

  v36 = swift_allocObject();
  v37 = v520;
  v38 = v521;
  v39 = v522;
  v556 = v36;
  *(v36 + 16) = v519;
  *(v36 + 20) = v37;
  *(v36 + 24) = v38;
  *(v36 + 32) = v39;

  v40 = *(v666 + 16);
  v525 = v666 + 16;
  v523 = v40;
  v524 = (v666 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v40(v669, v671, v664);
  v526 = *(v525 + 64);
  v527 = (v526 + 16) & ~v526;
  v573 = swift_allocObject();
  v529(v573 + v527, v669, v664);
  sub_1B0394868();
  sub_1B0394868();
  v606 = sub_1B0E43988();
  v530 = v606;
  v605 = sub_1B0E458D8();
  v531 = v605;
  v567 = 17;
  v578 = swift_allocObject();
  v532 = v578;
  v559 = 16;
  *(v578 + 16) = 16;
  v579 = swift_allocObject();
  v533 = v579;
  v561 = 4;
  *(v579 + 16) = 4;
  v41 = swift_allocObject();
  v534 = v41;
  *(v41 + 16) = sub_1B0394C30;
  v563 = 0;
  *(v41 + 24) = 0;
  v42 = swift_allocObject();
  v43 = v534;
  v580 = v42;
  v535 = v42;
  *(v42 + 16) = sub_1B0394C24;
  *(v42 + 24) = v43;
  v581 = swift_allocObject();
  v536 = v581;
  v566 = 0;
  *(v581 + 16) = 0;
  v582 = swift_allocObject();
  v537 = v582;
  *(v582 + 16) = 1;
  v44 = swift_allocObject();
  v45 = v538;
  v539 = v44;
  *(v44 + 16) = sub_1B074DFFC;
  *(v44 + 24) = v45;
  v46 = swift_allocObject();
  v47 = v539;
  v583 = v46;
  v540 = v46;
  *(v46 + 16) = sub_1B039BA88;
  *(v46 + 24) = v47;
  v584 = swift_allocObject();
  v541 = v584;
  *(v584 + 16) = v559;
  v585 = swift_allocObject();
  v542 = v585;
  *(v585 + 16) = v561;
  v48 = swift_allocObject();
  v49 = v563;
  v543 = v48;
  *(v48 + 16) = sub_1B039BB94;
  *(v48 + 24) = v49;
  v50 = swift_allocObject();
  v51 = v543;
  v586 = v50;
  v544 = v50;
  *(v50 + 16) = sub_1B0394C24;
  *(v50 + 24) = v51;
  v587 = swift_allocObject();
  v545 = v587;
  *(v587 + 16) = v566;
  v588 = swift_allocObject();
  v546 = v588;
  *(v588 + 16) = v561;
  v52 = swift_allocObject();
  v53 = v547;
  v548 = v52;
  *(v52 + 16) = sub_1B039BBA0;
  *(v52 + 24) = v53;
  v54 = swift_allocObject();
  v55 = v548;
  v589 = v54;
  v549 = v54;
  *(v54 + 16) = sub_1B039BC08;
  *(v54 + 24) = v55;
  v590 = swift_allocObject();
  v550 = v590;
  *(v590 + 16) = 112;
  v591 = swift_allocObject();
  v551 = v591;
  v569 = 8;
  *(v591 + 16) = 8;
  v576 = 24;
  v552 = swift_allocObject();
  *(v552 + 16) = 0x786F626C69616DLL;
  v56 = swift_allocObject();
  v57 = v552;
  v592 = v56;
  v553 = v56;
  *(v56 + 16) = sub_1B06BA324;
  *(v56 + 24) = v57;
  v593 = swift_allocObject();
  v554 = v593;
  *(v593 + 16) = 37;
  v594 = swift_allocObject();
  v555 = v594;
  *(v594 + 16) = v569;
  v58 = swift_allocObject();
  v59 = v556;
  v557 = v58;
  *(v58 + 16) = sub_1B074E0E4;
  *(v58 + 24) = v59;
  v60 = swift_allocObject();
  v61 = v557;
  v595 = v60;
  v558 = v60;
  *(v60 + 16) = sub_1B039BCF8;
  *(v60 + 24) = v61;
  v596 = swift_allocObject();
  v560 = v596;
  *(v596 + 16) = v559;
  v597 = swift_allocObject();
  v562 = v597;
  *(v597 + 16) = v561;
  v62 = swift_allocObject();
  v63 = v563;
  v564 = v62;
  *(v62 + 16) = sub_1B0740C28;
  *(v62 + 24) = v63;
  v64 = swift_allocObject();
  v65 = v564;
  v598 = v64;
  v565 = v64;
  *(v64 + 16) = sub_1B0394C24;
  *(v64 + 24) = v65;
  v599 = swift_allocObject();
  v568 = v599;
  *(v599 + 16) = v566;
  v600 = swift_allocObject();
  v570 = v600;
  *(v600 + 16) = v569;
  v66 = swift_allocObject();
  v67 = v573;
  v574 = v66;
  *(v66 + 16) = sub_1B074E8C4;
  *(v66 + 24) = v67;
  v68 = swift_allocObject();
  v69 = v574;
  v603 = v68;
  v575 = v68;
  *(v68 + 16) = sub_1B074E950;
  *(v68 + 24) = v69;
  v604 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v577 = v604;
  v601 = sub_1B0E46A48();
  v602 = v70;

  v71 = v578;
  v72 = v602;
  *v602 = sub_1B0398F5C;
  v72[1] = v71;

  v73 = v579;
  v74 = v602;
  v602[2] = sub_1B0398F5C;
  v74[3] = v73;

  v75 = v580;
  v76 = v602;
  v602[4] = sub_1B0399178;
  v76[5] = v75;

  v77 = v581;
  v78 = v602;
  v602[6] = sub_1B0398F5C;
  v78[7] = v77;

  v79 = v582;
  v80 = v602;
  v602[8] = sub_1B0398F5C;
  v80[9] = v79;

  v81 = v583;
  v82 = v602;
  v602[10] = sub_1B039BA94;
  v82[11] = v81;

  v83 = v584;
  v84 = v602;
  v602[12] = sub_1B0398F5C;
  v84[13] = v83;

  v85 = v585;
  v86 = v602;
  v602[14] = sub_1B0398F5C;
  v86[15] = v85;

  v87 = v586;
  v88 = v602;
  v602[16] = sub_1B0399178;
  v88[17] = v87;

  v89 = v587;
  v90 = v602;
  v602[18] = sub_1B0398F5C;
  v90[19] = v89;

  v91 = v588;
  v92 = v602;
  v602[20] = sub_1B0398F5C;
  v92[21] = v91;

  v93 = v589;
  v94 = v602;
  v602[22] = sub_1B03991EC;
  v94[23] = v93;

  v95 = v590;
  v96 = v602;
  v602[24] = sub_1B0398F5C;
  v96[25] = v95;

  v97 = v591;
  v98 = v602;
  v602[26] = sub_1B0398F5C;
  v98[27] = v97;

  v99 = v592;
  v100 = v602;
  v602[28] = sub_1B03993BC;
  v100[29] = v99;

  v101 = v593;
  v102 = v602;
  v602[30] = sub_1B0398F5C;
  v102[31] = v101;

  v103 = v594;
  v104 = v602;
  v602[32] = sub_1B0398F5C;
  v104[33] = v103;

  v105 = v595;
  v106 = v602;
  v602[34] = sub_1B039BCEC;
  v106[35] = v105;

  v107 = v596;
  v108 = v602;
  v602[36] = sub_1B0398F5C;
  v108[37] = v107;

  v109 = v597;
  v110 = v602;
  v602[38] = sub_1B0398F5C;
  v110[39] = v109;

  v111 = v598;
  v112 = v602;
  v602[40] = sub_1B0399178;
  v112[41] = v111;

  v113 = v599;
  v114 = v602;
  v602[42] = sub_1B0398F5C;
  v114[43] = v113;

  v115 = v600;
  v116 = v602;
  v602[44] = sub_1B0398F5C;
  v116[45] = v115;

  v117 = v602;
  v118 = v603;
  v602[46] = sub_1B074E9C8;
  v117[47] = v118;
  sub_1B0394964();

  if (os_log_type_enabled(v606, v605))
  {
    v119 = v625;
    v506 = sub_1B0E45D78();
    v503 = v506;
    v504 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v507 = sub_1B03949A8(0);
    v505 = v507;
    v508 = sub_1B03949A8(1);
    v676 = v506;
    v675 = v507;
    v674 = v508;
    v509 = &v676;
    sub_1B0394A48(3, &v676);
    sub_1B0394A48(8, v509);
    v672 = sub_1B0398F5C;
    v673 = v532;
    sub_1B03949FC(&v672, v509, &v675, &v674);
    v510 = v119;
    v511 = v119;
    if (v119)
    {
      v501 = 0;

      __break(1u);
    }

    else
    {
      v672 = sub_1B0398F5C;
      v673 = v533;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v499 = 0;
      v500 = 0;
      v672 = sub_1B0399178;
      v673 = v535;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v497 = 0;
      v498 = 0;
      v672 = sub_1B0398F5C;
      v673 = v536;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v495 = 0;
      v496 = 0;
      v672 = sub_1B0398F5C;
      v673 = v537;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v493 = 0;
      v494 = 0;
      v672 = sub_1B039BA94;
      v673 = v540;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v491 = 0;
      v492 = 0;
      v672 = sub_1B0398F5C;
      v673 = v541;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v489 = 0;
      v490 = 0;
      v672 = sub_1B0398F5C;
      v673 = v542;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v487 = 0;
      v488 = 0;
      v672 = sub_1B0399178;
      v673 = v544;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v485 = 0;
      v486 = 0;
      v672 = sub_1B0398F5C;
      v673 = v545;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v483 = 0;
      v484 = 0;
      v672 = sub_1B0398F5C;
      v673 = v546;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v481 = 0;
      v482 = 0;
      v672 = sub_1B03991EC;
      v673 = v549;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v479 = 0;
      v480 = 0;
      v672 = sub_1B0398F5C;
      v673 = v550;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v477 = 0;
      v478 = 0;
      v672 = sub_1B0398F5C;
      v673 = v551;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v475 = 0;
      v476 = 0;
      v672 = sub_1B03993BC;
      v673 = v553;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v473 = 0;
      v474 = 0;
      v672 = sub_1B0398F5C;
      v673 = v554;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v471 = 0;
      v472 = 0;
      v672 = sub_1B0398F5C;
      v673 = v555;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v469 = 0;
      v470 = 0;
      v672 = sub_1B039BCEC;
      v673 = v558;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v467 = 0;
      v468 = 0;
      v672 = sub_1B0398F5C;
      v673 = v560;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v465 = 0;
      v466 = 0;
      v672 = sub_1B0398F5C;
      v673 = v562;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v463 = 0;
      v464 = 0;
      v672 = sub_1B0399178;
      v673 = v565;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v461 = 0;
      v462 = 0;
      v672 = sub_1B0398F5C;
      v673 = v568;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v459 = 0;
      v460 = 0;
      v672 = sub_1B0398F5C;
      v673 = v570;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v457 = 0;
      v458 = 0;
      v672 = sub_1B074E9C8;
      v673 = v575;
      sub_1B03949FC(&v672, &v676, &v675, &v674);
      v455 = 0;
      v456 = 0;
      _os_log_impl(&dword_1B0389000, v530, v531, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Looking for trashed messages that are more than %.*f hours old.", v503, 0x3Bu);
      sub_1B03998A8(v505);
      sub_1B03998A8(v508);
      sub_1B0E45D58();

      v502 = v455;
    }
  }

  else
  {
    v120 = v625;

    v502 = v120;
  }

  v121 = v669;
  v439 = v502;

  v440 = *(v631 + 8);
  v441 = (v631 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v440(v635, v629);
  v122 = swift_allocBox();
  v446 = v123;
  v442 = v122;
  v443 = v123;
  v699 = v123;
  v124 = sub_1B041C1E8();
  MessageIdentifierSet.init()(&type metadata for UID, v124);
  v450 = *(v624 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence);
  v444 = v450;
  v125 = v450;
  v523(v121, v671, v664);
  v451 = sub_1B0E43068();
  v445 = v451;
  v609(v669, v664);
  v447 = 7;
  v449 = swift_allocObject();
  *(v449 + 16) = v446;

  v448 = v449;
  v126 = swift_allocObject();
  v127 = v449;
  v453 = v126;
  *(v126 + 16) = sub_1B074E9D4;
  *(v126 + 24) = v127;

  v697 = sub_1B074E9DC;
  v698 = v453;
  aBlock = MEMORY[0x1E69E9820];
  v693 = 1107296256;
  v694 = 0;
  v695 = sub_1B0740D3C;
  v696 = &block_descriptor_4;
  v452 = _Block_copy(&aBlock);

  [v450 enumerateUIDsInOlderThanDate:v451 limit:v662 withBlock:v452];
  _Block_release(v452);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v128 = v633;

    v350 = &OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger;
    sub_1B074B69C(v624 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v637);
    v514(v128, v637, v629);
    sub_1B074B764(v637);

    sub_1B074B69C(v624 + *v350, v639);
    v129 = (v639 + *(v636 + 20));
    v353 = *v129;
    v354 = *(v129 + 1);
    v355 = *(v129 + 1);
    v356 = *(v129 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v639);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v352 = 36;
    v404 = 7;
    v130 = swift_allocObject();
    v131 = v354;
    v132 = v355;
    v133 = v356;
    v366 = v130;
    *(v130 + 16) = v353;
    *(v130 + 20) = v131;
    *(v130 + 24) = v132;
    *(v130 + 32) = v133;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v134 = swift_allocObject();
    v135 = v354;
    v136 = v355;
    v137 = v356;
    v351 = v134;
    *(v134 + 16) = v353;
    *(v134 + 20) = v135;
    *(v134 + 24) = v136;
    *(v134 + 32) = v137;

    v403 = 32;
    v138 = swift_allocObject();
    v139 = v351;
    v375 = v138;
    *(v138 + 16) = sub_1B074E050;
    *(v138 + 24) = v139;
    sub_1B0394868();
    sub_1B0394868();

    v140 = swift_allocObject();
    v141 = v354;
    v142 = v355;
    v143 = v356;
    v384 = v140;
    *(v140 + 16) = v353;
    *(v140 + 20) = v141;
    *(v140 + 24) = v142;
    *(v140 + 32) = v143;

    v523(v669, v671, v664);
    v357 = (v526 + 16) & ~v526;
    v405 = swift_allocObject();
    v512(v405 + v357, v669, v664);
    sub_1B0394868();
    sub_1B0394868();
    v438 = sub_1B0E43988();
    v358 = v438;
    v437 = sub_1B0E45908();
    v359 = v437;
    v399 = 17;
    v408 = swift_allocObject();
    v360 = v408;
    v391 = 16;
    *(v408 + 16) = 16;
    v409 = swift_allocObject();
    v361 = v409;
    v393 = 4;
    *(v409 + 16) = 4;
    v144 = swift_allocObject();
    v362 = v144;
    *(v144 + 16) = sub_1B0394C30;
    v395 = 0;
    *(v144 + 24) = 0;
    v145 = swift_allocObject();
    v146 = v362;
    v410 = v145;
    v363 = v145;
    *(v145 + 16) = sub_1B0394C24;
    *(v145 + 24) = v146;
    v411 = swift_allocObject();
    v364 = v411;
    v398 = 0;
    *(v411 + 16) = 0;
    v412 = swift_allocObject();
    v365 = v412;
    *(v412 + 16) = 1;
    v147 = swift_allocObject();
    v148 = v366;
    v367 = v147;
    *(v147 + 16) = sub_1B074DFFC;
    *(v147 + 24) = v148;
    v149 = swift_allocObject();
    v150 = v367;
    v413 = v149;
    v368 = v149;
    *(v149 + 16) = sub_1B039BA88;
    *(v149 + 24) = v150;
    v414 = swift_allocObject();
    v369 = v414;
    *(v414 + 16) = v391;
    v415 = swift_allocObject();
    v370 = v415;
    *(v415 + 16) = v393;
    v151 = swift_allocObject();
    v152 = v395;
    v371 = v151;
    *(v151 + 16) = sub_1B039BB94;
    *(v151 + 24) = v152;
    v153 = swift_allocObject();
    v154 = v371;
    v416 = v153;
    v372 = v153;
    *(v153 + 16) = sub_1B0394C24;
    *(v153 + 24) = v154;
    v417 = swift_allocObject();
    v373 = v417;
    *(v417 + 16) = v398;
    v418 = swift_allocObject();
    v374 = v418;
    *(v418 + 16) = v393;
    v155 = swift_allocObject();
    v156 = v375;
    v376 = v155;
    *(v155 + 16) = sub_1B039BBA0;
    *(v155 + 24) = v156;
    v157 = swift_allocObject();
    v158 = v376;
    v419 = v157;
    v377 = v157;
    *(v157 + 16) = sub_1B039BC08;
    *(v157 + 24) = v158;
    v420 = swift_allocObject();
    v378 = v420;
    *(v420 + 16) = 112;
    v421 = swift_allocObject();
    v379 = v421;
    v401 = 8;
    *(v421 + 16) = 8;
    v380 = swift_allocObject();
    *(v380 + 16) = 0x786F626C69616DLL;
    v159 = swift_allocObject();
    v160 = v380;
    v422 = v159;
    v381 = v159;
    *(v159 + 16) = sub_1B06BA324;
    *(v159 + 24) = v160;
    v423 = swift_allocObject();
    v382 = v423;
    *(v423 + 16) = 37;
    v424 = swift_allocObject();
    v383 = v424;
    *(v424 + 16) = v401;
    v161 = swift_allocObject();
    v162 = v384;
    v385 = v161;
    *(v161 + 16) = sub_1B074E0E4;
    *(v161 + 24) = v162;
    v163 = swift_allocObject();
    v164 = v385;
    v425 = v163;
    v386 = v163;
    *(v163 + 16) = sub_1B039BCF8;
    *(v163 + 24) = v164;
    v426 = swift_allocObject();
    v387 = v426;
    *(v426 + 16) = v398;
    v427 = swift_allocObject();
    v388 = v427;
    *(v427 + 16) = v401;
    v165 = swift_allocObject();
    v166 = v442;
    v389 = v165;
    *(v165 + 16) = sub_1B074E9E8;
    *(v165 + 24) = v166;
    v167 = swift_allocObject();
    v168 = v389;
    v428 = v167;
    v390 = v167;
    *(v167 + 16) = sub_1B03B0DF8;
    *(v167 + 24) = v168;
    v429 = swift_allocObject();
    v392 = v429;
    *(v429 + 16) = v391;
    v430 = swift_allocObject();
    v394 = v430;
    *(v430 + 16) = v393;
    v169 = swift_allocObject();
    v170 = v395;
    v396 = v169;
    *(v169 + 16) = sub_1B0740C28;
    *(v169 + 24) = v170;
    v171 = swift_allocObject();
    v172 = v396;
    v431 = v171;
    v397 = v171;
    *(v171 + 16) = sub_1B0394C24;
    *(v171 + 24) = v172;
    v432 = swift_allocObject();
    v400 = v432;
    *(v432 + 16) = v398;
    v433 = swift_allocObject();
    v402 = v433;
    *(v433 + 16) = v401;
    v173 = swift_allocObject();
    v174 = v405;
    v406 = v173;
    *(v173 + 16) = sub_1B074E8C4;
    *(v173 + 24) = v174;
    v175 = swift_allocObject();
    v176 = v406;
    v436 = v175;
    v407 = v175;
    *(v175 + 16) = sub_1B074E950;
    *(v175 + 24) = v176;
    v434 = sub_1B0E46A48();
    v435 = v177;

    v178 = v408;
    v179 = v435;
    *v435 = sub_1B0398F5C;
    v179[1] = v178;

    v180 = v409;
    v181 = v435;
    v435[2] = sub_1B0398F5C;
    v181[3] = v180;

    v182 = v410;
    v183 = v435;
    v435[4] = sub_1B0399178;
    v183[5] = v182;

    v184 = v411;
    v185 = v435;
    v435[6] = sub_1B0398F5C;
    v185[7] = v184;

    v186 = v412;
    v187 = v435;
    v435[8] = sub_1B0398F5C;
    v187[9] = v186;

    v188 = v413;
    v189 = v435;
    v435[10] = sub_1B039BA94;
    v189[11] = v188;

    v190 = v414;
    v191 = v435;
    v435[12] = sub_1B0398F5C;
    v191[13] = v190;

    v192 = v415;
    v193 = v435;
    v435[14] = sub_1B0398F5C;
    v193[15] = v192;

    v194 = v416;
    v195 = v435;
    v435[16] = sub_1B0399178;
    v195[17] = v194;

    v196 = v417;
    v197 = v435;
    v435[18] = sub_1B0398F5C;
    v197[19] = v196;

    v198 = v418;
    v199 = v435;
    v435[20] = sub_1B0398F5C;
    v199[21] = v198;

    v200 = v419;
    v201 = v435;
    v435[22] = sub_1B03991EC;
    v201[23] = v200;

    v202 = v420;
    v203 = v435;
    v435[24] = sub_1B0398F5C;
    v203[25] = v202;

    v204 = v421;
    v205 = v435;
    v435[26] = sub_1B0398F5C;
    v205[27] = v204;

    v206 = v422;
    v207 = v435;
    v435[28] = sub_1B03993BC;
    v207[29] = v206;

    v208 = v423;
    v209 = v435;
    v435[30] = sub_1B0398F5C;
    v209[31] = v208;

    v210 = v424;
    v211 = v435;
    v435[32] = sub_1B0398F5C;
    v211[33] = v210;

    v212 = v425;
    v213 = v435;
    v435[34] = sub_1B039BCEC;
    v213[35] = v212;

    v214 = v426;
    v215 = v435;
    v435[36] = sub_1B0398F5C;
    v215[37] = v214;

    v216 = v427;
    v217 = v435;
    v435[38] = sub_1B0398F5C;
    v217[39] = v216;

    v218 = v428;
    v219 = v435;
    v435[40] = sub_1B0399260;
    v219[41] = v218;

    v220 = v429;
    v221 = v435;
    v435[42] = sub_1B0398F5C;
    v221[43] = v220;

    v222 = v430;
    v223 = v435;
    v435[44] = sub_1B0398F5C;
    v223[45] = v222;

    v224 = v431;
    v225 = v435;
    v435[46] = sub_1B0399178;
    v225[47] = v224;

    v226 = v432;
    v227 = v435;
    v435[48] = sub_1B0398F5C;
    v227[49] = v226;

    v228 = v433;
    v229 = v435;
    v435[50] = sub_1B0398F5C;
    v229[51] = v228;

    v230 = v435;
    v231 = v436;
    v435[52] = sub_1B074E9C8;
    v230[53] = v231;
    sub_1B0394964();

    if (os_log_type_enabled(v438, v437))
    {
      v232 = v439;
      v344 = sub_1B0E45D78();
      v341 = v344;
      v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v345 = sub_1B03949A8(0);
      v343 = v345;
      v346 = sub_1B03949A8(1);
      v681[0] = v344;
      v680 = v345;
      v679 = v346;
      v347 = v681;
      sub_1B0394A48(3, v681);
      sub_1B0394A48(9, v347);
      v677 = sub_1B0398F5C;
      v678 = v360;
      sub_1B03949FC(&v677, v347, &v680, &v679);
      v348 = v232;
      v349 = v232;
      if (v232)
      {
        v339 = 0;

        __break(1u);
      }

      else
      {
        v677 = sub_1B0398F5C;
        v678 = v361;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v337 = 0;
        v338 = 0;
        v677 = sub_1B0399178;
        v678 = v363;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v335 = 0;
        v336 = 0;
        v677 = sub_1B0398F5C;
        v678 = v364;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v333 = 0;
        v334 = 0;
        v677 = sub_1B0398F5C;
        v678 = v365;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v331 = 0;
        v332 = 0;
        v677 = sub_1B039BA94;
        v678 = v368;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v329 = 0;
        v330 = 0;
        v677 = sub_1B0398F5C;
        v678 = v369;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v327 = 0;
        v328 = 0;
        v677 = sub_1B0398F5C;
        v678 = v370;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v325 = 0;
        v326 = 0;
        v677 = sub_1B0399178;
        v678 = v372;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v323 = 0;
        v324 = 0;
        v677 = sub_1B0398F5C;
        v678 = v373;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v321 = 0;
        v322 = 0;
        v677 = sub_1B0398F5C;
        v678 = v374;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v319 = 0;
        v320 = 0;
        v677 = sub_1B03991EC;
        v678 = v377;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v317 = 0;
        v318 = 0;
        v677 = sub_1B0398F5C;
        v678 = v378;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v315 = 0;
        v316 = 0;
        v677 = sub_1B0398F5C;
        v678 = v379;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v313 = 0;
        v314 = 0;
        v677 = sub_1B03993BC;
        v678 = v381;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v311 = 0;
        v312 = 0;
        v677 = sub_1B0398F5C;
        v678 = v382;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v309 = 0;
        v310 = 0;
        v677 = sub_1B0398F5C;
        v678 = v383;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v307 = 0;
        v308 = 0;
        v677 = sub_1B039BCEC;
        v678 = v386;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v305 = 0;
        v306 = 0;
        v677 = sub_1B0398F5C;
        v678 = v387;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v303 = 0;
        v304 = 0;
        v677 = sub_1B0398F5C;
        v678 = v388;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v301 = 0;
        v302 = 0;
        v677 = sub_1B0399260;
        v678 = v390;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v299 = 0;
        v300 = 0;
        v677 = sub_1B0398F5C;
        v678 = v392;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v297 = 0;
        v298 = 0;
        v677 = sub_1B0398F5C;
        v678 = v394;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v295 = 0;
        v296 = 0;
        v677 = sub_1B0399178;
        v678 = v397;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v293 = 0;
        v294 = 0;
        v677 = sub_1B0398F5C;
        v678 = v400;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v291 = 0;
        v292 = 0;
        v677 = sub_1B0398F5C;
        v678 = v402;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v289 = 0;
        v290 = 0;
        v677 = sub_1B074E9C8;
        v678 = v407;
        sub_1B03949FC(&v677, v681, &v680, &v679);
        v287 = 0;
        v288 = 0;
        _os_log_impl(&dword_1B0389000, v358, v359, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Found %ld trashed message(s) that are more than %.*f hours old.", v341, 0x45u);
        sub_1B03998A8(v343);
        sub_1B03998A8(v346);
        sub_1B0E45D58();

        v340 = v287;
      }
    }

    else
    {
      v233 = v439;

      v340 = v233;
    }

    v234 = v628;
    v235 = v340;

    v440(v633, v629);
    v281 = sub_1B0394868();
    v274 = sub_1B0394868();
    v275 = sub_1B0394868();
    v276 = sub_1B0394868();
    v277 = sub_1B0394868();
    v278 = sub_1B0394868();
    v279 = sub_1B03904C0();
    v280 = sub_1B03904C0();
    v236 = sub_1B0394868();
    v707 = Flags.init(unread:deleted:answered:draft:forwarded:redirected:junk:label:iCloudCleanup:)(v281 & 1, v274 & 1, v275 & 1, v276 & 1, v277 & 1, v278 & 1, v279, v280, v236 & 1);
    v687 = *&v707.unread;
    v688 = v707.iCloudCleanup;
    LOWORD(v685) = *&v707.unread;
    BYTE2(v685) = v707.answered;
    BYTE3(v685) = v707.draft;
    BYTE4(v685) = v707.forwarded;
    BYTE5(v685) = v707.redirected;
    BYTE6(v685) = v707.junk;
    HIBYTE(v685) = v707.label;
    v686 = v707.iCloudCleanup;
    *&v707.unread = v685;
    v707.iCloudCleanup &= 1u;
    v708 = FlagsWithModifications.init(flags:)(v707);
    v237 = v623;
    *&v683 = *&v708.flags.unread;
    *(&v683 + 1) = *&v708.flags.iCloudCleanup;
    v684 = *&v708.originalFlags.value.label;
    v691 = *&v708.originalFlags.value.label;
    *(v623 + 2) = v683;
    v238 = v237[2];
    v690 = v691;
    *v237 = v238;
    BYTE1(v689[0]) = 1;
    v282 = &v682;
    swift_beginAccess();
    sub_1B03D08AC(v443, v234);
    swift_endAccess();
    v283 = v264;
    MEMORY[0x1EEE9AC00](v264);
    v284 = &v260;
    *iCloudCleanup = v689;
    v239 = sub_1B074B4A4();
    v241 = sub_1B039CA88(sub_1B074E9F0, v284, v626, &type metadata for FlagsChange, MEMORY[0x1E69E73E0], v239, MEMORY[0x1E69E7410], v240);
    v285 = v235;
    v286 = v241;
    if (!v235)
    {
      v267 = v286;
      sub_1B03D09B8(v628);

      v609(v671, v664);
      v268 = v267;
      v269 = sub_1B074E9D4;
      v270 = v448;
      v271 = 0;
      v272 = 0;
      v273 = v285;
LABEL_31:
      v264[1] = v272;
      v264[0] = v271;
      v265 = v268;
      sub_1B04197E4(v269);
      sub_1B04197E4(v264[0]);
      return v265;
    }

    result = 0;
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0735EEC@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v19 = 0;
  v18 = sub_1B071E8EC;
  v11 = sub_1B0741178;
  v27 = 0;
  v26 = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v6 - v12;
  v14 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v6 - v12);
  v22 = &v6 - v14;
  v15 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v6 - v14);
  v17 = &v6 - v15;
  v27 = &v6 - v15;
  v26 = v1;
  v16 = *v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = v16;
  v4 = sub_1B041C1E8();
  MessageIdentifierSet.init()(&type metadata for UID, v4);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1BE8, &qword_1B0ECD5D0);
  sub_1B074E7E0();
  sub_1B0E44FD8();
  v23 = 0;
  sub_1B039E440(&v25);
  v7 = *(v10 + *(_s21UnfilteredFlagChangesVMa() + 24));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24 = v7;
  sub_1B03D08AC(v17, v13);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C48, &qword_1B0E9B038);
  sub_1B074EA1C();
  sub_1B0E44FD8();
  sub_1B039E440(&v24);
  return sub_1B03D09B8(v17);
}

uint64_t sub_1B0736144()
{
  v19 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v4 - v12;
  v19 = v0;
  v15 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = v15;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1BE8, &qword_1B0ECD5D0);
  sub_1B074B7E4();
  v16 = sub_1B0E45748();

  if (v16)
  {
    v1 = v13;
    v2 = _s21UnfilteredFlagChangesVMa();
    sub_1B03D08AC(v10 + *(v2 + 20), v1);
    v8 = MessageIdentifierSet.isEmpty.getter();
    sub_1B03D09B8(v13);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v5 = *(v10 + *(_s21UnfilteredFlagChangesVMa() + 24));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = v5;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C48, &qword_1B0E9B038);
    sub_1B074EAA4();
    v6 = sub_1B0E45748();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t *sub_1B0736314@<X0>(uint64_t a1@<X8>)
{
  v136 = v231;
  v137 = &v197;
  v139 = a1;
  v161 = 0;
  v230 = 0;
  v229 = 0;
  v228 = 0;
  v227 = 0;
  v226 = 0;
  v225 = 0;
  v224 = 0;
  v223[1] = 0;
  v223[0] = 0;
  v140 = 0u;
  v218 = 0u;
  v217 = 0u;
  v216[1] = 0;
  v216[0] = 0;
  v215[1] = 0;
  v215[0] = 0;
  v213 = 0;
  v210 = 0;
  v170 = 0;
  v189 = 0;
  v188 = 0u;
  v187 = 0u;
  v186 = 0u;
  memset(v185, 0, sizeof(v185));
  v179 = 0;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v143 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141 - 8);
  v145 = (v143 + 15) & 0xFFFFFFFFFFFFFFF0;
  v142 = &v45 - v145;
  MEMORY[0x1EEE9AC00](&v45 - v145);
  v144 = &v45 - v145;
  MEMORY[0x1EEE9AC00](&v45 - v145);
  v146 = &v45 - v145;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v147 = v164;
  v148 = *(v164 - 8);
  v149 = v148;
  v153 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v164 - 8);
  v155 = (v153 + 15) & 0xFFFFFFFFFFFFFFF0;
  v150 = &v45 - v155;
  v230 = &v45 - v155;
  MEMORY[0x1EEE9AC00](&v45 - v155);
  v151 = &v45 - v155;
  v229 = &v45 - v155;
  v2 = MEMORY[0x1EEE9AC00](&v45 - v155);
  v152 = &v45 - v155;
  v228 = &v45 - v155;
  MEMORY[0x1EEE9AC00](v2);
  v154 = &v45 - v155;
  MEMORY[0x1EEE9AC00](&v45 - v155);
  v156 = &v45 - v155;
  v227 = &v45 - v155;
  v157 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C70, &qword_1B0E9B078) - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v161);
  v159 = (v157 + 15) & 0xFFFFFFFFFFFFFFF0;
  v158 = &v45 - v159;
  MEMORY[0x1EEE9AC00](v3);
  v160 = &v45 - v159;
  v226 = v1;
  v225 = sub_1B0E46A48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C78, &qword_1B0E9B080);
  v165 = sub_1B0E46A48();
  v163 = sub_1B0E45C48();
  v162 = v163;
  v166 = sub_1B074E39C();
  v224 = sub_1B0E445D8();
  v167 = *v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v222 = v167;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1BE8, &qword_1B0ECD5D0);
  v168 = v169;
  sub_1B074B7E4();
  sub_1B0E45798();
  for (i = v170; ; i = v81)
  {
    v132 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C80, &qword_1B0E9B088);
    sub_1B0E46518();
    v133 = v219;
    v134 = v220;
    v135 = v221;
    if (!v221)
    {
      break;
    }

    v120 = v133;
    v121 = v133 >> 40;
    v122 = HIWORD(v133);
    v123 = HIBYTE(v133);
    v124 = v134;
    v125 = v134 >> 8;
    v126 = v134 >> 16;
    v127 = v134 >> 24;
    v128 = DWORD1(v134);
    v129 = v134 >> 40;
    v130 = *(&v134 + 1) >> 40;
    v131 = v135;
    v4 = v137;
    v5 = BYTE13(v134);
    v6 = v135;
    *v200 = v133 & 0x1010101FFFFFFFFLL;
    *&v200[8] = v134 & 0xFFFF0101;
    v201 = BYTE4(v134) & 1;
    *(v137 + 37) = v129;
    v202 = v5;
    v203 = v6;
    v7 = *(v4 + 37);
    LOBYTE(v6) = v202;
    v197 = *&v200[4];
    LOBYTE(v198) = v201;
    *(v4 + 9) = v7;
    HIBYTE(v199) = v6;
    if (FlagsWithModifications.hasLocalChanges.getter(v197, v198, v199))
    {
      sub_1B074EC14(v200, &v174);
      v8 = *(v137 + 3);
      v173 = *(v137 + 5);
      v172 = v8;
      sub_1B0E452E8();
      v119 = v132;
    }

    else
    {
      v90 = *(v138 + *(_s21UnfilteredFlagChangesVMa() + 24));
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v192[1] = v90;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C48, &qword_1B0E9B038);
      v9 = sub_1B074EA1C();
      MEMORY[0x1B27270C0](v192, v89, v9);
      v91 = v192[0];

      v191 = v91;
      sub_1B074EC14(v200, &v190);
      v92 = *v200;
      v93 = v200[4];
      v94 = v200[5];
      v95 = v200[6];
      v96 = v200[7];
      v97 = v200[8];
      v98 = v200[9];
      v99 = v200[10];
      v100 = v200[11];
      v101 = v201;
      v102 = *(v137 + 37);
      v103 = v202;
      v104 = v203;
      v105 = 7;
      v10 = swift_allocObject();
      v11 = v93;
      v12 = v94;
      v13 = v95;
      v14 = v96;
      v15 = v97;
      v16 = v98;
      v17 = v99;
      v18 = v100;
      v19 = v101;
      v20 = v102;
      v21 = v103;
      v22 = v104;
      v106 = v10;
      *(v10 + 16) = v92;
      *(v10 + 20) = v11;
      *(v10 + 21) = v12;
      *(v10 + 22) = v13;
      *(v10 + 23) = v14;
      *(v10 + 24) = v15;
      *(v10 + 25) = v16;
      *(v10 + 26) = v17;
      *(v10 + 27) = v18;
      *(v10 + 28) = v19;
      *(v10 + 29) = v20;
      *(v10 + 37) = v21;
      *(v10 + 40) = v22;
      v23 = swift_allocObject();
      v24 = v106;
      v108 = v23;
      *(v23 + 16) = sub_1B074EC64;
      *(v23 + 24) = v24;
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1CA0, &qword_1B0E9B0A8);
      sub_1B074ECF8();
      v109 = &v191;
      sub_1B0E46718();

      sub_1B039E440(v109);
      v114 = v193;
      v110 = v193;
      v115 = v194;
      v111 = v194;
      v116 = v195;
      v112 = v195;
      v117 = v196;
      v113 = v196;
      v186 = v193;
      v187 = v194;
      v188 = v195;
      v189 = v196;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v181 = v114;
      v182 = v115;
      v183 = v116;
      v184 = v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1CB0, &qword_1B0E9B0B0);
      sub_1B0E464B8();
      for (j = v132; ; j = v85)
      {
        v87 = j;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1CB8, &qword_1B0E9B0B8);
        sub_1B0E464C8();
        v88 = v180;
        if (!v180)
        {
          break;
        }

        v86 = v88;
        v84 = v88;
        v85 = v87;
        v179 = v88;
        v25 = v88;
        v177 = *v200;
        v176 = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C98, &qword_1B0E9B0A0);
        v82 = &v175;
        v83 = sub_1B0E44728();
        MessageIdentifierSet.insert(_:)(&v178, &v177, v147);
        v83(v82, 0);
      }

      sub_1B074ED80(v185);

      v119 = v87;
    }

    v81 = v119;
    sub_1B03F5C58(v200);
  }

  sub_1B039E440(v223);
  *&v217 = sub_1B07B681C();
  *(&v217 + 1) = v26;
  *&v218 = v27;
  *(&v218 + 1) = v28;
  v75 = _s21UnfilteredFlagChangesVMa();
  v76 = *(v138 + v75[6]);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v215[2] = v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C48, &qword_1B0E9B038);
  v77 = v78;
  v79 = sub_1B074EAA4();
  sub_1B0E45798();
  for (k = v132; ; k = v58)
  {
    v66 = k;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C88, &unk_1B0E9B090);
    sub_1B0E46518();
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C00, &qword_1B0E9AFF8);
    v29 = *(v70 - 8);
    v68 = *(v29 + 48);
    v69 = (v29 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v30 = v68(v160, 1);
    v71 = v67;
    v72 = v70;
    v73 = v68;
    v74 = v69;
    if (v30 == 1)
    {
      break;
    }

    v65 = *(v160 + *(v70 + 48));
    v64 = v65;
    sub_1B074BA2C(v160, v156);
    v210 = v65;
    if (MessageIdentifierSet.isEmpty.getter() & 1) != 0 || (sub_1B03D08AC(v138 + v75[5], v154), v63 = MessageIdentifierSet.isSubset(of:)(), sub_1B03D09B8(v154), (v63))
    {
      v39 = v64;
      v208 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
      sub_1B0E454D8();

      sub_1B03D09B8(v156);
      v58 = v66;
    }

    else
    {
      v31 = v66;
      sub_1B03D08AC(v138 + v75[5], v154);
      MessageIdentifierSet.intersection(_:)(v154, v152);
      sub_1B03D09B8(v154);
      v32 = v64;
      v207 = v64;
      sub_1B0E44778();

      v61 = &v45;
      MEMORY[0x1EEE9AC00](&v45);
      *(&v45 - 2) = v152;
      sub_1B03F1A20(sub_1B074EB2C, (&v45 - 4), v33, MEMORY[0x1E69E73E0], v34, v35, v36);
      v62 = v31;
      if (v31)
      {
        result = 0;
        __break(1u);
        return result;
      }

      sub_1B074EB58(v144);
      v59 = *(v149 + 48);
      v60 = (v149 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v59(v146, 1, v147) == 1)
      {
        sub_1B03D08AC(v152, v151);
        if (v59(v146, 1, v147) != 1)
        {
          sub_1B074EB58(v146);
        }
      }

      else
      {
        sub_1B074BA2C(v146, v151);
      }

      if ((MessageIdentifierSet.isEmpty.getter() & 1) == 0)
      {
        if (MessageIdentifierSet.isSubset(of:)())
        {
          v37 = v64;
          v204 = v64;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
          sub_1B0E454D8();
        }

        else
        {
          v38 = v64;
          sub_1B03D08AC(v151, v142);
          (*(v149 + 56))(v142, 0, 1, v147);
          v206 = v64;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C98, &qword_1B0E9B0A0);
          sub_1B0E44788();
        }
      }

      sub_1B03D09B8(v151);
      sub_1B03D09B8(v152);

      sub_1B03D09B8(v156);
      v58 = v62;
    }
  }

  v52 = v74;
  v53 = v73;
  v54 = v72;
  v55 = v71;
  sub_1B039E440(v216);
  v56 = *(v138 + v75[7]);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v214 = v56;
  sub_1B0E45798();
  for (m = v66; ; m = v51)
  {
    v51 = m;
    sub_1B0E46518();
    if (v53(v158, 1, v54) == 1)
    {
      break;
    }

    v49 = *(v158 + *(v54 + 48));
    v48 = v49;
    sub_1B074BA2C(v158, v150);
    v213 = v49;
    sub_1B03D08AC(v138 + v75[5], v154);
    v50 = MessageIdentifierSet.isSubset(of:)();
    sub_1B03D09B8(v154);
    if (v50)
    {
      v40 = v48;
      v211 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
      sub_1B0E454D8();
    }

    sub_1B03D09B8(v150);
  }

  sub_1B039E440(v215);
  v45 = v225;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v46 = v217;
  v47 = v218;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0741390(v45, v46, *(&v46 + 1), v47, *(&v47 + 1), v231);
  sub_1B071F9F0(&v217);
  sub_1B039E440(&v224);
  result = sub_1B039E440(&v225);
  v42 = v139;
  v43 = *v136;
  v44 = v136[1];
  *(v139 + 32) = v231[4];
  v42[1] = v44;
  *v42 = v43;
  return result;
}

uint64_t sub_1B07374C8(uint64_t *a1)
{
  v2 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = sub_1B0E452A8();

  return v3;
}

uint64_t *sub_1B0737514(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v2170 = v2204;
  v2125 = v1;
  v2153 = v3;
  v2169 = v2;
  v2162 = 0;
  v2242 = 0;
  v2241 = 0;
  v2240 = 0;
  v2239 = 0;
  v2238 = 0;
  v2237 = 0;
  v2236 = 0;
  v2235 = 0;
  v2126 = 0u;
  memset(v2234, 0, sizeof(v2234));
  v2225 = 0;
  v2224 = 0u;
  v2223 = 0u;
  v2222 = 0u;
  memset(v2221, 0, sizeof(v2221));
  memset(v2206, 0, 80);
  v2202 = 0;
  v2171 = 0;
  v2200 = 0;
  v2199 = 0;
  v2193 = 0;
  v2191 = 0;
  v2185 = 0;
  v2184 = 0;
  v2183 = 0;
  v2182 = 0u;
  v2181 = 0u;
  v2178 = 0;
  v2177 = 0;
  v2127 = sub_1B0E439A8();
  v2128 = *(v2127 - 8);
  v2129 = v2128;
  v2130 = *(v2128 + 64);
  v4 = MEMORY[0x1EEE9AC00](0);
  v2132 = (v2130 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2131 = v521 - v2132;
  MEMORY[0x1EEE9AC00](v4);
  v2133 = v521 - v2132;
  v2134 = _s6LoggerVMa_1();
  v2136 = *(*(v2134 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2134 - 8);
  v2138 = (v2136 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2135 = v521 - v2138;
  v5 = MEMORY[0x1EEE9AC00](v521 - v2138);
  v2137 = v521 - v2138;
  MEMORY[0x1EEE9AC00](v5);
  v2139 = v521 - v2138;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v2140 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v2142 = (v2140 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2141 = v521 - v2142;
  MEMORY[0x1EEE9AC00](v521 - v2142);
  v2143 = v521 - v2142;
  v2165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v2144 = v2165;
  v2145 = *(v2165 - 8);
  v2146 = v2145;
  v2149 = *(v2145 + 64);
  v2147 = v2149;
  v7 = MEMORY[0x1EEE9AC00](v2162);
  v2151 = (v2149 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2148 = v521 - v2151;
  v2242 = v521 - v2151;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v2150 = v521 - v2151;
  MEMORY[0x1EEE9AC00](v8);
  v2152 = v521 - v2151;
  v2241 = v521 - v2151;
  v2154 = sub_1B0E42E68();
  v2155 = *(v2154 - 8);
  v2156 = v2155;
  v2158 = *(v2155 + 64);
  v2157 = v2158;
  v9 = MEMORY[0x1EEE9AC00](v2169);
  v2160 = (v2158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2159 = v521 - v2160;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v2161 = v521 - v2160;
  v2240 = v521 - v2160;
  v2239 = v10;
  v2238 = v11;
  v2237 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C78, &qword_1B0E9B080);
  v2166 = sub_1B0E46A48();
  v2164 = sub_1B0E45C48();
  v2163 = v2164;
  v2167 = sub_1B074E39C();
  v2236 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1CC0, &qword_1B0E9B0C0);
  sub_1B043CF70();
  sub_1B0E445C8();
  v12 = v2170;
  v13 = v2171;
  v14 = v2170[56];
  v15 = v2170[57];
  v2235 = v2243;
  v2170[51] = v15;
  v12[50] = v14;
  for (i = v13; ; i = v2109)
  {
    v2122 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1CC8, &qword_1B0E9B0C8);
    sub_1B0E446D8();
    v2123 = v2232;
    v2124 = v2233;
    if (!v2233)
    {
      break;
    }

    v2120 = v2123;
    v2121 = v2124;
    v2118 = v2124;
    v2117 = v2123;
    v2185 = v2123;
    v2184 = v2124;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074F084();
    sub_1B0E45448();
    v2183 = v2246;
    v2182 = v2245;
    v2181 = v2244;
    for (j = v2122; ; j = v2113)
    {
      v2115 = j;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1CE0, &qword_1B0E9B0E0);
      sub_1B0E45508();
      v2116 = v2179;
      if (v2180)
      {
        break;
      }

      v2114 = v2116;
      v2113 = v2115;
      v2178 = v2116;
      v2112 = sub_1B07B72D0(v2116);
      v2177 = v2112;
      v16 = v2112;
      v2175 = v2117;
      v2174 = v2112;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C98, &qword_1B0E9B0A0);
      v2110 = &v2173;
      v2111 = sub_1B0E44728();
      MessageIdentifierSet.insert(_:)(&v2176, &v2175, v2144);
      v2111(v2110, 0);
    }

    v2109 = v2115;
    sub_1B06B91B0(&v2181);
  }

  sub_1B06B91B0(v2234);
  v2089 = *(v2156 + 16);
  v2088 = v2156 + 16;
  v2083 = v2089;
  v2084 = (v2156 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2089(v2161, (v2125 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL), v2154);
  v2227[1] = v2153;
  v2086 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  v2085 = v2086;
  v2087 = sub_1B071CEA8();
  MEMORY[0x1B27270C0](v2227, v2086);
  v2226 = v2227[0];
  v2089(v2159, v2161, v2154);
  v2090 = *(v2156 + 80);
  v2091 = (v2090 + 16) & ~v2090;
  v2098 = swift_allocObject();
  v2092 = *(v2156 + 32);
  v2093 = (v2156 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v2092(v2098 + v2091, v2159, v2154);
  v2095 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B60, &unk_1B0EA09B0);
  v2094 = v2095;
  v2096 = sub_1B074AC8C();
  v2097 = sub_1B074AF08();
  v2099 = &v2226;
  sub_1B0E46718();

  sub_1B039E440(v2099);
  v2104 = v2228;
  v2100 = v2228;
  v2105 = v2229;
  v2101 = v2229;
  v2106 = v2230;
  v2102 = v2230;
  v2107 = v2231;
  v2103 = v2231;
  v2222 = v2228;
  v2223 = v2229;
  v2224 = v2230;
  v2225 = v2231;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v2217 = v2104;
  v2218 = v2105;
  v2219 = v2106;
  v2220 = v2107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B88, &unk_1B0E9AFA0);
  sub_1B0E464B8();
  for (k = v2122; ; k = v1311)
  {
    v2081 = k;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1CD0, &unk_1B0E9B0D0);
    sub_1B0E464C8();
    v2082 = v2216;
    if (!v2216)
    {
      break;
    }

    v2080 = v2082;
    v2078 = v2082;
    v2193 = v2082;
    v17 = v2082;
    v2079 = [v2078 persistentID];

    v2192 = v2079;
    sub_1B0E44778();

    if ((*(v2146 + 48))(v2143, 1, v2144) == 1)
    {
      sub_1B074EB58(v2143);

      v1311 = v2081;
    }

    else
    {
      v18 = v2133;
      sub_1B074BA2C(v2143, v2152);
      v1992 = &OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger;
      sub_1B074B69C(v2125 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v2139);
      (*(v2129 + 16))(v18, v2139, v2127);
      sub_1B074B764(v2139);

      sub_1B074B69C(v2125 + *v1992, v2137);
      v19 = (v2137 + *(v2134 + 20));
      v1995 = *v19;
      v1996 = *(v19 + 1);
      v1997 = *(v19 + 1);
      v1998 = *(v19 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v2137);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1994 = 36;
      v2044 = 7;
      v20 = swift_allocObject();
      v21 = v1996;
      v22 = v1997;
      v23 = v1998;
      v2009 = v20;
      *(v20 + 16) = v1995;
      *(v20 + 20) = v21;
      *(v20 + 24) = v22;
      *(v20 + 32) = v23;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v24 = swift_allocObject();
      v25 = v1996;
      v26 = v1997;
      v27 = v1998;
      v1993 = v24;
      *(v24 + 16) = v1995;
      *(v24 + 20) = v25;
      *(v24 + 24) = v26;
      *(v24 + 32) = v27;

      v2043 = 32;
      v28 = swift_allocObject();
      v29 = v1993;
      v2021 = v28;
      *(v28 + 16) = sub_1B074E050;
      *(v28 + 24) = v29;
      sub_1B0394868();
      sub_1B0394868();

      v30 = swift_allocObject();
      v31 = v1996;
      v32 = v1997;
      v33 = v1998;
      v2030 = v30;
      *(v30 + 16) = v1995;
      *(v30 + 20) = v31;
      *(v30 + 24) = v32;
      *(v30 + 32) = v33;

      sub_1B03D08AC(v2152, v2150);
      v1999 = (*(v2146 + 80) + 16) & ~*(v2146 + 80);
      v2000 = swift_allocObject();
      sub_1B074BA2C(v2150, v2000 + v1999);

      v34 = swift_allocObject();
      v35 = v2000;
      v2035 = v34;
      *(v34 + 16) = sub_1B074EF18;
      *(v34 + 24) = v35;

      v36 = v2078;
      v2048 = 24;
      v2045 = swift_allocObject();
      *(v2045 + 16) = v2078;
      v2077 = sub_1B0E43988();
      v2001 = v2077;
      v2076 = sub_1B0E458C8();
      v2002 = v2076;
      v2039 = 17;
      v2049 = swift_allocObject();
      v2003 = v2049;
      v2012 = 16;
      *(v2049 + 16) = 16;
      v2050 = swift_allocObject();
      v2004 = v2050;
      v2019 = 4;
      *(v2050 + 16) = 4;
      v37 = swift_allocObject();
      v2005 = v37;
      *(v37 + 16) = sub_1B0394C30;
      v2015 = 0;
      *(v37 + 24) = 0;
      v38 = swift_allocObject();
      v39 = v2005;
      v2051 = v38;
      v2006 = v38;
      *(v38 + 16) = sub_1B0394C24;
      *(v38 + 24) = v39;
      v2052 = swift_allocObject();
      v2007 = v2052;
      v2038 = 0;
      *(v2052 + 16) = 0;
      v2053 = swift_allocObject();
      v2008 = v2053;
      *(v2053 + 16) = 1;
      v40 = swift_allocObject();
      v41 = v2009;
      v2010 = v40;
      *(v40 + 16) = sub_1B074DFFC;
      *(v40 + 24) = v41;
      v42 = swift_allocObject();
      v43 = v2010;
      v2054 = v42;
      v2011 = v42;
      *(v42 + 16) = sub_1B039BA88;
      *(v42 + 24) = v43;
      v2055 = swift_allocObject();
      v2013 = v2055;
      *(v2055 + 16) = v2012;
      v2056 = swift_allocObject();
      v2014 = v2056;
      *(v2056 + 16) = v2019;
      v44 = swift_allocObject();
      v45 = v2015;
      v2016 = v44;
      *(v44 + 16) = sub_1B039BB94;
      *(v44 + 24) = v45;
      v46 = swift_allocObject();
      v47 = v2016;
      v2057 = v46;
      v2017 = v46;
      *(v46 + 16) = sub_1B0394C24;
      *(v46 + 24) = v47;
      v2058 = swift_allocObject();
      v2018 = v2058;
      *(v2058 + 16) = v2038;
      v2059 = swift_allocObject();
      v2020 = v2059;
      *(v2059 + 16) = v2019;
      v48 = swift_allocObject();
      v49 = v2021;
      v2022 = v48;
      *(v48 + 16) = sub_1B039BBA0;
      *(v48 + 24) = v49;
      v50 = swift_allocObject();
      v51 = v2022;
      v2060 = v50;
      v2023 = v50;
      *(v50 + 16) = sub_1B039BC08;
      *(v50 + 24) = v51;
      v2061 = swift_allocObject();
      v2024 = v2061;
      *(v2061 + 16) = 112;
      v2062 = swift_allocObject();
      v2025 = v2062;
      v2041 = 8;
      *(v2062 + 16) = 8;
      v2026 = swift_allocObject();
      *(v2026 + 16) = 0x786F626C69616DLL;
      v52 = swift_allocObject();
      v53 = v2026;
      v2063 = v52;
      v2027 = v52;
      *(v52 + 16) = sub_1B06BA324;
      *(v52 + 24) = v53;
      v2064 = swift_allocObject();
      v2028 = v2064;
      *(v2064 + 16) = 37;
      v2065 = swift_allocObject();
      v2029 = v2065;
      *(v2065 + 16) = v2041;
      v54 = swift_allocObject();
      v55 = v2030;
      v2031 = v54;
      *(v54 + 16) = sub_1B074E0E4;
      *(v54 + 24) = v55;
      v56 = swift_allocObject();
      v57 = v2031;
      v2066 = v56;
      v2032 = v56;
      *(v56 + 16) = sub_1B039BCF8;
      *(v56 + 24) = v57;
      v2067 = swift_allocObject();
      v2033 = v2067;
      *(v2067 + 16) = 34;
      v2068 = swift_allocObject();
      v2034 = v2068;
      *(v2068 + 16) = v2041;
      v58 = swift_allocObject();
      v59 = v2035;
      v2036 = v58;
      *(v58 + 16) = sub_1B074EF98;
      *(v58 + 24) = v59;
      v60 = swift_allocObject();
      v61 = v2036;
      v2069 = v60;
      v2037 = v60;
      *(v60 + 16) = sub_1B039BCF8;
      *(v60 + 24) = v61;
      v2070 = swift_allocObject();
      v2040 = v2070;
      *(v2070 + 16) = v2038;
      v2071 = swift_allocObject();
      v2042 = v2071;
      *(v2071 + 16) = v2041;
      v62 = swift_allocObject();
      v63 = v2045;
      v2046 = v62;
      *(v62 + 16) = sub_1B074EFA4;
      *(v62 + 24) = v63;
      v64 = swift_allocObject();
      v65 = v2046;
      v2074 = v64;
      v2047 = v64;
      *(v64 + 16) = sub_1B06BCD8C;
      *(v64 + 24) = v65;
      v2075 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v2072 = sub_1B0E46A48();
      v2073 = v66;

      v67 = v2049;
      v68 = v2073;
      *v2073 = sub_1B0398F5C;
      v68[1] = v67;

      v69 = v2050;
      v70 = v2073;
      v2073[2] = sub_1B0398F5C;
      v70[3] = v69;

      v71 = v2051;
      v72 = v2073;
      v2073[4] = sub_1B0399178;
      v72[5] = v71;

      v73 = v2052;
      v74 = v2073;
      v2073[6] = sub_1B0398F5C;
      v74[7] = v73;

      v75 = v2053;
      v76 = v2073;
      v2073[8] = sub_1B0398F5C;
      v76[9] = v75;

      v77 = v2054;
      v78 = v2073;
      v2073[10] = sub_1B039BA94;
      v78[11] = v77;

      v79 = v2055;
      v80 = v2073;
      v2073[12] = sub_1B0398F5C;
      v80[13] = v79;

      v81 = v2056;
      v82 = v2073;
      v2073[14] = sub_1B0398F5C;
      v82[15] = v81;

      v83 = v2057;
      v84 = v2073;
      v2073[16] = sub_1B0399178;
      v84[17] = v83;

      v85 = v2058;
      v86 = v2073;
      v2073[18] = sub_1B0398F5C;
      v86[19] = v85;

      v87 = v2059;
      v88 = v2073;
      v2073[20] = sub_1B0398F5C;
      v88[21] = v87;

      v89 = v2060;
      v90 = v2073;
      v2073[22] = sub_1B03991EC;
      v90[23] = v89;

      v91 = v2061;
      v92 = v2073;
      v2073[24] = sub_1B0398F5C;
      v92[25] = v91;

      v93 = v2062;
      v94 = v2073;
      v2073[26] = sub_1B0398F5C;
      v94[27] = v93;

      v95 = v2063;
      v96 = v2073;
      v2073[28] = sub_1B03993BC;
      v96[29] = v95;

      v97 = v2064;
      v98 = v2073;
      v2073[30] = sub_1B0398F5C;
      v98[31] = v97;

      v99 = v2065;
      v100 = v2073;
      v2073[32] = sub_1B0398F5C;
      v100[33] = v99;

      v101 = v2066;
      v102 = v2073;
      v2073[34] = sub_1B039BCEC;
      v102[35] = v101;

      v103 = v2067;
      v104 = v2073;
      v2073[36] = sub_1B0398F5C;
      v104[37] = v103;

      v105 = v2068;
      v106 = v2073;
      v2073[38] = sub_1B0398F5C;
      v106[39] = v105;

      v107 = v2069;
      v108 = v2073;
      v2073[40] = sub_1B039BCEC;
      v108[41] = v107;

      v109 = v2070;
      v110 = v2073;
      v2073[42] = sub_1B0398F5C;
      v110[43] = v109;

      v111 = v2071;
      v112 = v2073;
      v2073[44] = sub_1B0398F5C;
      v112[45] = v111;

      v113 = v2073;
      v114 = v2074;
      v2073[46] = sub_1B03992D4;
      v113[47] = v114;
      sub_1B0394964();

      if (os_log_type_enabled(v2077, v2076))
      {
        v115 = v2011;
        v116 = v2008;
        v117 = v2007;
        v118 = v2006;
        v119 = v2004;
        v120 = v2003;
        v121 = v2081;
        v1962 = sub_1B0E45D78();
        v1959 = v1962;
        v1960 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v1963 = sub_1B03949A8(0);
        v1961 = v1963;
        v1964 = sub_1B03949A8(2);
        v2190 = v1962;
        v2189 = v1963;
        v2188 = v1964;
        v1965 = &v2190;
        sub_1B0394A48(3, &v2190);
        sub_1B0394A48(8, v1965);
        v2186 = sub_1B0398F5C;
        v2187 = v120;
        sub_1B03949FC(&v2186, v1965, &v2189, &v2188);
        v1966 = v121;
        v1967 = v120;
        v1968 = v119;
        v1969 = v118;
        v1970 = v117;
        v1971 = v116;
        v1972 = v115;
        v1973 = v2013;
        v1974 = v2014;
        v1975 = v2017;
        v1976 = v2018;
        v1977 = v2020;
        v1978 = v2023;
        v1979 = v2024;
        v1980 = v2025;
        v1981 = v2027;
        v1982 = v2028;
        v1983 = v2029;
        v1984 = v2032;
        v1985 = v2033;
        v1986 = v2034;
        v1987 = v2037;
        v1988 = v2040;
        v1989 = v2042;
        v1990 = v2047;
        v1991 = v121;
        if (v121)
        {
          v1933 = v1967;
          v1934 = v1968;
          v1935 = v1969;
          v1936 = v1970;
          v1937 = v1971;
          v1938 = v1972;
          v1939 = v1973;
          v1940 = v1974;
          v1941 = v1975;
          v1942 = v1976;
          v1943 = v1977;
          v1944 = v1978;
          v1945 = v1979;
          v1946 = v1980;
          v1947 = v1981;
          v1948 = v1982;
          v1949 = v1983;
          v1950 = v1984;
          v1951 = v1985;
          v1952 = v1986;
          v1953 = v1987;
          v1954 = v1988;
          v1955 = v1989;
          v1956 = v1990;
          v1957 = 0;
          v1334 = v1990;
          v1333 = v1989;
          v1332 = v1988;
          v1331 = v1987;
          v1330 = v1986;
          v1329 = v1985;
          v1328 = v1984;
          v1327 = v1983;
          v1326 = v1982;
          v1325 = v1981;
          v1324 = v1980;
          v1323 = v1979;
          v1322 = v1978;
          v1321 = v1977;
          v1320 = v1976;
          v1319 = v1975;
          v1318 = v1974;
          v1317 = v1973;
          v1316 = v1972;
          v1315 = v1971;
          v1314 = v1970;
          v1313 = v1969;
          v1312 = v1968;

          __break(1u);
        }

        else
        {
          v123 = v2011;
          v124 = v2008;
          v125 = v2007;
          v126 = v2006;
          v127 = v2004;
          v128 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2004;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1907 = 0;
          v1908 = v128;
          v1909 = v127;
          v1910 = v126;
          v1911 = v125;
          v1912 = v124;
          v1913 = v123;
          v1914 = v2013;
          v1915 = v2014;
          v1916 = v2017;
          v1917 = v2018;
          v1918 = v2020;
          v1919 = v2023;
          v1920 = v2024;
          v1921 = v2025;
          v1922 = v2027;
          v1923 = v2028;
          v1924 = v2029;
          v1925 = v2032;
          v1926 = v2033;
          v1927 = v2034;
          v1928 = v2037;
          v1929 = v2040;
          v1930 = v2042;
          v1931 = v2047;
          v1932 = 0;
          v129 = v2011;
          v130 = v2008;
          v131 = v2007;
          v132 = v2006;
          v133 = v2004;
          v134 = v2003;
          v2186 = sub_1B0399178;
          v2187 = v2006;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1881 = 0;
          v1882 = v134;
          v1883 = v133;
          v1884 = v132;
          v1885 = v131;
          v1886 = v130;
          v1887 = v129;
          v1888 = v2013;
          v1889 = v2014;
          v1890 = v2017;
          v1891 = v2018;
          v1892 = v2020;
          v1893 = v2023;
          v1894 = v2024;
          v1895 = v2025;
          v1896 = v2027;
          v1897 = v2028;
          v1898 = v2029;
          v1899 = v2032;
          v1900 = v2033;
          v1901 = v2034;
          v1902 = v2037;
          v1903 = v2040;
          v1904 = v2042;
          v1905 = v2047;
          v1906 = 0;
          v135 = v2011;
          v136 = v2008;
          v137 = v2007;
          v138 = v2006;
          v139 = v2004;
          v140 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2007;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1855 = 0;
          v1856 = v140;
          v1857 = v139;
          v1858 = v138;
          v1859 = v137;
          v1860 = v136;
          v1861 = v135;
          v1862 = v2013;
          v1863 = v2014;
          v1864 = v2017;
          v1865 = v2018;
          v1866 = v2020;
          v1867 = v2023;
          v1868 = v2024;
          v1869 = v2025;
          v1870 = v2027;
          v1871 = v2028;
          v1872 = v2029;
          v1873 = v2032;
          v1874 = v2033;
          v1875 = v2034;
          v1876 = v2037;
          v1877 = v2040;
          v1878 = v2042;
          v1879 = v2047;
          v1880 = 0;
          v141 = v2011;
          v142 = v2008;
          v143 = v2007;
          v144 = v2006;
          v145 = v2004;
          v146 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2008;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1829 = 0;
          v1830 = v146;
          v1831 = v145;
          v1832 = v144;
          v1833 = v143;
          v1834 = v142;
          v1835 = v141;
          v1836 = v2013;
          v1837 = v2014;
          v1838 = v2017;
          v1839 = v2018;
          v1840 = v2020;
          v1841 = v2023;
          v1842 = v2024;
          v1843 = v2025;
          v1844 = v2027;
          v1845 = v2028;
          v1846 = v2029;
          v1847 = v2032;
          v1848 = v2033;
          v1849 = v2034;
          v1850 = v2037;
          v1851 = v2040;
          v1852 = v2042;
          v1853 = v2047;
          v1854 = 0;
          v147 = v2011;
          v148 = v2008;
          v149 = v2007;
          v150 = v2006;
          v151 = v2004;
          v152 = v2003;
          v2186 = sub_1B039BA94;
          v2187 = v2011;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1803 = 0;
          v1804 = v152;
          v1805 = v151;
          v1806 = v150;
          v1807 = v149;
          v1808 = v148;
          v1809 = v147;
          v1810 = v2013;
          v1811 = v2014;
          v1812 = v2017;
          v1813 = v2018;
          v1814 = v2020;
          v1815 = v2023;
          v1816 = v2024;
          v1817 = v2025;
          v1818 = v2027;
          v1819 = v2028;
          v1820 = v2029;
          v1821 = v2032;
          v1822 = v2033;
          v1823 = v2034;
          v1824 = v2037;
          v1825 = v2040;
          v1826 = v2042;
          v1827 = v2047;
          v1828 = 0;
          v153 = v2011;
          v154 = v2008;
          v155 = v2007;
          v156 = v2006;
          v157 = v2004;
          v158 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2013;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1777 = 0;
          v1778 = v158;
          v1779 = v157;
          v1780 = v156;
          v1781 = v155;
          v1782 = v154;
          v1783 = v153;
          v1784 = v2013;
          v1785 = v2014;
          v1786 = v2017;
          v1787 = v2018;
          v1788 = v2020;
          v1789 = v2023;
          v1790 = v2024;
          v1791 = v2025;
          v1792 = v2027;
          v1793 = v2028;
          v1794 = v2029;
          v1795 = v2032;
          v1796 = v2033;
          v1797 = v2034;
          v1798 = v2037;
          v1799 = v2040;
          v1800 = v2042;
          v1801 = v2047;
          v1802 = 0;
          v159 = v2011;
          v160 = v2008;
          v161 = v2007;
          v162 = v2006;
          v163 = v2004;
          v164 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2014;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1751 = 0;
          v1752 = v164;
          v1753 = v163;
          v1754 = v162;
          v1755 = v161;
          v1756 = v160;
          v1757 = v159;
          v1758 = v2013;
          v1759 = v2014;
          v1760 = v2017;
          v1761 = v2018;
          v1762 = v2020;
          v1763 = v2023;
          v1764 = v2024;
          v1765 = v2025;
          v1766 = v2027;
          v1767 = v2028;
          v1768 = v2029;
          v1769 = v2032;
          v1770 = v2033;
          v1771 = v2034;
          v1772 = v2037;
          v1773 = v2040;
          v1774 = v2042;
          v1775 = v2047;
          v1776 = 0;
          v165 = v2011;
          v166 = v2008;
          v167 = v2007;
          v168 = v2006;
          v169 = v2004;
          v170 = v2003;
          v2186 = sub_1B0399178;
          v2187 = v2017;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1725 = 0;
          v1726 = v170;
          v1727 = v169;
          v1728 = v168;
          v1729 = v167;
          v1730 = v166;
          v1731 = v165;
          v1732 = v2013;
          v1733 = v2014;
          v1734 = v2017;
          v1735 = v2018;
          v1736 = v2020;
          v1737 = v2023;
          v1738 = v2024;
          v1739 = v2025;
          v1740 = v2027;
          v1741 = v2028;
          v1742 = v2029;
          v1743 = v2032;
          v1744 = v2033;
          v1745 = v2034;
          v1746 = v2037;
          v1747 = v2040;
          v1748 = v2042;
          v1749 = v2047;
          v1750 = 0;
          v171 = v2011;
          v172 = v2008;
          v173 = v2007;
          v174 = v2006;
          v175 = v2004;
          v176 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2018;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1699 = 0;
          v1700 = v176;
          v1701 = v175;
          v1702 = v174;
          v1703 = v173;
          v1704 = v172;
          v1705 = v171;
          v1706 = v2013;
          v1707 = v2014;
          v1708 = v2017;
          v1709 = v2018;
          v1710 = v2020;
          v1711 = v2023;
          v1712 = v2024;
          v1713 = v2025;
          v1714 = v2027;
          v1715 = v2028;
          v1716 = v2029;
          v1717 = v2032;
          v1718 = v2033;
          v1719 = v2034;
          v1720 = v2037;
          v1721 = v2040;
          v1722 = v2042;
          v1723 = v2047;
          v1724 = 0;
          v177 = v2011;
          v178 = v2008;
          v179 = v2007;
          v180 = v2006;
          v181 = v2004;
          v182 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2020;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1673 = 0;
          v1674 = v182;
          v1675 = v181;
          v1676 = v180;
          v1677 = v179;
          v1678 = v178;
          v1679 = v177;
          v1680 = v2013;
          v1681 = v2014;
          v1682 = v2017;
          v1683 = v2018;
          v1684 = v2020;
          v1685 = v2023;
          v1686 = v2024;
          v1687 = v2025;
          v1688 = v2027;
          v1689 = v2028;
          v1690 = v2029;
          v1691 = v2032;
          v1692 = v2033;
          v1693 = v2034;
          v1694 = v2037;
          v1695 = v2040;
          v1696 = v2042;
          v1697 = v2047;
          v1698 = 0;
          v183 = v2011;
          v184 = v2008;
          v185 = v2007;
          v186 = v2006;
          v187 = v2004;
          v188 = v2003;
          v2186 = sub_1B03991EC;
          v2187 = v2023;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1647 = 0;
          v1648 = v188;
          v1649 = v187;
          v1650 = v186;
          v1651 = v185;
          v1652 = v184;
          v1653 = v183;
          v1654 = v2013;
          v1655 = v2014;
          v1656 = v2017;
          v1657 = v2018;
          v1658 = v2020;
          v1659 = v2023;
          v1660 = v2024;
          v1661 = v2025;
          v1662 = v2027;
          v1663 = v2028;
          v1664 = v2029;
          v1665 = v2032;
          v1666 = v2033;
          v1667 = v2034;
          v1668 = v2037;
          v1669 = v2040;
          v1670 = v2042;
          v1671 = v2047;
          v1672 = 0;
          v189 = v2011;
          v190 = v2008;
          v191 = v2007;
          v192 = v2006;
          v193 = v2004;
          v194 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2024;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1621 = 0;
          v1622 = v194;
          v1623 = v193;
          v1624 = v192;
          v1625 = v191;
          v1626 = v190;
          v1627 = v189;
          v1628 = v2013;
          v1629 = v2014;
          v1630 = v2017;
          v1631 = v2018;
          v1632 = v2020;
          v1633 = v2023;
          v1634 = v2024;
          v1635 = v2025;
          v1636 = v2027;
          v1637 = v2028;
          v1638 = v2029;
          v1639 = v2032;
          v1640 = v2033;
          v1641 = v2034;
          v1642 = v2037;
          v1643 = v2040;
          v1644 = v2042;
          v1645 = v2047;
          v1646 = 0;
          v195 = v2011;
          v196 = v2008;
          v197 = v2007;
          v198 = v2006;
          v199 = v2004;
          v200 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2025;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1595 = 0;
          v1596 = v200;
          v1597 = v199;
          v1598 = v198;
          v1599 = v197;
          v1600 = v196;
          v1601 = v195;
          v1602 = v2013;
          v1603 = v2014;
          v1604 = v2017;
          v1605 = v2018;
          v1606 = v2020;
          v1607 = v2023;
          v1608 = v2024;
          v1609 = v2025;
          v1610 = v2027;
          v1611 = v2028;
          v1612 = v2029;
          v1613 = v2032;
          v1614 = v2033;
          v1615 = v2034;
          v1616 = v2037;
          v1617 = v2040;
          v1618 = v2042;
          v1619 = v2047;
          v1620 = 0;
          v201 = v2011;
          v202 = v2008;
          v203 = v2007;
          v204 = v2006;
          v205 = v2004;
          v206 = v2003;
          v2186 = sub_1B03993BC;
          v2187 = v2027;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1569 = 0;
          v1570 = v206;
          v1571 = v205;
          v1572 = v204;
          v1573 = v203;
          v1574 = v202;
          v1575 = v201;
          v1576 = v2013;
          v1577 = v2014;
          v1578 = v2017;
          v1579 = v2018;
          v1580 = v2020;
          v1581 = v2023;
          v1582 = v2024;
          v1583 = v2025;
          v1584 = v2027;
          v1585 = v2028;
          v1586 = v2029;
          v1587 = v2032;
          v1588 = v2033;
          v1589 = v2034;
          v1590 = v2037;
          v1591 = v2040;
          v1592 = v2042;
          v1593 = v2047;
          v1594 = 0;
          v207 = v2011;
          v208 = v2008;
          v209 = v2007;
          v210 = v2006;
          v211 = v2004;
          v212 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2028;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1543 = 0;
          v1544 = v212;
          v1545 = v211;
          v1546 = v210;
          v1547 = v209;
          v1548 = v208;
          v1549 = v207;
          v1550 = v2013;
          v1551 = v2014;
          v1552 = v2017;
          v1553 = v2018;
          v1554 = v2020;
          v1555 = v2023;
          v1556 = v2024;
          v1557 = v2025;
          v1558 = v2027;
          v1559 = v2028;
          v1560 = v2029;
          v1561 = v2032;
          v1562 = v2033;
          v1563 = v2034;
          v1564 = v2037;
          v1565 = v2040;
          v1566 = v2042;
          v1567 = v2047;
          v1568 = 0;
          v213 = v2011;
          v214 = v2008;
          v215 = v2007;
          v216 = v2006;
          v217 = v2004;
          v218 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2029;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1517 = 0;
          v1518 = v218;
          v1519 = v217;
          v1520 = v216;
          v1521 = v215;
          v1522 = v214;
          v1523 = v213;
          v1524 = v2013;
          v1525 = v2014;
          v1526 = v2017;
          v1527 = v2018;
          v1528 = v2020;
          v1529 = v2023;
          v1530 = v2024;
          v1531 = v2025;
          v1532 = v2027;
          v1533 = v2028;
          v1534 = v2029;
          v1535 = v2032;
          v1536 = v2033;
          v1537 = v2034;
          v1538 = v2037;
          v1539 = v2040;
          v1540 = v2042;
          v1541 = v2047;
          v1542 = 0;
          v219 = v2011;
          v220 = v2008;
          v221 = v2007;
          v222 = v2006;
          v223 = v2004;
          v224 = v2003;
          v2186 = sub_1B039BCEC;
          v2187 = v2032;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1491 = 0;
          v1492 = v224;
          v1493 = v223;
          v1494 = v222;
          v1495 = v221;
          v1496 = v220;
          v1497 = v219;
          v1498 = v2013;
          v1499 = v2014;
          v1500 = v2017;
          v1501 = v2018;
          v1502 = v2020;
          v1503 = v2023;
          v1504 = v2024;
          v1505 = v2025;
          v1506 = v2027;
          v1507 = v2028;
          v1508 = v2029;
          v1509 = v2032;
          v1510 = v2033;
          v1511 = v2034;
          v1512 = v2037;
          v1513 = v2040;
          v1514 = v2042;
          v1515 = v2047;
          v1516 = 0;
          v225 = v2011;
          v226 = v2008;
          v227 = v2007;
          v228 = v2006;
          v229 = v2004;
          v230 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2033;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1465 = 0;
          v1466 = v230;
          v1467 = v229;
          v1468 = v228;
          v1469 = v227;
          v1470 = v226;
          v1471 = v225;
          v1472 = v2013;
          v1473 = v2014;
          v1474 = v2017;
          v1475 = v2018;
          v1476 = v2020;
          v1477 = v2023;
          v1478 = v2024;
          v1479 = v2025;
          v1480 = v2027;
          v1481 = v2028;
          v1482 = v2029;
          v1483 = v2032;
          v1484 = v2033;
          v1485 = v2034;
          v1486 = v2037;
          v1487 = v2040;
          v1488 = v2042;
          v1489 = v2047;
          v1490 = 0;
          v231 = v2011;
          v232 = v2008;
          v233 = v2007;
          v234 = v2006;
          v235 = v2004;
          v236 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2034;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1439 = 0;
          v1440 = v236;
          v1441 = v235;
          v1442 = v234;
          v1443 = v233;
          v1444 = v232;
          v1445 = v231;
          v1446 = v2013;
          v1447 = v2014;
          v1448 = v2017;
          v1449 = v2018;
          v1450 = v2020;
          v1451 = v2023;
          v1452 = v2024;
          v1453 = v2025;
          v1454 = v2027;
          v1455 = v2028;
          v1456 = v2029;
          v1457 = v2032;
          v1458 = v2033;
          v1459 = v2034;
          v1460 = v2037;
          v1461 = v2040;
          v1462 = v2042;
          v1463 = v2047;
          v1464 = 0;
          v237 = v2011;
          v238 = v2008;
          v239 = v2007;
          v240 = v2006;
          v241 = v2004;
          v242 = v2003;
          v2186 = sub_1B039BCEC;
          v2187 = v2037;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1413 = 0;
          v1414 = v242;
          v1415 = v241;
          v1416 = v240;
          v1417 = v239;
          v1418 = v238;
          v1419 = v237;
          v1420 = v2013;
          v1421 = v2014;
          v1422 = v2017;
          v1423 = v2018;
          v1424 = v2020;
          v1425 = v2023;
          v1426 = v2024;
          v1427 = v2025;
          v1428 = v2027;
          v1429 = v2028;
          v1430 = v2029;
          v1431 = v2032;
          v1432 = v2033;
          v1433 = v2034;
          v1434 = v2037;
          v1435 = v2040;
          v1436 = v2042;
          v1437 = v2047;
          v1438 = 0;
          v243 = v2011;
          v244 = v2008;
          v245 = v2007;
          v246 = v2006;
          v247 = v2004;
          v248 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2040;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1387 = 0;
          v1388 = v248;
          v1389 = v247;
          v1390 = v246;
          v1391 = v245;
          v1392 = v244;
          v1393 = v243;
          v1394 = v2013;
          v1395 = v2014;
          v1396 = v2017;
          v1397 = v2018;
          v1398 = v2020;
          v1399 = v2023;
          v1400 = v2024;
          v1401 = v2025;
          v1402 = v2027;
          v1403 = v2028;
          v1404 = v2029;
          v1405 = v2032;
          v1406 = v2033;
          v1407 = v2034;
          v1408 = v2037;
          v1409 = v2040;
          v1410 = v2042;
          v1411 = v2047;
          v1412 = 0;
          v249 = v2011;
          v250 = v2008;
          v251 = v2007;
          v252 = v2006;
          v253 = v2004;
          v254 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2042;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1361 = 0;
          v1362 = v254;
          v1363 = v253;
          v1364 = v252;
          v1365 = v251;
          v1366 = v250;
          v1367 = v249;
          v1368 = v2013;
          v1369 = v2014;
          v1370 = v2017;
          v1371 = v2018;
          v1372 = v2020;
          v1373 = v2023;
          v1374 = v2024;
          v1375 = v2025;
          v1376 = v2027;
          v1377 = v2028;
          v1378 = v2029;
          v1379 = v2032;
          v1380 = v2033;
          v1381 = v2034;
          v1382 = v2037;
          v1383 = v2040;
          v1384 = v2042;
          v1385 = v2047;
          v1386 = 0;
          v255 = v2011;
          v256 = v2008;
          v257 = v2007;
          v258 = v2006;
          v259 = v2004;
          v260 = v2003;
          v2186 = sub_1B03992D4;
          v2187 = v2047;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1335 = 0;
          v1336 = v260;
          v1337 = v259;
          v1338 = v258;
          v1339 = v257;
          v1340 = v256;
          v1341 = v255;
          v1342 = v2013;
          v1343 = v2014;
          v1344 = v2017;
          v1345 = v2018;
          v1346 = v2020;
          v1347 = v2023;
          v1348 = v2024;
          v1349 = v2025;
          v1350 = v2027;
          v1351 = v2028;
          v1352 = v2029;
          v1353 = v2032;
          v1354 = v2033;
          v1355 = v2034;
          v1356 = v2037;
          v1357 = v2040;
          v1358 = v2042;
          v1359 = v2047;
          v1360 = 0;
          _os_log_impl(&dword_1B0389000, v2001, v2002, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Uploaded flags for UIDs %{public}s for change %lld", v1959, 0x3Fu);
          sub_1B03998A8(v1961);
          sub_1B03998A8(v1964);
          sub_1B0E45D58();

          v1958 = v1335;
        }
      }

      else
      {
        v122 = v2081;

        v1958 = v122;
      }

      v1310 = v1958;

      (*(v2129 + 8))(v2133, v2127);
      sub_1B074F018();
      v1307 = v521;
      MEMORY[0x1EEE9AC00](v521);
      v521[-2] = v261;
      v1309 = sub_1B074074C(sub_1B074F07C, &v521[-4]);
      v2191 = v1309;
      v1308 = *(v2125 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
      v262 = v1308;
      [v1308 persistResults:v1309 forAction:v2078];

      sub_1B03D09B8(v2152);
      v1311 = v1310;
    }
  }

  sub_1B074ED80(v2221);
  v2208[1] = v2153;
  MEMORY[0x1B27270C0](v2208, v2085, v2087);
  v2207 = v2208[0];
  v2083(v2159, v2161, v2154);
  v1301 = (v2090 + 16) & ~v2090;
  v1302 = swift_allocObject();
  v2092(v1302 + v1301, v2159, v2154);
  v1304 = 0;
  sub_1B074AEA4();
  v1303 = &v2207;
  sub_1B0E46718();

  sub_1B039E440(v1303);
  v2206[10] = v2208[2];
  v2206[11] = v2208[3];
  v2206[12] = v2208[4];
  v2206[13] = v2208[5];
  v2206[14] = v2208[6];
  v2206[15] = v2208[7];
  v2206[16] = v2208[8];
  v1305 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B68, &qword_1B0E9AF90);
  sub_1B074AF90();
  sub_1B0E46738();
  v263 = v2170;
  v2170[27] = v2209;
  v264 = v2210;
  v265 = v2211;
  v2215 = v2213;
  v263[30] = v2212;
  v263[29] = v265;
  v263[28] = v264;
  sub_1B074EDD0(v2214, v2205);
  v266 = v2170;
  *v2170 = v2170[27];
  v267 = v266[28];
  v268 = v266[29];
  v269 = v266[30];
  v2204[8] = v2215;
  v266[3] = v269;
  v266[2] = v268;
  v266[1] = v267;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B78, &qword_1B0E9AF98);
  sub_1B0E46638();
  for (m = v2081; ; m = v525)
  {
    v1299 = m;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26B0, &unk_1B0E9DE00);
    sub_1B0E46648();
    v1300 = v2203;
    if (!v2203)
    {
      sub_1B074EEBC(v2206);
      sub_1B074B1FC(v2214);

      (*(v2156 + 8))(v2161, v2154);
      return sub_1B039E440(&v2236);
    }

    v1298 = v1300;
    v1296 = v1300;
    v2202 = v1300;
    v270 = v1300;
    v1297 = [v1296 persistentID];

    v2201 = v1297;
    sub_1B0E44778();

    if ((*(v2146 + 48))(v2141, 1, v2144) != 1)
    {
      break;
    }

    sub_1B074EB58(v2141);

    v525 = v1299;
LABEL_29:
    ;
  }

  v271 = v2131;
  sub_1B074BA2C(v2141, v2148);
  v1210 = &OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger;
  sub_1B074B69C(v2125 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v2135);
  (*(v2129 + 16))(v271, v2135, v2127);
  sub_1B074B764(v2135);

  sub_1B074B69C(v2125 + *v1210, v2137);
  v272 = (v2137 + *(v2134 + 20));
  v1213 = *v272;
  v1214 = *(v272 + 1);
  v1215 = *(v272 + 1);
  v1216 = *(v272 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v2137);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v1212 = 36;
  v1262 = 7;
  v273 = swift_allocObject();
  v274 = v1214;
  v275 = v1215;
  v276 = v1216;
  v1227 = v273;
  *(v273 + 16) = v1213;
  *(v273 + 20) = v274;
  *(v273 + 24) = v275;
  *(v273 + 32) = v276;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v277 = swift_allocObject();
  v278 = v1214;
  v279 = v1215;
  v280 = v1216;
  v1211 = v277;
  *(v277 + 16) = v1213;
  *(v277 + 20) = v278;
  *(v277 + 24) = v279;
  *(v277 + 32) = v280;

  v1261 = 32;
  v281 = swift_allocObject();
  v282 = v1211;
  v1239 = v281;
  *(v281 + 16) = sub_1B074E050;
  *(v281 + 24) = v282;
  sub_1B0394868();
  sub_1B0394868();

  v283 = swift_allocObject();
  v284 = v1214;
  v285 = v1215;
  v286 = v1216;
  v1248 = v283;
  *(v283 + 16) = v1213;
  *(v283 + 20) = v284;
  *(v283 + 24) = v285;
  *(v283 + 32) = v286;

  sub_1B03D08AC(v2148, v2150);
  v1217 = (*(v2146 + 80) + 16) & ~*(v2146 + 80);
  v1218 = swift_allocObject();
  sub_1B074BA2C(v2150, v1218 + v1217);

  v287 = swift_allocObject();
  v288 = v1218;
  v1253 = v287;
  *(v287 + 16) = sub_1B074EF18;
  *(v287 + 24) = v288;

  v289 = v1296;
  v1266 = 24;
  v1263 = swift_allocObject();
  *(v1263 + 16) = v1296;
  v1295 = sub_1B0E43988();
  v1219 = v1295;
  v1294 = sub_1B0E458C8();
  v1220 = v1294;
  v1257 = 17;
  v1267 = swift_allocObject();
  v1221 = v1267;
  v1230 = 16;
  *(v1267 + 16) = 16;
  v1268 = swift_allocObject();
  v1222 = v1268;
  v1237 = 4;
  *(v1268 + 16) = 4;
  v290 = swift_allocObject();
  v1223 = v290;
  *(v290 + 16) = sub_1B0394C30;
  v1233 = 0;
  *(v290 + 24) = 0;
  v291 = swift_allocObject();
  v292 = v1223;
  v1269 = v291;
  v1224 = v291;
  *(v291 + 16) = sub_1B0394C24;
  *(v291 + 24) = v292;
  v1270 = swift_allocObject();
  v1225 = v1270;
  v1256 = 0;
  *(v1270 + 16) = 0;
  v1271 = swift_allocObject();
  v1226 = v1271;
  *(v1271 + 16) = 1;
  v293 = swift_allocObject();
  v294 = v1227;
  v1228 = v293;
  *(v293 + 16) = sub_1B074DFFC;
  *(v293 + 24) = v294;
  v295 = swift_allocObject();
  v296 = v1228;
  v1272 = v295;
  v1229 = v295;
  *(v295 + 16) = sub_1B039BA88;
  *(v295 + 24) = v296;
  v1273 = swift_allocObject();
  v1231 = v1273;
  *(v1273 + 16) = v1230;
  v1274 = swift_allocObject();
  v1232 = v1274;
  *(v1274 + 16) = v1237;
  v297 = swift_allocObject();
  v298 = v1233;
  v1234 = v297;
  *(v297 + 16) = sub_1B039BB94;
  *(v297 + 24) = v298;
  v299 = swift_allocObject();
  v300 = v1234;
  v1275 = v299;
  v1235 = v299;
  *(v299 + 16) = sub_1B0394C24;
  *(v299 + 24) = v300;
  v1276 = swift_allocObject();
  v1236 = v1276;
  *(v1276 + 16) = v1256;
  v1277 = swift_allocObject();
  v1238 = v1277;
  *(v1277 + 16) = v1237;
  v301 = swift_allocObject();
  v302 = v1239;
  v1240 = v301;
  *(v301 + 16) = sub_1B039BBA0;
  *(v301 + 24) = v302;
  v303 = swift_allocObject();
  v304 = v1240;
  v1278 = v303;
  v1241 = v303;
  *(v303 + 16) = sub_1B039BC08;
  *(v303 + 24) = v304;
  v1279 = swift_allocObject();
  v1242 = v1279;
  *(v1279 + 16) = 112;
  v1280 = swift_allocObject();
  v1243 = v1280;
  v1259 = 8;
  *(v1280 + 16) = 8;
  v1244 = swift_allocObject();
  *(v1244 + 16) = 0x786F626C69616DLL;
  v305 = swift_allocObject();
  v306 = v1244;
  v1281 = v305;
  v1245 = v305;
  *(v305 + 16) = sub_1B06BA324;
  *(v305 + 24) = v306;
  v1282 = swift_allocObject();
  v1246 = v1282;
  *(v1282 + 16) = 37;
  v1283 = swift_allocObject();
  v1247 = v1283;
  *(v1283 + 16) = v1259;
  v307 = swift_allocObject();
  v308 = v1248;
  v1249 = v307;
  *(v307 + 16) = sub_1B074E0E4;
  *(v307 + 24) = v308;
  v309 = swift_allocObject();
  v310 = v1249;
  v1284 = v309;
  v1250 = v309;
  *(v309 + 16) = sub_1B039BCF8;
  *(v309 + 24) = v310;
  v1285 = swift_allocObject();
  v1251 = v1285;
  *(v1285 + 16) = 34;
  v1286 = swift_allocObject();
  v1252 = v1286;
  *(v1286 + 16) = v1259;
  v311 = swift_allocObject();
  v312 = v1253;
  v1254 = v311;
  *(v311 + 16) = sub_1B074EF98;
  *(v311 + 24) = v312;
  v313 = swift_allocObject();
  v314 = v1254;
  v1287 = v313;
  v1255 = v313;
  *(v313 + 16) = sub_1B039BCF8;
  *(v313 + 24) = v314;
  v1288 = swift_allocObject();
  v1258 = v1288;
  *(v1288 + 16) = v1256;
  v1289 = swift_allocObject();
  v1260 = v1289;
  *(v1289 + 16) = v1259;
  v315 = swift_allocObject();
  v316 = v1263;
  v1264 = v315;
  *(v315 + 16) = sub_1B074EFA4;
  *(v315 + 24) = v316;
  v317 = swift_allocObject();
  v318 = v1264;
  v1292 = v317;
  v1265 = v317;
  *(v317 + 16) = sub_1B06BCD8C;
  *(v317 + 24) = v318;
  v1293 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v1290 = sub_1B0E46A48();
  v1291 = v319;

  v320 = v1267;
  v321 = v1291;
  *v1291 = sub_1B0398F5C;
  v321[1] = v320;

  v322 = v1268;
  v323 = v1291;
  v1291[2] = sub_1B0398F5C;
  v323[3] = v322;

  v324 = v1269;
  v325 = v1291;
  v1291[4] = sub_1B0399178;
  v325[5] = v324;

  v326 = v1270;
  v327 = v1291;
  v1291[6] = sub_1B0398F5C;
  v327[7] = v326;

  v328 = v1271;
  v329 = v1291;
  v1291[8] = sub_1B0398F5C;
  v329[9] = v328;

  v330 = v1272;
  v331 = v1291;
  v1291[10] = sub_1B039BA94;
  v331[11] = v330;

  v332 = v1273;
  v333 = v1291;
  v1291[12] = sub_1B0398F5C;
  v333[13] = v332;

  v334 = v1274;
  v335 = v1291;
  v1291[14] = sub_1B0398F5C;
  v335[15] = v334;

  v336 = v1275;
  v337 = v1291;
  v1291[16] = sub_1B0399178;
  v337[17] = v336;

  v338 = v1276;
  v339 = v1291;
  v1291[18] = sub_1B0398F5C;
  v339[19] = v338;

  v340 = v1277;
  v341 = v1291;
  v1291[20] = sub_1B0398F5C;
  v341[21] = v340;

  v342 = v1278;
  v343 = v1291;
  v1291[22] = sub_1B03991EC;
  v343[23] = v342;

  v344 = v1279;
  v345 = v1291;
  v1291[24] = sub_1B0398F5C;
  v345[25] = v344;

  v346 = v1280;
  v347 = v1291;
  v1291[26] = sub_1B0398F5C;
  v347[27] = v346;

  v348 = v1281;
  v349 = v1291;
  v1291[28] = sub_1B03993BC;
  v349[29] = v348;

  v350 = v1282;
  v351 = v1291;
  v1291[30] = sub_1B0398F5C;
  v351[31] = v350;

  v352 = v1283;
  v353 = v1291;
  v1291[32] = sub_1B0398F5C;
  v353[33] = v352;

  v354 = v1284;
  v355 = v1291;
  v1291[34] = sub_1B039BCEC;
  v355[35] = v354;

  v356 = v1285;
  v357 = v1291;
  v1291[36] = sub_1B0398F5C;
  v357[37] = v356;

  v358 = v1286;
  v359 = v1291;
  v1291[38] = sub_1B0398F5C;
  v359[39] = v358;

  v360 = v1287;
  v361 = v1291;
  v1291[40] = sub_1B039BCEC;
  v361[41] = v360;

  v362 = v1288;
  v363 = v1291;
  v1291[42] = sub_1B0398F5C;
  v363[43] = v362;

  v364 = v1289;
  v365 = v1291;
  v1291[44] = sub_1B0398F5C;
  v365[45] = v364;

  v366 = v1291;
  v367 = v1292;
  v1291[46] = sub_1B03992D4;
  v366[47] = v367;
  sub_1B0394964();

  if (os_log_type_enabled(v1295, v1294))
  {
    v368 = v1229;
    v369 = v1226;
    v370 = v1225;
    v371 = v1224;
    v372 = v1222;
    v373 = v1221;
    v374 = v1299;
    v1180 = sub_1B0E45D78();
    v1177 = v1180;
    v1178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v1181 = sub_1B03949A8(0);
    v1179 = v1181;
    v1182 = sub_1B03949A8(2);
    v2198 = v1180;
    v2197 = v1181;
    v2196 = v1182;
    v1183 = &v2198;
    sub_1B0394A48(3, &v2198);
    sub_1B0394A48(8, v1183);
    v2194 = sub_1B0398F5C;
    v2195 = v373;
    sub_1B03949FC(&v2194, v1183, &v2197, &v2196);
    v1184 = v374;
    v1185 = v373;
    v1186 = v372;
    v1187 = v371;
    v1188 = v370;
    v1189 = v369;
    v1190 = v368;
    v1191 = v1231;
    v1192 = v1232;
    v1193 = v1235;
    v1194 = v1236;
    v1195 = v1238;
    v1196 = v1241;
    v1197 = v1242;
    v1198 = v1243;
    v1199 = v1245;
    v1200 = v1246;
    v1201 = v1247;
    v1202 = v1250;
    v1203 = v1251;
    v1204 = v1252;
    v1205 = v1255;
    v1206 = v1258;
    v1207 = v1260;
    v1208 = v1265;
    v1209 = v374;
    if (v374)
    {
      v1151 = v1185;
      v1152 = v1186;
      v1153 = v1187;
      v1154 = v1188;
      v1155 = v1189;
      v1156 = v1190;
      v1157 = v1191;
      v1158 = v1192;
      v1159 = v1193;
      v1160 = v1194;
      v1161 = v1195;
      v1162 = v1196;
      v1163 = v1197;
      v1164 = v1198;
      v1165 = v1199;
      v1166 = v1200;
      v1167 = v1201;
      v1168 = v1202;
      v1169 = v1203;
      v1170 = v1204;
      v1171 = v1205;
      v1172 = v1206;
      v1173 = v1207;
      v1174 = v1208;
      v1175 = 0;
      v552 = v1208;
      v551 = v1207;
      v550 = v1206;
      v549 = v1205;
      v548 = v1204;
      v547 = v1203;
      v546 = v1202;
      v545 = v1201;
      v544 = v1200;
      v543 = v1199;
      v542 = v1198;
      v541 = v1197;
      v540 = v1196;
      v539 = v1195;
      v538 = v1194;
      v537 = v1193;
      v536 = v1192;
      v535 = v1191;
      v534 = v1190;
      v533 = v1189;
      v532 = v1188;
      v531 = v1187;
      v530 = v1186;

      __break(1u);
    }

    else
    {
      v376 = v1229;
      v377 = v1226;
      v378 = v1225;
      v379 = v1224;
      v380 = v1222;
      v381 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1222;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v1125 = 0;
      v1126 = v381;
      v1127 = v380;
      v1128 = v379;
      v1129 = v378;
      v1130 = v377;
      v1131 = v376;
      v1132 = v1231;
      v1133 = v1232;
      v1134 = v1235;
      v1135 = v1236;
      v1136 = v1238;
      v1137 = v1241;
      v1138 = v1242;
      v1139 = v1243;
      v1140 = v1245;
      v1141 = v1246;
      v1142 = v1247;
      v1143 = v1250;
      v1144 = v1251;
      v1145 = v1252;
      v1146 = v1255;
      v1147 = v1258;
      v1148 = v1260;
      v1149 = v1265;
      v1150 = 0;
      v382 = v1229;
      v383 = v1226;
      v384 = v1225;
      v385 = v1224;
      v386 = v1222;
      v387 = v1221;
      v2194 = sub_1B0399178;
      v2195 = v1224;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v1099 = 0;
      v1100 = v387;
      v1101 = v386;
      v1102 = v385;
      v1103 = v384;
      v1104 = v383;
      v1105 = v382;
      v1106 = v1231;
      v1107 = v1232;
      v1108 = v1235;
      v1109 = v1236;
      v1110 = v1238;
      v1111 = v1241;
      v1112 = v1242;
      v1113 = v1243;
      v1114 = v1245;
      v1115 = v1246;
      v1116 = v1247;
      v1117 = v1250;
      v1118 = v1251;
      v1119 = v1252;
      v1120 = v1255;
      v1121 = v1258;
      v1122 = v1260;
      v1123 = v1265;
      v1124 = 0;
      v388 = v1229;
      v389 = v1226;
      v390 = v1225;
      v391 = v1224;
      v392 = v1222;
      v393 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1225;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v1073 = 0;
      v1074 = v393;
      v1075 = v392;
      v1076 = v391;
      v1077 = v390;
      v1078 = v389;
      v1079 = v388;
      v1080 = v1231;
      v1081 = v1232;
      v1082 = v1235;
      v1083 = v1236;
      v1084 = v1238;
      v1085 = v1241;
      v1086 = v1242;
      v1087 = v1243;
      v1088 = v1245;
      v1089 = v1246;
      v1090 = v1247;
      v1091 = v1250;
      v1092 = v1251;
      v1093 = v1252;
      v1094 = v1255;
      v1095 = v1258;
      v1096 = v1260;
      v1097 = v1265;
      v1098 = 0;
      v394 = v1229;
      v395 = v1226;
      v396 = v1225;
      v397 = v1224;
      v398 = v1222;
      v399 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1226;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v1047 = 0;
      v1048 = v399;
      v1049 = v398;
      v1050 = v397;
      v1051 = v396;
      v1052 = v395;
      v1053 = v394;
      v1054 = v1231;
      v1055 = v1232;
      v1056 = v1235;
      v1057 = v1236;
      v1058 = v1238;
      v1059 = v1241;
      v1060 = v1242;
      v1061 = v1243;
      v1062 = v1245;
      v1063 = v1246;
      v1064 = v1247;
      v1065 = v1250;
      v1066 = v1251;
      v1067 = v1252;
      v1068 = v1255;
      v1069 = v1258;
      v1070 = v1260;
      v1071 = v1265;
      v1072 = 0;
      v400 = v1229;
      v401 = v1226;
      v402 = v1225;
      v403 = v1224;
      v404 = v1222;
      v405 = v1221;
      v2194 = sub_1B039BA94;
      v2195 = v1229;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v1021 = 0;
      v1022 = v405;
      v1023 = v404;
      v1024 = v403;
      v1025 = v402;
      v1026 = v401;
      v1027 = v400;
      v1028 = v1231;
      v1029 = v1232;
      v1030 = v1235;
      v1031 = v1236;
      v1032 = v1238;
      v1033 = v1241;
      v1034 = v1242;
      v1035 = v1243;
      v1036 = v1245;
      v1037 = v1246;
      v1038 = v1247;
      v1039 = v1250;
      v1040 = v1251;
      v1041 = v1252;
      v1042 = v1255;
      v1043 = v1258;
      v1044 = v1260;
      v1045 = v1265;
      v1046 = 0;
      v406 = v1229;
      v407 = v1226;
      v408 = v1225;
      v409 = v1224;
      v410 = v1222;
      v411 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1231;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v995 = 0;
      v996 = v411;
      v997 = v410;
      v998 = v409;
      v999 = v408;
      v1000 = v407;
      v1001 = v406;
      v1002 = v1231;
      v1003 = v1232;
      v1004 = v1235;
      v1005 = v1236;
      v1006 = v1238;
      v1007 = v1241;
      v1008 = v1242;
      v1009 = v1243;
      v1010 = v1245;
      v1011 = v1246;
      v1012 = v1247;
      v1013 = v1250;
      v1014 = v1251;
      v1015 = v1252;
      v1016 = v1255;
      v1017 = v1258;
      v1018 = v1260;
      v1019 = v1265;
      v1020 = 0;
      v412 = v1229;
      v413 = v1226;
      v414 = v1225;
      v415 = v1224;
      v416 = v1222;
      v417 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1232;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v969 = 0;
      v970 = v417;
      v971 = v416;
      v972 = v415;
      v973 = v414;
      v974 = v413;
      v975 = v412;
      v976 = v1231;
      v977 = v1232;
      v978 = v1235;
      v979 = v1236;
      v980 = v1238;
      v981 = v1241;
      v982 = v1242;
      v983 = v1243;
      v984 = v1245;
      v985 = v1246;
      v986 = v1247;
      v987 = v1250;
      v988 = v1251;
      v989 = v1252;
      v990 = v1255;
      v991 = v1258;
      v992 = v1260;
      v993 = v1265;
      v994 = 0;
      v418 = v1229;
      v419 = v1226;
      v420 = v1225;
      v421 = v1224;
      v422 = v1222;
      v423 = v1221;
      v2194 = sub_1B0399178;
      v2195 = v1235;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v943 = 0;
      v944 = v423;
      v945 = v422;
      v946 = v421;
      v947 = v420;
      v948 = v419;
      v949 = v418;
      v950 = v1231;
      v951 = v1232;
      v952 = v1235;
      v953 = v1236;
      v954 = v1238;
      v955 = v1241;
      v956 = v1242;
      v957 = v1243;
      v958 = v1245;
      v959 = v1246;
      v960 = v1247;
      v961 = v1250;
      v962 = v1251;
      v963 = v1252;
      v964 = v1255;
      v965 = v1258;
      v966 = v1260;
      v967 = v1265;
      v968 = 0;
      v424 = v1229;
      v425 = v1226;
      v426 = v1225;
      v427 = v1224;
      v428 = v1222;
      v429 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1236;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v917 = 0;
      v918 = v429;
      v919 = v428;
      v920 = v427;
      v921 = v426;
      v922 = v425;
      v923 = v424;
      v924 = v1231;
      v925 = v1232;
      v926 = v1235;
      v927 = v1236;
      v928 = v1238;
      v929 = v1241;
      v930 = v1242;
      v931 = v1243;
      v932 = v1245;
      v933 = v1246;
      v934 = v1247;
      v935 = v1250;
      v936 = v1251;
      v937 = v1252;
      v938 = v1255;
      v939 = v1258;
      v940 = v1260;
      v941 = v1265;
      v942 = 0;
      v430 = v1229;
      v431 = v1226;
      v432 = v1225;
      v433 = v1224;
      v434 = v1222;
      v435 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1238;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v891 = 0;
      v892 = v435;
      v893 = v434;
      v894 = v433;
      v895 = v432;
      v896 = v431;
      v897 = v430;
      v898 = v1231;
      v899 = v1232;
      v900 = v1235;
      v901 = v1236;
      v902 = v1238;
      v903 = v1241;
      v904 = v1242;
      v905 = v1243;
      v906 = v1245;
      v907 = v1246;
      v908 = v1247;
      v909 = v1250;
      v910 = v1251;
      v911 = v1252;
      v912 = v1255;
      v913 = v1258;
      v914 = v1260;
      v915 = v1265;
      v916 = 0;
      v436 = v1229;
      v437 = v1226;
      v438 = v1225;
      v439 = v1224;
      v440 = v1222;
      v441 = v1221;
      v2194 = sub_1B03991EC;
      v2195 = v1241;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v865 = 0;
      v866 = v441;
      v867 = v440;
      v868 = v439;
      v869 = v438;
      v870 = v437;
      v871 = v436;
      v872 = v1231;
      v873 = v1232;
      v874 = v1235;
      v875 = v1236;
      v876 = v1238;
      v877 = v1241;
      v878 = v1242;
      v879 = v1243;
      v880 = v1245;
      v881 = v1246;
      v882 = v1247;
      v883 = v1250;
      v884 = v1251;
      v885 = v1252;
      v886 = v1255;
      v887 = v1258;
      v888 = v1260;
      v889 = v1265;
      v890 = 0;
      v442 = v1229;
      v443 = v1226;
      v444 = v1225;
      v445 = v1224;
      v446 = v1222;
      v447 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1242;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v839 = 0;
      v840 = v447;
      v841 = v446;
      v842 = v445;
      v843 = v444;
      v844 = v443;
      v845 = v442;
      v846 = v1231;
      v847 = v1232;
      v848 = v1235;
      v849 = v1236;
      v850 = v1238;
      v851 = v1241;
      v852 = v1242;
      v853 = v1243;
      v854 = v1245;
      v855 = v1246;
      v856 = v1247;
      v857 = v1250;
      v858 = v1251;
      v859 = v1252;
      v860 = v1255;
      v861 = v1258;
      v862 = v1260;
      v863 = v1265;
      v864 = 0;
      v448 = v1229;
      v449 = v1226;
      v450 = v1225;
      v451 = v1224;
      v452 = v1222;
      v453 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1243;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v813 = 0;
      v814 = v453;
      v815 = v452;
      v816 = v451;
      v817 = v450;
      v818 = v449;
      v819 = v448;
      v820 = v1231;
      v821 = v1232;
      v822 = v1235;
      v823 = v1236;
      v824 = v1238;
      v825 = v1241;
      v826 = v1242;
      v827 = v1243;
      v828 = v1245;
      v829 = v1246;
      v830 = v1247;
      v831 = v1250;
      v832 = v1251;
      v833 = v1252;
      v834 = v1255;
      v835 = v1258;
      v836 = v1260;
      v837 = v1265;
      v838 = 0;
      v454 = v1229;
      v455 = v1226;
      v456 = v1225;
      v457 = v1224;
      v458 = v1222;
      v459 = v1221;
      v2194 = sub_1B03993BC;
      v2195 = v1245;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v787 = 0;
      v788 = v459;
      v789 = v458;
      v790 = v457;
      v791 = v456;
      v792 = v455;
      v793 = v454;
      v794 = v1231;
      v795 = v1232;
      v796 = v1235;
      v797 = v1236;
      v798 = v1238;
      v799 = v1241;
      v800 = v1242;
      v801 = v1243;
      v802 = v1245;
      v803 = v1246;
      v804 = v1247;
      v805 = v1250;
      v806 = v1251;
      v807 = v1252;
      v808 = v1255;
      v809 = v1258;
      v810 = v1260;
      v811 = v1265;
      v812 = 0;
      v460 = v1229;
      v461 = v1226;
      v462 = v1225;
      v463 = v1224;
      v464 = v1222;
      v465 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1246;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v761 = 0;
      v762 = v465;
      v763 = v464;
      v764 = v463;
      v765 = v462;
      v766 = v461;
      v767 = v460;
      v768 = v1231;
      v769 = v1232;
      v770 = v1235;
      v771 = v1236;
      v772 = v1238;
      v773 = v1241;
      v774 = v1242;
      v775 = v1243;
      v776 = v1245;
      v777 = v1246;
      v778 = v1247;
      v779 = v1250;
      v780 = v1251;
      v781 = v1252;
      v782 = v1255;
      v783 = v1258;
      v784 = v1260;
      v785 = v1265;
      v786 = 0;
      v466 = v1229;
      v467 = v1226;
      v468 = v1225;
      v469 = v1224;
      v470 = v1222;
      v471 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1247;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v735 = 0;
      v736 = v471;
      v737 = v470;
      v738 = v469;
      v739 = v468;
      v740 = v467;
      v741 = v466;
      v742 = v1231;
      v743 = v1232;
      v744 = v1235;
      v745 = v1236;
      v746 = v1238;
      v747 = v1241;
      v748 = v1242;
      v749 = v1243;
      v750 = v1245;
      v751 = v1246;
      v752 = v1247;
      v753 = v1250;
      v754 = v1251;
      v755 = v1252;
      v756 = v1255;
      v757 = v1258;
      v758 = v1260;
      v759 = v1265;
      v760 = 0;
      v472 = v1229;
      v473 = v1226;
      v474 = v1225;
      v475 = v1224;
      v476 = v1222;
      v477 = v1221;
      v2194 = sub_1B039BCEC;
      v2195 = v1250;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v709 = 0;
      v710 = v477;
      v711 = v476;
      v712 = v475;
      v713 = v474;
      v714 = v473;
      v715 = v472;
      v716 = v1231;
      v717 = v1232;
      v718 = v1235;
      v719 = v1236;
      v720 = v1238;
      v721 = v1241;
      v722 = v1242;
      v723 = v1243;
      v724 = v1245;
      v725 = v1246;
      v726 = v1247;
      v727 = v1250;
      v728 = v1251;
      v729 = v1252;
      v730 = v1255;
      v731 = v1258;
      v732 = v1260;
      v733 = v1265;
      v734 = 0;
      v478 = v1229;
      v479 = v1226;
      v480 = v1225;
      v481 = v1224;
      v482 = v1222;
      v483 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1251;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v683 = 0;
      v684 = v483;
      v685 = v482;
      v686 = v481;
      v687 = v480;
      v688 = v479;
      v689 = v478;
      v690 = v1231;
      v691 = v1232;
      v692 = v1235;
      v693 = v1236;
      v694 = v1238;
      v695 = v1241;
      v696 = v1242;
      v697 = v1243;
      v698 = v1245;
      v699 = v1246;
      v700 = v1247;
      v701 = v1250;
      v702 = v1251;
      v703 = v1252;
      v704 = v1255;
      v705 = v1258;
      v706 = v1260;
      v707 = v1265;
      v708 = 0;
      v484 = v1229;
      v485 = v1226;
      v486 = v1225;
      v487 = v1224;
      v488 = v1222;
      v489 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1252;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v657 = 0;
      v658 = v489;
      v659 = v488;
      v660 = v487;
      v661 = v486;
      v662 = v485;
      v663 = v484;
      v664 = v1231;
      v665 = v1232;
      v666 = v1235;
      v667 = v1236;
      v668 = v1238;
      v669 = v1241;
      v670 = v1242;
      v671 = v1243;
      v672 = v1245;
      v673 = v1246;
      v674 = v1247;
      v675 = v1250;
      v676 = v1251;
      v677 = v1252;
      v678 = v1255;
      v679 = v1258;
      v680 = v1260;
      v681 = v1265;
      v682 = 0;
      v490 = v1229;
      v491 = v1226;
      v492 = v1225;
      v493 = v1224;
      v494 = v1222;
      v495 = v1221;
      v2194 = sub_1B039BCEC;
      v2195 = v1255;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v631 = 0;
      v632 = v495;
      v633 = v494;
      v634 = v493;
      v635 = v492;
      v636 = v491;
      v637 = v490;
      v638 = v1231;
      v639 = v1232;
      v640 = v1235;
      v641 = v1236;
      v642 = v1238;
      v643 = v1241;
      v644 = v1242;
      v645 = v1243;
      v646 = v1245;
      v647 = v1246;
      v648 = v1247;
      v649 = v1250;
      v650 = v1251;
      v651 = v1252;
      v652 = v1255;
      v653 = v1258;
      v654 = v1260;
      v655 = v1265;
      v656 = 0;
      v496 = v1229;
      v497 = v1226;
      v498 = v1225;
      v499 = v1224;
      v500 = v1222;
      v501 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1258;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v605 = 0;
      v606 = v501;
      v607 = v500;
      v608 = v499;
      v609 = v498;
      v610 = v497;
      v611 = v496;
      v612 = v1231;
      v613 = v1232;
      v614 = v1235;
      v615 = v1236;
      v616 = v1238;
      v617 = v1241;
      v618 = v1242;
      v619 = v1243;
      v620 = v1245;
      v621 = v1246;
      v622 = v1247;
      v623 = v1250;
      v624 = v1251;
      v625 = v1252;
      v626 = v1255;
      v627 = v1258;
      v628 = v1260;
      v629 = v1265;
      v630 = 0;
      v502 = v1229;
      v503 = v1226;
      v504 = v1225;
      v505 = v1224;
      v506 = v1222;
      v507 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1260;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v579 = 0;
      v580 = v507;
      v581 = v506;
      v582 = v505;
      v583 = v504;
      v584 = v503;
      v585 = v502;
      v586 = v1231;
      v587 = v1232;
      v588 = v1235;
      v589 = v1236;
      v590 = v1238;
      v591 = v1241;
      v592 = v1242;
      v593 = v1243;
      v594 = v1245;
      v595 = v1246;
      v596 = v1247;
      v597 = v1250;
      v598 = v1251;
      v599 = v1252;
      v600 = v1255;
      v601 = v1258;
      v602 = v1260;
      v603 = v1265;
      v604 = 0;
      v508 = v1229;
      v509 = v1226;
      v510 = v1225;
      v511 = v1224;
      v512 = v1222;
      v513 = v1221;
      v2194 = sub_1B03992D4;
      v2195 = v1265;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v553 = 0;
      v554 = v513;
      v555 = v512;
      v556 = v511;
      v557 = v510;
      v558 = v509;
      v559 = v508;
      v560 = v1231;
      v561 = v1232;
      v562 = v1235;
      v563 = v1236;
      v564 = v1238;
      v565 = v1241;
      v566 = v1242;
      v567 = v1243;
      v568 = v1245;
      v569 = v1246;
      v570 = v1247;
      v571 = v1250;
      v572 = v1251;
      v573 = v1252;
      v574 = v1255;
      v575 = v1258;
      v576 = v1260;
      v577 = v1265;
      v578 = 0;
      _os_log_impl(&dword_1B0389000, v1219, v1220, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Uploaded delete flags for UIDs %{public}s for change %lld", v1177, 0x3Fu);
      sub_1B03998A8(v1179);
      sub_1B03998A8(v1182);
      sub_1B0E45D58();

      v1176 = v553;
    }
  }

  else
  {
    v375 = v1299;

    v1176 = v375;
  }

  v514 = v1176;

  (*(v2129 + 8))(v2131, v2127);
  v526 = 0;
  v527 = sub_1B071C094();
  v515 = sub_1B074B4A4();
  v517 = sub_1B039CA88(sub_1B0740794, v526, v2144, v527, MEMORY[0x1E69E73E0], v515, MEMORY[0x1E69E7410], v516);
  v528 = v514;
  v529 = v517;
  if (!v514)
  {
    v524 = v529;
    v2200 = v529;
    sub_1B074EFAC();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v521[1] = v521;
    MEMORY[0x1EEE9AC00](v521);
    v521[-2] = v518;
    v523 = sub_1B0740A78(sub_1B074F010, &v521[-4]);

    v2199 = v523;
    v522 = *(v2125 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
    v519 = v522;
    [v522 persistResults:v523 forAction:v1296];

    sub_1B03D09B8(v2148);

    v525 = v528;
    goto LABEL_29;
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_1B0740480()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v1 = sub_1B0E46A48();
  sub_1B041C1E8();
  return MessageIdentifierSet.init(arrayLiteral:)(v1, &type metadata for UID);
}

id sub_1B07404FC(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 persistentID];
  MEMORY[0x1E69E5920](a1);
  v4 = [v3 databaseID];
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t sub_1B0740584(void *a1, uint64_t a2)
{
  v10 = a1;
  v11 = a2;
  v20 = 0;
  v19 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v8 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v12 = &v7 - v8;
  v15 = sub_1B0E43308();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v9 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10);
  v4 = &v7 - v9;
  v16 = &v7 - v9;
  v20 = v3;
  v19 = v5;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v18 = [v10 completedUIDs];
  swift_unknownObjectRelease();
  sub_1B03D08AC(v11, v12);
  sub_1B0A62478(v12, v4);
  v17 = sub_1B0E43258();
  (*(v13 + 8))(v16, v15);
  [v18 addIndexes_];
  MEMORY[0x1E69E5920](v17);
  return MEMORY[0x1E69E5920](v18);
}

unint64_t sub_1B0740794@<X0>(int *a1@<X0>, unint64_t *a2@<X8>)
{
  v6 = 0;
  v6 = *a1;
  sub_1B071C094();
  v5 = v6;
  result = sub_1B0740964(sub_1B074FE78, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1B0740810(void *a1, int a2)
{
  v10 = a1;
  v9 = a2;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v8[0] = sub_1B0E46A28();
  v8[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  sub_1B0E469E8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v8);
  sub_1B0E44C88();
  v6 = sub_1B0E44AC8();

  [a1 setSourceRemoteID_];
  MEMORY[0x1E69E5920](v6);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B07409AC(void *a1)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setPhaseForResults_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B071C094();
  v2 = sub_1B0E451A8();

  [a1 setCompletedItems_];
  MEMORY[0x1E69E5920](v2);
  return swift_unknownObjectRelease();
}

id sub_1B0740AC0()
{
  v4 = *(v0 + 16);
  MEMORY[0x1E69E5928](v4);
  v5 = [v4 account];
  MEMORY[0x1E69E5920](v4);
  if (v5)
  {
    v3 = v5;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v2 = sub_1B039AB2C();
  MEMORY[0x1E69E5920](v3);
  return v2;
}

uint64_t sub_1B0740C34(int a1, uint64_t a2)
{
  v8 = 0;
  v13 = a1;
  v12 = a2;
  v9 = a1;
  v5 = sub_1B041C1E8();
  v2 = sub_1B07467B8();
  result = MessageIdentifier.init<A>(exactly:)(&v9, &type metadata for UID, MEMORY[0x1E69E7668], v5, v2, &v10);
  if ((v11 & 1) == 0)
  {
    v8 = v10;
    v6 = v10;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    return MessageIdentifierSet.insert(_:)(v7, &v6, v4);
  }

  return result;
}

uint64_t sub_1B0740D70(uint64_t a1)
{
  v3 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v1 = &v3 - v4;
  v8 = &v3 - v4;
  v5 = swift_projectBox();
  v6 = &v10;
  swift_beginAccess();
  sub_1B03D08AC(v5, v1);
  swift_endAccess();
  v9 = MessageIdentifierSet.count.getter();
  sub_1B03D09B8(v8);
  return v9;
}

double sub_1B0740E54@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *a1;
  v11 = *a2;
  v12 = *(a2 + 8);
  sub_1B0E46A48();
  sub_1B074F084();
  sub_1B0E45438();
  *&v9 = FlagsChange.init(message:flags:changeIDs:)(v7, v11);
  *(&v9 + 1) = v3;
  *&v10 = v4;
  *(&v10 + 1) = v5;
  *a3 = v9;
  result = v4;
  a3[1] = v10;
  return result;
}

uint64_t sub_1B0740FC0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B03D08AC(v2, &v5 - v6);
  v3 = _s21UnfilteredFlagChangesVMa();
  sub_1B074F0FC(v7, v1 + *(v3 + 20));
  return sub_1B03D09B8(v8);
}

uint64_t sub_1B0741070()
{
  v2 = *(v0 + *(_s21UnfilteredFlagChangesVMa() + 24));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07410A8(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = (v1 + *(_s21UnfilteredFlagChangesVMa() + 24));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_1B07410F4()
{
  v2 = *(v0 + *(_s21UnfilteredFlagChangesVMa() + 28));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B074112C(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = (v1 + *(_s21UnfilteredFlagChangesVMa() + 28));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_1B0741178(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C00, &qword_1B0E9AFF8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.formUnion(_:)(a2, v2);
}

int *sub_1B07411F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v10 = _s21UnfilteredFlagChangesVMa();
  sub_1B074BA2C(a2, a5 + v10[5]);
  result = v10;
  *(a5 + v10[6]) = a3;
  *(a5 + v10[7]) = a4;
  return result;
}

uint64_t sub_1B0741268()
{
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07412D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t sub_1B0741390@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1B07413A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a1;
  v39 = a2;
  v45 = a3;
  v40 = a5;
  v43 = a6;
  v44 = a7;
  v35 = 0;
  v36 = sub_1B07419E4;
  v37 = sub_1B074F16C;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v41 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v42 = v14 - v41;
  v66 = v8;
  v65 = v9;
  v64 = v10;
  v63 = a4;
  v47 = swift_projectBox();
  v62 = v47;
  v61 = v43 + 16;
  v60 = v44;
  v59 = v45;
  if (MessageIdentifierSet.contains(_:)(&v59, v46))
  {
    v19 = v35;
    v20 = v35;
  }

  else
  {
    v11 = v42;
    v33 = &v58;
    swift_beginAccess();
    sub_1B03D08AC(v47, v11);
    swift_endAccess();
    v57 = v45;
    v34 = MessageIdentifierSet.contains(_:)(&v57, v46);
    sub_1B03D09B8(v42);
    if (v34)
    {
      v19 = v35;
      v20 = v35;
    }

    else
    {
      v31 = &v56;
      swift_beginAccess();
      v27 = *(v43 + 16);
      v29 = &v54;
      v54 = v45;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C10, &qword_1B0E9B008);
      v30 = sub_1B043CF70();
      sub_1B0E44778();
      v32 = v55;
      swift_endAccess();
      v53 = v32;
      v26 = v32 != 0;
      v25 = v26;
      sub_1B039E440(&v53);
      if (v25)
      {
        v24 = 1;
      }

      else
      {
        v21 = &v52;
        swift_beginAccess();
        v22 = *(v43 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        swift_endAccess();
        v23 = sub_1B0E44628();

        v24 = v23 < v44;
      }

      if (v24)
      {
        MEMORY[0x1E69E5928](v38);
        MEMORY[0x1E69E5928](v39);
        v14[1] = v51;
        v51[0] = v38;
        v51[1] = v39;
        v16 = &v50;
        swift_beginAccess();
        v14[0] = &v49;
        v49 = v45;
        v12 = swift_allocObject();
        v17 = v12;
        *(v12 + 16) = v36;
        *(v12 + 24) = 0;

        v18 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1CF0, &qword_1B0E9B0F0);
        v14[2] = &v48;
        v15 = sub_1B0E44728();
        sub_1B0E452E8();
        v15();
        swift_endAccess();

        v19 = v37;
        v20 = v18;
      }

      else
      {
        v19 = v35;
        v20 = v35;
      }
    }
  }

  return sub_1B04197E4(v19);
}

uint64_t sub_1B0741A18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B0741A54(uint64_t a1, id *a2)
{
  v12 = 0;
  v8 = 0;
  v13 = a1;
  v12 = *a2;
  v9 = [v12 imapUID];
  v5 = sub_1B041C1E8();
  v2 = sub_1B03948EC();
  result = MessageIdentifier.init<A>(exactly:)(&v9, &type metadata for UID, MEMORY[0x1E69E6530], v5, v2, &v10);
  if ((v11 & 1) == 0)
  {
    v8 = v10;
    v6 = v10;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    return MessageIdentifierSet.insert(_:)(v7, &v6, v4);
  }

  return result;
}

uint64_t sub_1B0741B50@<X0>(id *a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v30 = 0;
  v29 = 0;
  v19 = *a1;
  v30 = v19;
  v29 = a2;
  v26 = [v19 imapUID];
  v20 = sub_1B041C1E8();
  v3 = sub_1B03948EC();
  MessageIdentifier.init<A>(exactly:)(&v26, &type metadata for UID, MEMORY[0x1E69E6530], v20, v3, &v27);
  v21 = v27;
  if (v28)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  v14 = *a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C10, &qword_1B0E9B008);
  sub_1B043CF70();
  sub_1B0E44778();
  if (!v25)
  {
    swift_endAccess();
LABEL_9:
    result = v18;
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    return result;
  }

  swift_endAccess();
  v8 = [v19 serverFlags];
  KeyPath = swift_getKeyPath();

  v10 = sub_1B074B258();
  v12 = sub_1B074FF18();
  v13 = sub_1B039CA88(sub_1B074FEE4, KeyPath, v15, v10, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v11);
  if (v18)
  {

    __break(1u);
    __break(1u);
  }

  else
  {

    v24 = sub_1B07420C8(v8, v13);
    sub_1B039CA88(sub_1B07422D8, 0, v15, &type metadata for ChangeID, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v11);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1F18, &qword_1B0E9B220);
    sub_1B074F084();
    sub_1B074FFA0();
    sub_1B0E45598();
    v22 = FlagsChange.init(message:flags:changeIDs:)(v21, v24);
    *&v23 = v4;
    *(&v23 + 1) = v5;
    *a3 = v22;
    a3[1] = v6;
    *(a3 + 1) = v23;

    return 0;
  }

  return result;
}

uint64_t sub_1B0742030(void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  MEMORY[0x1E69E5928](*a1);
  MEMORY[0x1E69E5928](v3);

  v4[0] = v2;
  v4[1] = v3;
  swift_getAtKeyPath();
  sub_1B06D61B0(v4);
}

uint64_t sub_1B07420C8(void *a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  v14 = a1;
  v13 = a2;
  MEMORY[0x1E69E5928](a1);
  v11 = sub_1B072136C(a1);
  iCloudCleanup = v19.iCloudCleanup;
  v9 = v11;
  v10 = v19.iCloudCleanup;
  *&v19.unread = v11;
  v19.iCloudCleanup &= 1u;
  v20 = FlagsWithModifications.init(flags:)(v19);
  *&v7 = *&v20.flags.unread;
  *(&v7 + 1) = *&v20.flags.iCloudCleanup;
  v8 = *&v20.originalFlags.value.label;
  v17 = v7;
  v18 = *&v20.originalFlags.value.label;
  v15 = v7;
  v16 = *&v20.originalFlags.value.label;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1CF8, &qword_1B0E9B0F8);
  sub_1B074F178();
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1D08, qword_1B0E9B100);
    sub_1B0E46518();
    if (!v5)
    {
      break;
    }

    sub_1B074C104(v5);
    (MEMORY[0x1E69E5920])();
  }

  sub_1B039E440(v6);
  v4 = v15;

  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1B07422D8@<X0>(void *a1@<X0>, unsigned int *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  MEMORY[0x1E69E5928](*a1);
  MEMORY[0x1E69E5928](v3);
  v6 = sub_1B07B7350(v3);
  MEMORY[0x1E69E5920](v4);
  result = v6;
  *a2 = v6;
  return result;
}

uint64_t sub_1B074236C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = 0;
  v20 = a3;
  *&v21 = a4;
  *(&v21 + 1) = a5;
  v22 = a6;
  v19 = a1;
  v18 = a2;
  v11 = a3;
  v12 = a4;
  v13 = BYTE4(a4);
  v14 = *(&v21 + 5);
  v15 = BYTE5(a5);
  v17 = a6;
  v10 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  if ((MessageIdentifierSet.contains(_:)(&v10, v6) & 1) == 0)
  {
    return 0;
  }

  MEMORY[0x1E69E5928](a2);
  return a2;
}

uint64_t sub_1B07424A0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, uint64_t *a3@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C00, &qword_1B0E9AFF8);
  result = a2(a1, *(a1 + *(v3 + 48)));
  *a3 = result;
  return result;
}

uint64_t sub_1B07425B4(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v862 = v885;
  v792 = v3;
  v861 = v2;
  v848 = v4;
  v793 = v1;
  v794 = sub_1B074E050;
  v795 = sub_1B0394C30;
  v796 = sub_1B0394C24;
  v797 = sub_1B074DFFC;
  v798 = sub_1B039BA88;
  v799 = sub_1B039BB94;
  v800 = sub_1B0394C24;
  v801 = sub_1B039BBA0;
  v802 = sub_1B039BC08;
  v803 = sub_1B06BA324;
  v804 = sub_1B074E0E4;
  v805 = sub_1B039BCF8;
  v806 = sub_1B070B550;
  v807 = sub_1B039BCF8;
  v808 = sub_1B0398F5C;
  v809 = sub_1B0398F5C;
  v810 = sub_1B0399178;
  v811 = sub_1B0398F5C;
  v812 = sub_1B0398F5C;
  v813 = sub_1B039BA94;
  v814 = sub_1B0398F5C;
  v815 = sub_1B0398F5C;
  v816 = sub_1B0399178;
  v817 = sub_1B0398F5C;
  v818 = sub_1B0398F5C;
  v819 = sub_1B03991EC;
  v820 = sub_1B0398F5C;
  v821 = sub_1B0398F5C;
  v822 = sub_1B03993BC;
  v823 = sub_1B0398F5C;
  v824 = sub_1B0398F5C;
  v825 = sub_1B039BCEC;
  v826 = sub_1B0398F5C;
  v827 = sub_1B0398F5C;
  v828 = sub_1B039BCEC;
  v863 = v890;
  memset(v890, 0, sizeof(v890));
  memset(&v889[3], 0, 24);
  v889[0] = 0;
  v889[1] = 0;
  v888 = 0;
  v881 = 0;
  v882 = 0;
  v865 = 0;
  v875 = 0;
  v872 = 0;
  v869 = 0;
  v837 = 0;
  v829 = sub_1B0E439A8();
  v830 = *(v829 - 8);
  v831 = v829 - 8;
  v832 = (*(v830 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v829);
  v833 = &v164 - v832;
  v834 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  v835 = (*(*(v834 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v837);
  v836 = &v164 - v835;
  *(v862 + 25) = &v164 - v835;
  v838 = _s6LoggerVMa_1();
  v839 = (*(*(v838 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v837);
  v840 = &v164 - v839;
  v841 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v842 = &v164 - v841;
  v843 = sub_1B0E42E68();
  v844 = *(v843 - 8);
  v845 = v843 - 8;
  v846 = (*(v844 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v843);
  v847 = &v164 - v846;
  v849 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v855 = *(*(v849 - 8) + 64);
  v850 = (v855 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v861);
  v851 = &v164 - v850;
  v852 = (v855 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = v855;
  v853 = &v164 - v852;
  *(v10 + 192) = &v164 - v852;
  v854 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = v855;
  v858 = &v164 - v854;
  *(v13 + 184) = &v164 - v854;
  v856 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v857 = &v164 - v856;
  v15[22] = &v164 - v856;
  v15[21] = v14;
  v15[20] = v16;
  v15[19] = v1;
  v860 = sub_1B041C1E8();
  v859 = &type metadata for UID;
  MessageIdentifierSet.init()(&type metadata for UID, v860);
  MessageIdentifierSet.init()(v859, v860);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v862 + 16) = v861;
  v864 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  sub_1B074B86C();
  sub_1B0E45798();
  for (i = v865; ; i = v164)
  {
    v790 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E36C0, &qword_1B0E9B018);
    sub_1B0E46518();
    v791 = *(v862 + 15);
    if (!v791)
    {
      break;
    }

    v789 = v791;
    v17 = v843;
    v18 = v847;
    v19 = v844;
    v20 = v793;
    v783 = v791;
    *(v862 + 14) = v791;
    v784 = *(v19 + 16);
    v785 = v19 + 16;
    v784(v18, v20 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL, v17);
    v788 = sub_1B0720178(v847);
    v786 = *(v844 + 8);
    v787 = v844 + 8;
    v786(v847, v843);
    if (!v788)
    {
      v784(v847, v793 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL, v843);
      v773 = sub_1B0721E7C(v847);
      v786(v847, v843);
      if (v773)
      {
        v772 = v773;
        v22 = v773;
        v765 = v773;
        *(v862 + 12) = v773;
        v770 = [v22 itemsToDelete];
        v766 = sub_1B071C094();
        v769 = sub_1B0E451B8();
        *(v862 + 11) = v769;
        v767 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
        v768 = sub_1B071C0F8();
        v771 = sub_1B0E45748();

        MEMORY[0x1E69E5920](v770);
        if ((v771 & 1) == 0)
        {
          v763 = [v765 itemsToDelete];
          *(v862 + 8) = sub_1B0E451B8();
          sub_1B0E45798();
          MEMORY[0x1E69E5920](v763);
          for (j = v790; ; j = v754)
          {
            v761 = j;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C40, &qword_1B0E9B030);
            sub_1B0E46518();
            v762 = *(v862 + 7);
            if (!v762)
            {
              break;
            }

            v760 = v762;
            v758 = v762;
            *(v862 + 6) = v762;
            *(v862 + 5) = sub_1B0917A3C();
            v759 = v886;
            if (v887)
            {
              v753 = [v758 sourceRemoteID];
              if (v753)
              {
                v752 = v753;
                v747 = v753;
                v748 = sub_1B0E44AD8();
                v749 = v23;
                MEMORY[0x1E69E5920](v747);
                v750 = v748;
                v751 = v749;
              }

              else
              {
                v750 = 0;
                v751 = 0;
              }

              v24 = v862;
              v25 = v758;
              v26 = v751;
              *v862 = v750;
              *(v24 + 1) = v26;
              MEMORY[0x1E69E5928](v25);
              if (*(v862 + 1))
              {
                *(v862 + 1) = *v862;
              }

              else
              {
                v746 = [v758 sourceMessage];
                if (v746)
                {
                  v745 = v746;
                  v743 = v746;
                  swift_getObjectType();
                  v744 = [v743 remoteID];
                  if (v744)
                  {
                    v742 = v744;
                    v735 = v744;
                    v736 = sub_1B0E44AD8();
                    v737 = v27;
                    MEMORY[0x1E69E5920](v735);
                    v738 = v736;
                    v739 = v737;
                  }

                  else
                  {
                    v738 = 0;
                    v739 = 0;
                  }

                  v734 = v739;
                  v733 = v738;
                  swift_unknownObjectRelease();
                  v740 = v733;
                  v741 = v734;
                }

                else
                {
                  v740 = 0;
                  v741 = 0;
                }

                v883 = v740;
                v884 = v741;
                if (v741)
                {
                  v28 = v862;
                  v29 = v884;
                  *(v862 + 2) = v883;
                  *(v28 + 3) = v29;
                }

                else
                {
                  v30 = sub_1B0E44838();
                  v31 = v862;
                  *(v862 + 2) = v30;
                  *(v31 + 3) = v32;
                  if (v884)
                  {
                    sub_1B03B1198(&v883);
                  }
                }

                if (*(v862 + 1))
                {
                  sub_1B03B1198(v885);
                }
              }

              v33 = v833;
              MEMORY[0x1E69E5920](v758);
              v688 = *(v862 + 2);
              v689 = *(v862 + 3);
              v881 = v688;
              v882 = v689;
              v681 = &OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger;
              sub_1B074B69C(v793 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v840);
              (*(v830 + 16))(v33, v840, v829);
              sub_1B074B764(v840);

              sub_1B074B69C(v793 + *v681, v842);
              v34 = (v842 + *(v838 + 20));
              v684 = *v34;
              v685 = *(v34 + 1);
              v686 = *(v34 + 1);
              v687 = *(v34 + 4);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B074B764(v842);

              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v683 = 36;
              v704 = 7;
              v35 = swift_allocObject();
              v36 = v685;
              v37 = v686;
              v38 = v687;
              v691 = v35;
              *(v35 + 16) = v684;
              *(v35 + 20) = v36;
              *(v35 + 24) = v37;
              *(v35 + 32) = v38;
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v39 = swift_allocObject();
              v40 = v685;
              v41 = v686;
              v42 = v687;
              v682 = v39;
              *(v39 + 16) = v684;
              *(v39 + 20) = v40;
              *(v39 + 24) = v41;
              *(v39 + 32) = v42;

              v703 = 32;
              v43 = swift_allocObject();
              v44 = v682;
              v696 = v43;
              *(v43 + 16) = v794;
              *(v43 + 24) = v44;
              sub_1B0394868();
              sub_1B0394868();

              v45 = swift_allocObject();
              v46 = v685;
              v47 = v686;
              v48 = v687;
              v699 = v45;
              *(v45 + 16) = v684;
              *(v45 + 20) = v46;
              *(v45 + 24) = v47;
              *(v45 + 32) = v48;

              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v49 = swift_allocObject();
              v50 = v689;
              v705 = v49;
              *(v49 + 16) = v688;
              *(v49 + 24) = v50;
              v731 = sub_1B0E43988();
              v732 = sub_1B0E458E8();
              v701 = 17;
              v707 = swift_allocObject();
              v693 = 16;
              *(v707 + 16) = 16;
              v708 = swift_allocObject();
              v695 = 4;
              *(v708 + 16) = 4;
              v51 = swift_allocObject();
              v690 = v51;
              *(v51 + 16) = v795;
              *(v51 + 24) = 0;
              v52 = swift_allocObject();
              v53 = v690;
              v709 = v52;
              *(v52 + 16) = v796;
              *(v52 + 24) = v53;
              v710 = swift_allocObject();
              *(v710 + 16) = 0;
              v711 = swift_allocObject();
              *(v711 + 16) = 1;
              v54 = swift_allocObject();
              v55 = v691;
              v692 = v54;
              *(v54 + 16) = v797;
              *(v54 + 24) = v55;
              v56 = swift_allocObject();
              v57 = v692;
              v712 = v56;
              *(v56 + 16) = v798;
              *(v56 + 24) = v57;
              v713 = swift_allocObject();
              *(v713 + 16) = v693;
              v714 = swift_allocObject();
              *(v714 + 16) = v695;
              v58 = swift_allocObject();
              v694 = v58;
              *(v58 + 16) = v799;
              *(v58 + 24) = 0;
              v59 = swift_allocObject();
              v60 = v694;
              v715 = v59;
              *(v59 + 16) = v800;
              *(v59 + 24) = v60;
              v716 = swift_allocObject();
              *(v716 + 16) = 0;
              v717 = swift_allocObject();
              *(v717 + 16) = v695;
              v61 = swift_allocObject();
              v62 = v696;
              v697 = v61;
              *(v61 + 16) = v801;
              *(v61 + 24) = v62;
              v63 = swift_allocObject();
              v64 = v697;
              v718 = v63;
              *(v63 + 16) = v802;
              *(v63 + 24) = v64;
              v719 = swift_allocObject();
              *(v719 + 16) = 112;
              v720 = swift_allocObject();
              v702 = 8;
              *(v720 + 16) = 8;
              v698 = swift_allocObject();
              *(v698 + 16) = 0x786F626C69616DLL;
              v65 = swift_allocObject();
              v66 = v698;
              v721 = v65;
              *(v65 + 16) = v803;
              *(v65 + 24) = v66;
              v722 = swift_allocObject();
              *(v722 + 16) = 37;
              v723 = swift_allocObject();
              *(v723 + 16) = v702;
              v67 = swift_allocObject();
              v68 = v699;
              v700 = v67;
              *(v67 + 16) = v804;
              *(v67 + 24) = v68;
              v69 = swift_allocObject();
              v70 = v700;
              v724 = v69;
              *(v69 + 16) = v805;
              *(v69 + 24) = v70;
              v725 = swift_allocObject();
              *(v725 + 16) = 34;
              v726 = swift_allocObject();
              *(v726 + 16) = v702;
              v71 = swift_allocObject();
              v72 = v705;
              v706 = v71;
              *(v71 + 16) = v806;
              *(v71 + 24) = v72;
              v73 = swift_allocObject();
              v74 = v706;
              v728 = v73;
              *(v73 + 16) = v807;
              *(v73 + 24) = v74;
              v730 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
              v727 = sub_1B0E46A48();
              v729 = v75;

              v76 = v707;
              v77 = v729;
              *v729 = v808;
              v77[1] = v76;

              v78 = v708;
              v79 = v729;
              v729[2] = v809;
              v79[3] = v78;

              v80 = v709;
              v81 = v729;
              v729[4] = v810;
              v81[5] = v80;

              v82 = v710;
              v83 = v729;
              v729[6] = v811;
              v83[7] = v82;

              v84 = v711;
              v85 = v729;
              v729[8] = v812;
              v85[9] = v84;

              v86 = v712;
              v87 = v729;
              v729[10] = v813;
              v87[11] = v86;

              v88 = v713;
              v89 = v729;
              v729[12] = v814;
              v89[13] = v88;

              v90 = v714;
              v91 = v729;
              v729[14] = v815;
              v91[15] = v90;

              v92 = v715;
              v93 = v729;
              v729[16] = v816;
              v93[17] = v92;

              v94 = v716;
              v95 = v729;
              v729[18] = v817;
              v95[19] = v94;

              v96 = v717;
              v97 = v729;
              v729[20] = v818;
              v97[21] = v96;

              v98 = v718;
              v99 = v729;
              v729[22] = v819;
              v99[23] = v98;

              v100 = v719;
              v101 = v729;
              v729[24] = v820;
              v101[25] = v100;

              v102 = v720;
              v103 = v729;
              v729[26] = v821;
              v103[27] = v102;

              v104 = v721;
              v105 = v729;
              v729[28] = v822;
              v105[29] = v104;

              v106 = v722;
              v107 = v729;
              v729[30] = v823;
              v107[31] = v106;

              v108 = v723;
              v109 = v729;
              v729[32] = v824;
              v109[33] = v108;

              v110 = v724;
              v111 = v729;
              v729[34] = v825;
              v111[35] = v110;

              v112 = v725;
              v113 = v729;
              v729[36] = v826;
              v113[37] = v112;

              v114 = v726;
              v115 = v729;
              v729[38] = v827;
              v115[39] = v114;

              v116 = v728;
              v117 = v729;
              v729[40] = v828;
              v117[41] = v116;
              sub_1B0394964();

              if (os_log_type_enabled(v731, v732))
              {
                v118 = v708;
                v119 = v707;
                v120 = v761;
                v653 = sub_1B0E45D78();
                v652 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
                v654 = sub_1B03949A8(0);
                v655 = sub_1B03949A8(2);
                v656 = &v880;
                v880 = v653;
                v657 = &v879;
                v879 = v654;
                v658 = &v878;
                v878 = v655;
                sub_1B0394A48(3, &v880);
                sub_1B0394A48(7, v656);
                v876 = v808;
                v877 = v119;
                sub_1B03949FC(&v876, v656, v657, v658);
                v659 = v120;
                v660 = v119;
                v661 = v118;
                v662 = v709;
                v663 = v710;
                v664 = v711;
                v665 = v712;
                v666 = v713;
                v667 = v714;
                v668 = v715;
                v669 = v716;
                v670 = v717;
                v671 = v718;
                v672 = v719;
                v673 = v720;
                v674 = v721;
                v675 = v722;
                v676 = v723;
                v677 = v724;
                v678 = v725;
                v679 = v726;
                v680 = v728;
                if (v120)
                {
                  v630 = v660;
                  v631 = v661;
                  v632 = v662;
                  v633 = v663;
                  v634 = v664;
                  v635 = v665;
                  v636 = v666;
                  v637 = v667;
                  v638 = v668;
                  v639 = v669;
                  v640 = v670;
                  v641 = v671;
                  v642 = v672;
                  v643 = v673;
                  v644 = v674;
                  v645 = v675;
                  v646 = v676;
                  v647 = v677;
                  v648 = v678;
                  v649 = v679;
                  v650 = v680;
                  v189 = v680;
                  v188 = v679;
                  v187 = v678;
                  v186 = v677;
                  v185 = v676;
                  v184 = v675;
                  v183 = v674;
                  v182 = v673;
                  v181 = v672;
                  v180 = v671;
                  v179 = v670;
                  v178 = v669;
                  v177 = v668;
                  v176 = v667;
                  v175 = v666;
                  v174 = v665;
                  v173 = v664;
                  v172 = v663;
                  v171 = v662;
                  v170 = v661;

                  __break(1u);
                }

                else
                {
                  v122 = v708;
                  v123 = v707;
                  v876 = v809;
                  v877 = v708;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v608 = 0;
                  v609 = v123;
                  v610 = v122;
                  v611 = v709;
                  v612 = v710;
                  v613 = v711;
                  v614 = v712;
                  v615 = v713;
                  v616 = v714;
                  v617 = v715;
                  v618 = v716;
                  v619 = v717;
                  v620 = v718;
                  v621 = v719;
                  v622 = v720;
                  v623 = v721;
                  v624 = v722;
                  v625 = v723;
                  v626 = v724;
                  v627 = v725;
                  v628 = v726;
                  v629 = v728;
                  v124 = v708;
                  v125 = v707;
                  v876 = v810;
                  v877 = v709;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v586 = 0;
                  v587 = v125;
                  v588 = v124;
                  v589 = v709;
                  v590 = v710;
                  v591 = v711;
                  v592 = v712;
                  v593 = v713;
                  v594 = v714;
                  v595 = v715;
                  v596 = v716;
                  v597 = v717;
                  v598 = v718;
                  v599 = v719;
                  v600 = v720;
                  v601 = v721;
                  v602 = v722;
                  v603 = v723;
                  v604 = v724;
                  v605 = v725;
                  v606 = v726;
                  v607 = v728;
                  v126 = v708;
                  v127 = v707;
                  v876 = v811;
                  v877 = v710;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v564 = 0;
                  v565 = v127;
                  v566 = v126;
                  v567 = v709;
                  v568 = v710;
                  v569 = v711;
                  v570 = v712;
                  v571 = v713;
                  v572 = v714;
                  v573 = v715;
                  v574 = v716;
                  v575 = v717;
                  v576 = v718;
                  v577 = v719;
                  v578 = v720;
                  v579 = v721;
                  v580 = v722;
                  v581 = v723;
                  v582 = v724;
                  v583 = v725;
                  v584 = v726;
                  v585 = v728;
                  v128 = v708;
                  v129 = v707;
                  v876 = v812;
                  v877 = v711;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v542 = 0;
                  v543 = v129;
                  v544 = v128;
                  v545 = v709;
                  v546 = v710;
                  v547 = v711;
                  v548 = v712;
                  v549 = v713;
                  v550 = v714;
                  v551 = v715;
                  v552 = v716;
                  v553 = v717;
                  v554 = v718;
                  v555 = v719;
                  v556 = v720;
                  v557 = v721;
                  v558 = v722;
                  v559 = v723;
                  v560 = v724;
                  v561 = v725;
                  v562 = v726;
                  v563 = v728;
                  v130 = v708;
                  v131 = v707;
                  v876 = v813;
                  v877 = v712;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v520 = 0;
                  v521 = v131;
                  v522 = v130;
                  v523 = v709;
                  v524 = v710;
                  v525 = v711;
                  v526 = v712;
                  v527 = v713;
                  v528 = v714;
                  v529 = v715;
                  v530 = v716;
                  v531 = v717;
                  v532 = v718;
                  v533 = v719;
                  v534 = v720;
                  v535 = v721;
                  v536 = v722;
                  v537 = v723;
                  v538 = v724;
                  v539 = v725;
                  v540 = v726;
                  v541 = v728;
                  v132 = v708;
                  v133 = v707;
                  v876 = v814;
                  v877 = v713;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v498 = 0;
                  v499 = v133;
                  v500 = v132;
                  v501 = v709;
                  v502 = v710;
                  v503 = v711;
                  v504 = v712;
                  v505 = v713;
                  v506 = v714;
                  v507 = v715;
                  v508 = v716;
                  v509 = v717;
                  v510 = v718;
                  v511 = v719;
                  v512 = v720;
                  v513 = v721;
                  v514 = v722;
                  v515 = v723;
                  v516 = v724;
                  v517 = v725;
                  v518 = v726;
                  v519 = v728;
                  v134 = v708;
                  v135 = v707;
                  v876 = v815;
                  v877 = v714;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v476 = 0;
                  v477 = v135;
                  v478 = v134;
                  v479 = v709;
                  v480 = v710;
                  v481 = v711;
                  v482 = v712;
                  v483 = v713;
                  v484 = v714;
                  v485 = v715;
                  v486 = v716;
                  v487 = v717;
                  v488 = v718;
                  v489 = v719;
                  v490 = v720;
                  v491 = v721;
                  v492 = v722;
                  v493 = v723;
                  v494 = v724;
                  v495 = v725;
                  v496 = v726;
                  v497 = v728;
                  v136 = v708;
                  v137 = v707;
                  v876 = v816;
                  v877 = v715;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v454 = 0;
                  v455 = v137;
                  v456 = v136;
                  v457 = v709;
                  v458 = v710;
                  v459 = v711;
                  v460 = v712;
                  v461 = v713;
                  v462 = v714;
                  v463 = v715;
                  v464 = v716;
                  v465 = v717;
                  v466 = v718;
                  v467 = v719;
                  v468 = v720;
                  v469 = v721;
                  v470 = v722;
                  v471 = v723;
                  v472 = v724;
                  v473 = v725;
                  v474 = v726;
                  v475 = v728;
                  v138 = v708;
                  v139 = v707;
                  v876 = v817;
                  v877 = v716;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v432 = 0;
                  v433 = v139;
                  v434 = v138;
                  v435 = v709;
                  v436 = v710;
                  v437 = v711;
                  v438 = v712;
                  v439 = v713;
                  v440 = v714;
                  v441 = v715;
                  v442 = v716;
                  v443 = v717;
                  v444 = v718;
                  v445 = v719;
                  v446 = v720;
                  v447 = v721;
                  v448 = v722;
                  v449 = v723;
                  v450 = v724;
                  v451 = v725;
                  v452 = v726;
                  v453 = v728;
                  v140 = v708;
                  v141 = v707;
                  v876 = v818;
                  v877 = v717;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v410 = 0;
                  v411 = v141;
                  v412 = v140;
                  v413 = v709;
                  v414 = v710;
                  v415 = v711;
                  v416 = v712;
                  v417 = v713;
                  v418 = v714;
                  v419 = v715;
                  v420 = v716;
                  v421 = v717;
                  v422 = v718;
                  v423 = v719;
                  v424 = v720;
                  v425 = v721;
                  v426 = v722;
                  v427 = v723;
                  v428 = v724;
                  v429 = v725;
                  v430 = v726;
                  v431 = v728;
                  v142 = v708;
                  v143 = v707;
                  v876 = v819;
                  v877 = v718;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v388 = 0;
                  v389 = v143;
                  v390 = v142;
                  v391 = v709;
                  v392 = v710;
                  v393 = v711;
                  v394 = v712;
                  v395 = v713;
                  v396 = v714;
                  v397 = v715;
                  v398 = v716;
                  v399 = v717;
                  v400 = v718;
                  v401 = v719;
                  v402 = v720;
                  v403 = v721;
                  v404 = v722;
                  v405 = v723;
                  v406 = v724;
                  v407 = v725;
                  v408 = v726;
                  v409 = v728;
                  v144 = v708;
                  v145 = v707;
                  v876 = v820;
                  v877 = v719;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v366 = 0;
                  v367 = v145;
                  v368 = v144;
                  v369 = v709;
                  v370 = v710;
                  v371 = v711;
                  v372 = v712;
                  v373 = v713;
                  v374 = v714;
                  v375 = v715;
                  v376 = v716;
                  v377 = v717;
                  v378 = v718;
                  v379 = v719;
                  v380 = v720;
                  v381 = v721;
                  v382 = v722;
                  v383 = v723;
                  v384 = v724;
                  v385 = v725;
                  v386 = v726;
                  v387 = v728;
                  v146 = v708;
                  v147 = v707;
                  v876 = v821;
                  v877 = v720;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v344 = 0;
                  v345 = v147;
                  v346 = v146;
                  v347 = v709;
                  v348 = v710;
                  v349 = v711;
                  v350 = v712;
                  v351 = v713;
                  v352 = v714;
                  v353 = v715;
                  v354 = v716;
                  v355 = v717;
                  v356 = v718;
                  v357 = v719;
                  v358 = v720;
                  v359 = v721;
                  v360 = v722;
                  v361 = v723;
                  v362 = v724;
                  v363 = v725;
                  v364 = v726;
                  v365 = v728;
                  v148 = v708;
                  v149 = v707;
                  v876 = v822;
                  v877 = v721;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v322 = 0;
                  v323 = v149;
                  v324 = v148;
                  v325 = v709;
                  v326 = v710;
                  v327 = v711;
                  v328 = v712;
                  v329 = v713;
                  v330 = v714;
                  v331 = v715;
                  v332 = v716;
                  v333 = v717;
                  v334 = v718;
                  v335 = v719;
                  v336 = v720;
                  v337 = v721;
                  v338 = v722;
                  v339 = v723;
                  v340 = v724;
                  v341 = v725;
                  v342 = v726;
                  v343 = v728;
                  v150 = v708;
                  v151 = v707;
                  v876 = v823;
                  v877 = v722;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v300 = 0;
                  v301 = v151;
                  v302 = v150;
                  v303 = v709;
                  v304 = v710;
                  v305 = v711;
                  v306 = v712;
                  v307 = v713;
                  v308 = v714;
                  v309 = v715;
                  v310 = v716;
                  v311 = v717;
                  v312 = v718;
                  v313 = v719;
                  v314 = v720;
                  v315 = v721;
                  v316 = v722;
                  v317 = v723;
                  v318 = v724;
                  v319 = v725;
                  v320 = v726;
                  v321 = v728;
                  v152 = v708;
                  v153 = v707;
                  v876 = v824;
                  v877 = v723;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v278 = 0;
                  v279 = v153;
                  v280 = v152;
                  v281 = v709;
                  v282 = v710;
                  v283 = v711;
                  v284 = v712;
                  v285 = v713;
                  v286 = v714;
                  v287 = v715;
                  v288 = v716;
                  v289 = v717;
                  v290 = v718;
                  v291 = v719;
                  v292 = v720;
                  v293 = v721;
                  v294 = v722;
                  v295 = v723;
                  v296 = v724;
                  v297 = v725;
                  v298 = v726;
                  v299 = v728;
                  v154 = v708;
                  v155 = v707;
                  v876 = v825;
                  v877 = v724;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v256 = 0;
                  v257 = v155;
                  v258 = v154;
                  v259 = v709;
                  v260 = v710;
                  v261 = v711;
                  v262 = v712;
                  v263 = v713;
                  v264 = v714;
                  v265 = v715;
                  v266 = v716;
                  v267 = v717;
                  v268 = v718;
                  v269 = v719;
                  v270 = v720;
                  v271 = v721;
                  v272 = v722;
                  v273 = v723;
                  v274 = v724;
                  v275 = v725;
                  v276 = v726;
                  v277 = v728;
                  v156 = v708;
                  v157 = v707;
                  v876 = v826;
                  v877 = v725;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v234 = 0;
                  v235 = v157;
                  v236 = v156;
                  v237 = v709;
                  v238 = v710;
                  v239 = v711;
                  v240 = v712;
                  v241 = v713;
                  v242 = v714;
                  v243 = v715;
                  v244 = v716;
                  v245 = v717;
                  v246 = v718;
                  v247 = v719;
                  v248 = v720;
                  v249 = v721;
                  v250 = v722;
                  v251 = v723;
                  v252 = v724;
                  v253 = v725;
                  v254 = v726;
                  v255 = v728;
                  v158 = v708;
                  v159 = v707;
                  v876 = v827;
                  v877 = v726;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v212 = 0;
                  v213 = v159;
                  v214 = v158;
                  v215 = v709;
                  v216 = v710;
                  v217 = v711;
                  v218 = v712;
                  v219 = v713;
                  v220 = v714;
                  v221 = v715;
                  v222 = v716;
                  v223 = v717;
                  v224 = v718;
                  v225 = v719;
                  v226 = v720;
                  v227 = v721;
                  v228 = v722;
                  v229 = v723;
                  v230 = v724;
                  v231 = v725;
                  v232 = v726;
                  v233 = v728;
                  v160 = v708;
                  v161 = v707;
                  v876 = v828;
                  v877 = v728;
                  sub_1B03949FC(&v876, &v880, &v879, &v878);
                  v190 = 0;
                  v191 = v161;
                  v192 = v160;
                  v193 = v709;
                  v194 = v710;
                  v195 = v711;
                  v196 = v712;
                  v197 = v713;
                  v198 = v714;
                  v199 = v715;
                  v200 = v716;
                  v201 = v717;
                  v202 = v718;
                  v203 = v719;
                  v204 = v720;
                  v205 = v721;
                  v206 = v722;
                  v207 = v723;
                  v208 = v724;
                  v209 = v725;
                  v210 = v726;
                  v211 = v728;
                  _os_log_impl(&dword_1B0389000, v731, v732, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Found invalid UID '%{public}s' while looking for flag changes.", v653, 0x35u);
                  sub_1B03998A8(v654);
                  sub_1B03998A8(v655);
                  sub_1B0E45D58();

                  v651 = v190;
                }
              }

              else
              {
                v121 = v761;

                v651 = v121;
              }

              v169 = v651;
              MEMORY[0x1E69E5920](v731);
              (*(v830 + 8))(v833, v829);

              MEMORY[0x1E69E5920](v758);
              v754 = v169;
            }

            else
            {
              v757 = v759;
              v755 = v759;
              v875 = v759;
              sub_1B03D08AC(v857, v851);
              HIDWORD(v874) = v755;
              v756 = MessageIdentifierSet.contains(_:)(&v874 + 4, v849);
              sub_1B03D09B8(v851);
              if (v756)
              {
                v873 = v755;
                MessageIdentifierSet.insert(_:)(&v874, &v873, v849);
              }

              MEMORY[0x1E69E5920](v758);
              v754 = v761;
            }
          }

          sub_1B039E440(v889);
          MEMORY[0x1E69E5920](v765);
          v168 = v761;
LABEL_51:
          v774 = v168;
          goto LABEL_52;
        }

        MEMORY[0x1E69E5920](v765);
      }

      v784(v847, v793 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL, v843);
      v167 = sub_1B0829F6C(v847);
      v786(v847, v843);
      if (v167)
      {
        v166 = v167;
        v162 = v851;
        v165 = v167;
        *(v862 + 13) = v167;
        sub_1B0917CB8(v162);
        MessageIdentifierSet.formUnion(_:)(v851, v849);
        sub_1B03D09B8(v851);
        MEMORY[0x1E69E5920](v165);
      }

      v168 = v790;
      goto LABEL_51;
    }

    v782 = v788;
    v780 = v788;
    v872 = v788;
    sub_1B074B69C(v793 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v842);
    sub_1B07204E0(v842, v853);
    v21 = v851;
    sub_1B074B764(v842);
    sub_1B03D08AC(v853, v21);
    sub_1B074B4A4();
    sub_1B0E45798();
    for (k = v790; ; k = v778)
    {
      v778 = k;
      sub_1B0E46518();
      v779 = v870;
      if (v871)
      {
        break;
      }

      v777 = v779;
      v775 = v779;
      v869 = v779;
      sub_1B03D08AC(v857, v851);
      HIDWORD(v868) = v775;
      v776 = MessageIdentifierSet.contains(_:)(&v868 + 4, v849);
      sub_1B03D09B8(v851);
      if (v776)
      {
        v867 = v775;
        MessageIdentifierSet.insert(_:)(&v868, &v867, v849);
      }
    }

    sub_1B03D09B8(v836);
    sub_1B03D09B8(v853);
    MEMORY[0x1E69E5920](v780);
    v774 = v778;
LABEL_52:
    v164 = v774;
    MEMORY[0x1E69E5920](v783);
  }

  sub_1B039E440(v890);
  sub_1B074BA2C(v858, v792);
  return sub_1B03D09B8(v857);
}

uint64_t sub_1B0746530(id *a1, uint64_t a2)
{
  v10 = 0;
  v9 = 0;
  v4 = *a1;
  v10 = v4;
  v9 = a2;
  v6 = [v4 imapUID];
  v5 = sub_1B041C1E8();
  v2 = sub_1B07467B8();
  result = MessageIdentifier.init<A>(exactly:)(&v6, &type metadata for UID, MEMORY[0x1E69E7668], v5, v2, &v7);
  if ((v8 & 1) == 0)
  {
    [v4 serverFlags];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1F20, &qword_1B0E9B228);
    return sub_1B0E44788();
  }

  return result;
}

unint64_t sub_1B0746680()
{
  v2 = qword_1EB6DAFF8;
  if (!qword_1EB6DAFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1B30, &qword_1B0E9AF68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0746730()
{
  v2 = qword_1EB6DAE48;
  if (!qword_1EB6DAE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1B40, &unk_1B0E9AF70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07467B8()
{
  v2 = qword_1EB6DA330;
  if (!qword_1EB6DA330)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA330);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0746830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v237 = a1;
  v236 = a2;
  v235 = a3;
  v192 = sub_1B074E050;
  v193 = sub_1B0394C30;
  v194 = sub_1B0394C24;
  v195 = sub_1B074DFFC;
  v196 = sub_1B039BA88;
  v197 = sub_1B039BB94;
  v198 = sub_1B0394C24;
  v199 = sub_1B039BBA0;
  v200 = sub_1B039BC08;
  v201 = sub_1B06BA324;
  v202 = sub_1B074E0E4;
  v203 = sub_1B039BCF8;
  v204 = sub_1B0750028;
  v205 = sub_1B039BCF8;
  v206 = sub_1B0398F5C;
  v207 = sub_1B0398F5C;
  v208 = sub_1B0399178;
  v209 = sub_1B0398F5C;
  v210 = sub_1B0398F5C;
  v211 = sub_1B039BA94;
  v212 = sub_1B0398F5C;
  v213 = sub_1B0398F5C;
  v214 = sub_1B0399178;
  v215 = sub_1B0398F5C;
  v216 = sub_1B0398F5C;
  v217 = sub_1B03991EC;
  v218 = sub_1B0398F5C;
  v219 = sub_1B0398F5C;
  v220 = sub_1B03993BC;
  v221 = sub_1B0398F5C;
  v222 = sub_1B0398F5C;
  v223 = sub_1B039BCEC;
  v224 = sub_1B0398F5C;
  v225 = sub_1B0398F5C;
  v226 = sub_1B039BCEC;
  v256 = 0;
  v255 = 0;
  v254 = 0;
  v247 = 0;
  v227 = 0;
  v228 = _s6LoggerVMa_1();
  v229 = (*(*(v228 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](0);
  v230 = &v98 - v229;
  v231 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v232 = &v98 - v231;
  v233 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v234 = &v98 - v233;
  v238 = sub_1B0E439A8();
  v239 = *(v238 - 8);
  v240 = v238 - 8;
  v241 = (*(v239 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v237);
  v242 = &v98 - v241;
  v256 = v7;
  v243 = *v8;
  v255 = v243;
  v254 = v9;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v244 = [v243 remoteID];
  if (v244)
  {
    v190 = v244;
    v185 = v244;
    v186 = sub_1B0E44AD8();
    v187 = v10;
    MEMORY[0x1E69E5920](v185);
    v188 = v186;
    v189 = v187;
  }

  else
  {
    v188 = 0;
    v189 = 0;
  }

  v183 = v189;
  v182 = v188;
  swift_unknownObjectRelease();
  v253 = sub_1B08252D8(v182, v183);
  v184 = v253;
  if ((v253 & 0x100000000) != 0)
  {
    (*(v239 + 16))(v242, v235, v238);
    sub_1B074B69C(v235, v234);
    sub_1B074B69C(v234, v232);
    sub_1B074E41C(v234, v230);
    v13 = (v232 + *(v228 + 20));
    v131 = *v13;
    v132 = *(v13 + 1);
    v133 = *(v13 + 1);
    v134 = *(v13 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v232);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v130 = 36;
    v150 = 7;
    v14 = swift_allocObject();
    v15 = v132;
    v16 = v133;
    v17 = v134;
    v136 = v14;
    *(v14 + 16) = v131;
    *(v14 + 20) = v15;
    *(v14 + 24) = v16;
    *(v14 + 32) = v17;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = swift_allocObject();
    v19 = v132;
    v20 = v133;
    v21 = v134;
    v129 = v18;
    *(v18 + 16) = v131;
    *(v18 + 20) = v19;
    *(v18 + 24) = v20;
    *(v18 + 32) = v21;

    v149 = 32;
    v22 = swift_allocObject();
    v23 = v129;
    v141 = v22;
    *(v22 + 16) = v192;
    *(v22 + 24) = v23;
    sub_1B0394868();
    sub_1B0394868();

    v24 = swift_allocObject();
    v25 = v132;
    v26 = v133;
    v27 = v134;
    v28 = v24;
    v29 = v230;
    v145 = v28;
    *(v28 + 16) = v131;
    *(v28 + 20) = v25;
    *(v28 + 24) = v26;
    *(v28 + 32) = v27;
    sub_1B074B764(v29);
    swift_unknownObjectRetain();
    v143 = 24;
    v151 = swift_allocObject();
    *(v151 + 16) = v243;
    v177 = sub_1B0E43988();
    v178 = sub_1B0E458E8();
    v147 = 17;
    v153 = swift_allocObject();
    v138 = 16;
    *(v153 + 16) = 16;
    v154 = swift_allocObject();
    v140 = 4;
    *(v154 + 16) = 4;
    v30 = swift_allocObject();
    v135 = v30;
    *(v30 + 16) = v193;
    *(v30 + 24) = 0;
    v31 = swift_allocObject();
    v32 = v135;
    v155 = v31;
    *(v31 + 16) = v194;
    *(v31 + 24) = v32;
    v156 = swift_allocObject();
    *(v156 + 16) = 0;
    v157 = swift_allocObject();
    *(v157 + 16) = 1;
    v33 = swift_allocObject();
    v34 = v136;
    v137 = v33;
    *(v33 + 16) = v195;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v137;
    v158 = v35;
    *(v35 + 16) = v196;
    *(v35 + 24) = v36;
    v159 = swift_allocObject();
    *(v159 + 16) = v138;
    v160 = swift_allocObject();
    *(v160 + 16) = v140;
    v37 = swift_allocObject();
    v139 = v37;
    *(v37 + 16) = v197;
    *(v37 + 24) = 0;
    v38 = swift_allocObject();
    v39 = v139;
    v161 = v38;
    *(v38 + 16) = v198;
    *(v38 + 24) = v39;
    v162 = swift_allocObject();
    *(v162 + 16) = 0;
    v163 = swift_allocObject();
    *(v163 + 16) = v140;
    v40 = swift_allocObject();
    v41 = v141;
    v142 = v40;
    *(v40 + 16) = v199;
    *(v40 + 24) = v41;
    v42 = swift_allocObject();
    v43 = v142;
    v164 = v42;
    *(v42 + 16) = v200;
    *(v42 + 24) = v43;
    v165 = swift_allocObject();
    *(v165 + 16) = 112;
    v166 = swift_allocObject();
    v148 = 8;
    *(v166 + 16) = 8;
    v144 = swift_allocObject();
    *(v144 + 16) = 0x786F626C69616DLL;
    v44 = swift_allocObject();
    v45 = v144;
    v167 = v44;
    *(v44 + 16) = v201;
    *(v44 + 24) = v45;
    v168 = swift_allocObject();
    *(v168 + 16) = 37;
    v169 = swift_allocObject();
    *(v169 + 16) = v148;
    v46 = swift_allocObject();
    v47 = v145;
    v146 = v46;
    *(v46 + 16) = v202;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    v49 = v146;
    v170 = v48;
    *(v48 + 16) = v203;
    *(v48 + 24) = v49;
    v171 = swift_allocObject();
    *(v171 + 16) = 34;
    v172 = swift_allocObject();
    *(v172 + 16) = v148;
    v50 = swift_allocObject();
    v51 = v151;
    v152 = v50;
    *(v50 + 16) = v204;
    *(v50 + 24) = v51;
    v52 = swift_allocObject();
    v53 = v152;
    v174 = v52;
    *(v52 + 16) = v205;
    *(v52 + 24) = v53;
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v173 = sub_1B0E46A48();
    v175 = v54;

    v55 = v153;
    v56 = v175;
    *v175 = v206;
    v56[1] = v55;

    v57 = v154;
    v58 = v175;
    v175[2] = v207;
    v58[3] = v57;

    v59 = v155;
    v60 = v175;
    v175[4] = v208;
    v60[5] = v59;

    v61 = v156;
    v62 = v175;
    v175[6] = v209;
    v62[7] = v61;

    v63 = v157;
    v64 = v175;
    v175[8] = v210;
    v64[9] = v63;

    v65 = v158;
    v66 = v175;
    v175[10] = v211;
    v66[11] = v65;

    v67 = v159;
    v68 = v175;
    v175[12] = v212;
    v68[13] = v67;

    v69 = v160;
    v70 = v175;
    v175[14] = v213;
    v70[15] = v69;

    v71 = v161;
    v72 = v175;
    v175[16] = v214;
    v72[17] = v71;

    v73 = v162;
    v74 = v175;
    v175[18] = v215;
    v74[19] = v73;

    v75 = v163;
    v76 = v175;
    v175[20] = v216;
    v76[21] = v75;

    v77 = v164;
    v78 = v175;
    v175[22] = v217;
    v78[23] = v77;

    v79 = v165;
    v80 = v175;
    v175[24] = v218;
    v80[25] = v79;

    v81 = v166;
    v82 = v175;
    v175[26] = v219;
    v82[27] = v81;

    v83 = v167;
    v84 = v175;
    v175[28] = v220;
    v84[29] = v83;

    v85 = v168;
    v86 = v175;
    v175[30] = v221;
    v86[31] = v85;

    v87 = v169;
    v88 = v175;
    v175[32] = v222;
    v88[33] = v87;

    v89 = v170;
    v90 = v175;
    v175[34] = v223;
    v90[35] = v89;

    v91 = v171;
    v92 = v175;
    v175[36] = v224;
    v92[37] = v91;

    v93 = v172;
    v94 = v175;
    v175[38] = v225;
    v94[39] = v93;

    v95 = v174;
    v96 = v175;
    v175[40] = v226;
    v96[41] = v95;
    sub_1B0394964();

    if (os_log_type_enabled(v177, v178))
    {
      v122 = sub_1B0E45D78();
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v123 = sub_1B03949A8(0);
      v124 = sub_1B03949A8(2);
      v125 = &v252;
      v252 = v122;
      v126 = &v251;
      v251 = v123;
      v127 = &v250;
      v250 = v124;
      sub_1B0394A48(3, &v252);
      sub_1B0394A48(7, v125);
      v97 = v191;
      v248 = v206;
      v249 = v153;
      sub_1B03949FC(&v248, v125, v126, v127);
      v128 = v97;
      if (v97)
      {

        __break(1u);
      }

      else
      {
        v248 = v207;
        v249 = v154;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v119 = 0;
        v248 = v208;
        v249 = v155;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v118 = 0;
        v248 = v209;
        v249 = v156;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v117 = 0;
        v248 = v210;
        v249 = v157;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v116 = 0;
        v248 = v211;
        v249 = v158;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v115 = 0;
        v248 = v212;
        v249 = v159;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v114 = 0;
        v248 = v213;
        v249 = v160;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v113 = 0;
        v248 = v214;
        v249 = v161;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v112 = 0;
        v248 = v215;
        v249 = v162;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v111 = 0;
        v248 = v216;
        v249 = v163;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v110 = 0;
        v248 = v217;
        v249 = v164;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v109 = 0;
        v248 = v218;
        v249 = v165;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v108 = 0;
        v248 = v219;
        v249 = v166;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v107 = 0;
        v248 = v220;
        v249 = v167;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v106 = 0;
        v248 = v221;
        v249 = v168;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v105 = 0;
        v248 = v222;
        v249 = v169;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v104 = 0;
        v248 = v223;
        v249 = v170;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v103 = 0;
        v248 = v224;
        v249 = v171;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v102 = 0;
        v248 = v225;
        v249 = v172;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v101 = 0;
        v248 = v226;
        v249 = v174;
        sub_1B03949FC(&v248, &v252, &v251, &v250);
        v100 = 0;
        _os_log_impl(&dword_1B0389000, v177, v178, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Found invalid UID '%{public}s' from message's remoteID while looking for flag changes.", v122, 0x35u);
        sub_1B03998A8(v123);
        sub_1B03998A8(v124);
        sub_1B0E45D58();

        v120 = v100;
      }
    }

    else
    {

      v120 = v191;
    }

    v99 = v120;
    MEMORY[0x1E69E5920](v177);
    (*(v239 + 8))(v242, v238);
    return v99;
  }

  else
  {
    v181 = v184;
    v247 = v184;
    v179 = &v245;
    v245 = v184;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    MessageIdentifierSet.insert(_:)(v246, v179, v11);
    result = v191;
    v180 = v191;
  }

  return result;
}

uint64_t sub_1B0748720(void *a1)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v9 = [a1 remoteID];
  if (v9)
  {
    v4 = sub_1B0E44AD8();
    v5 = v1;
    MEMORY[0x1E69E5920](v9);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  swift_unknownObjectRelease();
  v10 = v6;
  v11 = v7;
  if (v7)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = sub_1B0E44838();
    v13 = v2;
  }

  return v12;
}

uint64_t sub_1B0748858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v228 = a1;
  v227 = a2;
  v226 = a3;
  v183 = sub_1B074E050;
  v184 = sub_1B0394C30;
  v185 = sub_1B0394C24;
  v186 = sub_1B074DFFC;
  v187 = sub_1B039BA88;
  v188 = sub_1B039BB94;
  v189 = sub_1B0394C24;
  v190 = sub_1B039BBA0;
  v191 = sub_1B039BC08;
  v192 = sub_1B06BA324;
  v193 = sub_1B074E0E4;
  v194 = sub_1B039BCF8;
  v195 = sub_1B070B550;
  v196 = sub_1B039BCF8;
  v197 = sub_1B0398F5C;
  v198 = sub_1B0398F5C;
  v199 = sub_1B0399178;
  v200 = sub_1B0398F5C;
  v201 = sub_1B0398F5C;
  v202 = sub_1B039BA94;
  v203 = sub_1B0398F5C;
  v204 = sub_1B0398F5C;
  v205 = sub_1B0399178;
  v206 = sub_1B0398F5C;
  v207 = sub_1B0398F5C;
  v208 = sub_1B03991EC;
  v209 = sub_1B0398F5C;
  v210 = sub_1B0398F5C;
  v211 = sub_1B03993BC;
  v212 = sub_1B0398F5C;
  v213 = sub_1B0398F5C;
  v214 = sub_1B039BCEC;
  v215 = sub_1B0398F5C;
  v216 = sub_1B0398F5C;
  v217 = sub_1B039BCEC;
  v249 = 0;
  v247 = 0;
  v248 = 0;
  v246 = 0;
  v239 = 0;
  v218 = 0;
  v219 = _s6LoggerVMa_1();
  v220 = (*(*(v219 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](0);
  v221 = &v99 - v220;
  v222 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v223 = &v99 - v222;
  v224 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v225 = &v99 - v224;
  v229 = sub_1B0E439A8();
  v230 = *(v229 - 8);
  v231 = v229 - 8;
  v232 = (*(v230 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v228);
  v233 = &v99 - v232;
  v249 = v7;
  v234 = *v8;
  v235 = v8[1];
  v247 = v234;
  v248 = v235;
  v246 = v9;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v245 = sub_1B08252D8(v234, v235);
  v236 = v245;
  if ((v245 & 0x100000000) != 0)
  {
    (*(v230 + 16))(v233, v226, v229);
    sub_1B074B69C(v226, v225);
    sub_1B074B69C(v225, v223);
    sub_1B074E41C(v225, v221);
    v12 = (v223 + *(v219 + 20));
    v132 = *v12;
    v133 = *(v12 + 1);
    v134 = *(v12 + 1);
    v135 = *(v12 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v223);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v131 = 36;
    v150 = 7;
    v13 = swift_allocObject();
    v14 = v133;
    v15 = v134;
    v16 = v135;
    v137 = v13;
    *(v13 + 16) = v132;
    *(v13 + 20) = v14;
    *(v13 + 24) = v15;
    *(v13 + 32) = v16;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = swift_allocObject();
    v18 = v133;
    v19 = v134;
    v20 = v135;
    v130 = v17;
    *(v17 + 16) = v132;
    *(v17 + 20) = v18;
    *(v17 + 24) = v19;
    *(v17 + 32) = v20;

    v149 = 32;
    v21 = swift_allocObject();
    v22 = v130;
    v142 = v21;
    *(v21 + 16) = v183;
    *(v21 + 24) = v22;
    sub_1B0394868();
    sub_1B0394868();

    v23 = swift_allocObject();
    v24 = v133;
    v25 = v134;
    v26 = v135;
    v27 = v23;
    v28 = v221;
    v145 = v27;
    *(v27 + 16) = v132;
    *(v27 + 20) = v24;
    *(v27 + 24) = v25;
    *(v27 + 32) = v26;
    sub_1B074B764(v28);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v29 = swift_allocObject();
    v30 = v235;
    v151 = v29;
    *(v29 + 16) = v234;
    *(v29 + 24) = v30;
    v177 = sub_1B0E43988();
    v178 = sub_1B0E458E8();
    v147 = 17;
    v153 = swift_allocObject();
    v139 = 16;
    *(v153 + 16) = 16;
    v154 = swift_allocObject();
    v141 = 4;
    *(v154 + 16) = 4;
    v31 = swift_allocObject();
    v136 = v31;
    *(v31 + 16) = v184;
    *(v31 + 24) = 0;
    v32 = swift_allocObject();
    v33 = v136;
    v155 = v32;
    *(v32 + 16) = v185;
    *(v32 + 24) = v33;
    v156 = swift_allocObject();
    *(v156 + 16) = 0;
    v157 = swift_allocObject();
    *(v157 + 16) = 1;
    v34 = swift_allocObject();
    v35 = v137;
    v138 = v34;
    *(v34 + 16) = v186;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v138;
    v158 = v36;
    *(v36 + 16) = v187;
    *(v36 + 24) = v37;
    v159 = swift_allocObject();
    *(v159 + 16) = v139;
    v160 = swift_allocObject();
    *(v160 + 16) = v141;
    v38 = swift_allocObject();
    v140 = v38;
    *(v38 + 16) = v188;
    *(v38 + 24) = 0;
    v39 = swift_allocObject();
    v40 = v140;
    v161 = v39;
    *(v39 + 16) = v189;
    *(v39 + 24) = v40;
    v162 = swift_allocObject();
    *(v162 + 16) = 0;
    v163 = swift_allocObject();
    *(v163 + 16) = v141;
    v41 = swift_allocObject();
    v42 = v142;
    v143 = v41;
    *(v41 + 16) = v190;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v143;
    v164 = v43;
    *(v43 + 16) = v191;
    *(v43 + 24) = v44;
    v165 = swift_allocObject();
    *(v165 + 16) = 112;
    v166 = swift_allocObject();
    v148 = 8;
    *(v166 + 16) = 8;
    v144 = swift_allocObject();
    *(v144 + 16) = 0x786F626C69616DLL;
    v45 = swift_allocObject();
    v46 = v144;
    v167 = v45;
    *(v45 + 16) = v192;
    *(v45 + 24) = v46;
    v168 = swift_allocObject();
    *(v168 + 16) = 37;
    v169 = swift_allocObject();
    *(v169 + 16) = v148;
    v47 = swift_allocObject();
    v48 = v145;
    v146 = v47;
    *(v47 + 16) = v193;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v146;
    v170 = v49;
    *(v49 + 16) = v194;
    *(v49 + 24) = v50;
    v171 = swift_allocObject();
    *(v171 + 16) = 34;
    v172 = swift_allocObject();
    *(v172 + 16) = v148;
    v51 = swift_allocObject();
    v52 = v151;
    v152 = v51;
    *(v51 + 16) = v195;
    *(v51 + 24) = v52;
    v53 = swift_allocObject();
    v54 = v152;
    v174 = v53;
    *(v53 + 16) = v196;
    *(v53 + 24) = v54;
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v173 = sub_1B0E46A48();
    v175 = v55;

    v56 = v153;
    v57 = v175;
    *v175 = v197;
    v57[1] = v56;

    v58 = v154;
    v59 = v175;
    v175[2] = v198;
    v59[3] = v58;

    v60 = v155;
    v61 = v175;
    v175[4] = v199;
    v61[5] = v60;

    v62 = v156;
    v63 = v175;
    v175[6] = v200;
    v63[7] = v62;

    v64 = v157;
    v65 = v175;
    v175[8] = v201;
    v65[9] = v64;

    v66 = v158;
    v67 = v175;
    v175[10] = v202;
    v67[11] = v66;

    v68 = v159;
    v69 = v175;
    v175[12] = v203;
    v69[13] = v68;

    v70 = v160;
    v71 = v175;
    v175[14] = v204;
    v71[15] = v70;

    v72 = v161;
    v73 = v175;
    v175[16] = v205;
    v73[17] = v72;

    v74 = v162;
    v75 = v175;
    v175[18] = v206;
    v75[19] = v74;

    v76 = v163;
    v77 = v175;
    v175[20] = v207;
    v77[21] = v76;

    v78 = v164;
    v79 = v175;
    v175[22] = v208;
    v79[23] = v78;

    v80 = v165;
    v81 = v175;
    v175[24] = v209;
    v81[25] = v80;

    v82 = v166;
    v83 = v175;
    v175[26] = v210;
    v83[27] = v82;

    v84 = v167;
    v85 = v175;
    v175[28] = v211;
    v85[29] = v84;

    v86 = v168;
    v87 = v175;
    v175[30] = v212;
    v87[31] = v86;

    v88 = v169;
    v89 = v175;
    v175[32] = v213;
    v89[33] = v88;

    v90 = v170;
    v91 = v175;
    v175[34] = v214;
    v91[35] = v90;

    v92 = v171;
    v93 = v175;
    v175[36] = v215;
    v93[37] = v92;

    v94 = v172;
    v95 = v175;
    v175[38] = v216;
    v95[39] = v94;

    v96 = v174;
    v97 = v175;
    v175[40] = v217;
    v97[41] = v96;
    sub_1B0394964();

    if (os_log_type_enabled(v177, v178))
    {
      v123 = sub_1B0E45D78();
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v124 = sub_1B03949A8(0);
      v125 = sub_1B03949A8(2);
      v126 = &v244;
      v244 = v123;
      v127 = &v243;
      v243 = v124;
      v128 = &v242;
      v242 = v125;
      sub_1B0394A48(3, &v244);
      sub_1B0394A48(7, v126);
      v98 = v182;
      v240 = v197;
      v241 = v153;
      sub_1B03949FC(&v240, v126, v127, v128);
      v129 = v98;
      if (v98)
      {

        __break(1u);
      }

      else
      {
        v240 = v198;
        v241 = v154;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v120 = 0;
        v240 = v199;
        v241 = v155;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v119 = 0;
        v240 = v200;
        v241 = v156;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v118 = 0;
        v240 = v201;
        v241 = v157;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v117 = 0;
        v240 = v202;
        v241 = v158;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v116 = 0;
        v240 = v203;
        v241 = v159;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v115 = 0;
        v240 = v204;
        v241 = v160;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v114 = 0;
        v240 = v205;
        v241 = v161;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v113 = 0;
        v240 = v206;
        v241 = v162;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v112 = 0;
        v240 = v207;
        v241 = v163;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v111 = 0;
        v240 = v208;
        v241 = v164;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v110 = 0;
        v240 = v209;
        v241 = v165;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v109 = 0;
        v240 = v210;
        v241 = v166;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v108 = 0;
        v240 = v211;
        v241 = v167;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v107 = 0;
        v240 = v212;
        v241 = v168;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v106 = 0;
        v240 = v213;
        v241 = v169;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v105 = 0;
        v240 = v214;
        v241 = v170;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v104 = 0;
        v240 = v215;
        v241 = v171;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v103 = 0;
        v240 = v216;
        v241 = v172;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v102 = 0;
        v240 = v217;
        v241 = v174;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v101 = 0;
        _os_log_impl(&dword_1B0389000, v177, v178, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Found invalid UID '%{public}s' from action's remoteIDs while looking for flag changes.", v123, 0x35u);
        sub_1B03998A8(v124);
        sub_1B03998A8(v125);
        sub_1B0E45D58();

        v121 = v101;
      }
    }

    else
    {

      v121 = v182;
    }

    v100 = v121;
    MEMORY[0x1E69E5920](v177);
    (*(v230 + 8))(v233, v229);
    return v100;
  }

  else
  {
    v181 = v236;
    v239 = v236;
    v179 = &v237;
    v237 = v236;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    MessageIdentifierSet.insert(_:)(v238, v179, v10);
    result = v182;
    v180 = v182;
  }

  return result;
}

unint64_t sub_1B074A67C(unint64_t a1, char a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v5 = a1;
  v6 = BYTE1(a1);
  v7 = BYTE2(a1);
  v8 = BYTE3(a1);
  v9 = BYTE4(a1);
  v10 = BYTE5(a1);
  v11 = BYTE6(a1);
  v12 = HIBYTE(a1);
  v28 = a1;
  v29 = a1 >> 8;
  v30 = BYTE5(a1);
  v31 = HIWORD(a1);
  v32 = a2;
  v27 = a3;
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  MEMORY[0x1E69E5928](a3);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = v5;
  *(v14 + 25) = v6;
  *(v14 + 26) = v7;
  *(v14 + 27) = v8;
  *(v14 + 28) = v9;
  *(v14 + 29) = v10;
  *(v14 + 30) = v11;
  *(v14 + 31) = v12;
  *(v14 + 32) = a2;

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B074F200;
  *(v18 + 24) = v14;

  v25 = sub_1B074F260;
  v26 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = 0;
  v23 = sub_1B074C0AC;
  v24 = &block_descriptor_1256;
  v16 = _Block_copy(&aBlock);

  v17 = [v15 initWithBuilder_];
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5928](v17);
    v33 = v17;
    MEMORY[0x1E69E5920](a3);
    MEMORY[0x1E69E5920](v33);

    return v17;
  }

  return result;
}

unint64_t sub_1B074A9DC(unint64_t a1, char a2)
{
  v31 = a1;
  v32 = a2;
  v3 = a1;
  v4 = BYTE1(a1);
  v5 = BYTE2(a1);
  v6 = BYTE3(a1);
  v7 = BYTE4(a1);
  v8 = BYTE5(a1);
  v9 = BYTE6(a1);
  v10 = HIBYTE(a1);
  v25 = a1;
  v26 = a1 >> 8;
  v27 = BYTE5(a1);
  v28 = HIWORD(a1);
  v29 = a2;
  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = swift_allocObject();
  v12[16] = v3;
  v12[17] = v4;
  v12[18] = v5;
  v12[19] = v6;
  v12[20] = v7;
  v12[21] = v8;
  v12[22] = v9;
  v12[23] = v10;
  v12[24] = a2;

  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B074F2D0;
  *(v16 + 24) = v12;

  v23 = sub_1B074F260;
  v24 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = 0;
  v21 = sub_1B074C0AC;
  v22 = &block_descriptor_1265;
  v14 = _Block_copy(&aBlock);

  v15 = [v13 initWithBuilder_];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5928](v15);
    v30 = v15;
    MEMORY[0x1E69E5920](v15);

    return v15;
  }

  return result;
}

unint64_t sub_1B074AC8C()
{
  v2 = qword_1EB6DA868;
  if (!qword_1EB6DA868)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA868);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B074ACF0()
{
  v2 = qword_1EB6DAEF0;
  if (!qword_1EB6DAEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1B58, &unk_1B0E9AF80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAEF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074AD9C()
{
  v2 = qword_1EB6DAEF8;
  if (!qword_1EB6DAEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1B58, &unk_1B0E9AF80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAEF8);
    return WitnessTable;
  }

  return v2;
}

id sub_1B074AE24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1B0E42E68();
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_1B0721E28(a1, v4, a2);
}

unint64_t sub_1B074AEA4()
{
  v2 = qword_1EB6DA918;
  if (!qword_1EB6DA918)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA918);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B074AF08()
{
  v2 = qword_1EB6DA4F0;
  if (!qword_1EB6DA4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1B60, &unk_1B0EA09B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA4F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074AF90()
{
  v2 = qword_1EB6DA440;
  if (!qword_1EB6DA440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1B68, &qword_1B0E9AF90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074B040()
{
  v2 = qword_1EB6DA3C0;
  if (!qword_1EB6DA3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1B78, &qword_1B0E9AF98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA3C0);
    return WitnessTable;
  }

  return v2;
}

id sub_1B074B0C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1B0E42E68();
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_1B07224BC(a1, v4, a2);
}

unint64_t sub_1B074B174()
{
  v2 = qword_1EB6DA420;
  if (!qword_1EB6DA420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1B88, &unk_1B0E9AFA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA420);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B074B1FC(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[2];

  v3 = a1[4];

  v4 = a1[6];

  v5 = a1[8];

  return a1;
}

unint64_t sub_1B074B258()
{
  v2 = qword_1EB6DAA68;
  if (!qword_1EB6DAA68)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAA68);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B074B2E4()
{
  v2 = qword_1EB6DAE30;
  if (!qword_1EB6DAE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1B98, &qword_1B0E9AFB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074B394()
{
  v2 = qword_1EB6DAD00;
  if (!qword_1EB6DAD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1BA8, &qword_1B0E9AFC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAD00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074B41C()
{
  v2 = qword_1EB6DB538;
  if (!qword_1EB6DB538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1BC0, &qword_1B0E9AFD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB538);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074B4A4()
{
  v2 = qword_1EB6DE400;
  if (!qword_1EB6DE400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE400);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074B52C()
{
  v2 = qword_1EB6DB710;
  if (!qword_1EB6DB710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1BC8, &qword_1B0E9AFD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB710);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074B5DC()
{
  v2 = qword_1EB6DA540;
  if (!qword_1EB6DA540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1BD8, &unk_1B0E9AFE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA540);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B074B69C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E439A8();
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = _s6LoggerVMa_1();
  v8 = a1 + *(v3 + 20);
  v9 = a2 + *(v3 + 20);
  *v9 = *v8;
  *(v9 + 4) = *(v8 + 4);
  v7 = *(v8 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(v9 + 8) = v7;
  *(v9 + 16) = *(v8 + 16);
  return result;
}

uint64_t sub_1B074B764(uint64_t a1)
{
  v1 = sub_1B0E439A8();
  (*(*(v1 - 8) + 8))(a1);
  v2 = *(a1 + *(_s6LoggerVMa_1() + 20) + 8);

  return a1;
}

unint64_t sub_1B074B7E4()
{
  v2 = qword_1EB6DB410;
  if (!qword_1EB6DB410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1BE8, &qword_1B0ECD5D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074B86C()
{
  v2 = qword_1EB6DAF50;
  if (!qword_1EB6DAF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074B8F4()
{
  v2 = qword_1EB6DB838;
  if (!qword_1EB6DB838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1C20, &unk_1B0E9B020);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB838);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074B97C()
{
  v2 = qword_1EB6DE3F0;
  if (!qword_1EB6DE3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE3F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B074BA2C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 32))(a2, a1);
  return a2;
}

uint64_t sub_1B074BA9C(void *a1, uint64_t a2, char a3)
{
  v13 = a2;
  v14 = BYTE1(a2);
  v15 = BYTE2(a2);
  v16 = BYTE3(a2);
  v18 = BYTE4(a2);
  v9 = BYTE5(a2);
  v10 = BYTE6(a2);
  v11 = HIBYTE(a2);
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setRead_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setDeleted_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setReplied_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setDraft_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if (v18 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v18;
  }

  [a1 setForwarded_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if (v9 == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v9;
  }

  [a1 setRedirected_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if (a3 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  [a1 setTouchedByCleanup_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setJunkLevel_];
  swift_unknownObjectRelease();
  v5 = sub_1B074BF0C(v11);
  if (v3)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    [a1 setFlagged_];
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    [a1 setFlagged_];
    swift_unknownObjectRelease();
    swift_getObjectType();
    swift_unknownObjectRetain();
    [a1 setFlagColor_];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1B074BE70(char a1)
{
  if (a1 == 3 || !a1)
  {
    return 0;
  }

  if (a1 == 1)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_1B074BF0C(char a1)
{
  if (a1 == 8)
  {
    return 0;
  }

  if (a1)
  {
    switch(a1)
    {
      case 1:
        return 0;
      case 2:
        return 1;
      case 3:
        return 2;
      case 4:
        return 3;
      case 5:
        return 4;
      case 6:
        return 5;
    }

    return 6;
  }

  return 0;
}

uint64_t sub_1B074C0AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v2 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B074C104(void *a1)
{
  if ([a1 readChanged])
  {
    *v9 = ([a1 read] ^ 1) & 1;
  }

  if ([a1 deletedChanged])
  {
    v9[1] = [a1 deleted];
  }

  if ([a1 repliedChanged])
  {
    v9[2] = [a1 replied];
  }

  if ([a1 draftChanged])
  {
    v9[3] = [a1 draft];
  }

  if ([a1 forwardedChanged])
  {
    v9[4] = [a1 forwarded];
  }

  if ([a1 redirectedChanged])
  {
    v9[5] = [a1 redirected];
  }

  if ([a1 touchedByCleanupChanged])
  {
    v9[8] = [a1 touchedByCleanup];
  }

  v6 = [a1 flaggedChanged];
  v4 = [a1 flagged];
  v5 = [a1 flagColorChanged];
  v7 = [a1 flagColor];
  if (v6)
  {
    if (!v4)
    {
      v9[7] = 0;
      goto LABEL_39;
    }
  }

  else if (!v5)
  {
    goto LABEL_39;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_37;
  }

  if (!v7)
  {
    v9[7] = 1;
    goto LABEL_39;
  }

  if (v7 == 1)
  {
    v9[7] = 2;
    goto LABEL_39;
  }

  if (v7 == 2)
  {
    v9[7] = 3;
    goto LABEL_39;
  }

  if (v7 == 3)
  {
    v9[7] = 4;
    goto LABEL_39;
  }

  if (v7 == 4)
  {
    v9[7] = 5;
    goto LABEL_39;
  }

  if (v7 == 5)
  {
    v9[7] = 6;
    goto LABEL_39;
  }

  if (v7 == 6)
  {
    v9[7] = 7;
  }

  else
  {
LABEL_37:
    if (v6 & 1) != 0 && (v4)
    {
      v9[7] = 1;
    }
  }

LABEL_39:
  [a1 junkLevelSetByUserChanged];
  [a1 junkLevelSetByUser];
  v3 = [a1 junkLevelChanged];
  v1 = [a1 junkLevel];
  result = v3;
  if (v3)
  {
    if (v1 == 1)
    {
      v9[6] = 1;
    }

    else if (v1 == 2)
    {
      v9[6] = 2;
    }

    else
    {
      v9[6] = 0;
    }
  }

  return result;
}

uint64_t sub_1B074C554(void *a1, id a2, uint64_t a3, unsigned __int8 a4)
{
  v16 = a3;
  v8 = BYTE1(a3);
  v9 = BYTE2(a3);
  v10 = BYTE3(a3);
  v11 = BYTE4(a3);
  v12 = BYTE5(a3);
  v13 = BYTE6(a3);
  v14 = HIBYTE(a3);
  v15 = a4;
  if ([a2 read] == (a3 & 1))
  {
    swift_getObjectType();
    [a1 changesReadTo_];
  }

  if ([a2 deleted] != (v8 & 1))
  {
    swift_getObjectType();
    [a1 changesDeletedTo_];
  }

  if ([a2 replied] != (v9 & 1))
  {
    swift_getObjectType();
    [a1 changesRepliedTo_];
  }

  result = [a2 draft];
  if (result != (v10 & 1))
  {
    swift_getObjectType();
    result = [a1 changesDraftTo_];
  }

  if (v11 != 2)
  {
    result = [a2 forwarded];
    if (result != (v11 & 1))
    {
      swift_getObjectType();
      result = [a1 changesForwardedTo_];
    }
  }

  if (v12 != 2)
  {
    result = [a2 redirected];
    if (result != (v12 & 1))
    {
      swift_getObjectType();
      result = [a1 changesRedirectedTo_];
    }
  }

  if (v15 != 2)
  {
    result = [a2 touchedByCleanup];
    if (result != (v15 & 1))
    {
      swift_getObjectType();
      result = [a1 changesTouchedByCleanupTo_];
    }
  }

  if (v13 != 3)
  {
    if (v13)
    {
      if (v13 == 1)
      {
        [a2 junkLevel];
        type metadata accessor for ECJunkMailLevel();
        sub_1B074FD30();
        result = sub_1B0E44A28();
        if ((result & 1) == 0)
        {
          swift_getObjectType();
          result = [a1 changesJunkLevelTo_];
        }
      }

      else
      {
        [a2 junkLevel];
        type metadata accessor for ECJunkMailLevel();
        sub_1B074FD30();
        result = sub_1B0E44A28();
        if ((result & 1) == 0)
        {
          swift_getObjectType();
          result = [a1 changesJunkLevelTo_];
        }
      }
    }

    else
    {
      [a2 junkLevel];
      type metadata accessor for ECJunkMailLevel();
      sub_1B074FD30();
      result = sub_1B0E44A28();
      if ((result & 1) == 0)
      {
        swift_getObjectType();
        result = [a1 changesJunkLevelTo_];
      }
    }
  }

  if (v14 != 8 || (result = [a2 flagged], (result & 1) != 0))
  {
    if (v14 != 8)
    {
      if (v14)
      {
        switch(v14)
        {
          case 1u:
            if (([a2 flagged] & 1) == 0)
            {
              swift_getObjectType();
              [a1 changesFlaggedTo_];
            }

            [a2 flagColor];
            type metadata accessor for ECMessageFlagColor();
            sub_1B074FCB0();
            result = sub_1B0E44A28();
            if ((result & 1) == 0)
            {
              swift_getObjectType();
              return [a1 changesFlagColorTo_];
            }

            break;
          case 2u:
            if (([a2 flagged] & 1) == 0)
            {
              swift_getObjectType();
              [a1 changesFlaggedTo_];
            }

            [a2 flagColor];
            type metadata accessor for ECMessageFlagColor();
            sub_1B074FCB0();
            result = sub_1B0E44A28();
            if ((result & 1) == 0)
            {
              swift_getObjectType();
              return [a1 changesFlagColorTo_];
            }

            break;
          case 3u:
            if (([a2 flagged] & 1) == 0)
            {
              swift_getObjectType();
              [a1 changesFlaggedTo_];
            }

            [a2 flagColor];
            type metadata accessor for ECMessageFlagColor();
            sub_1B074FCB0();
            result = sub_1B0E44A28();
            if ((result & 1) == 0)
            {
              swift_getObjectType();
              return [a1 changesFlagColorTo_];
            }

            break;
          case 4u:
            if (([a2 flagged] & 1) == 0)
            {
              swift_getObjectType();
              [a1 changesFlaggedTo_];
            }

            [a2 flagColor];
            type metadata accessor for ECMessageFlagColor();
            sub_1B074FCB0();
            result = sub_1B0E44A28();
            if ((result & 1) == 0)
            {
              swift_getObjectType();
              return [a1 changesFlagColorTo_];
            }

            break;
          case 5u:
            if (([a2 flagged] & 1) == 0)
            {
              swift_getObjectType();
              [a1 changesFlaggedTo_];
            }

            [a2 flagColor];
            type metadata accessor for ECMessageFlagColor();
            sub_1B074FCB0();
            result = sub_1B0E44A28();
            if ((result & 1) == 0)
            {
              swift_getObjectType();
              return [a1 changesFlagColorTo_];
            }

            break;
          case 6u:
            if (([a2 flagged] & 1) == 0)
            {
              swift_getObjectType();
              [a1 changesFlaggedTo_];
            }

            [a2 flagColor];
            type metadata accessor for ECMessageFlagColor();
            sub_1B074FCB0();
            result = sub_1B0E44A28();
            if ((result & 1) == 0)
            {
              swift_getObjectType();
              return [a1 changesFlagColorTo_];
            }

            break;
          default:
            v5 = [a2 flagged];
            if ((v5 & 1) == 0)
            {
              swift_getObjectType();
              [a1 changesFlaggedTo_];
            }

            [a2 flagColor];
            type metadata accessor for ECMessageFlagColor();
            sub_1B074FCB0();
            result = sub_1B0E44A28();
            if ((result & 1) == 0)
            {
              swift_getObjectType();
              return [a1 changesFlagColorTo_];
            }

            break;
        }
      }

      else
      {
        result = [a2 flagged];
        if (result)
        {
          swift_getObjectType();
          return [a1 changesFlaggedTo_];
        }
      }
    }
  }

  else
  {
    swift_getObjectType();
    return [a1 changesFlaggedTo_];
  }

  return result;
}

unint64_t sub_1B074D188(uint64_t a1, char a2)
{
  if (a1)
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
  }

  else
  {
    v48 = 1;
    v49 = 1;
    v50 = 1;
    v51 = 1;
    v52 = 1;
    v53 = 1;
    v54 = 1;
    v55 = 1;
    v56 = 1;
    v57 = 1;
  }

  if ((a1 & 0x100) != 0)
  {
    v39 = v57 | 2;
    v40 = v57 | 2;
    v41 = v57 | 2;
    v42 = v57 | 2;
    v43 = v57 | 2;
    v44 = v57 | 2;
    v45 = v57 | 2;
    v46 = v57 | 2;
    v47 = v57 | 2;
  }

  else
  {
    v39 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v47 = v56;
  }

  if ((a1 & 0x10000) != 0)
  {
    v31 = v47 | 4;
    v32 = v47 | 4;
    v33 = v47 | 4;
    v34 = v47 | 4;
    v35 = v47 | 4;
    v36 = v47 | 4;
    v37 = v47 | 4;
    v38 = v47 | 4;
  }

  else
  {
    v31 = v39;
    v32 = v40;
    v33 = v41;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v37 = v45;
    v38 = v46;
  }

  if ((a1 & 0x1000000) != 0)
  {
    v24 = v38 | 0x40;
    v25 = v38 | 0x40;
    v26 = v38 | 0x40;
    v27 = v38 | 0x40;
    v28 = v38 | 0x40;
    v29 = v38 | 0x40;
    v30 = v38 | 0x40;
  }

  else
  {
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v29 = v36;
    v30 = v37;
  }

  if (BYTE4(a1) == 2 || (a1 & 0x100000000) == 0)
  {
    v18 = v24;
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v23 = v29;
  }

  else
  {
    v18 = v30 | 0x100;
    v19 = v30 | 0x100;
    v20 = v30 | 0x100;
    v21 = v30 | 0x100;
    v22 = v30 | 0x100;
    v23 = v30 | 0x100;
  }

  if (BYTE5(a1) == 2 || (a1 & 0x10000000000) == 0)
  {
    v13 = v18;
    v14 = v19;
    v15 = v20;
    v16 = v21;
    v17 = v22;
  }

  else
  {
    v13 = v23 | 0x200;
    v14 = v23 | 0x200;
    v15 = v23 | 0x200;
    v16 = v23 | 0x200;
    v17 = v23 | 0x200;
  }

  if (a2 == 2 || (a2 & 1) == 0)
  {
    v9 = v13;
    v10 = v14;
    v11 = v15;
    v12 = v16;
  }

  else
  {
    v9 = v17 | 0x800000000000;
    v10 = v17 | 0x800000000000;
    v11 = v17 | 0x800000000000;
    v12 = v17 | 0x800000000000;
  }

  if (BYTE6(a1) == 3)
  {
    v7 = v9;
    v8 = v10;
  }

  else
  {
    if (BYTE6(a1))
    {
      if (BYTE6(a1) == 1)
      {
        v5 = v11 | 0x200000;
        v6 = v11 | 0x200000;
      }

      else
      {
        v5 = v12 | 0x80000000;
        v6 = v12 | 0x80000000;
      }
    }

    else
    {
      v5 = v9;
      v6 = v10;
    }

    v7 = v5;
    v8 = v6;
  }

  if (HIBYTE(a1) == 8)
  {
    v4 = v7;
  }

  else if (HIBYTE(a1))
  {
    v4 = v8 | 0x10;
  }

  else
  {
    v4 = v7;
  }

  if (HIBYTE(a1) == 8)
  {
    return v4;
  }

  if (!HIBYTE(a1))
  {
    return v4;
  }

  switch(HIBYTE(a1))
  {
    case 1u:
      return MFMessageFlagsSetFlagColor(v4, 0);
    case 2u:
      return MFMessageFlagsSetFlagColor(v4, 1);
    case 3u:
      return MFMessageFlagsSetFlagColor(v4, 2);
    case 4u:
      return MFMessageFlagsSetFlagColor(v4, 3);
    case 5u:
      return MFMessageFlagsSetFlagColor(v4, 4);
    case 6u:
      return MFMessageFlagsSetFlagColor(v4, 5);
  }

  return MFMessageFlagsSetFlagColor(v4, 6);
}

unint64_t sub_1B074DB60(uint64_t a1, uint64_t a2)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v15 = sub_1B074F260;
  v16 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = 0;
  v13 = sub_1B074C0AC;
  v14 = &block_descriptor_1281;
  v6 = _Block_copy(&aBlock);
  v7 = [v5 initWithBuilder_];
  _Block_release(v6);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B074DCB0(uint64_t a1, uint64_t a2)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v15 = sub_1B074F260;
  v16 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = 0;
  v13 = sub_1B074C0AC;
  v14 = &block_descriptor_1293;
  v6 = _Block_copy(&aBlock);
  v7 = [v5 initWithBuilder_];
  _Block_release(v6);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B074DE00(uint64_t a1, uint64_t a2)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v15 = sub_1B074F260;
  v16 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = 0;
  v13 = sub_1B074C0AC;
  v14 = &block_descriptor_1287;
  v6 = _Block_copy(&aBlock);
  v7 = [v5 initWithBuilder_];
  _Block_release(v6);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

id sub_1B074DF78(uint64_t a1, uint64_t a2)
{
  v4 = [v2 initWithFirst:a1 second:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1B074DFFC()
{
  LOBYTE(v2) = *(v0 + 16);
  HIDWORD(v2) = *(v0 + 20);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  return sub_1B074DFE0(v2);
}

uint64_t sub_1B074E050()
{
  LOBYTE(v2) = *(v0 + 16);
  HIDWORD(v2) = *(v0 + 20);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  return sub_1B074E034(v2);
}

uint64_t sub_1B074E0E4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 20);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  return sub_1B074E088();
}

uint64_t sub_1B074E11C(uint64_t a1)
{
  v4 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v4 - v5;
  v1();
  v9 = MessageIdentifierSet.debugDescription.getter(v6);
  v8 = v2;
  sub_1B03D09B8(v7);
  return v9;
}

uint64_t _s21UnfilteredFlagChangesVMa()
{
  v1 = qword_1EB6DBBB8;
  if (!qword_1EB6DBBB8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

char *sub_1B074E258(char *a1)
{
  v1 = *a1;

  v7 = _s21UnfilteredFlagChangesVMa();
  v6 = v7[5];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(&a1[v6]);
  v3 = *&a1[v7[6]];

  v4 = *&a1[v7[7]];

  return a1;
}

void *sub_1B074E30C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
  v4 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[1] = v4;
  v6 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[2] = v6;
  v8 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  a2[3] = v8;
  return result;
}

unint64_t sub_1B074E39C()
{
  v2 = qword_1EB6DA940;
  if (!qword_1EB6DA940)
  {
    sub_1B0E45C48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA940);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_1B074E41C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E439A8();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = _s6LoggerVMa_1();
  v4 = (a1 + *(v3 + 20));
  result = *v4;
  v6 = (a2 + *(v3 + 20));
  *v6 = *v4;
  v6[1].n128_u32[0] = v4[1].n128_u32[0];
  return result;
}

void *sub_1B074E4B4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
  v4 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[1] = v4;
  v5 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[2] = v5;
  v7 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[3] = v7;
  v9 = a1[4];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  a2[4] = v9;
  return result;
}

char *sub_1B074E568(char *a1, char *a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v4;
  v9 = _s21UnfilteredFlagChangesVMa();
  v5 = v9[5];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 16))(&a2[v5], &a1[v5]);
  v7 = v9[6];
  v8 = *&a1[v7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&a2[v7] = v8;
  v11 = v9[7];
  v12 = *&a1[v11];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *&a2[v11] = v12;
  return result;
}

char *sub_1B074E678(char *a1, char *a2)
{
  *a2 = *a1;
  v5 = _s21UnfilteredFlagChangesVMa();
  v4 = v5[5];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  result = a2;
  *&a2[v5[6]] = *&a1[v5[6]];
  *&a2[v5[7]] = *&a1[v5[7]];
  return result;
}

uint64_t sub_1B074E744()
{
  v1 = *(_s21UnfilteredFlagChangesVMa() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B07374C8(v2);
}

void *sub_1B074E7A8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *a2 = v4;
  return result;
}

unint64_t sub_1B074E7E0()
{
  v2 = qword_1EB6DB420;
  if (!qword_1EB6DB420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1BE8, &qword_1B0ECD5D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB420);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B074E868(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  v3 = a1[2];

  v4 = a1[3];

  v5 = a1[4];

  return a1;
}

double sub_1B074E8C4()
{
  v1 = *(sub_1B0E43108() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0740BF0();
}

void *sub_1B074E95C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v5 = *a1;
  sub_1B0E45E48();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

unint64_t sub_1B074EA1C()
{
  v2 = qword_1EB6DB588;
  if (!qword_1EB6DB588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1C48, &qword_1B0E9B038);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074EAA4()
{
  v2 = qword_1EB6DB580;
  if (!qword_1EB6DB580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1C48, &qword_1B0E9B038);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB580);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B074EB58(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1B074EC14(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 20) = *(a1 + 20);
  v4 = *(a1 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_1B074EC64(uint64_t a1, uint64_t a2)
{
  LOWORD(v4) = *(v2 + 24);
  BYTE2(v4) = *(v2 + 26);
  BYTE3(v4) = *(v2 + 27);
  BYTE4(v4) = *(v2 + 28);
  *(&v4 + 5) = *(v2 + 29);
  BYTE13(v4) = *(v2 + 37);
  return sub_1B074236C(a1, a2, *(v2 + 16), v4, *(&v4 + 1), *(v2 + 40));
}

unint64_t sub_1B074ECF8()
{
  v2 = qword_1EB6E1CA8;
  if (!qword_1EB6E1CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1CA0, &qword_1B0E9B0A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1CA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B074ED80(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[3];

  v3 = a1[5];

  v4 = a1[7];

  return a1;
}

void *sub_1B074EDD0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
  v4 = a1[1];
  v5 = a1[2];

  a2[1] = v4;
  a2[2] = v5;
  v6 = a1[3];
  v7 = a1[4];

  a2[3] = v6;
  a2[4] = v7;
  v9 = a1[5];
  v10 = a1[6];

  a2[5] = v9;
  a2[6] = v10;
  v12 = a1[7];
  v13 = a1[8];

  result = a2;
  a2[7] = v12;
  a2[8] = v13;
  return result;
}

uint64_t *sub_1B074EEBC(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[3];

  v3 = a1[5];

  v4 = a1[7];

  v5 = a1[9];

  return a1;
}

uint64_t sub_1B074EF18@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B07404E0(v3, a1);
}

unint64_t sub_1B074EFAC()
{
  v2 = qword_1EB6DA6F0;
  if (!qword_1EB6DA6F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA6F0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B074F018()
{
  v2 = qword_1EB6DA620;
  if (!qword_1EB6DA620)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA620);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B074F084()
{
  v2 = qword_1EB6DC988;
  if (!qword_1EB6DC988)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC988);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B074F0FC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 40))(a2, a1);
  return a2;
}

unint64_t sub_1B074F178()
{
  v2 = qword_1EB6DAF90;
  if (!qword_1EB6DAF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1CF8, &qword_1B0E9B0F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF90);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_1254(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_1263(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *__swift_memcpy13_4(void *result, void *a2)
{
  *result = *a2;
  *(result + 5) = *(a2 + 5);
  return result;
}

uint64_t sub_1B074F3D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 13))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 4);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B074F520(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 13);
  if (a2 > 0xFE)
  {
    result = 0;
    *(v3 + 12) = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 255;
    if (a3 >= 0xFF)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B074F738()
{
  v4 = sub_1B074F848();
  if (v0 <= 0x3F)
  {
    v4 = sub_1B043B29C();
    if (v1 <= 0x3F)
    {
      v4 = sub_1B074F8DC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1B074F848()
{
  v4 = qword_1EB6DB428;
  if (!qword_1EB6DB428)
  {
    v3 = sub_1B0E45358();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DB428);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B074F8DC()
{
  v4 = qword_1EB6DB598;
  if (!qword_1EB6DB598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1C00, &qword_1B0E9AFF8);
    v3 = sub_1B0E45358();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DB598);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B074F9B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
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

uint64_t sub_1B074FAC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1B074FCB0()
{
  v2 = qword_1EB6E1DD8;
  if (!qword_1EB6E1DD8)
  {
    type metadata accessor for ECMessageFlagColor();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1DD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074FD30()
{
  v2 = qword_1EB6DABA0;
  if (!qword_1EB6DABA0)
  {
    type metadata accessor for ECJunkMailLevel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DABA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_1279(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_1285(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_1291(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B074FF18()
{
  v2 = qword_1EB6DAF80;
  if (!qword_1EB6DAF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1C10, &qword_1B0E9B008);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B074FFA0()
{
  v2 = qword_1EB6DB330;
  if (!qword_1EB6DB330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1F18, &qword_1B0E9B220);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB330);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0750048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a2)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (a3)
    {
      static IMAPAccount.makeMailboxURL(accountID:pathComponents:)(a1, a2, a3, a4);
    }
  }

  v5 = sub_1B0E42E68();
  return (*(*(v5 - 8) + 56))(a4, 1);
}

uint64_t static IMAPAccount.makeMailboxURL(accountID:pathComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v48 = 0;
  v37 = sub_1B0E42A68();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v36);
  v41 = v21 - v40;
  v42 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v43 = v21 - v42;
  v52 = v21 - v42;
  v50 = v7;
  v51 = v8;
  v49 = v9;
  v48 = v4;
  if (sub_1B0E44DA8() & 1) != 0 || (v47 = v34, v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0), sub_1B0750598(), (sub_1B0E45748()))
  {
    v20 = sub_1B0E42E68();
    return (*(*(v20 - 8) + 56))(v33, 1);
  }

  else
  {
    sub_1B0E42A58();
    v25 = 1;
    sub_1B0E44838();
    sub_1B0E42A48();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2724B40](v36, v35);
    v21[2] = 1;
    v10 = sub_1B0E46A28();
    v27 = &v45;
    v45 = v10;
    v46 = v11;
    v21[1] = "/";
    v12 = sub_1B0E44838();
    v21[0] = v13;
    MEMORY[0x1B2728B30](v12);

    v44[2] = v34;
    v21[3] = sub_1B0E44838();
    v21[4] = v14;
    sub_1B03B11C4();
    v22 = sub_1B0E448E8();
    v23 = v15;

    v24 = v44;
    v44[0] = v22;
    v44[1] = v23;
    sub_1B0E46A08();
    sub_1B03B1198(v24);
    v16 = sub_1B0E44838();
    v26 = v17;
    MEMORY[0x1B2728B30](v16);

    v29 = v45;
    v28 = v46;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v27);
    v18 = sub_1B0E44C88();
    MEMORY[0x1B2724B50](v18);
    (*(v38 + 16))(v41, v43, v37);
    sub_1B0E42A18();
    v31 = *(v38 + 8);
    v30 = v38 + 8;
    v31(v41, v37);
    return (v31)(v43, v37);
  }
}