BOOL sub_1B0971120(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      default:
        v4 = 6;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      default:
        v3 = 6;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_1B0971514()
{
  v5 = 0u;
  v6 = 0u;
  v4 = DownloadRequest.ID.init()();
  LODWORD(v5) = v4;
  v1 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(&v5 + 1) = v1;
  v2 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&v6 = v2;
  v3 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(&v6 + 1) = v3;
  sub_1B0993AD8(&v5);
  return v4;
}

uint64_t sub_1B09715D8()
{
  v2 = *v0;
  sub_1B097161C(v0);
  return v2;
}

uint64_t sub_1B097161C(int *a1)
{
  result = DownloadRequest.ID.next.getter(*a1);
  *a1 = result;
  return result;
}

uint64_t *sub_1B09716D4(uint64_t a1)
{
  v808 = MEMORY[0x1EEE9AC00](a1);
  v811 = v2;
  v809 = v3;
  v817 = v4;
  v810 = v5;
  v759 = v1;
  v760 = "Fatal error";
  v761 = "Range requires lowerBound <= upperBound";
  v762 = "Swift/Range.swift";
  v763 = sub_1B074E050;
  v764 = sub_1B03F7AE0;
  v765 = sub_1B0394C30;
  v766 = sub_1B0394C24;
  v767 = sub_1B074DFFC;
  v768 = sub_1B039BA88;
  v769 = sub_1B039BB94;
  v770 = sub_1B0394C24;
  v771 = sub_1B039BBA0;
  v772 = sub_1B039BC08;
  v773 = sub_1B06BA324;
  v774 = sub_1B074E0E4;
  v775 = sub_1B039BCF8;
  v776 = sub_1B07AB020;
  v777 = sub_1B039BC08;
  v778 = sub_1B0398F5C;
  v779 = sub_1B0398F5C;
  v780 = sub_1B0399178;
  v781 = sub_1B0398F5C;
  v782 = sub_1B0398F5C;
  v783 = sub_1B039BA94;
  v784 = sub_1B0398F5C;
  v785 = sub_1B0398F5C;
  v786 = sub_1B0399178;
  v787 = sub_1B0398F5C;
  v788 = sub_1B0398F5C;
  v789 = sub_1B03991EC;
  v790 = sub_1B0398F5C;
  v791 = sub_1B0398F5C;
  v792 = sub_1B03993BC;
  v793 = sub_1B0398F5C;
  v794 = sub_1B0398F5C;
  v795 = sub_1B039BCEC;
  v796 = sub_1B0398F5C;
  v797 = sub_1B0398F5C;
  v798 = sub_1B03991EC;
  v845 = 0;
  v846 = 0;
  v844 = 0;
  v843 = 0;
  v842 = 0;
  v841 = 0;
  v837 = 0;
  v838 = 0;
  v839 = 0;
  v832 = 0;
  v799 = 0;
  v800 = 0;
  v801 = _s6LoggerVMa_1();
  v802 = (*(*(v801 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](0);
  v803 = &v156 - v802;
  v804 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v805 = &v156 - v804;
  v806 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v807 = &v156 - v806;
  v812 = sub_1B0E439A8();
  v813 = *(v812 - 8);
  v814 = v812 - 8;
  v815 = (*(v813 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v817);
  v816 = &v156 - v815;
  v845 = v11;
  v846 = v12;
  v844 = v13;
  v843 = v10;
  v842 = v14;
  v841 = v1;
  sub_1B07AB440(v10, v840);
  v818 = v847;
  memcpy(v847, v817, 0xB1uLL);
  result = sub_1B07AB810(v847);
  if (result != 1)
  {
    v756 = v848;
    v757 = 177;
    memcpy(v848, v847, 0xB1uLL);
    v758 = v849;
    memcpy(v849, v848, 0xB1uLL);
    result = sub_1B075FACC(v849);
    if (result != 1)
    {
      v753 = v850;
      v754 = 177;
      memcpy(v850, v849, 0xB1uLL);
      v755 = v851;
      memcpy(v851, v850, 0xB1uLL);
      if (sub_1B0717014(v851) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v851);
        v752 = __dst;
        memcpy(__dst, v16, sizeof(__dst));
        return sub_1B0717020(__dst);
      }

      else
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v851);
        v746 = v852;
        memcpy(v852, v17, sizeof(v852));
        sub_1B071728C(v852);
        v747 = *(v759 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v748 = &unk_1F26F1FA8;
        v750 = sub_1B0E451C8();

        v749 = *(v759 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v751 = sub_1B0E452A8();

        if (v751 < v750)
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v835 = v750;
        v836 = v751;
        v744 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1850, &unk_1B0E9B040);
        sub_1B06D55D0();
        sub_1B0E45798();
        for (i = v799; ; i = v161)
        {
          v742 = i;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1858, &qword_1B0E99C00);
          result = sub_1B0E46518();
          v743 = v833[15];
          if (v834)
          {
            break;
          }

          v741 = v743;
          v735 = v743;
          v832 = v743;
          v18 = *(v759 + 16);
          v736 = &v831;
          sub_1B0E453A8();
          v739 = v833;
          memcpy(v833, v736, 0x78uLL);
          v738 = v833[3];
          v737 = v833[4];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v740 = static MailboxName.== infix(_:_:)(v738, v737, v808, v811);

          sub_1B0990D34(v739);
          if ((v740 & 1) == 0)
          {
            goto LABEL_18;
          }

          v19 = *(v759 + 16);
          v730 = &v829;
          sub_1B0E453A8();
          v733 = v830;
          memcpy(v830, v730, sizeof(v830));
          v732 = &v828;
          v828 = v830[9];
          v731 = &v827;
          v827 = v809;
          sub_1B0714E4C();
          v734 = sub_1B0E45ED8();
          sub_1B0990D34(v733);
          if ((v734 & 1) == 0)
          {
            goto LABEL_18;
          }

          v20 = *(v759 + 16);
          v723 = &v825;
          sub_1B0E453A8();
          v728 = v826;
          memcpy(v826, v723, sizeof(v826));
          v727 = v826[5];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v724 = 1;
          v725 = MEMORY[0x1E69E6530];
          v21 = sub_1B0E46A48();
          *v22 = v724;
          sub_1B0394964();
          v726 = SectionSpecifier.Part.init(arrayLiteral:)(v21);
          v729 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v727);

          sub_1B0990D34(v728);
          if (v729)
          {
            (*(v813 + 16))(v816, v810, v812);
            sub_1B074B69C(v810, v807);
            sub_1B074B69C(v807, v805);
            sub_1B074E41C(v807, v803);
            v23 = (v805 + *(v801 + 20));
            v675 = *v23;
            v676 = *(v23 + 1);
            v677 = *(v23 + 1);
            v678 = *(v23 + 4);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B074B764(v805);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v674 = 36;
            v694 = 7;
            v24 = swift_allocObject();
            v25 = v676;
            v26 = v677;
            v27 = v678;
            v681 = v24;
            *(v24 + 16) = v675;
            *(v24 + 20) = v25;
            *(v24 + 24) = v26;
            *(v24 + 32) = v27;
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v28 = swift_allocObject();
            v29 = v676;
            v30 = v677;
            v31 = v678;
            v673 = v28;
            *(v28 + 16) = v675;
            *(v28 + 20) = v29;
            *(v28 + 24) = v30;
            *(v28 + 32) = v31;

            v693 = 32;
            v32 = swift_allocObject();
            v33 = v673;
            v685 = v32;
            *(v32 + 16) = v763;
            *(v32 + 24) = v33;
            sub_1B0394868();
            sub_1B0394868();

            v34 = swift_allocObject();
            v35 = v676;
            v36 = v677;
            v37 = v678;
            v38 = v34;
            v39 = v803;
            v689 = v38;
            *(v38 + 16) = v675;
            *(v38 + 20) = v35;
            *(v38 + 24) = v36;
            *(v38 + 32) = v37;
            sub_1B074B764(v39);
            v679 = swift_allocObject();
            *(v679 + 16) = v809;

            v40 = swift_allocObject();
            v41 = v679;
            v695 = v40;
            *(v40 + 16) = v764;
            *(v40 + 24) = v41;

            v721 = sub_1B0E43988();
            v722 = sub_1B0E45908();
            v691 = 17;
            v697 = swift_allocObject();
            v683 = 16;
            *(v697 + 16) = 16;
            v698 = swift_allocObject();
            v692 = 4;
            *(v698 + 16) = 4;
            v42 = swift_allocObject();
            v680 = v42;
            *(v42 + 16) = v765;
            *(v42 + 24) = 0;
            v43 = swift_allocObject();
            v44 = v680;
            v699 = v43;
            *(v43 + 16) = v766;
            *(v43 + 24) = v44;
            v700 = swift_allocObject();
            *(v700 + 16) = 0;
            v701 = swift_allocObject();
            *(v701 + 16) = 1;
            v45 = swift_allocObject();
            v46 = v681;
            v682 = v45;
            *(v45 + 16) = v767;
            *(v45 + 24) = v46;
            v47 = swift_allocObject();
            v48 = v682;
            v702 = v47;
            *(v47 + 16) = v768;
            *(v47 + 24) = v48;
            v703 = swift_allocObject();
            *(v703 + 16) = v683;
            v704 = swift_allocObject();
            *(v704 + 16) = v692;
            v49 = swift_allocObject();
            v684 = v49;
            *(v49 + 16) = v769;
            *(v49 + 24) = 0;
            v50 = swift_allocObject();
            v51 = v684;
            v705 = v50;
            *(v50 + 16) = v770;
            *(v50 + 24) = v51;
            v706 = swift_allocObject();
            *(v706 + 16) = 0;
            v707 = swift_allocObject();
            *(v707 + 16) = v692;
            v52 = swift_allocObject();
            v53 = v685;
            v686 = v52;
            *(v52 + 16) = v771;
            *(v52 + 24) = v53;
            v54 = swift_allocObject();
            v55 = v686;
            v708 = v54;
            *(v54 + 16) = v772;
            *(v54 + 24) = v55;
            v709 = swift_allocObject();
            *(v709 + 16) = 112;
            v710 = swift_allocObject();
            v688 = 8;
            *(v710 + 16) = 8;
            v687 = swift_allocObject();
            *(v687 + 16) = 0x786F626C69616DLL;
            v56 = swift_allocObject();
            v57 = v687;
            v711 = v56;
            *(v56 + 16) = v773;
            *(v56 + 24) = v57;
            v712 = swift_allocObject();
            *(v712 + 16) = 37;
            v713 = swift_allocObject();
            *(v713 + 16) = v688;
            v58 = swift_allocObject();
            v59 = v689;
            v690 = v58;
            *(v58 + 16) = v774;
            *(v58 + 24) = v59;
            v60 = swift_allocObject();
            v61 = v690;
            v714 = v60;
            *(v60 + 16) = v775;
            *(v60 + 24) = v61;
            v715 = swift_allocObject();
            *(v715 + 16) = 0;
            v716 = swift_allocObject();
            *(v716 + 16) = v692;
            v62 = swift_allocObject();
            v63 = v695;
            v696 = v62;
            *(v62 + 16) = v776;
            *(v62 + 24) = v63;
            v64 = swift_allocObject();
            v65 = v696;
            v718 = v64;
            *(v64 + 16) = v777;
            *(v64 + 24) = v65;
            v720 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
            v717 = sub_1B0E46A48();
            v719 = v66;

            v67 = v697;
            v68 = v719;
            *v719 = v778;
            v68[1] = v67;

            v69 = v698;
            v70 = v719;
            v719[2] = v779;
            v70[3] = v69;

            v71 = v699;
            v72 = v719;
            v719[4] = v780;
            v72[5] = v71;

            v73 = v700;
            v74 = v719;
            v719[6] = v781;
            v74[7] = v73;

            v75 = v701;
            v76 = v719;
            v719[8] = v782;
            v76[9] = v75;

            v77 = v702;
            v78 = v719;
            v719[10] = v783;
            v78[11] = v77;

            v79 = v703;
            v80 = v719;
            v719[12] = v784;
            v80[13] = v79;

            v81 = v704;
            v82 = v719;
            v719[14] = v785;
            v82[15] = v81;

            v83 = v705;
            v84 = v719;
            v719[16] = v786;
            v84[17] = v83;

            v85 = v706;
            v86 = v719;
            v719[18] = v787;
            v86[19] = v85;

            v87 = v707;
            v88 = v719;
            v719[20] = v788;
            v88[21] = v87;

            v89 = v708;
            v90 = v719;
            v719[22] = v789;
            v90[23] = v89;

            v91 = v709;
            v92 = v719;
            v719[24] = v790;
            v92[25] = v91;

            v93 = v710;
            v94 = v719;
            v719[26] = v791;
            v94[27] = v93;

            v95 = v711;
            v96 = v719;
            v719[28] = v792;
            v96[29] = v95;

            v97 = v712;
            v98 = v719;
            v719[30] = v793;
            v98[31] = v97;

            v99 = v713;
            v100 = v719;
            v719[32] = v794;
            v100[33] = v99;

            v101 = v714;
            v102 = v719;
            v719[34] = v795;
            v102[35] = v101;

            v103 = v715;
            v104 = v719;
            v719[36] = v796;
            v104[37] = v103;

            v105 = v716;
            v106 = v719;
            v719[38] = v797;
            v106[39] = v105;

            v107 = v718;
            v108 = v719;
            v719[40] = v798;
            v108[41] = v107;
            sub_1B0394964();

            if (os_log_type_enabled(v721, v722))
            {
              v109 = v698;
              v110 = v697;
              v111 = v742;
              v645 = sub_1B0E45D78();
              v644 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
              v646 = sub_1B03949A8(0);
              v647 = sub_1B03949A8(1);
              v648 = &v823;
              v823 = v645;
              v649 = &v822;
              v822 = v646;
              v650 = &v821;
              v821 = v647;
              sub_1B0394A48(3, &v823);
              sub_1B0394A48(7, v648);
              v819 = v778;
              v820 = v110;
              sub_1B03949FC(&v819, v648, v649, v650);
              v651 = v111;
              v652 = v110;
              v653 = v109;
              v654 = v699;
              v655 = v700;
              v656 = v701;
              v657 = v702;
              v658 = v703;
              v659 = v704;
              v660 = v705;
              v661 = v706;
              v662 = v707;
              v663 = v708;
              v664 = v709;
              v665 = v710;
              v666 = v711;
              v667 = v712;
              v668 = v713;
              v669 = v714;
              v670 = v715;
              v671 = v716;
              v672 = v718;
              if (v111)
              {
                v622 = v652;
                v623 = v653;
                v624 = v654;
                v625 = v655;
                v626 = v656;
                v627 = v657;
                v628 = v658;
                v629 = v659;
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
                v169 = v660;
                v168 = v659;
                v167 = v658;
                v166 = v657;
                v165 = v656;
                v164 = v655;
                v163 = v654;
                v162 = v653;

                __break(1u);
              }

              else
              {
                v113 = v698;
                v114 = v697;
                v819 = v779;
                v820 = v698;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v600 = 0;
                v601 = v114;
                v602 = v113;
                v603 = v699;
                v604 = v700;
                v605 = v701;
                v606 = v702;
                v607 = v703;
                v608 = v704;
                v609 = v705;
                v610 = v706;
                v611 = v707;
                v612 = v708;
                v613 = v709;
                v614 = v710;
                v615 = v711;
                v616 = v712;
                v617 = v713;
                v618 = v714;
                v619 = v715;
                v620 = v716;
                v621 = v718;
                v115 = v698;
                v116 = v697;
                v819 = v780;
                v820 = v699;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v578 = 0;
                v579 = v116;
                v580 = v115;
                v581 = v699;
                v582 = v700;
                v583 = v701;
                v584 = v702;
                v585 = v703;
                v586 = v704;
                v587 = v705;
                v588 = v706;
                v589 = v707;
                v590 = v708;
                v591 = v709;
                v592 = v710;
                v593 = v711;
                v594 = v712;
                v595 = v713;
                v596 = v714;
                v597 = v715;
                v598 = v716;
                v599 = v718;
                v117 = v698;
                v118 = v697;
                v819 = v781;
                v820 = v700;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v556 = 0;
                v557 = v118;
                v558 = v117;
                v559 = v699;
                v560 = v700;
                v561 = v701;
                v562 = v702;
                v563 = v703;
                v564 = v704;
                v565 = v705;
                v566 = v706;
                v567 = v707;
                v568 = v708;
                v569 = v709;
                v570 = v710;
                v571 = v711;
                v572 = v712;
                v573 = v713;
                v574 = v714;
                v575 = v715;
                v576 = v716;
                v577 = v718;
                v119 = v698;
                v120 = v697;
                v819 = v782;
                v820 = v701;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v534 = 0;
                v535 = v120;
                v536 = v119;
                v537 = v699;
                v538 = v700;
                v539 = v701;
                v540 = v702;
                v541 = v703;
                v542 = v704;
                v543 = v705;
                v544 = v706;
                v545 = v707;
                v546 = v708;
                v547 = v709;
                v548 = v710;
                v549 = v711;
                v550 = v712;
                v551 = v713;
                v552 = v714;
                v553 = v715;
                v554 = v716;
                v555 = v718;
                v121 = v698;
                v122 = v697;
                v819 = v783;
                v820 = v702;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v512 = 0;
                v513 = v122;
                v514 = v121;
                v515 = v699;
                v516 = v700;
                v517 = v701;
                v518 = v702;
                v519 = v703;
                v520 = v704;
                v521 = v705;
                v522 = v706;
                v523 = v707;
                v524 = v708;
                v525 = v709;
                v526 = v710;
                v527 = v711;
                v528 = v712;
                v529 = v713;
                v530 = v714;
                v531 = v715;
                v532 = v716;
                v533 = v718;
                v123 = v698;
                v124 = v697;
                v819 = v784;
                v820 = v703;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v490 = 0;
                v491 = v124;
                v492 = v123;
                v493 = v699;
                v494 = v700;
                v495 = v701;
                v496 = v702;
                v497 = v703;
                v498 = v704;
                v499 = v705;
                v500 = v706;
                v501 = v707;
                v502 = v708;
                v503 = v709;
                v504 = v710;
                v505 = v711;
                v506 = v712;
                v507 = v713;
                v508 = v714;
                v509 = v715;
                v510 = v716;
                v511 = v718;
                v125 = v698;
                v126 = v697;
                v819 = v785;
                v820 = v704;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v468 = 0;
                v469 = v126;
                v470 = v125;
                v471 = v699;
                v472 = v700;
                v473 = v701;
                v474 = v702;
                v475 = v703;
                v476 = v704;
                v477 = v705;
                v478 = v706;
                v479 = v707;
                v480 = v708;
                v481 = v709;
                v482 = v710;
                v483 = v711;
                v484 = v712;
                v485 = v713;
                v486 = v714;
                v487 = v715;
                v488 = v716;
                v489 = v718;
                v127 = v698;
                v128 = v697;
                v819 = v786;
                v820 = v705;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v446 = 0;
                v447 = v128;
                v448 = v127;
                v449 = v699;
                v450 = v700;
                v451 = v701;
                v452 = v702;
                v453 = v703;
                v454 = v704;
                v455 = v705;
                v456 = v706;
                v457 = v707;
                v458 = v708;
                v459 = v709;
                v460 = v710;
                v461 = v711;
                v462 = v712;
                v463 = v713;
                v464 = v714;
                v465 = v715;
                v466 = v716;
                v467 = v718;
                v129 = v698;
                v130 = v697;
                v819 = v787;
                v820 = v706;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v424 = 0;
                v425 = v130;
                v426 = v129;
                v427 = v699;
                v428 = v700;
                v429 = v701;
                v430 = v702;
                v431 = v703;
                v432 = v704;
                v433 = v705;
                v434 = v706;
                v435 = v707;
                v436 = v708;
                v437 = v709;
                v438 = v710;
                v439 = v711;
                v440 = v712;
                v441 = v713;
                v442 = v714;
                v443 = v715;
                v444 = v716;
                v445 = v718;
                v131 = v698;
                v132 = v697;
                v819 = v788;
                v820 = v707;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v402 = 0;
                v403 = v132;
                v404 = v131;
                v405 = v699;
                v406 = v700;
                v407 = v701;
                v408 = v702;
                v409 = v703;
                v410 = v704;
                v411 = v705;
                v412 = v706;
                v413 = v707;
                v414 = v708;
                v415 = v709;
                v416 = v710;
                v417 = v711;
                v418 = v712;
                v419 = v713;
                v420 = v714;
                v421 = v715;
                v422 = v716;
                v423 = v718;
                v133 = v698;
                v134 = v697;
                v819 = v789;
                v820 = v708;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v380 = 0;
                v381 = v134;
                v382 = v133;
                v383 = v699;
                v384 = v700;
                v385 = v701;
                v386 = v702;
                v387 = v703;
                v388 = v704;
                v389 = v705;
                v390 = v706;
                v391 = v707;
                v392 = v708;
                v393 = v709;
                v394 = v710;
                v395 = v711;
                v396 = v712;
                v397 = v713;
                v398 = v714;
                v399 = v715;
                v400 = v716;
                v401 = v718;
                v135 = v698;
                v136 = v697;
                v819 = v790;
                v820 = v709;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v358 = 0;
                v359 = v136;
                v360 = v135;
                v361 = v699;
                v362 = v700;
                v363 = v701;
                v364 = v702;
                v365 = v703;
                v366 = v704;
                v367 = v705;
                v368 = v706;
                v369 = v707;
                v370 = v708;
                v371 = v709;
                v372 = v710;
                v373 = v711;
                v374 = v712;
                v375 = v713;
                v376 = v714;
                v377 = v715;
                v378 = v716;
                v379 = v718;
                v137 = v698;
                v138 = v697;
                v819 = v791;
                v820 = v710;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v336 = 0;
                v337 = v138;
                v338 = v137;
                v339 = v699;
                v340 = v700;
                v341 = v701;
                v342 = v702;
                v343 = v703;
                v344 = v704;
                v345 = v705;
                v346 = v706;
                v347 = v707;
                v348 = v708;
                v349 = v709;
                v350 = v710;
                v351 = v711;
                v352 = v712;
                v353 = v713;
                v354 = v714;
                v355 = v715;
                v356 = v716;
                v357 = v718;
                v139 = v698;
                v140 = v697;
                v819 = v792;
                v820 = v711;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v314 = 0;
                v315 = v140;
                v316 = v139;
                v317 = v699;
                v318 = v700;
                v319 = v701;
                v320 = v702;
                v321 = v703;
                v322 = v704;
                v323 = v705;
                v324 = v706;
                v325 = v707;
                v326 = v708;
                v327 = v709;
                v328 = v710;
                v329 = v711;
                v330 = v712;
                v331 = v713;
                v332 = v714;
                v333 = v715;
                v334 = v716;
                v335 = v718;
                v141 = v698;
                v142 = v697;
                v819 = v793;
                v820 = v712;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v292 = 0;
                v293 = v142;
                v294 = v141;
                v295 = v699;
                v296 = v700;
                v297 = v701;
                v298 = v702;
                v299 = v703;
                v300 = v704;
                v301 = v705;
                v302 = v706;
                v303 = v707;
                v304 = v708;
                v305 = v709;
                v306 = v710;
                v307 = v711;
                v308 = v712;
                v309 = v713;
                v310 = v714;
                v311 = v715;
                v312 = v716;
                v313 = v718;
                v143 = v698;
                v144 = v697;
                v819 = v794;
                v820 = v713;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v270 = 0;
                v271 = v144;
                v272 = v143;
                v273 = v699;
                v274 = v700;
                v275 = v701;
                v276 = v702;
                v277 = v703;
                v278 = v704;
                v279 = v705;
                v280 = v706;
                v281 = v707;
                v282 = v708;
                v283 = v709;
                v284 = v710;
                v285 = v711;
                v286 = v712;
                v287 = v713;
                v288 = v714;
                v289 = v715;
                v290 = v716;
                v291 = v718;
                v145 = v698;
                v146 = v697;
                v819 = v795;
                v820 = v714;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v248 = 0;
                v249 = v146;
                v250 = v145;
                v251 = v699;
                v252 = v700;
                v253 = v701;
                v254 = v702;
                v255 = v703;
                v256 = v704;
                v257 = v705;
                v258 = v706;
                v259 = v707;
                v260 = v708;
                v261 = v709;
                v262 = v710;
                v263 = v711;
                v264 = v712;
                v265 = v713;
                v266 = v714;
                v267 = v715;
                v268 = v716;
                v269 = v718;
                v147 = v698;
                v148 = v697;
                v819 = v796;
                v820 = v715;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v226 = 0;
                v227 = v148;
                v228 = v147;
                v229 = v699;
                v230 = v700;
                v231 = v701;
                v232 = v702;
                v233 = v703;
                v234 = v704;
                v235 = v705;
                v236 = v706;
                v237 = v707;
                v238 = v708;
                v239 = v709;
                v240 = v710;
                v241 = v711;
                v242 = v712;
                v243 = v713;
                v244 = v714;
                v245 = v715;
                v246 = v716;
                v247 = v718;
                v149 = v698;
                v150 = v697;
                v819 = v797;
                v820 = v716;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v204 = 0;
                v205 = v150;
                v206 = v149;
                v207 = v699;
                v208 = v700;
                v209 = v701;
                v210 = v702;
                v211 = v703;
                v212 = v704;
                v213 = v705;
                v214 = v706;
                v215 = v707;
                v216 = v708;
                v217 = v709;
                v218 = v710;
                v219 = v711;
                v220 = v712;
                v221 = v713;
                v222 = v714;
                v223 = v715;
                v224 = v716;
                v225 = v718;
                v151 = v698;
                v152 = v697;
                v819 = v798;
                v820 = v718;
                sub_1B03949FC(&v819, &v823, &v822, &v821);
                v182 = 0;
                v183 = v152;
                v184 = v151;
                v185 = v699;
                v186 = v700;
                v187 = v701;
                v188 = v702;
                v189 = v703;
                v190 = v704;
                v191 = v705;
                v192 = v706;
                v193 = v707;
                v194 = v708;
                v195 = v709;
                v196 = v710;
                v197 = v711;
                v198 = v712;
                v199 = v713;
                v200 = v714;
                v201 = v715;
                v202 = v716;
                v203 = v718;
                _os_log_impl(&dword_1B0389000, v721, v722, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Changing part request for single-part message UID %u: “1” → “”.", v645, 0x31u);
                sub_1B03998A8(v646);
                sub_1B03998A8(v647);
                sub_1B0E45D58();

                v643 = v182;
              }
            }

            else
            {
              v112 = v742;

              v643 = v112;
            }

            v160 = v643;
            MEMORY[0x1E69E5920](v721);
            (*(v813 + 8))(v816, v812);
            v153 = sub_1B0E46A48();
            v157 = SectionSpecifier.Part.init(arrayLiteral:)(v153);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
            v158 = &v824;
            v159 = sub_1B0E45398();
            v155 = *(v154 + 40);
            *(v154 + 40) = v157;

            v159();
            v161 = v160;
          }

          else
          {
LABEL_18:
            v161 = v742;
          }
        }
      }
    }
  }

  return result;
}

uint64_t (*sub_1B097507C(uint64_t a1, int a2, int a3))(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = swift_allocObject();
  result = sub_1B0991434;
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 36) = a3;
  return result;
}

uint64_t sub_1B09751DC(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = v7 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloads;
  swift_beginAccess();
  v17 = *v9;
  v18 = *(v9 + 8);
  v19 = *(v9 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  sub_1B0975324(a1, a2, a3, a4, a5, a6, a7 & 1, v17, v18, v19);
}

uint64_t *sub_1B0975324(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, unsigned int a8, uint64_t a9, __int128 a10)
{
  v27 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v39 = a1;
  v40 = a2;
  v38 = a3;
  v37 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7 & 1;
  v31 = a8;
  v32 = a9;
  v33 = a10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v29[0] = a10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
  sub_1B0990A50();
  sub_1B0E456F8();

  result = sub_1B039E440(v29);
  if ((v30 & 1) == 0)
  {
    v27 = v29[1];
    v24 = sub_1B09757D4(a5, a6, a7 & 1);
    v25 = v11;
    v26 = v12;
    v13 = v24;
    v14 = v11;
    v15 = v12;
    v21 = v24;
    LOBYTE(v22) = v11 & 1;
    v23 = v12;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E453A8();
    memcpy(__dst, v20, sizeof(__dst));

    v16 = __dst[12];

    sub_1B0990D34(__dst);
    v16(v13, v14 & 1, v15);
  }

  return result;
}

uint64_t sub_1B09755EC(const void *a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  memcpy(__dst, a1, sizeof(__dst));
  v27 = a1;
  v26 = a2;
  v24 = a3;
  v25 = a4;
  v23 = a5;
  v22 = HIDWORD(__dst[4]);
  v21 = a2;
  sub_1B0714E4C();
  v18 = sub_1B0E45ED8();
  sub_1B0990C1C(__dst, v20);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v18)
  {
    v10 = __dst[3];
    v9 = __dst[4];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = static MailboxName.== infix(_:_:)(v10, v9, a3, a4);

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  sub_1B0990D34(__dst);

  sub_1B0990C1C(__dst, v19);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v12)
  {
    v6 = __dst[5];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v6, a5);

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  sub_1B0990D34(__dst);

  return v8 & 1;
}

