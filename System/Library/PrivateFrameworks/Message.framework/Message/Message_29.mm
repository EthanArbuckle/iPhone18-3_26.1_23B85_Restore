uint64_t sub_1B085896C@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v4 = sub_1B082A818(a1);
  if (!v4)
  {
    return sub_1B0825490(a2);
  }

  sub_1B08259E4([v4 downloadedMessageData], a2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1B0858A40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B0858A94(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(type metadata accessor for InProgressMessageDownload.EMLX() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v5);
  v4 = v3 - v3[0];
  sub_1B07AF800(v1, v3 - v3[0]);
  sub_1B0874BC0(v4, v3[1]);
  return sub_1B07AF320(v5);
}

uint64_t sub_1B0858B2C()
{
  v2 = *(v0 + *(type metadata accessor for MailboxPersistenceHelper.DownloadResult() + 20));
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B0858B6C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = (v1 + *(type metadata accessor for MailboxPersistenceHelper.DownloadResult() + 20));
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x1E69E5920](v3);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B0858BFC(unsigned int a1)
{
  v2 = type metadata accessor for MailboxPersistenceHelper.DownloadResult();
  result = a1;
  *(v1 + *(v2 + 24)) = a1 & 1;
  return result;
}

uint64_t sub_1B0858C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1B07AF768(a1, a4);
  result = type metadata accessor for MailboxPersistenceHelper.DownloadResult();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3 & 1;
  return result;
}