uint64_t sub_1B09757D4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1B0E46B68();
    sub_1B0A483BC();
    return v9;
  }

  v12 = a2 - 11801;
  if (__OFSUB__(a2, 11801))
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v12 <= 0)
  {
    sub_1B0975AD4();
    return v8;
  }

  if (__OFSUB__(result, 11801))
  {
    goto LABEL_25;
  }

  result = sub_1B0E46B68();
  if (__OFADD__(v12, 11801))
  {
    goto LABEL_26;
  }

  if (!__OFADD__(v12, 11801))
  {
    sub_1B0E46B78();
    sub_1B0A483BC();
    return v7;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B0975B38(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v25 = a6;
  v26 = a5;
  v28 = a3;
  v29 = a2;
  v27 = a1;
  v39 = a1;
  v40 = a2;
  v38 = a3;
  v37[1] = a4;
  v37[2] = a5;
  v37[3] = a6;
  v37[4] = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v37[0] = v26;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v33 = v28;
  v34 = v27;
  v35 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  sub_1B0991014();
  v31 = 0;
  v32 = sub_1B0E45028();
  v23 = v32;

  sub_1B039E440(v37);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v32)
  {
    v21 = 1;
    v22 = v31;
  }

  else
  {
    v7 = v31;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v36 = v25;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v16 = &v14;
    MEMORY[0x1EEE9AC00](&v14);
    v17 = v11;
    v11[4] = v28;
    v12 = v27;
    v13 = v8;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
    sub_1B09914B4();
    v9 = sub_1B0E45028();
    v19 = v7;
    v20 = v9;
    v15 = v9;

    sub_1B039E440(&v36);
    v21 = v15;
    v22 = v19;
  }

  v14 = v21;

  return v14 & 1;
}

uint64_t sub_1B0975E08@<X0>(unsigned int a1@<W2>, uint64_t *a2@<X8>)
{
  result = sub_1B07E14B4(a1);
  *a2 = result;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

uint64_t sub_1B0975E70(uint64_t a1)
{
  v1747 = MEMORY[0x1EEE9AC00](a1);
  v1746 = v2;
  v1743 = v3;
  v1744 = v4;
  v1638 = v1;
  v1745 = 0;
  v1639 = sub_1B074E050;
  v1640 = sub_1B03F7AE0;
  v1641 = sub_1B0394C30;
  v1642 = sub_1B0394C24;
  v1643 = sub_1B074DFFC;
  v1644 = sub_1B039BA88;
  v1645 = sub_1B039BB94;
  v1646 = sub_1B0394C24;
  v1647 = sub_1B039BBA0;
  v1648 = sub_1B039BC08;
  v1649 = 0x786F626C69616DLL;
  v1650 = sub_1B06BA324;
  v1651 = sub_1B074E0E4;
  v1652 = sub_1B039BCF8;
  v1653 = sub_1B0991544;
  v1654 = sub_1B03B0DF8;
  v1655 = sub_1B07AB020;
  v1656 = sub_1B039BC08;
  v1657 = sub_1B0398F5C;
  v1658 = sub_1B0398F5C;
  v1659 = sub_1B0399178;
  v1660 = sub_1B0398F5C;
  v1661 = sub_1B0398F5C;
  v1662 = sub_1B039BA94;
  v1663 = sub_1B0398F5C;
  v1664 = sub_1B0398F5C;
  v1665 = sub_1B0399178;
  v1666 = sub_1B0398F5C;
  v1667 = sub_1B0398F5C;
  v1668 = sub_1B03991EC;
  v1669 = sub_1B0398F5C;
  v1670 = sub_1B0398F5C;
  v1671 = sub_1B03993BC;
  v1672 = sub_1B0398F5C;
  v1673 = sub_1B0398F5C;
  v1674 = sub_1B039BCEC;
  v1675 = sub_1B0398F5C;
  v1676 = sub_1B0398F5C;
  v1677 = sub_1B0399260;
  v1678 = sub_1B0398F5C;
  v1679 = sub_1B0398F5C;
  v1680 = sub_1B03991EC;
  v1681 = sub_1B074E050;
  v1682 = sub_1B09907C8;
  v1683 = sub_1B03F7AE0;
  v1684 = sub_1B099153C;
  v1685 = sub_1B0394C24;
  v1686 = sub_1B074DFFC;
  v1687 = sub_1B039BA88;
  v1688 = sub_1B0394C24;
  v1689 = sub_1B039BBA0;
  v1690 = sub_1B039BC08;
  v1691 = sub_1B06BA324;
  v1692 = sub_1B074E0E4;
  v1693 = sub_1B039BCF8;
  v1694 = sub_1B09907D0;
  v1695 = sub_1B039BC08;
  v1696 = sub_1B07AB020;
  v1697 = sub_1B039BC08;
  v1698 = sub_1B0990FCC;
  v1699 = sub_1B039BCF8;
  v1700 = sub_1B08A9978;
  v1701 = sub_1B03B0DF8;
  v1702 = sub_1B0398F5C;
  v1703 = sub_1B0398F5C;
  v1704 = sub_1B0399178;
  v1705 = sub_1B0398F5C;
  v1706 = sub_1B0398F5C;
  v1707 = sub_1B039BA94;
  v1708 = sub_1B0398F5C;
  v1709 = sub_1B0398F5C;
  v1710 = sub_1B0399178;
  v1711 = sub_1B0398F5C;
  v1712 = sub_1B0398F5C;
  v1713 = sub_1B03991EC;
  v1714 = sub_1B0398F5C;
  v1715 = sub_1B0398F5C;
  v1716 = sub_1B03993BC;
  v1717 = sub_1B0398F5C;
  v1718 = sub_1B0398F5C;
  v1719 = sub_1B039BCEC;
  v1720 = sub_1B0398F5C;
  v1721 = sub_1B0398F5C;
  v1722 = sub_1B03991EC;
  v1723 = sub_1B0398F5C;
  v1724 = sub_1B0398F5C;
  v1725 = sub_1B03991EC;
  v1726 = sub_1B0398F5C;
  v1727 = sub_1B0398F5C;
  v1728 = sub_1B039BCEC;
  v1729 = sub_1B0398F5C;
  v1730 = sub_1B0398F5C;
  v1731 = sub_1B0399260;
  v1791 = 0;
  v1789 = 0;
  v1790 = 0;
  v1788 = 0;
  v1787 = 0;
  v1786 = 0;
  v1783 = 0;
  v1781 = 0;
  v1782 = 0;
  v1780 = 0;
  v1778 = 0;
  v1777[0] = 0;
  v1777[1] = 0;
  v1732 = 0;
  v1740 = 0;
  v1733 = sub_1B0E439A8();
  v1734 = *(v1733 - 8);
  v1735 = v1733 - 8;
  v1736 = (*(v1734 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](0);
  v1737 = &v449[-v1736];
  v1738 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v1739 = &v449[-v1738];
  v1741 = (*(*(_s6LoggerVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1740);
  v1742 = &v449[-v1741];
  v1748 = _s6LoggerVMa_1();
  v1754 = *(*(v1748 - 8) + 64);
  v1749 = (v1754 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v1747);
  v1750 = &v449[-v1749];
  v1751 = (v1754 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v1752 = &v449[-v1751];
  v1753 = (v1754 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v1755 = &v449[-v1753];
  v1756 = (v1754 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v1757 = &v449[-v1756];
  v1791 = &v449[-v1756];
  v1789 = v10;
  v1790 = v11;
  v1788 = v12;
  v1787 = v13;
  v1786 = v1;
  v1758 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment);
  v1759 = &v1785;
  swift_beginAccess();
  v1760 = *v1758;
  swift_endAccess();
  if ((v1760 & 0xFF00) == 0x200)
  {
    v1636 = 2;
  }

  else
  {
    v1637 = v1760 >> 16;
    v1636 = BYTE2(v1760) & 1;
  }

  v1784 = v1636;
  if (v1636 == 2)
  {
    v1635 = 0;
  }

  else
  {
    v1635 = v1784;
  }

  v1783 = v1635 & 1;
  if (v1635)
  {
    v1634 = &v1761;
    swift_beginAccess();
    sub_1B07143A4(v1747, v1746, v1743, 0);
    swift_endAccess();
  }

  sub_1B0394784(v1638 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v1742);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07B91DC(v1742, v1747, v1746, v1757);
  v1631 = sub_1B0985520(v1747, v1746, v1743);
  v1632 = v14;
  v1633 = v15;
  if (v15 == 2)
  {
    sub_1B074B764(v1757);
    v450 = 0;
  }

  else
  {
    v1628 = v1631;
    v1629 = v1632;
    v1630 = v1633;
    v1623 = v1633;
    v1621 = v1632;
    v1622 = v1631;
    v1781 = v1631;
    v1782 = v1632;
    v1780 = v1633 & 1;
    v1624 = &v1779;
    swift_beginAccess();
    v1625 = sub_1B09460C0(v1747, v1746, v1623 & 1, v1743);
    swift_endAccess();
    v1778 = v1625;
    v1777[2] = v1625;
    v1626 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
    v1627 = sub_1B0990678();
    if (sub_1B0E45748())
    {

      sub_1B0391D50(v1622, v1621);
      sub_1B074B764(v1757);
      v450 = 0;
    }

    else
    {
      if (sub_1B0E452A8() == 1)
      {
        v1532 = v1732;
      }

      else
      {
        (*(v1734 + 16))(v1739, v1757, v1733);
        sub_1B074B69C(v1757, v1755);
        sub_1B074B69C(v1755, v1752);
        sub_1B074E41C(v1755, v1750);
        v16 = &v1752[*(v1748 + 20)];
        v1567 = *v16;
        v1568 = *(v16 + 1);
        v1569 = *(v16 + 1);
        v1570 = *(v16 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v1752);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v1566 = 36;
        v1588 = 7;
        v17 = swift_allocObject();
        v18 = v1568;
        v19 = v1569;
        v20 = v1570;
        v1573 = v17;
        *(v17 + 16) = v1567;
        *(v17 + 20) = v18;
        *(v17 + 24) = v19;
        *(v17 + 32) = v20;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v21 = swift_allocObject();
        v22 = v1568;
        v23 = v1569;
        v24 = v1570;
        v1565 = v21;
        *(v21 + 16) = v1567;
        *(v21 + 20) = v22;
        *(v21 + 24) = v23;
        *(v21 + 32) = v24;

        v1587 = 32;
        v25 = swift_allocObject();
        v26 = v1565;
        v1577 = v25;
        *(v25 + 16) = v1639;
        *(v25 + 24) = v26;
        sub_1B0394868();
        sub_1B0394868();

        v27 = swift_allocObject();
        v28 = v1568;
        v29 = v1569;
        v30 = v1570;
        v31 = v27;
        v32 = v1750;
        v1580 = v31;
        *(v31 + 16) = v1567;
        *(v31 + 20) = v28;
        *(v31 + 24) = v29;
        *(v31 + 32) = v30;
        sub_1B074B764(v32);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v1591 = 24;
        v1583 = swift_allocObject();
        *(v1583 + 16) = v1625;
        v1571 = swift_allocObject();
        *(v1571 + 16) = v1743;

        v33 = swift_allocObject();
        v34 = v1571;
        v1589 = v33;
        *(v33 + 16) = v1640;
        *(v33 + 24) = v34;

        v1619 = sub_1B0E43988();
        v1620 = sub_1B0E45908();
        v1585 = 17;
        v1592 = swift_allocObject();
        v1575 = 16;
        *(v1592 + 16) = 16;
        v1593 = swift_allocObject();
        v1586 = 4;
        *(v1593 + 16) = 4;
        v35 = swift_allocObject();
        v1572 = v35;
        *(v35 + 16) = v1641;
        *(v35 + 24) = 0;
        v36 = swift_allocObject();
        v37 = v1572;
        v1594 = v36;
        *(v36 + 16) = v1642;
        *(v36 + 24) = v37;
        v1595 = swift_allocObject();
        *(v1595 + 16) = 0;
        v1596 = swift_allocObject();
        *(v1596 + 16) = 1;
        v38 = swift_allocObject();
        v39 = v1573;
        v1574 = v38;
        *(v38 + 16) = v1643;
        *(v38 + 24) = v39;
        v40 = swift_allocObject();
        v41 = v1574;
        v1597 = v40;
        *(v40 + 16) = v1644;
        *(v40 + 24) = v41;
        v1598 = swift_allocObject();
        *(v1598 + 16) = v1575;
        v1599 = swift_allocObject();
        *(v1599 + 16) = v1586;
        v42 = swift_allocObject();
        v1576 = v42;
        *(v42 + 16) = v1645;
        *(v42 + 24) = 0;
        v43 = swift_allocObject();
        v44 = v1576;
        v1600 = v43;
        *(v43 + 16) = v1646;
        *(v43 + 24) = v44;
        v1601 = swift_allocObject();
        *(v1601 + 16) = 0;
        v1602 = swift_allocObject();
        *(v1602 + 16) = v1586;
        v45 = swift_allocObject();
        v46 = v1577;
        v1578 = v45;
        *(v45 + 16) = v1647;
        *(v45 + 24) = v46;
        v47 = swift_allocObject();
        v48 = v1578;
        v1603 = v47;
        *(v47 + 16) = v1648;
        *(v47 + 24) = v48;
        v1604 = swift_allocObject();
        *(v1604 + 16) = 112;
        v1605 = swift_allocObject();
        v1582 = 8;
        *(v1605 + 16) = 8;
        v1579 = swift_allocObject();
        *(v1579 + 16) = v1649;
        v49 = swift_allocObject();
        v50 = v1579;
        v1606 = v49;
        *(v49 + 16) = v1650;
        *(v49 + 24) = v50;
        v1607 = swift_allocObject();
        *(v1607 + 16) = 37;
        v1608 = swift_allocObject();
        *(v1608 + 16) = v1582;
        v51 = swift_allocObject();
        v52 = v1580;
        v1581 = v51;
        *(v51 + 16) = v1651;
        *(v51 + 24) = v52;
        v53 = swift_allocObject();
        v54 = v1581;
        v1609 = v53;
        *(v53 + 16) = v1652;
        *(v53 + 24) = v54;
        v1610 = swift_allocObject();
        *(v1610 + 16) = 0;
        v1611 = swift_allocObject();
        *(v1611 + 16) = v1582;
        v55 = swift_allocObject();
        v56 = v1583;
        v1584 = v55;
        *(v55 + 16) = v1653;
        *(v55 + 24) = v56;
        v57 = swift_allocObject();
        v58 = v1584;
        v1612 = v57;
        *(v57 + 16) = v1654;
        *(v57 + 24) = v58;
        v1613 = swift_allocObject();
        *(v1613 + 16) = 0;
        v1614 = swift_allocObject();
        *(v1614 + 16) = v1586;
        v59 = swift_allocObject();
        v60 = v1589;
        v1590 = v59;
        *(v59 + 16) = v1655;
        *(v59 + 24) = v60;
        v61 = swift_allocObject();
        v62 = v1590;
        v1616 = v61;
        *(v61 + 16) = v1656;
        *(v61 + 24) = v62;
        v1618 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v1615 = sub_1B0E46A48();
        v1617 = v63;

        v64 = v1592;
        v65 = v1617;
        *v1617 = v1657;
        v65[1] = v64;

        v66 = v1593;
        v67 = v1617;
        v1617[2] = v1658;
        v67[3] = v66;

        v68 = v1594;
        v69 = v1617;
        v1617[4] = v1659;
        v69[5] = v68;

        v70 = v1595;
        v71 = v1617;
        v1617[6] = v1660;
        v71[7] = v70;

        v72 = v1596;
        v73 = v1617;
        v1617[8] = v1661;
        v73[9] = v72;

        v74 = v1597;
        v75 = v1617;
        v1617[10] = v1662;
        v75[11] = v74;

        v76 = v1598;
        v77 = v1617;
        v1617[12] = v1663;
        v77[13] = v76;

        v78 = v1599;
        v79 = v1617;
        v1617[14] = v1664;
        v79[15] = v78;

        v80 = v1600;
        v81 = v1617;
        v1617[16] = v1665;
        v81[17] = v80;

        v82 = v1601;
        v83 = v1617;
        v1617[18] = v1666;
        v83[19] = v82;

        v84 = v1602;
        v85 = v1617;
        v1617[20] = v1667;
        v85[21] = v84;

        v86 = v1603;
        v87 = v1617;
        v1617[22] = v1668;
        v87[23] = v86;

        v88 = v1604;
        v89 = v1617;
        v1617[24] = v1669;
        v89[25] = v88;

        v90 = v1605;
        v91 = v1617;
        v1617[26] = v1670;
        v91[27] = v90;

        v92 = v1606;
        v93 = v1617;
        v1617[28] = v1671;
        v93[29] = v92;

        v94 = v1607;
        v95 = v1617;
        v1617[30] = v1672;
        v95[31] = v94;

        v96 = v1608;
        v97 = v1617;
        v1617[32] = v1673;
        v97[33] = v96;

        v98 = v1609;
        v99 = v1617;
        v1617[34] = v1674;
        v99[35] = v98;

        v100 = v1610;
        v101 = v1617;
        v1617[36] = v1675;
        v101[37] = v100;

        v102 = v1611;
        v103 = v1617;
        v1617[38] = v1676;
        v103[39] = v102;

        v104 = v1612;
        v105 = v1617;
        v1617[40] = v1677;
        v105[41] = v104;

        v106 = v1613;
        v107 = v1617;
        v1617[42] = v1678;
        v107[43] = v106;

        v108 = v1614;
        v109 = v1617;
        v1617[44] = v1679;
        v109[45] = v108;

        v110 = v1616;
        v111 = v1617;
        v1617[46] = v1680;
        v111[47] = v110;
        sub_1B0394964();

        if (os_log_type_enabled(v1619, v1620))
        {
          v112 = v1732;
          v1558 = sub_1B0E45D78();
          v1557 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v1559 = sub_1B03949A8(0);
          v1560 = sub_1B03949A8(1);
          v1561 = &v1766;
          v1766 = v1558;
          v1562 = &v1765;
          v1765 = v1559;
          v1563 = &v1764;
          v1764 = v1560;
          sub_1B0394A48(3, &v1766);
          sub_1B0394A48(8, v1561);
          v1762 = v1657;
          v1763 = v1592;
          sub_1B03949FC(&v1762, v1561, v1562, v1563);
          v1564 = v112;
          if (v112)
          {

            __break(1u);
          }

          else
          {
            v1762 = v1658;
            v1763 = v1593;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1555 = 0;
            v1762 = v1659;
            v1763 = v1594;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1554 = 0;
            v1762 = v1660;
            v1763 = v1595;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1553 = 0;
            v1762 = v1661;
            v1763 = v1596;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1552 = 0;
            v1762 = v1662;
            v1763 = v1597;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1551 = 0;
            v1762 = v1663;
            v1763 = v1598;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1550 = 0;
            v1762 = v1664;
            v1763 = v1599;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1549 = 0;
            v1762 = v1665;
            v1763 = v1600;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1548 = 0;
            v1762 = v1666;
            v1763 = v1601;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1547 = 0;
            v1762 = v1667;
            v1763 = v1602;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1546 = 0;
            v1762 = v1668;
            v1763 = v1603;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1545 = 0;
            v1762 = v1669;
            v1763 = v1604;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1544 = 0;
            v1762 = v1670;
            v1763 = v1605;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1543 = 0;
            v1762 = v1671;
            v1763 = v1606;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1542 = 0;
            v1762 = v1672;
            v1763 = v1607;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1541 = 0;
            v1762 = v1673;
            v1763 = v1608;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1540 = 0;
            v1762 = v1674;
            v1763 = v1609;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1539 = 0;
            v1762 = v1675;
            v1763 = v1610;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1538 = 0;
            v1762 = v1676;
            v1763 = v1611;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1537 = 0;
            v1762 = v1677;
            v1763 = v1612;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1536 = 0;
            v1762 = v1678;
            v1763 = v1613;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1535 = 0;
            v1762 = v1679;
            v1763 = v1614;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1534 = 0;
            v1762 = v1680;
            v1763 = v1616;
            sub_1B03949FC(&v1762, &v1766, &v1765, &v1764);
            v1533 = 0;
            _os_log_impl(&dword_1B0389000, v1619, v1620, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Download did complete. Found %ld user-initiated download request(s) for UID %u.", v1558, 0x3Bu);
            sub_1B03998A8(v1559);
            sub_1B03998A8(v1560);
            sub_1B0E45D58();

            v1556 = v1533;
          }
        }

        else
        {
          v113 = v1732;

          v1556 = v113;
        }

        v1531 = v1556;
        MEMORY[0x1E69E5920](v1619);
        (*(v1734 + 8))(v1739, v1733);
        v1532 = v1531;
      }

      v1529 = v1532;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1776[9] = v1625;
      sub_1B0E45798();
      for (i = v1529; ; i = v454)
      {
        v1525 = i;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F8, &qword_1B0EA10F0);
        v1526 = &v1774;
        sub_1B0E46518();
        v1527 = v1775;
        v1528 = 72;
        memcpy(v1775, v1526, sizeof(v1775));
        memcpy(v1776, v1775, 0x48uLL);
        if (!v1776[3])
        {
          break;
        }

        v1462 = v1776;
        v1464 = __dst;
        v1465 = 72;
        memcpy(__dst, v1776, 0x48uLL);
        (*(v1734 + 16))(v1737, v1757, v1733);
        sub_1B074B69C(v1757, v1755);
        sub_1B074B69C(v1755, v1752);
        sub_1B074E41C(v1755, v1750);
        v114 = &v1752[*(v1748 + 20)];
        v1456 = *v114;
        v1457 = *(v114 + 1);
        v1458 = *(v114 + 1);
        v1459 = *(v114 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v1752);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v1455 = 36;
        v1487 = 7;
        v115 = swift_allocObject();
        v116 = v1457;
        v117 = v1458;
        v118 = v1459;
        v1468 = v115;
        *(v115 + 16) = v1456;
        *(v115 + 20) = v116;
        *(v115 + 24) = v117;
        *(v115 + 32) = v118;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v119 = swift_allocObject();
        v120 = v1457;
        v121 = v1458;
        v122 = v1459;
        v1454 = v119;
        *(v119 + 16) = v1456;
        *(v119 + 20) = v120;
        *(v119 + 24) = v121;
        *(v119 + 32) = v122;

        v1486 = 32;
        v123 = swift_allocObject();
        v124 = v1454;
        v1472 = v123;
        *(v123 + 16) = v1681;
        *(v123 + 24) = v124;
        sub_1B0394868();
        sub_1B0394868();

        v125 = swift_allocObject();
        v126 = v1457;
        v127 = v1458;
        v128 = v1459;
        v129 = v125;
        v130 = v1750;
        v1475 = v129;
        *(v129 + 16) = v1456;
        *(v129 + 20) = v126;
        *(v129 + 24) = v127;
        *(v129 + 32) = v128;
        sub_1B074B764(v130);
        sub_1B0990700(v1462, &v1773);
        v1463 = 88;
        v1460 = swift_allocObject();
        memcpy((v1460 + 16), v1464, v1465);

        v131 = swift_allocObject();
        v132 = v1460;
        v1477 = v131;
        *(v131 + 16) = v1682;
        *(v131 + 24) = v132;

        v1461 = swift_allocObject();
        *(v1461 + 16) = v1743;

        v133 = swift_allocObject();
        v134 = v1461;
        v1480 = v133;
        *(v133 + 16) = v1683;
        *(v133 + 24) = v134;

        sub_1B0990700(v1462, &v1772);
        v1466 = swift_allocObject();
        memcpy((v1466 + 16), v1464, v1465);

        v135 = swift_allocObject();
        v136 = v1466;
        v1482 = v135;
        *(v135 + 16) = v1684;
        *(v135 + 24) = v136;

        sub_1B03B2000(v1622, v1621);
        v137 = swift_allocObject();
        v138 = v1621;
        v1488 = v137;
        *(v137 + 16) = v1622;
        *(v137 + 24) = v138;
        sub_1B07575C4();

        v1523 = sub_1B0E43988();
        v1524 = sub_1B0E45908();
        v1484 = 17;
        v1490 = swift_allocObject();
        v1470 = 16;
        *(v1490 + 16) = 16;
        v1491 = swift_allocObject();
        v1479 = 4;
        *(v1491 + 16) = 4;
        v139 = swift_allocObject();
        v1467 = v139;
        *(v139 + 16) = v1641;
        *(v139 + 24) = 0;
        v140 = swift_allocObject();
        v141 = v1467;
        v1492 = v140;
        *(v140 + 16) = v1685;
        *(v140 + 24) = v141;
        v1493 = swift_allocObject();
        *(v1493 + 16) = 0;
        v1494 = swift_allocObject();
        *(v1494 + 16) = 1;
        v142 = swift_allocObject();
        v143 = v1468;
        v1469 = v142;
        *(v142 + 16) = v1686;
        *(v142 + 24) = v143;
        v144 = swift_allocObject();
        v145 = v1469;
        v1495 = v144;
        *(v144 + 16) = v1687;
        *(v144 + 24) = v145;
        v1496 = swift_allocObject();
        *(v1496 + 16) = v1470;
        v1497 = swift_allocObject();
        *(v1497 + 16) = v1479;
        v146 = swift_allocObject();
        v1471 = v146;
        *(v146 + 16) = v1645;
        *(v146 + 24) = 0;
        v147 = swift_allocObject();
        v148 = v1471;
        v1498 = v147;
        *(v147 + 16) = v1688;
        *(v147 + 24) = v148;
        v1499 = swift_allocObject();
        *(v1499 + 16) = 0;
        v1500 = swift_allocObject();
        *(v1500 + 16) = v1479;
        v149 = swift_allocObject();
        v150 = v1472;
        v1473 = v149;
        *(v149 + 16) = v1689;
        *(v149 + 24) = v150;
        v151 = swift_allocObject();
        v152 = v1473;
        v1501 = v151;
        *(v151 + 16) = v1690;
        *(v151 + 24) = v152;
        v1502 = swift_allocObject();
        *(v1502 + 16) = 112;
        v1503 = swift_allocObject();
        v1485 = 8;
        *(v1503 + 16) = 8;
        v1474 = swift_allocObject();
        *(v1474 + 16) = v1649;
        v153 = swift_allocObject();
        v154 = v1474;
        v1504 = v153;
        *(v153 + 16) = v1691;
        *(v153 + 24) = v154;
        v1505 = swift_allocObject();
        *(v1505 + 16) = 37;
        v1506 = swift_allocObject();
        *(v1506 + 16) = v1485;
        v155 = swift_allocObject();
        v156 = v1475;
        v1476 = v155;
        *(v155 + 16) = v1692;
        *(v155 + 24) = v156;
        v157 = swift_allocObject();
        v158 = v1476;
        v1507 = v157;
        *(v157 + 16) = v1693;
        *(v157 + 24) = v158;
        v1508 = swift_allocObject();
        *(v1508 + 16) = 2;
        v1509 = swift_allocObject();
        *(v1509 + 16) = v1479;
        v159 = swift_allocObject();
        v160 = v1477;
        v1478 = v159;
        *(v159 + 16) = v1694;
        *(v159 + 24) = v160;
        v161 = swift_allocObject();
        v162 = v1478;
        v1510 = v161;
        *(v161 + 16) = v1695;
        *(v161 + 24) = v162;
        v1511 = swift_allocObject();
        *(v1511 + 16) = 0;
        v1512 = swift_allocObject();
        *(v1512 + 16) = v1479;
        v163 = swift_allocObject();
        v164 = v1480;
        v1481 = v163;
        *(v163 + 16) = v1696;
        *(v163 + 24) = v164;
        v165 = swift_allocObject();
        v166 = v1481;
        v1513 = v165;
        *(v165 + 16) = v1697;
        *(v165 + 24) = v166;
        v1514 = swift_allocObject();
        *(v1514 + 16) = 34;
        v1515 = swift_allocObject();
        *(v1515 + 16) = v1485;
        v167 = swift_allocObject();
        v168 = v1482;
        v1483 = v167;
        *(v167 + 16) = v1698;
        *(v167 + 24) = v168;
        v169 = swift_allocObject();
        v170 = v1483;
        v1516 = v169;
        *(v169 + 16) = v1699;
        *(v169 + 24) = v170;
        v1517 = swift_allocObject();
        *(v1517 + 16) = 0;
        v1518 = swift_allocObject();
        *(v1518 + 16) = v1485;
        v171 = swift_allocObject();
        v172 = v1488;
        v1489 = v171;
        *(v171 + 16) = v1700;
        *(v171 + 24) = v172;
        v173 = swift_allocObject();
        v174 = v1489;
        v1520 = v173;
        *(v173 + 16) = v1701;
        *(v173 + 24) = v174;
        v1522 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v1519 = sub_1B0E46A48();
        v1521 = v175;

        v176 = v1490;
        v177 = v1521;
        *v1521 = v1702;
        v177[1] = v176;

        v178 = v1491;
        v179 = v1521;
        v1521[2] = v1703;
        v179[3] = v178;

        v180 = v1492;
        v181 = v1521;
        v1521[4] = v1704;
        v181[5] = v180;

        v182 = v1493;
        v183 = v1521;
        v1521[6] = v1705;
        v183[7] = v182;

        v184 = v1494;
        v185 = v1521;
        v1521[8] = v1706;
        v185[9] = v184;

        v186 = v1495;
        v187 = v1521;
        v1521[10] = v1707;
        v187[11] = v186;

        v188 = v1496;
        v189 = v1521;
        v1521[12] = v1708;
        v189[13] = v188;

        v190 = v1497;
        v191 = v1521;
        v1521[14] = v1709;
        v191[15] = v190;

        v192 = v1498;
        v193 = v1521;
        v1521[16] = v1710;
        v193[17] = v192;

        v194 = v1499;
        v195 = v1521;
        v1521[18] = v1711;
        v195[19] = v194;

        v196 = v1500;
        v197 = v1521;
        v1521[20] = v1712;
        v197[21] = v196;

        v198 = v1501;
        v199 = v1521;
        v1521[22] = v1713;
        v199[23] = v198;

        v200 = v1502;
        v201 = v1521;
        v1521[24] = v1714;
        v201[25] = v200;

        v202 = v1503;
        v203 = v1521;
        v1521[26] = v1715;
        v203[27] = v202;

        v204 = v1504;
        v205 = v1521;
        v1521[28] = v1716;
        v205[29] = v204;

        v206 = v1505;
        v207 = v1521;
        v1521[30] = v1717;
        v207[31] = v206;

        v208 = v1506;
        v209 = v1521;
        v1521[32] = v1718;
        v209[33] = v208;

        v210 = v1507;
        v211 = v1521;
        v1521[34] = v1719;
        v211[35] = v210;

        v212 = v1508;
        v213 = v1521;
        v1521[36] = v1720;
        v213[37] = v212;

        v214 = v1509;
        v215 = v1521;
        v1521[38] = v1721;
        v215[39] = v214;

        v216 = v1510;
        v217 = v1521;
        v1521[40] = v1722;
        v217[41] = v216;

        v218 = v1511;
        v219 = v1521;
        v1521[42] = v1723;
        v219[43] = v218;

        v220 = v1512;
        v221 = v1521;
        v1521[44] = v1724;
        v221[45] = v220;

        v222 = v1513;
        v223 = v1521;
        v1521[46] = v1725;
        v223[47] = v222;

        v224 = v1514;
        v225 = v1521;
        v1521[48] = v1726;
        v225[49] = v224;

        v226 = v1515;
        v227 = v1521;
        v1521[50] = v1727;
        v227[51] = v226;

        v228 = v1516;
        v229 = v1521;
        v1521[52] = v1728;
        v229[53] = v228;

        v230 = v1517;
        v231 = v1521;
        v1521[54] = v1729;
        v231[55] = v230;

        v232 = v1518;
        v233 = v1521;
        v1521[56] = v1730;
        v233[57] = v232;

        v234 = v1520;
        v235 = v1521;
        v1521[58] = v1731;
        v235[59] = v234;
        sub_1B0394964();

        if (os_log_type_enabled(v1523, v1524))
        {
          v236 = v1500;
          v237 = v1499;
          v238 = v1498;
          v239 = v1497;
          v240 = v1496;
          v241 = v1495;
          v242 = v1494;
          v243 = v1525;
          v1417 = sub_1B0E45D78();
          v1416 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v1418 = sub_1B03949A8(0);
          v1419 = sub_1B03949A8(2);
          v1420 = &v1771;
          v1771 = v1417;
          v1421 = &v1770;
          v1770 = v1418;
          v1422 = &v1769;
          v1769 = v1419;
          sub_1B0394A48(3, &v1771);
          sub_1B0394A48(10, v1420);
          v1767 = v1702;
          v1768 = v1490;
          sub_1B03949FC(&v1767, v1420, v1421, v1422);
          v1423 = v243;
          v1424 = v1490;
          v1425 = v1491;
          v1426 = v1492;
          v1427 = v1493;
          v1428 = v242;
          v1429 = v241;
          v1430 = v240;
          v1431 = v239;
          v1432 = v238;
          v1433 = v237;
          v1434 = v236;
          v1435 = v1501;
          v1436 = v1502;
          v1437 = v1503;
          v1438 = v1504;
          v1439 = v1505;
          v1440 = v1506;
          v1441 = v1507;
          v1442 = v1508;
          v1443 = v1509;
          v1444 = v1510;
          v1445 = v1511;
          v1446 = v1512;
          v1447 = v1513;
          v1448 = v1514;
          v1449 = v1515;
          v1450 = v1516;
          v1451 = v1517;
          v1452 = v1518;
          v1453 = v1520;
          if (v243)
          {
            v1386 = v1453;
            v1384 = v1425;
            v1383 = v1424;
            v1385 = v1425;
            v1387 = v1426;
            v1388 = v1427;
            v1389 = v1428;
            v1390 = v1429;
            v1391 = v1430;
            v1392 = v1431;
            v1393 = v1432;
            v1394 = v1433;
            v1395 = v1434;
            v1396 = v1435;
            v1397 = v1436;
            v1398 = v1437;
            v1399 = v1438;
            v1400 = v1439;
            v1401 = v1440;
            v1402 = v1441;
            v1403 = v1442;
            v1404 = v1443;
            v1405 = v1444;
            v1406 = v1445;
            v1407 = v1446;
            v1408 = v1447;
            v1409 = v1448;
            v1410 = v1449;
            v1411 = v1450;
            v1412 = v1451;
            v1413 = v1452;
            v1414 = v1453;
            v483 = v1453;
            v482 = v1452;
            v481 = v1451;
            v480 = v1450;
            v479 = v1449;
            v478 = v1448;
            v477 = v1447;
            v476 = v1446;
            v475 = v1445;
            v474 = v1444;
            v473 = v1443;
            v472 = v1442;
            v471 = v1441;
            v470 = v1440;
            v469 = v1439;
            v468 = v1438;
            v467 = v1437;
            v466 = v1436;
            v465 = v1435;
            v464 = v1434;
            v463 = v1433;
            v462 = v1432;
            v461 = v1431;
            v460 = v1430;
            v459 = v1429;
            v458 = v1428;
            v457 = v1427;
            v456 = v1426;
            v455 = v1425;

            __break(1u);
          }

          else
          {
            v245 = v1500;
            v246 = v1499;
            v247 = v1498;
            v248 = v1497;
            v249 = v1496;
            v250 = v1495;
            v251 = v1494;
            v1767 = v1703;
            v1768 = v1491;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v1352 = 0;
            v1353 = v1490;
            v1354 = v1491;
            v1355 = v1492;
            v1356 = v1493;
            v1357 = v251;
            v1358 = v250;
            v1359 = v249;
            v1360 = v248;
            v1361 = v247;
            v1362 = v246;
            v1363 = v245;
            v1364 = v1501;
            v1365 = v1502;
            v1366 = v1503;
            v1367 = v1504;
            v1368 = v1505;
            v1369 = v1506;
            v1370 = v1507;
            v1371 = v1508;
            v1372 = v1509;
            v1373 = v1510;
            v1374 = v1511;
            v1375 = v1512;
            v1376 = v1513;
            v1377 = v1514;
            v1378 = v1515;
            v1379 = v1516;
            v1380 = v1517;
            v1381 = v1518;
            v1382 = v1520;
            v252 = v1500;
            v253 = v1499;
            v254 = v1498;
            v255 = v1497;
            v256 = v1496;
            v257 = v1495;
            v258 = v1494;
            v1767 = v1704;
            v1768 = v1492;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v1321 = 0;
            v1322 = v1490;
            v1323 = v1491;
            v1324 = v1492;
            v1325 = v1493;
            v1326 = v258;
            v1327 = v257;
            v1328 = v256;
            v1329 = v255;
            v1330 = v254;
            v1331 = v253;
            v1332 = v252;
            v1333 = v1501;
            v1334 = v1502;
            v1335 = v1503;
            v1336 = v1504;
            v1337 = v1505;
            v1338 = v1506;
            v1339 = v1507;
            v1340 = v1508;
            v1341 = v1509;
            v1342 = v1510;
            v1343 = v1511;
            v1344 = v1512;
            v1345 = v1513;
            v1346 = v1514;
            v1347 = v1515;
            v1348 = v1516;
            v1349 = v1517;
            v1350 = v1518;
            v1351 = v1520;
            v259 = v1500;
            v260 = v1499;
            v261 = v1498;
            v262 = v1497;
            v263 = v1496;
            v264 = v1495;
            v265 = v1494;
            v1767 = v1705;
            v1768 = v1493;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v1290 = 0;
            v1291 = v1490;
            v1292 = v1491;
            v1293 = v1492;
            v1294 = v1493;
            v1295 = v265;
            v1296 = v264;
            v1297 = v263;
            v1298 = v262;
            v1299 = v261;
            v1300 = v260;
            v1301 = v259;
            v1302 = v1501;
            v1303 = v1502;
            v1304 = v1503;
            v1305 = v1504;
            v1306 = v1505;
            v1307 = v1506;
            v1308 = v1507;
            v1309 = v1508;
            v1310 = v1509;
            v1311 = v1510;
            v1312 = v1511;
            v1313 = v1512;
            v1314 = v1513;
            v1315 = v1514;
            v1316 = v1515;
            v1317 = v1516;
            v1318 = v1517;
            v1319 = v1518;
            v1320 = v1520;
            v266 = v1500;
            v267 = v1499;
            v268 = v1498;
            v269 = v1497;
            v270 = v1496;
            v271 = v1495;
            v272 = v1494;
            v1767 = v1706;
            v1768 = v1494;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v1259 = 0;
            v1260 = v1490;
            v1261 = v1491;
            v1262 = v1492;
            v1263 = v1493;
            v1264 = v272;
            v1265 = v271;
            v1266 = v270;
            v1267 = v269;
            v1268 = v268;
            v1269 = v267;
            v1270 = v266;
            v1271 = v1501;
            v1272 = v1502;
            v1273 = v1503;
            v1274 = v1504;
            v1275 = v1505;
            v1276 = v1506;
            v1277 = v1507;
            v1278 = v1508;
            v1279 = v1509;
            v1280 = v1510;
            v1281 = v1511;
            v1282 = v1512;
            v1283 = v1513;
            v1284 = v1514;
            v1285 = v1515;
            v1286 = v1516;
            v1287 = v1517;
            v1288 = v1518;
            v1289 = v1520;
            v273 = v1500;
            v274 = v1499;
            v275 = v1498;
            v276 = v1497;
            v277 = v1496;
            v278 = v1495;
            v279 = v1494;
            v1767 = v1707;
            v1768 = v1495;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v1228 = 0;
            v1229 = v1490;
            v1230 = v1491;
            v1231 = v1492;
            v1232 = v1493;
            v1233 = v279;
            v1234 = v278;
            v1235 = v277;
            v1236 = v276;
            v1237 = v275;
            v1238 = v274;
            v1239 = v273;
            v1240 = v1501;
            v1241 = v1502;
            v1242 = v1503;
            v1243 = v1504;
            v1244 = v1505;
            v1245 = v1506;
            v1246 = v1507;
            v1247 = v1508;
            v1248 = v1509;
            v1249 = v1510;
            v1250 = v1511;
            v1251 = v1512;
            v1252 = v1513;
            v1253 = v1514;
            v1254 = v1515;
            v1255 = v1516;
            v1256 = v1517;
            v1257 = v1518;
            v1258 = v1520;
            v280 = v1500;
            v281 = v1499;
            v282 = v1498;
            v283 = v1497;
            v284 = v1496;
            v285 = v1495;
            v286 = v1494;
            v1767 = v1708;
            v1768 = v1496;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v1197 = 0;
            v1198 = v1490;
            v1199 = v1491;
            v1200 = v1492;
            v1201 = v1493;
            v1202 = v286;
            v1203 = v285;
            v1204 = v284;
            v1205 = v283;
            v1206 = v282;
            v1207 = v281;
            v1208 = v280;
            v1209 = v1501;
            v1210 = v1502;
            v1211 = v1503;
            v1212 = v1504;
            v1213 = v1505;
            v1214 = v1506;
            v1215 = v1507;
            v1216 = v1508;
            v1217 = v1509;
            v1218 = v1510;
            v1219 = v1511;
            v1220 = v1512;
            v1221 = v1513;
            v1222 = v1514;
            v1223 = v1515;
            v1224 = v1516;
            v1225 = v1517;
            v1226 = v1518;
            v1227 = v1520;
            v287 = v1500;
            v288 = v1499;
            v289 = v1498;
            v290 = v1497;
            v291 = v1496;
            v292 = v1495;
            v293 = v1494;
            v1767 = v1709;
            v1768 = v1497;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v1166 = 0;
            v1167 = v1490;
            v1168 = v1491;
            v1169 = v1492;
            v1170 = v1493;
            v1171 = v293;
            v1172 = v292;
            v1173 = v291;
            v1174 = v290;
            v1175 = v289;
            v1176 = v288;
            v1177 = v287;
            v1178 = v1501;
            v1179 = v1502;
            v1180 = v1503;
            v1181 = v1504;
            v1182 = v1505;
            v1183 = v1506;
            v1184 = v1507;
            v1185 = v1508;
            v1186 = v1509;
            v1187 = v1510;
            v1188 = v1511;
            v1189 = v1512;
            v1190 = v1513;
            v1191 = v1514;
            v1192 = v1515;
            v1193 = v1516;
            v1194 = v1517;
            v1195 = v1518;
            v1196 = v1520;
            v294 = v1500;
            v295 = v1499;
            v296 = v1498;
            v297 = v1497;
            v298 = v1496;
            v299 = v1495;
            v300 = v1494;
            v1767 = v1710;
            v1768 = v1498;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v1135 = 0;
            v1136 = v1490;
            v1137 = v1491;
            v1138 = v1492;
            v1139 = v1493;
            v1140 = v300;
            v1141 = v299;
            v1142 = v298;
            v1143 = v297;
            v1144 = v296;
            v1145 = v295;
            v1146 = v294;
            v1147 = v1501;
            v1148 = v1502;
            v1149 = v1503;
            v1150 = v1504;
            v1151 = v1505;
            v1152 = v1506;
            v1153 = v1507;
            v1154 = v1508;
            v1155 = v1509;
            v1156 = v1510;
            v1157 = v1511;
            v1158 = v1512;
            v1159 = v1513;
            v1160 = v1514;
            v1161 = v1515;
            v1162 = v1516;
            v1163 = v1517;
            v1164 = v1518;
            v1165 = v1520;
            v301 = v1500;
            v302 = v1499;
            v303 = v1498;
            v304 = v1497;
            v305 = v1496;
            v306 = v1495;
            v307 = v1494;
            v1767 = v1711;
            v1768 = v1499;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v1104 = 0;
            v1105 = v1490;
            v1106 = v1491;
            v1107 = v1492;
            v1108 = v1493;
            v1109 = v307;
            v1110 = v306;
            v1111 = v305;
            v1112 = v304;
            v1113 = v303;
            v1114 = v302;
            v1115 = v301;
            v1116 = v1501;
            v1117 = v1502;
            v1118 = v1503;
            v1119 = v1504;
            v1120 = v1505;
            v1121 = v1506;
            v1122 = v1507;
            v1123 = v1508;
            v1124 = v1509;
            v1125 = v1510;
            v1126 = v1511;
            v1127 = v1512;
            v1128 = v1513;
            v1129 = v1514;
            v1130 = v1515;
            v1131 = v1516;
            v1132 = v1517;
            v1133 = v1518;
            v1134 = v1520;
            v308 = v1500;
            v309 = v1499;
            v310 = v1498;
            v311 = v1497;
            v312 = v1496;
            v313 = v1495;
            v314 = v1494;
            v1767 = v1712;
            v1768 = v1500;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v1073 = 0;
            v1074 = v1490;
            v1075 = v1491;
            v1076 = v1492;
            v1077 = v1493;
            v1078 = v314;
            v1079 = v313;
            v1080 = v312;
            v1081 = v311;
            v1082 = v310;
            v1083 = v309;
            v1084 = v308;
            v1085 = v1501;
            v1086 = v1502;
            v1087 = v1503;
            v1088 = v1504;
            v1089 = v1505;
            v1090 = v1506;
            v1091 = v1507;
            v1092 = v1508;
            v1093 = v1509;
            v1094 = v1510;
            v1095 = v1511;
            v1096 = v1512;
            v1097 = v1513;
            v1098 = v1514;
            v1099 = v1515;
            v1100 = v1516;
            v1101 = v1517;
            v1102 = v1518;
            v1103 = v1520;
            v315 = v1500;
            v316 = v1499;
            v317 = v1498;
            v318 = v1497;
            v319 = v1496;
            v320 = v1495;
            v321 = v1494;
            v1767 = v1713;
            v1768 = v1501;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v1042 = 0;
            v1043 = v1490;
            v1044 = v1491;
            v1045 = v1492;
            v1046 = v1493;
            v1047 = v321;
            v1048 = v320;
            v1049 = v319;
            v1050 = v318;
            v1051 = v317;
            v1052 = v316;
            v1053 = v315;
            v1054 = v1501;
            v1055 = v1502;
            v1056 = v1503;
            v1057 = v1504;
            v1058 = v1505;
            v1059 = v1506;
            v1060 = v1507;
            v1061 = v1508;
            v1062 = v1509;
            v1063 = v1510;
            v1064 = v1511;
            v1065 = v1512;
            v1066 = v1513;
            v1067 = v1514;
            v1068 = v1515;
            v1069 = v1516;
            v1070 = v1517;
            v1071 = v1518;
            v1072 = v1520;
            v322 = v1500;
            v323 = v1499;
            v324 = v1498;
            v325 = v1497;
            v326 = v1496;
            v327 = v1495;
            v328 = v1494;
            v1767 = v1714;
            v1768 = v1502;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v1011 = 0;
            v1012 = v1490;
            v1013 = v1491;
            v1014 = v1492;
            v1015 = v1493;
            v1016 = v328;
            v1017 = v327;
            v1018 = v326;
            v1019 = v325;
            v1020 = v324;
            v1021 = v323;
            v1022 = v322;
            v1023 = v1501;
            v1024 = v1502;
            v1025 = v1503;
            v1026 = v1504;
            v1027 = v1505;
            v1028 = v1506;
            v1029 = v1507;
            v1030 = v1508;
            v1031 = v1509;
            v1032 = v1510;
            v1033 = v1511;
            v1034 = v1512;
            v1035 = v1513;
            v1036 = v1514;
            v1037 = v1515;
            v1038 = v1516;
            v1039 = v1517;
            v1040 = v1518;
            v1041 = v1520;
            v329 = v1500;
            v330 = v1499;
            v331 = v1498;
            v332 = v1497;
            v333 = v1496;
            v334 = v1495;
            v335 = v1494;
            v1767 = v1715;
            v1768 = v1503;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v980 = 0;
            v981 = v1490;
            v982 = v1491;
            v983 = v1492;
            v984 = v1493;
            v985 = v335;
            v986 = v334;
            v987 = v333;
            v988 = v332;
            v989 = v331;
            v990 = v330;
            v991 = v329;
            v992 = v1501;
            v993 = v1502;
            v994 = v1503;
            v995 = v1504;
            v996 = v1505;
            v997 = v1506;
            v998 = v1507;
            v999 = v1508;
            v1000 = v1509;
            v1001 = v1510;
            v1002 = v1511;
            v1003 = v1512;
            v1004 = v1513;
            v1005 = v1514;
            v1006 = v1515;
            v1007 = v1516;
            v1008 = v1517;
            v1009 = v1518;
            v1010 = v1520;
            v336 = v1500;
            v337 = v1499;
            v338 = v1498;
            v339 = v1497;
            v340 = v1496;
            v341 = v1495;
            v342 = v1494;
            v1767 = v1716;
            v1768 = v1504;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v949 = 0;
            v950 = v1490;
            v951 = v1491;
            v952 = v1492;
            v953 = v1493;
            v954 = v342;
            v955 = v341;
            v956 = v340;
            v957 = v339;
            v958 = v338;
            v959 = v337;
            v960 = v336;
            v961 = v1501;
            v962 = v1502;
            v963 = v1503;
            v964 = v1504;
            v965 = v1505;
            v966 = v1506;
            v967 = v1507;
            v968 = v1508;
            v969 = v1509;
            v970 = v1510;
            v971 = v1511;
            v972 = v1512;
            v973 = v1513;
            v974 = v1514;
            v975 = v1515;
            v976 = v1516;
            v977 = v1517;
            v978 = v1518;
            v979 = v1520;
            v343 = v1500;
            v344 = v1499;
            v345 = v1498;
            v346 = v1497;
            v347 = v1496;
            v348 = v1495;
            v349 = v1494;
            v1767 = v1717;
            v1768 = v1505;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v918 = 0;
            v919 = v1490;
            v920 = v1491;
            v921 = v1492;
            v922 = v1493;
            v923 = v349;
            v924 = v348;
            v925 = v347;
            v926 = v346;
            v927 = v345;
            v928 = v344;
            v929 = v343;
            v930 = v1501;
            v931 = v1502;
            v932 = v1503;
            v933 = v1504;
            v934 = v1505;
            v935 = v1506;
            v936 = v1507;
            v937 = v1508;
            v938 = v1509;
            v939 = v1510;
            v940 = v1511;
            v941 = v1512;
            v942 = v1513;
            v943 = v1514;
            v944 = v1515;
            v945 = v1516;
            v946 = v1517;
            v947 = v1518;
            v948 = v1520;
            v350 = v1500;
            v351 = v1499;
            v352 = v1498;
            v353 = v1497;
            v354 = v1496;
            v355 = v1495;
            v356 = v1494;
            v1767 = v1718;
            v1768 = v1506;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v887 = 0;
            v888 = v1490;
            v889 = v1491;
            v890 = v1492;
            v891 = v1493;
            v892 = v356;
            v893 = v355;
            v894 = v354;
            v895 = v353;
            v896 = v352;
            v897 = v351;
            v898 = v350;
            v899 = v1501;
            v900 = v1502;
            v901 = v1503;
            v902 = v1504;
            v903 = v1505;
            v904 = v1506;
            v905 = v1507;
            v906 = v1508;
            v907 = v1509;
            v908 = v1510;
            v909 = v1511;
            v910 = v1512;
            v911 = v1513;
            v912 = v1514;
            v913 = v1515;
            v914 = v1516;
            v915 = v1517;
            v916 = v1518;
            v917 = v1520;
            v357 = v1500;
            v358 = v1499;
            v359 = v1498;
            v360 = v1497;
            v361 = v1496;
            v362 = v1495;
            v363 = v1494;
            v1767 = v1719;
            v1768 = v1507;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v856 = 0;
            v857 = v1490;
            v858 = v1491;
            v859 = v1492;
            v860 = v1493;
            v861 = v363;
            v862 = v362;
            v863 = v361;
            v864 = v360;
            v865 = v359;
            v866 = v358;
            v867 = v357;
            v868 = v1501;
            v869 = v1502;
            v870 = v1503;
            v871 = v1504;
            v872 = v1505;
            v873 = v1506;
            v874 = v1507;
            v875 = v1508;
            v876 = v1509;
            v877 = v1510;
            v878 = v1511;
            v879 = v1512;
            v880 = v1513;
            v881 = v1514;
            v882 = v1515;
            v883 = v1516;
            v884 = v1517;
            v885 = v1518;
            v886 = v1520;
            v364 = v1500;
            v365 = v1499;
            v366 = v1498;
            v367 = v1497;
            v368 = v1496;
            v369 = v1495;
            v370 = v1494;
            v1767 = v1720;
            v1768 = v1508;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v825 = 0;
            v826 = v1490;
            v827 = v1491;
            v828 = v1492;
            v829 = v1493;
            v830 = v370;
            v831 = v369;
            v832 = v368;
            v833 = v367;
            v834 = v366;
            v835 = v365;
            v836 = v364;
            v837 = v1501;
            v838 = v1502;
            v839 = v1503;
            v840 = v1504;
            v841 = v1505;
            v842 = v1506;
            v843 = v1507;
            v844 = v1508;
            v845 = v1509;
            v846 = v1510;
            v847 = v1511;
            v848 = v1512;
            v849 = v1513;
            v850 = v1514;
            v851 = v1515;
            v852 = v1516;
            v853 = v1517;
            v854 = v1518;
            v855 = v1520;
            v371 = v1500;
            v372 = v1499;
            v373 = v1498;
            v374 = v1497;
            v375 = v1496;
            v376 = v1495;
            v377 = v1494;
            v1767 = v1721;
            v1768 = v1509;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v794 = 0;
            v795 = v1490;
            v796 = v1491;
            v797 = v1492;
            v798 = v1493;
            v799 = v377;
            v800 = v376;
            v801 = v375;
            v802 = v374;
            v803 = v373;
            v804 = v372;
            v805 = v371;
            v806 = v1501;
            v807 = v1502;
            v808 = v1503;
            v809 = v1504;
            v810 = v1505;
            v811 = v1506;
            v812 = v1507;
            v813 = v1508;
            v814 = v1509;
            v815 = v1510;
            v816 = v1511;
            v817 = v1512;
            v818 = v1513;
            v819 = v1514;
            v820 = v1515;
            v821 = v1516;
            v822 = v1517;
            v823 = v1518;
            v824 = v1520;
            v378 = v1500;
            v379 = v1499;
            v380 = v1498;
            v381 = v1497;
            v382 = v1496;
            v383 = v1495;
            v384 = v1494;
            v1767 = v1722;
            v1768 = v1510;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v763 = 0;
            v764 = v1490;
            v765 = v1491;
            v766 = v1492;
            v767 = v1493;
            v768 = v384;
            v769 = v383;
            v770 = v382;
            v771 = v381;
            v772 = v380;
            v773 = v379;
            v774 = v378;
            v775 = v1501;
            v776 = v1502;
            v777 = v1503;
            v778 = v1504;
            v779 = v1505;
            v780 = v1506;
            v781 = v1507;
            v782 = v1508;
            v783 = v1509;
            v784 = v1510;
            v785 = v1511;
            v786 = v1512;
            v787 = v1513;
            v788 = v1514;
            v789 = v1515;
            v790 = v1516;
            v791 = v1517;
            v792 = v1518;
            v793 = v1520;
            v385 = v1500;
            v386 = v1499;
            v387 = v1498;
            v388 = v1497;
            v389 = v1496;
            v390 = v1495;
            v391 = v1494;
            v1767 = v1723;
            v1768 = v1511;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v732 = 0;
            v733 = v1490;
            v734 = v1491;
            v735 = v1492;
            v736 = v1493;
            v737 = v391;
            v738 = v390;
            v739 = v389;
            v740 = v388;
            v741 = v387;
            v742 = v386;
            v743 = v385;
            v744 = v1501;
            v745 = v1502;
            v746 = v1503;
            v747 = v1504;
            v748 = v1505;
            v749 = v1506;
            v750 = v1507;
            v751 = v1508;
            v752 = v1509;
            v753 = v1510;
            v754 = v1511;
            v755 = v1512;
            v756 = v1513;
            v757 = v1514;
            v758 = v1515;
            v759 = v1516;
            v760 = v1517;
            v761 = v1518;
            v762 = v1520;
            v392 = v1500;
            v393 = v1499;
            v394 = v1498;
            v395 = v1497;
            v396 = v1496;
            v397 = v1495;
            v398 = v1494;
            v1767 = v1724;
            v1768 = v1512;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v701 = 0;
            v702 = v1490;
            v703 = v1491;
            v704 = v1492;
            v705 = v1493;
            v706 = v398;
            v707 = v397;
            v708 = v396;
            v709 = v395;
            v710 = v394;
            v711 = v393;
            v712 = v392;
            v713 = v1501;
            v714 = v1502;
            v715 = v1503;
            v716 = v1504;
            v717 = v1505;
            v718 = v1506;
            v719 = v1507;
            v720 = v1508;
            v721 = v1509;
            v722 = v1510;
            v723 = v1511;
            v724 = v1512;
            v725 = v1513;
            v726 = v1514;
            v727 = v1515;
            v728 = v1516;
            v729 = v1517;
            v730 = v1518;
            v731 = v1520;
            v399 = v1500;
            v400 = v1499;
            v401 = v1498;
            v402 = v1497;
            v403 = v1496;
            v404 = v1495;
            v405 = v1494;
            v1767 = v1725;
            v1768 = v1513;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v670 = 0;
            v671 = v1490;
            v672 = v1491;
            v673 = v1492;
            v674 = v1493;
            v675 = v405;
            v676 = v404;
            v677 = v403;
            v678 = v402;
            v679 = v401;
            v680 = v400;
            v681 = v399;
            v682 = v1501;
            v683 = v1502;
            v684 = v1503;
            v685 = v1504;
            v686 = v1505;
            v687 = v1506;
            v688 = v1507;
            v689 = v1508;
            v690 = v1509;
            v691 = v1510;
            v692 = v1511;
            v693 = v1512;
            v694 = v1513;
            v695 = v1514;
            v696 = v1515;
            v697 = v1516;
            v698 = v1517;
            v699 = v1518;
            v700 = v1520;
            v406 = v1500;
            v407 = v1499;
            v408 = v1498;
            v409 = v1497;
            v410 = v1496;
            v411 = v1495;
            v412 = v1494;
            v1767 = v1726;
            v1768 = v1514;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v639 = 0;
            v640 = v1490;
            v641 = v1491;
            v642 = v1492;
            v643 = v1493;
            v644 = v412;
            v645 = v411;
            v646 = v410;
            v647 = v409;
            v648 = v408;
            v649 = v407;
            v650 = v406;
            v651 = v1501;
            v652 = v1502;
            v653 = v1503;
            v654 = v1504;
            v655 = v1505;
            v656 = v1506;
            v657 = v1507;
            v658 = v1508;
            v659 = v1509;
            v660 = v1510;
            v661 = v1511;
            v662 = v1512;
            v663 = v1513;
            v664 = v1514;
            v665 = v1515;
            v666 = v1516;
            v667 = v1517;
            v668 = v1518;
            v669 = v1520;
            v413 = v1500;
            v414 = v1499;
            v415 = v1498;
            v416 = v1497;
            v417 = v1496;
            v418 = v1495;
            v419 = v1494;
            v1767 = v1727;
            v1768 = v1515;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v608 = 0;
            v609 = v1490;
            v610 = v1491;
            v611 = v1492;
            v612 = v1493;
            v613 = v419;
            v614 = v418;
            v615 = v417;
            v616 = v416;
            v617 = v415;
            v618 = v414;
            v619 = v413;
            v620 = v1501;
            v621 = v1502;
            v622 = v1503;
            v623 = v1504;
            v624 = v1505;
            v625 = v1506;
            v626 = v1507;
            v627 = v1508;
            v628 = v1509;
            v629 = v1510;
            v630 = v1511;
            v631 = v1512;
            v632 = v1513;
            v633 = v1514;
            v634 = v1515;
            v635 = v1516;
            v636 = v1517;
            v637 = v1518;
            v638 = v1520;
            v420 = v1500;
            v421 = v1499;
            v422 = v1498;
            v423 = v1497;
            v424 = v1496;
            v425 = v1495;
            v426 = v1494;
            v1767 = v1728;
            v1768 = v1516;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v577 = 0;
            v578 = v1490;
            v579 = v1491;
            v580 = v1492;
            v581 = v1493;
            v582 = v426;
            v583 = v425;
            v584 = v424;
            v585 = v423;
            v586 = v422;
            v587 = v421;
            v588 = v420;
            v589 = v1501;
            v590 = v1502;
            v591 = v1503;
            v592 = v1504;
            v593 = v1505;
            v594 = v1506;
            v595 = v1507;
            v596 = v1508;
            v597 = v1509;
            v598 = v1510;
            v599 = v1511;
            v600 = v1512;
            v601 = v1513;
            v602 = v1514;
            v603 = v1515;
            v604 = v1516;
            v605 = v1517;
            v606 = v1518;
            v607 = v1520;
            v427 = v1500;
            v428 = v1499;
            v429 = v1498;
            v430 = v1497;
            v431 = v1496;
            v432 = v1495;
            v433 = v1494;
            v1767 = v1729;
            v1768 = v1517;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v546 = 0;
            v547 = v1490;
            v548 = v1491;
            v549 = v1492;
            v550 = v1493;
            v551 = v433;
            v552 = v432;
            v553 = v431;
            v554 = v430;
            v555 = v429;
            v556 = v428;
            v557 = v427;
            v558 = v1501;
            v559 = v1502;
            v560 = v1503;
            v561 = v1504;
            v562 = v1505;
            v563 = v1506;
            v564 = v1507;
            v565 = v1508;
            v566 = v1509;
            v567 = v1510;
            v568 = v1511;
            v569 = v1512;
            v570 = v1513;
            v571 = v1514;
            v572 = v1515;
            v573 = v1516;
            v574 = v1517;
            v575 = v1518;
            v576 = v1520;
            v434 = v1500;
            v435 = v1499;
            v436 = v1498;
            v437 = v1497;
            v438 = v1496;
            v439 = v1495;
            v440 = v1494;
            v1767 = v1730;
            v1768 = v1518;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v515 = 0;
            v516 = v1490;
            v517 = v1491;
            v518 = v1492;
            v519 = v1493;
            v520 = v440;
            v521 = v439;
            v522 = v438;
            v523 = v437;
            v524 = v436;
            v525 = v435;
            v526 = v434;
            v527 = v1501;
            v528 = v1502;
            v529 = v1503;
            v530 = v1504;
            v531 = v1505;
            v532 = v1506;
            v533 = v1507;
            v534 = v1508;
            v535 = v1509;
            v536 = v1510;
            v537 = v1511;
            v538 = v1512;
            v539 = v1513;
            v540 = v1514;
            v541 = v1515;
            v542 = v1516;
            v543 = v1517;
            v544 = v1518;
            v545 = v1520;
            v441 = v1500;
            v442 = v1499;
            v443 = v1498;
            v444 = v1497;
            v445 = v1496;
            v446 = v1495;
            v447 = v1494;
            v1767 = v1731;
            v1768 = v1520;
            sub_1B03949FC(&v1767, &v1771, &v1770, &v1769);
            v484 = 0;
            v485 = v1490;
            v486 = v1491;
            v487 = v1492;
            v488 = v1493;
            v489 = v447;
            v490 = v446;
            v491 = v445;
            v492 = v444;
            v493 = v443;
            v494 = v442;
            v495 = v441;
            v496 = v1501;
            v497 = v1502;
            v498 = v1503;
            v499 = v1504;
            v500 = v1505;
            v501 = v1506;
            v502 = v1507;
            v503 = v1508;
            v504 = v1509;
            v505 = v1510;
            v506 = v1511;
            v507 = v1512;
            v508 = v1513;
            v509 = v1514;
            v510 = v1515;
            v511 = v1516;
            v512 = v1517;
            v513 = v1518;
            v514 = v1520;
            _os_log_impl(&dword_1B0389000, v1523, v1524, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Completing user-initiated download request %{public}u for UID %u, QoS '%{public}s' (%{iec-bytes}ld).", v1417, 0x4Bu);
            sub_1B03998A8(v1418);
            sub_1B03998A8(v1419);
            sub_1B0E45D58();

            v1415 = v484;
          }
        }

        else
        {
          v244 = v1525;

          v1415 = v244;
        }

        v454 = v1415;
        MEMORY[0x1E69E5920](v1523);
        (*(v1734 + 8))(v1737, v1733);
        v453 = v1776;
        v452 = v1776[8];
        MEMORY[0x1E69E5928](v1776[8]);
        sub_1B03B2000(v1622, v1621);
        v451 = sub_1B0E42F18();
        [v452 finishWithResult_];
        MEMORY[0x1E69E5920](v451);
        sub_1B0391D50(v1622, v1621);
        MEMORY[0x1E69E5920](v452);
        sub_1B09907DC(v453);
      }

      sub_1B039E440(v1777);

      sub_1B0391D50(v1622, v1621);
      sub_1B074B764(v1757);
      v450 = 1;
    }
  }

  return v450 & 1;
}

uint64_t sub_1B097D874(uint64_t a1)
{
  v1761 = MEMORY[0x1EEE9AC00](a1);
  v1762 = v2;
  v1746 = v3;
  v1747 = v4;
  v1764 = v5;
  v1748 = v6;
  v1749 = v7;
  v1642 = v1;
  v1643 = sub_1B074E050;
  v1644 = sub_1B03F7AE0;
  v1645 = sub_1B0394C30;
  v1646 = sub_1B0394C24;
  v1647 = sub_1B074DFFC;
  v1648 = sub_1B039BA88;
  v1649 = sub_1B039BB94;
  v1650 = sub_1B0394C24;
  v1651 = sub_1B039BBA0;
  v1652 = sub_1B039BC08;
  v1653 = 0x786F626C69616DLL;
  v1654 = sub_1B06BA324;
  v1655 = sub_1B074E0E4;
  v1656 = sub_1B039BCF8;
  v1657 = sub_1B0991554;
  v1658 = sub_1B03B0DF8;
  v1659 = sub_1B07AB020;
  v1660 = sub_1B039BC08;
  v1661 = sub_1B0398F5C;
  v1662 = sub_1B0398F5C;
  v1663 = sub_1B0399178;
  v1664 = sub_1B0398F5C;
  v1665 = sub_1B0398F5C;
  v1666 = sub_1B039BA94;
  v1667 = sub_1B0398F5C;
  v1668 = sub_1B0398F5C;
  v1669 = sub_1B0399178;
  v1670 = sub_1B0398F5C;
  v1671 = sub_1B0398F5C;
  v1672 = sub_1B03991EC;
  v1673 = sub_1B0398F5C;
  v1674 = sub_1B0398F5C;
  v1675 = sub_1B03993BC;
  v1676 = sub_1B0398F5C;
  v1677 = sub_1B0398F5C;
  v1678 = sub_1B039BCEC;
  v1679 = sub_1B0398F5C;
  v1680 = sub_1B0398F5C;
  v1681 = sub_1B0399260;
  v1682 = sub_1B0398F5C;
  v1683 = sub_1B0398F5C;
  v1684 = sub_1B03991EC;
  v1685 = sub_1B074E050;
  v1686 = sub_1B09907C8;
  v1687 = sub_1B03F7AE0;
  v1688 = sub_1B0990E1C;
  v1689 = sub_1B099154C;
  v1690 = sub_1B0394C24;
  v1691 = sub_1B074DFFC;
  v1692 = sub_1B039BA88;
  v1693 = sub_1B0394C24;
  v1694 = sub_1B039BBA0;
  v1695 = sub_1B039BC08;
  v1696 = sub_1B06BA324;
  v1697 = sub_1B074E0E4;
  v1698 = sub_1B039BCF8;
  v1699 = sub_1B09907D0;
  v1700 = sub_1B039BC08;
  v1701 = sub_1B07AB020;
  v1702 = sub_1B039BC08;
  v1703 = sub_1B07AD0A4;
  v1704 = sub_1B039BCF8;
  v1705 = sub_1B0990FCC;
  v1706 = sub_1B039BCF8;
  v1707 = sub_1B0398F5C;
  v1708 = sub_1B0398F5C;
  v1709 = sub_1B0399178;
  v1710 = sub_1B0398F5C;
  v1711 = sub_1B0398F5C;
  v1712 = sub_1B039BA94;
  v1713 = sub_1B0398F5C;
  v1714 = sub_1B0398F5C;
  v1715 = sub_1B0399178;
  v1716 = sub_1B0398F5C;
  v1717 = sub_1B0398F5C;
  v1718 = sub_1B03991EC;
  v1719 = sub_1B0398F5C;
  v1720 = sub_1B0398F5C;
  v1721 = sub_1B03993BC;
  v1722 = sub_1B0398F5C;
  v1723 = sub_1B0398F5C;
  v1724 = sub_1B039BCEC;
  v1725 = sub_1B0398F5C;
  v1726 = sub_1B0398F5C;
  v1727 = sub_1B03991EC;
  v1728 = sub_1B0398F5C;
  v1729 = sub_1B0398F5C;
  v1730 = sub_1B03991EC;
  v1731 = sub_1B0398F5C;
  v1732 = sub_1B0398F5C;
  v1733 = sub_1B039BCEC;
  v1734 = sub_1B0398F5C;
  v1735 = sub_1B0398F5C;
  v1736 = sub_1B039BCEC;
  v1797 = 0;
  v1795 = 0;
  v1796 = 0;
  v1794 = 0;
  v1791 = 0;
  v1792 = 0;
  v1793 = 0;
  v1790 = 0;
  v1789 = 0;
  v1788 = 0;
  v1786 = 0;
  v1785[0] = 0;
  v1785[1] = 0;
  v1737 = 0;
  v1768 = 0;
  v1766 = 0;
  v1763 = 0;
  v1738 = sub_1B0E439A8();
  v1739 = *(v1738 - 8);
  v1740 = v1738 - 8;
  v1741 = (*(v1739 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](0);
  v1742 = &v454[-v1741];
  v1743 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v1744 = &v454[-v1743];
  v1745 = (*(*(_s6LoggerVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1763);
  v1759 = &v454[-v1745];
  v1750 = _s6LoggerVMa_1();
  v1756 = *(*(v1750 - 8) + 64);
  v1751 = (v1756 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v1761);
  v1752 = &v454[-v1751];
  v1753 = (v1756 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v1754 = &v454[-v1753];
  v1755 = (v1756 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v1757 = &v454[-v1755];
  v1758 = (v1756 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v1760 = &v454[-v1758];
  v1797 = &v454[-v1758];
  v1795 = v13;
  v1796 = v14;
  v1794 = v15;
  v1791 = v16;
  v1792 = v17;
  v1793 = v18;
  v1790 = v19;
  v1789 = v1;
  sub_1B0394784(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v20);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07B91DC(v1759, v1761, v1762, v1760);
  v1788 = sub_1B0E46A48();
  sub_1B07F200C(v1764);
  if (v1764 > 1)
  {
    v1641 = v1764;
    v1640 = v1764;
    v1766 = v1764;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v1639 = &v1765;
    v1765 = v1640;
    v1638 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    sub_1B07AFA50();
    sub_1B0E452D8();
  }

  else
  {
    sub_1B07F2124(v1764);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v1748)
  {
    v1637 = v1748;
    v1636 = v1748;
    v1768 = v1748;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v1635 = &v1767;
    v1767 = v1636;
    v1634 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    sub_1B07AFA50();
    sub_1B0E452D8();
  }

  v1630 = v1788;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v1629 = &v1787;
  swift_beginAccess();
  v1631 = sub_1B0985850(v1761, v1762, v1746, v1630);
  swift_endAccess();

  v1786 = v1631;
  v1785[2] = v1631;
  v1632 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
  v1633 = sub_1B0990A50();
  if (sub_1B0E45748())
  {

    sub_1B039E440(&v1788);
    sub_1B074B764(v1760);
    v455 = 0;
  }

  else
  {
    if (sub_1B0E452A8() == 1)
    {
      v1540 = v1737;
    }

    else
    {
      (*(v1739 + 16))(v1744, v1760, v1738);
      sub_1B074B69C(v1760, v1757);
      sub_1B074B69C(v1757, v1754);
      sub_1B074E41C(v1757, v1752);
      v21 = &v1754[*(v1750 + 20)];
      v1575 = *v21;
      v1576 = *(v21 + 1);
      v1577 = *(v21 + 1);
      v1578 = *(v21 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v1754);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1574 = 36;
      v1596 = 7;
      v22 = swift_allocObject();
      v23 = v1576;
      v24 = v1577;
      v25 = v1578;
      v1581 = v22;
      *(v22 + 16) = v1575;
      *(v22 + 20) = v23;
      *(v22 + 24) = v24;
      *(v22 + 32) = v25;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v26 = swift_allocObject();
      v27 = v1576;
      v28 = v1577;
      v29 = v1578;
      v1573 = v26;
      *(v26 + 16) = v1575;
      *(v26 + 20) = v27;
      *(v26 + 24) = v28;
      *(v26 + 32) = v29;

      v1595 = 32;
      v30 = swift_allocObject();
      v31 = v1573;
      v1585 = v30;
      *(v30 + 16) = v1643;
      *(v30 + 24) = v31;
      sub_1B0394868();
      sub_1B0394868();

      v32 = swift_allocObject();
      v33 = v1576;
      v34 = v1577;
      v35 = v1578;
      v36 = v32;
      v37 = v1752;
      v1588 = v36;
      *(v36 + 16) = v1575;
      *(v36 + 20) = v33;
      *(v36 + 24) = v34;
      *(v36 + 32) = v35;
      sub_1B074B764(v37);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1599 = 24;
      v1591 = swift_allocObject();
      *(v1591 + 16) = v1631;
      v1579 = swift_allocObject();
      *(v1579 + 16) = v1746;

      v38 = swift_allocObject();
      v39 = v1579;
      v1597 = v38;
      *(v38 + 16) = v1644;
      *(v38 + 24) = v39;

      v1627 = sub_1B0E43988();
      v1628 = sub_1B0E45908();
      v1593 = 17;
      v1600 = swift_allocObject();
      v1583 = 16;
      *(v1600 + 16) = 16;
      v1601 = swift_allocObject();
      v1594 = 4;
      *(v1601 + 16) = 4;
      v40 = swift_allocObject();
      v1580 = v40;
      *(v40 + 16) = v1645;
      *(v40 + 24) = 0;
      v41 = swift_allocObject();
      v42 = v1580;
      v1602 = v41;
      *(v41 + 16) = v1646;
      *(v41 + 24) = v42;
      v1603 = swift_allocObject();
      *(v1603 + 16) = 0;
      v1604 = swift_allocObject();
      *(v1604 + 16) = 1;
      v43 = swift_allocObject();
      v44 = v1581;
      v1582 = v43;
      *(v43 + 16) = v1647;
      *(v43 + 24) = v44;
      v45 = swift_allocObject();
      v46 = v1582;
      v1605 = v45;
      *(v45 + 16) = v1648;
      *(v45 + 24) = v46;
      v1606 = swift_allocObject();
      *(v1606 + 16) = v1583;
      v1607 = swift_allocObject();
      *(v1607 + 16) = v1594;
      v47 = swift_allocObject();
      v1584 = v47;
      *(v47 + 16) = v1649;
      *(v47 + 24) = 0;
      v48 = swift_allocObject();
      v49 = v1584;
      v1608 = v48;
      *(v48 + 16) = v1650;
      *(v48 + 24) = v49;
      v1609 = swift_allocObject();
      *(v1609 + 16) = 0;
      v1610 = swift_allocObject();
      *(v1610 + 16) = v1594;
      v50 = swift_allocObject();
      v51 = v1585;
      v1586 = v50;
      *(v50 + 16) = v1651;
      *(v50 + 24) = v51;
      v52 = swift_allocObject();
      v53 = v1586;
      v1611 = v52;
      *(v52 + 16) = v1652;
      *(v52 + 24) = v53;
      v1612 = swift_allocObject();
      *(v1612 + 16) = 112;
      v1613 = swift_allocObject();
      v1590 = 8;
      *(v1613 + 16) = 8;
      v1587 = swift_allocObject();
      *(v1587 + 16) = v1653;
      v54 = swift_allocObject();
      v55 = v1587;
      v1614 = v54;
      *(v54 + 16) = v1654;
      *(v54 + 24) = v55;
      v1615 = swift_allocObject();
      *(v1615 + 16) = 37;
      v1616 = swift_allocObject();
      *(v1616 + 16) = v1590;
      v56 = swift_allocObject();
      v57 = v1588;
      v1589 = v56;
      *(v56 + 16) = v1655;
      *(v56 + 24) = v57;
      v58 = swift_allocObject();
      v59 = v1589;
      v1617 = v58;
      *(v58 + 16) = v1656;
      *(v58 + 24) = v59;
      v1618 = swift_allocObject();
      *(v1618 + 16) = 0;
      v1619 = swift_allocObject();
      *(v1619 + 16) = v1590;
      v60 = swift_allocObject();
      v61 = v1591;
      v1592 = v60;
      *(v60 + 16) = v1657;
      *(v60 + 24) = v61;
      v62 = swift_allocObject();
      v63 = v1592;
      v1620 = v62;
      *(v62 + 16) = v1658;
      *(v62 + 24) = v63;
      v1621 = swift_allocObject();
      *(v1621 + 16) = 0;
      v1622 = swift_allocObject();
      *(v1622 + 16) = v1594;
      v64 = swift_allocObject();
      v65 = v1597;
      v1598 = v64;
      *(v64 + 16) = v1659;
      *(v64 + 24) = v65;
      v66 = swift_allocObject();
      v67 = v1598;
      v1624 = v66;
      *(v66 + 16) = v1660;
      *(v66 + 24) = v67;
      v1626 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v1623 = sub_1B0E46A48();
      v1625 = v68;

      v69 = v1600;
      v70 = v1625;
      *v1625 = v1661;
      v70[1] = v69;

      v71 = v1601;
      v72 = v1625;
      v1625[2] = v1662;
      v72[3] = v71;

      v73 = v1602;
      v74 = v1625;
      v1625[4] = v1663;
      v74[5] = v73;

      v75 = v1603;
      v76 = v1625;
      v1625[6] = v1664;
      v76[7] = v75;

      v77 = v1604;
      v78 = v1625;
      v1625[8] = v1665;
      v78[9] = v77;

      v79 = v1605;
      v80 = v1625;
      v1625[10] = v1666;
      v80[11] = v79;

      v81 = v1606;
      v82 = v1625;
      v1625[12] = v1667;
      v82[13] = v81;

      v83 = v1607;
      v84 = v1625;
      v1625[14] = v1668;
      v84[15] = v83;

      v85 = v1608;
      v86 = v1625;
      v1625[16] = v1669;
      v86[17] = v85;

      v87 = v1609;
      v88 = v1625;
      v1625[18] = v1670;
      v88[19] = v87;

      v89 = v1610;
      v90 = v1625;
      v1625[20] = v1671;
      v90[21] = v89;

      v91 = v1611;
      v92 = v1625;
      v1625[22] = v1672;
      v92[23] = v91;

      v93 = v1612;
      v94 = v1625;
      v1625[24] = v1673;
      v94[25] = v93;

      v95 = v1613;
      v96 = v1625;
      v1625[26] = v1674;
      v96[27] = v95;

      v97 = v1614;
      v98 = v1625;
      v1625[28] = v1675;
      v98[29] = v97;

      v99 = v1615;
      v100 = v1625;
      v1625[30] = v1676;
      v100[31] = v99;

      v101 = v1616;
      v102 = v1625;
      v1625[32] = v1677;
      v102[33] = v101;

      v103 = v1617;
      v104 = v1625;
      v1625[34] = v1678;
      v104[35] = v103;

      v105 = v1618;
      v106 = v1625;
      v1625[36] = v1679;
      v106[37] = v105;

      v107 = v1619;
      v108 = v1625;
      v1625[38] = v1680;
      v108[39] = v107;

      v109 = v1620;
      v110 = v1625;
      v1625[40] = v1681;
      v110[41] = v109;

      v111 = v1621;
      v112 = v1625;
      v1625[42] = v1682;
      v112[43] = v111;

      v113 = v1622;
      v114 = v1625;
      v1625[44] = v1683;
      v114[45] = v113;

      v115 = v1624;
      v116 = v1625;
      v1625[46] = v1684;
      v116[47] = v115;
      sub_1B0394964();

      if (os_log_type_enabled(v1627, v1628))
      {
        v117 = v1737;
        v1566 = sub_1B0E45D78();
        v1565 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v1567 = sub_1B03949A8(0);
        v1568 = sub_1B03949A8(1);
        v1569 = &v1773;
        v1773 = v1566;
        v1570 = &v1772;
        v1772 = v1567;
        v1571 = &v1771;
        v1771 = v1568;
        sub_1B0394A48(3, &v1773);
        sub_1B0394A48(8, v1569);
        v1769 = v1661;
        v1770 = v1600;
        sub_1B03949FC(&v1769, v1569, v1570, v1571);
        v1572 = v117;
        if (v117)
        {

          __break(1u);
        }

        else
        {
          v1769 = v1662;
          v1770 = v1601;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1563 = 0;
          v1769 = v1663;
          v1770 = v1602;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1562 = 0;
          v1769 = v1664;
          v1770 = v1603;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1561 = 0;
          v1769 = v1665;
          v1770 = v1604;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1560 = 0;
          v1769 = v1666;
          v1770 = v1605;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1559 = 0;
          v1769 = v1667;
          v1770 = v1606;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1558 = 0;
          v1769 = v1668;
          v1770 = v1607;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1557 = 0;
          v1769 = v1669;
          v1770 = v1608;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1556 = 0;
          v1769 = v1670;
          v1770 = v1609;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1555 = 0;
          v1769 = v1671;
          v1770 = v1610;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1554 = 0;
          v1769 = v1672;
          v1770 = v1611;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1553 = 0;
          v1769 = v1673;
          v1770 = v1612;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1552 = 0;
          v1769 = v1674;
          v1770 = v1613;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1551 = 0;
          v1769 = v1675;
          v1770 = v1614;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1550 = 0;
          v1769 = v1676;
          v1770 = v1615;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1549 = 0;
          v1769 = v1677;
          v1770 = v1616;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1548 = 0;
          v1769 = v1678;
          v1770 = v1617;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1547 = 0;
          v1769 = v1679;
          v1770 = v1618;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1546 = 0;
          v1769 = v1680;
          v1770 = v1619;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1545 = 0;
          v1769 = v1681;
          v1770 = v1620;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1544 = 0;
          v1769 = v1682;
          v1770 = v1621;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1543 = 0;
          v1769 = v1683;
          v1770 = v1622;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1542 = 0;
          v1769 = v1684;
          v1770 = v1624;
          sub_1B03949FC(&v1769, &v1773, &v1772, &v1771);
          v1541 = 0;
          _os_log_impl(&dword_1B0389000, v1627, v1628, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Download did complete. Found %ld user-initiated MIME part download request(s) for UID %u.", v1566, 0x3Bu);
          sub_1B03998A8(v1567);
          sub_1B03998A8(v1568);
          sub_1B0E45D58();

          v1564 = v1541;
        }
      }

      else
      {
        v118 = v1737;

        v1564 = v118;
      }

      v1539 = v1564;
      MEMORY[0x1E69E5920](v1627);
      (*(v1739 + 8))(v1744, v1738);
      v1540 = v1539;
    }

    v1537 = v1540;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v1784[15] = v1631;
    sub_1B0E45798();
    for (i = v1537; ; i = v460)
    {
      v1533 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3310, qword_1B0EA1108);
      v1534 = &v1782;
      sub_1B0E46518();
      v1535 = v1783;
      v1536 = 120;
      memcpy(v1783, v1534, sizeof(v1783));
      memcpy(v1784, v1783, 0x78uLL);
      if (!v1784[3])
      {
        break;
      }

      v1469 = v1784;
      v1471 = __dst;
      v1472 = 120;
      memcpy(__dst, v1784, 0x78uLL);
      (*(v1739 + 16))(v1742, v1760, v1738);
      sub_1B074B69C(v1760, v1757);
      sub_1B074B69C(v1757, v1754);
      sub_1B074E41C(v1757, v1752);
      v119 = &v1754[*(v1750 + 20)];
      v1462 = *v119;
      v1463 = *(v119 + 1);
      v1464 = *(v119 + 1);
      v1465 = *(v119 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v1754);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1461 = 36;
      v1495 = 7;
      v120 = swift_allocObject();
      v121 = v1463;
      v122 = v1464;
      v123 = v1465;
      v1475 = v120;
      *(v120 + 16) = v1462;
      *(v120 + 20) = v121;
      *(v120 + 24) = v122;
      *(v120 + 32) = v123;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v124 = swift_allocObject();
      v125 = v1463;
      v126 = v1464;
      v127 = v1465;
      v1460 = v124;
      *(v124 + 16) = v1462;
      *(v124 + 20) = v125;
      *(v124 + 24) = v126;
      *(v124 + 32) = v127;

      v1494 = 32;
      v128 = swift_allocObject();
      v129 = v1460;
      v1479 = v128;
      *(v128 + 16) = v1685;
      *(v128 + 24) = v129;
      sub_1B0394868();
      sub_1B0394868();

      v130 = swift_allocObject();
      v131 = v1463;
      v132 = v1464;
      v133 = v1465;
      v134 = v130;
      v135 = v1752;
      v1482 = v134;
      *(v134 + 16) = v1462;
      *(v134 + 20) = v131;
      *(v134 + 24) = v132;
      *(v134 + 32) = v133;
      sub_1B074B764(v135);
      sub_1B0990C1C(v1469, &v1781);
      v1470 = 136;
      v1466 = swift_allocObject();
      memcpy((v1466 + 16), v1471, v1472);

      v136 = swift_allocObject();
      v137 = v1466;
      v1484 = v136;
      *(v136 + 16) = v1686;
      *(v136 + 24) = v137;

      v1467 = swift_allocObject();
      *(v1467 + 16) = v1746;

      v138 = swift_allocObject();
      v139 = v1467;
      v1487 = v138;
      *(v138 + 16) = v1687;
      *(v138 + 24) = v139;

      sub_1B0990C1C(v1469, &v1780);
      v1468 = swift_allocObject();
      memcpy((v1468 + 16), v1471, v1472);

      v140 = swift_allocObject();
      v141 = v1468;
      v1489 = v140;
      *(v140 + 16) = v1688;
      *(v140 + 24) = v141;

      sub_1B0990C1C(v1469, &v1779);
      v1473 = swift_allocObject();
      memcpy((v1473 + 16), v1471, v1472);

      v142 = swift_allocObject();
      v143 = v1473;
      v1496 = v142;
      *(v142 + 16) = v1689;
      *(v142 + 24) = v143;

      v1531 = sub_1B0E43988();
      v1532 = sub_1B0E45908();
      v1492 = 17;
      v1498 = swift_allocObject();
      v1477 = 16;
      *(v1498 + 16) = 16;
      v1499 = swift_allocObject();
      v1486 = 4;
      *(v1499 + 16) = 4;
      v144 = swift_allocObject();
      v1474 = v144;
      *(v144 + 16) = v1645;
      *(v144 + 24) = 0;
      v145 = swift_allocObject();
      v146 = v1474;
      v1500 = v145;
      *(v145 + 16) = v1690;
      *(v145 + 24) = v146;
      v1501 = swift_allocObject();
      *(v1501 + 16) = 0;
      v1502 = swift_allocObject();
      *(v1502 + 16) = 1;
      v147 = swift_allocObject();
      v148 = v1475;
      v1476 = v147;
      *(v147 + 16) = v1691;
      *(v147 + 24) = v148;
      v149 = swift_allocObject();
      v150 = v1476;
      v1503 = v149;
      *(v149 + 16) = v1692;
      *(v149 + 24) = v150;
      v1504 = swift_allocObject();
      *(v1504 + 16) = v1477;
      v1505 = swift_allocObject();
      *(v1505 + 16) = v1486;
      v151 = swift_allocObject();
      v1478 = v151;
      *(v151 + 16) = v1649;
      *(v151 + 24) = 0;
      v152 = swift_allocObject();
      v153 = v1478;
      v1506 = v152;
      *(v152 + 16) = v1693;
      *(v152 + 24) = v153;
      v1507 = swift_allocObject();
      *(v1507 + 16) = 0;
      v1508 = swift_allocObject();
      *(v1508 + 16) = v1486;
      v154 = swift_allocObject();
      v155 = v1479;
      v1480 = v154;
      *(v154 + 16) = v1694;
      *(v154 + 24) = v155;
      v156 = swift_allocObject();
      v157 = v1480;
      v1509 = v156;
      *(v156 + 16) = v1695;
      *(v156 + 24) = v157;
      v1510 = swift_allocObject();
      *(v1510 + 16) = 112;
      v1511 = swift_allocObject();
      v1493 = 8;
      *(v1511 + 16) = 8;
      v1481 = swift_allocObject();
      *(v1481 + 16) = v1653;
      v158 = swift_allocObject();
      v159 = v1481;
      v1512 = v158;
      *(v158 + 16) = v1696;
      *(v158 + 24) = v159;
      v1513 = swift_allocObject();
      *(v1513 + 16) = 37;
      v1514 = swift_allocObject();
      *(v1514 + 16) = v1493;
      v160 = swift_allocObject();
      v161 = v1482;
      v1483 = v160;
      *(v160 + 16) = v1697;
      *(v160 + 24) = v161;
      v162 = swift_allocObject();
      v163 = v1483;
      v1515 = v162;
      *(v162 + 16) = v1698;
      *(v162 + 24) = v163;
      v1516 = swift_allocObject();
      *(v1516 + 16) = 2;
      v1517 = swift_allocObject();
      *(v1517 + 16) = v1486;
      v164 = swift_allocObject();
      v165 = v1484;
      v1485 = v164;
      *(v164 + 16) = v1699;
      *(v164 + 24) = v165;
      v166 = swift_allocObject();
      v167 = v1485;
      v1518 = v166;
      *(v166 + 16) = v1700;
      *(v166 + 24) = v167;
      v1519 = swift_allocObject();
      *(v1519 + 16) = 0;
      v1520 = swift_allocObject();
      *(v1520 + 16) = v1486;
      v168 = swift_allocObject();
      v169 = v1487;
      v1488 = v168;
      *(v168 + 16) = v1701;
      *(v168 + 24) = v169;
      v170 = swift_allocObject();
      v171 = v1488;
      v1521 = v170;
      *(v170 + 16) = v1702;
      *(v170 + 24) = v171;
      v1522 = swift_allocObject();
      v1491 = 34;
      *(v1522 + 16) = 34;
      v1523 = swift_allocObject();
      *(v1523 + 16) = v1493;
      v172 = swift_allocObject();
      v173 = v1489;
      v1490 = v172;
      *(v172 + 16) = v1703;
      *(v172 + 24) = v173;
      v174 = swift_allocObject();
      v175 = v1490;
      v1524 = v174;
      *(v174 + 16) = v1704;
      *(v174 + 24) = v175;
      v1525 = swift_allocObject();
      *(v1525 + 16) = v1491;
      v1526 = swift_allocObject();
      *(v1526 + 16) = v1493;
      v176 = swift_allocObject();
      v177 = v1496;
      v1497 = v176;
      *(v176 + 16) = v1705;
      *(v176 + 24) = v177;
      v178 = swift_allocObject();
      v179 = v1497;
      v1528 = v178;
      *(v178 + 16) = v1706;
      *(v178 + 24) = v179;
      v1530 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v1527 = sub_1B0E46A48();
      v1529 = v180;

      v181 = v1498;
      v182 = v1529;
      *v1529 = v1707;
      v182[1] = v181;

      v183 = v1499;
      v184 = v1529;
      v1529[2] = v1708;
      v184[3] = v183;

      v185 = v1500;
      v186 = v1529;
      v1529[4] = v1709;
      v186[5] = v185;

      v187 = v1501;
      v188 = v1529;
      v1529[6] = v1710;
      v188[7] = v187;

      v189 = v1502;
      v190 = v1529;
      v1529[8] = v1711;
      v190[9] = v189;

      v191 = v1503;
      v192 = v1529;
      v1529[10] = v1712;
      v192[11] = v191;

      v193 = v1504;
      v194 = v1529;
      v1529[12] = v1713;
      v194[13] = v193;

      v195 = v1505;
      v196 = v1529;
      v1529[14] = v1714;
      v196[15] = v195;

      v197 = v1506;
      v198 = v1529;
      v1529[16] = v1715;
      v198[17] = v197;

      v199 = v1507;
      v200 = v1529;
      v1529[18] = v1716;
      v200[19] = v199;

      v201 = v1508;
      v202 = v1529;
      v1529[20] = v1717;
      v202[21] = v201;

      v203 = v1509;
      v204 = v1529;
      v1529[22] = v1718;
      v204[23] = v203;

      v205 = v1510;
      v206 = v1529;
      v1529[24] = v1719;
      v206[25] = v205;

      v207 = v1511;
      v208 = v1529;
      v1529[26] = v1720;
      v208[27] = v207;

      v209 = v1512;
      v210 = v1529;
      v1529[28] = v1721;
      v210[29] = v209;

      v211 = v1513;
      v212 = v1529;
      v1529[30] = v1722;
      v212[31] = v211;

      v213 = v1514;
      v214 = v1529;
      v1529[32] = v1723;
      v214[33] = v213;

      v215 = v1515;
      v216 = v1529;
      v1529[34] = v1724;
      v216[35] = v215;

      v217 = v1516;
      v218 = v1529;
      v1529[36] = v1725;
      v218[37] = v217;

      v219 = v1517;
      v220 = v1529;
      v1529[38] = v1726;
      v220[39] = v219;

      v221 = v1518;
      v222 = v1529;
      v1529[40] = v1727;
      v222[41] = v221;

      v223 = v1519;
      v224 = v1529;
      v1529[42] = v1728;
      v224[43] = v223;

      v225 = v1520;
      v226 = v1529;
      v1529[44] = v1729;
      v226[45] = v225;

      v227 = v1521;
      v228 = v1529;
      v1529[46] = v1730;
      v228[47] = v227;

      v229 = v1522;
      v230 = v1529;
      v1529[48] = v1731;
      v230[49] = v229;

      v231 = v1523;
      v232 = v1529;
      v1529[50] = v1732;
      v232[51] = v231;

      v233 = v1524;
      v234 = v1529;
      v1529[52] = v1733;
      v234[53] = v233;

      v235 = v1525;
      v236 = v1529;
      v1529[54] = v1734;
      v236[55] = v235;

      v237 = v1526;
      v238 = v1529;
      v1529[56] = v1735;
      v238[57] = v237;

      v239 = v1528;
      v240 = v1529;
      v1529[58] = v1736;
      v240[59] = v239;
      sub_1B0394964();

      if (os_log_type_enabled(v1531, v1532))
      {
        v241 = v1508;
        v242 = v1507;
        v243 = v1506;
        v244 = v1505;
        v245 = v1504;
        v246 = v1503;
        v247 = v1502;
        v248 = v1533;
        v1423 = sub_1B0E45D78();
        v1422 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v1424 = sub_1B03949A8(0);
        v1425 = sub_1B03949A8(3);
        v1426 = &v1778;
        v1778 = v1423;
        v1427 = &v1777;
        v1777 = v1424;
        v1428 = &v1776;
        v1776 = v1425;
        sub_1B0394A48(3, &v1778);
        sub_1B0394A48(10, v1426);
        v1774 = v1707;
        v1775 = v1498;
        sub_1B03949FC(&v1774, v1426, v1427, v1428);
        v1429 = v248;
        v1430 = v1498;
        v1431 = v1499;
        v1432 = v1500;
        v1433 = v1501;
        v1434 = v247;
        v1435 = v246;
        v1436 = v245;
        v1437 = v244;
        v1438 = v243;
        v1439 = v242;
        v1440 = v241;
        v1441 = v1509;
        v1442 = v1510;
        v1443 = v1511;
        v1444 = v1512;
        v1445 = v1513;
        v1446 = v1514;
        v1447 = v1515;
        v1448 = v1516;
        v1449 = v1517;
        v1450 = v1518;
        v1451 = v1519;
        v1452 = v1520;
        v1453 = v1521;
        v1454 = v1522;
        v1455 = v1523;
        v1456 = v1524;
        v1457 = v1525;
        v1458 = v1526;
        v1459 = v1528;
        if (v248)
        {
          v1392 = v1459;
          v1390 = v1431;
          v1389 = v1430;
          v1391 = v1431;
          v1393 = v1432;
          v1394 = v1433;
          v1395 = v1434;
          v1396 = v1435;
          v1397 = v1436;
          v1398 = v1437;
          v1399 = v1438;
          v1400 = v1439;
          v1401 = v1440;
          v1402 = v1441;
          v1403 = v1442;
          v1404 = v1443;
          v1405 = v1444;
          v1406 = v1445;
          v1407 = v1446;
          v1408 = v1447;
          v1409 = v1448;
          v1410 = v1449;
          v1411 = v1450;
          v1412 = v1451;
          v1413 = v1452;
          v1414 = v1453;
          v1415 = v1454;
          v1416 = v1455;
          v1417 = v1456;
          v1418 = v1457;
          v1419 = v1458;
          v1420 = v1459;
          v489 = v1459;
          v488 = v1458;
          v487 = v1457;
          v486 = v1456;
          v485 = v1455;
          v484 = v1454;
          v483 = v1453;
          v482 = v1452;
          v481 = v1451;
          v480 = v1450;
          v479 = v1449;
          v478 = v1448;
          v477 = v1447;
          v476 = v1446;
          v475 = v1445;
          v474 = v1444;
          v473 = v1443;
          v472 = v1442;
          v471 = v1441;
          v470 = v1440;
          v469 = v1439;
          v468 = v1438;
          v467 = v1437;
          v466 = v1436;
          v465 = v1435;
          v464 = v1434;
          v463 = v1433;
          v462 = v1432;
          v461 = v1431;

          __break(1u);
        }

        else
        {
          v250 = v1508;
          v251 = v1507;
          v252 = v1506;
          v253 = v1505;
          v254 = v1504;
          v255 = v1503;
          v256 = v1502;
          v1774 = v1708;
          v1775 = v1499;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v1358 = 0;
          v1359 = v1498;
          v1360 = v1499;
          v1361 = v1500;
          v1362 = v1501;
          v1363 = v256;
          v1364 = v255;
          v1365 = v254;
          v1366 = v253;
          v1367 = v252;
          v1368 = v251;
          v1369 = v250;
          v1370 = v1509;
          v1371 = v1510;
          v1372 = v1511;
          v1373 = v1512;
          v1374 = v1513;
          v1375 = v1514;
          v1376 = v1515;
          v1377 = v1516;
          v1378 = v1517;
          v1379 = v1518;
          v1380 = v1519;
          v1381 = v1520;
          v1382 = v1521;
          v1383 = v1522;
          v1384 = v1523;
          v1385 = v1524;
          v1386 = v1525;
          v1387 = v1526;
          v1388 = v1528;
          v257 = v1508;
          v258 = v1507;
          v259 = v1506;
          v260 = v1505;
          v261 = v1504;
          v262 = v1503;
          v263 = v1502;
          v1774 = v1709;
          v1775 = v1500;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v1327 = 0;
          v1328 = v1498;
          v1329 = v1499;
          v1330 = v1500;
          v1331 = v1501;
          v1332 = v263;
          v1333 = v262;
          v1334 = v261;
          v1335 = v260;
          v1336 = v259;
          v1337 = v258;
          v1338 = v257;
          v1339 = v1509;
          v1340 = v1510;
          v1341 = v1511;
          v1342 = v1512;
          v1343 = v1513;
          v1344 = v1514;
          v1345 = v1515;
          v1346 = v1516;
          v1347 = v1517;
          v1348 = v1518;
          v1349 = v1519;
          v1350 = v1520;
          v1351 = v1521;
          v1352 = v1522;
          v1353 = v1523;
          v1354 = v1524;
          v1355 = v1525;
          v1356 = v1526;
          v1357 = v1528;
          v264 = v1508;
          v265 = v1507;
          v266 = v1506;
          v267 = v1505;
          v268 = v1504;
          v269 = v1503;
          v270 = v1502;
          v1774 = v1710;
          v1775 = v1501;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v1296 = 0;
          v1297 = v1498;
          v1298 = v1499;
          v1299 = v1500;
          v1300 = v1501;
          v1301 = v270;
          v1302 = v269;
          v1303 = v268;
          v1304 = v267;
          v1305 = v266;
          v1306 = v265;
          v1307 = v264;
          v1308 = v1509;
          v1309 = v1510;
          v1310 = v1511;
          v1311 = v1512;
          v1312 = v1513;
          v1313 = v1514;
          v1314 = v1515;
          v1315 = v1516;
          v1316 = v1517;
          v1317 = v1518;
          v1318 = v1519;
          v1319 = v1520;
          v1320 = v1521;
          v1321 = v1522;
          v1322 = v1523;
          v1323 = v1524;
          v1324 = v1525;
          v1325 = v1526;
          v1326 = v1528;
          v271 = v1508;
          v272 = v1507;
          v273 = v1506;
          v274 = v1505;
          v275 = v1504;
          v276 = v1503;
          v277 = v1502;
          v1774 = v1711;
          v1775 = v1502;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v1265 = 0;
          v1266 = v1498;
          v1267 = v1499;
          v1268 = v1500;
          v1269 = v1501;
          v1270 = v277;
          v1271 = v276;
          v1272 = v275;
          v1273 = v274;
          v1274 = v273;
          v1275 = v272;
          v1276 = v271;
          v1277 = v1509;
          v1278 = v1510;
          v1279 = v1511;
          v1280 = v1512;
          v1281 = v1513;
          v1282 = v1514;
          v1283 = v1515;
          v1284 = v1516;
          v1285 = v1517;
          v1286 = v1518;
          v1287 = v1519;
          v1288 = v1520;
          v1289 = v1521;
          v1290 = v1522;
          v1291 = v1523;
          v1292 = v1524;
          v1293 = v1525;
          v1294 = v1526;
          v1295 = v1528;
          v278 = v1508;
          v279 = v1507;
          v280 = v1506;
          v281 = v1505;
          v282 = v1504;
          v283 = v1503;
          v284 = v1502;
          v1774 = v1712;
          v1775 = v1503;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v1234 = 0;
          v1235 = v1498;
          v1236 = v1499;
          v1237 = v1500;
          v1238 = v1501;
          v1239 = v284;
          v1240 = v283;
          v1241 = v282;
          v1242 = v281;
          v1243 = v280;
          v1244 = v279;
          v1245 = v278;
          v1246 = v1509;
          v1247 = v1510;
          v1248 = v1511;
          v1249 = v1512;
          v1250 = v1513;
          v1251 = v1514;
          v1252 = v1515;
          v1253 = v1516;
          v1254 = v1517;
          v1255 = v1518;
          v1256 = v1519;
          v1257 = v1520;
          v1258 = v1521;
          v1259 = v1522;
          v1260 = v1523;
          v1261 = v1524;
          v1262 = v1525;
          v1263 = v1526;
          v1264 = v1528;
          v285 = v1508;
          v286 = v1507;
          v287 = v1506;
          v288 = v1505;
          v289 = v1504;
          v290 = v1503;
          v291 = v1502;
          v1774 = v1713;
          v1775 = v1504;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v1203 = 0;
          v1204 = v1498;
          v1205 = v1499;
          v1206 = v1500;
          v1207 = v1501;
          v1208 = v291;
          v1209 = v290;
          v1210 = v289;
          v1211 = v288;
          v1212 = v287;
          v1213 = v286;
          v1214 = v285;
          v1215 = v1509;
          v1216 = v1510;
          v1217 = v1511;
          v1218 = v1512;
          v1219 = v1513;
          v1220 = v1514;
          v1221 = v1515;
          v1222 = v1516;
          v1223 = v1517;
          v1224 = v1518;
          v1225 = v1519;
          v1226 = v1520;
          v1227 = v1521;
          v1228 = v1522;
          v1229 = v1523;
          v1230 = v1524;
          v1231 = v1525;
          v1232 = v1526;
          v1233 = v1528;
          v292 = v1508;
          v293 = v1507;
          v294 = v1506;
          v295 = v1505;
          v296 = v1504;
          v297 = v1503;
          v298 = v1502;
          v1774 = v1714;
          v1775 = v1505;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v1172 = 0;
          v1173 = v1498;
          v1174 = v1499;
          v1175 = v1500;
          v1176 = v1501;
          v1177 = v298;
          v1178 = v297;
          v1179 = v296;
          v1180 = v295;
          v1181 = v294;
          v1182 = v293;
          v1183 = v292;
          v1184 = v1509;
          v1185 = v1510;
          v1186 = v1511;
          v1187 = v1512;
          v1188 = v1513;
          v1189 = v1514;
          v1190 = v1515;
          v1191 = v1516;
          v1192 = v1517;
          v1193 = v1518;
          v1194 = v1519;
          v1195 = v1520;
          v1196 = v1521;
          v1197 = v1522;
          v1198 = v1523;
          v1199 = v1524;
          v1200 = v1525;
          v1201 = v1526;
          v1202 = v1528;
          v299 = v1508;
          v300 = v1507;
          v301 = v1506;
          v302 = v1505;
          v303 = v1504;
          v304 = v1503;
          v305 = v1502;
          v1774 = v1715;
          v1775 = v1506;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v1141 = 0;
          v1142 = v1498;
          v1143 = v1499;
          v1144 = v1500;
          v1145 = v1501;
          v1146 = v305;
          v1147 = v304;
          v1148 = v303;
          v1149 = v302;
          v1150 = v301;
          v1151 = v300;
          v1152 = v299;
          v1153 = v1509;
          v1154 = v1510;
          v1155 = v1511;
          v1156 = v1512;
          v1157 = v1513;
          v1158 = v1514;
          v1159 = v1515;
          v1160 = v1516;
          v1161 = v1517;
          v1162 = v1518;
          v1163 = v1519;
          v1164 = v1520;
          v1165 = v1521;
          v1166 = v1522;
          v1167 = v1523;
          v1168 = v1524;
          v1169 = v1525;
          v1170 = v1526;
          v1171 = v1528;
          v306 = v1508;
          v307 = v1507;
          v308 = v1506;
          v309 = v1505;
          v310 = v1504;
          v311 = v1503;
          v312 = v1502;
          v1774 = v1716;
          v1775 = v1507;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v1110 = 0;
          v1111 = v1498;
          v1112 = v1499;
          v1113 = v1500;
          v1114 = v1501;
          v1115 = v312;
          v1116 = v311;
          v1117 = v310;
          v1118 = v309;
          v1119 = v308;
          v1120 = v307;
          v1121 = v306;
          v1122 = v1509;
          v1123 = v1510;
          v1124 = v1511;
          v1125 = v1512;
          v1126 = v1513;
          v1127 = v1514;
          v1128 = v1515;
          v1129 = v1516;
          v1130 = v1517;
          v1131 = v1518;
          v1132 = v1519;
          v1133 = v1520;
          v1134 = v1521;
          v1135 = v1522;
          v1136 = v1523;
          v1137 = v1524;
          v1138 = v1525;
          v1139 = v1526;
          v1140 = v1528;
          v313 = v1508;
          v314 = v1507;
          v315 = v1506;
          v316 = v1505;
          v317 = v1504;
          v318 = v1503;
          v319 = v1502;
          v1774 = v1717;
          v1775 = v1508;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v1079 = 0;
          v1080 = v1498;
          v1081 = v1499;
          v1082 = v1500;
          v1083 = v1501;
          v1084 = v319;
          v1085 = v318;
          v1086 = v317;
          v1087 = v316;
          v1088 = v315;
          v1089 = v314;
          v1090 = v313;
          v1091 = v1509;
          v1092 = v1510;
          v1093 = v1511;
          v1094 = v1512;
          v1095 = v1513;
          v1096 = v1514;
          v1097 = v1515;
          v1098 = v1516;
          v1099 = v1517;
          v1100 = v1518;
          v1101 = v1519;
          v1102 = v1520;
          v1103 = v1521;
          v1104 = v1522;
          v1105 = v1523;
          v1106 = v1524;
          v1107 = v1525;
          v1108 = v1526;
          v1109 = v1528;
          v320 = v1508;
          v321 = v1507;
          v322 = v1506;
          v323 = v1505;
          v324 = v1504;
          v325 = v1503;
          v326 = v1502;
          v1774 = v1718;
          v1775 = v1509;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v1048 = 0;
          v1049 = v1498;
          v1050 = v1499;
          v1051 = v1500;
          v1052 = v1501;
          v1053 = v326;
          v1054 = v325;
          v1055 = v324;
          v1056 = v323;
          v1057 = v322;
          v1058 = v321;
          v1059 = v320;
          v1060 = v1509;
          v1061 = v1510;
          v1062 = v1511;
          v1063 = v1512;
          v1064 = v1513;
          v1065 = v1514;
          v1066 = v1515;
          v1067 = v1516;
          v1068 = v1517;
          v1069 = v1518;
          v1070 = v1519;
          v1071 = v1520;
          v1072 = v1521;
          v1073 = v1522;
          v1074 = v1523;
          v1075 = v1524;
          v1076 = v1525;
          v1077 = v1526;
          v1078 = v1528;
          v327 = v1508;
          v328 = v1507;
          v329 = v1506;
          v330 = v1505;
          v331 = v1504;
          v332 = v1503;
          v333 = v1502;
          v1774 = v1719;
          v1775 = v1510;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v1017 = 0;
          v1018 = v1498;
          v1019 = v1499;
          v1020 = v1500;
          v1021 = v1501;
          v1022 = v333;
          v1023 = v332;
          v1024 = v331;
          v1025 = v330;
          v1026 = v329;
          v1027 = v328;
          v1028 = v327;
          v1029 = v1509;
          v1030 = v1510;
          v1031 = v1511;
          v1032 = v1512;
          v1033 = v1513;
          v1034 = v1514;
          v1035 = v1515;
          v1036 = v1516;
          v1037 = v1517;
          v1038 = v1518;
          v1039 = v1519;
          v1040 = v1520;
          v1041 = v1521;
          v1042 = v1522;
          v1043 = v1523;
          v1044 = v1524;
          v1045 = v1525;
          v1046 = v1526;
          v1047 = v1528;
          v334 = v1508;
          v335 = v1507;
          v336 = v1506;
          v337 = v1505;
          v338 = v1504;
          v339 = v1503;
          v340 = v1502;
          v1774 = v1720;
          v1775 = v1511;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v986 = 0;
          v987 = v1498;
          v988 = v1499;
          v989 = v1500;
          v990 = v1501;
          v991 = v340;
          v992 = v339;
          v993 = v338;
          v994 = v337;
          v995 = v336;
          v996 = v335;
          v997 = v334;
          v998 = v1509;
          v999 = v1510;
          v1000 = v1511;
          v1001 = v1512;
          v1002 = v1513;
          v1003 = v1514;
          v1004 = v1515;
          v1005 = v1516;
          v1006 = v1517;
          v1007 = v1518;
          v1008 = v1519;
          v1009 = v1520;
          v1010 = v1521;
          v1011 = v1522;
          v1012 = v1523;
          v1013 = v1524;
          v1014 = v1525;
          v1015 = v1526;
          v1016 = v1528;
          v341 = v1508;
          v342 = v1507;
          v343 = v1506;
          v344 = v1505;
          v345 = v1504;
          v346 = v1503;
          v347 = v1502;
          v1774 = v1721;
          v1775 = v1512;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v955 = 0;
          v956 = v1498;
          v957 = v1499;
          v958 = v1500;
          v959 = v1501;
          v960 = v347;
          v961 = v346;
          v962 = v345;
          v963 = v344;
          v964 = v343;
          v965 = v342;
          v966 = v341;
          v967 = v1509;
          v968 = v1510;
          v969 = v1511;
          v970 = v1512;
          v971 = v1513;
          v972 = v1514;
          v973 = v1515;
          v974 = v1516;
          v975 = v1517;
          v976 = v1518;
          v977 = v1519;
          v978 = v1520;
          v979 = v1521;
          v980 = v1522;
          v981 = v1523;
          v982 = v1524;
          v983 = v1525;
          v984 = v1526;
          v985 = v1528;
          v348 = v1508;
          v349 = v1507;
          v350 = v1506;
          v351 = v1505;
          v352 = v1504;
          v353 = v1503;
          v354 = v1502;
          v1774 = v1722;
          v1775 = v1513;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v924 = 0;
          v925 = v1498;
          v926 = v1499;
          v927 = v1500;
          v928 = v1501;
          v929 = v354;
          v930 = v353;
          v931 = v352;
          v932 = v351;
          v933 = v350;
          v934 = v349;
          v935 = v348;
          v936 = v1509;
          v937 = v1510;
          v938 = v1511;
          v939 = v1512;
          v940 = v1513;
          v941 = v1514;
          v942 = v1515;
          v943 = v1516;
          v944 = v1517;
          v945 = v1518;
          v946 = v1519;
          v947 = v1520;
          v948 = v1521;
          v949 = v1522;
          v950 = v1523;
          v951 = v1524;
          v952 = v1525;
          v953 = v1526;
          v954 = v1528;
          v355 = v1508;
          v356 = v1507;
          v357 = v1506;
          v358 = v1505;
          v359 = v1504;
          v360 = v1503;
          v361 = v1502;
          v1774 = v1723;
          v1775 = v1514;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v893 = 0;
          v894 = v1498;
          v895 = v1499;
          v896 = v1500;
          v897 = v1501;
          v898 = v361;
          v899 = v360;
          v900 = v359;
          v901 = v358;
          v902 = v357;
          v903 = v356;
          v904 = v355;
          v905 = v1509;
          v906 = v1510;
          v907 = v1511;
          v908 = v1512;
          v909 = v1513;
          v910 = v1514;
          v911 = v1515;
          v912 = v1516;
          v913 = v1517;
          v914 = v1518;
          v915 = v1519;
          v916 = v1520;
          v917 = v1521;
          v918 = v1522;
          v919 = v1523;
          v920 = v1524;
          v921 = v1525;
          v922 = v1526;
          v923 = v1528;
          v362 = v1508;
          v363 = v1507;
          v364 = v1506;
          v365 = v1505;
          v366 = v1504;
          v367 = v1503;
          v368 = v1502;
          v1774 = v1724;
          v1775 = v1515;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v862 = 0;
          v863 = v1498;
          v864 = v1499;
          v865 = v1500;
          v866 = v1501;
          v867 = v368;
          v868 = v367;
          v869 = v366;
          v870 = v365;
          v871 = v364;
          v872 = v363;
          v873 = v362;
          v874 = v1509;
          v875 = v1510;
          v876 = v1511;
          v877 = v1512;
          v878 = v1513;
          v879 = v1514;
          v880 = v1515;
          v881 = v1516;
          v882 = v1517;
          v883 = v1518;
          v884 = v1519;
          v885 = v1520;
          v886 = v1521;
          v887 = v1522;
          v888 = v1523;
          v889 = v1524;
          v890 = v1525;
          v891 = v1526;
          v892 = v1528;
          v369 = v1508;
          v370 = v1507;
          v371 = v1506;
          v372 = v1505;
          v373 = v1504;
          v374 = v1503;
          v375 = v1502;
          v1774 = v1725;
          v1775 = v1516;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v831 = 0;
          v832 = v1498;
          v833 = v1499;
          v834 = v1500;
          v835 = v1501;
          v836 = v375;
          v837 = v374;
          v838 = v373;
          v839 = v372;
          v840 = v371;
          v841 = v370;
          v842 = v369;
          v843 = v1509;
          v844 = v1510;
          v845 = v1511;
          v846 = v1512;
          v847 = v1513;
          v848 = v1514;
          v849 = v1515;
          v850 = v1516;
          v851 = v1517;
          v852 = v1518;
          v853 = v1519;
          v854 = v1520;
          v855 = v1521;
          v856 = v1522;
          v857 = v1523;
          v858 = v1524;
          v859 = v1525;
          v860 = v1526;
          v861 = v1528;
          v376 = v1508;
          v377 = v1507;
          v378 = v1506;
          v379 = v1505;
          v380 = v1504;
          v381 = v1503;
          v382 = v1502;
          v1774 = v1726;
          v1775 = v1517;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v800 = 0;
          v801 = v1498;
          v802 = v1499;
          v803 = v1500;
          v804 = v1501;
          v805 = v382;
          v806 = v381;
          v807 = v380;
          v808 = v379;
          v809 = v378;
          v810 = v377;
          v811 = v376;
          v812 = v1509;
          v813 = v1510;
          v814 = v1511;
          v815 = v1512;
          v816 = v1513;
          v817 = v1514;
          v818 = v1515;
          v819 = v1516;
          v820 = v1517;
          v821 = v1518;
          v822 = v1519;
          v823 = v1520;
          v824 = v1521;
          v825 = v1522;
          v826 = v1523;
          v827 = v1524;
          v828 = v1525;
          v829 = v1526;
          v830 = v1528;
          v383 = v1508;
          v384 = v1507;
          v385 = v1506;
          v386 = v1505;
          v387 = v1504;
          v388 = v1503;
          v389 = v1502;
          v1774 = v1727;
          v1775 = v1518;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v769 = 0;
          v770 = v1498;
          v771 = v1499;
          v772 = v1500;
          v773 = v1501;
          v774 = v389;
          v775 = v388;
          v776 = v387;
          v777 = v386;
          v778 = v385;
          v779 = v384;
          v780 = v383;
          v781 = v1509;
          v782 = v1510;
          v783 = v1511;
          v784 = v1512;
          v785 = v1513;
          v786 = v1514;
          v787 = v1515;
          v788 = v1516;
          v789 = v1517;
          v790 = v1518;
          v791 = v1519;
          v792 = v1520;
          v793 = v1521;
          v794 = v1522;
          v795 = v1523;
          v796 = v1524;
          v797 = v1525;
          v798 = v1526;
          v799 = v1528;
          v390 = v1508;
          v391 = v1507;
          v392 = v1506;
          v393 = v1505;
          v394 = v1504;
          v395 = v1503;
          v396 = v1502;
          v1774 = v1728;
          v1775 = v1519;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v738 = 0;
          v739 = v1498;
          v740 = v1499;
          v741 = v1500;
          v742 = v1501;
          v743 = v396;
          v744 = v395;
          v745 = v394;
          v746 = v393;
          v747 = v392;
          v748 = v391;
          v749 = v390;
          v750 = v1509;
          v751 = v1510;
          v752 = v1511;
          v753 = v1512;
          v754 = v1513;
          v755 = v1514;
          v756 = v1515;
          v757 = v1516;
          v758 = v1517;
          v759 = v1518;
          v760 = v1519;
          v761 = v1520;
          v762 = v1521;
          v763 = v1522;
          v764 = v1523;
          v765 = v1524;
          v766 = v1525;
          v767 = v1526;
          v768 = v1528;
          v397 = v1508;
          v398 = v1507;
          v399 = v1506;
          v400 = v1505;
          v401 = v1504;
          v402 = v1503;
          v403 = v1502;
          v1774 = v1729;
          v1775 = v1520;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v707 = 0;
          v708 = v1498;
          v709 = v1499;
          v710 = v1500;
          v711 = v1501;
          v712 = v403;
          v713 = v402;
          v714 = v401;
          v715 = v400;
          v716 = v399;
          v717 = v398;
          v718 = v397;
          v719 = v1509;
          v720 = v1510;
          v721 = v1511;
          v722 = v1512;
          v723 = v1513;
          v724 = v1514;
          v725 = v1515;
          v726 = v1516;
          v727 = v1517;
          v728 = v1518;
          v729 = v1519;
          v730 = v1520;
          v731 = v1521;
          v732 = v1522;
          v733 = v1523;
          v734 = v1524;
          v735 = v1525;
          v736 = v1526;
          v737 = v1528;
          v404 = v1508;
          v405 = v1507;
          v406 = v1506;
          v407 = v1505;
          v408 = v1504;
          v409 = v1503;
          v410 = v1502;
          v1774 = v1730;
          v1775 = v1521;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v676 = 0;
          v677 = v1498;
          v678 = v1499;
          v679 = v1500;
          v680 = v1501;
          v681 = v410;
          v682 = v409;
          v683 = v408;
          v684 = v407;
          v685 = v406;
          v686 = v405;
          v687 = v404;
          v688 = v1509;
          v689 = v1510;
          v690 = v1511;
          v691 = v1512;
          v692 = v1513;
          v693 = v1514;
          v694 = v1515;
          v695 = v1516;
          v696 = v1517;
          v697 = v1518;
          v698 = v1519;
          v699 = v1520;
          v700 = v1521;
          v701 = v1522;
          v702 = v1523;
          v703 = v1524;
          v704 = v1525;
          v705 = v1526;
          v706 = v1528;
          v411 = v1508;
          v412 = v1507;
          v413 = v1506;
          v414 = v1505;
          v415 = v1504;
          v416 = v1503;
          v417 = v1502;
          v1774 = v1731;
          v1775 = v1522;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v645 = 0;
          v646 = v1498;
          v647 = v1499;
          v648 = v1500;
          v649 = v1501;
          v650 = v417;
          v651 = v416;
          v652 = v415;
          v653 = v414;
          v654 = v413;
          v655 = v412;
          v656 = v411;
          v657 = v1509;
          v658 = v1510;
          v659 = v1511;
          v660 = v1512;
          v661 = v1513;
          v662 = v1514;
          v663 = v1515;
          v664 = v1516;
          v665 = v1517;
          v666 = v1518;
          v667 = v1519;
          v668 = v1520;
          v669 = v1521;
          v670 = v1522;
          v671 = v1523;
          v672 = v1524;
          v673 = v1525;
          v674 = v1526;
          v675 = v1528;
          v418 = v1508;
          v419 = v1507;
          v420 = v1506;
          v421 = v1505;
          v422 = v1504;
          v423 = v1503;
          v424 = v1502;
          v1774 = v1732;
          v1775 = v1523;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v614 = 0;
          v615 = v1498;
          v616 = v1499;
          v617 = v1500;
          v618 = v1501;
          v619 = v424;
          v620 = v423;
          v621 = v422;
          v622 = v421;
          v623 = v420;
          v624 = v419;
          v625 = v418;
          v626 = v1509;
          v627 = v1510;
          v628 = v1511;
          v629 = v1512;
          v630 = v1513;
          v631 = v1514;
          v632 = v1515;
          v633 = v1516;
          v634 = v1517;
          v635 = v1518;
          v636 = v1519;
          v637 = v1520;
          v638 = v1521;
          v639 = v1522;
          v640 = v1523;
          v641 = v1524;
          v642 = v1525;
          v643 = v1526;
          v644 = v1528;
          v425 = v1508;
          v426 = v1507;
          v427 = v1506;
          v428 = v1505;
          v429 = v1504;
          v430 = v1503;
          v431 = v1502;
          v1774 = v1733;
          v1775 = v1524;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v583 = 0;
          v584 = v1498;
          v585 = v1499;
          v586 = v1500;
          v587 = v1501;
          v588 = v431;
          v589 = v430;
          v590 = v429;
          v591 = v428;
          v592 = v427;
          v593 = v426;
          v594 = v425;
          v595 = v1509;
          v596 = v1510;
          v597 = v1511;
          v598 = v1512;
          v599 = v1513;
          v600 = v1514;
          v601 = v1515;
          v602 = v1516;
          v603 = v1517;
          v604 = v1518;
          v605 = v1519;
          v606 = v1520;
          v607 = v1521;
          v608 = v1522;
          v609 = v1523;
          v610 = v1524;
          v611 = v1525;
          v612 = v1526;
          v613 = v1528;
          v432 = v1508;
          v433 = v1507;
          v434 = v1506;
          v435 = v1505;
          v436 = v1504;
          v437 = v1503;
          v438 = v1502;
          v1774 = v1734;
          v1775 = v1525;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v552 = 0;
          v553 = v1498;
          v554 = v1499;
          v555 = v1500;
          v556 = v1501;
          v557 = v438;
          v558 = v437;
          v559 = v436;
          v560 = v435;
          v561 = v434;
          v562 = v433;
          v563 = v432;
          v564 = v1509;
          v565 = v1510;
          v566 = v1511;
          v567 = v1512;
          v568 = v1513;
          v569 = v1514;
          v570 = v1515;
          v571 = v1516;
          v572 = v1517;
          v573 = v1518;
          v574 = v1519;
          v575 = v1520;
          v576 = v1521;
          v577 = v1522;
          v578 = v1523;
          v579 = v1524;
          v580 = v1525;
          v581 = v1526;
          v582 = v1528;
          v439 = v1508;
          v440 = v1507;
          v441 = v1506;
          v442 = v1505;
          v443 = v1504;
          v444 = v1503;
          v445 = v1502;
          v1774 = v1735;
          v1775 = v1526;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v521 = 0;
          v522 = v1498;
          v523 = v1499;
          v524 = v1500;
          v525 = v1501;
          v526 = v445;
          v527 = v444;
          v528 = v443;
          v529 = v442;
          v530 = v441;
          v531 = v440;
          v532 = v439;
          v533 = v1509;
          v534 = v1510;
          v535 = v1511;
          v536 = v1512;
          v537 = v1513;
          v538 = v1514;
          v539 = v1515;
          v540 = v1516;
          v541 = v1517;
          v542 = v1518;
          v543 = v1519;
          v544 = v1520;
          v545 = v1521;
          v546 = v1522;
          v547 = v1523;
          v548 = v1524;
          v549 = v1525;
          v550 = v1526;
          v551 = v1528;
          v446 = v1508;
          v447 = v1507;
          v448 = v1506;
          v449 = v1505;
          v450 = v1504;
          v451 = v1503;
          v452 = v1502;
          v1774 = v1736;
          v1775 = v1528;
          sub_1B03949FC(&v1774, &v1778, &v1777, &v1776);
          v490 = 0;
          v491 = v1498;
          v492 = v1499;
          v493 = v1500;
          v494 = v1501;
          v495 = v452;
          v496 = v451;
          v497 = v450;
          v498 = v449;
          v499 = v448;
          v500 = v447;
          v501 = v446;
          v502 = v1509;
          v503 = v1510;
          v504 = v1511;
          v505 = v1512;
          v506 = v1513;
          v507 = v1514;
          v508 = v1515;
          v509 = v1516;
          v510 = v1517;
          v511 = v1518;
          v512 = v1519;
          v513 = v1520;
          v514 = v1521;
          v515 = v1522;
          v516 = v1523;
          v517 = v1524;
          v518 = v1525;
          v519 = v1526;
          v520 = v1528;
          _os_log_impl(&dword_1B0389000, v1531, v1532, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Completing user-initiated MIME part download request %{public}u for UID %u, part '[%{public}s]', QoS '%{public}s'.", v1423, 0x4Bu);
          sub_1B03998A8(v1424);
          sub_1B03998A8(v1425);
          sub_1B0E45D58();

          v1421 = v490;
        }
      }

      else
      {
        v249 = v1533;

        v1421 = v249;
      }

      v460 = v1421;
      MEMORY[0x1E69E5920](v1531);
      (*(v1739 + 8))(v1742, v1738);
      v459 = v1784;
      v458 = v1784[14];
      MEMORY[0x1E69E5928](v1784[14]);
      v456 = 0;
      sub_1B039A494();
      v457 = sub_1B0E45CC8();
      [v458 finishWithResult_];
      MEMORY[0x1E69E5920](v457);
      MEMORY[0x1E69E5920](v458);
      sub_1B0990D34(v459);
    }

    sub_1B039E440(v1785);

    sub_1B039E440(&v1788);
    sub_1B074B764(v1760);
    v455 = 1;
  }

  return v455 & 1;
}

uint64_t sub_1B098525C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1B0820818(a1, a2, a3);
  sub_1B0820818(a1, a2, a3);
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3300, &qword_1B0EA10F8);
  sub_1B03F1A20(sub_1B09853D0, 0, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v10, &v14);
  sub_1B0990858(v13);
  v11 = v14;
  v12 = v15;
  if (v15)
  {
    v16 = v11;
    v17 = v12;
  }

  else
  {
    v16 = sub_1B0E44838();
    v17 = v4;
  }

  v6 = v16;
  sub_1B087510C(a1, a2, a3);
  return v6;
}

uint64_t sub_1B09853D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v7 = a1[1];
  v8 = a1[2];
  v11 = *a1;
  v12 = v7;
  v13 = v8;
  v10[0] = sub_1B0E46A28();
  v10[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  sub_1B07F20AC();
  sub_1B0E469F8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v10);
  result = sub_1B0E44C88();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B0985520(uint64_t a1, int a2, int a3)
{
  v30 = a1;
  v27 = a2;
  v25 = a3;
  v28 = sub_1B099155C;
  v47 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v43 = 0;
  v37 = 0;
  v38 = 0;
  v21 = 0;
  v22 = (*(*(_s6LoggerVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v24 = &v10[-v22];
  v23 = (*(*(_s6LoggerVMa_1() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v30);
  v26 = &v10[-v23];
  v47 = &v10[-v23];
  v45 = v4;
  v46 = v5;
  v44 = v6;
  v43 = v3;
  sub_1B0394784(v3 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v7);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07B91DC(v24, v30, v27, v26);
  v41 = 0;
  v42 = 0xF000000000000000;
  v40 = 1;
  v29 = &v32;
  v33 = v25;
  v34 = v26;
  v35 = &v41;
  v36 = &v40;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B58, &qword_1B0EA1120);
  sub_1B09B21DC(v30, v27, v28, v29, v8, &v39);
  v31 = 0;
  v19 = v41;
  v20 = v42;
  sub_1B070E18C(v41, v42);
  if ((v20 & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_1B043C03C(&v41);
    sub_1B074B764(v26);
    v14 = 0;
    v15 = 0;
    v16 = 2;
  }

  else
  {
    v17 = v19;
    v18 = v20;
    v13 = v20;
    v12 = v19;
    v37 = v19;
    v38 = v20;
    v11 = v40;
    sub_1B043C03C(&v41);
    sub_1B074B764(v26);
    v14 = v12;
    v15 = v13;
    v16 = v11 & 1;
  }

  return v14;
}

uint64_t sub_1B0985850(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v23 = a4;
  v24 = a3;
  v25 = a2;
  v26 = a1;
  v56[1] = 0;
  v27 = 0;
  v45 = 0;
  v58 = a1;
  v59 = a2;
  v57 = a3;
  v56[2] = a4;
  v56[0] = sub_1B0E46A48();
  for (i = 0; ; i = v12)
  {
    v4 = i;
    v15 = *(v22 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v54[0] = v15;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = &v10;
    MEMORY[0x1EEE9AC00](&v10);
    v5 = v26;
    v6 = v25;
    v17 = &v10 - 6;
    *(&v10 - 8) = v7;
    *(&v10 - 3) = v5;
    *(&v10 - 4) = v6;
    *(&v10 - 1) = v8;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
    v16 = v18;
    sub_1B0990A50();
    sub_1B0E456F8();
    v20 = v4;
    v21 = v19;
    if (v4)
    {
      break;
    }

    sub_1B039E440(v54);
    v14 = v54[1];
    if (v55)
    {
      v11 = v56[0];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B039E440(v56);
      return v11;
    }

    v13 = v14;
    v12 = v20;
    v45 = v14;
    sub_1B0E45308();
    v49 = v40;
    v48 = v39;
    v47 = v38;
    v46 = v37;
    v53 = v44;
    v52 = v43;
    v51 = v42;
    v50 = v41;
    v32 = v40;
    v31 = v39;
    v30 = v38;
    v29 = v37;
    v36 = v44;
    v35 = v43;
    v34 = v42;
    v33 = v41;
    sub_1B0E452E8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0985B2C(uint64_t a1)
{
  v2 = *(a1 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0985B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, BOOL *a6@<X5>, _BYTE *a7@<X8>)
{
  v213 = a7;
  v262 = a2;
  v263 = a3;
  v259 = a4;
  v260 = a5;
  v261 = a6;
  v215 = sub_1B074E050;
  v216 = sub_1B03F7AE0;
  v217 = sub_1B0394C30;
  v218 = sub_1B0394C24;
  v219 = sub_1B074DFFC;
  v220 = sub_1B039BA88;
  v221 = sub_1B039BB94;
  v222 = sub_1B0394C24;
  v223 = sub_1B039BBA0;
  v224 = sub_1B039BC08;
  v225 = sub_1B06BA324;
  v226 = sub_1B074E0E4;
  v227 = sub_1B039BCF8;
  v228 = sub_1B07AB020;
  v229 = sub_1B039BC08;
  v230 = sub_1B0398F5C;
  v231 = sub_1B0398F5C;
  v232 = sub_1B0399178;
  v233 = sub_1B0398F5C;
  v234 = sub_1B0398F5C;
  v235 = sub_1B039BA94;
  v236 = sub_1B0398F5C;
  v237 = sub_1B0398F5C;
  v238 = sub_1B0399178;
  v239 = sub_1B0398F5C;
  v240 = sub_1B0398F5C;
  v241 = sub_1B03991EC;
  v242 = sub_1B0398F5C;
  v243 = sub_1B0398F5C;
  v244 = sub_1B03993BC;
  v245 = sub_1B0398F5C;
  v246 = sub_1B0398F5C;
  v247 = sub_1B039BCEC;
  v248 = sub_1B0398F5C;
  v249 = sub_1B0398F5C;
  v250 = sub_1B03991EC;
  v284[1] = *MEMORY[0x1E69E9840];
  v280 = 0;
  v279 = 0;
  v278 = 0;
  v277 = 0;
  v276 = 0;
  v275 = 0;
  v271 = 0;
  v270 = 0;
  v281 = 0;
  v282 = 0;
  v251 = 0;
  v252 = _s6LoggerVMa_1();
  v253 = (*(*(v252 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](0);
  v254 = &v115 - v253;
  v255 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v256 = &v115 - v255;
  v257 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v258 = &v115 - v257;
  v264 = sub_1B0E439A8();
  v265 = *(v264 - 8);
  v266 = v264 - 8;
  v267 = (*(v265 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v263);
  v268 = &v115 - v267;
  v280 = a1;
  v279 = v13;
  v278 = v12;
  v277 = v14;
  v276 = v15;
  v275 = v16;
  v269 = sub_1B082A818(v12);
  if (v269)
  {
    v212 = v269;
    v210 = v269;
    v271 = v269;
    v270 = 0;
    v211 = [v269 messageDataIsPartial_];
    if (v211)
    {
      v209 = v211;
      v204 = v211;
      v205 = sub_1B0E42F38();
      v206 = v17;
      MEMORY[0x1E69E5920](v204);
      v207 = v205;
      v208 = v206;
    }

    else
    {
      v207 = 0;
      v208 = 0xF000000000000000;
    }

    v202 = v208;
    v203 = v207;
    if ((v208 & 0xF000000000000000) == 0xF000000000000000)
    {
      v18 = v210;
      *v213 = 0;
      MEMORY[0x1E69E5920](v18);
    }

    else
    {
      v200 = v203;
      v201 = v202;
      v198 = v202;
      v197 = v203;
      v281 = v203;
      v282 = v202;
      sub_1B03B2000(v203, v202);
      v19 = v260;
      v20 = v198;
      v21 = *v260;
      v22 = v260[1];
      *v260 = v197;
      v19[1] = v20;
      sub_1B070E144(v21, v22);
      v196 = (v270 & 1) != 0;
      v23 = v198;
      v24 = v197;
      v25 = v213;
      *v261 = (v270 & 1) != 0;
      *v25 = 0;
      sub_1B0391D50(v24, v23);
      MEMORY[0x1E69E5920](v210);
    }

    v199 = v214;
  }

  else
  {
    (*(v265 + 16))(v268, v259, v264);
    sub_1B074B69C(v259, v258);
    sub_1B074B69C(v258, v256);
    sub_1B074E41C(v258, v254);
    v26 = (v256 + *(v252 + 20));
    v148 = *v26;
    v149 = *(v26 + 1);
    v150 = *(v26 + 1);
    v151 = *(v26 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v256);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v147 = 36;
    v167 = 7;
    v27 = swift_allocObject();
    v28 = v149;
    v29 = v150;
    v30 = v151;
    v154 = v27;
    *(v27 + 16) = v148;
    *(v27 + 20) = v28;
    *(v27 + 24) = v29;
    *(v27 + 32) = v30;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v31 = swift_allocObject();
    v32 = v149;
    v33 = v150;
    v34 = v151;
    v146 = v31;
    *(v31 + 16) = v148;
    *(v31 + 20) = v32;
    *(v31 + 24) = v33;
    *(v31 + 32) = v34;

    v166 = 32;
    v35 = swift_allocObject();
    v36 = v146;
    v158 = v35;
    *(v35 + 16) = v215;
    *(v35 + 24) = v36;
    sub_1B0394868();
    sub_1B0394868();

    v37 = swift_allocObject();
    v38 = v149;
    v39 = v150;
    v40 = v151;
    v41 = v37;
    v42 = v254;
    v162 = v41;
    *(v41 + 16) = v148;
    *(v41 + 20) = v38;
    *(v41 + 24) = v39;
    *(v41 + 32) = v40;
    sub_1B074B764(v42);
    v152 = swift_allocObject();
    *(v152 + 16) = v263;

    v43 = swift_allocObject();
    v44 = v152;
    v168 = v43;
    *(v43 + 16) = v216;
    *(v43 + 24) = v44;

    v194 = sub_1B0E43988();
    v195 = sub_1B0E458E8();
    v164 = 17;
    v170 = swift_allocObject();
    v156 = 16;
    *(v170 + 16) = 16;
    v171 = swift_allocObject();
    v165 = 4;
    *(v171 + 16) = 4;
    v45 = swift_allocObject();
    v153 = v45;
    *(v45 + 16) = v217;
    *(v45 + 24) = 0;
    v46 = swift_allocObject();
    v47 = v153;
    v172 = v46;
    *(v46 + 16) = v218;
    *(v46 + 24) = v47;
    v173 = swift_allocObject();
    *(v173 + 16) = 0;
    v174 = swift_allocObject();
    *(v174 + 16) = 1;
    v48 = swift_allocObject();
    v49 = v154;
    v155 = v48;
    *(v48 + 16) = v219;
    *(v48 + 24) = v49;
    v50 = swift_allocObject();
    v51 = v155;
    v175 = v50;
    *(v50 + 16) = v220;
    *(v50 + 24) = v51;
    v176 = swift_allocObject();
    *(v176 + 16) = v156;
    v177 = swift_allocObject();
    *(v177 + 16) = v165;
    v52 = swift_allocObject();
    v157 = v52;
    *(v52 + 16) = v221;
    *(v52 + 24) = 0;
    v53 = swift_allocObject();
    v54 = v157;
    v178 = v53;
    *(v53 + 16) = v222;
    *(v53 + 24) = v54;
    v179 = swift_allocObject();
    *(v179 + 16) = 0;
    v180 = swift_allocObject();
    *(v180 + 16) = v165;
    v55 = swift_allocObject();
    v56 = v158;
    v159 = v55;
    *(v55 + 16) = v223;
    *(v55 + 24) = v56;
    v57 = swift_allocObject();
    v58 = v159;
    v181 = v57;
    *(v57 + 16) = v224;
    *(v57 + 24) = v58;
    v182 = swift_allocObject();
    *(v182 + 16) = 112;
    v183 = swift_allocObject();
    v161 = 8;
    *(v183 + 16) = 8;
    v160 = swift_allocObject();
    *(v160 + 16) = 0x786F626C69616DLL;
    v59 = swift_allocObject();
    v60 = v160;
    v184 = v59;
    *(v59 + 16) = v225;
    *(v59 + 24) = v60;
    v185 = swift_allocObject();
    *(v185 + 16) = 37;
    v186 = swift_allocObject();
    *(v186 + 16) = v161;
    v61 = swift_allocObject();
    v62 = v162;
    v163 = v61;
    *(v61 + 16) = v226;
    *(v61 + 24) = v62;
    v63 = swift_allocObject();
    v64 = v163;
    v187 = v63;
    *(v63 + 16) = v227;
    *(v63 + 24) = v64;
    v188 = swift_allocObject();
    *(v188 + 16) = 0;
    v189 = swift_allocObject();
    *(v189 + 16) = v165;
    v65 = swift_allocObject();
    v66 = v168;
    v169 = v65;
    *(v65 + 16) = v228;
    *(v65 + 24) = v66;
    v67 = swift_allocObject();
    v68 = v169;
    v191 = v67;
    *(v67 + 16) = v229;
    *(v67 + 24) = v68;
    v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v190 = sub_1B0E46A48();
    v192 = v69;

    v70 = v170;
    v71 = v192;
    *v192 = v230;
    v71[1] = v70;

    v72 = v171;
    v73 = v192;
    v192[2] = v231;
    v73[3] = v72;

    v74 = v172;
    v75 = v192;
    v192[4] = v232;
    v75[5] = v74;

    v76 = v173;
    v77 = v192;
    v192[6] = v233;
    v77[7] = v76;

    v78 = v174;
    v79 = v192;
    v192[8] = v234;
    v79[9] = v78;

    v80 = v175;
    v81 = v192;
    v192[10] = v235;
    v81[11] = v80;

    v82 = v176;
    v83 = v192;
    v192[12] = v236;
    v83[13] = v82;

    v84 = v177;
    v85 = v192;
    v192[14] = v237;
    v85[15] = v84;

    v86 = v178;
    v87 = v192;
    v192[16] = v238;
    v87[17] = v86;

    v88 = v179;
    v89 = v192;
    v192[18] = v239;
    v89[19] = v88;

    v90 = v180;
    v91 = v192;
    v192[20] = v240;
    v91[21] = v90;

    v92 = v181;
    v93 = v192;
    v192[22] = v241;
    v93[23] = v92;

    v94 = v182;
    v95 = v192;
    v192[24] = v242;
    v95[25] = v94;

    v96 = v183;
    v97 = v192;
    v192[26] = v243;
    v97[27] = v96;

    v98 = v184;
    v99 = v192;
    v192[28] = v244;
    v99[29] = v98;

    v100 = v185;
    v101 = v192;
    v192[30] = v245;
    v101[31] = v100;

    v102 = v186;
    v103 = v192;
    v192[32] = v246;
    v103[33] = v102;

    v104 = v187;
    v105 = v192;
    v192[34] = v247;
    v105[35] = v104;

    v106 = v188;
    v107 = v192;
    v192[36] = v248;
    v107[37] = v106;

    v108 = v189;
    v109 = v192;
    v192[38] = v249;
    v109[39] = v108;

    v110 = v191;
    v111 = v192;
    v192[40] = v250;
    v111[41] = v110;
    sub_1B0394964();

    if (os_log_type_enabled(v194, v195))
    {
      v139 = sub_1B0E45D78();
      v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v140 = sub_1B03949A8(0);
      v141 = sub_1B03949A8(1);
      v142 = &v274;
      v274 = v139;
      v143 = v284;
      v284[0] = v140;
      v144 = &v283;
      v283 = v141;
      sub_1B0394A48(3, &v274);
      sub_1B0394A48(7, v142);
      v112 = v214;
      v272 = v230;
      v273 = v170;
      sub_1B03949FC(&v272, v142, v143, v144);
      v145 = v112;
      if (v112)
      {

        __break(1u);
      }

      else
      {
        v272 = v231;
        v273 = v171;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v136 = 0;
        v272 = v232;
        v273 = v172;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v135 = 0;
        v272 = v233;
        v273 = v173;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v134 = 0;
        v272 = v234;
        v273 = v174;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v133 = 0;
        v272 = v235;
        v273 = v175;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v132 = 0;
        v272 = v236;
        v273 = v176;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v131 = 0;
        v272 = v237;
        v273 = v177;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v130 = 0;
        v272 = v238;
        v273 = v178;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v129 = 0;
        v272 = v239;
        v273 = v179;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v128 = 0;
        v272 = v240;
        v273 = v180;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v127 = 0;
        v272 = v241;
        v273 = v181;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v126 = 0;
        v272 = v242;
        v273 = v182;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v125 = 0;
        v272 = v243;
        v273 = v183;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v124 = 0;
        v272 = v244;
        v273 = v184;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v123 = 0;
        v272 = v245;
        v273 = v185;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v122 = 0;
        v272 = v246;
        v273 = v186;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v121 = 0;
        v272 = v247;
        v273 = v187;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v120 = 0;
        v272 = v248;
        v273 = v188;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v119 = 0;
        v272 = v249;
        v273 = v189;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v118 = 0;
        v272 = v250;
        v273 = v191;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v117 = 0;
        _os_log_impl(&dword_1B0389000, v194, v195, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] No message for UID %u.", v139, 0x31u);
        sub_1B03998A8(v140);
        sub_1B03998A8(v141);
        sub_1B0E45D58();

        v137 = v117;
      }
    }

    else
    {

      v137 = v214;
    }

    v116 = v137;
    MEMORY[0x1E69E5920](v194);
    (*(v265 + 8))(v268, v264);
    v113 = v116;
    *v213 = 0;
    v199 = v113;
  }

  result = v199;
  v115 = v199;
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0987C60(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  memset(__b, 0, sizeof(__b));
  v16 = *(a1 + 8);
  v15 = *(a1 + 16);
  v17 = *(a1 + 24);
  v14 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v18 = *(a1 + 64);
  LODWORD(__b[0]) = *a1;
  __b[1] = v16;
  __b[2] = v15;
  __b[3] = v17;
  __b[4] = __PAIR64__(v4, v14);
  LOBYTE(__b[5]) = v5;
  BYTE1(__b[5]) = v6;
  __b[6] = v7;
  LOBYTE(__b[7]) = v8 & 1;
  __b[8] = v18;
  sub_1B0714E4C();
  v20 = sub_1B0E45ED8();
  sub_1B03B2000(v16, v15);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v18);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v20)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = static MailboxName.== infix(_:_:)(v17, v14, a3, a4);

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  sub_1B0391D50(v16, v15);

  MEMORY[0x1E69E5920](v18);

  return v11 & 1;
}

uint64_t sub_1B0987E44(const void *a1, int a2, uint64_t a3, int a4)
{
  memcpy(__dst, a1, sizeof(__dst));
  v20 = a1;
  v19 = a2;
  v17 = a3;
  v18 = a4;
  v16 = HIDWORD(__dst[4]);
  v15 = a2;
  sub_1B0714E4C();
  v13 = sub_1B0E45ED8();
  sub_1B0990C1C(__dst, v14);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v13)
  {
    v6 = __dst[3];
    v5 = __dst[4];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = static MailboxName.== infix(_:_:)(v6, v5, a3, a4);

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  sub_1B0990D34(__dst);

  return v8 & 1;
}

BOOL sub_1B0987FA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 36);
  sub_1B0714E4C();
  if (sub_1B0E45ED8() & 1) != 0 && (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v7 = static MailboxName.== infix(_:_:)(v11, v12, a3, a4), , (v7))
  {
    return (a5 & 1) == 0 || (v13 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B09880F4(const void *a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  memcpy(__dst, a1, sizeof(__dst));
  v28 = a1;
  v27 = a2;
  v25 = a3;
  v26 = a4;
  v24 = a5;
  v23 = HIDWORD(__dst[4]);
  v22 = a2;
  sub_1B0714E4C();
  v18 = sub_1B0E45ED8();
  sub_1B0990C1C(__dst, v21);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v18)
  {
    v10 = __dst[3];
    v9 = __dst[4];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = static MailboxName.== infix(_:_:)(v10, v9, a3, a4);

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  sub_1B0990D34(__dst);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0990C1C(__dst, v20);
  if (v12)
  {
    v19[1] = a5;
    v6 = __dst[5];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19[0] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    sub_1B07AFA50();
    sub_1B07F3770();
    v7 = sub_1B0E450A8();
    sub_1B039E440(v19);
    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  sub_1B0990D34(__dst);
  return v8 & 1;
}

uint64_t sub_1B0988328(uint64_t a1, uint64_t a2, int a3)
{
  memset(__b, 0, sizeof(__b));
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v9 = *(a1 + 32);
  v3 = *(a1 + 36);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v15 = *(a1 + 56);
  LODWORD(__b[0]) = *a1;
  __b[1] = v12;
  __b[2] = v13;
  __b[3] = v14;
  __b[4] = __PAIR64__(v3, v9);
  __b[5] = v4;
  LOBYTE(__b[6]) = v5 & 1;
  __b[7] = v15;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = static MailboxName.== infix(_:_:)(v14, v9, a2, a3);

  sub_1B03B2000(v12, v13);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v16)
  {
    sub_1B0714E4C();
    v7 = sub_1B0E45ED8();
  }

  else
  {
    v7 = 0;
  }

  sub_1B0391D50(v12, v13);

  return v7 & 1;
}

uint64_t sub_1B09884D8(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a7;
  v33 = a6;
  v34 = a5;
  v37 = a3;
  v36 = a2;
  v35 = a1;
  v49 = 0;
  v47 = 0;
  v51[7] = a1;
  v52 = a2;
  v51[6] = a3;
  v51[1] = a4;
  v51[2] = a5;
  v51[3] = a6;
  v51[4] = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v51[0] = v34;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v43 = v35;
  v44 = v36;
  v45 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3340, &qword_1B0EA1128);
  v38 = v40;
  sub_1B0991014();
  v41 = 0;
  v42 = sub_1B0E44F58();
  v26 = v42;

  sub_1B039E440(v51);
  v50[1] = v42;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v50[0] = v33;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27 = &v15;
  MEMORY[0x1EEE9AC00](&v15);
  v28 = v12;
  v12[2] = v35;
  v13 = v36;
  v14 = v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
  sub_1B09914B4();
  v8 = sub_1B0E44F58();
  v30 = 0;
  v31 = v8;
  v21 = v8;

  sub_1B039E440(v50);
  v49 = v21;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v48 = v32;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v9 = v36;
  v23 = &v12[-6];
  v12[-4] = v35;
  LODWORD(v12[-3]) = v9;
  v12[-2] = v10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C0, &unk_1B0EA10C0);
  sub_1B0989D8C();
  v25 = sub_1B0E44F58();
  v19 = v25;

  sub_1B039E440(&v48);
  v47 = v19;
  v15 = sub_1B0E45238();
  v16 = sub_1B0E45238();

  v46 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3348, &qword_1B0EA1130);
  v18 = sub_1B03D00F4();
  sub_1B0991658();
  v20 = sub_1B0E445E8();

  return v20;
}

uint64_t sub_1B0988A28@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_1B0988B7C(a2, a3, a4);
  if (result)
  {
    v9 = __dst[1];
    v10 = __dst[2];
    sub_1B03B2000(__dst[1], __dst[2]);
    result = sub_1B0988CB8();
    v11 = v9;
    v12 = v10;
    v13 = result;
    v14 = v8;
    v15 = v7 & 1 | ((v6 & 1) << 8);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 512;
  }

  *a5 = v11;
  *(a5 + 8) = v12;
  *(a5 + 16) = v13;
  *(a5 + 24) = v14;
  *(a5 + 32) = v15;
  return result;
}

uint64_t sub_1B0988B7C(uint64_t a1, int a2, uint64_t a3)
{
  v18 = a1;
  v19 = a2;
  v17 = a3;
  v16 = v3;
  v10 = *(v3 + 24);
  v7 = *(v3 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = static MailboxName.== infix(_:_:)(v10, v7, a1, a2);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0990700(v11, v15);
  if (v12)
  {
    v20 = *(v11 + 8);
    sub_1B09916E0(&v20, &v14);
    v13 = v20;
    sub_1B03D00F4();
    v5 = sub_1B0E45528();
    sub_1B075D3E8(&v13);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  sub_1B09907DC(v11);
  return v6 & 1;
}

uint64_t sub_1B0988CB8()
{
  v1 = *(v0 + 36);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  MessageToDownload.init(message:size:bodyStructure:)();
  return result;
}

uint64_t sub_1B0988D38@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_1B0988E8C(a2, a3, a4);
  if (result)
  {
    v9 = __dst[1];
    v10 = __dst[2];
    sub_1B03B2000(__dst[1], __dst[2]);
    result = sub_1B0988FC8();
    v11 = v9;
    v12 = v10;
    v13 = result;
    v14 = v8;
    v15 = v7 & 1 | ((v6 & 1) << 8);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 512;
  }

  *a5 = v11;
  *(a5 + 8) = v12;
  *(a5 + 16) = v13;
  *(a5 + 24) = v14;
  *(a5 + 32) = v15;
  return result;
}

uint64_t sub_1B0988E8C(uint64_t a1, int a2, uint64_t a3)
{
  v18 = a1;
  v19 = a2;
  v17 = a3;
  v16 = v3;
  v10 = *(v3 + 24);
  v7 = *(v3 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = static MailboxName.== infix(_:_:)(v10, v7, a1, a2);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0990C1C(v11, v15);
  if (v12)
  {
    v20 = *(v11 + 8);
    sub_1B09916E0(&v20, &v14);
    v13 = v20;
    sub_1B03D00F4();
    v5 = sub_1B0E45528();
    sub_1B075D3E8(&v13);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  sub_1B0990D34(v11);
  return v6 & 1;
}

uint64_t sub_1B0988FC8()
{
  v1 = *(v0 + 36);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  MessageToDownload.init(message:size:bodyStructure:)();
  return result;
}

uint64_t sub_1B0989048@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_1B098919C(a2, a3, a4);
  if (result)
  {
    v9 = __dst[1];
    v10 = __dst[2];
    sub_1B03B2000(__dst[1], __dst[2]);
    result = sub_1B09892D0();
    v11 = v9;
    v12 = v10;
    v13 = result;
    v14 = v8;
    v15 = v7 & 1 | ((v6 & 1) << 8);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 512;
  }

  *a5 = v11;
  *(a5 + 8) = v12;
  *(a5 + 16) = v13;
  *(a5 + 24) = v14;
  *(a5 + 32) = v15;
  return result;
}

uint64_t sub_1B098919C(uint64_t a1, int a2, uint64_t a3)
{
  v18 = a1;
  v19 = a2;
  v17 = a3;
  v16 = v3;
  v10 = *(v3 + 24);
  v7 = *(v3 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = static MailboxName.== infix(_:_:)(v10, v7, a1, a2);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0991278(v11, v15);
  if (v12)
  {
    v20 = *(v11 + 8);
    sub_1B09916E0(&v20, &v14);
    v13 = v20;
    sub_1B03D00F4();
    v5 = sub_1B0E45528();
    sub_1B075D3E8(&v13);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  sub_1B098FDF4(v11);
  return v6 & 1;
}

uint64_t sub_1B09892D0()
{
  v1 = *(v0 + 36);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  MessageToDownload.init(message:size:bodyStructure:)();
  return result;
}

uint64_t sub_1B0989350(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a1;
  v13 = a2;
  v11 = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10[0] = a5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  sub_1B0991014();
  v8 = sub_1B0E45028();

  sub_1B039E440(v10);
  return v8 & 1;
}

uint64_t sub_1B0989484(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  memset(__b, 0, sizeof(__b));
  v18 = *(a1 + 8);
  v17 = *(a1 + 16);
  v19 = *(a1 + 24);
  v16 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v20 = *(a1 + 64);
  LODWORD(__b[0]) = *a1;
  __b[1] = v18;
  __b[2] = v17;
  __b[3] = v19;
  __b[4] = __PAIR64__(v4, v16);
  LOBYTE(__b[5]) = v5;
  BYTE1(__b[5]) = v6;
  __b[6] = v7;
  LOBYTE(__b[7]) = v8 & 1;
  __b[8] = v20;
  v21 = sub_1B06E5FB4(v5 & 1, 0);
  sub_1B03B2000(v18, v17);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v20);
  if (v21)
  {
    sub_1B0714E4C();
    v12 = sub_1B0E45ED8();
  }

  else
  {
    v12 = 0;
  }

  sub_1B0391D50(v18, v17);

  MEMORY[0x1E69E5920](v20);
  sub_1B03B2000(v18, v17);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v20);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v12)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = static MailboxName.== infix(_:_:)(v19, v16, a3, a4);

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  sub_1B0391D50(v18, v17);

  MEMORY[0x1E69E5920](v20);

  return v11 & 1;
}

uint64_t sub_1B09896FC(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v24 = a6;
  *(&v24 + 1) = a7;
  v31[0] = 0;
  v31[1] = 0;
  memset(__b, 0, sizeof(__b));
  v37 = a1;
  v38 = a2;
  v36 = a3;
  v33 = a4;
  v34 = a5;
  v35 = v24;
  v32 = 2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30[9] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  sub_1B0990678();
  sub_1B0E45798();
  v26 = 0x200000002;
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F8, &qword_1B0EA10F0);
    sub_1B0E46518();
    memcpy(__dst, v28, sizeof(__dst));
    memcpy(v30, __dst, 0x48uLL);
    if (!v30[3])
    {
      break;
    }

    v14 = v30[1];
    v15 = v30[2];
    v16 = v30[3];
    v17 = v30[4];
    v18 = v30[5];
    v19 = v30[8];
    LODWORD(__b[0]) = v30[0];
    __b[1] = v30[1];
    __b[2] = v30[2];
    __b[3] = v30[3];
    __b[4] = v30[4];
    LOWORD(__b[5]) = v30[5];
    __b[6] = v30[6];
    LOBYTE(__b[7]) = v30[7] & 1;
    __b[8] = v30[8];
    sub_1B0714E4C();
    if (sub_1B0E45ED8() & 1) != 0 && (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v13 = static MailboxName.== infix(_:_:)(v16, v17, a1, a2), , (v13))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3350, &unk_1B0EA1138);
      if ((v18 & 1) == 0)
      {
        v10 = v14;
        v11 = v15;
        v12 = v19;
LABEL_10:
        sub_1B0391D50(v10, v11);

        MEMORY[0x1E69E5920](v12);
        sub_1B039E440(v31);
        return 0;
      }

      if (BYTE4(v26) != 2)
      {
        if ((v26 & 0x100000000) == 0)
        {
          v10 = v14;
          v11 = v15;
          v12 = v19;
          goto LABEL_10;
        }

        if (v18)
        {
          LODWORD(v8) = HIDWORD(v26);
          HIDWORD(v8) = HIDWORD(v26);
          goto LABEL_15;
        }

        sub_1B0E46A68();
        __break(1u);
      }

      v32 = v18 & 1;
      LODWORD(v8) = v18 & 1;
      HIDWORD(v8) = v8;
LABEL_15:
      sub_1B0391D50(v14, v15);

      MEMORY[0x1E69E5920](v19);
      v26 = v8;
    }

    else
    {
      sub_1B0391D50(v14, v15);

      MEMORY[0x1E69E5920](v19);
    }
  }

  sub_1B039E440(v31);
  return v26;
}

uint64_t sub_1B0989BEC(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a1;
  v12 = a2;
  v10 = a3;
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a6;
  v9[5] = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9[0] = a6;
  sub_1B07167A8();
  sub_1B0E44588();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  sub_1B09914B4();
  sub_1B0E44FD8();

  sub_1B039E440(v9);
  return v9[1];
}

unint64_t sub_1B0989D8C()
{
  v2 = qword_1EB6DB1C0;
  if (!qword_1EB6DB1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E32C0, &unk_1B0EA10C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB1C0);
    return WitnessTable;
  }

  return v2;
}

char *sub_1B0989E28(uint64_t *a1, char *a2)
{
  v88 = a1;
  v87 = a2;
  v89 = type metadata accessor for InProgressMessageDownload.Completed();
  v90 = *(v89 - 8);
  v91 = v89 - 8;
  if ((*(v90 + 48))(v88, 2))
  {
    v43 = type metadata accessor for MessagesBeingDownloaded.PopResult();
    memcpy(v87, v88, *(*(v43 - 8) + 64));
  }

  else
  {
    v2 = v88;
    v3 = v87;
    *v87 = *v88;
    v85 = v3 + 8;
    v86 = v2 + 1;
    if (*(v2 + 184) == 255)
    {
      memcpy(v85, v86, 0xB1uLL);
    }

    else
    {
      v4 = v88[1];
      v5 = v88[2];
      v6 = v88[3];
      v7 = v88[4];
      v8 = v88[5];
      v9 = v88[6];
      v68 = v88[7];
      v69 = v88[8];
      v70 = v88[9];
      v71 = v88[10];
      v72 = v88[11];
      v73 = v88[12];
      v74 = v88[13];
      v75 = v88[14];
      v76 = v88[15];
      v77 = v88[16];
      v78 = v88[17];
      v79 = v88[18];
      v80 = v88[19];
      v81 = v88[20];
      v82 = v88[21];
      v83 = v88[22];
      v84 = *(v88 + 184);
      v67 = &v45;
      sub_1B0716BB8(v4, v5, v6, v7, v8, v9, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
      v10 = v68;
      v11 = v69;
      v12 = v70;
      v13 = v71;
      v14 = v72;
      v15 = v73;
      v16 = v74;
      v17 = v75;
      v18 = v76;
      v19 = v77;
      v20 = v78;
      v21 = v79;
      v22 = v80;
      v23 = v81;
      v24 = v82;
      v25 = v83;
      v26 = v84;
      v27 = v87;
      *(v87 + 1) = v4;
      *(v27 + 2) = v5;
      *(v27 + 3) = v6;
      *(v27 + 4) = v7;
      *(v27 + 5) = v8;
      *(v27 + 6) = v9;
      *(v27 + 7) = v10;
      *(v27 + 8) = v11;
      *(v27 + 9) = v12;
      *(v27 + 10) = v13;
      *(v27 + 11) = v14;
      *(v27 + 12) = v15;
      *(v27 + 13) = v16;
      *(v27 + 14) = v17;
      *(v27 + 15) = v18;
      *(v27 + 16) = v19;
      *(v27 + 17) = v20;
      *(v27 + 18) = v21;
      *(v27 + 19) = v22;
      *(v27 + 20) = v23;
      *(v27 + 21) = v24;
      *(v27 + 22) = v25;
      v27[184] = v26 & 1;
    }

    __dst = &v87[*(v89 + 24)];
    __src = v88 + *(v89 + 24);
    v65 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 2)
    {
      v28 = sub_1B0E443C8();
      (*(*(v28 - 8) + 16))(__dst, __src);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(__dst, __src, *(*(v65 - 8) + 64));
    }

    v55 = 0;
    v29 = _s31PreviouslyDownloadedMessageDataVMa();
    v56 = *(v29 + 20);
    v57 = *(__src + *(v29 + 20));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v30 = v87;
    v31 = v89;
    v32 = v88;
    *(__dst + v56) = v57;
    v58 = &v30[*(v31 + 28)];
    v59 = v32 + *(v31 + 28);
    v60 = type metadata accessor for MessageHeader();
    v61 = *(v60 - 8);
    v62 = v60 - 8;
    if ((*(v61 + 48))(v59, 1))
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
      memcpy(v58, v59, *(*(v34 - 8) + 64));
    }

    else
    {
      v33 = sub_1B0E443C8();
      (*(*(v33 - 8) + 16))(v58, v59);
      (*(v61 + 56))(v58, 0, 1, v60);
    }

    v35 = v88;
    v36 = v89;
    *&v87[*(v89 + 32)] = *(v88 + *(v89 + 32));
    v46 = *(v36 + 36);
    v47 = *(v35 + *(v36 + 36));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v37 = v89;
    v38 = v88;
    *&v87[v46] = v47;
    v48 = *(v37 + 40);
    v49 = *(v38 + *(v37 + 40));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v39 = v87;
    v40 = v89;
    v41 = v88;
    *&v87[v48] = v49;
    v50 = &v39[*(v40 + 44)];
    v51 = v41 + *(v40 + 44);
    v52 = sub_1B0E443C8();
    v53 = *(v52 - 8);
    v54 = v52 - 8;
    if ((*(v53 + 48))(v51, 1))
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
      memcpy(v50, v51, *(*(v42 - 8) + 64));
    }

    else
    {
      (*(v53 + 16))(v50, v51, v52);
      (*(v53 + 56))(v50, 0, 1, v52);
    }

    (*(v90 + 56))(v87, 0, 2, v89);
  }

  return v87;
}

uint64_t sub_1B098A548(uint64_t a1)
{
  v41 = a1;
  v42 = type metadata accessor for InProgressMessageDownload.Completed();
  if (!(*(*(v42 - 1) + 48))(v41, 2))
  {
    if (*(v41 + 184) != 255)
    {
      v1 = *(v41 + 8);
      v2 = *(v41 + 16);
      v3 = *(v41 + 24);
      v4 = *(v41 + 32);
      v5 = *(v41 + 40);
      v6 = *(v41 + 48);
      v7 = *(v41 + 56);
      v8 = *(v41 + 64);
      v9 = *(v41 + 72);
      v10 = *(v41 + 80);
      v11 = *(v41 + 88);
      v12 = *(v41 + 96);
      v13 = *(v41 + 104);
      v14 = *(v41 + 112);
      v15 = *(v41 + 120);
      v16 = *(v41 + 128);
      v17 = *(v41 + 136);
      v18 = *(v41 + 144);
      v19 = *(v41 + 152);
      v20 = *(v41 + 160);
      v21 = *(v41 + 168);
      v22 = *(v41 + 176);
      v23 = *(v41 + 184);
      v40 = &v31;
      sub_1B075E1EC(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
    }

    v38 = v41 + v42[6];
    _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 2)
    {
      v24 = sub_1B0E443C8();
      (*(*(v24 - 8) + 8))(v38);
    }

    v36 = 0;
    v25 = *(v38 + *(_s31PreviouslyDownloadedMessageDataVMa() + 20));

    v37 = v41 + v42[7];
    v26 = type metadata accessor for MessageHeader();
    if (!(*(*(v26 - 8) + 48))(v37, 1))
    {
      v27 = sub_1B0E443C8();
      (*(*(v27 - 8) + 8))(v37);
    }

    v28 = *(v41 + v42[9]);

    v29 = *(v41 + v42[10]);

    v32 = v41 + v42[11];
    v33 = sub_1B0E443C8();
    v34 = *(v33 - 8);
    v35 = v33 - 8;
    if (!(*(v34 + 48))(v32, 1))
    {
      (*(v34 + 8))(v32, v33);
    }
  }

  return v41;
}

uint64_t sub_1B098A8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 36);
  sub_1B0714E4C();
  result = sub_1B0E45ED8();
  if (result)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v6 = static MailboxName.== infix(_:_:)(v9, v10, a4, a5);

    result = v6;
    if (v6)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
      sub_1B0E454D8();
    }
  }

  return result;
}

uint64_t sub_1B098AA10(uint64_t a1, uint64_t a2, int a3)
{
  memset(__b, 0, sizeof(__b));
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v11 = *(a1 + 32);
  v3 = *(a1 + 36);
  v4 = *(a1 + 40);
  v5 = *(a1 + 41);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v17 = *(a1 + 64);
  LODWORD(__b[0]) = *a1;
  __b[1] = v14;
  __b[2] = v15;
  __b[3] = v16;
  __b[4] = __PAIR64__(v3, v11);
  LOBYTE(__b[5]) = v4;
  BYTE1(__b[5]) = v5;
  __b[6] = v6;
  LOBYTE(__b[7]) = v7 & 1;
  __b[8] = v17;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = static MailboxName.== infix(_:_:)(v16, v11, a2, a3);

  sub_1B03B2000(v14, v15);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v17);
  if (v18)
  {
    sub_1B0714E4C();
    v9 = sub_1B0E45ED8();
  }

  else
  {
    v9 = 0;
  }

  sub_1B0391D50(v14, v15);

  MEMORY[0x1E69E5920](v17);
  return v9 & 1;
}

uint64_t sub_1B098ABE0(const void *a1, uint64_t a2, int a3, int a4)
{
  memcpy(__dst, a1, sizeof(__dst));
  v17 = a1;
  v15 = a2;
  v16 = a3;
  v14 = a4;
  v11 = __dst[3];
  v8 = __dst[4];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = static MailboxName.== infix(_:_:)(v11, v8, a2, a3);

  sub_1B0990C1C(__dst, v13);
  if (v12)
  {
    sub_1B0714E4C();
    v5 = sub_1B0E45ED8();
  }

  else
  {
    v5 = 0;
  }

  sub_1B0990D34(__dst);
  return v5 & 1;
}

uint64_t sub_1B098AD24(uint64_t a1)
{
  v115 = &v144;
  v107 = v139;
  v108 = v133;
  v112 = a1;
  v110 = 0;
  memset(v149, 0, sizeof(v149));
  v119 = 0;
  v143[1] = 0;
  v143[0] = 0;
  v141[1] = 0;
  v141[0] = 0;
  v111 = 0u;
  v138 = 0u;
  v137 = 0u;
  v136 = 0u;
  v135 = 0u;
  v133[1] = 0;
  v133[0] = 0;
  v129 = 0;
  v128 = 0;
  v126 = 0;
  v125 = 0u;
  v124 = 0u;
  v123 = 0u;
  v122 = 0u;
  v113 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v112);
  v114 = v53 - v113;
  *(v3 + 256) = v2;
  *(v3 + 248) = v1;
  v116 = *(v1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v115[28] = v116;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  v117 = v118;
  sub_1B0990678();
  sub_1B0E45798();
  for (i = v119; ; i = v100)
  {
    v106 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F8, &qword_1B0EA10F0);
    sub_1B0E46518();
    v4 = v115;
    *(v115 + 9) = *v115;
    v5 = *(v4 + 1);
    v6 = *(v4 + 2);
    v7 = *(v4 + 3);
    v4[17] = v4[8];
    *(v4 + 15) = v7;
    *(v4 + 13) = v6;
    *(v4 + 11) = v5;
    *(v4 + 19) = *(v4 + 9);
    v8 = *(v4 + 11);
    v9 = *(v4 + 13);
    v10 = *(v4 + 15);
    v4[27] = v4[17];
    *(v4 + 25) = v10;
    *(v4 + 23) = v9;
    *(v4 + 21) = v8;
    if (!v4[22])
    {
      break;
    }

    v103 = v115[20];
    v104 = *(v115 + 21);
    v11 = v115[25];
    v105 = v115[27];
    LODWORD(v122) = v145;
    *(&v122 + 1) = v103;
    v123 = v104;
    *&v124 = v146;
    WORD4(v124) = v147;
    *&v125 = v11;
    BYTE8(v125) = v148;
    v126 = v105;
    v121 = v145;
    sub_1B09918CC();
    if (sub_1B0E45528())
    {
      v12 = v105;
      sub_1B0990DA0();
      v101 = swift_allocError();
      *v13 = 2;
      v102 = sub_1B0E42CC8();

      [v105 finishWithError_];
    }

    v100 = v106;
    sub_1B0391D50(v103, v104);
  }

  v14 = v106;
  sub_1B039E440(v149);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v96 = v53;
  MEMORY[0x1EEE9AC00](v53);
  v97 = &v53[-4];
  v53[-2] = v112;
  v98 = sub_1B0990940();
  sub_1B09909C8();
  sub_1B0E45898();
  v99 = v14;
  if (v14)
  {

    __break(1u);
LABEL_28:

    __break(1u);
    goto LABEL_29;
  }

  v92 = *(v109 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v107 + 57) = v92;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
  v93 = v94;
  sub_1B0990A50();
  sub_1B0E45798();
  for (j = v99; ; j = v87)
  {
    v91 = j;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3310, qword_1B0EA1108);
    sub_1B0E46518();
    v15 = v107;
    v16 = *(v107 + 22);
    v17 = *(v107 + 26);
    v18 = *(v107 + 30);
    *(v107 + 16) = *(v107 + 34);
    *(v15 + 15) = v18;
    *(v15 + 14) = v17;
    *(v15 + 13) = v16;
    v19 = *(v15 + 38);
    v20 = *(v15 + 42);
    v21 = *(v15 + 46);
    *(v15 + 40) = *(v15 + 25);
    *(v15 + 19) = v21;
    *(v15 + 18) = v20;
    *(v15 + 17) = v19;
    v22 = *(v15 + 13);
    v23 = *(v15 + 14);
    v24 = *(v15 + 15);
    *(v15 + 24) = *(v15 + 16);
    *(v15 + 23) = v24;
    *(v15 + 22) = v23;
    *(v15 + 21) = v22;
    v25 = *(v15 + 17);
    v26 = *(v15 + 18);
    v27 = *(v15 + 19);
    *(v15 + 56) = *(v15 + 40);
    *(v15 + 27) = v27;
    *(v15 + 26) = v26;
    *(v15 + 25) = v25;
    if (!*(v15 + 45))
    {
      break;
    }

    v127 = v142[0];
    sub_1B09918CC();
    if (sub_1B0E45528())
    {
      v90 = *(v107 + 56);
      v28 = v90;
      sub_1B0990DA0();
      v88 = swift_allocError();
      *v29 = 2;
      v89 = sub_1B0E42CC8();

      [v90 finishWithError_];
    }

    v87 = v91;
    sub_1B0990D34(v142);
  }

  v30 = v91;
  sub_1B039E440(v143);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v83 = v53;
  MEMORY[0x1EEE9AC00](v53);
  v84 = &v53[-4];
  v53[-2] = v112;
  v85 = sub_1B0990B0C();
  sub_1B0990B94();
  sub_1B0E45898();
  v86 = v30;
  if (v30)
  {
    goto LABEL_28;
  }

  v79 = *(v109 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v107 + 8) = v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C0, &unk_1B0EA10C0);
  v80 = v81;
  sub_1B0990574();
  sub_1B0E45798();
  for (k = v86; ; k = v54)
  {
    v78 = k;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3358, &qword_1B0EA1148);
    sub_1B0E46518();
    v31 = v108;
    v32 = v107;
    v33 = *(v108 + 11);
    v34 = *(v108 + 13);
    v35 = *(v108 + 15);
    *(v108 + 25) = *(v108 + 17);
    *(v31 + 23) = v35;
    *(v31 + 21) = v34;
    *(v31 + 19) = v33;
    v36 = *(v31 + 19);
    v37 = *(v31 + 21);
    v38 = *(v31 + 23);
    *(v32 + 3) = *(v31 + 25);
    *(v32 + 2) = v38;
    *(v32 + 1) = v37;
    *v32 = v36;
    if (!*(v32 + 3))
    {
      break;
    }

    v39 = v108;
    v40 = v139[0];
    v74 = *(v107 + 1);
    v75 = *(v107 + 2);
    v41 = v75;
    v76 = *(v107 + 3);
    v42 = v76;
    v43 = v139[8];
    v44 = v139[9];
    v45 = *(v107 + 5);
    v46 = v140;
    v77 = *(v107 + 7);
    v47 = v77;
    LODWORD(v135) = v139[0];
    v108[4] = v74;
    v39[5] = v41;
    v39[6] = v42;
    *&v137 = __PAIR64__(v44, v43);
    v39[8] = v45;
    LOBYTE(v138) = v46;
    v39[10] = v47;
    v134 = v40;
    sub_1B09918CC();
    if (sub_1B0E45528())
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v132 = v77;
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C8, &qword_1B0EA10D0);
      sub_1B098FD6C();
      sub_1B0E45798();
      for (m = v78; ; m = v58)
      {
        v69 = m;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32D8, &qword_1B0EA10D8);
        sub_1B0E46518();
        v70 = v130;
        v71 = v131;
        if (v130)
        {
          v67 = v70;
          v68 = v71;
          v64 = v71;
          v63 = v70;
          v48 = swift_allocObject();
          v49 = v64;
          *(v48 + 16) = v63;
          *(v48 + 24) = v49;
          v65 = sub_1B098FE40;
          v66 = v48;
        }

        else
        {
          v65 = 0;
          v66 = 0;
        }

        v61 = v66;
        v62 = v65;
        if (!v65)
        {
          break;
        }

        v59 = v62;
        v60 = v61;
        v57 = v61;
        v56 = v62;
        v58 = v69;
        v128 = v62;
        v129 = v61;

        v50 = type metadata accessor for Message(0);
        (*(*(v50 - 8) + 56))(v114, 1);
        v56(v114);
        sub_1B07AF920(v114);
      }

      sub_1B039E440(v133);
      v55 = v69;
    }

    else
    {
      v55 = v78;
    }

    v54 = v55;
    sub_1B0391D50(v74, v75);
  }

  v51 = v78;
  sub_1B039E440(v141);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v53[1] = v53;
  MEMORY[0x1EEE9AC00](v53);
  v53[2] = &v53[-4];
  v53[-2] = v112;
  v53[3] = sub_1B09917BC();
  sub_1B0991844();
  sub_1B0E45898();
  if (!v51)
  {
  }

LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_1B098B800(int *a1)
{
  v2 = *a1;
  sub_1B09918CC();
  return sub_1B0E45528() & 1;
}

BOOL sub_1B098B868(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  memset(__b, 0, sizeof(__b));
  v19 = *(a1 + 8);
  v18 = *(a1 + 16);
  v20 = *(a1 + 24);
  v16 = *(a1 + 32);
  v5 = *(a1 + 36);
  v17 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v21 = *(a1 + 64);
  LODWORD(__b[0]) = *a1;
  __b[1] = v19;
  __b[2] = v18;
  __b[3] = v20;
  __b[4] = __PAIR64__(v5, v16);
  LOBYTE(__b[5]) = v17;
  BYTE1(__b[5]) = v6;
  __b[6] = v7;
  LOBYTE(__b[7]) = v8 & 1;
  __b[8] = v21;
  sub_1B0714E4C();
  v23 = sub_1B0E45ED8();
  sub_1B03B2000(v19, v18);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v21);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v23)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = static MailboxName.== infix(_:_:)(v20, v16, a3, a4);

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  sub_1B0391D50(v19, v18);

  MEMORY[0x1E69E5920](v21);

  sub_1B03B2000(v19, v18);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v21);
  v10 = (v12 & 1) != 0 && sub_1B06E5FB4(v17 & 1, a5 & 1);
  sub_1B0391D50(v19, v18);

  MEMORY[0x1E69E5920](v21);
  return v10;
}