uint64_t sub_1B0858C94(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v891 = v3;
  v892 = v2;
  v1125 = v4;
  v1126 = v5;
  v1122 = v6;
  v7 = v1;
  v8 = v2;
  v1123 = v7;
  v893 = sub_1B074E050;
  v894 = sub_1B07B073C;
  v895 = sub_1B0874D38;
  v896 = sub_1B0394C30;
  v897 = sub_1B0394C24;
  v898 = sub_1B074DFFC;
  v899 = sub_1B039BA88;
  v900 = sub_1B039BB94;
  v901 = sub_1B0394C24;
  v902 = sub_1B039BBA0;
  v903 = sub_1B039BC08;
  v904 = 0x786F626C69616DLL;
  v905 = sub_1B06BA324;
  v906 = sub_1B074E0E4;
  v907 = sub_1B039BCF8;
  v908 = sub_1B07AB020;
  v909 = sub_1B039BC08;
  v910 = sub_1B0874D44;
  v911 = sub_1B039BCF8;
  v912 = sub_1B0398F5C;
  v913 = sub_1B0398F5C;
  v914 = sub_1B0399178;
  v915 = sub_1B0398F5C;
  v916 = sub_1B0398F5C;
  v917 = sub_1B039BA94;
  v918 = sub_1B0398F5C;
  v919 = sub_1B0398F5C;
  v920 = sub_1B0399178;
  v921 = sub_1B0398F5C;
  v922 = sub_1B0398F5C;
  v923 = sub_1B03991EC;
  v924 = sub_1B0398F5C;
  v925 = sub_1B0398F5C;
  v926 = sub_1B03993BC;
  v927 = sub_1B0398F5C;
  v928 = sub_1B0398F5C;
  v929 = sub_1B039BCEC;
  v930 = sub_1B0398F5C;
  v931 = sub_1B0398F5C;
  v932 = sub_1B03991EC;
  v933 = sub_1B0398F5C;
  v934 = sub_1B0398F5C;
  v935 = sub_1B039BCEC;
  v936 = sub_1B074E050;
  v937 = sub_1B07B073C;
  v938 = sub_1B0874D38;
  v939 = sub_1B0394C24;
  v940 = sub_1B074DFFC;
  v941 = sub_1B039BA88;
  v942 = sub_1B0394C24;
  v943 = sub_1B039BBA0;
  v944 = sub_1B039BC08;
  v945 = sub_1B06BA324;
  v946 = sub_1B074E0E4;
  v947 = sub_1B039BCF8;
  v948 = sub_1B07AB020;
  v949 = sub_1B039BC08;
  v950 = sub_1B0874D44;
  v951 = sub_1B039BCF8;
  v952 = sub_1B0874E10;
  v953 = sub_1B03B0DF8;
  v954 = sub_1B0398F5C;
  v955 = sub_1B0398F5C;
  v956 = sub_1B0399178;
  v957 = sub_1B0398F5C;
  v958 = sub_1B0398F5C;
  v959 = sub_1B039BA94;
  v960 = sub_1B0398F5C;
  v961 = sub_1B0398F5C;
  v962 = sub_1B0399178;
  v963 = sub_1B0398F5C;
  v964 = sub_1B0398F5C;
  v965 = sub_1B03991EC;
  v966 = sub_1B0398F5C;
  v967 = sub_1B0398F5C;
  v968 = sub_1B03993BC;
  v969 = sub_1B0398F5C;
  v970 = sub_1B0398F5C;
  v971 = sub_1B039BCEC;
  v972 = sub_1B0398F5C;
  v973 = sub_1B0398F5C;
  v974 = sub_1B03991EC;
  v975 = sub_1B0398F5C;
  v976 = sub_1B0398F5C;
  v977 = sub_1B039BCEC;
  v978 = sub_1B0398F5C;
  v979 = sub_1B0398F5C;
  v980 = sub_1B0399260;
  v981 = sub_1B074E050;
  v982 = sub_1B07B073C;
  v983 = sub_1B0874F3C;
  v984 = sub_1B0874FB0;
  v985 = sub_1B0875024;
  v986 = sub_1B0875098;
  v987 = sub_1B0394C24;
  v988 = sub_1B074DFFC;
  v989 = sub_1B039BA88;
  v990 = sub_1B0394C24;
  v991 = sub_1B039BBA0;
  v992 = sub_1B039BC08;
  v993 = sub_1B06BA324;
  v994 = sub_1B074E0E4;
  v995 = sub_1B039BCF8;
  v996 = sub_1B07AB020;
  v997 = sub_1B039BC08;
  v998 = sub_1B0874E74;
  v999 = sub_1B03B0DF8;
  v1000 = sub_1B0874ED8;
  v1001 = sub_1B03B0DF8;
  v1002 = sub_1B03FB320;
  v1003 = sub_1B039BCF8;
  v1004 = sub_1B03FB320;
  v1005 = sub_1B039BCF8;
  v1006 = sub_1B03FB320;
  v1007 = sub_1B039BCF8;
  v1008 = sub_1B03FB320;
  v1009 = sub_1B039BCF8;
  v1010 = sub_1B0398F5C;
  v1011 = sub_1B0398F5C;
  v1012 = sub_1B0399178;
  v1013 = sub_1B0398F5C;
  v1014 = sub_1B0398F5C;
  v1015 = sub_1B039BA94;
  v1016 = sub_1B0398F5C;
  v1017 = sub_1B0398F5C;
  v1018 = sub_1B0399178;
  v1019 = sub_1B0398F5C;
  v1020 = sub_1B0398F5C;
  v1021 = sub_1B03991EC;
  v1022 = sub_1B0398F5C;
  v1023 = sub_1B0398F5C;
  v1024 = sub_1B03993BC;
  v1025 = sub_1B0398F5C;
  v1026 = sub_1B0398F5C;
  v1027 = sub_1B039BCEC;
  v1028 = sub_1B0398F5C;
  v1029 = sub_1B0398F5C;
  v1030 = sub_1B03991EC;
  v1031 = sub_1B0398F5C;
  v1032 = sub_1B0398F5C;
  v1033 = sub_1B0399260;
  v1034 = sub_1B0398F5C;
  v1035 = sub_1B0398F5C;
  v1036 = sub_1B0399260;
  v1037 = sub_1B0398F5C;
  v1038 = sub_1B0398F5C;
  v1039 = sub_1B039BCEC;
  v1040 = sub_1B0398F5C;
  v1041 = sub_1B0398F5C;
  v1042 = sub_1B039BCEC;
  v1043 = sub_1B0398F5C;
  v1044 = sub_1B0398F5C;
  v1045 = sub_1B039BCEC;
  v1046 = sub_1B0398F5C;
  v1047 = sub_1B0398F5C;
  v1048 = sub_1B039BCEC;
  v1049 = sub_1B074E050;
  v1050 = sub_1B07B073C;
  v1051 = sub_1B0394C24;
  v1052 = sub_1B074DFFC;
  v1053 = sub_1B039BA88;
  v1054 = sub_1B0394C24;
  v1055 = sub_1B039BBA0;
  v1056 = sub_1B039BC08;
  v1057 = sub_1B06BA324;
  v1058 = sub_1B074E0E4;
  v1059 = sub_1B039BCF8;
  v1060 = sub_1B07AB020;
  v1061 = sub_1B039BC08;
  v1062 = sub_1B0398F5C;
  v1063 = sub_1B0398F5C;
  v1064 = sub_1B0399178;
  v1065 = sub_1B0398F5C;
  v1066 = sub_1B0398F5C;
  v1067 = sub_1B039BA94;
  v1068 = sub_1B0398F5C;
  v1069 = sub_1B0398F5C;
  v1070 = sub_1B0399178;
  v1071 = sub_1B0398F5C;
  v1072 = sub_1B0398F5C;
  v1073 = sub_1B03991EC;
  v1074 = sub_1B0398F5C;
  v1075 = sub_1B0398F5C;
  v1076 = sub_1B03993BC;
  v1077 = sub_1B0398F5C;
  v1078 = sub_1B0398F5C;
  v1079 = sub_1B039BCEC;
  v1080 = sub_1B0398F5C;
  v1081 = sub_1B0398F5C;
  v1082 = sub_1B03991EC;
  v1165 = 0;
  v1164 = 0;
  v1163 = 0;
  v1162 = 0;
  v1161 = 0;
  v1160 = 0;
  v1159 = 0;
  v1158 = 0;
  v1083 = 0;
  v1152 = 0;
  v1151 = 0;
  v1111 = 0;
  v1084 = *(type metadata accessor for InProgressMessageDownload.Completed() - 8);
  v1085 = v1084;
  v1086 = *(v1084 + 64);
  v1087 = (v1086 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v1088 = (v484 - v1087);
  v1089 = sub_1B0E439A8();
  v1090 = *(v1089 - 8);
  v1091 = v1089 - 8;
  v1092 = (*(v1090 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1089);
  v1093 = v484 - v1092;
  v1094 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v484 - v1092);
  v1095 = v484 - v1094;
  v1096 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v484 - v1094);
  v1097 = v484 - v1096;
  v1098 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v484 - v1096);
  v1099 = v484 - v1098;
  v1100 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v1111);
  v1101 = v484 - v1100;
  v1102 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v1133 = v484 - v1102;
  v1132 = type metadata accessor for InProgressMessageDownload.EMLX();
  v1129 = *(v1132 - 8);
  v1130 = v1132 - 8;
  v1103 = v1129;
  v1104 = *(v1129 + 64);
  v1105 = (v1104 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v1111);
  v1106 = v484 - v1105;
  v1165 = v484 - v1105;
  v1107 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v1108 = v484 - v1107;
  v1109 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v1110 = v484 - v1109;
  v1164 = v484 - v1109;
  v1112 = _s6LoggerVMa_1();
  v1113 = (*(*(v1112 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x1EEE9AC00](v1111);
  v1114 = v484 - v1113;
  v1115 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v1116 = v484 - v1115;
  v1117 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v1118 = v484 - v1117;
  v1119 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v1120 = v484 - v1119;
  v1121 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v1127 = v484 - v1121;
  v26 = type metadata accessor for InProgressMessageDownload.Result();
  v1124 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v1128 = v484 - v1124;
  v1163 = v484 - v1124;
  v1162 = v8;
  v1131 = 1;
  v1161 = v1125 & 1;
  v1160 = v27;
  v1159 = v28;
  v1158 = v29;
  sub_1B074B69C(v29 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v30);
  sub_1B0798464(v1126, v1127, v1128);
  sub_1B074B764(v1127);
  sub_1B07AEE78(v1128, v1133);
  v1134 = *(v1129 + 48);
  v1135 = v1129 + 48;
  if (v1134(v1133, v1131, v1132) == 1)
  {
    v295 = v1095;
    sub_1B07AF3D4(v1133);
    v583 = &unk_1EB737000;
    sub_1B074B69C(v1123 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v1116);
    (*(v1090 + 16))(v295, v1116, v1089);
    sub_1B074B764(v1116);

    sub_1B074B69C(v1123 + v583[299], v1127);
    v296 = (v1127 + *(v1112 + 20));
    v586 = *v296;
    v587 = *(v296 + 1);
    v588 = *(v296 + 1);
    v589 = *(v296 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v1127);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v585 = 36;
    v610 = 7;
    v297 = swift_allocObject();
    v298 = v587;
    v299 = v588;
    v300 = v589;
    v595 = v297;
    *(v297 + 16) = v586;
    *(v297 + 20) = v298;
    *(v297 + 24) = v299;
    *(v297 + 32) = v300;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v301 = swift_allocObject();
    v302 = v587;
    v303 = v588;
    v304 = v589;
    v584 = v301;
    *(v301 + 16) = v586;
    *(v301 + 20) = v302;
    *(v301 + 24) = v303;
    *(v301 + 32) = v304;

    v609 = 32;
    v305 = swift_allocObject();
    v306 = v584;
    v599 = v305;
    *(v305 + 16) = v893;
    *(v305 + 24) = v306;
    sub_1B0394868();
    sub_1B0394868();

    v307 = swift_allocObject();
    v308 = v587;
    v309 = v588;
    v310 = v589;
    v602 = v307;
    *(v307 + 16) = v586;
    *(v307 + 20) = v308;
    *(v307 + 24) = v309;
    *(v307 + 32) = v310;

    sub_1B07AFC78(v892, v1088);
    v590 = (*(v1085 + 80) + 16) & ~*(v1085 + 80);
    v591 = swift_allocObject();
    sub_1B07B02D8(v1088, (v591 + v590));

    v311 = swift_allocObject();
    v312 = v591;
    v605 = v311;
    *(v311 + 16) = v894;
    *(v311 + 24) = v312;

    v607 = 17;
    v592 = swift_allocObject();
    v594 = 1;
    *(v592 + 16) = v1125 & 1;

    v313 = swift_allocObject();
    v314 = v592;
    v611 = v313;
    *(v313 + 16) = v895;
    *(v313 + 24) = v314;

    v641 = sub_1B0E43988();
    v642 = sub_1B0E45908();
    v614 = swift_allocObject();
    v597 = 16;
    *(v614 + 16) = 16;
    v615 = swift_allocObject();
    v604 = 4;
    *(v615 + 16) = 4;
    v315 = swift_allocObject();
    v593 = v315;
    *(v315 + 16) = v896;
    *(v315 + 24) = 0;
    v316 = swift_allocObject();
    v317 = v593;
    v616 = v316;
    *(v316 + 16) = v897;
    *(v316 + 24) = v317;
    v617 = swift_allocObject();
    *(v617 + 16) = 0;
    v618 = swift_allocObject();
    *(v618 + 16) = v594;
    v318 = swift_allocObject();
    v319 = v595;
    v596 = v318;
    *(v318 + 16) = v898;
    *(v318 + 24) = v319;
    v320 = swift_allocObject();
    v321 = v596;
    v619 = v320;
    *(v320 + 16) = v899;
    *(v320 + 24) = v321;
    v620 = swift_allocObject();
    *(v620 + 16) = v597;
    v621 = swift_allocObject();
    *(v621 + 16) = v604;
    v322 = swift_allocObject();
    v598 = v322;
    *(v322 + 16) = v900;
    *(v322 + 24) = 0;
    v323 = swift_allocObject();
    v324 = v598;
    v622 = v323;
    *(v323 + 16) = v901;
    *(v323 + 24) = v324;
    v623 = swift_allocObject();
    *(v623 + 16) = 0;
    v624 = swift_allocObject();
    *(v624 + 16) = v604;
    v325 = swift_allocObject();
    v326 = v599;
    v600 = v325;
    *(v325 + 16) = v902;
    *(v325 + 24) = v326;
    v327 = swift_allocObject();
    v328 = v600;
    v625 = v327;
    *(v327 + 16) = v903;
    *(v327 + 24) = v328;
    v626 = swift_allocObject();
    *(v626 + 16) = 112;
    v627 = swift_allocObject();
    v608 = 8;
    *(v627 + 16) = 8;
    v613 = 24;
    v601 = swift_allocObject();
    *(v601 + 16) = v904;
    v329 = swift_allocObject();
    v330 = v601;
    v628 = v329;
    *(v329 + 16) = v905;
    *(v329 + 24) = v330;
    v629 = swift_allocObject();
    *(v629 + 16) = 37;
    v630 = swift_allocObject();
    *(v630 + 16) = v608;
    v331 = swift_allocObject();
    v332 = v602;
    v603 = v331;
    *(v331 + 16) = v906;
    *(v331 + 24) = v332;
    v333 = swift_allocObject();
    v334 = v603;
    v631 = v333;
    *(v333 + 16) = v907;
    *(v333 + 24) = v334;
    v632 = swift_allocObject();
    *(v632 + 16) = 0;
    v633 = swift_allocObject();
    *(v633 + 16) = v604;
    v335 = swift_allocObject();
    v336 = v605;
    v606 = v335;
    *(v335 + 16) = v908;
    *(v335 + 24) = v336;
    v337 = swift_allocObject();
    v338 = v606;
    v634 = v337;
    *(v337 + 16) = v909;
    *(v337 + 24) = v338;
    v635 = swift_allocObject();
    *(v635 + 16) = 34;
    v636 = swift_allocObject();
    *(v636 + 16) = v608;
    v339 = swift_allocObject();
    v340 = v611;
    v612 = v339;
    *(v339 + 16) = v910;
    *(v339 + 24) = v340;
    v341 = swift_allocObject();
    v342 = v612;
    v638 = v341;
    *(v341 + 16) = v911;
    *(v341 + 24) = v342;
    v640 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v637 = sub_1B0E46A48();
    v639 = v343;

    v344 = v614;
    v345 = v639;
    *v639 = v912;
    v345[1] = v344;

    v346 = v615;
    v347 = v639;
    v639[2] = v913;
    v347[3] = v346;

    v348 = v616;
    v349 = v639;
    v639[4] = v914;
    v349[5] = v348;

    v350 = v617;
    v351 = v639;
    v639[6] = v915;
    v351[7] = v350;

    v352 = v618;
    v353 = v639;
    v639[8] = v916;
    v353[9] = v352;

    v354 = v619;
    v355 = v639;
    v639[10] = v917;
    v355[11] = v354;

    v356 = v620;
    v357 = v639;
    v639[12] = v918;
    v357[13] = v356;

    v358 = v621;
    v359 = v639;
    v639[14] = v919;
    v359[15] = v358;

    v360 = v622;
    v361 = v639;
    v639[16] = v920;
    v361[17] = v360;

    v362 = v623;
    v363 = v639;
    v639[18] = v921;
    v363[19] = v362;

    v364 = v624;
    v365 = v639;
    v639[20] = v922;
    v365[21] = v364;

    v366 = v625;
    v367 = v639;
    v639[22] = v923;
    v367[23] = v366;

    v368 = v626;
    v369 = v639;
    v639[24] = v924;
    v369[25] = v368;

    v370 = v627;
    v371 = v639;
    v639[26] = v925;
    v371[27] = v370;

    v372 = v628;
    v373 = v639;
    v639[28] = v926;
    v373[29] = v372;

    v374 = v629;
    v375 = v639;
    v639[30] = v927;
    v375[31] = v374;

    v376 = v630;
    v377 = v639;
    v639[32] = v928;
    v377[33] = v376;

    v378 = v631;
    v379 = v639;
    v639[34] = v929;
    v379[35] = v378;

    v380 = v632;
    v381 = v639;
    v639[36] = v930;
    v381[37] = v380;

    v382 = v633;
    v383 = v639;
    v639[38] = v931;
    v383[39] = v382;

    v384 = v634;
    v385 = v639;
    v639[40] = v932;
    v385[41] = v384;

    v386 = v635;
    v387 = v639;
    v639[42] = v933;
    v387[43] = v386;

    v388 = v636;
    v389 = v639;
    v639[44] = v934;
    v389[45] = v388;

    v390 = v638;
    v391 = v639;
    v639[46] = v935;
    v391[47] = v390;
    sub_1B0394964();

    if (os_log_type_enabled(v641, v642))
    {
      v392 = v1083;
      v576 = sub_1B0E45D78();
      v575 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v577 = sub_1B03949A8(0);
      v578 = sub_1B03949A8(2);
      v579 = &v1150;
      v1150 = v576;
      v580 = &v1149;
      v1149 = v577;
      v581 = &v1148;
      v1148 = v578;
      sub_1B0394A48(3, &v1150);
      sub_1B0394A48(8, v579);
      v1146 = v912;
      v1147 = v614;
      sub_1B03949FC(&v1146, v579, v580, v581);
      v582 = v392;
      if (v392)
      {

        __break(1u);
      }

      else
      {
        v1146 = v913;
        v1147 = v615;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v573 = 0;
        v1146 = v914;
        v1147 = v616;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v572 = 0;
        v1146 = v915;
        v1147 = v617;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v571 = 0;
        v1146 = v916;
        v1147 = v618;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v570 = 0;
        v1146 = v917;
        v1147 = v619;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v569 = 0;
        v1146 = v918;
        v1147 = v620;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v568 = 0;
        v1146 = v919;
        v1147 = v621;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v567 = 0;
        v1146 = v920;
        v1147 = v622;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v566 = 0;
        v1146 = v921;
        v1147 = v623;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v565 = 0;
        v1146 = v922;
        v1147 = v624;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v564 = 0;
        v1146 = v923;
        v1147 = v625;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v563 = 0;
        v1146 = v924;
        v1147 = v626;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v562 = 0;
        v1146 = v925;
        v1147 = v627;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v561 = 0;
        v1146 = v926;
        v1147 = v628;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v560 = 0;
        v1146 = v927;
        v1147 = v629;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v559 = 0;
        v1146 = v928;
        v1147 = v630;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v558 = 0;
        v1146 = v929;
        v1147 = v631;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v557 = 0;
        v1146 = v930;
        v1147 = v632;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v556 = 0;
        v1146 = v931;
        v1147 = v633;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v555 = 0;
        v1146 = v932;
        v1147 = v634;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v554 = 0;
        v1146 = v933;
        v1147 = v635;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v553 = 0;
        v1146 = v934;
        v1147 = v636;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v552 = 0;
        v1146 = v935;
        v1147 = v638;
        sub_1B03949FC(&v1146, &v1150, &v1149, &v1148);
        v551 = 0;
        _os_log_impl(&dword_1B0389000, v641, v642, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did complete downloading parts for UID %u (%{public}s). No new EMLX data.", v576, 0x3Bu);
        sub_1B03998A8(v577);
        sub_1B03998A8(v578);
        sub_1B0E45D58();

        v574 = v551;
      }
    }

    else
    {
      v393 = v1083;

      v574 = v393;
    }

    v550 = v574;
    MEMORY[0x1E69E5920](v641);
    (*(v1090 + 8))(v1095, v1089);
    v644 = v550;
  }

  else
  {
    v31 = v1099;
    sub_1B07AF768(v1133, v1110);
    v824 = &unk_1EB737000;
    sub_1B074B69C(v1123 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v1120);
    v822 = *(v1090 + 16);
    v823 = v1090 + 16;
    v822(v31, v1120, v1089);
    sub_1B074B764(v1120);

    sub_1B074B69C(v1123 + v824[299], v1127);
    v32 = (v1127 + *(v1112 + 20));
    v827 = *v32;
    v828 = *(v32 + 1);
    v829 = *(v32 + 1);
    v830 = *(v32 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v1127);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v826 = 36;
    v856 = 7;
    v33 = swift_allocObject();
    v34 = v828;
    v35 = v829;
    v36 = v830;
    v839 = v33;
    *(v33 + 16) = v827;
    *(v33 + 20) = v34;
    *(v33 + 24) = v35;
    *(v33 + 32) = v36;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v37 = swift_allocObject();
    v38 = v828;
    v39 = v829;
    v40 = v830;
    v825 = v37;
    *(v37 + 16) = v827;
    *(v37 + 20) = v38;
    *(v37 + 24) = v39;
    *(v37 + 32) = v40;

    v855 = 32;
    v41 = swift_allocObject();
    v42 = v825;
    v843 = v41;
    *(v41 + 16) = v936;
    *(v41 + 24) = v42;
    sub_1B0394868();
    sub_1B0394868();

    v43 = swift_allocObject();
    v44 = v828;
    v45 = v829;
    v46 = v830;
    v846 = v43;
    *(v43 + 16) = v827;
    *(v43 + 20) = v44;
    *(v43 + 24) = v45;
    *(v43 + 32) = v46;

    sub_1B07AFC78(v892, v1088);
    v831 = *(v1085 + 80);
    v832 = (v831 + 16) & ~v831;
    v833 = swift_allocObject();
    sub_1B07B02D8(v1088, (v833 + v832));

    v47 = swift_allocObject();
    v48 = v833;
    v849 = v47;
    *(v47 + 16) = v937;
    *(v47 + 24) = v48;

    v853 = 17;
    v834 = swift_allocObject();
    v838 = 1;
    *(v834 + 16) = v1125 & 1;

    v49 = swift_allocObject();
    v50 = v834;
    v851 = v49;
    *(v49 + 16) = v938;
    *(v49 + 24) = v50;

    sub_1B07AF800(v1110, v1108);
    v835 = *(v1103 + 80);
    v836 = (v835 + 16) & ~v835;
    v857 = swift_allocObject();
    sub_1B07AF768(v1108, v857 + v836);
    sub_1B07575C4();

    v889 = sub_1B0E43988();
    v890 = sub_1B0E45908();
    v859 = swift_allocObject();
    v841 = 16;
    *(v859 + 16) = 16;
    v860 = swift_allocObject();
    v848 = 4;
    *(v860 + 16) = 4;
    v51 = swift_allocObject();
    v837 = v51;
    *(v51 + 16) = v896;
    *(v51 + 24) = 0;
    v52 = swift_allocObject();
    v53 = v837;
    v861 = v52;
    *(v52 + 16) = v939;
    *(v52 + 24) = v53;
    v862 = swift_allocObject();
    *(v862 + 16) = 0;
    v863 = swift_allocObject();
    *(v863 + 16) = v838;
    v54 = swift_allocObject();
    v55 = v839;
    v840 = v54;
    *(v54 + 16) = v940;
    *(v54 + 24) = v55;
    v56 = swift_allocObject();
    v57 = v840;
    v864 = v56;
    *(v56 + 16) = v941;
    *(v56 + 24) = v57;
    v865 = swift_allocObject();
    *(v865 + 16) = v841;
    v866 = swift_allocObject();
    *(v866 + 16) = v848;
    v58 = swift_allocObject();
    v842 = v58;
    *(v58 + 16) = v900;
    *(v58 + 24) = 0;
    v59 = swift_allocObject();
    v60 = v842;
    v867 = v59;
    *(v59 + 16) = v942;
    *(v59 + 24) = v60;
    v868 = swift_allocObject();
    *(v868 + 16) = 0;
    v869 = swift_allocObject();
    *(v869 + 16) = v848;
    v61 = swift_allocObject();
    v62 = v843;
    v844 = v61;
    *(v61 + 16) = v943;
    *(v61 + 24) = v62;
    v63 = swift_allocObject();
    v64 = v844;
    v870 = v63;
    *(v63 + 16) = v944;
    *(v63 + 24) = v64;
    v871 = swift_allocObject();
    *(v871 + 16) = 112;
    v872 = swift_allocObject();
    v854 = 8;
    *(v872 + 16) = 8;
    v845 = swift_allocObject();
    *(v845 + 16) = v904;
    v65 = swift_allocObject();
    v66 = v845;
    v873 = v65;
    *(v65 + 16) = v945;
    *(v65 + 24) = v66;
    v874 = swift_allocObject();
    *(v874 + 16) = 37;
    v875 = swift_allocObject();
    *(v875 + 16) = v854;
    v67 = swift_allocObject();
    v68 = v846;
    v847 = v67;
    *(v67 + 16) = v946;
    *(v67 + 24) = v68;
    v69 = swift_allocObject();
    v70 = v847;
    v876 = v69;
    *(v69 + 16) = v947;
    *(v69 + 24) = v70;
    v877 = swift_allocObject();
    *(v877 + 16) = 0;
    v878 = swift_allocObject();
    *(v878 + 16) = v848;
    v71 = swift_allocObject();
    v72 = v849;
    v850 = v71;
    *(v71 + 16) = v948;
    *(v71 + 24) = v72;
    v73 = swift_allocObject();
    v74 = v850;
    v879 = v73;
    *(v73 + 16) = v949;
    *(v73 + 24) = v74;
    v880 = swift_allocObject();
    *(v880 + 16) = 34;
    v881 = swift_allocObject();
    *(v881 + 16) = v854;
    v75 = swift_allocObject();
    v76 = v851;
    v852 = v75;
    *(v75 + 16) = v950;
    *(v75 + 24) = v76;
    v77 = swift_allocObject();
    v78 = v852;
    v882 = v77;
    *(v77 + 16) = v951;
    *(v77 + 24) = v78;
    v883 = swift_allocObject();
    *(v883 + 16) = 0;
    v884 = swift_allocObject();
    *(v884 + 16) = v854;
    v79 = swift_allocObject();
    v80 = v857;
    v858 = v79;
    *(v79 + 16) = v952;
    *(v79 + 24) = v80;
    v81 = swift_allocObject();
    v82 = v858;
    v886 = v81;
    *(v81 + 16) = v953;
    *(v81 + 24) = v82;
    v888 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v885 = sub_1B0E46A48();
    v887 = v83;

    v84 = v859;
    v85 = v887;
    *v887 = v954;
    v85[1] = v84;

    v86 = v860;
    v87 = v887;
    v887[2] = v955;
    v87[3] = v86;

    v88 = v861;
    v89 = v887;
    v887[4] = v956;
    v89[5] = v88;

    v90 = v862;
    v91 = v887;
    v887[6] = v957;
    v91[7] = v90;

    v92 = v863;
    v93 = v887;
    v887[8] = v958;
    v93[9] = v92;

    v94 = v864;
    v95 = v887;
    v887[10] = v959;
    v95[11] = v94;

    v96 = v865;
    v97 = v887;
    v887[12] = v960;
    v97[13] = v96;

    v98 = v866;
    v99 = v887;
    v887[14] = v961;
    v99[15] = v98;

    v100 = v867;
    v101 = v887;
    v887[16] = v962;
    v101[17] = v100;

    v102 = v868;
    v103 = v887;
    v887[18] = v963;
    v103[19] = v102;

    v104 = v869;
    v105 = v887;
    v887[20] = v964;
    v105[21] = v104;

    v106 = v870;
    v107 = v887;
    v887[22] = v965;
    v107[23] = v106;

    v108 = v871;
    v109 = v887;
    v887[24] = v966;
    v109[25] = v108;

    v110 = v872;
    v111 = v887;
    v887[26] = v967;
    v111[27] = v110;

    v112 = v873;
    v113 = v887;
    v887[28] = v968;
    v113[29] = v112;

    v114 = v874;
    v115 = v887;
    v887[30] = v969;
    v115[31] = v114;

    v116 = v875;
    v117 = v887;
    v887[32] = v970;
    v117[33] = v116;

    v118 = v876;
    v119 = v887;
    v887[34] = v971;
    v119[35] = v118;

    v120 = v877;
    v121 = v887;
    v887[36] = v972;
    v121[37] = v120;

    v122 = v878;
    v123 = v887;
    v887[38] = v973;
    v123[39] = v122;

    v124 = v879;
    v125 = v887;
    v887[40] = v974;
    v125[41] = v124;

    v126 = v880;
    v127 = v887;
    v887[42] = v975;
    v127[43] = v126;

    v128 = v881;
    v129 = v887;
    v887[44] = v976;
    v129[45] = v128;

    v130 = v882;
    v131 = v887;
    v887[46] = v977;
    v131[47] = v130;

    v132 = v883;
    v133 = v887;
    v887[48] = v978;
    v133[49] = v132;

    v134 = v884;
    v135 = v887;
    v887[50] = v979;
    v135[51] = v134;

    v136 = v886;
    v137 = v887;
    v887[52] = v980;
    v137[53] = v136;
    sub_1B0394964();

    if (os_log_type_enabled(v889, v890))
    {
      v138 = v1083;
      v815 = sub_1B0E45D78();
      v814 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v816 = sub_1B03949A8(0);
      v817 = sub_1B03949A8(2);
      v818 = &v1140;
      v1140 = v815;
      v819 = &v1139;
      v1139 = v816;
      v820 = &v1138;
      v1138 = v817;
      sub_1B0394A48(3, &v1140);
      sub_1B0394A48(9, v818);
      v1136 = v954;
      v1137 = v859;
      sub_1B03949FC(&v1136, v818, v819, v820);
      v821 = v138;
      if (v138)
      {

        __break(1u);
      }

      else
      {
        v1136 = v955;
        v1137 = v860;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v812 = 0;
        v1136 = v956;
        v1137 = v861;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v811 = 0;
        v1136 = v957;
        v1137 = v862;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v810 = 0;
        v1136 = v958;
        v1137 = v863;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v809 = 0;
        v1136 = v959;
        v1137 = v864;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v808 = 0;
        v1136 = v960;
        v1137 = v865;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v807 = 0;
        v1136 = v961;
        v1137 = v866;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v806 = 0;
        v1136 = v962;
        v1137 = v867;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v805 = 0;
        v1136 = v963;
        v1137 = v868;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v804 = 0;
        v1136 = v964;
        v1137 = v869;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v803 = 0;
        v1136 = v965;
        v1137 = v870;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v802 = 0;
        v1136 = v966;
        v1137 = v871;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v801 = 0;
        v1136 = v967;
        v1137 = v872;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v800 = 0;
        v1136 = v968;
        v1137 = v873;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v799 = 0;
        v1136 = v969;
        v1137 = v874;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v798 = 0;
        v1136 = v970;
        v1137 = v875;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v797 = 0;
        v1136 = v971;
        v1137 = v876;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v796 = 0;
        v1136 = v972;
        v1137 = v877;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v795 = 0;
        v1136 = v973;
        v1137 = v878;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v794 = 0;
        v1136 = v974;
        v1137 = v879;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v793 = 0;
        v1136 = v975;
        v1137 = v880;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v792 = 0;
        v1136 = v976;
        v1137 = v881;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v791 = 0;
        v1136 = v977;
        v1137 = v882;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v790 = 0;
        v1136 = v978;
        v1137 = v883;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v789 = 0;
        v1136 = v979;
        v1137 = v884;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v788 = 0;
        v1136 = v980;
        v1137 = v886;
        sub_1B03949FC(&v1136, &v1140, &v1139, &v1138);
        v787 = 0;
        _os_log_impl(&dword_1B0389000, v889, v890, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did complete downloading parts for UID %u (%{public}s). EMLX is %{iec-bytes}ld.", v815, 0x45u);
        sub_1B03998A8(v816);
        sub_1B03998A8(v817);
        sub_1B0E45D58();

        v813 = v787;
      }
    }

    else
    {
      v139 = v1083;

      v813 = v139;
    }

    v140 = v1097;
    v692 = v813;
    MEMORY[0x1E69E5920](v889);
    v693 = *(v1090 + 8);
    v694 = v1090 + 8;
    v693(v1099, v1089);
    v695 = &unk_1EB737000;
    sub_1B074B69C(v1123 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v1118);
    v822(v140, v1118, v1089);
    sub_1B074B764(v1118);

    sub_1B074B69C(v1123 + v695[299], v1127);
    v141 = (v1127 + *(v1112 + 20));
    v698 = *v141;
    v699 = *(v141 + 1);
    v700 = *(v141 + 1);
    v701 = *(v141 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v1127);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v697 = 36;
    v741 = 7;
    v142 = swift_allocObject();
    v143 = v699;
    v144 = v700;
    v145 = v701;
    v715 = v142;
    *(v142 + 16) = v698;
    *(v142 + 20) = v143;
    *(v142 + 24) = v144;
    *(v142 + 32) = v145;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v146 = swift_allocObject();
    v147 = v699;
    v148 = v700;
    v149 = v701;
    v696 = v146;
    *(v146 + 16) = v698;
    *(v146 + 20) = v147;
    *(v146 + 24) = v148;
    *(v146 + 32) = v149;

    v740 = 32;
    v150 = swift_allocObject();
    v151 = v696;
    v719 = v150;
    *(v150 + 16) = v981;
    *(v150 + 24) = v151;
    sub_1B0394868();
    sub_1B0394868();

    v152 = swift_allocObject();
    v153 = v699;
    v154 = v700;
    v155 = v701;
    v722 = v152;
    *(v152 + 16) = v698;
    *(v152 + 20) = v153;
    *(v152 + 24) = v154;
    *(v152 + 32) = v155;

    sub_1B07AFC78(v892, v1088);
    v702 = (v831 + 16) & ~v831;
    v703 = swift_allocObject();
    sub_1B07B02D8(v1088, (v703 + v702));

    v156 = swift_allocObject();
    v157 = v703;
    v725 = v156;
    *(v156 + 16) = v982;
    *(v156 + 24) = v157;

    sub_1B07AF800(v1110, v1108);
    v704 = (v835 + 16) & ~v835;
    v727 = swift_allocObject();
    sub_1B07AF768(v1108, v727 + v704);
    sub_1B07AF800(v1110, v1108);
    v705 = (v835 + 16) & ~v835;
    v729 = swift_allocObject();
    sub_1B07AF768(v1108, v729 + v705);
    sub_1B07AF800(v1110, v1108);
    v706 = (v835 + 16) & ~v835;
    v707 = swift_allocObject();
    sub_1B07AF768(v1108, v707 + v706);

    v158 = swift_allocObject();
    v159 = v707;
    v731 = v158;
    *(v158 + 16) = v983;
    *(v158 + 24) = v159;

    sub_1B07AF800(v1110, v1108);
    v708 = (v835 + 16) & ~v835;
    v709 = swift_allocObject();
    sub_1B07AF768(v1108, v709 + v708);

    v160 = swift_allocObject();
    v161 = v709;
    v733 = v160;
    *(v160 + 16) = v984;
    *(v160 + 24) = v161;

    sub_1B07AF800(v1110, v1108);
    v710 = (v835 + 16) & ~v835;
    v711 = swift_allocObject();
    sub_1B07AF768(v1108, v711 + v710);

    v162 = swift_allocObject();
    v163 = v711;
    v735 = v162;
    *(v162 + 16) = v985;
    *(v162 + 24) = v163;

    sub_1B07AF800(v1110, v1108);
    v712 = (v835 + 16) & ~v835;
    v713 = swift_allocObject();
    sub_1B07AF768(v1108, v713 + v712);

    v164 = swift_allocObject();
    v165 = v713;
    v742 = v164;
    *(v164 + 16) = v986;
    *(v164 + 24) = v165;

    v785 = sub_1B0E43988();
    v786 = sub_1B0E458D8();
    v738 = 17;
    v744 = swift_allocObject();
    v717 = 16;
    *(v744 + 16) = 16;
    v745 = swift_allocObject();
    v724 = 4;
    *(v745 + 16) = 4;
    v166 = swift_allocObject();
    v714 = v166;
    *(v166 + 16) = v896;
    *(v166 + 24) = 0;
    v167 = swift_allocObject();
    v168 = v714;
    v746 = v167;
    *(v167 + 16) = v987;
    *(v167 + 24) = v168;
    v747 = swift_allocObject();
    *(v747 + 16) = 0;
    v748 = swift_allocObject();
    *(v748 + 16) = 1;
    v169 = swift_allocObject();
    v170 = v715;
    v716 = v169;
    *(v169 + 16) = v988;
    *(v169 + 24) = v170;
    v171 = swift_allocObject();
    v172 = v716;
    v749 = v171;
    *(v171 + 16) = v989;
    *(v171 + 24) = v172;
    v750 = swift_allocObject();
    *(v750 + 16) = v717;
    v751 = swift_allocObject();
    *(v751 + 16) = v724;
    v173 = swift_allocObject();
    v718 = v173;
    *(v173 + 16) = v900;
    *(v173 + 24) = 0;
    v174 = swift_allocObject();
    v175 = v718;
    v752 = v174;
    *(v174 + 16) = v990;
    *(v174 + 24) = v175;
    v753 = swift_allocObject();
    *(v753 + 16) = 0;
    v754 = swift_allocObject();
    *(v754 + 16) = v724;
    v176 = swift_allocObject();
    v177 = v719;
    v720 = v176;
    *(v176 + 16) = v991;
    *(v176 + 24) = v177;
    v178 = swift_allocObject();
    v179 = v720;
    v755 = v178;
    *(v178 + 16) = v992;
    *(v178 + 24) = v179;
    v756 = swift_allocObject();
    *(v756 + 16) = 112;
    v757 = swift_allocObject();
    v739 = 8;
    *(v757 + 16) = 8;
    v721 = swift_allocObject();
    *(v721 + 16) = v904;
    v180 = swift_allocObject();
    v181 = v721;
    v758 = v180;
    *(v180 + 16) = v993;
    *(v180 + 24) = v181;
    v759 = swift_allocObject();
    *(v759 + 16) = 37;
    v760 = swift_allocObject();
    *(v760 + 16) = v739;
    v182 = swift_allocObject();
    v183 = v722;
    v723 = v182;
    *(v182 + 16) = v994;
    *(v182 + 24) = v183;
    v184 = swift_allocObject();
    v185 = v723;
    v761 = v184;
    *(v184 + 16) = v995;
    *(v184 + 24) = v185;
    v762 = swift_allocObject();
    *(v762 + 16) = 0;
    v763 = swift_allocObject();
    *(v763 + 16) = v724;
    v186 = swift_allocObject();
    v187 = v725;
    v726 = v186;
    *(v186 + 16) = v996;
    *(v186 + 24) = v187;
    v188 = swift_allocObject();
    v189 = v726;
    v764 = v188;
    *(v188 + 16) = v997;
    *(v188 + 24) = v189;
    v765 = swift_allocObject();
    *(v765 + 16) = 0;
    v766 = swift_allocObject();
    *(v766 + 16) = v739;
    v190 = swift_allocObject();
    v191 = v727;
    v728 = v190;
    *(v190 + 16) = v998;
    *(v190 + 24) = v191;
    v192 = swift_allocObject();
    v193 = v728;
    v767 = v192;
    *(v192 + 16) = v999;
    *(v192 + 24) = v193;
    v768 = swift_allocObject();
    *(v768 + 16) = 0;
    v769 = swift_allocObject();
    *(v769 + 16) = v739;
    v194 = swift_allocObject();
    v195 = v729;
    v730 = v194;
    *(v194 + 16) = v1000;
    *(v194 + 24) = v195;
    v196 = swift_allocObject();
    v197 = v730;
    v770 = v196;
    *(v196 + 16) = v1001;
    *(v196 + 24) = v197;
    v771 = swift_allocObject();
    v737 = 32;
    *(v771 + 16) = 32;
    v772 = swift_allocObject();
    *(v772 + 16) = v739;
    v198 = swift_allocObject();
    v199 = v731;
    v732 = v198;
    *(v198 + 16) = v1002;
    *(v198 + 24) = v199;
    v200 = swift_allocObject();
    v201 = v732;
    v773 = v200;
    *(v200 + 16) = v1003;
    *(v200 + 24) = v201;
    v774 = swift_allocObject();
    *(v774 + 16) = v737;
    v775 = swift_allocObject();
    *(v775 + 16) = v739;
    v202 = swift_allocObject();
    v203 = v733;
    v734 = v202;
    *(v202 + 16) = v1004;
    *(v202 + 24) = v203;
    v204 = swift_allocObject();
    v205 = v734;
    v776 = v204;
    *(v204 + 16) = v1005;
    *(v204 + 24) = v205;
    v777 = swift_allocObject();
    *(v777 + 16) = v737;
    v778 = swift_allocObject();
    *(v778 + 16) = v739;
    v206 = swift_allocObject();
    v207 = v735;
    v736 = v206;
    *(v206 + 16) = v1006;
    *(v206 + 24) = v207;
    v208 = swift_allocObject();
    v209 = v736;
    v779 = v208;
    *(v208 + 16) = v1007;
    *(v208 + 24) = v209;
    v780 = swift_allocObject();
    *(v780 + 16) = v737;
    v781 = swift_allocObject();
    *(v781 + 16) = v739;
    v210 = swift_allocObject();
    v211 = v742;
    v743 = v210;
    *(v210 + 16) = v1008;
    *(v210 + 24) = v211;
    v212 = swift_allocObject();
    v213 = v743;
    v783 = v212;
    *(v212 + 16) = v1009;
    *(v212 + 24) = v213;
    v782 = sub_1B0E46A48();
    v784 = v214;

    v215 = v744;
    v216 = v784;
    *v784 = v1010;
    v216[1] = v215;

    v217 = v745;
    v218 = v784;
    v784[2] = v1011;
    v218[3] = v217;

    v219 = v746;
    v220 = v784;
    v784[4] = v1012;
    v220[5] = v219;

    v221 = v747;
    v222 = v784;
    v784[6] = v1013;
    v222[7] = v221;

    v223 = v748;
    v224 = v784;
    v784[8] = v1014;
    v224[9] = v223;

    v225 = v749;
    v226 = v784;
    v784[10] = v1015;
    v226[11] = v225;

    v227 = v750;
    v228 = v784;
    v784[12] = v1016;
    v228[13] = v227;

    v229 = v751;
    v230 = v784;
    v784[14] = v1017;
    v230[15] = v229;

    v231 = v752;
    v232 = v784;
    v784[16] = v1018;
    v232[17] = v231;

    v233 = v753;
    v234 = v784;
    v784[18] = v1019;
    v234[19] = v233;

    v235 = v754;
    v236 = v784;
    v784[20] = v1020;
    v236[21] = v235;

    v237 = v755;
    v238 = v784;
    v784[22] = v1021;
    v238[23] = v237;

    v239 = v756;
    v240 = v784;
    v784[24] = v1022;
    v240[25] = v239;

    v241 = v757;
    v242 = v784;
    v784[26] = v1023;
    v242[27] = v241;

    v243 = v758;
    v244 = v784;
    v784[28] = v1024;
    v244[29] = v243;

    v245 = v759;
    v246 = v784;
    v784[30] = v1025;
    v246[31] = v245;

    v247 = v760;
    v248 = v784;
    v784[32] = v1026;
    v248[33] = v247;

    v249 = v761;
    v250 = v784;
    v784[34] = v1027;
    v250[35] = v249;

    v251 = v762;
    v252 = v784;
    v784[36] = v1028;
    v252[37] = v251;

    v253 = v763;
    v254 = v784;
    v784[38] = v1029;
    v254[39] = v253;

    v255 = v764;
    v256 = v784;
    v784[40] = v1030;
    v256[41] = v255;

    v257 = v765;
    v258 = v784;
    v784[42] = v1031;
    v258[43] = v257;

    v259 = v766;
    v260 = v784;
    v784[44] = v1032;
    v260[45] = v259;

    v261 = v767;
    v262 = v784;
    v784[46] = v1033;
    v262[47] = v261;

    v263 = v768;
    v264 = v784;
    v784[48] = v1034;
    v264[49] = v263;

    v265 = v769;
    v266 = v784;
    v784[50] = v1035;
    v266[51] = v265;

    v267 = v770;
    v268 = v784;
    v784[52] = v1036;
    v268[53] = v267;

    v269 = v771;
    v270 = v784;
    v784[54] = v1037;
    v270[55] = v269;

    v271 = v772;
    v272 = v784;
    v784[56] = v1038;
    v272[57] = v271;

    v273 = v773;
    v274 = v784;
    v784[58] = v1039;
    v274[59] = v273;

    v275 = v774;
    v276 = v784;
    v784[60] = v1040;
    v276[61] = v275;

    v277 = v775;
    v278 = v784;
    v784[62] = v1041;
    v278[63] = v277;

    v279 = v776;
    v280 = v784;
    v784[64] = v1042;
    v280[65] = v279;

    v281 = v777;
    v282 = v784;
    v784[66] = v1043;
    v282[67] = v281;

    v283 = v778;
    v284 = v784;
    v784[68] = v1044;
    v284[69] = v283;

    v285 = v779;
    v286 = v784;
    v784[70] = v1045;
    v286[71] = v285;

    v287 = v780;
    v288 = v784;
    v784[72] = v1046;
    v288[73] = v287;

    v289 = v781;
    v290 = v784;
    v784[74] = v1047;
    v290[75] = v289;

    v291 = v783;
    v292 = v784;
    v784[76] = v1048;
    v292[77] = v291;
    sub_1B0394964();

    if (os_log_type_enabled(v785, v786))
    {
      v293 = v692;
      v685 = sub_1B0E45D78();
      v684 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v686 = sub_1B03949A8(0);
      v687 = sub_1B03949A8(5);
      v688 = &v1145;
      v1145 = v685;
      v689 = &v1144;
      v1144 = v686;
      v690 = &v1143;
      v1143 = v687;
      sub_1B0394A48(3, &v1145);
      sub_1B0394A48(13, v688);
      v1141 = v1010;
      v1142 = v744;
      sub_1B03949FC(&v1141, v688, v689, v690);
      v691 = v293;
      if (v293)
      {

        __break(1u);
      }

      else
      {
        v1141 = v1011;
        v1142 = v745;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v682 = 0;
        v1141 = v1012;
        v1142 = v746;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v681 = 0;
        v1141 = v1013;
        v1142 = v747;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v680 = 0;
        v1141 = v1014;
        v1142 = v748;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v679 = 0;
        v1141 = v1015;
        v1142 = v749;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v678 = 0;
        v1141 = v1016;
        v1142 = v750;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v677 = 0;
        v1141 = v1017;
        v1142 = v751;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v676 = 0;
        v1141 = v1018;
        v1142 = v752;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v675 = 0;
        v1141 = v1019;
        v1142 = v753;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v674 = 0;
        v1141 = v1020;
        v1142 = v754;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v673 = 0;
        v1141 = v1021;
        v1142 = v755;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v672 = 0;
        v1141 = v1022;
        v1142 = v756;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v671 = 0;
        v1141 = v1023;
        v1142 = v757;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v670 = 0;
        v1141 = v1024;
        v1142 = v758;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v669 = 0;
        v1141 = v1025;
        v1142 = v759;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v668 = 0;
        v1141 = v1026;
        v1142 = v760;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v667 = 0;
        v1141 = v1027;
        v1142 = v761;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v666 = 0;
        v1141 = v1028;
        v1142 = v762;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v665 = 0;
        v1141 = v1029;
        v1142 = v763;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v664 = 0;
        v1141 = v1030;
        v1142 = v764;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v663 = 0;
        v1141 = v1031;
        v1142 = v765;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v662 = 0;
        v1141 = v1032;
        v1142 = v766;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v661 = 0;
        v1141 = v1033;
        v1142 = v767;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v660 = 0;
        v1141 = v1034;
        v1142 = v768;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v659 = 0;
        v1141 = v1035;
        v1142 = v769;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v658 = 0;
        v1141 = v1036;
        v1142 = v770;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v657 = 0;
        v1141 = v1037;
        v1142 = v771;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v656 = 0;
        v1141 = v1038;
        v1142 = v772;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v655 = 0;
        v1141 = v1039;
        v1142 = v773;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v654 = 0;
        v1141 = v1040;
        v1142 = v774;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v653 = 0;
        v1141 = v1041;
        v1142 = v775;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v652 = 0;
        v1141 = v1042;
        v1142 = v776;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v651 = 0;
        v1141 = v1043;
        v1142 = v777;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v650 = 0;
        v1141 = v1044;
        v1142 = v778;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v649 = 0;
        v1141 = v1045;
        v1142 = v779;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v648 = 0;
        v1141 = v1046;
        v1142 = v780;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v647 = 0;
        v1141 = v1047;
        v1142 = v781;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v646 = 0;
        v1141 = v1048;
        v1142 = v783;
        sub_1B03949FC(&v1141, &v1145, &v1144, &v1143);
        v645 = 0;
        _os_log_impl(&dword_1B0389000, v785, v786, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] UID %u has downloaded parts (%ld of %ld): {%s}, missing parts: {%s}, downloaded attachments: {%s}, missing attachments: {%s}", v685, 0x6Du);
        sub_1B03998A8(v686);
        sub_1B03998A8(v687);
        sub_1B0E45D58();

        v683 = v645;
      }
    }

    else
    {
      v294 = v692;

      v683 = v294;
    }

    v643 = v683;
    MEMORY[0x1E69E5920](v785);
    v693(v1097, v1089);
    sub_1B07AF320(v1110);
    v644 = v643;
  }

  v549 = v644;
  sub_1B07AEE78(v1128, v1101);
  if (v1134(v1101, 1, v1132) == 1)
  {
    sub_1B07AF3D4(v1101);
  }

  else
  {
    sub_1B07AF768(v1101, v1106);
    v548 = sub_1B082A818(*v892);
    if (v548)
    {
      v547 = v548;
      v544 = v548;
      v1152 = v548;
      v545 = sub_1B0863C14(v548, *v892);
      v546 = 1;
      v1151 = v545 & 1;
      sub_1B07AF800(v1106, v1108);
      sub_1B0858C38(v1108, v544, v545 & 1, v891);
      v394 = type metadata accessor for MailboxPersistenceHelper.DownloadResult();
      (*(*(v394 - 8) + 56))(v891, 0, v546);
      sub_1B07AF320(v1106);
      return sub_1B07AF3D4(v1128);
    }

    sub_1B07AF320(v1106);
  }

  v396 = v1093;
  v492 = &unk_1EB737000;
  sub_1B074B69C(v1123 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v1114);
  (*(v1090 + 16))(v396, v1114, v1089);
  sub_1B074B764(v1114);

  sub_1B074B69C(v1123 + v492[299], v1127);
  v397 = (v1127 + *(v1112 + 20));
  v495 = *v397;
  v496 = *(v397 + 1);
  v497 = *(v397 + 1);
  v498 = *(v397 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v1127);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v494 = 36;
  v515 = 7;
  v398 = swift_allocObject();
  v399 = v496;
  v400 = v497;
  v401 = v498;
  v502 = v398;
  *(v398 + 16) = v495;
  *(v398 + 20) = v399;
  *(v398 + 24) = v400;
  *(v398 + 32) = v401;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v402 = swift_allocObject();
  v403 = v496;
  v404 = v497;
  v405 = v498;
  v493 = v402;
  *(v402 + 16) = v495;
  *(v402 + 20) = v403;
  *(v402 + 24) = v404;
  *(v402 + 32) = v405;

  v514 = 32;
  v406 = swift_allocObject();
  v407 = v493;
  v506 = v406;
  *(v406 + 16) = v1049;
  *(v406 + 24) = v407;
  sub_1B0394868();
  sub_1B0394868();

  v408 = swift_allocObject();
  v409 = v496;
  v410 = v497;
  v411 = v498;
  v510 = v408;
  *(v408 + 16) = v495;
  *(v408 + 20) = v409;
  *(v408 + 24) = v410;
  *(v408 + 32) = v411;

  sub_1B07AFC78(v892, v1088);
  v499 = (*(v1085 + 80) + 16) & ~*(v1085 + 80);
  v500 = swift_allocObject();
  sub_1B07B02D8(v1088, (v500 + v499));

  v412 = swift_allocObject();
  v413 = v500;
  v516 = v412;
  *(v412 + 16) = v1050;
  *(v412 + 24) = v413;

  v542 = sub_1B0E43988();
  v543 = sub_1B0E45908();
  v512 = 17;
  v518 = swift_allocObject();
  v504 = 16;
  *(v518 + 16) = 16;
  v519 = swift_allocObject();
  v513 = 4;
  *(v519 + 16) = 4;
  v414 = swift_allocObject();
  v501 = v414;
  *(v414 + 16) = v896;
  *(v414 + 24) = 0;
  v415 = swift_allocObject();
  v416 = v501;
  v520 = v415;
  *(v415 + 16) = v1051;
  *(v415 + 24) = v416;
  v521 = swift_allocObject();
  *(v521 + 16) = 0;
  v522 = swift_allocObject();
  *(v522 + 16) = 1;
  v417 = swift_allocObject();
  v418 = v502;
  v503 = v417;
  *(v417 + 16) = v1052;
  *(v417 + 24) = v418;
  v419 = swift_allocObject();
  v420 = v503;
  v523 = v419;
  *(v419 + 16) = v1053;
  *(v419 + 24) = v420;
  v524 = swift_allocObject();
  *(v524 + 16) = v504;
  v525 = swift_allocObject();
  *(v525 + 16) = v513;
  v421 = swift_allocObject();
  v505 = v421;
  *(v421 + 16) = v900;
  *(v421 + 24) = 0;
  v422 = swift_allocObject();
  v423 = v505;
  v526 = v422;
  *(v422 + 16) = v1054;
  *(v422 + 24) = v423;
  v527 = swift_allocObject();
  *(v527 + 16) = 0;
  v528 = swift_allocObject();
  *(v528 + 16) = v513;
  v424 = swift_allocObject();
  v425 = v506;
  v507 = v424;
  *(v424 + 16) = v1055;
  *(v424 + 24) = v425;
  v426 = swift_allocObject();
  v427 = v507;
  v529 = v426;
  *(v426 + 16) = v1056;
  *(v426 + 24) = v427;
  v530 = swift_allocObject();
  *(v530 + 16) = 112;
  v531 = swift_allocObject();
  v509 = 8;
  *(v531 + 16) = 8;
  v508 = swift_allocObject();
  *(v508 + 16) = v904;
  v428 = swift_allocObject();
  v429 = v508;
  v532 = v428;
  *(v428 + 16) = v1057;
  *(v428 + 24) = v429;
  v533 = swift_allocObject();
  *(v533 + 16) = 37;
  v534 = swift_allocObject();
  *(v534 + 16) = v509;
  v430 = swift_allocObject();
  v431 = v510;
  v511 = v430;
  *(v430 + 16) = v1058;
  *(v430 + 24) = v431;
  v432 = swift_allocObject();
  v433 = v511;
  v535 = v432;
  *(v432 + 16) = v1059;
  *(v432 + 24) = v433;
  v536 = swift_allocObject();
  *(v536 + 16) = 0;
  v537 = swift_allocObject();
  *(v537 + 16) = v513;
  v434 = swift_allocObject();
  v435 = v516;
  v517 = v434;
  *(v434 + 16) = v1060;
  *(v434 + 24) = v435;
  v436 = swift_allocObject();
  v437 = v517;
  v539 = v436;
  *(v436 + 16) = v1061;
  *(v436 + 24) = v437;
  v541 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v538 = sub_1B0E46A48();
  v540 = v438;

  v439 = v518;
  v440 = v540;
  *v540 = v1062;
  v440[1] = v439;

  v441 = v519;
  v442 = v540;
  v540[2] = v1063;
  v442[3] = v441;

  v443 = v520;
  v444 = v540;
  v540[4] = v1064;
  v444[5] = v443;

  v445 = v521;
  v446 = v540;
  v540[6] = v1065;
  v446[7] = v445;

  v447 = v522;
  v448 = v540;
  v540[8] = v1066;
  v448[9] = v447;

  v449 = v523;
  v450 = v540;
  v540[10] = v1067;
  v450[11] = v449;

  v451 = v524;
  v452 = v540;
  v540[12] = v1068;
  v452[13] = v451;

  v453 = v525;
  v454 = v540;
  v540[14] = v1069;
  v454[15] = v453;

  v455 = v526;
  v456 = v540;
  v540[16] = v1070;
  v456[17] = v455;

  v457 = v527;
  v458 = v540;
  v540[18] = v1071;
  v458[19] = v457;

  v459 = v528;
  v460 = v540;
  v540[20] = v1072;
  v460[21] = v459;

  v461 = v529;
  v462 = v540;
  v540[22] = v1073;
  v462[23] = v461;

  v463 = v530;
  v464 = v540;
  v540[24] = v1074;
  v464[25] = v463;

  v465 = v531;
  v466 = v540;
  v540[26] = v1075;
  v466[27] = v465;

  v467 = v532;
  v468 = v540;
  v540[28] = v1076;
  v468[29] = v467;

  v469 = v533;
  v470 = v540;
  v540[30] = v1077;
  v470[31] = v469;

  v471 = v534;
  v472 = v540;
  v540[32] = v1078;
  v472[33] = v471;

  v473 = v535;
  v474 = v540;
  v540[34] = v1079;
  v474[35] = v473;

  v475 = v536;
  v476 = v540;
  v540[36] = v1080;
  v476[37] = v475;

  v477 = v537;
  v478 = v540;
  v540[38] = v1081;
  v478[39] = v477;

  v479 = v539;
  v480 = v540;
  v540[40] = v1082;
  v480[41] = v479;
  sub_1B0394964();

  if (os_log_type_enabled(v542, v543))
  {
    v481 = v549;
    v485 = sub_1B0E45D78();
    v484[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v486 = sub_1B03949A8(0);
    v487 = sub_1B03949A8(1);
    v488 = &v1157;
    v1157 = v485;
    v489 = &v1156;
    v1156 = v486;
    v490 = &v1155;
    v1155 = v487;
    sub_1B0394A48(3, &v1157);
    sub_1B0394A48(7, v488);
    v1153 = v1062;
    v1154 = v518;
    sub_1B03949FC(&v1153, v488, v489, v490);
    v491 = v481;
    if (v481)
    {

      __break(1u);
    }

    else
    {
      v1153 = v1063;
      v1154 = v519;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[19] = 0;
      v1153 = v1064;
      v1154 = v520;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[18] = 0;
      v1153 = v1065;
      v1154 = v521;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[17] = 0;
      v1153 = v1066;
      v1154 = v522;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[16] = 0;
      v1153 = v1067;
      v1154 = v523;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[15] = 0;
      v1153 = v1068;
      v1154 = v524;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[14] = 0;
      v1153 = v1069;
      v1154 = v525;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[13] = 0;
      v1153 = v1070;
      v1154 = v526;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[12] = 0;
      v1153 = v1071;
      v1154 = v527;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[11] = 0;
      v1153 = v1072;
      v1154 = v528;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[10] = 0;
      v1153 = v1073;
      v1154 = v529;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[9] = 0;
      v1153 = v1074;
      v1154 = v530;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[8] = 0;
      v1153 = v1075;
      v1154 = v531;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[7] = 0;
      v1153 = v1076;
      v1154 = v532;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[6] = 0;
      v1153 = v1077;
      v1154 = v533;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[5] = 0;
      v1153 = v1078;
      v1154 = v534;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[4] = 0;
      v1153 = v1079;
      v1154 = v535;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[3] = 0;
      v1153 = v1080;
      v1154 = v536;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[2] = 0;
      v1153 = v1081;
      v1154 = v537;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      v484[1] = 0;
      v1153 = v1082;
      v1154 = v539;
      sub_1B03949FC(&v1153, &v1157, &v1156, &v1155);
      _os_log_impl(&dword_1B0389000, v542, v543, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Download completed without missing part info for UID %u.", v485, 0x31u);
      sub_1B03998A8(v486);
      sub_1B03998A8(v487);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v542);
  (*(v1090 + 8))(v1093, v1089);
  v482 = *v892;
  v484[0] = 0;
  sub_1B0814D38(v482, 0, 0, 1);
  v483 = type metadata accessor for MailboxPersistenceHelper.DownloadResult();
  (*(*(v483 - 8) + 56))(v891, 1);
  return sub_1B07AF3D4(v1128);
}

uint64_t sub_1B0863908(uint64_t a1)
{
  v2[1] = a1;
  v6 = sub_1B0E443C8();
  v4 = *(v6 - 8);
  v5 = v6 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v7 = v2 - v3;
  (*(v4 + 16))(v2 - v3);
  v8 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  (*(v4 + 8))(v7, v6);
  return v8;
}

uint64_t sub_1B0863A00(uint64_t a1)
{
  v1 = type metadata accessor for InProgressMessageDownload.EMLX();
  memcpy(__dst, (a1 + *(v1 + 20)), sizeof(__dst));
  sub_1B074E4B4(__dst, v5);
  v4 = sub_1B07A5884();
  sub_1B074E868(__dst);
  return v4;
}

uint64_t sub_1B0863A7C(uint64_t a1)
{
  v1 = type metadata accessor for InProgressMessageDownload.EMLX();
  memcpy(__dst, (a1 + *(v1 + 20)), sizeof(__dst));
  sub_1B074E4B4(__dst, v5);
  v4 = sub_1B07A5938();
  sub_1B074E868(__dst);
  return v4;
}

uint64_t sub_1B0863C14(void *a1, int a2)
{
  v12[2] = 0;
  v14 = a1;
  v13 = a2;
  v11 = [a1 summary];
  if (v11)
  {
    v6 = sub_1B0E44AD8();
    v7 = v2;
    MEMORY[0x1E69E5920](v11);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v12[0] = v8;
  v12[1] = v9;
  sub_1B03B1198(v12);
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    swift_beginAccess();
    v4 = sub_1B0A22140(a2);
    swift_endAccess();
    v5 = v4;
  }

  return v5 & 1;
}

uint64_t sub_1B0863D8C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v263 = a1;
  v258 = a2;
  v254 = a3;
  v255 = a4;
  v256 = a5;
  v257 = a6;
  v202 = sub_1B074E050;
  v203 = sub_1B07B073C;
  v204 = sub_1B0394C30;
  v205 = sub_1B0394C24;
  v206 = sub_1B074DFFC;
  v207 = sub_1B039BA88;
  v208 = sub_1B039BB94;
  v209 = sub_1B0394C24;
  v210 = sub_1B039BBA0;
  v211 = sub_1B039BC08;
  v212 = sub_1B06BA324;
  v213 = sub_1B074E0E4;
  v214 = sub_1B039BCF8;
  v215 = sub_1B07AB020;
  v216 = sub_1B039BC08;
  v217 = sub_1B0398F5C;
  v218 = sub_1B0398F5C;
  v219 = sub_1B0399178;
  v220 = sub_1B0398F5C;
  v221 = sub_1B0398F5C;
  v222 = sub_1B039BA94;
  v223 = sub_1B0398F5C;
  v224 = sub_1B0398F5C;
  v225 = sub_1B0399178;
  v226 = sub_1B0398F5C;
  v227 = sub_1B0398F5C;
  v228 = sub_1B03991EC;
  v229 = sub_1B0398F5C;
  v230 = sub_1B0398F5C;
  v231 = sub_1B03993BC;
  v232 = sub_1B0398F5C;
  v233 = sub_1B0398F5C;
  v234 = sub_1B039BCEC;
  v235 = sub_1B0398F5C;
  v236 = sub_1B0398F5C;
  v237 = sub_1B03991EC;
  v280 = 0;
  v278 = 0;
  v279 = 0;
  v277 = 0;
  v276 = 0;
  v275 = 0;
  v274 = 0;
  v238 = 0;
  v268 = 0;
  v259 = 0;
  v239 = *(type metadata accessor for InProgressMessageDownload.Completed() - 8);
  v240 = v239;
  v241 = *(v239 + 64);
  v242 = (v241 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v243 = (&v108 - v242);
  v244 = sub_1B0E439A8();
  v245 = *(v244 - 8);
  v246 = v244 - 8;
  v247 = (*(v245 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v259);
  v248 = &v108 - v247;
  v249 = _s6LoggerVMa_1();
  v250 = (*(*(v249 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v259);
  v251 = &v108 - v250;
  v252 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v253 = &v108 - v252;
  v260 = type metadata accessor for InProgressMessageDownload.EMLX();
  v261 = (*(*(v260 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v259);
  v262 = &v108 - v261;
  v280 = v9;
  v278 = v10;
  v279 = v11;
  v277 = v12;
  v276 = v13;
  v275 = v14;
  v274 = v6;
  v264 = type metadata accessor for MailboxPersistenceHelper.DownloadResult();
  if (sub_1B06E5FB4(*(v263 + *(v264 + 24)) & 1, 0))
  {
    v265 = v258;
    v266 = v254;
    v200 = v254 == 0;
    if (!v254)
    {
      v15 = *v255;
      sub_1B0866074();
    }
  }

  sub_1B07AF800(v263, v262);
  v196 = *(v263 + *(v264 + 20));
  MEMORY[0x1E69E5928](v196);
  sub_1B08660E4(v262, v196, v258, v254);
  MEMORY[0x1E69E5920](v196);
  sub_1B07AF320(v262);
  v197 = *(v263 + *(v264 + 20));
  MEMORY[0x1E69E5928](v197);
  v198 = [v197 globalMessageID];
  MEMORY[0x1E69E5920](v197);
  v199 = sub_1B0825730(v198);
  if (v16)
  {
    v21 = v248;
    v137 = &unk_1EB737000;
    sub_1B074B69C(v201 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v253);
    (*(v245 + 16))(v21, v253, v244);
    sub_1B074B764(v253);

    sub_1B074B69C(v201 + v137[299], v251);
    v22 = (v251 + *(v249 + 20));
    v140 = *v22;
    v141 = *(v22 + 1);
    v142 = *(v22 + 1);
    v143 = *(v22 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v251);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v139 = 36;
    v160 = 7;
    v23 = swift_allocObject();
    v24 = v141;
    v25 = v142;
    v26 = v143;
    v147 = v23;
    *(v23 + 16) = v140;
    *(v23 + 20) = v24;
    *(v23 + 24) = v25;
    *(v23 + 32) = v26;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v27 = swift_allocObject();
    v28 = v141;
    v29 = v142;
    v30 = v143;
    v138 = v27;
    *(v27 + 16) = v140;
    *(v27 + 20) = v28;
    *(v27 + 24) = v29;
    *(v27 + 32) = v30;

    v159 = 32;
    v31 = swift_allocObject();
    v32 = v138;
    v151 = v31;
    *(v31 + 16) = v202;
    *(v31 + 24) = v32;
    sub_1B0394868();
    sub_1B0394868();

    v33 = swift_allocObject();
    v34 = v141;
    v35 = v142;
    v36 = v143;
    v155 = v33;
    *(v33 + 16) = v140;
    *(v33 + 20) = v34;
    *(v33 + 24) = v35;
    *(v33 + 32) = v36;

    sub_1B07AFC78(v255, v243);
    v144 = (*(v240 + 80) + 16) & ~*(v240 + 80);
    v145 = swift_allocObject();
    sub_1B07B02D8(v243, (v145 + v144));

    v37 = swift_allocObject();
    v38 = v145;
    v161 = v37;
    *(v37 + 16) = v203;
    *(v37 + 24) = v38;

    v187 = sub_1B0E43988();
    v188 = sub_1B0E458E8();
    v157 = 17;
    v163 = swift_allocObject();
    v149 = 16;
    *(v163 + 16) = 16;
    v164 = swift_allocObject();
    v158 = 4;
    *(v164 + 16) = 4;
    v39 = swift_allocObject();
    v146 = v39;
    *(v39 + 16) = v204;
    *(v39 + 24) = 0;
    v40 = swift_allocObject();
    v41 = v146;
    v165 = v40;
    *(v40 + 16) = v205;
    *(v40 + 24) = v41;
    v166 = swift_allocObject();
    *(v166 + 16) = 0;
    v167 = swift_allocObject();
    *(v167 + 16) = 1;
    v42 = swift_allocObject();
    v43 = v147;
    v148 = v42;
    *(v42 + 16) = v206;
    *(v42 + 24) = v43;
    v44 = swift_allocObject();
    v45 = v148;
    v168 = v44;
    *(v44 + 16) = v207;
    *(v44 + 24) = v45;
    v169 = swift_allocObject();
    *(v169 + 16) = v149;
    v170 = swift_allocObject();
    *(v170 + 16) = v158;
    v46 = swift_allocObject();
    v150 = v46;
    *(v46 + 16) = v208;
    *(v46 + 24) = 0;
    v47 = swift_allocObject();
    v48 = v150;
    v171 = v47;
    *(v47 + 16) = v209;
    *(v47 + 24) = v48;
    v172 = swift_allocObject();
    *(v172 + 16) = 0;
    v173 = swift_allocObject();
    *(v173 + 16) = v158;
    v49 = swift_allocObject();
    v50 = v151;
    v152 = v49;
    *(v49 + 16) = v210;
    *(v49 + 24) = v50;
    v51 = swift_allocObject();
    v52 = v152;
    v174 = v51;
    *(v51 + 16) = v211;
    *(v51 + 24) = v52;
    v175 = swift_allocObject();
    *(v175 + 16) = 112;
    v176 = swift_allocObject();
    v154 = 8;
    *(v176 + 16) = 8;
    v153 = swift_allocObject();
    *(v153 + 16) = 0x786F626C69616DLL;
    v53 = swift_allocObject();
    v54 = v153;
    v177 = v53;
    *(v53 + 16) = v212;
    *(v53 + 24) = v54;
    v178 = swift_allocObject();
    *(v178 + 16) = 37;
    v179 = swift_allocObject();
    *(v179 + 16) = v154;
    v55 = swift_allocObject();
    v56 = v155;
    v156 = v55;
    *(v55 + 16) = v213;
    *(v55 + 24) = v56;
    v57 = swift_allocObject();
    v58 = v156;
    v180 = v57;
    *(v57 + 16) = v214;
    *(v57 + 24) = v58;
    v181 = swift_allocObject();
    *(v181 + 16) = 0;
    v182 = swift_allocObject();
    *(v182 + 16) = v158;
    v59 = swift_allocObject();
    v60 = v161;
    v162 = v59;
    *(v59 + 16) = v215;
    *(v59 + 24) = v60;
    v61 = swift_allocObject();
    v62 = v162;
    v184 = v61;
    *(v61 + 16) = v216;
    *(v61 + 24) = v62;
    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v183 = sub_1B0E46A48();
    v185 = v63;

    v64 = v163;
    v65 = v185;
    *v185 = v217;
    v65[1] = v64;

    v66 = v164;
    v67 = v185;
    v185[2] = v218;
    v67[3] = v66;

    v68 = v165;
    v69 = v185;
    v185[4] = v219;
    v69[5] = v68;

    v70 = v166;
    v71 = v185;
    v185[6] = v220;
    v71[7] = v70;

    v72 = v167;
    v73 = v185;
    v185[8] = v221;
    v73[9] = v72;

    v74 = v168;
    v75 = v185;
    v185[10] = v222;
    v75[11] = v74;

    v76 = v169;
    v77 = v185;
    v185[12] = v223;
    v77[13] = v76;

    v78 = v170;
    v79 = v185;
    v185[14] = v224;
    v79[15] = v78;

    v80 = v171;
    v81 = v185;
    v185[16] = v225;
    v81[17] = v80;

    v82 = v172;
    v83 = v185;
    v185[18] = v226;
    v83[19] = v82;

    v84 = v173;
    v85 = v185;
    v185[20] = v227;
    v85[21] = v84;

    v86 = v174;
    v87 = v185;
    v185[22] = v228;
    v87[23] = v86;

    v88 = v175;
    v89 = v185;
    v185[24] = v229;
    v89[25] = v88;

    v90 = v176;
    v91 = v185;
    v185[26] = v230;
    v91[27] = v90;

    v92 = v177;
    v93 = v185;
    v185[28] = v231;
    v93[29] = v92;

    v94 = v178;
    v95 = v185;
    v185[30] = v232;
    v95[31] = v94;

    v96 = v179;
    v97 = v185;
    v185[32] = v233;
    v97[33] = v96;

    v98 = v180;
    v99 = v185;
    v185[34] = v234;
    v99[35] = v98;

    v100 = v181;
    v101 = v185;
    v185[36] = v235;
    v101[37] = v100;

    v102 = v182;
    v103 = v185;
    v185[38] = v236;
    v103[39] = v102;

    v104 = v184;
    v105 = v185;
    v185[40] = v237;
    v105[41] = v104;
    sub_1B0394964();

    if (os_log_type_enabled(v187, v188))
    {
      v106 = v238;
      v130 = sub_1B0E45D78();
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v131 = sub_1B03949A8(0);
      v132 = sub_1B03949A8(1);
      v133 = &v273;
      v273 = v130;
      v134 = &v272;
      v272 = v131;
      v135 = &v271;
      v271 = v132;
      sub_1B0394A48(3, &v273);
      sub_1B0394A48(7, v133);
      v269 = v217;
      v270 = v163;
      sub_1B03949FC(&v269, v133, v134, v135);
      v136 = v106;
      if (v106)
      {

        __break(1u);
      }

      else
      {
        v269 = v218;
        v270 = v164;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v128 = 0;
        v269 = v219;
        v270 = v165;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v127 = 0;
        v269 = v220;
        v270 = v166;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v126 = 0;
        v269 = v221;
        v270 = v167;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v125 = 0;
        v269 = v222;
        v270 = v168;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v124 = 0;
        v269 = v223;
        v270 = v169;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v123 = 0;
        v269 = v224;
        v270 = v170;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v122 = 0;
        v269 = v225;
        v270 = v171;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v121 = 0;
        v269 = v226;
        v270 = v172;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v120 = 0;
        v269 = v227;
        v270 = v173;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v119 = 0;
        v269 = v228;
        v270 = v174;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v118 = 0;
        v269 = v229;
        v270 = v175;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v117 = 0;
        v269 = v230;
        v270 = v176;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v116 = 0;
        v269 = v231;
        v270 = v177;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v115 = 0;
        v269 = v232;
        v270 = v178;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v114 = 0;
        v269 = v233;
        v270 = v179;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v113 = 0;
        v269 = v234;
        v270 = v180;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v112 = 0;
        v269 = v235;
        v270 = v181;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v111 = 0;
        v269 = v236;
        v270 = v182;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        v110 = 0;
        v269 = v237;
        v270 = v184;
        sub_1B03949FC(&v269, &v273, &v272, &v271);
        _os_log_impl(&dword_1B0389000, v187, v188, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Download completed for UID %u but we can’t get a global message ID for it.", v130, 0x31u);
        sub_1B03998A8(v131);
        sub_1B03998A8(v132);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v187);
    (*(v245 + 8))(v248, v244);
    sub_1B0814D38(*v255, 0, 0, 1);
    v109 = sub_1B0829EAC();
    sub_1B07143A4(v109, v107, *v255, 1);
  }

  else
  {
    v195 = v199;
    v190 = v199;
    v268 = v199;
    v191 = *v255;
    sub_1B07AF800(v263, v262);
    v17 = (v262 + *(v260 + 20));
    v189 = __dst;
    memcpy(__dst, v17, sizeof(__dst));
    sub_1B074E4B4(__dst, &v267);
    sub_1B07AF320(v262);
    v192 = sub_1B07F5E48(v190, v189);
    v193 = v18;
    v194 = v19;
    sub_1B0814D38(v191, v192, v18, v19);
    return sub_1B087510C(v192, v193, v194);
  }
}

uint64_t sub_1B0866074()
{
  swift_beginAccess();
  sub_1B0A223E8();
  return swift_endAccess();
}

uint64_t sub_1B08660E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v29 = a2;
  v32 = a3;
  v33 = a4;
  v35 = sub_1B0875150;
  v36 = sub_1B04020AC;
  v55 = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v21 = *(type metadata accessor for InProgressMessageDownload.EMLX() - 8);
  v25 = v21;
  v26 = *(v21 + 64);
  v22 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = &v21 - v22;
  v55 = MEMORY[0x1EEE9AC00](v24);
  v54 = v5;
  v52 = v6;
  v53 = v7;
  v51 = v4;
  v38 = *(v4 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence);
  MEMORY[0x1E69E5928](v38);
  v41 = 1;
  sub_1B0E44838();
  v23 = v8;
  v39 = sub_1B0E44AC8();

  sub_1B07AF800(v24, v28);
  MEMORY[0x1E69E5928](v29);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v34 = 7;
  v30 = (v27 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v10 = v27;
  v11 = v9;
  v12 = v28;
  v37 = v11;
  *(v11 + 16) = v4;
  sub_1B07AF768(v12, v11 + v10);
  v13 = v31;
  v14 = v32;
  v15 = v33;
  v16 = v37;
  *(v37 + v30) = v29;
  v17 = (v16 + v13);
  *v17 = v14;
  v17[1] = v15;

  v18 = swift_allocObject();
  v19 = v37;
  v42 = v18;
  *(v18 + 16) = v35;
  *(v18 + 24) = v19;

  v49 = v36;
  v50 = v42;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = 0;
  v47 = sub_1B0402058;
  v48 = &block_descriptor_2868;
  v40 = _Block_copy(&aBlock);

  [v38 groupInsideWriteTransactionWithDescription:v39 block:v40];
  _Block_release(v40);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5920](v39);
    MEMORY[0x1E69E5920](v38);
  }

  return result;
}

char *sub_1B08664FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v265 = a1;
  v267 = a2;
  v266 = a3;
  v274 = a4;
  v216 = sub_1B074E050;
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
  v228 = sub_1B0875270;
  v229 = sub_1B03B0DF8;
  v230 = sub_1B087527C;
  v231 = sub_1B039BC08;
  v232 = sub_1B0398F5C;
  v233 = sub_1B0398F5C;
  v234 = sub_1B0399178;
  v235 = sub_1B0398F5C;
  v236 = sub_1B0398F5C;
  v237 = sub_1B039BA94;
  v238 = sub_1B0398F5C;
  v239 = sub_1B0398F5C;
  v240 = sub_1B0399178;
  v241 = sub_1B0398F5C;
  v242 = sub_1B0398F5C;
  v243 = sub_1B03991EC;
  v244 = sub_1B0398F5C;
  v245 = sub_1B0398F5C;
  v246 = sub_1B03993BC;
  v247 = sub_1B0398F5C;
  v248 = sub_1B0398F5C;
  v249 = sub_1B039BCEC;
  v250 = sub_1B0398F5C;
  v251 = sub_1B0398F5C;
  v252 = sub_1B0399260;
  v253 = sub_1B0398F5C;
  v254 = sub_1B0398F5C;
  v255 = sub_1B03991EC;
  v288 = 0;
  v287 = 0;
  v285 = 0;
  v286 = 0;
  v284 = 0;
  v283 = 0;
  v280 = 0;
  v281 = 0;
  v256 = 0;
  v259 = 0;
  v257 = (*(*(_s21AttachmentPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v258 = &v112 - v257;
  v260 = sub_1B0E439A8();
  v261 = *(v260 - 8);
  v262 = v260 - 8;
  v263 = (*(v261 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v259);
  v264 = &v112 - v263;
  v268 = _s6LoggerVMa_1();
  v270 = *(*(v268 - 8) + 64);
  v269 = (v270 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v274);
  v271 = &v112 - v269;
  v272 = (v270 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v273 = &v112 - v272;
  v288 = v7;
  v287 = v8;
  v285 = v9;
  v286 = v6;
  v284 = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v274)
  {
    v213 = v266;
    v214 = v274;
    v10 = v264;
    v163 = v274;
    v162 = v266;
    v280 = v266;
    v281 = v274;
    v155 = &unk_1EB737000;
    sub_1B074B69C(v215 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v273);
    (*(v261 + 16))(v10, v273, v260);
    sub_1B074B764(v273);

    sub_1B074B69C(v215 + v155[299], v271);
    v11 = (v271 + *(v268 + 20));
    v158 = *v11;
    v159 = *(v11 + 1);
    v160 = *(v11 + 1);
    v161 = *(v11 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v271);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v157 = 36;
    v180 = 7;
    v12 = swift_allocObject();
    v13 = v159;
    v14 = v160;
    v15 = v161;
    v165 = v12;
    *(v12 + 16) = v158;
    *(v12 + 20) = v13;
    *(v12 + 24) = v14;
    *(v12 + 32) = v15;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v16 = swift_allocObject();
    v17 = v159;
    v18 = v160;
    v19 = v161;
    v156 = v16;
    *(v16 + 16) = v158;
    *(v16 + 20) = v17;
    *(v16 + 24) = v18;
    *(v16 + 32) = v19;

    v179 = 32;
    v20 = swift_allocObject();
    v21 = v156;
    v169 = v20;
    *(v20 + 16) = v216;
    *(v20 + 24) = v21;
    sub_1B0394868();
    sub_1B0394868();

    v22 = swift_allocObject();
    v23 = v159;
    v24 = v160;
    v25 = v161;
    v172 = v22;
    *(v22 + 16) = v158;
    *(v22 + 20) = v23;
    *(v22 + 24) = v24;
    *(v22 + 32) = v25;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v26 = swift_allocObject();
    v27 = v163;
    v28 = v26;
    v29 = v267;
    v175 = v28;
    *(v28 + 16) = v162;
    *(v28 + 24) = v27;
    MEMORY[0x1E69E5928](v29);
    v183 = 24;
    v181 = swift_allocObject();
    *(v181 + 16) = v267;
    v211 = sub_1B0E43988();
    v212 = sub_1B0E45908();
    v177 = 17;
    v184 = swift_allocObject();
    v167 = 16;
    *(v184 + 16) = 16;
    v185 = swift_allocObject();
    v178 = 4;
    *(v185 + 16) = 4;
    v30 = swift_allocObject();
    v164 = v30;
    *(v30 + 16) = v217;
    *(v30 + 24) = 0;
    v31 = swift_allocObject();
    v32 = v164;
    v186 = v31;
    *(v31 + 16) = v218;
    *(v31 + 24) = v32;
    v187 = swift_allocObject();
    *(v187 + 16) = 0;
    v188 = swift_allocObject();
    *(v188 + 16) = 1;
    v33 = swift_allocObject();
    v34 = v165;
    v166 = v33;
    *(v33 + 16) = v219;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v166;
    v189 = v35;
    *(v35 + 16) = v220;
    *(v35 + 24) = v36;
    v190 = swift_allocObject();
    *(v190 + 16) = v167;
    v191 = swift_allocObject();
    *(v191 + 16) = v178;
    v37 = swift_allocObject();
    v168 = v37;
    *(v37 + 16) = v221;
    *(v37 + 24) = 0;
    v38 = swift_allocObject();
    v39 = v168;
    v192 = v38;
    *(v38 + 16) = v222;
    *(v38 + 24) = v39;
    v193 = swift_allocObject();
    *(v193 + 16) = 0;
    v194 = swift_allocObject();
    *(v194 + 16) = v178;
    v40 = swift_allocObject();
    v41 = v169;
    v170 = v40;
    *(v40 + 16) = v223;
    *(v40 + 24) = v41;
    v42 = swift_allocObject();
    v43 = v170;
    v195 = v42;
    *(v42 + 16) = v224;
    *(v42 + 24) = v43;
    v196 = swift_allocObject();
    *(v196 + 16) = 112;
    v197 = swift_allocObject();
    v174 = 8;
    *(v197 + 16) = 8;
    v171 = swift_allocObject();
    *(v171 + 16) = 0x786F626C69616DLL;
    v44 = swift_allocObject();
    v45 = v171;
    v198 = v44;
    *(v44 + 16) = v225;
    *(v44 + 24) = v45;
    v199 = swift_allocObject();
    *(v199 + 16) = 37;
    v200 = swift_allocObject();
    *(v200 + 16) = v174;
    v46 = swift_allocObject();
    v47 = v172;
    v173 = v46;
    *(v46 + 16) = v226;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    v49 = v173;
    v201 = v48;
    *(v48 + 16) = v227;
    *(v48 + 24) = v49;
    v202 = swift_allocObject();
    *(v202 + 16) = 0;
    v203 = swift_allocObject();
    *(v203 + 16) = v174;
    v50 = swift_allocObject();
    v51 = v175;
    v176 = v50;
    *(v50 + 16) = v228;
    *(v50 + 24) = v51;
    v52 = swift_allocObject();
    v53 = v176;
    v204 = v52;
    *(v52 + 16) = v229;
    *(v52 + 24) = v53;
    v205 = swift_allocObject();
    *(v205 + 16) = 0;
    v206 = swift_allocObject();
    *(v206 + 16) = v178;
    v54 = swift_allocObject();
    v55 = v181;
    v182 = v54;
    *(v54 + 16) = v230;
    *(v54 + 24) = v55;
    v56 = swift_allocObject();
    v57 = v182;
    v208 = v56;
    *(v56 + 16) = v231;
    *(v56 + 24) = v57;
    v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v207 = sub_1B0E46A48();
    v209 = v58;

    v59 = v184;
    v60 = v209;
    *v209 = v232;
    v60[1] = v59;

    v61 = v185;
    v62 = v209;
    v209[2] = v233;
    v62[3] = v61;

    v63 = v186;
    v64 = v209;
    v209[4] = v234;
    v64[5] = v63;

    v65 = v187;
    v66 = v209;
    v209[6] = v235;
    v66[7] = v65;

    v67 = v188;
    v68 = v209;
    v209[8] = v236;
    v68[9] = v67;

    v69 = v189;
    v70 = v209;
    v209[10] = v237;
    v70[11] = v69;

    v71 = v190;
    v72 = v209;
    v209[12] = v238;
    v72[13] = v71;

    v73 = v191;
    v74 = v209;
    v209[14] = v239;
    v74[15] = v73;

    v75 = v192;
    v76 = v209;
    v209[16] = v240;
    v76[17] = v75;

    v77 = v193;
    v78 = v209;
    v209[18] = v241;
    v78[19] = v77;

    v79 = v194;
    v80 = v209;
    v209[20] = v242;
    v80[21] = v79;

    v81 = v195;
    v82 = v209;
    v209[22] = v243;
    v82[23] = v81;

    v83 = v196;
    v84 = v209;
    v209[24] = v244;
    v84[25] = v83;

    v85 = v197;
    v86 = v209;
    v209[26] = v245;
    v86[27] = v85;

    v87 = v198;
    v88 = v209;
    v209[28] = v246;
    v88[29] = v87;

    v89 = v199;
    v90 = v209;
    v209[30] = v247;
    v90[31] = v89;

    v91 = v200;
    v92 = v209;
    v209[32] = v248;
    v92[33] = v91;

    v93 = v201;
    v94 = v209;
    v209[34] = v249;
    v94[35] = v93;

    v95 = v202;
    v96 = v209;
    v209[36] = v250;
    v96[37] = v95;

    v97 = v203;
    v98 = v209;
    v209[38] = v251;
    v98[39] = v97;

    v99 = v204;
    v100 = v209;
    v209[40] = v252;
    v100[41] = v99;

    v101 = v205;
    v102 = v209;
    v209[42] = v253;
    v102[43] = v101;

    v103 = v206;
    v104 = v209;
    v209[44] = v254;
    v104[45] = v103;

    v105 = v208;
    v106 = v209;
    v209[46] = v255;
    v106[47] = v105;
    sub_1B0394964();

    if (os_log_type_enabled(v211, v212))
    {
      v107 = v256;
      v148 = sub_1B0E45D78();
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v149 = sub_1B03949A8(0);
      v150 = sub_1B03949A8(1);
      v151 = &v279;
      v279 = v148;
      v152 = &v278;
      v278 = v149;
      v153 = &v277;
      v277 = v150;
      sub_1B0394A48(3, &v279);
      sub_1B0394A48(8, v151);
      v275 = v232;
      v276 = v184;
      sub_1B03949FC(&v275, v151, v152, v153);
      v154 = v107;
      if (v107)
      {

        __break(1u);
      }

      else
      {
        v275 = v233;
        v276 = v185;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v146 = 0;
        v275 = v234;
        v276 = v186;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v145 = 0;
        v275 = v235;
        v276 = v187;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v144 = 0;
        v275 = v236;
        v276 = v188;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v143 = 0;
        v275 = v237;
        v276 = v189;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v142 = 0;
        v275 = v238;
        v276 = v190;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v141 = 0;
        v275 = v239;
        v276 = v191;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v140 = 0;
        v275 = v240;
        v276 = v192;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v139 = 0;
        v275 = v241;
        v276 = v193;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v138 = 0;
        v275 = v242;
        v276 = v194;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v137 = 0;
        v275 = v243;
        v276 = v195;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v136 = 0;
        v275 = v244;
        v276 = v196;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v135 = 0;
        v275 = v245;
        v276 = v197;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v134 = 0;
        v275 = v246;
        v276 = v198;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v133 = 0;
        v275 = v247;
        v276 = v199;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v132 = 0;
        v275 = v248;
        v276 = v200;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v131 = 0;
        v275 = v249;
        v276 = v201;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v130 = 0;
        v275 = v250;
        v276 = v202;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v129 = 0;
        v275 = v251;
        v276 = v203;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v128 = 0;
        v275 = v252;
        v276 = v204;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v127 = 0;
        v275 = v253;
        v276 = v205;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v126 = 0;
        v275 = v254;
        v276 = v206;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        v125 = 0;
        v275 = v255;
        v276 = v208;
        sub_1B03949FC(&v275, &v279, &v278, &v277);
        _os_log_impl(&dword_1B0389000, v211, v212, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Setting %ld character summary for message UID %u.", v148, 0x3Bu);
        sub_1B03998A8(v149);
        sub_1B03998A8(v150);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v211);
    (*(v261 + 8))(v264, v260);
  }

  v123 = sub_1B07982B0();
  v108 = sub_1B0798040();
  v124 = sub_1B06E5FB4(v108, 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v274)
  {
    v121 = v266;
    v122 = v274;
    v118 = v274;
    v119 = sub_1B0E44AC8();

    v120 = v119;
  }

  else
  {
    v120 = 0;
  }

  v116 = v120;
  [v267 setMessageData:v123 isPartial:v124 summary:?];
  MEMORY[0x1E69E5920](v116);
  MEMORY[0x1E69E5920](v123);
  result = sub_1B0825730([v267 globalMessageID]);
  v117 = result;
  if ((v110 & 1) == 0)
  {
    v115 = v117;
    v113 = v117;
    v283 = v117;
    sub_1B07C93A8(v258);
    v111 = (v265 + *(type metadata accessor for InProgressMessageDownload.EMLX() + 20));
    v112 = __dst;
    memcpy(__dst, v111, sizeof(__dst));
    sub_1B074E4B4(__dst, &v282);
    v114 = sub_1B07A5A98();
    sub_1B074E868(v112);
    sub_1B07CD084(v113);

    return sub_1B07CDB7C(v258);
  }

  return result;
}

uint64_t sub_1B08689A0(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v13 = v2;
  sub_1B0868AB0(a1, a2, v12);
  v11 = v12[0];
  v7 = v12[1];
  v8 = v12[2];
  v9 = v12[3];
  v10 = v12[4];
  v6 = *(v4 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
  MEMORY[0x1E69E5928](v6);
  sub_1B07B639C(v7, v8, v9, v10, a1);
  MEMORY[0x1E69E5920](v6);

  return v11;
}

uint64_t sub_1B0868AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = 0;
  v28 = a1;
  v27 = a2;
  v10 = swift_allocObject();
  v25 = v10 + 2;
  v10[2] = sub_1B07B681C();
  v10[3] = v3;
  v10[4] = v4;
  v10[5] = v5;
  v22[1] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  v6 = sub_1B071CEA8();
  MEMORY[0x1B27270C0](v22, v9, v6);
  v21 = v22[0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B60, &unk_1B0EA09B0);
  sub_1B074AEA4();
  sub_1B074AF08();
  sub_1B0E46718();

  sub_1B039E440(&v21);
  v20[0] = v22[2];
  v20[1] = v22[3];
  v20[2] = v22[4];
  v20[3] = v22[5];
  v20[4] = v22[6];
  v20[5] = v22[7];
  v20[6] = v22[8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B68, &qword_1B0E9AF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1AD0, &qword_1B0E9DE20);
  sub_1B074AF90();
  sub_1B071CD70();
  sub_1B0E46748();

  sub_1B0875294(v20);
  memcpy(__dst, v23, sizeof(__dst));
  memcpy(v19, __dst, sizeof(v19));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F8, &qword_1B0E9DE28);
  sub_1B08752E4();
  sub_1B0E45738();
  memcpy(v30, v24, sizeof(v30));
  sub_1B087570C(v30, v18);
  memcpy(v17, v30, sizeof(v17));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2730, &unk_1B0E9DE50);
  sub_1B0875818();
  v11 = sub_1B0E45378();
  swift_beginAccess();
  v12 = v10[2];
  v13 = v10[3];
  v14 = v10[4];
  v16 = v10[5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  sub_1B08758A0(v30);

  result = v11;
  *a3 = v11;
  a3[1] = v12;
  a3[2] = v13;
  a3[3] = v14;
  a3[4] = v16;
  return result;
}

id sub_1B0868E54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v12 = a3;
  v7 = a1;
  v5[1] = a2;
  v15 = 0;
  v14 = 0;
  v10 = sub_1B0E42E68();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v11 = v5 - v6;
  v15 = *v7;
  v14 = v3;
  (*(v8 + 16))();
  v13 = sub_1B0868F80(v11);
  (*(v8 + 8))(v11, v10);
  result = v13;
  *v12 = v13;
  return result;
}

id sub_1B0868F80(uint64_t a1)
{
  v45 = a1;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3760, &unk_1B0E9AE90);
  v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v10 - v34;
  v36 = sub_1B0E42E68();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (v37[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v10 - v39;
  v41 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v39);
  v42 = &v10 - v41;
  v43 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v41);
  v44 = &v10 - v43;
  v46 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v45);
  v47 = &v10 - v46;
  v48 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v49 = &v10 - v48;
  v50 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v51 = &v10 - v50;
  v56 = v8;
  v55 = v1;
  v52 = sub_1B0721E7C(v8);
  if (!v52)
  {
    return 0;
  }

  v32 = v52;
  v27 = v52;
  v54 = v52;
  v30 = [v52 itemsToCopy];
  sub_1B071C094();
  v29 = sub_1B0E451B8();
  v53 = v29;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B071C0F8();
  v31 = sub_1B0E45748();

  MEMORY[0x1E69E5920](v30);
  if (v31)
  {
LABEL_19:
    MEMORY[0x1E69E5920](v27);
    return 0;
  }

  MEMORY[0x1E69E5928](v27);
  v21 = [v27 mailboxURL];
  sub_1B0E42DE8();
  v22 = v37[4];
  v23 = v37 + 4;
  v22(v51, v44, v36);
  MEMORY[0x1E69E5920](v27);
  v24 = v37[7];
  v25 = v37 + 7;
  v24(v51, 0, 1, v36);
  v26 = [v27 destinationMailboxURL];
  if (v26)
  {
    v20 = v26;
    v19 = v26;
    sub_1B0E42DE8();
    v22(v49, v42, v36);
    v24(v49, 0, 1, v36);
    MEMORY[0x1E69E5920](v19);
  }

  else
  {
    v24(v49, 1, 1, v36);
  }

  v16 = &v35[*(v33 + 48)];
  sub_1B071C180(v51, v35);
  sub_1B071C180(v49, v16);
  v17 = v37[6];
  v18 = v37 + 6;
  if (v17(v35, 1, v36) == 1)
  {
    if (v17(v16, 1, v36) == 1)
    {
      sub_1B06E3800(v35);
      v15 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    sub_1B071C180(v35, v47);
    if (v17(v16, 1, v36) != 1)
    {
      v22(v42, v47, v36);
      v22(v40, v16, v36);
      sub_1B071C3D4();
      v14 = sub_1B0E44A28();
      v13 = v37[1];
      v12 = v37 + 1;
      v13(v40, v36);
      v13(v42, v36);
      sub_1B06E3800(v35);
      v15 = v14;
      goto LABEL_14;
    }

    (v37[1])(v47, v36);
  }

  sub_1B071C2A8(v35);
  v15 = 0;
LABEL_14:
  v11 = v15;
  sub_1B06E3800(v49);
  sub_1B06E3800(v51);
  MEMORY[0x1E69E5920](v21);
  if ((v11 & 1) == 0)
  {
    goto LABEL_19;
  }

  return v27;
}

uint64_t *sub_1B0869730@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15[0] = 0;
  v15[1] = 0;
  v18 = *a1;
  v12 = v18;
  v17 = a2 + 16;
  v16 = sub_1B0E46A48();
  v13 = [v18 itemsToCopy];
  sub_1B071C094();
  sub_1B0E451B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B071C0F8();
  sub_1B0E45798();
  MEMORY[0x1E69E5920](v13);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C40, &qword_1B0E9B030);
    sub_1B0E46518();
    if (!v14)
    {
      break;
    }

    MEMORY[0x1E69E5928](v18);
    (MEMORY[0x1E69E5928])();
    sub_1B0824FC8(v18, v14);
    if (!v3)
    {
      MEMORY[0x1E69E5928](v18);
      [v18 persistentID];
      MEMORY[0x1E69E5920](v18);
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
      sub_1B0E454D8();
      swift_endAccess();
      (MEMORY[0x1E69E5920])();
      (MEMORY[0x1E69E5920])();
      break;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1AD0, &qword_1B0E9DE20);
    sub_1B0E452E8();

    (MEMORY[0x1E69E5920])();
  }

  sub_1B039E440(v15);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1AD0, &qword_1B0E9DE20);
  sub_1B0875684();
  v10 = sub_1B0E45748();

  if (v10)
  {
    MEMORY[0x1E69E5928](v12);
    [v12 persistentID];
    MEMORY[0x1E69E5920](v12);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
    sub_1B0E454D8();
    swift_endAccess();
    (MEMORY[0x1E69E5920])();
    *a3 = sub_1B0E46A48();
    return sub_1B039E440(&v16);
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = sub_1B0E452A8();

    v7 = [v12 itemsToCopy];
    sub_1B0E451B8();
    v8 = sub_1B0E452A8();

    MEMORY[0x1E69E5920](v7);
    if (v9 == v8)
    {
      v5 = v16;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v6 = v5;
    }

    else
    {
      v6 = sub_1B0E46A48();
    }

    *a3 = v6;
    return sub_1B039E440(&v16);
  }
}

uint64_t sub_1B0869C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v282 = a2;
  v361 = a1;
  v284 = sub_1B074E050;
  v285 = sub_1B0394C30;
  v286 = sub_1B0394C24;
  v287 = sub_1B074DFFC;
  v288 = sub_1B039BA88;
  v289 = sub_1B039BB94;
  v290 = sub_1B0394C24;
  v291 = sub_1B039BBA0;
  v292 = sub_1B039BC08;
  v293 = 0x786F626C69616DLL;
  v294 = sub_1B06BA324;
  v295 = sub_1B074E0E4;
  v296 = sub_1B039BCF8;
  v297 = sub_1B0398F5C;
  v298 = sub_1B0398F5C;
  v299 = sub_1B0399178;
  v300 = sub_1B0398F5C;
  v301 = sub_1B0398F5C;
  v302 = sub_1B039BA94;
  v303 = sub_1B0398F5C;
  v304 = sub_1B0398F5C;
  v305 = sub_1B0399178;
  v306 = sub_1B0398F5C;
  v307 = sub_1B0398F5C;
  v308 = sub_1B03991EC;
  v309 = sub_1B0398F5C;
  v310 = sub_1B0398F5C;
  v311 = sub_1B03993BC;
  v312 = sub_1B0398F5C;
  v313 = sub_1B0398F5C;
  v314 = sub_1B039BCEC;
  v315 = sub_1B074E050;
  v316 = sub_1B0394C24;
  v317 = sub_1B074DFFC;
  v318 = sub_1B039BA88;
  v319 = sub_1B0394C24;
  v320 = sub_1B039BBA0;
  v321 = sub_1B039BC08;
  v322 = sub_1B06BA324;
  v323 = sub_1B074E0E4;
  v324 = sub_1B039BCF8;
  v325 = sub_1B0398F5C;
  v326 = sub_1B0398F5C;
  v327 = sub_1B0399178;
  v328 = sub_1B0398F5C;
  v329 = sub_1B0398F5C;
  v330 = sub_1B039BA94;
  v331 = sub_1B0398F5C;
  v332 = sub_1B0398F5C;
  v333 = sub_1B0399178;
  v334 = sub_1B0398F5C;
  v335 = sub_1B0398F5C;
  v336 = sub_1B03991EC;
  v337 = sub_1B0398F5C;
  v338 = sub_1B0398F5C;
  v339 = sub_1B03993BC;
  v340 = sub_1B0398F5C;
  v341 = sub_1B0398F5C;
  v342 = sub_1B039BCEC;
  v381 = 0;
  v380 = 0;
  v379 = 0;
  v343 = 0;
  v373 = 0;
  v358 = 0;
  v344 = sub_1B0E439A8();
  v345 = *(v344 - 8);
  v346 = v344 - 8;
  v347 = (*(v345 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](0);
  v348 = v158 - v347;
  v349 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v350 = v158 - v349;
  v351 = _s6LoggerVMa_1();
  v352 = (*(*(v351 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v351);
  v353 = v158 - v352;
  v354 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v158 - v352);
  v355 = v158 - v354;
  v356 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v357 = v158 - v356;
  v359 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2740, &qword_1B0EA1FE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v358);
  v360 = v158 - v359;
  v362 = _s6UploadVMa();
  v363 = *(v362 - 8);
  v364 = v362 - 8;
  v365 = (*(v363 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v361);
  v366 = v158 - v365;
  v381 = v158 - v365;
  v380 = v8;
  v379 = v2;
  v367 = [v8 destinationMessage];
  if (v367)
  {
    v281 = v367;
    v280 = v367;
    v373 = v367;
    sub_1B086D1C0(v367, v360);
    if ((*(v363 + 48))(v360, 1, v362) == 1)
    {
      v10 = v350;
      sub_1B08758FC(v360);
      v235 = &unk_1EB737000;
      sub_1B074B69C(v283 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v357);
      (*(v345 + 16))(v10, v357, v344);
      sub_1B074B764(v357);

      sub_1B074B69C(v283 + v235[299], v355);
      v11 = (v355 + *(v351 + 20));
      v238 = *v11;
      v239 = *(v11 + 1);
      v240 = *(v11 + 1);
      v241 = *(v11 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v355);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v237 = 36;
      v254 = 7;
      v12 = swift_allocObject();
      v13 = v239;
      v14 = v240;
      v15 = v241;
      v243 = v12;
      *(v12 + 16) = v238;
      *(v12 + 20) = v13;
      *(v12 + 24) = v14;
      *(v12 + 32) = v15;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v16 = swift_allocObject();
      v17 = v239;
      v18 = v240;
      v19 = v241;
      v236 = v16;
      *(v16 + 16) = v238;
      *(v16 + 20) = v17;
      *(v16 + 24) = v18;
      *(v16 + 32) = v19;

      v253 = 32;
      v20 = swift_allocObject();
      v21 = v236;
      v248 = v20;
      *(v20 + 16) = v284;
      *(v20 + 24) = v21;
      sub_1B0394868();
      sub_1B0394868();

      v22 = swift_allocObject();
      v23 = v239;
      v24 = v240;
      v25 = v241;
      v255 = v22;
      *(v22 + 16) = v238;
      *(v22 + 20) = v23;
      *(v22 + 24) = v24;
      *(v22 + 32) = v25;

      v278 = sub_1B0E43988();
      v279 = sub_1B0E458E8();
      v251 = 17;
      v257 = swift_allocObject();
      v245 = 16;
      *(v257 + 16) = 16;
      v258 = swift_allocObject();
      v247 = 4;
      *(v258 + 16) = 4;
      v26 = swift_allocObject();
      v242 = v26;
      *(v26 + 16) = v285;
      *(v26 + 24) = 0;
      v27 = swift_allocObject();
      v28 = v242;
      v259 = v27;
      *(v27 + 16) = v286;
      *(v27 + 24) = v28;
      v260 = swift_allocObject();
      *(v260 + 16) = 0;
      v261 = swift_allocObject();
      *(v261 + 16) = 1;
      v29 = swift_allocObject();
      v30 = v243;
      v244 = v29;
      *(v29 + 16) = v287;
      *(v29 + 24) = v30;
      v31 = swift_allocObject();
      v32 = v244;
      v262 = v31;
      *(v31 + 16) = v288;
      *(v31 + 24) = v32;
      v263 = swift_allocObject();
      *(v263 + 16) = v245;
      v264 = swift_allocObject();
      *(v264 + 16) = v247;
      v33 = swift_allocObject();
      v246 = v33;
      *(v33 + 16) = v289;
      *(v33 + 24) = 0;
      v34 = swift_allocObject();
      v35 = v246;
      v265 = v34;
      *(v34 + 16) = v290;
      *(v34 + 24) = v35;
      v266 = swift_allocObject();
      *(v266 + 16) = 0;
      v267 = swift_allocObject();
      *(v267 + 16) = v247;
      v36 = swift_allocObject();
      v37 = v248;
      v249 = v36;
      *(v36 + 16) = v291;
      *(v36 + 24) = v37;
      v38 = swift_allocObject();
      v39 = v249;
      v268 = v38;
      *(v38 + 16) = v292;
      *(v38 + 24) = v39;
      v269 = swift_allocObject();
      *(v269 + 16) = 112;
      v270 = swift_allocObject();
      v252 = 8;
      *(v270 + 16) = 8;
      v250 = swift_allocObject();
      *(v250 + 16) = v293;
      v40 = swift_allocObject();
      v41 = v250;
      v271 = v40;
      *(v40 + 16) = v294;
      *(v40 + 24) = v41;
      v272 = swift_allocObject();
      *(v272 + 16) = 37;
      v273 = swift_allocObject();
      *(v273 + 16) = v252;
      v42 = swift_allocObject();
      v43 = v255;
      v256 = v42;
      *(v42 + 16) = v295;
      *(v42 + 24) = v43;
      v44 = swift_allocObject();
      v45 = v256;
      v275 = v44;
      *(v44 + 16) = v296;
      *(v44 + 24) = v45;
      v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v274 = sub_1B0E46A48();
      v276 = v46;

      v47 = v257;
      v48 = v276;
      *v276 = v297;
      v48[1] = v47;

      v49 = v258;
      v50 = v276;
      v276[2] = v298;
      v50[3] = v49;

      v51 = v259;
      v52 = v276;
      v276[4] = v299;
      v52[5] = v51;

      v53 = v260;
      v54 = v276;
      v276[6] = v300;
      v54[7] = v53;

      v55 = v261;
      v56 = v276;
      v276[8] = v301;
      v56[9] = v55;

      v57 = v262;
      v58 = v276;
      v276[10] = v302;
      v58[11] = v57;

      v59 = v263;
      v60 = v276;
      v276[12] = v303;
      v60[13] = v59;

      v61 = v264;
      v62 = v276;
      v276[14] = v304;
      v62[15] = v61;

      v63 = v265;
      v64 = v276;
      v276[16] = v305;
      v64[17] = v63;

      v65 = v266;
      v66 = v276;
      v276[18] = v306;
      v66[19] = v65;

      v67 = v267;
      v68 = v276;
      v276[20] = v307;
      v68[21] = v67;

      v69 = v268;
      v70 = v276;
      v276[22] = v308;
      v70[23] = v69;

      v71 = v269;
      v72 = v276;
      v276[24] = v309;
      v72[25] = v71;

      v73 = v270;
      v74 = v276;
      v276[26] = v310;
      v74[27] = v73;

      v75 = v271;
      v76 = v276;
      v276[28] = v311;
      v76[29] = v75;

      v77 = v272;
      v78 = v276;
      v276[30] = v312;
      v78[31] = v77;

      v79 = v273;
      v80 = v276;
      v276[32] = v313;
      v80[33] = v79;

      v81 = v275;
      v82 = v276;
      v276[34] = v314;
      v82[35] = v81;
      sub_1B0394964();

      if (os_log_type_enabled(v278, v279))
      {
        v83 = v343;
        v228 = sub_1B0E45D78();
        v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v229 = sub_1B03949A8(0);
        v230 = sub_1B03949A8(1);
        v231 = &v372;
        v372 = v228;
        v232 = &v371;
        v371 = v229;
        v233 = &v370;
        v370 = v230;
        sub_1B0394A48(3, &v372);
        sub_1B0394A48(6, v231);
        v368 = v297;
        v369 = v257;
        sub_1B03949FC(&v368, v231, v232, v233);
        v234 = v83;
        if (v83)
        {

          __break(1u);
        }

        else
        {
          v368 = v298;
          v369 = v258;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v226 = 0;
          v368 = v299;
          v369 = v259;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v225 = 0;
          v368 = v300;
          v369 = v260;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v224 = 0;
          v368 = v301;
          v369 = v261;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v223 = 0;
          v368 = v302;
          v369 = v262;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v222 = 0;
          v368 = v303;
          v369 = v263;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v221 = 0;
          v368 = v304;
          v369 = v264;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v220 = 0;
          v368 = v305;
          v369 = v265;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v219 = 0;
          v368 = v306;
          v369 = v266;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v218 = 0;
          v368 = v307;
          v369 = v267;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v217 = 0;
          v368 = v308;
          v369 = v268;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v216 = 0;
          v368 = v309;
          v369 = v269;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v215 = 0;
          v368 = v310;
          v369 = v270;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v214 = 0;
          v368 = v311;
          v369 = v271;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v213 = 0;
          v368 = v312;
          v369 = v272;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v212 = 0;
          v368 = v313;
          v369 = v273;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v211 = 0;
          v368 = v314;
          v369 = v275;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          _os_log_impl(&dword_1B0389000, v278, v279, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Unable to encode message as upload data. Ignoring.", v228, 0x2Bu);
          sub_1B03998A8(v229);
          sub_1B03998A8(v230);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v278);
      (*(v345 + 8))(v350, v344);
      (*(v363 + 56))(v282, 1, 1, v362);
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1B0875A20(v360, v366);
      sub_1B0828B38(v366, v282);
      (*(v363 + 56))(v282, 0, 1, v362);
      sub_1B0828D04(v366);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v84 = v348;
    v166 = &unk_1EB737000;
    sub_1B074B69C(v283 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v353);
    (*(v345 + 16))(v84, v353, v344);
    sub_1B074B764(v353);

    sub_1B074B69C(v283 + v166[299], v355);
    v85 = (v355 + *(v351 + 20));
    v169 = *v85;
    v170 = *(v85 + 1);
    v171 = *(v85 + 1);
    v172 = *(v85 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v355);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v168 = 36;
    v185 = 7;
    v86 = swift_allocObject();
    v87 = v170;
    v88 = v171;
    v89 = v172;
    v174 = v86;
    *(v86 + 16) = v169;
    *(v86 + 20) = v87;
    *(v86 + 24) = v88;
    *(v86 + 32) = v89;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v90 = swift_allocObject();
    v91 = v170;
    v92 = v171;
    v93 = v172;
    v167 = v90;
    *(v90 + 16) = v169;
    *(v90 + 20) = v91;
    *(v90 + 24) = v92;
    *(v90 + 32) = v93;

    v184 = 32;
    v94 = swift_allocObject();
    v95 = v167;
    v179 = v94;
    *(v94 + 16) = v315;
    *(v94 + 24) = v95;
    sub_1B0394868();
    sub_1B0394868();

    v96 = swift_allocObject();
    v97 = v170;
    v98 = v171;
    v99 = v172;
    v186 = v96;
    *(v96 + 16) = v169;
    *(v96 + 20) = v97;
    *(v96 + 24) = v98;
    *(v96 + 32) = v99;

    v209 = sub_1B0E43988();
    v210 = sub_1B0E458E8();
    v182 = 17;
    v188 = swift_allocObject();
    v176 = 16;
    *(v188 + 16) = 16;
    v189 = swift_allocObject();
    v178 = 4;
    *(v189 + 16) = 4;
    v100 = swift_allocObject();
    v173 = v100;
    *(v100 + 16) = v285;
    *(v100 + 24) = 0;
    v101 = swift_allocObject();
    v102 = v173;
    v190 = v101;
    *(v101 + 16) = v316;
    *(v101 + 24) = v102;
    v191 = swift_allocObject();
    *(v191 + 16) = 0;
    v192 = swift_allocObject();
    *(v192 + 16) = 1;
    v103 = swift_allocObject();
    v104 = v174;
    v175 = v103;
    *(v103 + 16) = v317;
    *(v103 + 24) = v104;
    v105 = swift_allocObject();
    v106 = v175;
    v193 = v105;
    *(v105 + 16) = v318;
    *(v105 + 24) = v106;
    v194 = swift_allocObject();
    *(v194 + 16) = v176;
    v195 = swift_allocObject();
    *(v195 + 16) = v178;
    v107 = swift_allocObject();
    v177 = v107;
    *(v107 + 16) = v289;
    *(v107 + 24) = 0;
    v108 = swift_allocObject();
    v109 = v177;
    v196 = v108;
    *(v108 + 16) = v319;
    *(v108 + 24) = v109;
    v197 = swift_allocObject();
    *(v197 + 16) = 0;
    v198 = swift_allocObject();
    *(v198 + 16) = v178;
    v110 = swift_allocObject();
    v111 = v179;
    v180 = v110;
    *(v110 + 16) = v320;
    *(v110 + 24) = v111;
    v112 = swift_allocObject();
    v113 = v180;
    v199 = v112;
    *(v112 + 16) = v321;
    *(v112 + 24) = v113;
    v200 = swift_allocObject();
    *(v200 + 16) = 112;
    v201 = swift_allocObject();
    v183 = 8;
    *(v201 + 16) = 8;
    v181 = swift_allocObject();
    *(v181 + 16) = v293;
    v114 = swift_allocObject();
    v115 = v181;
    v202 = v114;
    *(v114 + 16) = v322;
    *(v114 + 24) = v115;
    v203 = swift_allocObject();
    *(v203 + 16) = 37;
    v204 = swift_allocObject();
    *(v204 + 16) = v183;
    v116 = swift_allocObject();
    v117 = v186;
    v187 = v116;
    *(v116 + 16) = v323;
    *(v116 + 24) = v117;
    v118 = swift_allocObject();
    v119 = v187;
    v206 = v118;
    *(v118 + 16) = v324;
    *(v118 + 24) = v119;
    v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v205 = sub_1B0E46A48();
    v207 = v120;

    v121 = v188;
    v122 = v207;
    *v207 = v325;
    v122[1] = v121;

    v123 = v189;
    v124 = v207;
    v207[2] = v326;
    v124[3] = v123;

    v125 = v190;
    v126 = v207;
    v207[4] = v327;
    v126[5] = v125;

    v127 = v191;
    v128 = v207;
    v207[6] = v328;
    v128[7] = v127;

    v129 = v192;
    v130 = v207;
    v207[8] = v329;
    v130[9] = v129;

    v131 = v193;
    v132 = v207;
    v207[10] = v330;
    v132[11] = v131;

    v133 = v194;
    v134 = v207;
    v207[12] = v331;
    v134[13] = v133;

    v135 = v195;
    v136 = v207;
    v207[14] = v332;
    v136[15] = v135;

    v137 = v196;
    v138 = v207;
    v207[16] = v333;
    v138[17] = v137;

    v139 = v197;
    v140 = v207;
    v207[18] = v334;
    v140[19] = v139;

    v141 = v198;
    v142 = v207;
    v207[20] = v335;
    v142[21] = v141;

    v143 = v199;
    v144 = v207;
    v207[22] = v336;
    v144[23] = v143;

    v145 = v200;
    v146 = v207;
    v207[24] = v337;
    v146[25] = v145;

    v147 = v201;
    v148 = v207;
    v207[26] = v338;
    v148[27] = v147;

    v149 = v202;
    v150 = v207;
    v207[28] = v339;
    v150[29] = v149;

    v151 = v203;
    v152 = v207;
    v207[30] = v340;
    v152[31] = v151;

    v153 = v204;
    v154 = v207;
    v207[32] = v341;
    v154[33] = v153;

    v155 = v206;
    v156 = v207;
    v207[34] = v342;
    v156[35] = v155;
    sub_1B0394964();

    if (os_log_type_enabled(v209, v210))
    {
      v157 = v343;
      v159 = sub_1B0E45D78();
      v158[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v160 = sub_1B03949A8(0);
      v161 = sub_1B03949A8(1);
      v162 = &v378;
      v378 = v159;
      v163 = &v377;
      v377 = v160;
      v164 = &v376;
      v376 = v161;
      sub_1B0394A48(3, &v378);
      sub_1B0394A48(6, v162);
      v374 = v325;
      v375 = v188;
      sub_1B03949FC(&v374, v162, v163, v164);
      v165 = v157;
      if (v157)
      {

        __break(1u);
      }

      else
      {
        v374 = v326;
        v375 = v189;
        sub_1B03949FC(&v374, &v378, &v377, &v376);
        v158[16] = 0;
        v374 = v327;
        v375 = v190;
        sub_1B03949FC(&v374, &v378, &v377, &v376);
        v158[15] = 0;
        v374 = v328;
        v375 = v191;
        sub_1B03949FC(&v374, &v378, &v377, &v376);
        v158[14] = 0;
        v374 = v329;
        v375 = v192;
        sub_1B03949FC(&v374, &v378, &v377, &v376);
        v158[13] = 0;
        v374 = v330;
        v375 = v193;
        sub_1B03949FC(&v374, &v378, &v377, &v376);
        v158[12] = 0;
        v374 = v331;
        v375 = v194;
        sub_1B03949FC(&v374, &v378, &v377, &v376);
        v158[11] = 0;
        v374 = v332;
        v375 = v195;
        sub_1B03949FC(&v374, &v378, &v377, &v376);
        v158[10] = 0;
        v374 = v333;
        v375 = v196;
        sub_1B03949FC(&v374, &v378, &v377, &v376);
        v158[9] = 0;
        v374 = v334;
        v375 = v197;
        sub_1B03949FC(&v374, &v378, &v377, &v376);
        v158[8] = 0;
        v374 = v335;
        v375 = v198;
        sub_1B03949FC(&v374, &v378, &v377, &v376);
        v158[7] = 0;
        v374 = v336;
        v375 = v199;
        sub_1B03949FC(&v374, &v378, &v377, &v376);
        v158[6] = 0;
        v374 = v337;
        v375 = v200;
        sub_1B03949FC(&v374, &v378, &v377, &v376);
        v158[5] = 0;
        v374 = v338;
        v375 = v201;
        sub_1B03949FC(&v374, &v378, &v377, &v376);
        v158[4] = 0;
        v374 = v339;
        v375 = v202;
        sub_1B03949FC(&v374, &v378, &v377, &v376);
        v158[3] = 0;
        v374 = v340;
        v375 = v203;
        sub_1B03949FC(&v374, &v378, &v377, &v376);
        v158[2] = 0;
        v374 = v341;
        v375 = v204;
        sub_1B03949FC(&v374, &v378, &v377, &v376);
        v158[1] = 0;
        v374 = v342;
        v375 = v206;
        sub_1B03949FC(&v374, &v378, &v377, &v376);
        _os_log_impl(&dword_1B0389000, v209, v210, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] No destination message for local action. Ignoring.", v159, 0x2Bu);
        sub_1B03998A8(v160);
        sub_1B03998A8(v161);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v209);
    (*(v345 + 8))(v348, v344);
    return (*(v363 + 56))(v282, 1, 1, v362);
  }
}

uint64_t sub_1B086D1C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v191 = a1;
  v149 = sub_1B074E050;
  v150 = sub_1B0394C30;
  v151 = sub_1B0394C24;
  v152 = sub_1B074DFFC;
  v153 = sub_1B039BA88;
  v154 = sub_1B039BB94;
  v155 = sub_1B0394C24;
  v156 = sub_1B039BBA0;
  v157 = sub_1B039BC08;
  v158 = sub_1B06BA324;
  v159 = sub_1B074E0E4;
  v160 = sub_1B039BCF8;
  v161 = sub_1B0398F5C;
  v162 = sub_1B0398F5C;
  v163 = sub_1B0399178;
  v164 = sub_1B0398F5C;
  v165 = sub_1B0398F5C;
  v166 = sub_1B039BA94;
  v167 = sub_1B0398F5C;
  v168 = sub_1B0398F5C;
  v169 = sub_1B0399178;
  v170 = sub_1B0398F5C;
  v171 = sub_1B0398F5C;
  v172 = sub_1B03991EC;
  v173 = sub_1B0398F5C;
  v174 = sub_1B0398F5C;
  v175 = sub_1B03993BC;
  v176 = sub_1B0398F5C;
  v177 = sub_1B0398F5C;
  v178 = sub_1B039BCEC;
  v202 = 0;
  v201 = 0;
  v179 = 0;
  v195 = 0;
  v193 = 0;
  v194 = 0;
  v180 = 0;
  v181 = sub_1B0E439A8();
  v182 = *(v181 - 8);
  v183 = v181 - 8;
  v184 = (*(v182 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v185 = v84 - v184;
  v186 = _s6LoggerVMa_1();
  v187 = (*(*(v186 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v191);
  v188 = v84 - v187;
  v189 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v190 = v84 - v189;
  v202 = v5;
  v201 = v2;
  swift_unknownObjectRetain();
  objc_opt_self();
  v192 = swift_dynamicCastObjCClass();
  if (v192)
  {
    v146 = v192;
  }

  else
  {
    swift_unknownObjectRelease();
    v146 = 0;
  }

  v145 = v146;
  if (v146)
  {
    v144 = v145;
    v141 = v145;
    v195 = v145;
    v6 = sub_1B086F758(v145);
    v142 = v6;
    v143 = v7;
    if ((v7 & 0xF000000000000000) != 0xF000000000000000)
    {
      v139 = v142;
      v140 = v143;
      v138 = v143;
      v137 = v142;
      v193 = v142;
      v194 = v143;
      swift_unknownObjectRetain();
      sub_1B074B69C(v148 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v190);
      sub_1B0828780(v191, v137, v138, v190, v147);
      return MEMORY[0x1E69E5920](v141);
    }

    MEMORY[0x1E69E5920](v141);
  }

  v9 = v185;
  v92 = &unk_1EB737000;
  sub_1B074B69C(v148 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v188);
  (*(v182 + 16))(v9, v188, v181);
  sub_1B074B764(v188);

  sub_1B074B69C(v148 + v92[299], v190);
  v10 = (v190 + *(v186 + 20));
  v95 = *v10;
  v96 = *(v10 + 1);
  v97 = *(v10 + 1);
  v98 = *(v10 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v190);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v94 = 36;
  v111 = 7;
  v11 = swift_allocObject();
  v12 = v96;
  v13 = v97;
  v14 = v98;
  v100 = v11;
  *(v11 + 16) = v95;
  *(v11 + 20) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v14;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = swift_allocObject();
  v16 = v96;
  v17 = v97;
  v18 = v98;
  v93 = v15;
  *(v15 + 16) = v95;
  *(v15 + 20) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v18;

  v110 = 32;
  v19 = swift_allocObject();
  v20 = v93;
  v105 = v19;
  *(v19 + 16) = v149;
  *(v19 + 24) = v20;
  sub_1B0394868();
  sub_1B0394868();

  v21 = swift_allocObject();
  v22 = v96;
  v23 = v97;
  v24 = v98;
  v112 = v21;
  *(v21 + 16) = v95;
  *(v21 + 20) = v22;
  *(v21 + 24) = v23;
  *(v21 + 32) = v24;

  v135 = sub_1B0E43988();
  v136 = sub_1B0E458E8();
  v108 = 17;
  v114 = swift_allocObject();
  v102 = 16;
  *(v114 + 16) = 16;
  v115 = swift_allocObject();
  v104 = 4;
  *(v115 + 16) = 4;
  v25 = swift_allocObject();
  v99 = v25;
  *(v25 + 16) = v150;
  *(v25 + 24) = 0;
  v26 = swift_allocObject();
  v27 = v99;
  v116 = v26;
  *(v26 + 16) = v151;
  *(v26 + 24) = v27;
  v117 = swift_allocObject();
  *(v117 + 16) = 0;
  v118 = swift_allocObject();
  *(v118 + 16) = 1;
  v28 = swift_allocObject();
  v29 = v100;
  v101 = v28;
  *(v28 + 16) = v152;
  *(v28 + 24) = v29;
  v30 = swift_allocObject();
  v31 = v101;
  v119 = v30;
  *(v30 + 16) = v153;
  *(v30 + 24) = v31;
  v120 = swift_allocObject();
  *(v120 + 16) = v102;
  v121 = swift_allocObject();
  *(v121 + 16) = v104;
  v32 = swift_allocObject();
  v103 = v32;
  *(v32 + 16) = v154;
  *(v32 + 24) = 0;
  v33 = swift_allocObject();
  v34 = v103;
  v122 = v33;
  *(v33 + 16) = v155;
  *(v33 + 24) = v34;
  v123 = swift_allocObject();
  *(v123 + 16) = 0;
  v124 = swift_allocObject();
  *(v124 + 16) = v104;
  v35 = swift_allocObject();
  v36 = v105;
  v106 = v35;
  *(v35 + 16) = v156;
  *(v35 + 24) = v36;
  v37 = swift_allocObject();
  v38 = v106;
  v125 = v37;
  *(v37 + 16) = v157;
  *(v37 + 24) = v38;
  v126 = swift_allocObject();
  *(v126 + 16) = 112;
  v127 = swift_allocObject();
  v109 = 8;
  *(v127 + 16) = 8;
  v107 = swift_allocObject();
  *(v107 + 16) = 0x786F626C69616DLL;
  v39 = swift_allocObject();
  v40 = v107;
  v128 = v39;
  *(v39 + 16) = v158;
  *(v39 + 24) = v40;
  v129 = swift_allocObject();
  *(v129 + 16) = 37;
  v130 = swift_allocObject();
  *(v130 + 16) = v109;
  v41 = swift_allocObject();
  v42 = v112;
  v113 = v41;
  *(v41 + 16) = v159;
  *(v41 + 24) = v42;
  v43 = swift_allocObject();
  v44 = v113;
  v132 = v43;
  *(v43 + 16) = v160;
  *(v43 + 24) = v44;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v131 = sub_1B0E46A48();
  v133 = v45;

  v46 = v114;
  v47 = v133;
  *v133 = v161;
  v47[1] = v46;

  v48 = v115;
  v49 = v133;
  v133[2] = v162;
  v49[3] = v48;

  v50 = v116;
  v51 = v133;
  v133[4] = v163;
  v51[5] = v50;

  v52 = v117;
  v53 = v133;
  v133[6] = v164;
  v53[7] = v52;

  v54 = v118;
  v55 = v133;
  v133[8] = v165;
  v55[9] = v54;

  v56 = v119;
  v57 = v133;
  v133[10] = v166;
  v57[11] = v56;

  v58 = v120;
  v59 = v133;
  v133[12] = v167;
  v59[13] = v58;

  v60 = v121;
  v61 = v133;
  v133[14] = v168;
  v61[15] = v60;

  v62 = v122;
  v63 = v133;
  v133[16] = v169;
  v63[17] = v62;

  v64 = v123;
  v65 = v133;
  v133[18] = v170;
  v65[19] = v64;

  v66 = v124;
  v67 = v133;
  v133[20] = v171;
  v67[21] = v66;

  v68 = v125;
  v69 = v133;
  v133[22] = v172;
  v69[23] = v68;

  v70 = v126;
  v71 = v133;
  v133[24] = v173;
  v71[25] = v70;

  v72 = v127;
  v73 = v133;
  v133[26] = v174;
  v73[27] = v72;

  v74 = v128;
  v75 = v133;
  v133[28] = v175;
  v75[29] = v74;

  v76 = v129;
  v77 = v133;
  v133[30] = v176;
  v77[31] = v76;

  v78 = v130;
  v79 = v133;
  v133[32] = v177;
  v79[33] = v78;

  v80 = v132;
  v81 = v133;
  v133[34] = v178;
  v81[35] = v80;
  sub_1B0394964();

  if (os_log_type_enabled(v135, v136))
  {
    v82 = v179;
    v85 = sub_1B0E45D78();
    v84[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v86 = sub_1B03949A8(0);
    v87 = sub_1B03949A8(1);
    v88 = &v200;
    v200 = v85;
    v89 = &v199;
    v199 = v86;
    v90 = &v198;
    v198 = v87;
    sub_1B0394A48(3, &v200);
    sub_1B0394A48(6, v88);
    v196 = v161;
    v197 = v114;
    sub_1B03949FC(&v196, v88, v89, v90);
    v91 = v82;
    if (v82)
    {

      __break(1u);
    }

    else
    {
      v196 = v162;
      v197 = v115;
      sub_1B03949FC(&v196, &v200, &v199, &v198);
      v84[16] = 0;
      v196 = v163;
      v197 = v116;
      sub_1B03949FC(&v196, &v200, &v199, &v198);
      v84[15] = 0;
      v196 = v164;
      v197 = v117;
      sub_1B03949FC(&v196, &v200, &v199, &v198);
      v84[14] = 0;
      v196 = v165;
      v197 = v118;
      sub_1B03949FC(&v196, &v200, &v199, &v198);
      v84[13] = 0;
      v196 = v166;
      v197 = v119;
      sub_1B03949FC(&v196, &v200, &v199, &v198);
      v84[12] = 0;
      v196 = v167;
      v197 = v120;
      sub_1B03949FC(&v196, &v200, &v199, &v198);
      v84[11] = 0;
      v196 = v168;
      v197 = v121;
      sub_1B03949FC(&v196, &v200, &v199, &v198);
      v84[10] = 0;
      v196 = v169;
      v197 = v122;
      sub_1B03949FC(&v196, &v200, &v199, &v198);
      v84[9] = 0;
      v196 = v170;
      v197 = v123;
      sub_1B03949FC(&v196, &v200, &v199, &v198);
      v84[8] = 0;
      v196 = v171;
      v197 = v124;
      sub_1B03949FC(&v196, &v200, &v199, &v198);
      v84[7] = 0;
      v196 = v172;
      v197 = v125;
      sub_1B03949FC(&v196, &v200, &v199, &v198);
      v84[6] = 0;
      v196 = v173;
      v197 = v126;
      sub_1B03949FC(&v196, &v200, &v199, &v198);
      v84[5] = 0;
      v196 = v174;
      v197 = v127;
      sub_1B03949FC(&v196, &v200, &v199, &v198);
      v84[4] = 0;
      v196 = v175;
      v197 = v128;
      sub_1B03949FC(&v196, &v200, &v199, &v198);
      v84[3] = 0;
      v196 = v176;
      v197 = v129;
      sub_1B03949FC(&v196, &v200, &v199, &v198);
      v84[2] = 0;
      v196 = v177;
      v197 = v130;
      sub_1B03949FC(&v196, &v200, &v199, &v198);
      v84[1] = 0;
      v196 = v178;
      v197 = v132;
      sub_1B03949FC(&v196, &v200, &v199, &v198);
      _os_log_impl(&dword_1B0389000, v135, v136, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Unable to get message data for message upload. Ignoring.", v85, 0x2Bu);
      sub_1B03998A8(v86);
      sub_1B03998A8(v87);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v135);
  (*(v182 + 8))(v185, v181);
  v83 = _s6UploadVMa();
  return (*(*(v83 - 8) + 56))(v147, 1);
}

uint64_t sub_1B086ED20(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v18 = a1;
  v20 = a2;
  v19 = a3;
  v25 = a4;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v28 = 0;
  v21 = 0;
  v22 = (*(*(_s6LoggerVMa_1() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v23 = &v11 - v22;
  v34 = v5;
  v33 = v6;
  v31 = v7;
  v32 = v8 & 1;
  v30 = v4;
  v24 = sub_1B0875BBC();
  v26 = sub_1B0829EAC();
  v27 = v9;
  if (v25)
  {
    v15 = 0x100000000;
  }

  else
  {
    v16 = HIDWORD(v19);
    v15 = HIDWORD(v19);
  }

  v12 = v15;
  sub_1B074B69C(v17 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v23);
  LODWORD(v29) = v12;
  BYTE4(v29) = BYTE4(v12) & 1;
  v14 = sub_1B086EF30(v18, v20, v26, v27, v29, v23);
  sub_1B074B764(v23);

  v28 = v14;
  v13 = *(v17 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
  MEMORY[0x1E69E5928](v13);
  [v13 persistResults:v14 forAction:v18];
  MEMORY[0x1E69E5920](v13);
  return MEMORY[0x1E69E5920](v14);
}

unint64_t sub_1B086EF30(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v17 = 0;
  v25 = a5;
  v7 = a5;
  v8 = BYTE4(a5);
  v24 = a1;
  v23 = a2;
  v21 = a3;
  v22 = a4;
  v19 = a5;
  v20 = BYTE4(a5) & 1;
  v18 = a6;
  sub_1B074EFAC();
  MEMORY[0x1E69E5928](a2);
  v13 = a2;
  v14 = v7;
  v15 = v8 & 1;
  v16 = a6;
  v11 = sub_1B0740A78(sub_1B0875C20, v12);
  MEMORY[0x1E69E5920](a2);
  return v11;
}

uint64_t sub_1B086F044(uint64_t a1, uint64_t a2)
{
  sub_1B0875BBC();
  v7 = sub_1B086F108(a1, a2);
  v6 = *(v4 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
  MEMORY[0x1E69E5928](v6);
  [v6 persistResults:v7 forAction:a1];
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v7);
}

unint64_t sub_1B086F108(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v9 = a1;
  v8 = a2;
  sub_1B074EFAC();
  MEMORY[0x1E69E5928](a2);
  v6 = a2;
  v4 = sub_1B0740A78(sub_1B0875C50, v5);
  MEMORY[0x1E69E5920](a2);
  return v4;
}

uint64_t sub_1B086F1A8(uint64_t a1, int *a2)
{
  v6 = 0;
  v7 = a1;
  v6 = *a2;
  v5 = v6;
  v4 = sub_1B03948EC();
  v2 = sub_1B041C1E8();
  BinaryInteger.init<A>(_:)(&v5, MEMORY[0x1E69E6530], &type metadata for UID, v4, v2);
  return sub_1B0E432B8();
}

unint64_t sub_1B086F238()
{
  v2 = qword_1EB6DAB80;
  if (!qword_1EB6DAB80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAB80);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B086F29C()
{
  v2 = qword_1EB6DAFC8;
  if (!qword_1EB6DAFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2620, &unk_1B0E9DD90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B086F324(int a1)
{
  v11 = a1;
  v10 = v1;
  v2 = sub_1B0E46A48();
  *v3 = a1;
  sub_1B0394964();
  v9 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2610, &unk_1B0E9C610);
  v4 = sub_1B07F193C();
  sub_1B0829BE8(&v9, v7, v4);
  sub_1B039E440(&v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B30, &qword_1B0E9AF68);
  sub_1B0875C58();
  sub_1B0E45728();

  return v8;
}

uint64_t sub_1B086F420(int a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v19 = 0;
  v21 = a1;
  v20 = v1;
  v17 = sub_1B082A818(a1);
  if (v17)
  {
    v19 = v17;
    v24[0] = 0;
    v14 = *(v16 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_store);
    MEMORY[0x1E69E5928](v14);
    MEMORY[0x1E69E5928](v17);
    v18 = 0;
    v15 = [v14 fullBodyDataForMessage:v17 andHeaderDataIfReadilyAvailable:&v18 isComplete:0 downloadIfNecessary:0 didDownload:?];
    v13 = v18;
    MEMORY[0x1E69E5928](v18);
    MEMORY[0x1E69E5928](v13);
    v2 = v24[0];
    v24[0] = v13;
    MEMORY[0x1E69E5920](v2);
    MEMORY[0x1E69E5920](v17);
    MEMORY[0x1E69E5920](v14);
    if (v15)
    {
      v9 = sub_1B0E42F38();
      v10 = v3;
      MEMORY[0x1E69E5920](v15);
      v11 = v9;
      v12 = v10;
    }

    else
    {
      v11 = 0;
      v12 = 0xF000000000000000;
    }

    sub_1B070E144(v11, v12);
    v22 = v13;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2750, &unk_1B0E9DE60);
    sub_1B03F1A20(sub_1B086F6EC, 0, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E6969080], v8, &v23);
    sub_1B06D4E94(&v22);
    v6 = v23;
    sub_1B06D4E94(v24);
    MEMORY[0x1E69E5920](v17);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1B086F6EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = sub_1B0E42F38();
  a2[1] = v2;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1B086F758(void *a1)
{
  v18[1] = 0;
  v18[2] = a1;
  v18[0] = 0;
  v15 = [a1 messageDataIsComplete:0 downloadIfNecessary:0];
  if (v15)
  {
    v11 = sub_1B0E42F38();
    v12 = v1;
    MEMORY[0x1E69E5920](v15);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  v16[0] = v13;
  v16[1] = v14;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FC8, &unk_1B0E9B250);
  v2 = sub_1B071952C();
  sub_1B03F1A20(sub_1B07529EC, 0, v9, MEMORY[0x1E69E73E0], v2, v10, &v17);
  sub_1B043C03C(v16);
  v8 = v17;
  if (v17)
  {
    v7 = [v17 mf_dataByConvertingUnixNewlinesToNetwork];
    MEMORY[0x1E69E5920](v8);
    if (v7)
    {
      v5 = sub_1B0E42F38();
      MEMORY[0x1E69E5920](v7);
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  sub_1B06D4E94(v18);
  return v4;
}

uint64_t sub_1B086F9B8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v301 = a1;
  v294 = a2;
  v286 = a4;
  v300 = 0;
  v237 = sub_1B074E050;
  v238 = sub_1B03F7AE0;
  v239 = sub_1B0394C30;
  v240 = sub_1B0394C24;
  v241 = sub_1B074DFFC;
  v242 = sub_1B039BA88;
  v243 = sub_1B039BB94;
  v244 = sub_1B0394C24;
  v245 = sub_1B039BBA0;
  v246 = sub_1B039BC08;
  v247 = sub_1B06BA324;
  v248 = sub_1B074E0E4;
  v249 = sub_1B039BCF8;
  v250 = sub_1B07AB020;
  v251 = sub_1B039BC08;
  v252 = sub_1B070B550;
  v253 = sub_1B039BCF8;
  v254 = sub_1B0398F5C;
  v255 = sub_1B0398F5C;
  v256 = sub_1B0399178;
  v257 = sub_1B0398F5C;
  v258 = sub_1B0398F5C;
  v259 = sub_1B039BA94;
  v260 = sub_1B0398F5C;
  v261 = sub_1B0398F5C;
  v262 = sub_1B0399178;
  v263 = sub_1B0398F5C;
  v264 = sub_1B0398F5C;
  v265 = sub_1B03991EC;
  v266 = sub_1B0398F5C;
  v267 = sub_1B0398F5C;
  v268 = sub_1B03993BC;
  v269 = sub_1B0398F5C;
  v270 = sub_1B0398F5C;
  v271 = sub_1B039BCEC;
  v272 = sub_1B0398F5C;
  v273 = sub_1B0398F5C;
  v274 = sub_1B03991EC;
  v275 = sub_1B0398F5C;
  v276 = sub_1B0398F5C;
  v277 = sub_1B039BCEC;
  v317 = 0;
  v316 = 0;
  v314 = 0;
  v315 = 0;
  v313 = 0;
  v312 = 0;
  v310 = 0;
  v311 = 0;
  v309 = 0;
  v308 = 0;
  v278 = 0;
  v318 = a3;
  v291 = a3;
  v302 = BYTE4(a3);
  v293 = 0;
  v279 = _s6LoggerVMa_1();
  v280 = (*(*(v279 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](0);
  v281 = v119 - v280;
  v282 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v283 = v119 - v282;
  v284 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v285 = v119 - v284;
  v287 = sub_1B0E439A8();
  v288 = *(v287 - 8);
  v289 = v287 - 8;
  v290 = (*(v288 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v301);
  v292 = v119 - v290;
  v317 = v8;
  v316 = v9;
  v314 = v291;
  v315 = v10 & 1;
  v313 = v11;
  swift_getObjectType();
  swift_unknownObjectRetain();
  [v301 setPhaseForResults_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v297 = sub_1B071C094();
  v296 = sub_1B0E46A48();
  v295 = v12;
  MEMORY[0x1E69E5928](v294);
  v13 = v296;
  *v295 = v294;
  sub_1B0394964();
  v298 = v13;
  v299 = sub_1B0E451A8();

  [v301 setCompletedItems_];
  MEMORY[0x1E69E5920](v299);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [v301 setFailedItems_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [v301 setCreatedServerMessages_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [v301 setDownloadedDataByCopyItems_];
  swift_unknownObjectRelease();
  if (v302)
  {
    goto LABEL_20;
  }

  v236 = v291;
  v234 = v291;
  v312 = v291;
  v14 = [v294 destinationMessage];
  v235 = v14;
  if (v14)
  {
    v233 = v235;
    v229 = v235;
    swift_getObjectType();
    v15 = [v229 persistentID];
    v230 = v15;
    if (v15)
    {
      v228 = v230;
      v223 = v230;
      v224 = sub_1B0E44AD8();
      v225 = v16;
      MEMORY[0x1E69E5920](v223);
      v226 = v224;
      v227 = v225;
    }

    else
    {
      v226 = 0;
      v227 = 0;
    }

    v222 = v227;
    v221 = v226;
    swift_unknownObjectRelease();
    v231 = v221;
    v232 = v222;
  }

  else
  {
    v231 = 0;
    v232 = 0;
  }

  v219 = v232;
  v220 = v231;
  if (!v232)
  {
LABEL_20:
    swift_getObjectType();
    swift_unknownObjectRetain();
    v119[1] = 0;
    v119[2] = sub_1B086F238();
    v119[3] = sub_1B0E46A48();
    v120 = sub_1B0E451A8();

    [v301 setCreatedServerMessages_];
    MEMORY[0x1E69E5920](v120);
    return swift_unknownObjectRelease();
  }

  else
  {
    v217 = v220;
    v218 = v219;
    v167 = v219;
    v166 = v220;
    v310 = v220;
    v311 = v219;
    (*(v288 + 16))(v292, v286, v287);
    sub_1B074B69C(v286, v285);
    sub_1B074B69C(v285, v283);
    sub_1B074E41C(v285, v281);
    v17 = (v283 + *(v279 + 20));
    v161 = *v17;
    v162 = *(v17 + 1);
    v163 = *(v17 + 1);
    v164 = *(v17 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v283);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v160 = 36;
    v184 = 7;
    v18 = swift_allocObject();
    v19 = v162;
    v20 = v163;
    v21 = v164;
    v169 = v18;
    *(v18 + 16) = v161;
    *(v18 + 20) = v19;
    *(v18 + 24) = v20;
    *(v18 + 32) = v21;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v22 = swift_allocObject();
    v23 = v162;
    v24 = v163;
    v25 = v164;
    v159 = v22;
    *(v22 + 16) = v161;
    *(v22 + 20) = v23;
    *(v22 + 24) = v24;
    *(v22 + 32) = v25;

    v183 = 32;
    v26 = swift_allocObject();
    v27 = v159;
    v173 = v26;
    *(v26 + 16) = v237;
    *(v26 + 24) = v27;
    sub_1B0394868();
    sub_1B0394868();

    v28 = swift_allocObject();
    v29 = v162;
    v30 = v163;
    v31 = v164;
    v32 = v28;
    v33 = v281;
    v176 = v32;
    *(v32 + 16) = v161;
    *(v32 + 20) = v29;
    *(v32 + 24) = v30;
    *(v32 + 32) = v31;
    sub_1B074B764(v33);
    v165 = swift_allocObject();
    *(v165 + 16) = v234;

    v34 = swift_allocObject();
    v35 = v165;
    v179 = v34;
    *(v34 + 16) = v238;
    *(v34 + 24) = v35;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v36 = swift_allocObject();
    v37 = v167;
    v185 = v36;
    *(v36 + 16) = v166;
    *(v36 + 24) = v37;
    v215 = sub_1B0E43988();
    v216 = sub_1B0E45908();
    v181 = 17;
    v188 = swift_allocObject();
    v171 = 16;
    *(v188 + 16) = 16;
    v189 = swift_allocObject();
    v178 = 4;
    *(v189 + 16) = 4;
    v38 = swift_allocObject();
    v168 = v38;
    *(v38 + 16) = v239;
    *(v38 + 24) = 0;
    v39 = swift_allocObject();
    v40 = v168;
    v190 = v39;
    *(v39 + 16) = v240;
    *(v39 + 24) = v40;
    v191 = swift_allocObject();
    *(v191 + 16) = 0;
    v192 = swift_allocObject();
    *(v192 + 16) = 1;
    v41 = swift_allocObject();
    v42 = v169;
    v170 = v41;
    *(v41 + 16) = v241;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v170;
    v193 = v43;
    *(v43 + 16) = v242;
    *(v43 + 24) = v44;
    v194 = swift_allocObject();
    *(v194 + 16) = v171;
    v195 = swift_allocObject();
    *(v195 + 16) = v178;
    v45 = swift_allocObject();
    v172 = v45;
    *(v45 + 16) = v243;
    *(v45 + 24) = 0;
    v46 = swift_allocObject();
    v47 = v172;
    v196 = v46;
    *(v46 + 16) = v244;
    *(v46 + 24) = v47;
    v197 = swift_allocObject();
    *(v197 + 16) = 0;
    v198 = swift_allocObject();
    *(v198 + 16) = v178;
    v48 = swift_allocObject();
    v49 = v173;
    v174 = v48;
    *(v48 + 16) = v245;
    *(v48 + 24) = v49;
    v50 = swift_allocObject();
    v51 = v174;
    v199 = v50;
    *(v50 + 16) = v246;
    *(v50 + 24) = v51;
    v200 = swift_allocObject();
    *(v200 + 16) = 112;
    v201 = swift_allocObject();
    v182 = 8;
    *(v201 + 16) = 8;
    v187 = 24;
    v175 = swift_allocObject();
    *(v175 + 16) = 0x786F626C69616DLL;
    v52 = swift_allocObject();
    v53 = v175;
    v202 = v52;
    *(v52 + 16) = v247;
    *(v52 + 24) = v53;
    v203 = swift_allocObject();
    *(v203 + 16) = 37;
    v204 = swift_allocObject();
    *(v204 + 16) = v182;
    v54 = swift_allocObject();
    v55 = v176;
    v177 = v54;
    *(v54 + 16) = v248;
    *(v54 + 24) = v55;
    v56 = swift_allocObject();
    v57 = v177;
    v205 = v56;
    *(v56 + 16) = v249;
    *(v56 + 24) = v57;
    v206 = swift_allocObject();
    *(v206 + 16) = 0;
    v207 = swift_allocObject();
    *(v207 + 16) = v178;
    v58 = swift_allocObject();
    v59 = v179;
    v180 = v58;
    *(v58 + 16) = v250;
    *(v58 + 24) = v59;
    v60 = swift_allocObject();
    v61 = v180;
    v208 = v60;
    *(v60 + 16) = v251;
    *(v60 + 24) = v61;
    v209 = swift_allocObject();
    *(v209 + 16) = 32;
    v210 = swift_allocObject();
    *(v210 + 16) = v182;
    v62 = swift_allocObject();
    v63 = v185;
    v186 = v62;
    *(v62 + 16) = v252;
    *(v62 + 24) = v63;
    v64 = swift_allocObject();
    v65 = v186;
    v212 = v64;
    *(v64 + 16) = v253;
    *(v64 + 24) = v65;
    v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v211 = sub_1B0E46A48();
    v213 = v66;

    v67 = v188;
    v68 = v213;
    *v213 = v254;
    v68[1] = v67;

    v69 = v189;
    v70 = v213;
    v213[2] = v255;
    v70[3] = v69;

    v71 = v190;
    v72 = v213;
    v213[4] = v256;
    v72[5] = v71;

    v73 = v191;
    v74 = v213;
    v213[6] = v257;
    v74[7] = v73;

    v75 = v192;
    v76 = v213;
    v213[8] = v258;
    v76[9] = v75;

    v77 = v193;
    v78 = v213;
    v213[10] = v259;
    v78[11] = v77;

    v79 = v194;
    v80 = v213;
    v213[12] = v260;
    v80[13] = v79;

    v81 = v195;
    v82 = v213;
    v213[14] = v261;
    v82[15] = v81;

    v83 = v196;
    v84 = v213;
    v213[16] = v262;
    v84[17] = v83;

    v85 = v197;
    v86 = v213;
    v213[18] = v263;
    v86[19] = v85;

    v87 = v198;
    v88 = v213;
    v213[20] = v264;
    v88[21] = v87;

    v89 = v199;
    v90 = v213;
    v213[22] = v265;
    v90[23] = v89;

    v91 = v200;
    v92 = v213;
    v213[24] = v266;
    v92[25] = v91;

    v93 = v201;
    v94 = v213;
    v213[26] = v267;
    v94[27] = v93;

    v95 = v202;
    v96 = v213;
    v213[28] = v268;
    v96[29] = v95;

    v97 = v203;
    v98 = v213;
    v213[30] = v269;
    v98[31] = v97;

    v99 = v204;
    v100 = v213;
    v213[32] = v270;
    v100[33] = v99;

    v101 = v205;
    v102 = v213;
    v213[34] = v271;
    v102[35] = v101;

    v103 = v206;
    v104 = v213;
    v213[36] = v272;
    v104[37] = v103;

    v105 = v207;
    v106 = v213;
    v213[38] = v273;
    v106[39] = v105;

    v107 = v208;
    v108 = v213;
    v213[40] = v274;
    v108[41] = v107;

    v109 = v209;
    v110 = v213;
    v213[42] = v275;
    v110[43] = v109;

    v111 = v210;
    v112 = v213;
    v213[44] = v276;
    v112[45] = v111;

    v113 = v212;
    v114 = v213;
    v213[46] = v277;
    v114[47] = v113;
    sub_1B0394964();

    if (os_log_type_enabled(v215, v216))
    {
      v115 = v278;
      v152 = sub_1B0E45D78();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v153 = sub_1B03949A8(0);
      v154 = sub_1B03949A8(2);
      v155 = &v307;
      v307 = v152;
      v156 = &v306;
      v306 = v153;
      v157 = &v305;
      v305 = v154;
      sub_1B0394A48(3, &v307);
      sub_1B0394A48(8, v155);
      v303 = v254;
      v304 = v188;
      sub_1B03949FC(&v303, v155, v156, v157);
      v158 = v115;
      if (v115)
      {

        __break(1u);
      }

      else
      {
        v303 = v255;
        v304 = v189;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v150 = 0;
        v303 = v256;
        v304 = v190;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v149 = 0;
        v303 = v257;
        v304 = v191;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v148 = 0;
        v303 = v258;
        v304 = v192;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v147 = 0;
        v303 = v259;
        v304 = v193;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v146 = 0;
        v303 = v260;
        v304 = v194;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v145 = 0;
        v303 = v261;
        v304 = v195;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v144 = 0;
        v303 = v262;
        v304 = v196;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v143 = 0;
        v303 = v263;
        v304 = v197;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v142 = 0;
        v303 = v264;
        v304 = v198;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v141 = 0;
        v303 = v265;
        v304 = v199;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v140 = 0;
        v303 = v266;
        v304 = v200;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v139 = 0;
        v303 = v267;
        v304 = v201;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v138 = 0;
        v303 = v268;
        v304 = v202;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v137 = 0;
        v303 = v269;
        v304 = v203;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v136 = 0;
        v303 = v270;
        v304 = v204;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v135 = 0;
        v303 = v271;
        v304 = v205;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v134 = 0;
        v303 = v272;
        v304 = v206;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v133 = 0;
        v303 = v273;
        v304 = v207;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v132 = 0;
        v303 = v274;
        v304 = v208;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v131 = 0;
        v303 = v275;
        v304 = v209;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v130 = 0;
        v303 = v276;
        v304 = v210;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        v129 = 0;
        v303 = v277;
        v304 = v212;
        sub_1B03949FC(&v303, &v307, &v306, &v305);
        _os_log_impl(&dword_1B0389000, v215, v216, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Setting UID %u on APPEND destination '%s'", v152, 0x3Bu);
        sub_1B03998A8(v153);
        sub_1B03998A8(v154);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v215);
    (*(v288 + 8))(v292, v287);
    v121 = 0;
    sub_1B071FB18();
    v128 = sub_1B08C0C38();
    v309 = v128;
    v124 = sub_1B086F238();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1E69E5928](v128);
    v127 = sub_1B0917E74(v234, v166, v167, v128);
    v308 = v127;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v123 = sub_1B0E46A48();
    v122 = v116;
    MEMORY[0x1E69E5928](v127);
    v117 = v123;
    *v122 = v127;
    sub_1B0394964();
    v125 = v117;
    v126 = sub_1B0E451A8();

    [v301 setCreatedServerMessages_];
    MEMORY[0x1E69E5920](v126);
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v127);
    MEMORY[0x1E69E5920](v128);
  }
}

uint64_t sub_1B0872154(void *a1, uint64_t a2)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setPhaseForResults_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setCompletedItems_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1B071C094();
  sub_1B0E46A48();
  v5 = v2;
  MEMORY[0x1E69E5928](a2);
  *v5 = a2;
  sub_1B0394964();
  v6 = sub_1B0E451A8();

  [a1 setFailedItems_];
  MEMORY[0x1E69E5920](v6);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setCreatedServerMessages_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setDownloadedDataByCopyItems_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1B08722E8(uint64_t a1, uint64_t *a2)
{
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v14 = 0;
  v22 = a1;
  v7 = *a2;
  v21 = v7;
  v18 = 0;
  v20 = 0;
  MEMORY[0x1E69E5928](v7);
  v11 = v7;
  v2 = type metadata accessor for MFMailMessageLibraryUIDMessageSize();
  sub_1B03B0BBC(&v18, sub_1B0876288, v10, v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v9, v9);
  if (v8)
  {
    result = MEMORY[0x1E69E5920](v7);
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5920](v7);
    v15 = v19;
    v6 = sub_1B041C1E8();
    v3 = sub_1B07467B8();
    result = MessageIdentifier.init<A>(exactly:)(&v15, &type metadata for UID, MEMORY[0x1E69E7668], v6, v3, &v16);
    if ((v17 & 1) == 0)
    {
      v14 = v16;
      v12 = v16;
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      return MessageIdentifierSet.insert(_:)(v13, &v12, v5);
    }
  }

  return result;
}

id sub_1B08724B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1B0E45E58();
  if (v6)
  {
    v4 = v6;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  return [a3 getValue:v4 size:sub_1B0E450E8()];
}

uint64_t sub_1B08725B0(void *a1)
{
  v13 = [a1 URLString];
  if (v13)
  {
    sub_1B0E44AD8();
    v10 = v1;
    MEMORY[0x1E69E5920](v13);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v8 = sub_1B0E44AC8();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v7 = [v12 newestUIDsForMailbox_limit_];
  MEMORY[0x1E69E5920](v9);
  if (v7)
  {
    sub_1B07F1764();
    v5 = sub_1B0E451B8();
    MEMORY[0x1E69E5920](v7);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return sub_1B0E46A48();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2350, &qword_1B0E9F3D0);
  sub_1B07F1654();
  v4 = sub_1B0E44F58();

  return v4;
}

void *sub_1B0872854@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v5 = *a1;
  v16 = v5;
  v13 = 0;
  v15 = 0;
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  v2 = type metadata accessor for MFMailMessageLibraryUIDMessageSize();
  sub_1B03B0BBC(&v13, sub_1B087625C, v8, v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v7, v7);
  if (v6)
  {
    result = MEMORY[0x1E69E5920](v5);
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5920](v5);
    v10 = v13;
    v11 = v14;
    v12 = v15;
    sub_1B0872AB4(v13, v14, v15, v17);
    return memcpy(a2, v17, 0x21uLL);
  }

  return result;
}

id sub_1B08729B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1B0E45E58();
  if (v6)
  {
    v4 = v6;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  return [a3 getValue:v4 size:sub_1B0E450E8()];
}

void sub_1B0872AB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = 0u;
  v20 = 0u;
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v10 = HIDWORD(a2);
  v16 = a1;
  v17 = a2;
  v18 = a3;
  DWORD2(v19) = 0;
  BYTE12(v19) = 1;
  *&v19 = a1;
  v13 = a2;
  v9 = sub_1B041C1E8();
  v4 = sub_1B07467B8();
  MessageIdentifier.init<A>(exactly:)(&v13, &type metadata for UID, MEMORY[0x1E69E7668], v9, v4, &v14);
  v11 = v14;
  v12 = v15;
  DWORD2(v19) = v14;
  BYTE12(v19) = v15 & 1;
  LODWORD(v20) = v10;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(a3);
  *a4 = a1;
  *(a4 + 8) = v11 | ((v12 & 1) << 32);
  *(a4 + 16) = v10;
  *(a4 + 24) = v5;
  *(a4 + 32) = 0;
}

uint64_t sub_1B0872CAC()
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2760, &qword_1B0E9DE70);
  v0 = sub_1B0875CE0();
  sub_1B039CA88(sub_1B0872E10, 0, v6, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v0, MEMORY[0x1E69E7410], v7);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = sub_1B0E451A8();

  v3 = [v5 serverMessagesForMessageIDHeaders_];
  MEMORY[0x1E69E5920](v2);
  sub_1B0875D68();
  v4 = sub_1B0E451B8();
  MEMORY[0x1E69E5920](v3);

  return v4;
}

uint64_t sub_1B0872E10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B08AB3C4(v4, v5);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B0872E74()
{
  v6 = [v0 remoteID];
  if (v6)
  {
    v4 = sub_1B0E44AD8();
    v5 = v1;
    MEMORY[0x1E69E5920](v6);
    v2 = sub_1B08252D8(v4, v5);
  }

  else
  {
    v2 = sub_1B08252D8(0, 0);
  }

  LODWORD(v7) = v2;
  BYTE4(v7) = BYTE4(v2) & 1;
  return v7;
}

uint64_t sub_1B0872F68(uint64_t (*a1)(void))
{
  if ((a1() & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    sub_1B07467B8();
    BinaryInteger.init(_:)();
    return v3;
  }
}

uint64_t sub_1B0873044(void (*a1)(void))
{
  a1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  return MessageIdentifierRange.debugDescription.getter(v1);
}

uint64_t sub_1B08730A4(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v1 = sub_1B0E45278();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

unint64_t sub_1B0873164()
{
  v2 = qword_1EB6DA468;
  if (!qword_1EB6DA468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2650, &unk_1B0E9DDA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0873234()
{
  v2 = qword_1EB6DB3B0;
  if (!qword_1EB6DB3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2658, &unk_1B0EA2DE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB3B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08732C4()
{
  v2 = qword_1EB6DA520;
  if (!qword_1EB6DA520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2668, &qword_1B0E9DDB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA520);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B087334C()
{
  v2 = qword_1EB6DB3A0;
  if (!qword_1EB6DB3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2658, &unk_1B0EA2DE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB3A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08733F8()
{
  v2 = qword_1EB6DA930;
  if (!qword_1EB6DA930)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA930);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B0873464(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  v6 = type metadata accessor for MessageMetadata(0);
  v7 = v6[8];
  v9 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1 + v7, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26A0, &qword_1B0EA2DF0);
    memcpy((a2 + v7), (a1 + v7), *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 32))();
    (*(v10 + 56))(a2 + v7, 0, 1, v9);
  }

  result = a2;
  *(a2 + v6[9]) = *(a1 + v6[9]);
  *(a2 + v6[10]) = *(a1 + v6[10]) & 1;
  return result;
}

uint64_t sub_1B087363C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v6 = *(a1 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 32) = v6;
  v7 = type metadata accessor for MessageMetadata(0);
  v8 = v7[8];
  v10 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1 + v8, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26A0, &qword_1B0EA2DF0);
    memcpy((a2 + v8), (a1 + v8), *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 16))();
    (*(v11 + 56))(a2 + v8, 0, 1, v10);
  }

  result = a2;
  *(a2 + v7[9]) = *(a1 + v7[9]);
  *(a2 + v7[10]) = *(a1 + v7[10]);
  return result;
}

uint64_t sub_1B0873824()
{
  v1 = *(type metadata accessor for MessageMetadata(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B079F1FC(v2);
}

uint64_t sub_1B0873888()
{
  v1 = *(type metadata accessor for MessageMetadata(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B083D964(v2);
}

uint64_t sub_1B08738EC()
{
  v1 = *(type metadata accessor for MessageMetadata(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B083D99C(v2);
}

uint64_t sub_1B0873950(uint64_t a1)
{
  v1 = *(a1 + 32);

  v5 = *(type metadata accessor for MessageMetadata(0) + 32);
  v2 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  if (!(*(*(v2 - 8) + 48))(a1 + v5, 1))
  {
    v3 = sub_1B0E443C8();
    (*(*(v3 - 8) + 8))(a1 + v5);
  }

  return a1;
}

unint64_t sub_1B0873A24()
{
  v2 = qword_1EB6DAFB0;
  if (!qword_1EB6DAFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E26A8, &qword_1B0E9DDE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0873AAC()
{
  v2 = qword_1EB6DAFB8;
  if (!qword_1EB6DAFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E26A8, &qword_1B0E9DDE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for MailboxPersistenceHelper.SectionsToDownloadResult()
{
  v1 = qword_1EB6DBBA8;
  if (!qword_1EB6DBBA8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t *sub_1B0873BFC(uint64_t *a1)
{
  v32 = a1;
  v33 = _s18SectionsToDownloadVMa();
  if (!(*(*(v33 - 8) + 48))(v32, 2))
  {
    v1 = *v32;

    v30 = v32 + *(v33 + 20);
    _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 2)
    {
      v2 = sub_1B0E443C8();
      (*(*(v2 - 8) + 8))(v30);
    }

    v3 = *&v30[*(_s31PreviouslyDownloadedMessageDataVMa() + 20)];

    v29 = v32 + *(v33 + 24);
    if (v29[176] != 255)
    {
      v4 = *v29;
      v5 = *(v29 + 1);
      v6 = *(v29 + 2);
      v7 = *(v29 + 3);
      v8 = *(v29 + 4);
      v9 = *(v29 + 5);
      v10 = *(v29 + 6);
      v11 = *(v29 + 7);
      v12 = *(v29 + 8);
      v13 = *(v29 + 9);
      v14 = *(v29 + 10);
      v15 = *(v29 + 11);
      v16 = *(v29 + 12);
      v17 = *(v29 + 13);
      v18 = *(v29 + 14);
      v19 = *(v29 + 15);
      v20 = *(v29 + 16);
      v21 = *(v29 + 17);
      v22 = *(v29 + 18);
      v23 = *(v29 + 19);
      v24 = *(v29 + 20);
      v25 = *(v29 + 21);
      v26 = v29[176];
      v28[16] = v28;
      sub_1B075E1EC(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  return v32;
}

void *sub_1B0873E34(uint64_t *a1, void *a2)
{
  v65 = a1;
  v64 = a2;
  v66 = _s18SectionsToDownloadVMa();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  if ((*(v67 + 48))(v65, 2))
  {
    v35 = type metadata accessor for MailboxPersistenceHelper.SectionsToDownloadResult();
    memcpy(v64, v65, *(*(v35 - 8) + 64));
  }

  else
  {
    v59 = *v65;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v2 = v64;
    v3 = v66;
    v4 = v65;
    *v64 = v59;
    v60 = v2 + *(v3 + 20);
    v61 = v4 + *(v3 + 20);
    v62 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 2)
    {
      v5 = sub_1B0E443C8();
      (*(*(v5 - 8) + 16))(v60, v61);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v60, v61, *(*(v62 - 8) + 64));
    }

    v6 = _s31PreviouslyDownloadedMessageDataVMa();
    v55 = *(v6 + 20);
    v56 = *&v61[*(v6 + 20)];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = v64;
    v8 = v66;
    v9 = v65;
    *&v60[v55] = v56;
    v57 = (v7 + *(v8 + 24));
    v58 = (v9 + *(v8 + 24));
    if (*(v58 + 176) == 255)
    {
      memcpy(v57, v58, 0xB1uLL);
    }

    else
    {
      v10 = *v58;
      v11 = v58[1];
      v12 = v58[2];
      v13 = v58[3];
      v14 = v58[4];
      v15 = v58[5];
      v38 = v58[6];
      v39 = v58[7];
      v40 = v58[8];
      v41 = v58[9];
      v42 = v58[10];
      v43 = v58[11];
      v44 = v58[12];
      v45 = v58[13];
      v46 = v58[14];
      v47 = v58[15];
      v48 = v58[16];
      v49 = v58[17];
      v50 = v58[18];
      v51 = v58[19];
      v52 = v58[20];
      v53 = v58[21];
      v54 = *(v58 + 176);
      v37[16] = v37;
      sub_1B0716BB8(v10, v11, v12, v13, v14, v15, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
      v16 = v38;
      v17 = v39;
      v18 = v40;
      v19 = v41;
      v20 = v42;
      v21 = v43;
      v22 = v44;
      v23 = v45;
      v24 = v46;
      v25 = v47;
      v26 = v48;
      v27 = v49;
      v28 = v50;
      v29 = v51;
      v30 = v52;
      v31 = v53;
      v32 = v54;
      v33 = v57;
      *v57 = v10;
      v33[1] = v11;
      v33[2] = v12;
      v33[3] = v13;
      v33[4] = v14;
      v33[5] = v15;
      v33[6] = v16;
      v33[7] = v17;
      v33[8] = v18;
      v33[9] = v19;
      v33[10] = v20;
      v33[11] = v21;
      v33[12] = v22;
      v33[13] = v23;
      v33[14] = v24;
      v33[15] = v25;
      v33[16] = v26;
      v33[17] = v27;
      v33[18] = v28;
      v33[19] = v29;
      v33[20] = v30;
      v33[21] = v31;
      *(v33 + 176) = v32 & 1;
    }

    v34 = v67;
    *(v64 + *(v66 + 28)) = *(v65 + *(v66 + 28));
    (*(v34 + 56))();
  }

  return v64;
}

char *sub_1B08742CC(char *a1)
{
  v33 = a1;
  v1 = *a1;

  v30 = 0;
  v31 = _s18SectionsToDownloadVMa();
  v32 = *(v31 + 20);
  _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 8))(&v33[v32]);
  }

  v3 = *&v33[v32 + *(_s31PreviouslyDownloadedMessageDataVMa() + 20)];

  v29 = &v33[*(v31 + 24)];
  if (v29[176] != 255)
  {
    v4 = *v29;
    v5 = *(v29 + 1);
    v6 = *(v29 + 2);
    v7 = *(v29 + 3);
    v8 = *(v29 + 4);
    v9 = *(v29 + 5);
    v10 = *(v29 + 6);
    v11 = *(v29 + 7);
    v12 = *(v29 + 8);
    v13 = *(v29 + 9);
    v14 = *(v29 + 10);
    v15 = *(v29 + 11);
    v16 = *(v29 + 12);
    v17 = *(v29 + 13);
    v18 = *(v29 + 14);
    v19 = *(v29 + 15);
    v20 = *(v29 + 16);
    v21 = *(v29 + 17);
    v22 = *(v29 + 18);
    v23 = *(v29 + 19);
    v24 = *(v29 + 20);
    v25 = *(v29 + 21);
    v26 = v29[176];
    v28[15] = v28;
    sub_1B075E1EC(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  }

  return v33;
}

void *sub_1B08744DC(void *a1, void *a2)
{
  *a2 = *a1;
  v6 = _s18SectionsToDownloadVMa();
  v7 = v6[5];
  v9 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2 + v7, a1 + v7, *(*(v9 - 8) + 64));
  }

  v3 = _s31PreviouslyDownloadedMessageDataVMa();
  *(a2 + v7 + *(v3 + 20)) = *(a1 + v7 + *(v3 + 20));
  memcpy(a2 + v6[6], a1 + v6[6], 0xB1uLL);
  result = a2;
  *(a2 + v6[7]) = *(a1 + v6[7]);
  return result;
}

void *sub_1B08746EC(void *a1, void *a2)
{
  v64 = a1;
  v58 = a2;
  v59 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *v58 = v59;
  v60 = 0;
  v61 = _s18SectionsToDownloadVMa();
  v62 = *(v61 + 20);
  v63 = *(v61 + 20);
  v65 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v3 = *(*(sub_1B0E443C8() - 8) + 16);
      v56 = v58 + v62;
      v3();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v58 + v62, v64 + v63, *(*(v65 - 8) + 64));
    }
  }

  else
  {
    v2 = *(*(sub_1B0E443C8() - 8) + 16);
    v57 = v58 + v62;
    v2();
    swift_storeEnumTagMultiPayload();
  }

  v4 = _s31PreviouslyDownloadedMessageDataVMa();
  v51 = *(v4 + 20);
  v52 = v58 + v62;
  v53 = *(v64 + v63 + *(v4 + 20));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = v58;
  v6 = v61;
  v7 = v64;
  *&v52[v51] = v53;
  v54 = (v5 + *(v6 + 24));
  v55 = (v7 + *(v6 + 24));
  if (*(v55 + 176) == 255)
  {
    memcpy(v54, v55, 0xB1uLL);
  }

  else
  {
    v8 = *v55;
    v9 = v55[1];
    v10 = v55[2];
    v11 = v55[3];
    v12 = v55[4];
    v13 = v55[5];
    v34 = v55[6];
    v35 = v55[7];
    v36 = v55[8];
    v37 = v55[9];
    v38 = v55[10];
    v39 = v55[11];
    v40 = v55[12];
    v41 = v55[13];
    v42 = v55[14];
    v43 = v55[15];
    v44 = v55[16];
    v45 = v55[17];
    v46 = v55[18];
    v47 = v55[19];
    v48 = v55[20];
    v49 = v55[21];
    v50 = *(v55 + 176);
    v33[16] = v33;
    sub_1B0716BB8(v8, v9, v10, v11, v12, v13, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    v14 = v34;
    v15 = v35;
    v16 = v36;
    v17 = v37;
    v18 = v38;
    v19 = v39;
    v20 = v40;
    v21 = v41;
    v22 = v42;
    v23 = v43;
    v24 = v44;
    v25 = v45;
    v26 = v46;
    v27 = v47;
    v28 = v48;
    v29 = v49;
    v30 = v50;
    v31 = v54;
    *v54 = v8;
    v31[1] = v9;
    v31[2] = v10;
    v31[3] = v11;
    v31[4] = v12;
    v31[5] = v13;
    v31[6] = v14;
    v31[7] = v15;
    v31[8] = v16;
    v31[9] = v17;
    v31[10] = v18;
    v31[11] = v19;
    v31[12] = v20;
    v31[13] = v21;
    v31[14] = v22;
    v31[15] = v23;
    v31[16] = v24;
    v31[17] = v25;
    v31[18] = v26;
    v31[19] = v27;
    v31[20] = v28;
    v31[21] = v29;
    *(v31 + 176) = v30 & 1;
  }

  result = v58;
  *(v58 + *(v61 + 28)) = *(v64 + *(v61 + 28));
  return result;
}

unint64_t sub_1B0874B30()
{
  v2 = qword_1EB6DADA0;
  if (!qword_1EB6DADA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DADA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0874BC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 40))(a2, a1);
  v3 = type metadata accessor for InProgressMessageDownload.EMLX();
  v11 = (a1 + *(v3 + 20));
  v12 = (a2 + *(v3 + 20));
  v4 = *v12;
  *v12 = *v11;

  v5 = v12[1];
  v12[1] = v11[1];

  v6 = v12[2];
  v12[2] = v11[2];

  v7 = v12[3];
  v12[3] = v11[3];

  v8 = v12[4];
  v12[4] = v11[4];

  return a2;
}

uint64_t type metadata accessor for MailboxPersistenceHelper.DownloadResult()
{
  v1 = qword_1EB6DBC00;
  if (!qword_1EB6DBC00)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B0874D44()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1B0874D98();

  return sub_1B03F7B1C(v4, v3, &unk_1F26F1C68, v1);
}

unint64_t sub_1B0874D98()
{
  v2 = qword_1EB6DBDB0;
  if (!qword_1EB6DBDB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBDB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0874E10()
{
  v1 = *(type metadata accessor for InProgressMessageDownload.EMLX() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0863908(v2);
}

uint64_t sub_1B0874E74()
{
  v1 = *(type metadata accessor for InProgressMessageDownload.EMLX() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0863A00(v2);
}

uint64_t sub_1B0874ED8()
{
  v1 = *(type metadata accessor for InProgressMessageDownload.EMLX() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0863A7C(v2);
}

void *sub_1B0874F3C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for InProgressMessageDownload.EMLX();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0863AF8(v3, a1);
}

void *sub_1B0874FB0@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for InProgressMessageDownload.EMLX();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0863B3C(v3, a1);
}

void *sub_1B0875024@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for InProgressMessageDownload.EMLX();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0863B84(v3, a1);
}

void *sub_1B0875098@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for InProgressMessageDownload.EMLX();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0863BCC(v3, a1);
}

uint64_t sub_1B087510C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    sub_1B07F2124(a2);
  }

  return result;
}

char *sub_1B0875150()
{
  v9 = *(type metadata accessor for InProgressMessageDownload.EMLX() - 8);
  v1 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v2 = (v1 + *(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v0 + 16);
  v4 = *(v0 + v2);
  v5 = (v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1B086648C(v3, v0 + v1, v4, v6, v7);
}

uint64_t block_copy_helper_2866(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B0875270()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B0868968();
}

uint64_t *sub_1B0875294(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[2];

  v3 = a1[4];

  v4 = a1[6];

  return a1;
}

unint64_t sub_1B08752E4()
{
  v2 = qword_1EB6DA4E0;
  if (!qword_1EB6DA4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E26F8, &qword_1B0E9DE28);
    sub_1B087537C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA4E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B087537C()
{
  v2 = qword_1EB6DA4C8;
  if (!qword_1EB6DA4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2700, &qword_1B0E9DE30);
    sub_1B0875424();
    sub_1B0875684();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA4C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0875424()
{
  v2 = qword_1EB6DA4A8;
  if (!qword_1EB6DA4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2710, &qword_1B0E9DE38);
    sub_1B08754BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA4A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08754BC()
{
  v2 = qword_1EB6DA448;
  if (!qword_1EB6DA448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1B68, &qword_1B0E9AF90);
    sub_1B0875554();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA448);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0875554()
{
  v2 = qword_1EB6DA3B0;
  if (!qword_1EB6DA3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2718, &qword_1B0E9DE40);
    sub_1B08755EC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA3B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08755EC()
{
  v2 = qword_1EB6DA490;
  if (!qword_1EB6DA490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2728, &qword_1B0E9DE48);
    sub_1B074B86C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0875684()
{
  v2 = qword_1EB6DB138;
  if (!qword_1EB6DB138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1AD0, &qword_1B0E9DE20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB138);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B087570C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  v3 = *(a1 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 48) = v3;
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);

  *(a2 + 56) = v4;
  *(a2 + 64) = v5;
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);

  *(a2 + 72) = v6;
  *(a2 + 80) = v7;
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);

  *(a2 + 88) = v9;
  *(a2 + 96) = v10;
  v12 = *(a1 + 104);
  v13 = *(a1 + 112);

  result = a2;
  *(a2 + 104) = v12;
  *(a2 + 112) = v13;
  return result;
}

unint64_t sub_1B0875818()
{
  v2 = qword_1EB6DA378;
  if (!qword_1EB6DA378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2730, &unk_1B0E9DE50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA378);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B08758A0(void *a1)
{
  v1 = a1[6];

  v2 = a1[8];

  v3 = a1[10];

  v4 = a1[12];

  v5 = a1[14];

  return a1;
}

uint64_t sub_1B08758FC(uint64_t a1)
{
  v6 = _s6UploadVMa();
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {
    v2 = a1 + *(v6 + 20);
    v3 = sub_1B0E43108();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v2, 1))
    {
      (*(v4 + 8))(v2, v3);
    }

    sub_1B0391D50(*(a1 + *(v6 + 24)), *(a1 + *(v6 + 24) + 8));
  }

  return a1;
}

__n128 sub_1B0875A20(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v5 = _s6UploadVMa();
  v6 = *(v5 + 20);
  v8 = sub_1B0E43108();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1 + v6, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    memcpy((a2 + v6), (a1 + v6), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))();
    (*(v9 + 56))(a2 + v6, 0, 1, v8);
  }

  result = *(a1 + *(v5 + 24));
  *(a2 + *(v5 + 24)) = result;
  return result;
}

unint64_t sub_1B0875BBC()
{
  v2 = qword_1EB6DA7F0;
  if (!qword_1EB6DA7F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA7F0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B0875C20(void *a1)
{
  LODWORD(v3) = *(v1 + 24);
  BYTE4(v3) = *(v1 + 28) & 1;
  return sub_1B086F9B8(a1, *(v1 + 16), v3, *(v1 + 32));
}

unint64_t sub_1B0875C58()
{
  v2 = qword_1EB6E2748;
  if (!qword_1EB6E2748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1B30, &qword_1B0E9AF68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2748);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0875CE0()
{
  v2 = qword_1EB6E2768;
  if (!qword_1EB6E2768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2760, &qword_1B0E9DE70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2768);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0875D68()
{
  v2 = qword_1EB6E2770;
  if (!qword_1EB6E2770)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E2770);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for MailboxPersistenceHelper()
{
  v1 = qword_1EB6DBAC0;
  if (!qword_1EB6DBAC0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B0875E5C()
{
  v6 = sub_1B0E42E68();
  updated = v6;
  if (v0 <= 0x3F)
  {
    v8 = *(v6 - 8) + 64;
    v5 = _s18MailboxPersistenceVMa();
    updated = v5;
    if (v1 <= 0x3F)
    {
      v9 = *(v5 - 8) + 64;
      v4 = _s6LoggerVMa_1();
      updated = v4;
      if (v2 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        updated = swift_updateClassMetadata2();
        if (!updated)
        {
          return 0;
        }
      }
    }
  }

  return updated;
}

uint64_t sub_1B08760B4()
{
  v2 = _s18SectionsToDownloadVMa();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

unint64_t sub_1B0876180()
{
  v3 = type metadata accessor for InProgressMessageDownload.EMLX();
  if (v0 <= 0x3F)
  {
    v3 = sub_1B07F1AFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

char *sub_1B08762BC(char *a1, char *a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v4;
  FragmentedMessagesResult = type metadata accessor for FindFragmentedMessagesResult();
  v5 = *(FragmentedMessagesResult + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 16))(&a2[v5], &a1[v5]);
  result = a2;
  *&a2[*(FragmentedMessagesResult + 24)] = *&a1[*(FragmentedMessagesResult + 24)];
  return result;
}

char *sub_1B0876388(char *a1, char *a2)
{
  *a2 = *a1;
  FragmentedMessagesResult = type metadata accessor for FindFragmentedMessagesResult();
  v4 = *(FragmentedMessagesResult + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  result = a2;
  *&a2[*(FragmentedMessagesResult + 24)] = *&a1[*(FragmentedMessagesResult + 24)];
  return result;
}

uint64_t sub_1B0876444()
{
  v1 = *(type metadata accessor for FindFragmentedMessagesResult() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B0847BCC(v2);
}

uint64_t sub_1B08764A8@<X0>(uint64_t a1@<X8>)
{
  FragmentedMessagesResult = type metadata accessor for FindFragmentedMessagesResult();
  v3 = v1 + ((*(*(FragmentedMessagesResult - 8) + 80) + 16) & ~*(*(FragmentedMessagesResult - 8) + 80));

  return sub_1B0847C18(v3, a1);
}

char *sub_1B087651C(char *a1, char *a2)
{
  v3 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
  v7 = type metadata accessor for MessagesMissingAllBodyData();
  v4 = v7[5];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v6 = *(*(v5 - 8) + 16);
  v6(&a2[v4], &a1[v4]);
  (v6)(&a2[v7[6]], &a1[v7[6]], v5);
  result = a2;
  *&a2[v7[7]] = *&a1[v7[7]];
  return result;
}

char *sub_1B0876628(char *a1, char *a2)
{
  *a2 = *a1;
  v6 = type metadata accessor for MessagesMissingAllBodyData();
  v3 = v6[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v5 = *(*(v4 - 8) + 32);
  v5(&a2[v3], &a1[v3]);
  (v5)(&a2[v6[6]], &a1[v6[6]], v4);
  result = a2;
  *&a2[v6[7]] = *&a1[v6[7]];
  return result;
}

uint64_t sub_1B0876724()
{
  v1 = *(type metadata accessor for MessagesMissingAllBodyData() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B08438C0(v2);
}

uint64_t sub_1B0876788@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MessagesMissingAllBodyData();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B084390C(v3, a1);
}

unint64_t sub_1B0876828()
{
  v2 = qword_1EB6E2798;
  if (!qword_1EB6E2798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2798);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B08768B8(const void *a1, void *a2)
{
  v7 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26A0, &qword_1B0EA2DF0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 16))(a2, a1);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

uint64_t sub_1B08769E8(uint64_t a1)
{
  v1 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

unint64_t sub_1B0876AB8()
{
  v2 = qword_1EB6DB158;
  if (!qword_1EB6DB158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E27A0, &qword_1B0E9E018);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB158);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0876B40(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v29 = a1;
  v30 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v25 = a6 & 1;
  if (a6)
  {
    v13 = 1;
  }

  else
  {
    sub_1B07BA724(a3);
    v19 = a3;
    v20 = a4;
    v21 = a5;
    if (a3)
    {
      v22 = v19;
      v23 = v20;
      v24 = v21;
    }

    else
    {
      v12 = sub_1B0E46A48();
      v6 = sub_1B0E44838();
      v22 = Namespace.init(prefix:separator:)(v12, v6, v7);
      v23 = v8;
      v24 = v9;
    }

    v11 = Namespace.isNotes(_:)(a1, a2, v22, v23, v24);

    v13 = v11 ^ 1;
  }

  return v13 & 1;
}

uint64_t *sub_1B0876CCC(uint64_t *a1)
{
  if (*a1)
  {
    v1 = *a1;

    v2 = a1[2];
  }

  return a1;
}

uint64_t sub_1B0876D18(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v44 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v35 = a1;
  v36 = a2;
  sub_1B0451F2C();
  sub_1B0E44778();
  sub_1B039E440(&v35);
  v16 = v37;
  v17 = v38;

  v33 = v16;
  v34 = v17 & 1;
  if ((v17 & 1) == 0)
  {
    return 2;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28 = a1;
  v29 = a2;
  sub_1B0E44778();
  sub_1B039E440(&v28);
  v10 = v30;
  v11 = v31;
  v12 = v32;

  v27[0] = v10;
  v27[1] = v11;
  v27[2] = v12;
  sub_1B03B1198(v27);
  if (v11)
  {
    return 1;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = a1;
  v24 = a2;
  sub_1B0E44778();
  sub_1B039E440(&v23);
  v8 = v25;
  v9 = v26;

  v21 = v8;
  v22 = v9 & 1;
  if (v9)
  {
    return 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = a1;
  v19 = a2;
  sub_1B0E44778();
  sub_1B039E440(&v18);
  v7 = v20;
  if (v20)
  {

    return v7;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1B0877124()
{
  v11 = 0;
  v3 = (*(*(sub_1B0E459C8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v10 = &v2 - v3;
  v4 = (*(*(sub_1B0E45988() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v9 = &v2 - v4;
  v5 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v8 = &v2 - v5;
  sub_1B06CCC58();
  v6 = sub_1B0E44838();
  v7 = v0;
  sub_1B039B81C();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v10);
  result = sub_1B0E45A08();
  qword_1EB6DBFD8 = result;
  return result;
}

uint64_t *sub_1B08772C0()
{
  if (qword_1EB6DBFD0 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DBFD8;
}

uint64_t sub_1B0877320(uint64_t a1)
{
  v5[9] = 0;
  v5[10] = a1;
  v5[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  v1 = sub_1B071CEA8();
  MEMORY[0x1B27270C0](v5, v3, v1);
  v4 = v5[0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B60, &unk_1B0EA09B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27A8, &qword_1B0E9E020);
  sub_1B074AF08();
  sub_1B0E46718();

  sub_1B039E440(&v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27B0, &qword_1B0E9E028);
  sub_1B0451F2C();
  sub_1B0877A34();
  return sub_1B0E44718();
}

uint64_t sub_1B0877530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17 = a3;
  v22 = a1;
  v21 = a2;
  v41 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v19 = 0;
  v30 = sub_1B0E42E68();
  v28 = *(v30 - 8);
  v29 = v30 - 8;
  v18 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v11 - v18;
  v20 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v31 = &v11 - v20;
  v23 = (*(*(_s18MailboxPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v22);
  v4 = &v11 - v23;
  v34 = &v11 - v23;
  v26 = *v3;
  v41 = v26;
  v40 = v5;
  v24 = v5 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v25 = &v39;
  swift_beginAccess();
  sub_1B03F4D78(v24, v4);
  swift_endAccess();
  v33 = [v26 mailboxURL];
  sub_1B0E42DE8();
  (*(v28 + 32))(v31, v27, v30);
  (*(v28 + 56))(v31, 0, 1, v30);
  v35 = sub_1B07BF5C8(v31);
  v32 = v6;
  sub_1B06E3800(v31);
  MEMORY[0x1E69E5920](v33);
  sub_1B03F4F08(v34);
  result = v35;
  if (v35)
  {
    v15 = v35;
    v16 = v32;
    v13 = v32;
    v12 = v35;
    v37 = v35;
    v38 = v32;
    v14 = sub_1B07B7350([v26 persistentID]);
    v36 = v14;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = v17;
    v10 = v13 | (v14 << 32);
    *v17 = v12;
    v9[1] = v10;
  }

  else
  {
    v8 = v17;
    *v17 = 0;
    v8[1] = 0;
  }

  return result;
}

uint64_t sub_1B0877868()
{
  sub_1B08778BC();

  return sub_1B0E46B68();
}

unint64_t sub_1B08778BC()
{
  v2 = qword_1EB6DC980;
  if (!qword_1EB6DC980)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC980);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0877934(int a1, int a2, void (*a3)(uint64_t *__return_ptr, int *, char *))
{
  v5 = a1;
  HIDWORD(v4) = a2;
  a3(&v4, &v5, &v4 + 4);
  return v4;
}

uint64_t sub_1B0877990@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, uint64_t (*a3)(void, void)@<X2>, _DWORD *a4@<X8>)
{
  result = a3(*a1, *a2);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_1B0877A34()
{
  v2 = qword_1EB6DA450;
  if (!qword_1EB6DA450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E27B0, &qword_1B0E9E028);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA450);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0877ABC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v167 = a1;
  v168 = a2;
  v169 = a3;
  v170 = a4;
  v171 = a5;
  v172 = a6;
  v173 = a7;
  v174 = a8;
  v163 = 0;
  v127 = sub_1B039BBE8;
  v128 = sub_1B0394C30;
  v129 = sub_1B0394C24;
  v130 = sub_1B039BA2C;
  v131 = sub_1B039BA88;
  v132 = sub_1B039BB94;
  v133 = sub_1B0394C24;
  v134 = sub_1B039BBA0;
  v135 = sub_1B039BC08;
  v136 = sub_1B0398F5C;
  v137 = sub_1B0398F5C;
  v138 = sub_1B0399178;
  v139 = sub_1B0398F5C;
  v140 = sub_1B0398F5C;
  v141 = sub_1B039BA94;
  v142 = sub_1B0398F5C;
  v143 = sub_1B0398F5C;
  v144 = sub_1B0399178;
  v145 = sub_1B0398F5C;
  v146 = sub_1B0398F5C;
  v147 = sub_1B03991EC;
  v191 = 0;
  v190 = 0;
  v188 = 0u;
  v189 = 0u;
  v187 = 0;
  v186 = 0;
  v185 = 0;
  v183 = 0;
  v148 = 0;
  v156 = 0;
  v149 = _s6LoggerVMa();
  v150 = (*(*(v149 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](0);
  v151 = &v70 - v150;
  v152 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v153 = &v70 - v152;
  v154 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v155 = &v70 - v154;
  v157 = sub_1B0E439A8();
  v158 = *(v157 - 8);
  v159 = v157 - 8;
  v160 = (*(v158 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v156);
  v161 = &v70 - v160;
  v164 = (*(*(_s18MailboxPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v167);
  v13 = &v70 - v164;
  v175 = &v70 - v164;
  v191 = v12 & 1;
  v190 = v14;
  *&v188 = v15;
  *(&v188 + 1) = v170;
  *&v189 = v16;
  *(&v189 + 1) = v17;
  v187 = v18;
  v186 = v19;
  v185 = v20;
  v165 = v20 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v166 = &v184;
  swift_beginAccess();
  sub_1B03F4D78(v165, v13);
  swift_endAccess();
  v176 = sub_1B07C1E08(v167 & 1, v168, v169, v170, v171, v172, v173, v174);
  sub_1B03F4F08(v175);
  v183 = v176;
  if (sub_1B0879044())
  {
    return v176;
  }

  (*(v158 + 16))(v161, v174, v157);
  sub_1B0394784(v174, v155);
  sub_1B0394784(v155, v153);
  sub_1B03F4FD0(v155, v151);
  v21 = (v153 + *(v149 + 20));
  v95 = *v21;
  v96 = *(v21 + 1);
  sub_1B039480C(v153);
  v94 = 24;
  v106 = 7;
  v22 = swift_allocObject();
  v23 = v96;
  v99 = v22;
  *(v22 + 16) = v95;
  *(v22 + 20) = v23;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v24 = swift_allocObject();
  v25 = v96;
  v97 = v24;
  *(v24 + 16) = v95;
  *(v24 + 20) = v25;

  v105 = 32;
  v26 = swift_allocObject();
  v27 = v97;
  v107 = v26;
  *(v26 + 16) = v127;
  *(v26 + 24) = v27;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v151);
  v124 = sub_1B0E43988();
  v125 = sub_1B0E458E8();
  v103 = 17;
  v109 = swift_allocObject();
  v101 = 16;
  *(v109 + 16) = 16;
  v110 = swift_allocObject();
  v104 = 4;
  *(v110 + 16) = 4;
  v28 = swift_allocObject();
  v98 = v28;
  *(v28 + 16) = v128;
  *(v28 + 24) = 0;
  v29 = swift_allocObject();
  v30 = v98;
  v111 = v29;
  *(v29 + 16) = v129;
  *(v29 + 24) = v30;
  v112 = swift_allocObject();
  *(v112 + 16) = 0;
  v113 = swift_allocObject();
  *(v113 + 16) = 1;
  v31 = swift_allocObject();
  v32 = v99;
  v100 = v31;
  *(v31 + 16) = v130;
  *(v31 + 24) = v32;
  v33 = swift_allocObject();
  v34 = v100;
  v114 = v33;
  *(v33 + 16) = v131;
  *(v33 + 24) = v34;
  v115 = swift_allocObject();
  *(v115 + 16) = v101;
  v116 = swift_allocObject();
  *(v116 + 16) = v104;
  v35 = swift_allocObject();
  v102 = v35;
  *(v35 + 16) = v132;
  *(v35 + 24) = 0;
  v36 = swift_allocObject();
  v37 = v102;
  v117 = v36;
  *(v36 + 16) = v133;
  *(v36 + 24) = v37;
  v118 = swift_allocObject();
  *(v118 + 16) = 0;
  v119 = swift_allocObject();
  *(v119 + 16) = v104;
  v38 = swift_allocObject();
  v39 = v107;
  v108 = v38;
  *(v38 + 16) = v134;
  *(v38 + 24) = v39;
  v40 = swift_allocObject();
  v41 = v108;
  v121 = v40;
  *(v40 + 16) = v135;
  *(v40 + 24) = v41;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v120 = sub_1B0E46A48();
  v122 = v42;

  v43 = v109;
  v44 = v122;
  *v122 = v136;
  v44[1] = v43;

  v45 = v110;
  v46 = v122;
  v122[2] = v137;
  v46[3] = v45;

  v47 = v111;
  v48 = v122;
  v122[4] = v138;
  v48[5] = v47;

  v49 = v112;
  v50 = v122;
  v122[6] = v139;
  v50[7] = v49;

  v51 = v113;
  v52 = v122;
  v122[8] = v140;
  v52[9] = v51;

  v53 = v114;
  v54 = v122;
  v122[10] = v141;
  v54[11] = v53;

  v55 = v115;
  v56 = v122;
  v122[12] = v142;
  v56[13] = v55;

  v57 = v116;
  v58 = v122;
  v122[14] = v143;
  v58[15] = v57;

  v59 = v117;
  v60 = v122;
  v122[16] = v144;
  v60[17] = v59;

  v61 = v118;
  v62 = v122;
  v122[18] = v145;
  v62[19] = v61;

  v63 = v119;
  v64 = v122;
  v122[20] = v146;
  v64[21] = v63;

  v65 = v121;
  v66 = v122;
  v122[22] = v147;
  v66[23] = v65;
  sub_1B0394964();

  if (os_log_type_enabled(v124, v125))
  {
    v67 = v148;
    v87 = sub_1B0E45D78();
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v86 = 0;
    v88 = sub_1B03949A8(0);
    v89 = sub_1B03949A8(v86);
    v90 = &v181;
    v181 = v87;
    v91 = &v180;
    v180 = v88;
    v92 = &v179;
    v179 = v89;
    sub_1B0394A48(0, &v181);
    sub_1B0394A48(4, v90);
    v177 = v136;
    v178 = v109;
    sub_1B03949FC(&v177, v90, v91, v92);
    v93 = v67;
    if (v67)
    {

      __break(1u);
    }

    else
    {
      v177 = v137;
      v178 = v110;
      sub_1B03949FC(&v177, &v181, &v180, &v179);
      v84 = 0;
      v177 = v138;
      v178 = v111;
      sub_1B03949FC(&v177, &v181, &v180, &v179);
      v83 = 0;
      v177 = v139;
      v178 = v112;
      sub_1B03949FC(&v177, &v181, &v180, &v179);
      v82 = 0;
      v177 = v140;
      v178 = v113;
      sub_1B03949FC(&v177, &v181, &v180, &v179);
      v81 = 0;
      v177 = v141;
      v178 = v114;
      sub_1B03949FC(&v177, &v181, &v180, &v179);
      v80 = 0;
      v177 = v142;
      v178 = v115;
      sub_1B03949FC(&v177, &v181, &v180, &v179);
      v79 = 0;
      v177 = v143;
      v178 = v116;
      sub_1B03949FC(&v177, &v181, &v180, &v179);
      v78 = 0;
      v177 = v144;
      v178 = v117;
      sub_1B03949FC(&v177, &v181, &v180, &v179);
      v77 = 0;
      v177 = v145;
      v178 = v118;
      sub_1B03949FC(&v177, &v181, &v180, &v179);
      v76 = 0;
      v177 = v146;
      v178 = v119;
      sub_1B03949FC(&v177, &v181, &v180, &v179);
      v75 = 0;
      v177 = v147;
      v178 = v121;
      sub_1B03949FC(&v177, &v181, &v180, &v179);
      _os_log_impl(&dword_1B0389000, v124, v125, "[%.*hhx-%.*X] Mailboxes are not unique. Retrying", v87, 0x17u);
      v74 = 0;
      sub_1B03998A8(v88);
      sub_1B03998A8(v89);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  v68 = v175;
  MEMORY[0x1E69E5920](v124);
  (*(v158 + 8))(v161, v157);
  v71 = v162 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v72 = &v182;
  swift_beginAccess();
  sub_1B03F4D78(v71, v68);
  swift_endAccess();
  v73 = sub_1B07C1E08(v167 & 1, v168, v169, v170, v171, v172, v173, v174);
  sub_1B03F4F08(v175);

  return v73;
}

BOOL sub_1B0879044()
{
  sub_1B0E46A48();
  sub_1B0451F2C();
  sub_1B0E45438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E36E0, &qword_1B0E9C120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
  sub_1B07C869C();
  sub_1B0E44FD8();
  sub_1B0E46A48();
  sub_1B03B8BD8();
  sub_1B0E45438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3520, &unk_1B0E9E030);
  sub_1B0E44FD8();
  v3 = sub_1B0E454A8();
  v4 = sub_1B0E452A8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v3 == v4)
  {
    v1 = sub_1B0E454A8();
    v2 = v1 == sub_1B0E452A8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1B08792E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v111 = a1;
  v110 = a2;
  v105 = a3;
  v106 = a4;
  v107 = a5;
  v108 = a6;
  v109 = a7;
  v85 = a8;
  v72 = a9;
  v74 = sub_1B08A2968;
  v139 = 0;
  v138 = 0;
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v134 = 0;
  v132 = 0;
  v133 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v126 = 0u;
  v127 = 0u;
  v140 = a8;
  v97 = 0;
  v75 = sub_1B0E44238();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v79 = v54 - v78;
  v80 = sub_1B0E44288();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v97);
  v84 = v54 - v83;
  v86 = *(_s6LoggerVMa() - 8);
  v87 = v86;
  v88 = *(v86 + 64);
  v89 = (v88 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v97);
  v90 = v54 - v89;
  v92 = *(v11 - 8);
  v91 = v11 - 8;
  v93 = v92;
  v94 = *(v92 + 64);
  v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v96 = v54 - v95;
  v98 = *(_s18MailboxPersistenceVMa() - 8);
  v99 = v98;
  v100 = *(v98 + 64);
  v101 = (v100 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v97);
  v102 = v54 - v101;
  v103 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v104 = v54 - v103;
  v139 = v54 - v103;
  v116 = sub_1B0E44468();
  v114 = *(v116 - 8);
  v115 = v116 - 8;
  v112 = (*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v111);
  v117 = (v54 - v112);
  v138 = v14;
  v135 = v15;
  v136 = v16;
  v137 = v17;
  v134 = v18;
  v132 = v19;
  v133 = v20;
  v131 = v9;
  v113 = *(v9 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v113);
  v130 = v113;
  MEMORY[0x1E69E5928](v113);
  MEMORY[0x1E69E5928](v113);
  v21 = v114;
  *v117 = v113;
  v22 = *MEMORY[0x1E69E8020];
  (*(v21 + 104))();
  v118 = sub_1B0E44488();
  (*(v114 + 8))(v117, v116);
  result = v118;
  if (v118)
  {
    v24 = v73;
    MEMORY[0x1E69E5920](v113);
    v71 = *(v24 + 112);
    MEMORY[0x1E69E5928](v71);
    v129 = v71;
    v54[0] = v24 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
    v54[1] = &v128;
    swift_beginAccess();
    sub_1B03F4D78(v54[0], v104);
    swift_endAccess();
    v67 = sub_1B0879EF0();
    v68 = v25;
    v69 = v26;
    v70 = v27;
    *&v126 = v67;
    *(&v126 + 1) = v25;
    *&v127 = v26;
    *(&v127 + 1) = v27;
    v66 = *sub_1B08772C0();
    MEMORY[0x1E69E5928](v66);
    MEMORY[0x1E69E5928](v71);
    v55 = v93;
    (*(v92 + 16))(v96, v111, v85);
    sub_1B03F4D78(v104, v102);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07BA724(v110);
    sub_1B0394784(v107, v90);
    MEMORY[0x1E69E5928](v113);

    v56 = (*(v55 + 80) + 40) & ~*(v55 + 80);
    v57 = (v56 + v94 + *(v99 + 80)) & ~*(v99 + 80);
    v58 = (v57 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 39) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v59 + 24 + *(v87 + 80)) & ~*(v87 + 80);
    v61 = (v60 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
    v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    v29 = v72;
    v30 = v56;
    v31 = v92;
    v32 = v96;
    v33 = v71;
    v64 = v28;
    v28[2] = v85;
    v28[3] = v29;
    v28[4] = v33;
    (*(v31 + 32))(v28 + v30, v32);
    sub_1B04158DC(v102, v64 + v57);
    v34 = v59;
    v35 = v110;
    v36 = v105;
    v37 = v106;
    v38 = v60;
    v39 = v64;
    v40 = v68;
    v41 = v69;
    v42 = v70;
    v43 = v90;
    v44 = (v64 + v58);
    *v44 = v67;
    v44[1] = v40;
    v44[2] = v41;
    v44[3] = v42;
    v45 = (v39 + v34);
    *v45 = v35;
    v45[1] = v36;
    v45[2] = v37;
    sub_1B03F4FD0(v43, v39 + v38);
    v46 = v73;
    v47 = v62;
    v48 = v63;
    v49 = v108;
    v50 = v109;
    v51 = v74;
    v52 = v64;
    *(v64 + v61) = v113;
    *(v52 + v47) = v46;
    v53 = (v52 + v48);
    *v53 = v49;
    v53[1] = v50;
    v124 = v51;
    v125 = v52;
    aBlock = MEMORY[0x1E69E9820];
    v120 = 1107296256;
    v121 = 0;
    v122 = sub_1B038C908;
    v123 = &block_descriptor_7;
    v65 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v84, v79, v65);
    (*(v76 + 8))(v79, v75);
    (*(v81 + 8))(v84, v80);
    _Block_release(v65);

    MEMORY[0x1E69E5920](v66);

    sub_1B03F4F08(v104);
    MEMORY[0x1E69E5920](v71);
    return MEMORY[0x1E69E5920](v113);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0879EF0()
{
  v9 = 0;
  v1 = _s18MailboxPersistenceVMa();
  v3[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = v3 - v3[0];
  v9 = v0;
  v6 = sub_1B09B0434();
  v4 = v3[1] + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v5 = &v8;
  swift_beginAccess();
  sub_1B03F4D78(v4, v7);
  swift_endAccess();
  return sub_1B0884248(v6, v7);
}

void sub_1B0879FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v72 = a8;
  v71 = a7;
  v70 = a6;
  v69 = a5;
  v68 = a4;
  v67 = a3;
  v78 = a2;
  v77 = a1;
  v54 = a17;
  v55 = a16;
  v76 = a15;
  v56 = a15;
  v84 = a14;
  v57 = a14;
  v83 = a13;
  v58 = a13;
  v82 = a12;
  v59 = a12;
  v75 = a11;
  v60 = a11;
  v74 = a10;
  v61 = a10;
  v73 = a9;
  v62 = a9;
  v88 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0u;
  v107 = 0u;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v96 = 0;
  v63 = sub_1B0E44238();
  v64 = *(v63 - 8);
  v65 = v64;
  v17 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](0);
  v66 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1B0E44288();
  v80 = *(v79 - 8);
  v81 = v80;
  v19 = *(v80 + 64);
  v20 = MEMORY[0x1EEE9AC00](v77);
  v85 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v20;
  v110 = v22;
  v109 = v23;
  *&v107 = v24;
  *(&v107 + 1) = v25;
  *&v108 = v26;
  *(&v108 + 1) = v27;
  v104 = v28;
  v105 = v29;
  v106 = v30;
  v103 = v31;
  v102 = v82;
  v101 = v83;
  v99 = v84;
  v100 = v32;
  v86 = [objc_opt_self() defaultCenter];
  v87 = @"AccountMailboxListingWillLoad";
  v33 = @"AccountMailboxListingWillLoad";
  v97[0] = v88;
  v97[1] = v88;
  v97[2] = v88;
  v98 = v88;
  if (v88)
  {
    v48 = v98;
    v51 = v97;
    __swift_project_boxed_opaque_existential_0(v97, v98);
    v46 = *(v48 - 8);
    v47 = v46;
    v34 = *(v46 + 64);
    v50 = v41;
    MEMORY[0x1EEE9AC00](v41);
    v49 = v41 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v47 + 16))();
    v52 = sub_1B0E46A58();
    (*(v47 + 8))(v49, v48);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  v41[1] = v53;
  [v86 postNotificationName:v87 object:?];
  swift_unknownObjectRelease();

  v44 = 0;
  type metadata accessor for Cache();
  Cache.__allocating_init()();
  v41[2] = v36;
  v42 = sub_1B087A900(v78, v67, v68, v69, v70, v71, v72, v62, v61, v36, v60, v55, v54);

  v43 = v42 & 1;
  v96 = v42 & 1;

  v37 = swift_allocObject();
  v38 = v58;
  v39 = v57;
  v40 = v56;
  *(v37 + 16) = v43;
  *(v37 + 24) = v38;
  *(v37 + 32) = v39;
  *(v37 + 40) = v40;
  v94 = sub_1B08A6B0C;
  v95 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v90 = 1107296256;
  v91 = 0;
  v92 = sub_1B038C908;
  v93 = &block_descriptor_1784;
  v45 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v44, v85, v66, v45);
  (*(v65 + 8))(v66, v63);
  (*(v81 + 8))(v85, v79);
  _Block_release(v45);

  sub_1B087A750();
}

void sub_1B087A750()
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = @"AccountMailboxListingDidLoad";
  v0 = @"AccountMailboxListingDidLoad";
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v2 = 0;
  v1 = 0;
  [v3 postNotificationName:@"AccountMailboxListingDidLoad" object:?];
  swift_unknownObjectRelease();
}

uint64_t sub_1B087A900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v40 = a1;
  v48 = a2;
  *&v45 = a3;
  *(&v45 + 1) = a4;
  *&v46 = a5;
  *(&v46 + 1) = a6;
  v41 = a7;
  v37 = a8;
  v42 = a9;
  v43 = a10;
  v47 = a11;
  v38 = a12;
  v39 = a13;
  v62 = 0;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v63 = a12;
  v14 = (*(*(_s18MailboxPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v30[-v16];
  v62 = v15;
  v61 = v17;
  *&v59 = v18;
  *(&v59 + 1) = v19;
  *&v60 = v20;
  *(&v60 + 1) = v21;
  v56 = v41;
  v57 = v22;
  v58 = a9;
  v55 = a10;
  v54 = v23;
  v53 = v13;
  v49 = sub_1B0885194(v15, v18, v19, v20, v21, v24, v25);
  v52 = v49 & 1;
  sub_1B0885834(v48, v45, *(&v45 + 1), v46, *(&v46 + 1), v47);
  if (v49)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v50 = v45;
    v51 = v46;
    v35 = v45;
    v36 = v46;
  }

  else
  {
    v32 = sub_1B0885A84();
    sub_1B03F4D78(v48, v44);
    *&v33 = sub_1B0884248(v32, v44);
    *(&v33 + 1) = v26;
    *&v34 = v27;
    *(&v34 + 1) = v28;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v50 = v33;
    v51 = v34;
    v35 = v33;
    v36 = v34;
  }

  v31 = v36;
  *&v30[8] = v35;
  sub_1B0885C8C(v40, v48, v35, *(&v35 + 1), v36, *(&v36 + 1), v41, v37, v42, v43, v47, v38, v39);

  sub_1B071F9F0(&v50);
  return v49 & 1;
}

uint64_t sub_1B087AD48(char a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (sub_1B06E5FB4(a1 & 1, 0))
  {
    sub_1B087AE2C();
    v6 = (a2 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMailboxActions);
    swift_beginAccess();
    v3 = *v6;
    *v6 = 0;

    swift_endAccess();
  }

  a3(v4);
}

uint64_t sub_1B087AE2C()
{
  v121 = 0;
  v139 = 0;
  v138 = 0;
  v116 = 0;
  v134 = 0;
  v117 = sub_1B0E439A8();
  v118 = *(v117 - 8);
  v119 = v118;
  v1 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](0);
  v120 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(*(_s6LoggerVMa() - 8) + 64);
  MEMORY[0x1EEE9AC00](v121);
  v122 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1B0E44468();
  v123 = *(v126 - 8);
  v125 = v123;
  v5 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v126 - 8);
  v127 = (v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = v0;

  v124 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  v7 = v124;
  v8 = v125;
  *v127 = v124;
  v9 = *MEMORY[0x1E69E8020];
  (*(v8 + 104))();
  v128 = sub_1B0E44488();
  (*(v125 + 8))(v127, v126);
  result = v128;
  if ((v128 & 1) == 0)
  {
    goto LABEL_13;
  }

  v11 = v116;

  v103 = swift_allocObject();
  v100 = v103;
  v108 = v103 + 16;
  v138 = v103 + 16;
  v104 = 0;
  v101 = sub_1B0E42E68();
  v102 = sub_1B0E46A48();
  sub_1B07BAD2C();
  *(v103 + 16) = sub_1B0E45438();
  v136 = sub_1B09B0668();
  v106 = sub_1B0E45C48();
  v105 = v106;
  v107 = sub_1B0E46A48();
  sub_1B074E39C();
  v135 = sub_1B0E45438();

  v109 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v111 = &v37;
  v39 = v115;
  v40 = v12;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
  v110 = v113;
  sub_1B071CEA8();
  sub_1B0E44FD8();
  v114 = v11;
  if (v11)
  {

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v13 = v120;

  sub_1B039E440(&v136);
  v72 = v137;
  v71 = v137;
  v134 = v137;
  sub_1B0394784(v115 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v122);
  (*(v119 + 16))(v13, v122, v117);
  sub_1B039480C(v122);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v85 = 7;
  v86 = swift_allocObject();
  *(v86 + 16) = v72;
  v99 = sub_1B0E43988();
  v73 = v99;
  v98 = sub_1B0E45908();
  v74 = v98;
  v80 = 17;
  v89 = swift_allocObject();
  v75 = v89;
  v79 = 0;
  *(v89 + 16) = 0;
  v90 = swift_allocObject();
  v76 = v90;
  v82 = 8;
  *(v90 + 16) = 8;
  v84 = 32;
  v14 = swift_allocObject();
  v15 = v100;
  v77 = v14;
  *(v14 + 16) = sub_1B08A2BD8;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v77;
  v91 = v16;
  v78 = v16;
  *(v16 + 16) = sub_1B03B0DF8;
  *(v16 + 24) = v17;
  v92 = swift_allocObject();
  v81 = v92;
  *(v92 + 16) = v79;
  v93 = swift_allocObject();
  v83 = v93;
  *(v93 + 16) = v82;
  v18 = swift_allocObject();
  v19 = v86;
  v87 = v18;
  *(v18 + 16) = sub_1B08A2BE0;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v87;
  v96 = v20;
  v88 = v20;
  *(v20 + 16) = sub_1B03B0DF8;
  *(v20 + 24) = v21;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v94 = sub_1B0E46A48();
  v95 = v22;

  v23 = v89;
  v24 = v95;
  *v95 = sub_1B0398F5C;
  v24[1] = v23;

  v25 = v90;
  v26 = v95;
  v95[2] = sub_1B0398F5C;
  v26[3] = v25;

  v27 = v91;
  v28 = v95;
  v95[4] = sub_1B0399260;
  v28[5] = v27;

  v29 = v92;
  v30 = v95;
  v95[6] = sub_1B0398F5C;
  v30[7] = v29;

  v31 = v93;
  v32 = v95;
  v95[8] = sub_1B0398F5C;
  v32[9] = v31;

  v33 = v95;
  v34 = v96;
  v95[10] = sub_1B0399260;
  v33[11] = v34;
  sub_1B0394964();

  if (os_log_type_enabled(v99, v98))
  {
    v35 = v114;
    v65 = sub_1B0E45D78();
    v61 = v65;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v63 = 0;
    v66 = sub_1B03949A8(0);
    v64 = v66;
    v67 = sub_1B03949A8(v63);
    v133[0] = v65;
    v132 = v66;
    v131 = v67;
    v68 = v133;
    sub_1B0394A48(0, v133);
    sub_1B0394A48(2, v68);
    v129 = sub_1B0398F5C;
    v130 = v75;
    sub_1B03949FC(&v129, v68, &v132, &v131);
    v69 = v35;
    v70 = v35;
    if (v35)
    {
      v59 = 0;

      __break(1u);
    }

    else
    {
      v129 = sub_1B0398F5C;
      v130 = v76;
      sub_1B03949FC(&v129, v133, &v132, &v131);
      v57 = 0;
      v58 = 0;
      v129 = sub_1B0399260;
      v130 = v78;
      sub_1B03949FC(&v129, v133, &v132, &v131);
      v55 = 0;
      v56 = 0;
      v129 = sub_1B0398F5C;
      v130 = v81;
      sub_1B03949FC(&v129, v133, &v132, &v131);
      v53 = 0;
      v54 = 0;
      v129 = sub_1B0398F5C;
      v130 = v83;
      sub_1B03949FC(&v129, v133, &v132, &v131);
      v51 = 0;
      v52 = 0;
      v129 = sub_1B0399260;
      v130 = v88;
      sub_1B03949FC(&v129, v133, &v132, &v131);
      v49 = 0;
      v50 = 0;
      _os_log_impl(&dword_1B0389000, v73, v74, "%ld removed mailbox(es) and %ld stale message action for removed mailboxes.", v61, 0x16u);
      v48 = 0;
      sub_1B03998A8(v64);
      sub_1B03998A8(v67);
      sub_1B0E45D58();

      v60 = v49;
    }
  }

  else
  {
    v36 = v114;

    v60 = v36;
  }

  (*(v119 + 8))(v120, v117);
  v45 = sub_1B03F1544();
  v47 = [v45 persistence];
  v46 = v47;

  if (v47)
  {
    v44 = v46;
  }

  else
  {
    LODWORD(v39) = 0;
    v38 = 190;
    v37 = 2;
    sub_1B0E465A8();
    __break(1u);
  }

  v43 = [v44 messageChangeManager];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v133[1] = v71;
  sub_1B07B61A0();
  v41[1] = sub_1B0E45378();
  v42 = sub_1B0E451A8();

  [v43 deleteLocalMessageActionsWithIDs_];
}

uint64_t sub_1B087BE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = a1;
  v82 = a2;
  v81 = a3;
  v55 = sub_1B08A2BE8;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v107 = 0;
  v108 = 0;
  v106 = 0;
  v105 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v100 = 0;
  v99 = 0;
  v73 = 0;
  v56 = sub_1B0E44238();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v60 = v38 - v59;
  v61 = sub_1B0E44288();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v73);
  v65 = v38 - v64;
  v66 = *(_s6LoggerVMa() - 8);
  v67 = v66;
  v68 = *(v66 + 64);
  v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v73);
  v70 = v38 - v69;
  v71 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v72 = v38 - v71;
  v111 = v38 - v71;
  v74 = *(_s18MailboxPersistenceVMa() - 8);
  v75 = v74;
  v76 = *(v74 + 64);
  v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v73);
  v78 = v38 - v77;
  v79 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v80 = v38 - v79;
  v110 = v38 - v79;
  v89 = sub_1B0E44468();
  v87 = *(v89 - 8);
  v88 = v89 - 8;
  v84 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v83);
  v90 = (v38 - v84);
  v85 = *v8;
  v109 = v85;
  v107 = v9;
  v108 = v10;
  v106 = v3;
  v86 = *(v3 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v86);
  v105 = v86;
  MEMORY[0x1E69E5928](v86);
  MEMORY[0x1E69E5928](v86);
  v11 = v87;
  *v90 = v86;
  v12 = *MEMORY[0x1E69E8020];
  (*(v11 + 104))();
  v91 = sub_1B0E44488();
  (*(v87 + 8))(v90, v89);
  result = v91;
  if (v91)
  {
    v14 = v54;
    MEMORY[0x1E69E5920](v86);
    v38[0] = v14 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
    v38[1] = &v104;
    swift_beginAccess();
    sub_1B03F4D78(v38[0], v80);
    swift_endAccess();
    v51 = sub_1B09B03B8();
    v52 = v15;
    v53 = v16;
    v101 = v51;
    v102 = v15;
    v103 = v16;
    v50 = *(v54 + 112);
    MEMORY[0x1E69E5928](v50);
    v100 = v50;
    v49 = sub_1B09B0434();
    v99 = v49;
    sub_1B0394784(v54 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v72);
    v48 = *sub_1B08772C0();
    MEMORY[0x1E69E5928](v48);
    MEMORY[0x1E69E5928](v50);
    sub_1B03F4D78(v80, v78);
    sub_1B07BA724(v51);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394784(v72, v70);
    MEMORY[0x1E69E5928](v86);

    v39 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v40 = (v39 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v40 + 31) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 8 + *(v67 + 80)) & ~*(v67 + 80);
    v43 = (v42 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    v18 = v85;
    v19 = v39;
    v20 = v17;
    v21 = v78;
    v46 = v20;
    *(v20 + 16) = v50;
    *(v20 + 24) = v18;
    sub_1B04158DC(v21, v20 + v19);
    v22 = v41;
    v23 = v42;
    v24 = v46;
    v25 = v49;
    v26 = v52;
    v27 = v53;
    v28 = v70;
    v29 = (v46 + v40);
    *v29 = v51;
    v29[1] = v26;
    v29[2] = v27;
    *(v24 + v22) = v25;
    sub_1B03F4FD0(v28, v24 + v23);
    v30 = v54;
    v31 = v44;
    v32 = v45;
    v33 = v82;
    v34 = v81;
    v35 = v55;
    v36 = v46;
    *(v46 + v43) = v86;
    *(v36 + v31) = v30;
    v37 = (v36 + v32);
    *v37 = v33;
    v37[1] = v34;
    v97 = v35;
    v98 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v93 = 1107296256;
    v94 = 0;
    v95 = sub_1B038C908;
    v96 = &block_descriptor_111;
    v47 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v65, v60, v47);
    (*(v57 + 8))(v60, v56);
    (*(v62 + 8))(v65, v61);
    _Block_release(v47);

    MEMORY[0x1E69E5920](v48);
    sub_1B039480C(v72);

    MEMORY[0x1E69E5920](v50);
    sub_1B07BA794(v51);
    sub_1B03F4F08(v80);
    return MEMORY[0x1E69E5920](v86);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B087C840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v28[1] = a2;
  v28[7] = a3;
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v28[6] = a8;
  v28[8] = a9;
  v29 = a10;
  v30 = a11;
  v31 = a12;
  v32 = sub_1B08A69EC;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v33 = 0;
  v37 = sub_1B0E44238();
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v28[0] = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v36 = v28 - v28[0];
  v41 = sub_1B0E44288();
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v13 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v40 = v28 - v14;
  v62 = a1;
  v61 = v15;
  v60 = v16;
  v57 = v17;
  v58 = v18;
  v59 = v19;
  v56 = v20;
  v55 = v21;
  v54 = v22;
  v53 = v29;
  v51 = v30;
  v52 = v31;
  v50 = v15;
  sub_1B087CBE0(&v50, v16, v17, v18, v19, v20, v21);

  v23 = swift_allocObject();
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v23[2] = v29;
  v23[3] = v24;
  v23[4] = v25;
  v48 = v26;
  v49 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = 0;
  v46 = sub_1B038C908;
  v47 = &block_descriptor_1778;
  v42 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v33, v40, v36, v42);
  (*(v34 + 8))(v36, v37);
  (*(v38 + 8))(v40, v41);
  _Block_release(v42);
}

uint64_t sub_1B087CBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v381 = a7;
  v380 = a6;
  v379 = a5;
  v378 = a4;
  v377 = a3;
  v357 = a2;
  v382 = a1;
  v372 = 0;
  v418 = 0;
  v417 = 0;
  v416 = 0;
  v415 = 0;
  v414 = 0;
  v413 = 0;
  v412 = 0;
  v411 = 0;
  v410 = 0;
  v358 = 0;
  v403 = 0;
  v402 = 0;
  v399 = 0;
  v393 = 0;
  v359 = _s6LoggerVMa();
  v361 = *(*(v359 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](0);
  v363 = (v361 + 15) & 0xFFFFFFFFFFFFFFF0;
  v360 = &v148 - v363;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v362 = &v148 - v363;
  MEMORY[0x1EEE9AC00](v9);
  v364 = &v148 - v363;
  v365 = sub_1B0E439A8();
  v366 = *(v365 - 8);
  v367 = v366;
  v368 = *(v366 + 64);
  MEMORY[0x1EEE9AC00](v365 - 8);
  v370 = (v368 + 15) & 0xFFFFFFFFFFFFFFF0;
  v369 = &v148 - v370;
  MEMORY[0x1EEE9AC00](&v148 - v370);
  v371 = &v148 - v370;
  v373 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v372);
  v375 = (v373 + 15) & 0xFFFFFFFFFFFFFFF0;
  v374 = &v148 - v375;
  MEMORY[0x1EEE9AC00](v10);
  v391 = &v148 - v375;
  v376 = &v148 - v375;
  v392 = sub_1B0E42E68();
  v383 = v392;
  v384 = *(v392 - 8);
  v390 = v384;
  v385 = v384;
  v386 = *(v384 + 64);
  v11 = MEMORY[0x1EEE9AC00](v382);
  v388 = &v148 - ((v386 + 15) & 0xFFFFFFFFFFFFFFF0);
  v418 = v388;
  v389 = *v11;
  v417 = v389;
  v416 = a2;
  v413 = v12;
  v414 = v13;
  v415 = v14;
  v412 = v15;
  v411 = v16;
  v410 = v387;
  v409 = v389;
  sub_1B07C04F4(&v409, v17);
  if ((*(v390 + 48))(v391, 1, v392) == 1)
  {
    v85 = v369;
    sub_1B06E3800(v376);
    (*(v367 + 16))(v85, v381, v365);
    sub_1B0394784(v381, v364);
    sub_1B0394784(v364, v362);
    sub_1B03F4FD0(v364, v360);
    v86 = (v362 + *(v359 + 20));
    v188 = *v86;
    v189 = *(v86 + 1);
    sub_1B039480C(v362);
    v191 = 24;
    v222 = 7;
    v87 = swift_allocObject();
    v88 = v189;
    v201 = v87;
    *(v87 + 16) = v188;
    *(v87 + 20) = v88;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v89 = swift_allocObject();
    v90 = v189;
    v190 = v89;
    *(v89 + 16) = v188;
    *(v89 + 20) = v90;

    v217 = 32;
    v221 = 32;
    v91 = swift_allocObject();
    v92 = v190;
    v214 = v91;
    *(v91 + 16) = sub_1B039BBE8;
    *(v91 + 24) = v92;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v360);
    v192 = swift_allocObject();
    *(v192 + 16) = v389;

    v93 = swift_allocObject();
    v94 = v192;
    v223 = v93;
    *(v93 + 16) = sub_1B06BA324;
    *(v93 + 24) = v94;

    v245 = sub_1B0E43988();
    v193 = v245;
    v244 = sub_1B0E458E8();
    v194 = v244;
    v218 = 17;
    v226 = swift_allocObject();
    v195 = v226;
    v204 = 16;
    *(v226 + 16) = 16;
    v227 = swift_allocObject();
    v196 = v227;
    v212 = 4;
    *(v227 + 16) = 4;
    v95 = swift_allocObject();
    v197 = v95;
    *(v95 + 16) = sub_1B0394C30;
    v207 = 0;
    *(v95 + 24) = 0;
    v96 = swift_allocObject();
    v97 = v197;
    v228 = v96;
    v198 = v96;
    *(v96 + 16) = sub_1B0394C24;
    *(v96 + 24) = v97;
    v229 = swift_allocObject();
    v199 = v229;
    v210 = 0;
    *(v229 + 16) = 0;
    v230 = swift_allocObject();
    v200 = v230;
    *(v230 + 16) = 1;
    v98 = swift_allocObject();
    v99 = v201;
    v202 = v98;
    *(v98 + 16) = sub_1B039BA2C;
    *(v98 + 24) = v99;
    v100 = swift_allocObject();
    v101 = v202;
    v231 = v100;
    v203 = v100;
    *(v100 + 16) = sub_1B039BA88;
    *(v100 + 24) = v101;
    v232 = swift_allocObject();
    v205 = v232;
    *(v232 + 16) = v204;
    v233 = swift_allocObject();
    v206 = v233;
    *(v233 + 16) = v212;
    v102 = swift_allocObject();
    v103 = v207;
    v208 = v102;
    *(v102 + 16) = sub_1B039BB94;
    *(v102 + 24) = v103;
    v104 = swift_allocObject();
    v105 = v208;
    v234 = v104;
    v209 = v104;
    *(v104 + 16) = sub_1B0394C24;
    *(v104 + 24) = v105;
    v235 = swift_allocObject();
    v211 = v235;
    *(v235 + 16) = v210;
    v236 = swift_allocObject();
    v213 = v236;
    *(v236 + 16) = v212;
    v106 = swift_allocObject();
    v107 = v214;
    v215 = v106;
    *(v106 + 16) = sub_1B039BBA0;
    *(v106 + 24) = v107;
    v108 = swift_allocObject();
    v109 = v215;
    v237 = v108;
    v216 = v108;
    *(v108 + 16) = sub_1B039BC08;
    *(v108 + 24) = v109;
    v238 = swift_allocObject();
    v219 = v238;
    *(v238 + 16) = v217;
    v239 = swift_allocObject();
    v220 = v239;
    *(v239 + 16) = 8;
    v110 = swift_allocObject();
    v111 = v223;
    v224 = v110;
    *(v110 + 16) = sub_1B03FB1CC;
    *(v110 + 24) = v111;
    v112 = swift_allocObject();
    v113 = v224;
    v242 = v112;
    v225 = v112;
    *(v112 + 16) = sub_1B039BCF8;
    *(v112 + 24) = v113;
    v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v240 = sub_1B0E46A48();
    v241 = v114;

    v115 = v226;
    v116 = v241;
    *v241 = sub_1B0398F5C;
    v116[1] = v115;

    v117 = v227;
    v118 = v241;
    v241[2] = sub_1B0398F5C;
    v118[3] = v117;

    v119 = v228;
    v120 = v241;
    v241[4] = sub_1B0399178;
    v120[5] = v119;

    v121 = v229;
    v122 = v241;
    v241[6] = sub_1B0398F5C;
    v122[7] = v121;

    v123 = v230;
    v124 = v241;
    v241[8] = sub_1B0398F5C;
    v124[9] = v123;

    v125 = v231;
    v126 = v241;
    v241[10] = sub_1B039BA94;
    v126[11] = v125;

    v127 = v232;
    v128 = v241;
    v241[12] = sub_1B0398F5C;
    v128[13] = v127;

    v129 = v233;
    v130 = v241;
    v241[14] = sub_1B0398F5C;
    v130[15] = v129;

    v131 = v234;
    v132 = v241;
    v241[16] = sub_1B0399178;
    v132[17] = v131;

    v133 = v235;
    v134 = v241;
    v241[18] = sub_1B0398F5C;
    v134[19] = v133;

    v135 = v236;
    v136 = v241;
    v241[20] = sub_1B0398F5C;
    v136[21] = v135;

    v137 = v237;
    v138 = v241;
    v241[22] = sub_1B03991EC;
    v138[23] = v137;

    v139 = v238;
    v140 = v241;
    v241[24] = sub_1B0398F5C;
    v140[25] = v139;

    v141 = v239;
    v142 = v241;
    v241[26] = sub_1B0398F5C;
    v142[27] = v141;

    v143 = v241;
    v144 = v242;
    v241[28] = sub_1B039BCEC;
    v143[29] = v144;
    sub_1B0394964();

    if (os_log_type_enabled(v245, v244))
    {
      v145 = v358;
      v182 = sub_1B0E45D78();
      v179 = v182;
      v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v183 = sub_1B03949A8(0);
      v181 = v183;
      v184 = sub_1B03949A8(1);
      v408 = v182;
      v407 = v183;
      v406 = v184;
      v185 = &v408;
      sub_1B0394A48(2, &v408);
      sub_1B0394A48(5, v185);
      v404 = sub_1B0398F5C;
      v405 = v195;
      sub_1B03949FC(&v404, v185, &v407, &v406);
      v186 = v145;
      v187 = v145;
      if (v145)
      {
        v177 = 0;

        __break(1u);
      }

      else
      {
        v404 = sub_1B0398F5C;
        v405 = v196;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v175 = 0;
        v176 = 0;
        v404 = sub_1B0399178;
        v405 = v198;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v173 = 0;
        v174 = 0;
        v404 = sub_1B0398F5C;
        v405 = v199;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v171 = 0;
        v172 = 0;
        v404 = sub_1B0398F5C;
        v405 = v200;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v169 = 0;
        v170 = 0;
        v404 = sub_1B039BA94;
        v405 = v203;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v167 = 0;
        v168 = 0;
        v404 = sub_1B0398F5C;
        v405 = v205;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v165 = 0;
        v166 = 0;
        v404 = sub_1B0398F5C;
        v405 = v206;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v163 = 0;
        v164 = 0;
        v404 = sub_1B0399178;
        v405 = v209;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v161 = 0;
        v162 = 0;
        v404 = sub_1B0398F5C;
        v405 = v211;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v159 = 0;
        v160 = 0;
        v404 = sub_1B0398F5C;
        v405 = v213;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v157 = 0;
        v158 = 0;
        v404 = sub_1B03991EC;
        v405 = v216;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v155 = 0;
        v156 = 0;
        v404 = sub_1B0398F5C;
        v405 = v219;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v153 = 0;
        v154 = 0;
        v404 = sub_1B0398F5C;
        v405 = v220;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v151 = 0;
        v152 = 0;
        v404 = sub_1B039BCEC;
        v405 = v225;
        sub_1B03949FC(&v404, &v408, &v407, &v406);
        v149 = 0;
        v150 = 0;
        _os_log_impl(&dword_1B0389000, v193, v194, "[%.*hhx-%.*X] Could not find mailbox URL for mailbox %s", v179, 0x21u);
        sub_1B03998A8(v181);
        sub_1B03998A8(v184);
        sub_1B0E45D58();

        v178 = v149;
      }
    }

    else
    {
      v146 = v358;

      v178 = v146;
    }

    v148 = v178;

    (*(v367 + 8))(v369, v365);
    return v148;
  }

  v18 = v358;
  (*(v385 + 32))(v388, v376, v383);
  (*(v385 + 16))(v374, v388, v383);
  (*(v385 + 56))(v374, 0, 1, v383);
  v351 = sub_1B07BF5C8(v374);
  v352 = v19;
  v350 = v351;
  sub_1B06E3800(v374);
  v402 = v351;
  v403 = v352;
  v400 = v380;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v353 = &v148;
  v20 = MEMORY[0x1EEE9AC00](v351);
  v354 = &v148 - 4;
  *(&v148 - 2) = v20;
  *(&v148 - 2) = v21;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27B8, &qword_1B0EA2020);
  sub_1B08A2E10();
  sub_1B0E44FB8();
  v356 = v18;
  if (!v18)
  {

    v349 = v401;
    v348 = v401;
    v399 = v401;
    v22 = v401;
    if (v349)
    {
      v347 = v348;
      v345 = v348;
      v393 = v348;
      v344 = sub_1B0888AF4();
      v23 = [v345 actionID];
      [v344 deleteMailboxAction_];

      (*(v385 + 8))(v388, v383);
      return v356;
    }

    else
    {
      (*(v367 + 16))(v371, v381, v365);
      sub_1B0394784(v381, v364);
      sub_1B0394784(v364, v362);
      sub_1B03F4FD0(v364, v360);
      v24 = (v362 + *(v359 + 20));
      v286 = *v24;
      v287 = *(v24 + 1);
      sub_1B039480C(v362);
      v289 = 24;
      v320 = 7;
      v25 = swift_allocObject();
      v26 = v287;
      v299 = v25;
      *(v25 + 16) = v286;
      *(v25 + 20) = v26;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v27 = swift_allocObject();
      v28 = v287;
      v288 = v27;
      *(v27 + 16) = v286;
      *(v27 + 20) = v28;

      v315 = 32;
      v319 = 32;
      v29 = swift_allocObject();
      v30 = v288;
      v312 = v29;
      *(v29 + 16) = sub_1B039BBE8;
      *(v29 + 24) = v30;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v360);
      v290 = swift_allocObject();
      *(v290 + 16) = v389;

      v31 = swift_allocObject();
      v32 = v290;
      v321 = v31;
      *(v31 + 16) = sub_1B06BA324;
      *(v31 + 24) = v32;

      v343 = sub_1B0E43988();
      v291 = v343;
      v342 = sub_1B0E458E8();
      v292 = v342;
      v316 = 17;
      v324 = swift_allocObject();
      v293 = v324;
      v302 = 16;
      *(v324 + 16) = 16;
      v325 = swift_allocObject();
      v294 = v325;
      v310 = 4;
      *(v325 + 16) = 4;
      v33 = swift_allocObject();
      v295 = v33;
      *(v33 + 16) = sub_1B0394C30;
      v305 = 0;
      *(v33 + 24) = 0;
      v34 = swift_allocObject();
      v35 = v295;
      v326 = v34;
      v296 = v34;
      *(v34 + 16) = sub_1B0394C24;
      *(v34 + 24) = v35;
      v327 = swift_allocObject();
      v297 = v327;
      v308 = 0;
      *(v327 + 16) = 0;
      v328 = swift_allocObject();
      v298 = v328;
      *(v328 + 16) = 1;
      v36 = swift_allocObject();
      v37 = v299;
      v300 = v36;
      *(v36 + 16) = sub_1B039BA2C;
      *(v36 + 24) = v37;
      v38 = swift_allocObject();
      v39 = v300;
      v329 = v38;
      v301 = v38;
      *(v38 + 16) = sub_1B039BA88;
      *(v38 + 24) = v39;
      v330 = swift_allocObject();
      v303 = v330;
      *(v330 + 16) = v302;
      v331 = swift_allocObject();
      v304 = v331;
      *(v331 + 16) = v310;
      v40 = swift_allocObject();
      v41 = v305;
      v306 = v40;
      *(v40 + 16) = sub_1B039BB94;
      *(v40 + 24) = v41;
      v42 = swift_allocObject();
      v43 = v306;
      v332 = v42;
      v307 = v42;
      *(v42 + 16) = sub_1B0394C24;
      *(v42 + 24) = v43;
      v333 = swift_allocObject();
      v309 = v333;
      *(v333 + 16) = v308;
      v334 = swift_allocObject();
      v311 = v334;
      *(v334 + 16) = v310;
      v44 = swift_allocObject();
      v45 = v312;
      v313 = v44;
      *(v44 + 16) = sub_1B039BBA0;
      *(v44 + 24) = v45;
      v46 = swift_allocObject();
      v47 = v313;
      v335 = v46;
      v314 = v46;
      *(v46 + 16) = sub_1B039BC08;
      *(v46 + 24) = v47;
      v336 = swift_allocObject();
      v317 = v336;
      *(v336 + 16) = v315;
      v337 = swift_allocObject();
      v318 = v337;
      *(v337 + 16) = 8;
      v48 = swift_allocObject();
      v49 = v321;
      v322 = v48;
      *(v48 + 16) = sub_1B03FB1CC;
      *(v48 + 24) = v49;
      v50 = swift_allocObject();
      v51 = v322;
      v340 = v50;
      v323 = v50;
      *(v50 + 16) = sub_1B039BCF8;
      *(v50 + 24) = v51;
      v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v338 = sub_1B0E46A48();
      v339 = v52;

      v53 = v324;
      v54 = v339;
      *v339 = sub_1B0398F5C;
      v54[1] = v53;

      v55 = v325;
      v56 = v339;
      v339[2] = sub_1B0398F5C;
      v56[3] = v55;

      v57 = v326;
      v58 = v339;
      v339[4] = sub_1B0399178;
      v58[5] = v57;

      v59 = v327;
      v60 = v339;
      v339[6] = sub_1B0398F5C;
      v60[7] = v59;

      v61 = v328;
      v62 = v339;
      v339[8] = sub_1B0398F5C;
      v62[9] = v61;

      v63 = v329;
      v64 = v339;
      v339[10] = sub_1B039BA94;
      v64[11] = v63;

      v65 = v330;
      v66 = v339;
      v339[12] = sub_1B0398F5C;
      v66[13] = v65;

      v67 = v331;
      v68 = v339;
      v339[14] = sub_1B0398F5C;
      v68[15] = v67;

      v69 = v332;
      v70 = v339;
      v339[16] = sub_1B0399178;
      v70[17] = v69;

      v71 = v333;
      v72 = v339;
      v339[18] = sub_1B0398F5C;
      v72[19] = v71;

      v73 = v334;
      v74 = v339;
      v339[20] = sub_1B0398F5C;
      v74[21] = v73;

      v75 = v335;
      v76 = v339;
      v339[22] = sub_1B03991EC;
      v76[23] = v75;

      v77 = v336;
      v78 = v339;
      v339[24] = sub_1B0398F5C;
      v78[25] = v77;

      v79 = v337;
      v80 = v339;
      v339[26] = sub_1B0398F5C;
      v80[27] = v79;

      v81 = v339;
      v82 = v340;
      v339[28] = sub_1B039BCEC;
      v81[29] = v82;
      sub_1B0394964();

      if (os_log_type_enabled(v343, v342))
      {
        v83 = v356;
        v280 = sub_1B0E45D78();
        v277 = v280;
        v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v281 = sub_1B03949A8(0);
        v279 = v281;
        v282 = sub_1B03949A8(1);
        v398 = v280;
        v397 = v281;
        v396 = v282;
        v283 = &v398;
        sub_1B0394A48(2, &v398);
        sub_1B0394A48(5, v283);
        v394 = sub_1B0398F5C;
        v395 = v293;
        sub_1B03949FC(&v394, v283, &v397, &v396);
        v284 = v83;
        v285 = v83;
        if (v83)
        {
          v275 = 0;

          __break(1u);
        }

        else
        {
          v394 = sub_1B0398F5C;
          v395 = v294;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v273 = 0;
          v274 = 0;
          v394 = sub_1B0399178;
          v395 = v296;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v271 = 0;
          v272 = 0;
          v394 = sub_1B0398F5C;
          v395 = v297;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v269 = 0;
          v270 = 0;
          v394 = sub_1B0398F5C;
          v395 = v298;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v267 = 0;
          v268 = 0;
          v394 = sub_1B039BA94;
          v395 = v301;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v265 = 0;
          v266 = 0;
          v394 = sub_1B0398F5C;
          v395 = v303;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v263 = 0;
          v264 = 0;
          v394 = sub_1B0398F5C;
          v395 = v304;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v261 = 0;
          v262 = 0;
          v394 = sub_1B0399178;
          v395 = v307;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v259 = 0;
          v260 = 0;
          v394 = sub_1B0398F5C;
          v395 = v309;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v257 = 0;
          v258 = 0;
          v394 = sub_1B0398F5C;
          v395 = v311;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v255 = 0;
          v256 = 0;
          v394 = sub_1B03991EC;
          v395 = v314;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v253 = 0;
          v254 = 0;
          v394 = sub_1B0398F5C;
          v395 = v317;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v251 = 0;
          v252 = 0;
          v394 = sub_1B0398F5C;
          v395 = v318;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v249 = 0;
          v250 = 0;
          v394 = sub_1B039BCEC;
          v395 = v323;
          sub_1B03949FC(&v394, &v398, &v397, &v396);
          v247 = 0;
          v248 = 0;
          _os_log_impl(&dword_1B0389000, v291, v292, "[%.*hhx-%.*X] Could not find failed create action for mailbox %s", v277, 0x21u);
          sub_1B03998A8(v279);
          sub_1B03998A8(v282);
          sub_1B0E45D58();

          v276 = v247;
        }
      }

      else
      {
        v84 = v356;

        v276 = v84;
      }

      v246 = v276;

      (*(v367 + 8))(v371, v365);

      (*(v385 + 8))(v388, v383);
      return v246;
    }
  }

  __break(1u);
  return result;
}