void *sub_1B098BAF0@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>)
{
  v14 = __PAIR64__(a4, a3);
  memset(__b, 0, sizeof(__b));
  v28 = a1;
  v26 = a2;
  v25 = HIDWORD(v14);
  v27 = v14;
  v24 = a5 & 1;
  v23 = a6;
  v21 = a7;
  v22 = a8 & 1;
  LODWORD(__b[0]) = a1;
  __b[1] = sub_1B098C514(a1);
  __b[2] = v9;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[3] = a2;
  __b[4] = v14;
  LOBYTE(__b[5]) = a5 & 1;
  __b[6] = MessageSize.init(rawValue:)(a7, a8 & 1);
  LOBYTE(__b[7]) = v10 & 1;
  BYTE1(__b[5]) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3360, &qword_1B0EA1150);
  sub_1B071952C();
  __b[8] = sub_1B098C644();
  memcpy(__dst, __b, sizeof(__dst));
  sub_1B0990700(__dst, v20);

  sub_1B09907DC(__b);
  return memcpy(a9, __dst, 0x48uLL);
}

uint64_t sub_1B098BCA4(void (*a1)(void, void, void), uint64_t a2)
{
  v3 = v2;
  v9 = v3;
  v8 = *(v3 + 96);
  v11 = *(v3 + 104);

  v5 = swift_allocObject();
  v5[2] = v8;
  v5[3] = v11;
  v5[4] = a1;
  v5[5] = a2;
  v6 = *(v9 + 104);
  *(v9 + 96) = sub_1B0991944;
  *(v9 + 104) = v5;

  a1(*(v9 + 72), *(v9 + 80) & 1, *(v9 + 88));
}

void *sub_1B098BDF8@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = __PAIR64__(a4, a3);
  memset(__b, 0, sizeof(__b));
  v38 = a1;
  v36 = a2;
  v35 = HIDWORD(v18);
  v37 = v18;
  v34 = a5;
  v33 = a6;
  v31 = a7;
  v32 = a8 & 1;
  v29 = a10;
  v30 = a11;
  LODWORD(__b[0]) = a1;
  __b[1] = sub_1B098C514(a1);
  __b[2] = v11;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[3] = a2;
  __b[4] = v18;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[5] = a5;
  LOBYTE(__b[6]) = a6;
  __b[7] = MessageSize.init(rawValue:)(a7, a8 & 1);
  LOBYTE(__b[8]) = v12 & 1;
  sub_1B0975AD4();
  v26 = v13;
  v27 = v14;
  v28 = v15;
  __b[9] = v13;
  LOBYTE(__b[10]) = v14 & 1;
  __b[11] = v15;

  __b[12] = a10;
  __b[13] = a11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3360, &qword_1B0EA1150);
  sub_1B039A494();
  __b[14] = sub_1B098C644();
  memcpy(__dst, __b, sizeof(__dst));
  sub_1B0990C1C(__dst, v25);

  sub_1B0990D34(__b);
  return memcpy(a9, __dst, 0x78uLL);
}

void *sub_1B098C054@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v16 = __PAIR64__(a4, a3);
  memset(__b, 0, sizeof(__b));
  v32 = a1;
  v30 = a2;
  v29 = HIDWORD(v16);
  v31 = v16;
  v27 = a5;
  v28 = a6 & 1;
  v25 = a7;
  v26 = a8;
  LODWORD(__b[0]) = a1;
  __b[1] = sub_1B098C514(a1);
  __b[2] = v9;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[3] = a2;
  __b[4] = v16;
  __b[5] = MessageSize.init(rawValue:)(a5, a6 & 1);
  LOBYTE(__b[6]) = v10 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3368, &qword_1B0EA1158);
  v20 = sub_1B0E46A48();
  v19 = v11;

  v12 = swift_allocObject();
  *(v12 + 16) = a7;
  *(v12 + 24) = a8;
  *v19 = sub_1B0991330;
  v19[1] = v12;
  sub_1B0394964();
  __b[7] = v20;
  memcpy(__dst, __b, sizeof(__dst));
  sub_1B0991278(__dst, v24);

  sub_1B098FDF4(__b);
  return memcpy(a9, __dst, 0x40uLL);
}

uint64_t sub_1B098C26C(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, void, uint64_t), uint64_t a5, void (*a6)(uint64_t, void, uint64_t))
{

  a4(a1, a2 & 1, a3);

  a6(a1, a2 & 1, a3);
}

uint64_t sub_1B098C3B0()
{
  v2 = *(v0 + 8);
  sub_1B03B2000(v2, *(v0 + 16));
  return v2;
}

uint64_t sub_1B098C3E8(uint64_t a1, unint64_t a2)
{
  sub_1B03B2000(a1, a2);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  sub_1B0391D50(v3, v4);
  return sub_1B0391D50(a1, a2);
}

uint64_t sub_1B098C438()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B098C470(uint64_t a1, int a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = *(v2 + 24);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1B098C4F0()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56) & 1;
  return result;
}

uint64_t sub_1B098C500(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t sub_1B098C514(int a1)
{
  v10 = 0;
  v11 = 0;
  v9[0] = 0;
  v9[1] = a1;
  v9[0] = UInt32.init(_:)();
  sub_1B098F41C(v9, sub_1B03B1F98, 0, MEMORY[0x1E69E7668], MEMORY[0x1E69E73E0], MEMORY[0x1E6969080], v6, &v7);
  v3 = v7;
  v4 = v8;
  sub_1B03B2000(v7, v8);
  v10 = OpaquePersistedMessageIdentifier.init(rawValue:)(v3, v4);
  v11 = v1;
  sub_1B0391D50(v3, v4);
  v5 = v10;
  sub_1B03B2000(v10, v11);
  sub_1B075D3E8(&v10);
  return v5;
}

uint64_t sub_1B098C68C()
{
  v2 = *(v0 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B098C6B8(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_1B098C6FC()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80) & 1;
  v3 = *(v0 + 88);
  return result;
}

uint64_t sub_1B098C734(uint64_t result, char a2, uint64_t a3)
{
  *(v3 + 72) = result;
  *(v3 + 80) = a2 & 1;
  *(v3 + 88) = a3;
  return result;
}

uint64_t sub_1B098C76C()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  return v2;
}

uint64_t sub_1B098C7A4(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_1B098C7F0()
{
  v2 = *(v0 + 112);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B098C824(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = *(v1 + 112);
  *(v1 + 112) = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B098C878()
{
  v2 = *(v0 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B098C8A4(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_1B098C8E0(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a1;
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18[0] = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  v4 = sub_1B0990678();
  sub_1B039CA88(sub_1B098CB6C, 0, v14, &type metadata for DownloadRequest, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v15);
  sub_1B039E440(v18);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
  v5 = sub_1B0990A50();
  sub_1B039CA88(sub_1B098CC6C, 0, v10, &type metadata for DownloadRequest, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v15);
  sub_1B039E440(&v17);
  sub_1B0E45238();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C0, &unk_1B0EA10C0);
  v6 = sub_1B0990574();
  sub_1B039CA88(sub_1B098CD6C, 0, v9, &type metadata for DownloadRequest, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v15);
  sub_1B039E440(&v16);
  v8 = sub_1B0E45238();

  return v8;
}

void *sub_1B098CB6C@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B098CBD4(v4);
  return memcpy(a2, v4, 0x31uLL);
}

void *sub_1B098CBD4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 3);
  v5 = v1[8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = *(v1 + 1);
  v7 = *(v1 + 2);
  sub_1B03B2000(v6, v7);
  DownloadRequest.init(id:mailbox:message:kind:qos:)(v3, v4, v5, v6, v7, 0, *(v1 + 41), v9);
  return memcpy(a1, v9, 0x31uLL);
}

void *sub_1B098CC6C@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B098CCD4(v4);
  return memcpy(a2, v4, 0x31uLL);
}

void *sub_1B098CCD4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 3);
  v5 = v1[8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = *(v1 + 1);
  v7 = *(v1 + 2);
  sub_1B03B2000(v6, v7);
  DownloadRequest.init(id:mailbox:message:kind:qos:)(v3, v4, v5, v6, v7, 0, *(v1 + 48), v9);
  return memcpy(a1, v9, 0x31uLL);
}

void *sub_1B098CD6C@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B098CDD4(v4);
  return memcpy(a2, v4, 0x31uLL);
}

void *sub_1B098CDD4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 3);
  v5 = v1[8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = *(v1 + 1);
  v7 = *(v1 + 2);
  sub_1B03B2000(v6, v7);
  DownloadRequest.init(id:mailbox:message:kind:qos:)(v3, v4, v5, v6, v7, 0, 1, v9);
  return memcpy(a1, v9, 0x31uLL);
}

void sub_1B098CE6C(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v17[1] = a1;
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17[0] = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  v5 = sub_1B0990678();
  v9 = sub_1B039CA88(sub_1B098D020, 0, v14, &unk_1F26F2158, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v15);
  sub_1B039E440(v17);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
  v6 = sub_1B0990A50();
  sub_1B039CA88(sub_1B098D300, 0, v10, &unk_1F26F2278, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v15);
  sub_1B039E440(&v16);
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v9);
  *a5 = v7;
  a5[1] = v8;
}

void *sub_1B098D020@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B0990700(__dst, v4);
  sub_1B098D090(__dst, v5);
  return memcpy(a2, v5, 0x29uLL);
}

void *sub_1B098D090@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, 0x29uLL);
  v20 = a1;
  WORD2(__b[3]) = 514;
  __b[4] = 0;
  LOBYTE(__b[5]) = 1;
  LODWORD(__b[0]) = UInt32.init(_:)(*a1);
  v8 = *(a1 + 3);
  v7 = a1[8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = MailboxName.debugDescription.getter();
  v10 = v2;

  v18 = v9;
  v19 = v10;
  sub_1B03F5BE0();
  sub_1B0E45738();
  v11 = sub_1B0E44EC8();
  v12 = v3;

  __b[1] = v11;
  __b[2] = v12;
  v25 = a1[9];
  v17[0] = v25;
  v13 = sub_1B07467B8();
  v4 = sub_1B041C1E8();
  BinaryInteger.init<A>(_:)(v17, MEMORY[0x1E69E7668], &type metadata for UID, v13, v4);
  LODWORD(__b[3]) = v17[1];
  v24 = a1[10] & 1;
  v26 = v24 & 1;
  if (v24)
  {
    BYTE4(__b[3]) = 1;
  }

  else
  {
    BYTE5(__b[3]) = 1;
  }

  v22 = *(a1 + 6);
  v23 = *(a1 + 56);
  v27 = v22;
  v28 = v23;
  if ((v23 & 1) == 0)
  {
    __b[4] = v27;
    LOBYTE(__b[5]) = 0;
  }

  memcpy(__dst, __b, 0x29uLL);
  sub_1B0991998(__dst, v15);
  sub_1B09907DC(a1);
  sub_1B043C118(__b);
  return memcpy(a2, __dst, 0x29uLL);
}

void *sub_1B098D300@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B0990C1C(__dst, v4);
  sub_1B098D378(__dst, v5);
  return memcpy(a2, v5, 0x30uLL);
}

uint64_t sub_1B098D378@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v30 = a1;
  v16 = UInt32.init(_:)(*a1);
  LODWORD(__b[0]) = v16;
  v11 = *(a1 + 3);
  v10 = a1[8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = MailboxName.debugDescription.getter();
  v13 = v2;

  v28 = v12;
  v29 = v13;
  sub_1B03F5BE0();
  sub_1B0E45738();
  v17 = sub_1B0E44EC8();
  v18 = v3;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[1] = v17;
  __b[2] = v18;
  v33 = a1[9];
  v26 = v33;
  v14 = sub_1B07467B8();
  v4 = sub_1B041C1E8();
  BinaryInteger.init<A>(_:)(&v26, MEMORY[0x1E69E7668], &type metadata for UID, v14, v4);
  v19 = v27;
  LODWORD(__b[3]) = v27;
  v25[0] = sub_1B0E46A28();
  v25[1] = v5;
  v6 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v6);

  v32 = *(a1 + 5);
  sub_1B074E7A8(&v32, &v24);
  v23 = v32;
  sub_1B0E469E8();
  sub_1B039E440(&v23);
  v7 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v7);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v25);
  v22 = sub_1B0E44C88();
  v20 = v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[4] = v22;
  __b[5] = v20;
  sub_1B0990D34(a1);
  sub_1B0991A10(__b);
  result = v22;
  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v22;
  *(a2 + 40) = v20;
  return result;
}

uint64_t sub_1B098D65C()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40) & 1;
  return result;
}

uint64_t sub_1B098D66C(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t sub_1B098D680(uint64_t a1, uint64_t a2)
{
  v24[2] = a1;
  v24[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24[0] = sub_1B0E44838();
  v24[1] = v2;
  v23[2] = a1;
  v23[3] = a2;
  v18 = MEMORY[0x1B2726DE0](v24[0], v2, a1, a2);
  sub_1B03B1198(v24);
  if (v18)
  {

    v25 = 0;
    v15 = 0;
LABEL_14:

    return v15;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23[0] = sub_1B0E44838();
  v23[1] = v3;
  v22[2] = a1;
  v22[3] = a2;
  v14 = MEMORY[0x1B2726DE0](v23[0], v3, a1, a2);
  sub_1B03B1198(v23);
  if (v14)
  {

    v25 = 1;
    v15 = 1;
    goto LABEL_14;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22[0] = sub_1B0E44838();
  v22[1] = v4;
  v21[2] = a1;
  v21[3] = a2;
  v13 = MEMORY[0x1B2726DE0](v22[0], v4, a1, a2);
  sub_1B03B1198(v22);
  if (v13)
  {

    v25 = 2;
    v15 = 2;
    goto LABEL_14;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v21[0] = sub_1B0E44838();
  v21[1] = v5;
  v20[2] = a1;
  v20[3] = a2;
  v12 = MEMORY[0x1B2726DE0](v21[0], v5, a1, a2);
  sub_1B03B1198(v21);
  if (v12)
  {

    v25 = 3;
    v15 = 3;
    goto LABEL_14;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20[0] = sub_1B0E44838();
  v20[1] = v6;
  v19[2] = a1;
  v19[3] = a2;
  v11 = MEMORY[0x1B2726DE0](v20[0], v6, a1, a2);
  sub_1B03B1198(v20);
  if (v11)
  {

    v25 = 4;
    v15 = 4;
    goto LABEL_14;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19[0] = sub_1B0E44838();
  v19[1] = v7;
  v10 = MEMORY[0x1B2726DE0](v19[0], v7, a1, a2);
  sub_1B03B1198(v19);
  if (v10)
  {

    v25 = 5;
    v15 = 5;
    goto LABEL_14;
  }

  return 6;
}

uint64_t sub_1B098DC58(uint64_t a1)
{
  v27 = a1;
  v46 = 0;
  v45 = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33D0, &qword_1B0EA1C98);
  v28 = *(v35 - 8);
  v29 = v35 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v33 = v12 - v30;
  v46 = v2;
  v45 = v1;
  v31 = v2[3];
  v32 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v31);
  sub_1B0991AC4();
  sub_1B0E46D48();
  v3 = v36;
  v4 = *v34;
  v44 = 0;
  sub_1B0E46988();
  v37 = v3;
  v38 = v3;
  if (v3)
  {
    v13 = v38;
    result = (*(v28 + 8))(v33, v35);
    v14 = v13;
  }

  else
  {
    v23 = *(v34 + 1);
    v24 = *(v34 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v43 = 1;
    sub_1B0E46928();
    v25 = 0;
    v26 = 0;

    v5 = v25;
    v6 = v34[6];
    v42 = 2;
    sub_1B0E46988();
    v21 = v5;
    v22 = v5;
    if (v5)
    {
      v12[3] = v22;
    }

    else
    {
      v7 = *(v34 + 28);
      v41 = 3;
      sub_1B0E468D8();
      v19 = 0;
      v20 = 0;
      v8 = *(v34 + 29);
      v40 = 4;
      sub_1B0E468D8();
      v17 = 0;
      v18 = 0;
      v9 = *(v34 + 4);
      v10 = *(v34 + 40);
      v39 = 5;
      sub_1B0E468E8();
      v15 = 0;
      v16 = 0;
    }

    return (*(v28 + 8))(v33, v35);
  }

  return result;
}

uint64_t sub_1B098E104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B098D680(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B098E204(uint64_t a1, uint64_t a2)
{
  v18[2] = a1;
  v18[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18[0] = sub_1B0E44838();
  v18[1] = v2;
  v17[2] = a1;
  v17[3] = a2;
  v14 = MEMORY[0x1B2726DE0](v18[0], v2, a1, a2);
  sub_1B03B1198(v18);
  if (v14)
  {

    v19 = 0;
    v11 = 0;
LABEL_10:

    return v11;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17[0] = sub_1B0E44838();
  v17[1] = v3;
  v16[2] = a1;
  v16[3] = a2;
  v10 = MEMORY[0x1B2726DE0](v17[0], v3, a1, a2);
  sub_1B03B1198(v17);
  if (v10)
  {

    v19 = 1;
    v11 = 1;
    goto LABEL_10;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16[0] = sub_1B0E44838();
  v16[1] = v4;
  v15[2] = a1;
  v15[3] = a2;
  v9 = MEMORY[0x1B2726DE0](v16[0], v4, a1, a2);
  sub_1B03B1198(v16);
  if (v9)
  {

    v19 = 2;
    v11 = 2;
    goto LABEL_10;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15[0] = sub_1B0E44838();
  v15[1] = v5;
  v8 = MEMORY[0x1B2726DE0](v15[0], v5, a1, a2);
  sub_1B03B1198(v15);
  if (v8)
  {

    v19 = 3;
    v11 = 3;
    goto LABEL_10;
  }

  return 4;
}

BOOL sub_1B098E4F8(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_1B098E854(uint64_t a1)
{
  v21 = a1;
  v38 = 0;
  v37 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33D8, &unk_1B0EA1CA0);
  v22 = *(v29 - 8);
  v23 = v29 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v27 = v8 - v24;
  v38 = v2;
  v37 = v1;
  v25 = v2[3];
  v26 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v25);
  sub_1B0991BBC();
  sub_1B0E46D48();
  v3 = v30;
  v4 = *v28;
  v36 = 0;
  sub_1B0E46988();
  v31 = v3;
  v32 = v3;
  if (v3)
  {
    v9 = v32;
    result = (*(v22 + 8))(v27, v29);
    v10 = v9;
  }

  else
  {
    v17 = *(v28 + 1);
    v18 = *(v28 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v35 = 1;
    sub_1B0E46928();
    v19 = 0;
    v20 = 0;

    v5 = v19;
    v6 = v28[6];
    v34 = 2;
    sub_1B0E46988();
    v15 = v5;
    v16 = v5;
    if (v5)
    {
      v8[1] = v16;
    }

    else
    {
      v11 = *(v28 + 4);
      v12 = *(v28 + 5);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v33 = 3;
      sub_1B0E46928();
      v13 = 0;
      v14 = 0;
    }

    return (*(v22 + 8))(v27, v29);
  }

  return result;
}

uint64_t sub_1B098EBD0(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12[0] = sub_1B0E44838();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x1B2726DE0](v12[0], v2, a1, a2);
  sub_1B03B1198(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[0] = sub_1B0E44838();
  v11[1] = v3;
  v6 = MEMORY[0x1B2726DE0](v11[0], v3, a1, a2);
  sub_1B03B1198(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_1B098EDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B098E204(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B098EE18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B098E4E0();
  *a1 = result;
  return result;
}

uint64_t sub_1B098F000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v19 = a2;
  v11 = a3;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33B8, &qword_1B0EA1C80);
  v13 = *(v21 - 8);
  v14 = v21 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v18 = v9 - v15;
  v33 = v3;
  v31 = v4;
  v32 = v5;
  v16 = v3[3];
  v17 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v16);
  sub_1B0991CB4();
  sub_1B0E46D48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24 = &v30;
  v30 = v19;
  v20 = &v29;
  v29 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33C0, &qword_1B0EA1C88);
  sub_1B09938B0();
  v6 = v23;
  sub_1B0E46958();
  v25 = v6;
  v26 = v6;
  if (v6)
  {
    v9[2] = v26;
    sub_1B039E440(&v30);
    return (*(v13 + 8))(v18, v21);
  }

  else
  {
    sub_1B039E440(&v30);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9[6] = &v28;
    v28 = v11;
    v9[4] = &v27;
    v27 = 1;
    v9[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33C8, &qword_1B0EA1C90);
    sub_1B09939C4();
    v7 = v25;
    sub_1B0E46958();
    v9[7] = v7;
    v10 = v7;
    if (v7)
    {
      v9[1] = v10;
    }

    sub_1B039E440(&v28);
    return (*(v13 + 8))(v18, v21);
  }
}

uint64_t sub_1B098F330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B098EBD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B098F41C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_1B0E466C8();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_1B098F5E4(unsigned __int8 a1, uint64_t a2, char a3)
{
  v25[2] = a1;
  v25[3] = a2;
  v26 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a1 == 2)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07167A8();
    v18 = sub_1B0E454F8();

    if (v18)
    {
      v17 = sub_1B0E44838();
    }

    else
    {
      v17 = sub_1B098FA50(a1, a2, a3 & 1);
    }

    return v17;
  }

  else if (a1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07167A8();
    v15 = sub_1B0E454F8();

    if (v15)
    {
      v14 = sub_1B0E44838();
    }

    else
    {
      v23[0] = sub_1B0E46A28();
      v23[1] = v3;
      v4 = sub_1B0E44838();
      MEMORY[0x1B2728B30](v4);

      v22[0] = sub_1B098FA50(a1, a2, a3 & 1);
      v22[1] = v5;
      sub_1B0E46A08();
      sub_1B03B1198(v22);
      v6 = sub_1B0E44838();
      MEMORY[0x1B2728B30](v6);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1198(v23);
      v14 = sub_1B0E44C88();
    }

    return v14;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07167A8();
    v13 = sub_1B0E454F8();

    if (v13)
    {
      v12 = sub_1B0E44838();
    }

    else
    {
      v25[0] = sub_1B0E46A28();
      v25[1] = v7;
      v8 = sub_1B0E44838();
      MEMORY[0x1B2728B30](v8);

      v24[0] = sub_1B098FA50(a1, a2, a3 & 1);
      v24[1] = v9;
      sub_1B0E46A08();
      sub_1B03B1198(v24);
      v10 = sub_1B0E44838();
      MEMORY[0x1B2728B30](v10);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1198(v25);
      v12 = sub_1B0E44C88();
    }

    return v12;
  }
}

uint64_t sub_1B098FA50(unsigned __int8 a1, uint64_t a2, char a3)
{
  v18[2] = a1;
  v18[3] = a2;
  v19 = a3;
  v18[0] = sub_1B0E46A28();
  v18[1] = v3;
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  v5 = sub_1B07F37E8();
  v9 = sub_1B039CA88(sub_1B07AA064, 0, v13, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v14);
  sub_1B039E440(&v17);
  v16 = v9;
  sub_1B0E44838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v10 = sub_1B0E448E8();
  v11 = v6;

  sub_1B039E440(&v16);
  v15[0] = v10;
  v15[1] = v11;
  sub_1B0E46A08();
  sub_1B03B1198(v15);
  v7 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v7);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v18);
  return sub_1B0E44C88();
}

unint64_t sub_1B098FD6C()
{
  v2 = qword_1EB6E32D0;
  if (!qword_1EB6E32D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E32C8, &qword_1B0EA10D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E32D0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B098FDF4(void *a1)
{
  sub_1B0391D50(a1[1], a1[2]);
  v1 = a1[3];

  v2 = a1[7];

  return a1;
}

char *sub_1B098FEB0(char *a1, char *a2)
{
  v8 = type metadata accessor for MailboxPersistenceHelper.DownloadResult();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32E0, &qword_1B0EA10E0);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = type metadata accessor for InProgressMessageDownload.EMLX();
    memcpy(&a2[*(v3 + 20)], &a1[*(v3 + 20)], 0x28uLL);
    *&a2[*(v8 + 20)] = *&a1[*(v8 + 20)];
    a2[*(v8 + 24)] = a1[*(v8 + 24)] & 1;
    (*(v9 + 56))();
  }

  return a2;
}

char *sub_1B0990044(char *a1, char *a2)
{
  v17 = type metadata accessor for MailboxPersistenceHelper.DownloadResult();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32E0, &qword_1B0EA10E0);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = type metadata accessor for InProgressMessageDownload.EMLX();
    v11 = &a2[*(v3 + 20)];
    v10 = &a1[*(v3 + 20)];
    v6 = *v10;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *v11 = v6;
    v7 = *(v10 + 1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v11 + 1) = v7;
    v8 = *(v10 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v11 + 2) = v8;
    v9 = *(v10 + 3);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v11 + 3) = v9;
    v12 = *(v10 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v11 + 4) = v12;
    v13 = *(v17 + 20);
    v14 = *&a1[v13];
    MEMORY[0x1E69E5928](v14);
    *&a2[v13] = v14;
    a2[*(v17 + 24)] = a1[*(v17 + 24)];
    (*(v18 + 56))();
  }

  return a2;
}

uint64_t sub_1B099027C()
{
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32E0, &qword_1B0EA10E0) - 8);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v15 + *(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for InProgressMessageDownload.Completed() - 8);
  v16 = (((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 12 + *(v12 + 80)) & ~*(v12 + 80);
  v13 = v16 + *(v12 + 64);
  v1 = _s6LoggerVMa_1();
  v2 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v13 + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v4 = (v3 + *(*(v1 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v14);
  v6 = *(v0 + v2);
  v7 = *(v0 + v2 + 8);
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);

  return sub_1B093840C((v0 + v15), v5, v6, v7, v0 + v16, v0 + v3, v8, v9);
}