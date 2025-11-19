uint64_t sub_1CF71CDC8(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1EEE9AC00](a1);
  v459 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v455 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v455 - v11;
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);
  v15 = *(v2 + 136);
  v457 = *(v2 + 128);
  v458 = v13;
  v456 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  sub_1CEFE4FF4(v2 + *(v16 + 48), &v12[*(v6 + 48)], type metadata accessor for ItemMetadata);
  v17 = v457;
  *v12 = v458;
  v12[8] = v14;
  *(v12 + 2) = v17;
  *(v12 + 3) = v15;
  v18 = *(v3 + 16);
  LODWORD(v458) = *(v3 + 24);
  v19 = *(v3 + 136);
  v457 = *(v3 + 128);
  sub_1CEFE4FF4(v3 + *(v16 + 48), &v10[*(v6 + 48)], type metadata accessor for ItemMetadata);
  *v10 = v18;
  v10[8] = v458;
  *(v10 + 2) = v457;
  *(v10 + 3) = v19;
  v458 = v16;
  v20 = *(v3 + *(v16 + 64));

  sub_1CF71F5B8(v10, v20, 0, v1060);
  sub_1CEFCCC44(v10, &unk_1EC4BFD90, &unk_1CFA134F0);
  sub_1CEFCCC44(v12, &unk_1EC4BFD90, &unk_1CFA134F0);
  if (*(v2 + 32) != *(v3 + 32) || *(v2 + 40) != *(v3 + 40))
  {
    goto LABEL_9;
  }

  v21 = *(v3 + 56);
  if (*(v2 + 56))
  {
    if (*(v3 + 56))
    {
      goto LABEL_10;
    }

LABEL_9:
    v1060[0] |= 8uLL;
    goto LABEL_10;
  }

  if (*(v2 + 48) != *(v3 + 48))
  {
    v21 = 1;
  }

  if (v21)
  {
    goto LABEL_9;
  }

LABEL_10:
  v22 = *(v2 + 72);
  v23 = *(v2 + 96);
  v24 = *(v3 + 72);
  v25 = *(v3 + 88);
  v26 = *(v3 + 96);
  v456 = *(v2 + 88);
  v457 = v25;
  v27 = *(v3 + 80);
  v28 = *(v2 + 80);

  LOBYTE(v22) = sub_1CF443664(v22, v28, v456, v23, v24, v27, v457, v26);

  if ((v22 & 1) == 0)
  {
    v1060[0] |= 0x20000000000uLL;
  }

  v29 = *(v458 + 52);
  v30 = (v2 + v29);
  v31 = *(v2 + v29 + 208);
  v1054 = *(v2 + v29 + 192);
  v1055 = v31;
  v1056 = *(v2 + v29 + 224);
  v1057 = *(v2 + v29 + 240);
  v32 = *(v2 + v29 + 144);
  v1050 = *(v2 + v29 + 128);
  v1051 = v32;
  v33 = *(v2 + v29 + 176);
  v1052 = *(v2 + v29 + 160);
  v1053 = v33;
  v34 = *(v2 + v29 + 80);
  v1046 = *(v2 + v29 + 64);
  v1047 = v34;
  v35 = *(v2 + v29 + 112);
  v1048 = *(v2 + v29 + 96);
  v1049 = v35;
  v36 = *(v2 + v29 + 16);
  v1042 = *(v2 + v29);
  v1043 = v36;
  v37 = *(v2 + v29 + 48);
  v1044 = *(v2 + v29 + 32);
  v1045 = v37;
  v38 = (v3 + v29);
  v39 = *(v3 + v29 + 208);
  v1058[12] = *(v3 + v29 + 192);
  v1058[13] = v39;
  v1058[14] = *(v3 + v29 + 224);
  v1059 = *(v3 + v29 + 240);
  v40 = *(v3 + v29 + 144);
  v1058[8] = *(v3 + v29 + 128);
  v1058[9] = v40;
  v41 = *(v3 + v29 + 176);
  v1058[10] = *(v3 + v29 + 160);
  v1058[11] = v41;
  v42 = *(v3 + v29 + 80);
  v1058[4] = *(v3 + v29 + 64);
  v1058[5] = v42;
  v43 = *(v3 + v29 + 112);
  v1058[6] = *(v3 + v29 + 96);
  v1058[7] = v43;
  v44 = *(v3 + v29 + 16);
  v1058[0] = *(v3 + v29);
  v1058[1] = v44;
  v45 = *(v3 + v29 + 48);
  v1058[2] = *(v3 + v29 + 32);
  v1058[3] = v45;
  enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1058);
  v47 = *&v1058[0];
  v1040[12] = v1054;
  v1040[13] = v1055;
  v1040[14] = v1056;
  v1041 = v1057;
  v1040[8] = v1050;
  v1040[9] = v1051;
  v1040[10] = v1052;
  v1040[11] = v1053;
  v1040[4] = v1046;
  v1040[5] = v1047;
  v1040[6] = v1048;
  v1040[7] = v1049;
  v1040[0] = v1042;
  v1040[1] = v1043;
  v1040[2] = v1044;
  v1040[3] = v1045;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1040) == 1)
  {
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
    {
      goto LABEL_21;
    }

LABEL_20:
    v1060[0] |= 0x40000uLL;
    goto LABEL_21;
  }

  if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

  if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1 || *&v1040[0] != v48)
  {
    goto LABEL_20;
  }

LABEL_21:
  v49 = v30[13];
  v1034 = v30[12];
  v1035 = v49;
  v1036 = v30[14];
  v50 = v30[9];
  v1030 = v30[8];
  v1031 = v50;
  v51 = v30[11];
  v1032 = v30[10];
  v1033 = v51;
  v52 = v30[5];
  v1026 = v30[4];
  v1027 = v52;
  v53 = v30[7];
  v1028 = v30[6];
  v1029 = v53;
  v54 = v30[1];
  v1022 = *v30;
  v1023 = v54;
  v55 = v30[3];
  v1024 = v30[2];
  v1025 = v55;
  v56 = v38[13];
  v1038[12] = v38[12];
  v1038[13] = v56;
  v1038[14] = v38[14];
  v57 = v38[9];
  v1038[8] = v38[8];
  v1038[9] = v57;
  v58 = v38[11];
  v1038[10] = v38[10];
  v1038[11] = v58;
  v59 = v38[5];
  v1038[4] = v38[4];
  v1038[5] = v59;
  v60 = v38[7];
  v1038[6] = v38[6];
  v1038[7] = v60;
  v61 = v38[1];
  v1038[0] = *v38;
  v1038[1] = v61;
  v62 = v38[3];
  v1038[2] = v38[2];
  v1037 = *(v30 + 30);
  v1039 = *(v38 + 30);
  v1038[3] = v62;
  v63 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1038);
  v64 = BYTE8(v1038[0]);
  v1020[12] = v1034;
  v1020[13] = v1035;
  v1020[14] = v1036;
  v1021 = v1037;
  v1020[8] = v1030;
  v1020[9] = v1031;
  v1020[10] = v1032;
  v1020[11] = v1033;
  v1020[4] = v1026;
  v1020[5] = v1027;
  v1020[6] = v1028;
  v1020[7] = v1029;
  v1020[0] = v1022;
  v1020[1] = v1023;
  v1020[2] = v1024;
  v1020[3] = v1025;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1020) == 1)
  {
    if (v63 == 1)
    {
      goto LABEL_27;
    }

LABEL_26:
    v1060[0] |= 0x80000uLL;
    goto LABEL_27;
  }

  if (v63 == 1 || ((v64 ^ BYTE8(v1020[0])) & 1) != 0)
  {
    goto LABEL_26;
  }

LABEL_27:
  v65 = v30[13];
  v1014 = v30[12];
  v1015 = v65;
  v1016 = v30[14];
  v66 = v30[9];
  v1010 = v30[8];
  v1011 = v66;
  v67 = v30[11];
  v1012 = v30[10];
  v1013 = v67;
  v68 = v30[5];
  v1006 = v30[4];
  v1007 = v68;
  v69 = v30[7];
  v1008 = v30[6];
  v1009 = v69;
  v70 = v30[1];
  v1002 = *v30;
  v1003 = v70;
  v71 = v30[3];
  v1004 = v30[2];
  v1005 = v71;
  v72 = v38[13];
  v1018[12] = v38[12];
  v1018[13] = v72;
  v1018[14] = v38[14];
  v73 = v38[9];
  v1018[8] = v38[8];
  v1018[9] = v73;
  v74 = v38[11];
  v1018[10] = v38[10];
  v1018[11] = v74;
  v75 = v38[5];
  v1018[4] = v38[4];
  v1018[5] = v75;
  v76 = v38[7];
  v1018[6] = v38[6];
  v1018[7] = v76;
  v77 = v38[1];
  v1018[0] = *v38;
  v1018[1] = v77;
  v78 = v38[3];
  v1018[2] = v38[2];
  v1017 = *(v30 + 30);
  v1019 = *(v38 + 30);
  v1018[3] = v78;
  v79 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1018);
  v80 = BYTE9(v1018[0]);
  v1000[12] = v1014;
  v1000[13] = v1015;
  v1000[14] = v1016;
  v1001 = v1017;
  v1000[8] = v1010;
  v1000[9] = v1011;
  v1000[10] = v1012;
  v1000[11] = v1013;
  v1000[4] = v1006;
  v1000[5] = v1007;
  v1000[6] = v1008;
  v1000[7] = v1009;
  v1000[0] = v1002;
  v1000[1] = v1003;
  v1000[2] = v1004;
  v1000[3] = v1005;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1000) != 1)
  {
    if (v79 != 1 && ((v80 ^ BYTE9(v1000[0])) & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v79 != 1)
  {
LABEL_32:
    v1060[0] |= 0x100000uLL;
  }

LABEL_33:
  v81 = v30[13];
  v996 = v30[12];
  v997 = v81;
  v998 = v30[14];
  v82 = v30[9];
  v992 = v30[8];
  v993 = v82;
  v83 = v30[11];
  v994 = v30[10];
  v995 = v83;
  v84 = v30[5];
  v988 = v30[4];
  v989 = v84;
  v85 = v30[7];
  v990 = v30[6];
  v991 = v85;
  v86 = v30[1];
  v984 = *v30;
  v985 = v86;
  v87 = v30[3];
  v986 = v30[2];
  v999 = *(v30 + 30);
  v987 = v87;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v984) == 1)
  {
    v88 = 0;
  }

  else
  {
    v88 = v985;
    v89 = v985;
  }

  v90 = v38[13];
  v980 = v38[12];
  v981 = v90;
  v982 = v38[14];
  v91 = v38[9];
  v976 = v38[8];
  v977 = v91;
  v92 = v38[11];
  v978 = v38[10];
  v979 = v92;
  v93 = v38[5];
  v972 = v38[4];
  v973 = v93;
  v94 = v38[7];
  v974 = v38[6];
  v975 = v94;
  v95 = v38[1];
  v968 = *v38;
  v969 = v95;
  v96 = v38[3];
  v970 = v38[2];
  v983 = *(v38 + 30);
  v971 = v96;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v968) == 1)
  {
    v97 = 0;
  }

  else
  {
    v97 = v969;
    v98 = v969;
  }

  v99 = errorsAreDifferent(error:otherError:)(v88, v97);

  if (v99)
  {
    v1060[0] |= 0x200000uLL;
  }

  v100 = v30[13];
  v964 = v30[12];
  v965 = v100;
  v966 = v30[14];
  v101 = v30[9];
  v960 = v30[8];
  v961 = v101;
  v102 = v30[11];
  v962 = v30[10];
  v963 = v102;
  v103 = v30[5];
  v956 = v30[4];
  v957 = v103;
  v104 = v30[7];
  v958 = v30[6];
  v959 = v104;
  v105 = v30[1];
  v952 = *v30;
  v953 = v105;
  v106 = v30[3];
  v954 = v30[2];
  v967 = *(v30 + 30);
  v955 = v106;
  v107 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v952);
  v108 = v38[13];
  v948 = v38[12];
  v949 = v108;
  v950 = v38[14];
  v109 = v38[9];
  v944 = v38[8];
  v945 = v109;
  v110 = v38[11];
  v946 = v38[10];
  v947 = v110;
  v111 = v38[5];
  v940 = v38[4];
  v941 = v111;
  v112 = v38[7];
  v942 = v38[6];
  v943 = v112;
  v113 = v38[1];
  v936 = *v38;
  v937 = v113;
  v114 = v38[3];
  v938 = v38[2];
  v116 = v107 != 1 && *(&v953 + 1) != 0;
  v951 = *(v38 + 30);
  v939 = v114;
  v118 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v936) == 1 || *(&v937 + 1) == 0;
  if (v116 == v118)
  {
    v1060[0] |= 0x400000uLL;
  }

  v119 = v30[13];
  v917 = v30[12];
  v918 = v119;
  v919 = v30[14];
  v120 = v30[9];
  v913 = v30[8];
  v914 = v120;
  v121 = v30[11];
  v915 = v30[10];
  v916 = v121;
  v122 = v30[5];
  v909 = v30[4];
  v910 = v122;
  v123 = v30[7];
  v911 = v30[6];
  v912 = v123;
  v124 = v30[1];
  v905 = *v30;
  v906 = v124;
  v125 = v30[3];
  v907 = v30[2];
  v908 = v125;
  v126 = v38[13];
  v932 = v38[12];
  v933 = v126;
  v934 = v38[14];
  v127 = v38[9];
  v928 = v38[8];
  v929 = v127;
  v128 = v38[11];
  v930 = v38[10];
  v931 = v128;
  v129 = v38[5];
  v924 = v38[4];
  v925 = v129;
  v130 = v38[7];
  v926 = v38[6];
  v927 = v130;
  v131 = v38[1];
  v921[0] = *v38;
  v921[1] = v131;
  v132 = v38[3];
  v922 = v38[2];
  v920 = *(v30 + 30);
  v935 = *(v38 + 30);
  v923 = v132;
  v133 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v921);
  v134 = v922;
  v901 = v917;
  v902 = v918;
  v903 = v919;
  v904 = v920;
  v897 = v913;
  v898 = v914;
  v899 = v915;
  v900 = v916;
  v893 = v909;
  v894 = v910;
  v895 = v911;
  v896 = v912;
  v890[0] = v905;
  v890[1] = v906;
  v891 = v907;
  v892 = v908;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v890) == 1)
  {
    if (v133 == 1)
    {
      goto LABEL_61;
    }

LABEL_60:
    v1060[0] |= 0x1000000uLL;
    goto LABEL_61;
  }

  if (v133 == 1 || ((v134 ^ v891) & 1) != 0)
  {
    goto LABEL_60;
  }

LABEL_61:
  v135 = v30[13];
  v871 = v30[12];
  v872 = v135;
  v873 = v30[14];
  v874 = *(v30 + 30);
  v136 = v30[9];
  v867 = v30[8];
  v868 = v136;
  v137 = v30[11];
  v869 = v30[10];
  v870 = v137;
  v138 = v30[5];
  v863 = v30[4];
  v864 = v138;
  v139 = v30[7];
  v865 = v30[6];
  v866 = v139;
  v140 = v30[1];
  v859 = *v30;
  v860 = v140;
  v141 = v30[3];
  v861 = v30[2];
  v862 = v141;
  v142 = v38[13];
  v886 = v38[12];
  v887 = v142;
  v888 = v38[14];
  v889 = *(v38 + 30);
  v143 = v38[9];
  v882 = v38[8];
  v883 = v143;
  v144 = v38[11];
  v884 = v38[10];
  v885 = v144;
  v145 = v38[5];
  v878 = v38[4];
  v879 = v145;
  v146 = v38[7];
  v880 = v38[6];
  v881 = v146;
  v147 = v38[1];
  v875[0] = *v38;
  v875[1] = v147;
  v148 = v38[3];
  v876 = v38[2];
  v877 = v148;
  v149 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v875);
  v150 = BYTE1(v876);
  v855 = v871;
  v856 = v872;
  v857 = v873;
  v858 = v874;
  v851 = v867;
  v852 = v868;
  v853 = v869;
  v854 = v870;
  v847 = v863;
  v848 = v864;
  v849 = v865;
  v850 = v866;
  v844[0] = v859;
  v844[1] = v860;
  v845 = v861;
  v846 = v862;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v844) == 1)
  {
    if (v149 == 1)
    {
      goto LABEL_67;
    }

LABEL_66:
    v1060[0] |= 0x2000000uLL;
    goto LABEL_67;
  }

  if (v149 == 1 || ((v150 ^ BYTE1(v845)) & 1) != 0)
  {
    goto LABEL_66;
  }

LABEL_67:
  v151 = v30[13];
  v825 = v30[12];
  v826 = v151;
  v827 = v30[14];
  v152 = v30[9];
  v821 = v30[8];
  v822 = v152;
  v153 = v30[11];
  v823 = v30[10];
  v824 = v153;
  v154 = v30[5];
  v817 = v30[4];
  v818 = v154;
  v155 = v30[7];
  v819 = v30[6];
  v820 = v155;
  v156 = v30[1];
  v813 = *v30;
  v814 = v156;
  v157 = v30[3];
  v815 = v30[2];
  v816 = v157;
  v158 = v38[13];
  v840 = v38[12];
  v841 = v158;
  v842 = v38[14];
  v159 = v38[9];
  v836 = v38[8];
  v837 = v159;
  v160 = v38[11];
  v838 = v38[10];
  v839 = v160;
  v161 = v38[5];
  v832 = v38[4];
  v833 = v161;
  v162 = v38[7];
  v834 = v38[6];
  v835 = v162;
  v163 = v38[1];
  v829[0] = *v38;
  v829[1] = v163;
  v164 = v38[3];
  v830 = v38[2];
  v828 = *(v30 + 30);
  v843 = *(v38 + 30);
  v831 = v164;
  v165 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v829);
  v166 = BYTE2(v830);
  v809 = v825;
  v810 = v826;
  v811 = v827;
  v812 = v828;
  v805 = v821;
  v806 = v822;
  v807 = v823;
  v808 = v824;
  v801 = v817;
  v802 = v818;
  v803 = v819;
  v804 = v820;
  v798[0] = v813;
  v798[1] = v814;
  v799 = v815;
  v800 = v816;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v798) != 1)
  {
    if (v165 != 1 && ((v166 ^ BYTE2(v799)) & 1) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  if (v165 != 1)
  {
LABEL_72:
    v1060[0] |= 0x4000000uLL;
  }

LABEL_73:
  v167 = v30[13];
  v794 = v30[12];
  v795 = v167;
  v796 = v30[14];
  v168 = v30[9];
  v790 = v30[8];
  v791 = v168;
  v169 = v30[11];
  v792 = v30[10];
  v793 = v169;
  v170 = v30[5];
  v786 = v30[4];
  v787 = v170;
  v171 = v30[7];
  v788 = v30[6];
  v789 = v171;
  v172 = v30[1];
  v783[0] = *v30;
  v783[1] = v172;
  v173 = v30[3];
  v784 = v30[2];
  v797 = *(v30 + 30);
  v785 = v173;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v783) == 1)
  {
    v174 = 0;
    v175 = 0;
  }

  else
  {
    v174 = *(&v784 + 1);
    v175 = v785;
  }

  v176 = v38[13];
  v779 = v38[12];
  v780 = v176;
  v781 = v38[14];
  v177 = v38[9];
  v775 = v38[8];
  v776 = v177;
  v178 = v38[11];
  v777 = v38[10];
  v778 = v178;
  v179 = v38[5];
  v771 = v38[4];
  v772 = v179;
  v180 = v38[7];
  v773 = v38[6];
  v774 = v180;
  v181 = v38[1];
  v768[0] = *v38;
  v768[1] = v181;
  v182 = v38[3];
  v769 = v38[2];
  v782 = *(v38 + 30);
  v770 = v182;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v768) == 1)
  {
    if (!v175)
    {
      goto LABEL_88;
    }

    goto LABEL_86;
  }

  v183 = *(&v769 + 1);
  v184 = v770;

  if (!v175)
  {
    if (!v184)
    {
      goto LABEL_88;
    }

    goto LABEL_86;
  }

  if (!v184)
  {
LABEL_86:

LABEL_87:
    v1060[0] |= 0x8000000uLL;
    goto LABEL_88;
  }

  if (v174 == v183 && v175 == v184)
  {

    goto LABEL_88;
  }

  v392 = sub_1CF9E8048();

  if ((v392 & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_88:
  v185 = v30[13];
  v764 = v30[12];
  v765 = v185;
  v766 = v30[14];
  v186 = v30[9];
  v760 = v30[8];
  v761 = v186;
  v187 = v30[11];
  v762 = v30[10];
  v763 = v187;
  v188 = v30[5];
  v756 = v30[4];
  v757 = v188;
  v189 = v30[7];
  v758 = v30[6];
  v759 = v189;
  v190 = v30[1];
  v754[0] = *v30;
  v754[1] = v190;
  v191 = v30[3];
  v754[2] = v30[2];
  v767 = *(v30 + 30);
  v755 = v191;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v754) == 1)
  {
    v192 = 0;
    v193 = 0;
  }

  else
  {
    v192 = *(&v755 + 1);
    v193 = v756;
  }

  v194 = v38[13];
  v750 = v38[12];
  v751 = v194;
  v752 = v38[14];
  v195 = v38[9];
  v746 = v38[8];
  v747 = v195;
  v196 = v38[11];
  v748 = v38[10];
  v749 = v196;
  v197 = v38[5];
  v742 = v38[4];
  v743 = v197;
  v198 = v38[7];
  v744 = v38[6];
  v745 = v198;
  v199 = v38[1];
  v740[0] = *v38;
  v740[1] = v199;
  v200 = v38[3];
  v740[2] = v38[2];
  v753 = *(v38 + 30);
  v741 = v200;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v740) == 1)
  {
    if (!v193)
    {
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  v201 = *(&v741 + 1);
  v202 = v742;

  if (!v193)
  {
    if (!v202)
    {
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  if (!v202)
  {
LABEL_101:

LABEL_102:
    v1060[0] |= 0x10000000uLL;
    goto LABEL_103;
  }

  if (v192 == v201 && v193 == v202)
  {

    goto LABEL_103;
  }

  v393 = sub_1CF9E8048();

  if ((v393 & 1) == 0)
  {
    goto LABEL_102;
  }

LABEL_103:
  v203 = v30[13];
  v723 = v30[12];
  v724 = v203;
  v725 = v30[14];
  v204 = v30[9];
  v719 = v30[8];
  v720 = v204;
  v205 = v30[11];
  v721 = v30[10];
  v722 = v205;
  v206 = v30[5];
  v715 = v30[4];
  v716 = v206;
  v207 = v30[7];
  v717 = v30[6];
  v718 = v207;
  v208 = v30[1];
  v711 = *v30;
  v712 = v208;
  v209 = v30[3];
  v713 = v30[2];
  v714 = v209;
  v210 = v38[13];
  v736 = v38[12];
  v737 = v210;
  v738 = v38[14];
  v211 = v38[9];
  v732 = v38[8];
  v733 = v211;
  v212 = v38[11];
  v734 = v38[10];
  v735 = v212;
  v213 = v38[5];
  v728 = v38[4];
  v729 = v213;
  v214 = v38[7];
  v730 = v38[6];
  v731 = v214;
  v215 = v38[1];
  v727[0] = *v38;
  v727[1] = v215;
  v216 = v38[3];
  v727[2] = v38[2];
  v726 = *(v30 + 30);
  v739 = *(v38 + 30);
  v727[3] = v216;
  v217 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v727);
  v218 = BYTE8(v728);
  v707 = v723;
  v708 = v724;
  v709 = v725;
  v710 = v726;
  v703 = v719;
  v704 = v720;
  v705 = v721;
  v706 = v722;
  v699 = v715;
  v700 = v716;
  v701 = v717;
  v702 = v718;
  v698[0] = v711;
  v698[1] = v712;
  v698[2] = v713;
  v698[3] = v714;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v698) != 1)
  {
    if (v217 != 1 && ((v218 ^ BYTE8(v699)) & 1) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

  if (v217 != 1)
  {
LABEL_108:
    v1060[0] |= 0x20000000uLL;
  }

LABEL_109:
  v219 = v30[13];
  v694 = v30[12];
  v695 = v219;
  v696 = v30[14];
  v220 = v30[9];
  v690 = v30[8];
  v691 = v220;
  v221 = v30[11];
  v692 = v30[10];
  v693 = v221;
  v222 = v30[5];
  v686[4] = v30[4];
  v687 = v222;
  v223 = v30[7];
  v688 = v30[6];
  v689 = v223;
  v224 = v30[1];
  v686[0] = *v30;
  v686[1] = v224;
  v225 = v30[3];
  v686[2] = v30[2];
  v697 = *(v30 + 30);
  v686[3] = v225;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v686) == 1)
  {
    v226 = 0;
    v227 = 0;
  }

  else
  {
    v227 = *(&v687 + 1);
    v226 = v687;
  }

  v228 = v38[13];
  v682 = v38[12];
  v683 = v228;
  v684 = v38[14];
  v229 = v38[9];
  v678 = v38[8];
  v679 = v229;
  v230 = v38[11];
  v680 = v38[10];
  v681 = v230;
  v231 = v38[5];
  v674[4] = v38[4];
  v675 = v231;
  v232 = v38[7];
  v676 = v38[6];
  v677 = v232;
  v233 = v38[1];
  v674[0] = *v38;
  v674[1] = v233;
  v234 = v38[3];
  v674[2] = v38[2];
  v685 = *(v38 + 30);
  v674[3] = v234;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v674) == 1)
  {
    if (!v227)
    {
      goto LABEL_123;
    }

    goto LABEL_121;
  }

  v235 = v675;

  if (!v227)
  {
    if (!*(&v235 + 1))
    {
      goto LABEL_123;
    }

    goto LABEL_121;
  }

  if (!*(&v235 + 1))
  {
LABEL_121:

LABEL_122:
    v1060[0] |= 0x40000000uLL;
    goto LABEL_123;
  }

  if (__PAIR128__(v227, v226) == v235)
  {

    goto LABEL_123;
  }

  v394 = sub_1CF9E8048();

  if ((v394 & 1) == 0)
  {
    goto LABEL_122;
  }

LABEL_123:
  v236 = v30[13];
  v659 = v30[12];
  v660 = v236;
  v661 = v30[14];
  v237 = v30[9];
  v655 = v30[8];
  v656 = v237;
  v238 = v30[11];
  v657 = v30[10];
  v658 = v238;
  v239 = v30[5];
  v651 = v30[4];
  v652 = v239;
  v240 = v30[7];
  v653 = v30[6];
  v654 = v240;
  v241 = v30[1];
  v647 = *v30;
  v648 = v241;
  v242 = v30[3];
  v649 = v30[2];
  v650 = v242;
  v243 = v38[13];
  v670 = v38[12];
  v671 = v243;
  v672 = v38[14];
  v244 = v38[9];
  v666 = v38[8];
  v667 = v244;
  v245 = v38[11];
  v668 = v38[10];
  v669 = v245;
  v246 = v38[5];
  v663[4] = v38[4];
  v663[5] = v246;
  v247 = v38[7];
  v664 = v38[6];
  v665 = v247;
  v248 = v38[1];
  v663[0] = *v38;
  v663[1] = v248;
  v249 = v38[3];
  v663[2] = v38[2];
  v662 = *(v30 + 30);
  v673 = *(v38 + 30);
  v663[3] = v249;
  v250 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v663);
  v251 = BYTE8(v664);
  v643 = v659;
  v644 = v660;
  v645 = v661;
  v646 = v662;
  v639 = v655;
  v640 = v656;
  v641 = v657;
  v642 = v658;
  v636[4] = v651;
  v636[5] = v652;
  v637 = v653;
  v638 = v654;
  v636[0] = v647;
  v636[1] = v648;
  v636[2] = v649;
  v636[3] = v650;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v636) == 1)
  {
    if (v250 == 1)
    {
      goto LABEL_129;
    }

LABEL_128:
    v1060[0] |= 0x80000000uLL;
    goto LABEL_129;
  }

  if (v250 == 1 || ((v251 ^ BYTE8(v637)) & 1) != 0)
  {
    goto LABEL_128;
  }

LABEL_129:
  v252 = v30[13];
  v621 = v30[12];
  v622 = v252;
  v623 = v30[14];
  v624 = *(v30 + 30);
  v253 = v30[9];
  v617 = v30[8];
  v618 = v253;
  v254 = v30[11];
  v619 = v30[10];
  v620 = v254;
  v255 = v30[5];
  v613 = v30[4];
  v614 = v255;
  v256 = v30[7];
  v615 = v30[6];
  v616 = v256;
  v257 = v30[1];
  v609 = *v30;
  v610 = v257;
  v258 = v30[3];
  v611 = v30[2];
  v612 = v258;
  v259 = v38[13];
  v632 = v38[12];
  v633 = v259;
  v634 = v38[14];
  v635 = *(v38 + 30);
  v260 = v38[9];
  v628 = v38[8];
  v629 = v260;
  v261 = v38[11];
  v630 = v38[10];
  v631 = v261;
  v262 = v38[5];
  v625[4] = v38[4];
  v625[5] = v262;
  v263 = v38[7];
  v626 = v38[6];
  v627 = v263;
  v264 = v38[1];
  v625[0] = *v38;
  v625[1] = v264;
  v265 = v38[3];
  v625[2] = v38[2];
  v625[3] = v265;
  v266 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v625);
  v605 = v621;
  v606 = v622;
  v607 = v623;
  v601 = v617;
  v602 = v618;
  v603 = v619;
  v604 = v620;
  v598[4] = v613;
  v598[5] = v614;
  v599 = v615;
  v600 = v616;
  v598[0] = v609;
  v598[1] = v610;
  v598[2] = v611;
  v267 = BYTE9(v626);
  v608 = v624;
  v598[3] = v612;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v598) != 1)
  {
    if (v266 != 1 && ((v267 ^ BYTE9(v599)) & 1) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_134;
  }

  if (v266 != 1)
  {
LABEL_134:
    v1060[0] |= 0x100000000uLL;
  }

LABEL_135:
  v268 = v30[13];
  v594 = v30[12];
  v595 = v268;
  v596 = v30[14];
  v269 = v30[9];
  v590 = v30[8];
  v591 = v269;
  v270 = v30[11];
  v592 = v30[10];
  v593 = v270;
  v271 = v30[5];
  v588[4] = v30[4];
  v588[5] = v271;
  v272 = v30[7];
  v588[6] = v30[6];
  v589 = v272;
  v273 = v30[1];
  v588[0] = *v30;
  v588[1] = v273;
  v274 = v30[3];
  v588[2] = v30[2];
  v597 = *(v30 + 30);
  v588[3] = v274;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v588) == 1)
  {
    v275 = 0;
    v276 = 0;
  }

  else
  {
    v276 = *(&v589 + 1);
    v275 = v589;
  }

  v277 = v38[13];
  v584 = v38[12];
  v585 = v277;
  v586 = v38[14];
  v278 = v38[9];
  v580 = v38[8];
  v581 = v278;
  v279 = v38[11];
  v582 = v38[10];
  v583 = v279;
  v280 = v38[5];
  v578[4] = v38[4];
  v578[5] = v280;
  v281 = v38[7];
  v578[6] = v38[6];
  v579 = v281;
  v282 = v38[1];
  v578[0] = *v38;
  v578[1] = v282;
  v283 = v38[3];
  v578[2] = v38[2];
  v587 = *(v38 + 30);
  v578[3] = v283;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v578) == 1)
  {
    if (!v276)
    {
      goto LABEL_149;
    }

    goto LABEL_147;
  }

  v284 = v579;

  if (!v276)
  {
    if (!*(&v284 + 1))
    {
      goto LABEL_149;
    }

    goto LABEL_147;
  }

  if (!*(&v284 + 1))
  {
LABEL_147:

LABEL_148:
    v1060[0] |= 0x200000000uLL;
    goto LABEL_149;
  }

  if (__PAIR128__(v276, v275) == v284)
  {

    goto LABEL_149;
  }

  v395 = sub_1CF9E8048();

  if ((v395 & 1) == 0)
  {
    goto LABEL_148;
  }

LABEL_149:
  v285 = v30[13];
  v574 = v30[12];
  v575 = v285;
  v576 = v30[14];
  v286 = v30[9];
  v570 = v30[8];
  v571 = v286;
  v287 = v30[11];
  v572 = v30[10];
  v573 = v287;
  v288 = v30[5];
  v569[4] = v30[4];
  v569[5] = v288;
  v289 = v30[7];
  v569[6] = v30[6];
  v569[7] = v289;
  v290 = v30[1];
  v569[0] = *v30;
  v569[1] = v290;
  v291 = v30[3];
  v569[2] = v30[2];
  v577 = *(v30 + 30);
  v569[3] = v291;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v569) == 1)
  {
    v292 = 0;
    v293 = 0;
  }

  else
  {
    v293 = *(&v570 + 1);
    v292 = v570;
  }

  v294 = v38[13];
  v565 = v38[12];
  v566 = v294;
  v567 = v38[14];
  v295 = v38[9];
  v561 = v38[8];
  v562 = v295;
  v296 = v38[11];
  v563 = v38[10];
  v564 = v296;
  v297 = v38[5];
  v560[4] = v38[4];
  v560[5] = v297;
  v298 = v38[7];
  v560[6] = v38[6];
  v560[7] = v298;
  v299 = v38[1];
  v560[0] = *v38;
  v560[1] = v299;
  v300 = v38[3];
  v560[2] = v38[2];
  v568 = *(v38 + 30);
  v560[3] = v300;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v560) == 1)
  {
    if (!v293)
    {
      goto LABEL_163;
    }

    goto LABEL_161;
  }

  v301 = v561;

  if (!v293)
  {
    if (!*(&v301 + 1))
    {
      goto LABEL_163;
    }

    goto LABEL_161;
  }

  if (!*(&v301 + 1))
  {
LABEL_161:

LABEL_162:
    v1060[0] |= 0x400000000uLL;
    goto LABEL_163;
  }

  if (__PAIR128__(v293, v292) == v301)
  {

    goto LABEL_163;
  }

  v396 = sub_1CF9E8048();

  if ((v396 & 1) == 0)
  {
    goto LABEL_162;
  }

LABEL_163:
  v302 = v30[13];
  v556 = v30[12];
  v557 = v302;
  v558 = v30[14];
  v303 = v30[9];
  v552[8] = v30[8];
  v553 = v303;
  v304 = v30[11];
  v554 = v30[10];
  v555 = v304;
  v305 = v30[5];
  v552[4] = v30[4];
  v552[5] = v305;
  v306 = v30[7];
  v552[6] = v30[6];
  v552[7] = v306;
  v307 = v30[1];
  v552[0] = *v30;
  v552[1] = v307;
  v308 = v30[3];
  v552[2] = v30[2];
  v559 = *(v30 + 30);
  v552[3] = v308;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v552) == 1)
  {
    v309 = 0;
    v310 = 0;
  }

  else
  {
    v310 = *(&v553 + 1);
    v309 = v553;
  }

  v311 = v38[13];
  v548 = v38[12];
  v549 = v311;
  v550 = v38[14];
  v312 = v38[9];
  v544[8] = v38[8];
  v545 = v312;
  v313 = v38[11];
  v546 = v38[10];
  v547 = v313;
  v314 = v38[5];
  v544[4] = v38[4];
  v544[5] = v314;
  v315 = v38[7];
  v544[6] = v38[6];
  v544[7] = v315;
  v316 = v38[1];
  v544[0] = *v38;
  v544[1] = v316;
  v317 = v38[3];
  v544[2] = v38[2];
  v551 = *(v38 + 30);
  v544[3] = v317;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v544) == 1)
  {
    if (!v310)
    {
      goto LABEL_177;
    }

    goto LABEL_175;
  }

  v318 = v545;

  if (!v310)
  {
    if (!*(&v318 + 1))
    {
      goto LABEL_177;
    }

    goto LABEL_175;
  }

  if (!*(&v318 + 1))
  {
LABEL_175:

LABEL_176:
    v1060[0] |= 0x800000000uLL;
    goto LABEL_177;
  }

  if (__PAIR128__(v310, v309) == v318)
  {

    goto LABEL_177;
  }

  v397 = sub_1CF9E8048();

  if ((v397 & 1) == 0)
  {
    goto LABEL_176;
  }

LABEL_177:
  v319 = v30[13];
  v540 = v30[12];
  v541 = v319;
  v542 = v30[14];
  v320 = v30[9];
  v537[8] = v30[8];
  v537[9] = v320;
  v321 = v30[11];
  v538 = v30[10];
  v539 = v321;
  v322 = v30[5];
  v537[4] = v30[4];
  v537[5] = v322;
  v323 = v30[7];
  v537[6] = v30[6];
  v537[7] = v323;
  v324 = v30[1];
  v537[0] = *v30;
  v537[1] = v324;
  v325 = v30[3];
  v537[2] = v30[2];
  v543 = *(v30 + 30);
  v537[3] = v325;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v537) == 1)
  {
    v326 = 0;
    v327 = 0;
  }

  else
  {
    v327 = *(&v538 + 1);
    v326 = v538;
  }

  v328 = v38[13];
  v533 = v38[12];
  v534 = v328;
  v535 = v38[14];
  v329 = v38[9];
  v530[8] = v38[8];
  v530[9] = v329;
  v330 = v38[11];
  v531 = v38[10];
  v532 = v330;
  v331 = v38[5];
  v530[4] = v38[4];
  v530[5] = v331;
  v332 = v38[7];
  v530[6] = v38[6];
  v530[7] = v332;
  v333 = v38[1];
  v530[0] = *v38;
  v530[1] = v333;
  v334 = v38[3];
  v530[2] = v38[2];
  v536 = *(v38 + 30);
  v530[3] = v334;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v530) == 1)
  {
    if (v327)
    {
      goto LABEL_189;
    }

    goto LABEL_191;
  }

  v335 = v531;

  if (!v327)
  {
    if (!*(&v335 + 1))
    {
      goto LABEL_191;
    }

LABEL_189:

LABEL_190:
    v1060[0] |= 0x1000000000uLL;
    goto LABEL_192;
  }

  if (!*(&v335 + 1))
  {
    goto LABEL_189;
  }

  *&v524[0] = v326;
  *(&v524[0] + 1) = v327;

  v336 = sub_1CF662E90();
  v338 = v337;
  v508 = v335;
  if (v336 == sub_1CF662E90() && v338 == v339)
  {

    swift_bridgeObjectRelease_n();
LABEL_191:

    goto LABEL_192;
  }

  v398 = sub_1CF9E8048();

  swift_bridgeObjectRelease_n();

  if ((v398 & 1) == 0)
  {
    goto LABEL_190;
  }

LABEL_192:
  v340 = v30[13];
  v520 = v30[12];
  v521 = v340;
  v522 = v30[14];
  v341 = v30[9];
  v516 = v30[8];
  v517 = v341;
  v342 = v30[11];
  v518 = v30[10];
  v519 = v342;
  v343 = v30[5];
  v512 = v30[4];
  v513 = v343;
  v344 = v30[7];
  v514 = v30[6];
  v515 = v344;
  v345 = v30[1];
  v508 = *v30;
  v509 = v345;
  v346 = v30[3];
  v510 = v30[2];
  v511 = v346;
  v347 = v38[13];
  v526 = v38[12];
  v527 = v347;
  v528 = v38[14];
  v348 = v38[9];
  v524[8] = v38[8];
  v524[9] = v348;
  v349 = v38[11];
  v524[10] = v38[10];
  v525 = v349;
  v350 = v38[5];
  v524[4] = v38[4];
  v524[5] = v350;
  v351 = v38[7];
  v524[6] = v38[6];
  v524[7] = v351;
  v352 = v38[1];
  v524[0] = *v38;
  v524[1] = v352;
  v353 = v38[3];
  v524[2] = v38[2];
  v523 = *(v30 + 30);
  v529 = *(v38 + 30);
  v524[3] = v353;
  v354 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v524);
  v355 = v525;
  v504 = v520;
  v505 = v521;
  v506 = v522;
  v507 = v523;
  v502[8] = v516;
  v502[9] = v517;
  v502[10] = v518;
  v503 = v519;
  v502[4] = v512;
  v502[5] = v513;
  v502[6] = v514;
  v502[7] = v515;
  v502[0] = v508;
  v502[1] = v509;
  v502[2] = v510;
  v502[3] = v511;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v502) != 1)
  {
    if (v354 != 1 && ((v355 ^ v503) & 1) == 0)
    {
      goto LABEL_198;
    }

    goto LABEL_197;
  }

  if (v354 != 1)
  {
LABEL_197:
    v1060[0] |= 0x2000000000uLL;
  }

LABEL_198:
  v356 = v30[13];
  v498 = v30[12];
  v499 = v356;
  v500 = v30[14];
  v357 = v30[9];
  v496[8] = v30[8];
  v496[9] = v357;
  v358 = v30[11];
  v496[10] = v30[10];
  v497 = v358;
  v359 = v30[5];
  v496[4] = v30[4];
  v496[5] = v359;
  v360 = v30[7];
  v496[6] = v30[6];
  v496[7] = v360;
  v361 = v30[1];
  v496[0] = *v30;
  v496[1] = v361;
  v362 = v30[3];
  v496[2] = v30[2];
  v501 = *(v30 + 30);
  v496[3] = v362;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v496) == 1)
  {
    v363 = 0;
  }

  else
  {
    v363 = *(&v497 + 1);
  }

  v364 = v38[13];
  v492 = v38[12];
  v493 = v364;
  v494 = v38[14];
  v365 = v38[9];
  v490[8] = v38[8];
  v490[9] = v365;
  v366 = v38[11];
  v490[10] = v38[10];
  v491 = v366;
  v367 = v38[5];
  v490[4] = v38[4];
  v490[5] = v367;
  v368 = v38[7];
  v490[6] = v38[6];
  v490[7] = v368;
  v369 = v38[1];
  v490[0] = *v38;
  v490[1] = v369;
  v370 = v38[3];
  v490[2] = v38[2];
  v495 = *(v38 + 30);
  v490[3] = v370;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v490) == 1)
  {
    if (!v363)
    {
      goto LABEL_212;
    }

    goto LABEL_210;
  }

  v371 = *(&v491 + 1);

  if (!v363)
  {
    if (!v371)
    {
      goto LABEL_212;
    }

    goto LABEL_210;
  }

  if (!v371)
  {
LABEL_210:

    goto LABEL_211;
  }

  v372 = sub_1CF6BEA0C(v363, v371);

  if ((v372 & 1) == 0)
  {
LABEL_211:
    v1060[0] |= 0x4000000000uLL;
  }

LABEL_212:
  v373 = v30[13];
  v486 = v30[12];
  v487 = v373;
  v488 = v30[14];
  v374 = v30[9];
  v485[8] = v30[8];
  v485[9] = v374;
  v375 = v30[11];
  v485[10] = v30[10];
  v485[11] = v375;
  v376 = v30[5];
  v485[4] = v30[4];
  v485[5] = v376;
  v377 = v30[7];
  v485[6] = v30[6];
  v485[7] = v377;
  v378 = v30[1];
  v485[0] = *v30;
  v485[1] = v378;
  v379 = v30[3];
  v485[2] = v30[2];
  v489 = *(v30 + 30);
  v485[3] = v379;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v485) == 1)
  {
    v380 = 0;
    v381 = 0;
  }

  else
  {
    v381 = *(&v486 + 1);
    v380 = v486;
    sub_1CF075D00(v486);
  }

  v382 = v38[13];
  v481 = v38[12];
  v482 = v382;
  v483 = v38[14];
  v383 = v38[9];
  v480[8] = v38[8];
  v480[9] = v383;
  v384 = v38[11];
  v480[10] = v38[10];
  v480[11] = v384;
  v385 = v38[5];
  v480[4] = v38[4];
  v480[5] = v385;
  v386 = v38[7];
  v480[6] = v38[6];
  v480[7] = v386;
  v387 = v38[1];
  v480[0] = *v38;
  v480[1] = v387;
  v388 = v38[3];
  v480[2] = v38[2];
  v484 = *(v38 + 30);
  v480[3] = v388;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v480) == 1)
  {
    if (!v380)
    {
      goto LABEL_243;
    }

    goto LABEL_240;
  }

  v389 = v481;
  sub_1CF075D00(v481);
  if (!v380)
  {
    if (!v389)
    {
      goto LABEL_243;
    }

    v391 = v389;
    goto LABEL_241;
  }

  if (!v389)
  {
LABEL_240:
    v391 = v380;
LABEL_241:
    sub_1CF24CCFC(v391);
    goto LABEL_242;
  }

  if ((sub_1CF6BEA0C(v380, v389) & 1) == 0)
  {

    goto LABEL_240;
  }

  v390 = sub_1CF6BEA0C(v381, *(&v389 + 1));

  sub_1CF24CCFC(v380);
  if ((v390 & 1) == 0)
  {
LABEL_242:
    v1060[0] |= 0x8000000000uLL;
  }

LABEL_243:
  v399 = v30[13];
  v476[12] = v30[12];
  v477 = v399;
  v478 = v30[14];
  v400 = v30[9];
  v476[8] = v30[8];
  v476[9] = v400;
  v401 = v30[11];
  v476[10] = v30[10];
  v476[11] = v401;
  v402 = v30[5];
  v476[4] = v30[4];
  v476[5] = v402;
  v403 = v30[7];
  v476[6] = v30[6];
  v476[7] = v403;
  v404 = v30[1];
  v476[0] = *v30;
  v476[1] = v404;
  v405 = v30[3];
  v476[2] = v30[2];
  v479 = *(v30 + 30);
  v476[3] = v405;
  v406 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v476);
  v407 = v38[13];
  v472[12] = v38[12];
  v473 = v407;
  v474 = v38[14];
  v408 = v38[9];
  v472[8] = v38[8];
  v472[9] = v408;
  v409 = v38[11];
  v472[10] = v38[10];
  v472[11] = v409;
  v410 = v38[5];
  v472[4] = v38[4];
  v472[5] = v410;
  v411 = v38[7];
  v472[6] = v38[6];
  v472[7] = v411;
  v412 = v38[1];
  v472[0] = *v38;
  v472[1] = v412;
  v413 = v38[3];
  v472[2] = v38[2];
  v414 = v477;
  v475 = *(v38 + 30);
  v472[3] = v413;
  v415 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v472);
  if (v406 == 1)
  {
    if (v415 == 1)
    {
      goto LABEL_249;
    }

    goto LABEL_248;
  }

  if (v415 == 1 || v414 != v473)
  {
LABEL_248:
    v1060[0] |= 0x2000000000000uLL;
  }

LABEL_249:
  v416 = v30[13];
  v469[12] = v30[12];
  v469[13] = v416;
  v470 = v30[14];
  v471 = *(v30 + 30);
  v417 = v30[9];
  v469[8] = v30[8];
  v469[9] = v417;
  v418 = v30[11];
  v469[10] = v30[10];
  v469[11] = v418;
  v419 = v30[5];
  v469[4] = v30[4];
  v469[5] = v419;
  v420 = v30[7];
  v469[6] = v30[6];
  v469[7] = v420;
  v421 = v30[1];
  v469[0] = *v30;
  v469[1] = v421;
  v422 = v30[3];
  v469[2] = v30[2];
  v469[3] = v422;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v469) == 1 || !v470)
  {
    v424 = 0;
  }

  else
  {

    v424 = sub_1CF93CD44(v423);
  }

  v425 = v38[13];
  v466[12] = v38[12];
  v466[13] = v425;
  v467 = v38[14];
  v468 = *(v38 + 30);
  v426 = v38[9];
  v466[8] = v38[8];
  v466[9] = v426;
  v427 = v38[11];
  v466[10] = v38[10];
  v466[11] = v427;
  v428 = v38[5];
  v466[4] = v38[4];
  v466[5] = v428;
  v429 = v38[7];
  v466[6] = v38[6];
  v466[7] = v429;
  v430 = v38[1];
  v466[0] = *v38;
  v466[1] = v430;
  v431 = v38[3];
  v466[2] = v38[2];
  v466[3] = v431;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v466) == 1 || !v467)
  {
    v433 = 0;
    if (!v424)
    {
LABEL_256:
      if (!v433)
      {
        goto LABEL_264;
      }

      goto LABEL_262;
    }
  }

  else
  {

    v433 = sub_1CF93CD44(v432);

    if (!v424)
    {
      goto LABEL_256;
    }
  }

  if (!v433)
  {
LABEL_262:

    goto LABEL_263;
  }

  v434 = sub_1CF6BF228(v424, v433);

  if ((v434 & 1) == 0)
  {
LABEL_263:
    v1060[0] |= 0x4000000000000uLL;
  }

LABEL_264:
  v435 = v30[13];
  v463[12] = v30[12];
  v463[13] = v435;
  v464 = v30[14];
  v465 = *(v30 + 30);
  v436 = v30[9];
  v463[8] = v30[8];
  v463[9] = v436;
  v437 = v30[11];
  v463[10] = v30[10];
  v463[11] = v437;
  v438 = v30[5];
  v463[4] = v30[4];
  v463[5] = v438;
  v439 = v30[7];
  v463[6] = v30[6];
  v463[7] = v439;
  v440 = v30[1];
  v463[0] = *v30;
  v463[1] = v440;
  v441 = v30[3];
  v463[2] = v30[2];
  v463[3] = v441;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v463) == 1)
  {
    v442 = 0;
    v443 = 0;
  }

  else
  {
    v442 = *(&v464 + 1);
    v443 = v465;
  }

  v444 = v38[13];
  v460[12] = v38[12];
  v460[13] = v444;
  v461 = v38[14];
  v462 = *(v38 + 30);
  v445 = v38[9];
  v460[8] = v38[8];
  v460[9] = v445;
  v446 = v38[11];
  v460[10] = v38[10];
  v460[11] = v446;
  v447 = v38[5];
  v460[4] = v38[4];
  v460[5] = v447;
  v448 = v38[7];
  v460[6] = v38[6];
  v460[7] = v448;
  v449 = v38[1];
  v460[0] = *v38;
  v460[1] = v449;
  v450 = v38[3];
  v460[2] = v38[2];
  v460[3] = v450;
  result = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v460);
  if (result == 1)
  {
    if (!v443)
    {
      goto LABEL_279;
    }

    goto LABEL_277;
  }

  v453 = *(&v461 + 1);
  v452 = v462;

  if (!v443)
  {
    if (!v452)
    {
      goto LABEL_279;
    }

LABEL_277:

LABEL_278:
    v1060[0] |= 0x8000000000000uLL;
    goto LABEL_279;
  }

  if (!v452)
  {
    goto LABEL_277;
  }

  if (v442 != v453 || v443 != v452)
  {
    v454 = sub_1CF9E8048();

    if (v454)
    {
      goto LABEL_279;
    }

    goto LABEL_278;
  }

LABEL_279:
  *v459 = v1060[0];
  return result;
}

void sub_1CF71F490(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v11 - v7;
  v9 = swift_projectBox();
  sub_1CEFCCBDC(a1, v8, &unk_1EC4BF310, &unk_1CF9FDB30);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  swift_beginAccess();
  sub_1CF72A2A0(v8, v9);
  dispatch_group_leave(a3);
}

uint64_t sub_1CF71F5B8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) + 40);
  v11 = v4 + v10;
  v12 = &a1[v10];
  v59 = a2;
  v60 = a3 & 1;
  sub_1CF6781CC(&a1[v10], &v59, &v61);
  v13 = *v5;
  v14 = *a1;
  v15 = a1[8];
  v58 = a4;
  if (*(v5 + 8))
  {
    if (*(v5 + 8) == 1)
    {
      if (v15 != 1 || v13 != v14)
      {
LABEL_15:
        v61 |= 2uLL;
      }
    }

    else if (v13)
    {
      if (v15 != 2 || v14 != 1)
      {
        goto LABEL_15;
      }
    }

    else if (v15 != 2 || v14)
    {
      goto LABEL_15;
    }
  }

  else if (a1[8] || v13 != v14)
  {
    goto LABEL_15;
  }

  v17 = v5[2];
  v16 = v5[3];
  v19 = *(a1 + 2);
  v18 = *(a1 + 3);
  v20 = sub_1CEFE7394(v17, v16);
  if (v21)
  {
    if (v20 == 12565487 && v21 == 0xA300000000000000)
    {

LABEL_21:
      v23 = sub_1CF9E69E8();
      v24 = sub_1CF025150(v23, v17, v16);
      v17 = MEMORY[0x1D3868C10](v24);
      v16 = v25;

      goto LABEL_23;
    }

    v22 = sub_1CF9E8048();

    if (v22)
    {
      goto LABEL_21;
    }
  }

LABEL_23:
  v26 = sub_1CEFE7394(v19, v18);
  if (v27)
  {
    if (v26 == 12565487 && v27 == 0xA300000000000000)
    {

      goto LABEL_28;
    }

    v28 = sub_1CF9E8048();

    if (v28)
    {
LABEL_28:
      v29 = sub_1CF9E69E8();
      v30 = sub_1CF025150(v29, v19, v18);
      v31 = MEMORY[0x1D3868C10](v30);
      v18 = v32;

      if (v17 != v31)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }
  }

  if (v17 != v19)
  {
    goto LABEL_33;
  }

LABEL_31:
  if (v16 == v18)
  {

    goto LABEL_35;
  }

LABEL_33:
  v33 = sub_1CF9E8048();

  if ((v33 & 1) == 0)
  {
    v61 |= 1uLL;
  }

LABEL_35:
  v34 = *(type metadata accessor for ItemMetadata() + 56);
  if (*(v11 + v34 + 8))
  {
    v35 = *(v11 + v34);
    v36 = *(v11 + v34 + 8);
  }

  else
  {
    v35 = v5[2];
    v36 = v5[3];
  }

  v37 = *&v12[v34 + 8];
  if (v37)
  {
    v38 = *&v12[v34];
    v39 = v37;
  }

  else
  {
    v38 = *(a1 + 2);
    v39 = *(a1 + 3);
  }

  v40 = sub_1CEFE7394(v35, v36);
  if (v41)
  {
    if (v40 == 12565487 && v41 == 0xA300000000000000)
    {

LABEL_46:
      v43 = sub_1CF9E69E8();
      v44 = sub_1CF025150(v43, v35, v36);
      v35 = MEMORY[0x1D3868C10](v44);
      v46 = v45;

      goto LABEL_48;
    }

    v42 = sub_1CF9E8048();

    if (v42)
    {
      goto LABEL_46;
    }
  }

  v46 = v36;
LABEL_48:
  v47 = sub_1CEFE7394(v38, v39);
  if (v48)
  {
    if (v47 == 12565487 && v48 == 0xA300000000000000)
    {

      goto LABEL_53;
    }

    v49 = sub_1CF9E8048();

    if (v49)
    {
LABEL_53:
      v50 = sub_1CF9E69E8();
      v51 = sub_1CF025150(v50, v38, v39);
      v52 = MEMORY[0x1D3868C10](v51);
      v54 = v53;

      if (v35 != v52)
      {
        goto LABEL_58;
      }

      goto LABEL_56;
    }
  }

  v54 = v39;
  if (v35 != v38)
  {
LABEL_58:
    v57 = sub_1CF9E8048();

    v56 = v61 | ((v57 & 1) == 0);
    goto LABEL_59;
  }

LABEL_56:
  if (v46 != v54)
  {
    goto LABEL_58;
  }

  v56 = v61;
LABEL_59:
  *v58 = v56;
  return result;
}

uint64_t sub_1CF71FAAC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) + 40);
  v10 = v4 + v9;
  v11 = &a1[v9];
  v63 = a2;
  v64 = a3 & 1;
  sub_1CF6781CC(&a1[v9], &v63, &v65);
  v12 = *v5;
  v13 = *a1;
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;
  if (v14 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v16 == v17)
  {
  }

  else
  {
    v19 = sub_1CF9E8048();

    if ((v19 & 1) == 0)
    {
      v65 |= 2uLL;
    }
  }

  v21 = v5[1];
  v20 = v5[2];
  v23 = *(a1 + 1);
  v22 = *(a1 + 2);
  v24 = sub_1CEFE7394(v21, v20);
  if (v25)
  {
    if (v24 == 12565487 && v25 == 0xA300000000000000)
    {

LABEL_13:
      v27 = sub_1CF9E69E8();
      v28 = sub_1CF025150(v27, v21, v20);
      v21 = MEMORY[0x1D3868C10](v28);
      v20 = v29;

      goto LABEL_15;
    }

    v26 = sub_1CF9E8048();

    if (v26)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  v30 = sub_1CEFE7394(v23, v22);
  if (v31)
  {
    if (v30 == 12565487 && v31 == 0xA300000000000000)
    {

      goto LABEL_20;
    }

    v32 = sub_1CF9E8048();

    if (v32)
    {
LABEL_20:
      v33 = sub_1CF9E69E8();
      v34 = sub_1CF025150(v33, v23, v22);
      v35 = MEMORY[0x1D3868C10](v34);
      v22 = v36;

      if (v21 != v35)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }
  }

  if (v21 != v23)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (v20 == v22)
  {

    goto LABEL_27;
  }

LABEL_25:
  v37 = sub_1CF9E8048();

  if ((v37 & 1) == 0)
  {
    v65 |= 1uLL;
  }

LABEL_27:
  v38 = *(type metadata accessor for ItemMetadata() + 56);
  if (*&v10[v38 + 8])
  {
    v39 = *&v10[v38];
    v40 = *&v10[v38 + 8];
  }

  else
  {
    v39 = v5[1];
    v40 = v5[2];
  }

  v41 = *&v11[v38 + 8];
  if (v41)
  {
    v42 = *&v11[v38];
    v43 = v41;
  }

  else
  {
    v42 = *(a1 + 1);
    v43 = *(a1 + 2);
  }

  v44 = sub_1CEFE7394(v39, v40);
  if (v45)
  {
    if (v44 == 12565487 && v45 == 0xA300000000000000)
    {

LABEL_38:
      v47 = sub_1CF9E69E8();
      v48 = sub_1CF025150(v47, v39, v40);
      v39 = MEMORY[0x1D3868C10](v48);
      v50 = v49;

      goto LABEL_40;
    }

    v46 = sub_1CF9E8048();

    if (v46)
    {
      goto LABEL_38;
    }
  }

  v50 = v40;
LABEL_40:
  v51 = sub_1CEFE7394(v42, v43);
  if (v52)
  {
    if (v51 == 12565487 && v52 == 0xA300000000000000)
    {

      goto LABEL_45;
    }

    v53 = sub_1CF9E8048();

    if (v53)
    {
LABEL_45:
      v54 = sub_1CF9E69E8();
      v55 = sub_1CF025150(v54, v42, v43);
      v56 = MEMORY[0x1D3868C10](v55);
      v58 = v57;

      if (v39 != v56)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }
  }

  v58 = v43;
  if (v39 != v42)
  {
LABEL_50:
    v61 = sub_1CF9E8048();

    v60 = v65 | ((v61 & 1) == 0);
    goto LABEL_51;
  }

LABEL_48:
  if (v50 != v58)
  {
    goto LABEL_50;
  }

  v60 = v65;
LABEL_51:
  *a4 = v60;
  return result;
}

uint64_t FSTester.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  fpfs_allow_operation();
  fpfs_test_force_ondisk_docid_resolution();
  fpfs_set_vfs_ignore_permissions_iopolicy();
  return v0;
}

uint64_t FSTester.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  fpfs_allow_operation();
  fpfs_test_force_ondisk_docid_resolution();
  fpfs_set_vfs_ignore_permissions_iopolicy();
  return v0;
}

void sub_1CF720020(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void), uint64_t a7)
{
  v101 = a7;
  v102 = a6;
  v78 = a3;
  v81 = sub_1CF9E6118();
  v80 = *(v81 - 8);
  v11 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E7388();
  v99 = *(v13 - 8);
  v100 = v13;
  v14 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v98 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1CF9E7318();
  v97 = *(v95 - 8);
  v16 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v72 - v19;
  v93 = sub_1CF9E6448();
  v91 = *(v93 - 8);
  v20 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v89 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - v23;
  v25 = sub_1CF9E5A58();
  v88 = *(v25 - 8);
  v26 = v88;
  v27 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v72 - v32;
  v94 = a5 & 1;
  v34 = *(v26 + 16);
  v90 = &v72 - v32;
  v34(&v72 - v32, a4, v25, v31);
  v35 = type metadata accessor for DocumentWharfForTesting();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  v87 = v29;
  v86 = v25;
  (v34)(v29, v33, v25);
  *(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource) = 0;
  *(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_invalidated) = 0;
  *(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_activated) = 0;
  *(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  *(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_disableGarbageCollection) = 0;
  v39 = v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
  v40 = MEMORY[0x1E69E7CC0];
  *v39 = 0;
  *(v39 + 1) = v40;
  *(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentSource) = 0;
  v38[2] = a1;
  v38[3] = a2;
  v41 = v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
  *(v41 + 2) = 0u;
  *(v41 + 3) = 0u;
  *v41 = 0u;
  *(v41 + 1) = 0u;
  swift_beginAccess();
  *(v41 + 3) = -1;
  v74 = v26 + 16;
  v73 = v34;
  (v34)(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_root, v29, v25);
  v85 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  v103 = 0;
  v104 = 0xE000000000000000;

  sub_1CF9E7948();

  v75 = a1;
  v103 = a1;
  v104 = a2;
  v77 = a2;

  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA2F690);
  v84 = v103;
  v83 = v104;
  v42 = v24;
  v82 = v24;
  sub_1CF9E63E8();
  v103 = v40;
  sub_1CF725648(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  v43 = v88;
  sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770);
  v44 = v92;
  v45 = v95;
  sub_1CF9E77B8();
  v46 = v91;
  v47 = v42;
  v48 = v93;
  (*(v91 + 16))(v89, v47, v93);
  v49 = v97;
  (*(v97 + 16))(v96, v44, v45);
  (*(v99 + 104))(v98, *MEMORY[0x1E69E8098], v100);
  v50 = sub_1CF9E73B8();
  (*(v49 + 8))(v44, v45);
  v51 = v48;
  v52 = v86;
  (*(v46 + 8))(v82, v51);
  v53 = *(v43 + 8);
  v53(v87, v52);
  v53(v90, v52);
  *(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deferredWQ) = v50;
  v54 = v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  *v54 = sub_1CF36581C;
  *(v54 + 1) = 0;
  *(v54 + 4) = v94;
  *(v54 + 5) = 2;
  *(v54 + 12) = 1;
  v54[26] = 1;
  *(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_reporter) = 0;

  sub_1CF9BF6A8();
  v55 = v76;
  v56 = sub_1CF9E6888();
  v57 = objc_allocWithZone(type metadata accessor for InternalPathsManager());
  v58 = v56;
  v59 = InternalPathsManager.init(providerDomainID:)(v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v60 = *(v43 + 72);
  v61 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v62 = swift_allocObject();
  *(v62 + 1) = xmmword_1CF9FA450;
  v73(&v62[v61], v78, v52);
  v63 = type metadata accessor for VFSFileTree(0);
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  v66 = v59;
  v67 = sub_1CF25D1E8(v62, v38, v66, 0, 0, 0, 0, 0, 0, 1u, 0);
  v68 = *(v55 + 16);
  *(v55 + 16) = v67;
  v69 = v67;

  type metadata accessor for InProcessVFSFileTreeTester();
  v70 = swift_allocObject();
  *(v70 + 16) = v69;
  *(v70 + 24) = sub_1CF4E3238(MEMORY[0x1E69E7CC0]);
  v71 = *(v55 + 24);
  *(v55 + 24) = v70;

  v102(0);
}

uint64_t sub_1CF720C64()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(*(v1 + 16) + 136);

    sub_1CF9BFA28();
  }

  return result;
}

void sub_1CF720CCC(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, void *a8, void (*a9)(void, unint64_t, void *), uint64_t a10)
{
  v242 = a8;
  LODWORD(v226) = a7;
  v241 = a4;
  v240 = a3;
  v259 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1310, &qword_1CFA08AC8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v194 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v194 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v23 = *(v22 - 8);
  v262 = v22;
  v263 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v210 = (&v194 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v227 = (&v194 - v27);
  v254 = sub_1CF9E6388();
  v244 = *(v254 - 8);
  v28 = v244[8];
  MEMORY[0x1EEE9AC00](v254);
  v253 = (&v194 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v252 = &v194 - v31;
  v251 = sub_1CF9E6498();
  v257 = *(v251 - 8);
  v32 = *(v257 + 64);
  MEMORY[0x1EEE9AC00](v251);
  v250 = &v194 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v217 = &v194 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v194 - v38;
  v248 = sub_1CF9E63D8();
  v255 = *(v248 - 8);
  v40 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v248);
  v219 = &v194 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v243 = &v194 - v43;
  v249 = sub_1CF9E6448();
  v261 = *(v249 - 8);
  v44 = *(v261 + 64);
  MEMORY[0x1EEE9AC00](v249);
  v220 = &v194 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = (&v194 - v47);
  v247 = sub_1CF9E73D8();
  v260 = *(v247 - 8);
  v49 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v247);
  v246 = &v194 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v218 = &v194 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v223 = &v194 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v221 = &v194 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v237 = &v194 - v59;
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation();
  v60 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v62 = &v194 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for VFSItem(0);
  v245 = *(v238 - 8);
  v63 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v238);
  v256 = &v194 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v229 = &v194 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v222 = &v194 - v68;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2948, &unk_1CFA13490);
  v69 = *(*(v216 - 8) + 64);
  MEMORY[0x1EEE9AC00](v216);
  v215 = &v194 - v70;
  if (a1 > 4 || ((0x17u >> a1) & 1) == 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v225 = a1;
  v212 = v62;
  v213 = v18;
  VFSItemID.init(rawValue:)(v259, &v266);
  LODWORD(v259) = v267;
  if (v267 == 255)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v211 = v17;
  v258 = v266;
  if (a6 >> 60 == 15)
  {
    v71 = 0xF000000000000007;
  }

  else
  {
    v72 = sub_1CF9E5688();
    v73 = *(v72 + 48);
    v74 = *(v72 + 52);
    swift_allocObject();
    sub_1CEFE42D4(a5, a6);
    sub_1CF9E5678();
    sub_1CF190978();
    sub_1CF9E5668();

    sub_1CEFE48D8(a5, a6);
    v71 = v266;
  }

  v232 = v39;
  v233 = v48;
  v228 = 0;
  v224 = v21;
  v208 = v16;
  v235 = a10;
  v236 = a9;
  v75 = v239[3];
  if (!v75)
  {
LABEL_44:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/tests/units/FSTester/FSTester.swift", 98, 2, 96);
  }

  v266 = v240;
  v267 = v241;
  v264 = 58;
  v265 = 0xE100000000000000;
  v268 = 47;
  v269 = 0xE100000000000000;
  sub_1CEFE4E68();

  v209 = sub_1CF9E7668();
  v77 = v76;
  [v242 integerValue];
  v78 = v75[2];
  v239 = v75;

  v241 = v77;

  v240 = v71;
  sub_1CF50D18C(v71);
  v79 = dispatch_group_create();
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
  v80 = swift_allocBox();
  v81 = *(v263 + 56);
  v231 = v82;
  v206 = v263 + 56;
  v205 = v81;
  v81(v82, 1, 1, v262);
  dispatch_group_enter(v79);
  v83 = swift_allocObject();
  *(v83 + 16) = v80;
  *(v83 + 24) = v79;
  v84 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v242 = v78;
  v85 = v78[27];
  v266 = MEMORY[0x1E69E7CC0];
  v86 = sub_1CF725648(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
  v234 = v80;

  v230 = v79;
  v87 = v85;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  v89 = sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  v90 = v246;
  v200 = v88;
  v199 = v89;
  v91 = v247;
  v203 = v86;
  sub_1CF9E77B8();
  v207 = v84;
  v92 = sub_1CF9E73E8();

  v93 = *(v260 + 8);
  v260 += 8;
  v198 = v93;
  v93(v90, v91);
  qos_class_self();
  v94 = v232;
  sub_1CF9E63B8();
  v95 = v255;
  v96 = v255 + 48;
  v97 = *(v255 + 48);
  v98 = v248;
  v99 = v97(v94, 1, v248);
  v202 = v96;
  v201 = v97;
  if (v99 == 1)
  {
    (*(v95 + 104))(v243, *MEMORY[0x1E69E7FA0], v98);
    v100 = v97(v94, 1, v98);
    v101 = v261;
    v102 = v259;
    v103 = v258;
    v104 = v233;
    if (v100 != 1)
    {
      sub_1CEFCCC44(v94, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v95 + 32))(v243, v94, v98);
    v101 = v261;
    v102 = v259;
    v103 = v258;
    v104 = v233;
  }

  ObjectType = swift_getObjectType();
  sub_1CF9E6428();
  v106 = swift_allocObject();
  *(v106 + 16) = v242;
  *(v106 + 24) = v103;
  *(v106 + 32) = v102;
  *(v106 + 40) = 0u;
  *(v106 + 56) = 0u;
  *(v106 + 72) = 0u;
  *(v106 + 88) = 0u;
  *(v106 + 104) = 0u;
  *(v106 + 120) = 0u;
  *(v106 + 136) = 0;
  *(v106 + 144) = 2049;
  *(v106 + 152) = v92;
  *(v106 + 160) = sub_1CF50E07C;
  *(v106 + 168) = v83;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v104, sub_1CEFD5D08, v106);

  v107 = *(v101 + 8);
  v261 = v101 + 8;
  v233 = v107;
  v107(v104, v249);
  v108 = v250;
  sub_1CF9E6478();
  v109 = *MEMORY[0x1E69E7F40];
  v110 = v244;
  v111 = v244[13];
  v197 = (v244 + 13);
  v112 = v252;
  LODWORD(v232) = v109;
  v113 = v254;
  (v111)(v252);
  v114 = v253;
  *v253 = 0;
  v196 = *MEMORY[0x1E69E7F28];
  v243 = v111;
  (v111)(v114);
  MEMORY[0x1D3869770](v108, v112, v114, ObjectType);
  v115 = v110[1];
  (v115)(v114, v113);
  v244 = v115;
  (v115)(v112, v113);
  v116 = v257 + 8;
  v117 = *(v257 + 8);
  v117(v108, v251);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v118 = v230;
  sub_1CF9E72F8();
  v119 = v231;
  swift_beginAccess();
  v120 = *(v263 + 48);
  v263 += 48;
  if (v120(v119, 1, v262))
  {

    v121 = v245;
    v122 = v237;
    v123 = v238;
    (*(v245 + 56))(v237, 1, 1, v238);

    v124 = v256;
  }

  else
  {
    v125 = v119;
    v126 = v227;
    sub_1CEFCCBDC(v125, v227, &unk_1EC4BF310, &unk_1CF9FDB30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v124 = v256;
    v121 = v245;
    if (EnumCaseMultiPayload == 1)
    {
      v128 = *v126;
      v264 = *v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();

      v129 = v240;
      sub_1CF4EB118(v240);
LABEL_19:

      sub_1CF4EB118(v129);
      v134 = v236;
LABEL_23:

LABEL_24:
      v139 = v128;
      v134(0, 0xF000000000000000, v128);

      return;
    }

    v122 = v237;
    sub_1CEFE55D0(v126, v237, &unk_1EC4BEC00, &unk_1CF9FCB60);

    v123 = v238;
  }

  v130 = *(v121 + 48);
  v131 = v130(v122, 1, v123);
  v128 = v228;
  if (v131 == 1)
  {
    sub_1CEFCCC44(v122, &unk_1EC4BEC00, &unk_1CF9FCB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v132 = swift_allocError();
    *v133 = v258;
    *(v133 + 8) = v259;
    *(v133 + 16) = 0u;
    *(v133 + 32) = 0u;
    *(v133 + 48) = 0u;
    *(v133 + 64) = 0u;
    *(v133 + 80) = 0u;
    *(v133 + 96) = 0u;
    *(v133 + 112) = 0u;
    sub_1CF2A8DE0(v133);
    swift_willThrow();
    v128 = v132;

    v129 = v240;
    sub_1CF4EB118(v240);
    goto LABEL_19;
  }

  v135 = v229;
  sub_1CEFE4D30(v122, v229, type metadata accessor for VFSItem);
  v136 = v239;
  sub_1CF50BCA0(v135, v224);
  if (v128)
  {
    sub_1CEFE522C(v135, type metadata accessor for VFSItem);

    v137 = v240;
    sub_1CF4EB118(v240);

    sub_1CF4EB118(v137);
    v134 = v236;
    goto LABEL_23;
  }

  v234 = v120;
  v138 = 0x300020100uLL >> (8 * v225);
  v237 = objc_autoreleasePoolPush();
  sub_1CF4FECC4(v135, v136, v258, v259, v209, v241, v138, v240, v124, v226 & 1);
  v226 = v130;
  v228 = 0;
  objc_autoreleasePoolPop(v237);
  v140 = dispatch_group_create();
  v141 = swift_allocBox();
  v230 = v142;
  v205(v142, 1, 1, v262);
  dispatch_group_enter(v140);
  v143 = swift_allocObject();
  *(v143 + 16) = v141;
  *(v143 + 24) = v140;
  v227 = v143;
  v144 = *(v242 + 27);
  v264 = MEMORY[0x1E69E7CC0];
  v237 = v141;

  v231 = v140;
  v145 = v144;
  v146 = v246;
  v147 = v247;
  sub_1CF9E77B8();
  v148 = sub_1CF9E73E8();

  v198(v146, v147);
  qos_class_self();
  v149 = v217;
  sub_1CF9E63B8();
  v150 = v248;
  v151 = v201;
  v152 = v201(v149, 1, v248);
  v257 = v116;
  v195 = v117;
  if (v152 == 1)
  {
    (*(v255 + 104))(v219, *MEMORY[0x1E69E7FA0], v150);
    v153 = v151(v149, 1, v150);
    v154 = v220;
    if (v153 != 1)
    {
      sub_1CEFCCC44(v149, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v255 + 32))(v219, v149, v150);
    v154 = v220;
  }

  v261 = swift_getObjectType();
  sub_1CF9E6428();
  v155 = swift_allocObject();
  v156 = v258;
  *(v155 + 16) = v242;
  *(v155 + 24) = v156;
  *(v155 + 32) = v259;
  *(v155 + 40) = 0u;
  *(v155 + 56) = 0u;
  *(v155 + 72) = 0u;
  *(v155 + 88) = 0u;
  *(v155 + 104) = 0u;
  *(v155 + 120) = 0u;
  *(v155 + 136) = 0;
  *(v155 + 144) = 2049;
  *(v155 + 152) = v148;
  *(v155 + 160) = sub_1CF50EBA0;
  *(v155 + 168) = v227;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v154, sub_1CF72A328, v155);

  v233(v154, v249);
  v157 = v250;
  sub_1CF9E6478();
  v158 = v252;
  v159 = v254;
  v160 = v243;
  (v243)(v252, v232, v254);
  v161 = v253;
  *v253 = 0;
  (v160)(v161, v196, v159);
  MEMORY[0x1D3869770](v157, v158, v161, v261);
  v162 = v244;
  (v244)(v161, v159);
  v162(v158, v159);
  v195(v157, v251);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v163 = v231;
  sub_1CF9E72F8();
  v164 = v230;
  swift_beginAccess();
  if (v234(v164, 1, v262))
  {

    v165 = v221;
    v166 = v238;
    (*(v245 + 56))(v221, 1, 1, v238);

    v134 = v236;
    v167 = v208;
    v168 = v224;
    v169 = v223;
    v170 = v218;
  }

  else
  {
    v171 = v164;
    v172 = v210;
    sub_1CEFCCBDC(v171, v210, &unk_1EC4BF310, &unk_1CF9FDB30);
    v173 = swift_getEnumCaseMultiPayload();
    v134 = v236;
    v174 = v208;
    v168 = v224;
    v169 = v223;
    v170 = v218;
    if (v173 == 1)
    {
      v175 = v224;
      v128 = *v172;
      v268 = *v172;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();

      sub_1CEFE522C(v256, type metadata accessor for VFSItem);
      sub_1CEFCCC44(v175, &qword_1EC4C1330, &unk_1CFA13480);

      sub_1CEFE522C(v229, type metadata accessor for VFSItem);

      v176 = v240;
      sub_1CF4EB118(v240);

      sub_1CF4EB118(v176);
      goto LABEL_23;
    }

    v165 = v221;
    sub_1CEFE55D0(v172, v221, &unk_1EC4BEC00, &unk_1CF9FCB60);

    v166 = v238;
    v167 = v174;
  }

  v177 = v256;
  sub_1CEFE4FF4(v256, v222, type metadata accessor for VFSItem);
  sub_1CEFCCBDC(v168, v167, &qword_1EC4C1330, &unk_1CFA13480);
  (*(v213 + 56))(v167, 0, 1, v211);
  sub_1CEFCCBDC(v165, v169, &unk_1EC4BEC00, &unk_1CF9FCB60);
  sub_1CEFCCBDC(v165, v170, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if (v226(v170, 1, v166) == 1)
  {
    sub_1CEFCCC44(v170, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v178 = v240;
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v179 = qword_1EDEABDE8;
    sub_1CEFCCC44(v221, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFE522C(v256, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v168, &qword_1EC4C1330, &unk_1CFA13480);
    v180 = v229;
  }

  else
  {
    v181 = v170;
    v180 = v229;
    sub_1CF717E1C(v229);
    sub_1CEFCCC44(v165, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFE522C(v177, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v168, &qword_1EC4C1330, &unk_1CFA13480);
    sub_1CEFE522C(v181, type metadata accessor for VFSItem);
    v179 = v268;
    v178 = v240;
  }

  v182 = v223;
  v183 = *(v216 + 48);
  v184 = v212;
  sub_1CEFE55D0(v208, v212, &qword_1EC4C1310, &qword_1CFA08AC8);
  v185 = updated;
  sub_1CEFE55D0(v182, v184 + *(updated + 20), &unk_1EC4BEC00, &unk_1CF9FCB60);
  *(v184 + *(v185 + 24)) = v179;
  sub_1CEFE522C(v180, type metadata accessor for VFSItem);

  sub_1CF4EB118(v178);

  v186 = v215;
  sub_1CEFE4D30(v222, v215, type metadata accessor for VFSItem);
  sub_1CEFE4D30(v184, v186 + v183, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
  v187 = sub_1CF9E56C8();
  v188 = *(v187 + 48);
  v189 = *(v187 + 52);
  swift_allocObject();
  sub_1CF9E56B8();
  sub_1CF9E5698();
  sub_1CF725648(&qword_1EC4C2950, type metadata accessor for VFSItem);
  v128 = v228;
  v190 = sub_1CF9E56A8();
  if (v128)
  {
    sub_1CEFCCC44(v186, &qword_1EC4C2948, &unk_1CFA13490);

    sub_1CF4EB118(v178);
    goto LABEL_24;
  }

  v192 = v190;
  v193 = v191;

  v134(v192, v193, 0);
  sub_1CF4EB118(v178);
  sub_1CEFE4714(v192, v193);
  sub_1CEFCCC44(v186, &qword_1EC4C2948, &unk_1CFA13490);
}

void sub_1CF722C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t, unint64_t, uint64_t, void), uint64_t a8)
{
  v69 = a8;
  v70 = a7;
  v66 = a6;
  v63 = a5;
  v65 = a4;
  *&v68 = a3;
  v8 = type metadata accessor for VFSItem(0);
  v64 = *(v8 - 8);
  v9 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2958, &qword_1CFA134A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - v14;
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation();
  v17 = *(updated - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E5688();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  v24 = v67;
  v25 = v65;
  v62 = v17;
  v58 = updated;
  v26 = v66;
  v27 = v64;
  v59 = v8;
  v60 = v20;
  v57 = v11;
  v61 = v15;
  v28 = v79;
  v29 = v80;
  v31 = v81;
  v30 = v82;
  v32 = v83;
  v33 = v68;
  if (v68)
  {
    v68 = v79;
    VFSItemID.init(rawValue:)([v33 integerValue], &v79);
    v28 = v68;
    v34 = v79;
    v35 = BYTE8(v79);
  }

  else
  {
    v34 = 0;
    v35 = -1;
  }

  v36 = v27;
  if (!*(v24 + 24))
  {
    goto LABEL_14;
  }

  v79 = v28;
  v80 = v29;
  v81 = v31;
  v82 = v30;
  v83 = v32;
  v77 = v34;
  v78 = v35;
  v37 = v62;
  if (v63)
  {
    v75 = v25;
    v76 = v63;
    v73 = 58;
    v74 = 0xE100000000000000;
    v71 = 47;
    v72 = 0xE100000000000000;
    sub_1CEFE4E68();

    v38 = sub_1CF9E7668();
  }

  else
  {

    v38 = 0;
    v39 = 0;
  }

  v40 = v70;
  v75 = v38;
  v76 = v39;
  v41 = sub_1CF5028E0(&v79, &v77, &v75, v26 & 1);

  if (!*(v41 + 2))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v42 = v41 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v43 = v60;
  sub_1CEFE4FF4(v42, v60, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);

  v44 = *(v58 + 20);
  v45 = *(v43 + *(v58 + 24));
  v46 = *(v12 + 48);
  v47 = *(v12 + 64);
  v48 = v61;
  sub_1CEFCCBDC(v43, v61, &qword_1EC4C1310, &qword_1CFA08AC8);
  sub_1CEFCCBDC(v43 + v44, v48 + v46, &unk_1EC4BEC00, &unk_1CF9FCB60);
  *(v48 + v47) = v45;
  if ((*(v36 + 48))(v48 + v46, 1, v59) == 1)
  {
    v40(0, 0xF000000000000000, v45, 0);
  }

  else
  {
    v49 = v57;
    sub_1CEFE4D30(v48 + v46, v57, type metadata accessor for VFSItem);
    v50 = sub_1CF9E56C8();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    sub_1CF725648(&qword_1EC4C2950, type metadata accessor for VFSItem);
    v53 = sub_1CF9E56A8();
    v55 = v54;

    v40(v53, v55, v45, 0);
    sub_1CEFE4714(v53, v55);
    sub_1CEFE522C(v49, type metadata accessor for VFSItem);
  }

  sub_1CEFE522C(v43, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
  sub_1CEFCCC44(v48, &qword_1EC4C1310, &qword_1CFA08AC8);
}

void sub_1CF7233C0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t, unint64_t, void, void *), uint64_t a7)
{
  v87 = a7;
  v88 = a6;
  v83 = a3;
  *&v86 = a2;
  *&v85 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v78 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v73 - v13;
  v84 = type metadata accessor for VFSItem(0);
  v80 = *(v84 - 8);
  v14 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v79 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation();
  v17 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v73 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v73 - v27;
  v29 = sub_1CF9E5688();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_1CEFE42D4(a4, a5);
  sub_1CF9E5678();
  sub_1CF190978();
  sub_1CF9E5668();
  v76 = v22;
  v74 = v25;
  v77 = v19;
  v32 = v84;
  v75 = v28;

  sub_1CEFE4714(a4, a5);
  v33 = v90;
  v34 = *(v29 + 48);
  v35 = *(v29 + 52);
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  v37 = v83;
  if ((v83 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v38 = v82;
  if (v83 > 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v39 = *(v81 + 24);
  if (!v39)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  *&v36 = v91;
  v40 = v92;
  v41 = v93;
  v42 = *(v39 + 16);
  v89 = v93;
  v85 = v36;
  v86 = v90;

  sub_1CF263024(&v89, &v90, 2049, v38);
  v81 = v39;
  v73 = v40;

  v45 = v80 + 48;
  v46 = *(v80 + 48);
  if (v46(v38, 1, v32) != 1)
  {
    v80 = v45;
    v53 = v79;
    v54 = sub_1CEFE4D30(v38, v79, type metadata accessor for VFSItem);
    v55 = *(v53 + 16);
    v56 = *(v53 + 24);
    MEMORY[0x1EEE9AC00](v54);
    *(&v73 - 4) = v81;
    *(&v73 - 3) = v53;
    *(&v73 - 2) = v33;
    *(&v73 - 8) = v37;
    v57 = v76;
    v58 = v77;
    sub_1CF7136CC(v76, v77, v59, v60, sub_1CF725630, (&v73 - 6));

    v61 = v57;
    v62 = v74;
    sub_1CEFE4D30(v61, v74, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFE522C(v58, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFE522C(v53, type metadata accessor for VFSItem);
    v63 = v75;
    sub_1CEFE4D30(v62, v75, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    v64 = updated;
    v65 = v63 + *(updated + 20);
    v66 = v78;
    sub_1CEFCCBDC(v65, v78, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if (v46(v66, 1, v32) != 1)
    {

      v67 = sub_1CF9E56C8();
      v68 = *(v67 + 48);
      v69 = *(v67 + 52);
      swift_allocObject();
      sub_1CF9E56B8();
      sub_1CF9E5698();
      sub_1CF725648(&qword_1EC4C2950, type metadata accessor for VFSItem);
      v70 = sub_1CF9E56A8();
      v72 = v71;

      sub_1CEFE522C(v66, type metadata accessor for VFSItem);
      v88(v70, v72, *(v63 + *(v64 + 24)), 0);

      sub_1CEFE4714(v70, v72);
      sub_1CEFE522C(v63, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
      return;
    }

    goto LABEL_20;
  }

  sub_1CEFCCC44(v38, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v47 = (v41 - 1) < 2 || v85 == 0;
  v48 = v47;
  if (v47)
  {
    v49 = v86;
  }

  else
  {
    v49 = v85;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
  v50 = swift_allocError();
  *v51 = v49;
  *(v51 + 8) = v48;
  *(v51 + 16) = 0u;
  *(v51 + 32) = 0u;
  *(v51 + 48) = 0u;
  *(v51 + 64) = 0u;
  *(v51 + 80) = 0u;
  *(v51 + 96) = 0u;
  *(v51 + 112) = 0u;
  sub_1CF2A8DE0(v51);
  swift_willThrow();
  v52 = v50;

  v43 = v88;
  v44 = v52;
  v43(0, 0xF000000000000000, 0, v52);
}

void sub_1CF723CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, unint64_t, void, void *), uint64_t a7)
{
  v96 = a3;
  v98 = a7;
  v99 = a6;
  v90 = a5;
  v97 = a4;
  *&v100 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v89 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v84 - v11;
  v12 = type metadata accessor for VFSItem(0);
  v13 = *(v12 - 8);
  v92 = v12;
  v93 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v91 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation();
  v17 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v84 - v27;
  v29 = type metadata accessor for ItemMetadata();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1CF9E5688();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();
  v88 = v22;
  v85 = v25;
  v87 = v19;
  v86 = v28;
  v84 = updated;

  v37 = v102;
  v36 = v103;
  *&v38 = v104;
  v100 = v38;
  v39 = v105;
  v40 = v106;
  v41 = v107;
  v42 = *(v33 + 48);
  v43 = *(v33 + 52);
  swift_allocObject();
  v44 = sub_1CF9E5678();
  sub_1CF725648(&qword_1EC4BEAB0, type metadata accessor for ItemMetadata);
  sub_1CF9E5668();
  v97 = v44;
  v45 = *(v95 + 24);
  if (!v45)
  {
    __break(1u);
    goto LABEL_21;
  }

  v46 = v32;
  v47 = *(v45 + 16);
  v101[0] = v41;
  v102 = v37;
  v103 = v36;
  v104 = v100;
  v105 = v39;
  v106 = v40;

  v48 = v41;
  v49 = v94;
  sub_1CF263024(v101, &v102, 2049, v94);
  v50 = v37;
  v51 = v88;
  LODWORD(v95) = v48;
  v96 = v46;

  v52 = v93 + 48;
  v53 = *(v93 + 48);
  v55 = v53(v49, 1, v92) == 1;
  v54 = v49;
  if (!v55)
  {
    v61 = v53;
    v93 = v52;
    v62 = v91;
    v63 = sub_1CEFE4D30(v54, v91, type metadata accessor for VFSItem);
    v64 = *(v62 + 16);
    v65 = *(v62 + 24);
    MEMORY[0x1EEE9AC00](v63);
    *(&v84 - 4) = v62;
    *(&v84 - 3) = v45;
    v66 = v96;
    *(&v84 - 2) = v90;
    *(&v84 - 1) = v66;
    v67 = v87;
    sub_1CF7136CC(v51, v87, v68, v69, sub_1CF725690, (&v84 - 6));
    *&v100 = 0;

    v71 = v85;
    sub_1CEFE4D30(v51, v85, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFE522C(v67, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFE522C(v62, type metadata accessor for VFSItem);
    v72 = v86;
    sub_1CEFE4D30(v71, v86, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    v73 = v84;
    v74 = v89;
    sub_1CEFCCBDC(v72 + *(v84 + 20), v89, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v75 = v61(v74, 1, v92);
    if (v75 != 1)
    {

      v76 = sub_1CF9E56C8();
      v77 = *(v76 + 48);
      v78 = *(v76 + 52);
      swift_allocObject();
      sub_1CF9E56B8();
      sub_1CF9E5698();
      sub_1CF725648(&qword_1EC4C2950, type metadata accessor for VFSItem);
      v60 = v100;
      v79 = sub_1CF9E56A8();
      v81 = v96;
      if (!v60)
      {
        v82 = v79;
        v83 = v80;

        sub_1CEFE522C(v74, type metadata accessor for VFSItem);
        v99(v82, v83, *(v72 + *(v73 + 24)), 0);

        sub_1CEFE4714(v82, v83);
        sub_1CEFE522C(v72, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
        sub_1CEFE522C(v81, type metadata accessor for ItemMetadata);
        return;
      }

      sub_1CEFE522C(v72, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);

      sub_1CEFE522C(v81, type metadata accessor for ItemMetadata);
      sub_1CEFE522C(v74, type metadata accessor for VFSItem);
      goto LABEL_14;
    }

LABEL_21:
    __break(1u);
    return;
  }

  sub_1CEFCCC44(v49, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v55 = (v95 - 1) < 2 || v100 == 0;
  v56 = v55;
  if (v55)
  {
    v57 = v50;
  }

  else
  {
    v57 = v100;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
  v58 = swift_allocError();
  *v59 = v57;
  *(v59 + 8) = v56;
  *(v59 + 16) = 0u;
  *(v59 + 32) = 0u;
  *(v59 + 48) = 0u;
  *(v59 + 64) = 0u;
  *(v59 + 80) = 0u;
  *(v59 + 96) = 0u;
  *(v59 + 112) = 0u;
  sub_1CF2A8DE0(v59);
  swift_willThrow();
  v60 = v58;

  sub_1CEFE522C(v96, type metadata accessor for ItemMetadata);

LABEL_14:
  v70 = v60;
  v99(0, 0xF000000000000000, 0, v60);
}

uint64_t sub_1CF72461C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation();
  v6 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17[-v11];
  v13 = sub_1CF9E5688();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  if (*(v3 + 24))
  {

    sub_1CF50917C(v12, v8, &v18);

    sub_1CEFE522C(v8, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFCCC44(v12, &qword_1EC4C1330, &unk_1CFA13480);

    return a3(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF724900(uint64_t a1, int a2, void *a3, void *aBlock, void (*a5)(__int128 *))
{
  v8 = _Block_copy(aBlock);
  v9 = a3;

  v10 = sub_1CF9E5B88();
  v12 = v11;

  _Block_copy(v8);
  sub_1CF729FE4(v10, v12, a1, v8, a5);
  _Block_release(v8);
  _Block_release(v8);
  sub_1CEFE4714(v10, v12);
}

uint64_t sub_1CF7249B8(uint64_t result)
{
  if (*(v1 + 24))
  {
    v2 = result;

    sub_1CF509948();

    return v2(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF724B84(uint64_t a1, void (*a2)(void *))
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_self() defaultManager];
  v4 = sub_1CF9E5928();
  v11[0] = 0;
  v5 = [v3 removeItemAtURL:v4 error:v11];

  if (v5)
  {
    v6 = v11[0];
    a2(0);
  }

  else
  {
    v7 = v11[0];
    v8 = sub_1CF9E57F8();

    swift_willThrow();
    v9 = v8;
    a2(v8);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1CF724DC4(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_1CF9E5928();
  v6 = sub_1CF9E5928();
  v13[0] = 0;
  v7 = [v4 moveItemAtURL:v5 toURL:v6 error:v13];

  if (v7)
  {
    v8 = v13[0];
    a3(0);
  }

  else
  {
    v9 = v13[0];
    v10 = sub_1CF9E57F8();

    swift_willThrow();
    v11 = v10;
    a3(v10);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF72506C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = sub_1CF9E5688();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  if (*(v4 + 24))
  {
    if ((a3 & 0x8000000000000000) == 0)
    {

      sub_1CF50A7C8(&v11, a3);

      return a4(0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF72520C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(__int128 *))
{
  v8 = sub_1CF9E5688();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  if (*(v5 + 24))
  {

    a5(&v12);

    return a3(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF72535C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v7 = sub_1CF9E5688();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  if (*(v4 + 24))
  {

    sub_1CF50B864(&v11, a3);

    return a4(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF7254AC(uint64_t a1, int a2, void *a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, unint64_t, uint64_t, uint64_t, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;

  v12 = sub_1CF9E5B88();
  v14 = v13;

  _Block_copy(v10);
  a6(v12, v14, a4, a1, v10);
  _Block_release(v10);
  _Block_release(v10);
  sub_1CEFE4714(v12, v14);
}

uint64_t FSTester.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t FSTester.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_1CF7255DC()
{
  result = qword_1EC4C2960;
  if (!qword_1EC4C2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2960);
  }

  return result;
}

uint64_t sub_1CF725648(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CF72594C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v100 = a7;
  v74 = a6;
  v77 = a3;
  v80 = sub_1CF9E6118();
  v79 = *(v80 - 8);
  v11 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v78 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E7388();
  v98 = *(v13 - 8);
  v99 = v13;
  v14 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v97 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1CF9E7318();
  v96 = *(v94 - 8);
  v16 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v95 = v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v91 = v73 - v19;
  v92 = sub_1CF9E6448();
  v87 = *(v92 - 8);
  v20 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v90 = v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v73 - v23;
  v25 = sub_1CF9E5A58();
  v88 = *(v25 - 8);
  v26 = v88;
  v27 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = v73 - v32;
  v93 = a5 & 1;
  v34 = *(v26 + 16);
  v89 = v73 - v32;
  v34(v73 - v32, a4, v25, v31);
  v35 = type metadata accessor for DocumentWharfForTesting();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  v86 = v29;
  v85 = v25;
  (v34)(v29, v33, v25);
  *(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource) = 0;
  *(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_invalidated) = 0;
  *(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_activated) = 0;
  *(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  *(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_disableGarbageCollection) = 0;
  v39 = v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
  v40 = MEMORY[0x1E69E7CC0];
  *v39 = 0;
  *(v39 + 1) = v40;
  *(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentSource) = 0;
  v38[2] = a1;
  v38[3] = a2;
  v41 = v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
  *(v41 + 2) = 0u;
  *(v41 + 3) = 0u;
  *v41 = 0u;
  *(v41 + 1) = 0u;
  swift_beginAccess();
  *(v41 + 3) = -1;
  v73[1] = v26 + 16;
  v73[0] = v34;
  (v34)(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_root, v29, v25);
  v84 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  v101 = 0;
  v102 = 0xE000000000000000;

  sub_1CF9E7948();

  v75 = a1;
  v101 = a1;
  v102 = a2;
  v76 = a2;

  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA2F690);
  v83 = v101;
  v82 = v102;
  v42 = v24;
  v81 = v24;
  sub_1CF9E63E8();
  v101 = v40;
  sub_1CF725648(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770);
  v43 = v91;
  v44 = v94;
  sub_1CF9E77B8();
  v45 = v87;
  v46 = v42;
  v47 = v92;
  (*(v87 + 16))(v90, v46, v92);
  v48 = v96;
  (*(v96 + 16))(v95, v43, v44);
  (*(v98 + 104))(v97, *MEMORY[0x1E69E8098], v99);
  v49 = v88;
  v50 = sub_1CF9E73B8();
  (*(v48 + 8))(v43, v44);
  v51 = v45;
  v52 = v85;
  (*(v51 + 8))(v81, v47);
  v53 = v49;
  v54 = *(v49 + 8);
  v54(v86, v52);
  v54(v89, v52);
  *(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deferredWQ) = v50;
  v55 = v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  *v55 = sub_1CF36581C;
  *(v55 + 1) = 0;
  *(v55 + 4) = v93;
  *(v55 + 5) = 2;
  *(v55 + 12) = 1;
  v55[26] = 1;
  *(v38 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_reporter) = 0;

  sub_1CF9BF6A8();
  v56 = v74;
  v57 = sub_1CF9E6888();
  v58 = objc_allocWithZone(type metadata accessor for InternalPathsManager());
  v59 = v57;
  v60 = InternalPathsManager.init(providerDomainID:)(v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v61 = *(v53 + 72);
  v62 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v63 = swift_allocObject();
  v63[1] = xmmword_1CF9FA450;
  (v73[0])(v63 + v62, v77, v52);
  v64 = type metadata accessor for VFSFileTree(0);
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  v67 = v60;
  v68 = sub_1CF25D1E8(v63, v38, v67, 0, 0, 0, 0, 0, 0, 1u, 0);
  v69 = *(v56 + 16);
  *(v56 + 16) = v68;
  v70 = v68;

  type metadata accessor for InProcessVFSFileTreeTester();
  v71 = swift_allocObject();
  *(v71 + 16) = v70;
  *(v71 + 24) = sub_1CF4E3238(MEMORY[0x1E69E7CC0]);
  v72 = *(v56 + 24);
  *(v56 + 24) = v71;

  (*(v100 + 16))(v100, 0);
}

void sub_1CF726408(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, NSObject *a8, uint64_t a9, const void *a10)
{
  v244 = a8;
  v227 = a7;
  v243 = a4;
  v242 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1310, &qword_1CFA08AC8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v197 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  v216 = *(v18 - 8);
  v19 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v197 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v23 = *(v22 - 8);
  v263 = v22;
  v264 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v197 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v230 = (&v197 - v28);
  v256 = sub_1CF9E6388();
  v246 = *(v256 - 8);
  v29 = v246[8];
  MEMORY[0x1EEE9AC00](v256);
  v255 = (&v197 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31);
  v254 = &v197 - v32;
  v253 = sub_1CF9E6498();
  v258 = *(v253 - 8);
  v33 = *(v258 + 64);
  MEMORY[0x1EEE9AC00](v253);
  v252 = &v197 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v220 = &v197 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v197 - v39;
  v250 = sub_1CF9E63D8();
  v257 = *(v250 - 8);
  v41 = *(v257 + 64);
  MEMORY[0x1EEE9AC00](v250);
  v222 = &v197 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v245 = &v197 - v44;
  v251 = sub_1CF9E6448();
  v262 = *(v251 - 8);
  v45 = *(v262 + 64);
  MEMORY[0x1EEE9AC00](v251);
  v223 = &v197 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = (&v197 - v48);
  v249 = sub_1CF9E73D8();
  v261 = *(v249 - 8);
  v50 = *(v261 + 64);
  MEMORY[0x1EEE9AC00](v249);
  v248 = &v197 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v214 = &v197 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v221 = &v197 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v224 = &v197 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v238 = (&v197 - v60);
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation();
  v61 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v218 = &v197 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = type metadata accessor for VFSItem(0);
  v247 = *(v240 - 8);
  v63 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v240);
  v228 = &v197 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v239 = &v197 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v225 = &v197 - v68;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2948, &unk_1CFA13490);
  v69 = *(*(v217 - 8) + 64);
  MEMORY[0x1EEE9AC00](v217);
  v219 = &v197 - v70;
  if (a1 > 4 || ((0x17u >> a1) & 1) == 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v241 = a1;
  a1 = a10;
  VFSItemID.init(rawValue:)(a2, &v267);
  v260 = v268;
  if (v268 == 255)
  {
LABEL_41:
    _Block_release(a1);
    __break(1u);
    goto LABEL_42;
  }

  v212 = v26;
  v213 = v18;
  v259 = v267;
  if (a6 >> 60 == 15)
  {
    v71 = 0xF000000000000007;
  }

  else
  {
    v72 = sub_1CF9E5688();
    v73 = *(v72 + 48);
    v74 = *(v72 + 52);
    swift_allocObject();
    sub_1CEFE42D4(a5, a6);
    sub_1CF9E5678();
    sub_1CF190978();
    sub_1CF9E5668();

    sub_1CEFE48D8(a5, a6);
    v71 = v267;
  }

  v232 = v40;
  v233 = v49;
  v226 = v21;
  v210 = v17;
  v229 = 0;
  v235 = a10;
  v75 = *(a9 + 24);
  v76 = v250;
  if (!v75)
  {
LABEL_42:
    _Block_release(v235);
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/tests/units/FSTester/FSTester.swift", 98, 2, 96);
  }

  v267 = v242;
  v268 = v243;
  v265 = 58;
  v266 = 0xE100000000000000;
  v269 = 47;
  v270 = 0xE100000000000000;
  sub_1CEFE4E68();

  v211 = sub_1CF9E7668();
  v78 = v77;
  [v244 integerValue];
  v79 = v75[2];
  v236 = v75;

  v242 = v78;

  v237 = v71;
  sub_1CF50D18C(v71);
  v80 = dispatch_group_create();
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
  v81 = swift_allocBox();
  v82 = *(v264 + 56);
  v231 = v83;
  v208 = v264 + 56;
  v207 = v82;
  v82(v83, 1, 1, v263);
  dispatch_group_enter(v80);
  v84 = swift_allocObject();
  *(v84 + 16) = v81;
  *(v84 + 24) = v80;
  v85 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v243 = v79;
  v86 = *(v79 + 216);
  v267 = MEMORY[0x1E69E7CC0];
  v87 = sub_1CF725648(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
  v234 = v81;

  v244 = v80;
  v88 = v86;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  v90 = sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  v91 = v248;
  v202 = v89;
  v201 = v90;
  v92 = v249;
  v205 = v87;
  sub_1CF9E77B8();
  v209 = v85;
  v93 = sub_1CF9E73E8();

  v94 = *(v261 + 8);
  v261 += 8;
  v200 = v94;
  v94(v91, v92);
  qos_class_self();
  v95 = v232;
  sub_1CF9E63B8();
  v96 = v257;
  v97 = v257 + 48;
  v98 = *(v257 + 48);
  v99 = v98(v95, 1, v76);
  v204 = v97;
  v203 = v98;
  if (v99 == 1)
  {
    (*(v96 + 104))(v245, *MEMORY[0x1E69E7FA0], v76);
    v100 = v98(v95, 1, v76);
    v101 = v260;
    v102 = v259;
    v103 = v233;
    if (v100 != 1)
    {
      sub_1CEFCCC44(v95, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v96 + 32))(v245, v95, v76);
    v101 = v260;
    v102 = v259;
    v103 = v233;
  }

  ObjectType = swift_getObjectType();
  sub_1CF9E6428();
  v105 = swift_allocObject();
  *(v105 + 16) = v243;
  *(v105 + 24) = v102;
  *(v105 + 32) = v101;
  *(v105 + 40) = 0u;
  *(v105 + 56) = 0u;
  *(v105 + 72) = 0u;
  *(v105 + 88) = 0u;
  *(v105 + 104) = 0u;
  *(v105 + 120) = 0u;
  *(v105 + 136) = 0;
  *(v105 + 144) = 2049;
  *(v105 + 152) = v93;
  *(v105 + 160) = sub_1CF50EBA0;
  *(v105 + 168) = v84;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v103, sub_1CF72A328, v105);

  v106 = *(v262 + 8);
  v262 += 8;
  v233 = v106;
  v106(v103, v251);
  v107 = v252;
  sub_1CF9E6478();
  v108 = v246;
  v109 = v246[13];
  v110 = v254;
  LODWORD(v232) = *MEMORY[0x1E69E7F40];
  v111 = v256;
  (v109)(v254);
  v112 = v255;
  *v255 = 0;
  v199 = *MEMORY[0x1E69E7F28];
  v245 = v109;
  (v109)(v112);
  MEMORY[0x1D3869770](v107, v110, v112, ObjectType);
  v113 = v108[1];
  (v113)(v112, v111);
  (v113)(v110, v111);
  v115 = v258 + 8;
  v114 = *(v258 + 8);
  v114(v107, v253);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v116 = v244;
  sub_1CF9E72F8();
  v117 = v231;
  swift_beginAccess();
  v118 = *(v264 + 48);
  v264 += 48;
  if (v118(v117, 1, v263))
  {
    v198 = v118;
    v231 = v114;
    v246 = v113;

    v119 = v247;
    v120 = v238;
    v121 = v240;
    (*(v247 + 56))(v238, 1, 1, v240);

    v122 = v241;
  }

  else
  {
    v123 = v117;
    v124 = v230;
    sub_1CEFCCBDC(v123, v230, &unk_1EC4BF310, &unk_1CF9FDB30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v119 = v247;
    v122 = v241;
    if (EnumCaseMultiPayload == 1)
    {
      v126 = *v124;
      v265 = *v124;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();

      v127 = v237;
      sub_1CF4EB118(v237);

      sub_1CF4EB118(v127);
LABEL_19:

      v135 = v235;
LABEL_38:
      v192 = v126;
      v193 = sub_1CF9E57E8();
      v135[2](v135, 0, v193);

      return;
    }

    v198 = v118;
    v231 = v114;
    v246 = v113;

    v128 = v124;
    v120 = v238;
    sub_1CEFE55D0(v128, v238, &unk_1EC4BEC00, &unk_1CF9FCB60);

    v121 = v240;
  }

  v129 = *(v119 + 48);
  v130 = (v129)(v120, 1, v121);
  v131 = v236;
  v132 = v239;
  if (v130 == 1)
  {
    sub_1CEFCCC44(v120, &unk_1EC4BEC00, &unk_1CF9FCB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v126 = swift_allocError();
    *v133 = v259;
    *(v133 + 8) = v260;
    *(v133 + 16) = 0u;
    *(v133 + 32) = 0u;
    *(v133 + 48) = 0u;
    *(v133 + 64) = 0u;
    *(v133 + 80) = 0u;
    *(v133 + 96) = 0u;
    *(v133 + 112) = 0u;
    sub_1CF2A8DE0(v133);
    swift_willThrow();

    v134 = v237;
    sub_1CF4EB118(v237);

    sub_1CF4EB118(v134);
    goto LABEL_19;
  }

  sub_1CEFE4D30(v120, v239, type metadata accessor for VFSItem);
  v136 = v229;
  sub_1CF50BCA0(v132, v226);
  if (v136)
  {
    sub_1CEFE522C(v132, type metadata accessor for VFSItem);

    v137 = v237;
    sub_1CF4EB118(v237);

    sub_1CF4EB118(v137);

    v135 = v235;
    v126 = v136;
    goto LABEL_38;
  }

  v244 = v129;
  v138 = v132;
  v139 = v131;
  v140 = 0x300020100uLL >> (8 * v122);
  v141 = objc_autoreleasePoolPush();
  sub_1CF4FECC4(v138, v139, v259, v260, v211, v242, v140, v237, v228, v227 & 1);
  v229 = 0;
  objc_autoreleasePoolPop(v141);
  v142 = dispatch_group_create();
  v143 = swift_allocBox();
  v234 = v144;
  v207(v144, 1, 1, v263);
  dispatch_group_enter(v142);
  v145 = swift_allocObject();
  *(v145 + 16) = v143;
  *(v145 + 24) = v142;
  v230 = v145;
  v146 = *(v243 + 216);
  v265 = MEMORY[0x1E69E7CC0];
  v241 = v143;

  v238 = v142;
  v147 = v146;
  v148 = v248;
  v149 = v249;
  sub_1CF9E77B8();
  v150 = sub_1CF9E73E8();

  v200(v148, v149);
  qos_class_self();
  v151 = v220;
  sub_1CF9E63B8();
  v152 = v250;
  v153 = v203;
  v154 = v203(v151, 1, v250);
  v258 = v115;
  if (v154 == 1)
  {
    (*(v257 + 104))(v222, *MEMORY[0x1E69E7FA0], v152);
    v155 = v153(v151, 1, v152);
    v156 = v223;
    if (v155 != 1)
    {
      sub_1CEFCCC44(v151, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v257 + 32))(v222, v151, v152);
    v156 = v223;
  }

  v262 = swift_getObjectType();
  sub_1CF9E6428();
  v157 = swift_allocObject();
  v158 = v259;
  *(v157 + 16) = v243;
  *(v157 + 24) = v158;
  *(v157 + 32) = v260;
  *(v157 + 40) = 0u;
  *(v157 + 56) = 0u;
  *(v157 + 72) = 0u;
  *(v157 + 88) = 0u;
  *(v157 + 104) = 0u;
  *(v157 + 120) = 0u;
  *(v157 + 136) = 0;
  *(v157 + 144) = 2049;
  *(v157 + 152) = v150;
  *(v157 + 160) = sub_1CF50EBA0;
  *(v157 + 168) = v230;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v156, sub_1CF72A328, v157);

  v233(v156, v251);
  v159 = v252;
  sub_1CF9E6478();
  v160 = v254;
  v161 = v256;
  v162 = v245;
  (v245)(v254, v232, v256);
  v163 = v255;
  *v255 = 0;
  (v162)(v163, v199, v161);
  MEMORY[0x1D3869770](v159, v160, v163, v262);
  v164 = v246;
  (v246)(v163, v161);
  v164(v160, v161);
  v231(v159, v253);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v165 = v238;
  sub_1CF9E72F8();
  v166 = v234;
  swift_beginAccess();
  if (v198(v166, 1, v263))
  {

    v167 = v224;
    v168 = v240;
    (*(v247 + 56))(v224, 1, 1, v240);

    v169 = v221;
    v170 = v228;
  }

  else
  {
    v171 = v166;
    v172 = v212;
    sub_1CEFCCBDC(v171, v212, &unk_1EC4BF310, &unk_1CF9FDB30);
    v173 = swift_getEnumCaseMultiPayload();
    v169 = v221;
    v170 = v228;
    v167 = v224;
    if (v173 == 1)
    {
      v126 = *v172;
      v269 = *v172;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();

      sub_1CEFE522C(v170, type metadata accessor for VFSItem);
      sub_1CEFCCC44(v226, &qword_1EC4C1330, &unk_1CFA13480);

      sub_1CEFE522C(v239, type metadata accessor for VFSItem);

      v174 = v237;
      sub_1CF4EB118(v237);

      sub_1CF4EB118(v174);
      goto LABEL_19;
    }

    sub_1CEFE55D0(v172, v167, &unk_1EC4BEC00, &unk_1CF9FCB60);

    v168 = v240;
  }

  sub_1CEFE4FF4(v170, v225, type metadata accessor for VFSItem);
  v175 = v226;
  v176 = v210;
  sub_1CEFCCBDC(v226, v210, &qword_1EC4C1330, &unk_1CFA13480);
  (*(v216 + 56))(v176, 0, 1, v213);
  sub_1CEFCCBDC(v167, v169, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v177 = v214;
  sub_1CEFCCBDC(v167, v214, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((v244)(v177, 1, v168) == 1)
  {
    sub_1CEFCCC44(v177, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v135 = v235;
    v178 = v229;
    v179 = v237;
    v180 = v219;
    v181 = v218;
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v182 = qword_1EDEABDE8;
    sub_1CEFCCC44(v224, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFE522C(v228, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v226, &qword_1EC4C1330, &unk_1CFA13480);
    v183 = v210;
    v184 = v239;
  }

  else
  {
    v184 = v239;
    sub_1CF717E1C(v239);
    sub_1CEFCCC44(v167, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFE522C(v170, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v175, &qword_1EC4C1330, &unk_1CFA13480);
    sub_1CEFE522C(v177, type metadata accessor for VFSItem);
    v182 = v269;
    v135 = v235;
    v178 = v229;
    v183 = v210;
    v179 = v237;
    v180 = v219;
    v181 = v218;
  }

  v185 = *(v217 + 48);
  sub_1CEFE55D0(v183, v181, &qword_1EC4C1310, &qword_1CFA08AC8);
  v186 = updated;
  sub_1CEFE55D0(v169, v181 + *(updated + 20), &unk_1EC4BEC00, &unk_1CF9FCB60);
  *(v181 + *(v186 + 24)) = v182;
  sub_1CEFE522C(v184, type metadata accessor for VFSItem);

  sub_1CF4EB118(v179);

  sub_1CEFE4D30(v225, v180, type metadata accessor for VFSItem);
  sub_1CEFE4D30(v181, v180 + v185, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
  v187 = sub_1CF9E56C8();
  v188 = *(v187 + 48);
  v189 = *(v187 + 52);
  swift_allocObject();
  sub_1CF9E56B8();
  sub_1CF9E5698();
  sub_1CF725648(&qword_1EC4C2950, type metadata accessor for VFSItem);
  v190 = sub_1CF9E56A8();
  if (v178)
  {
    v126 = v178;
    sub_1CEFCCC44(v180, &qword_1EC4C2948, &unk_1CFA13490);

    sub_1CF4EB118(v179);
    goto LABEL_38;
  }

  v194 = v190;
  v195 = v191;

  v196 = sub_1CF9E5B48();
  (v135)[2](v135, v196, 0);

  sub_1CF4EB118(v179);
  sub_1CEFE4714(v194, v195);
  sub_1CEFCCC44(v180, &qword_1EC4C2948, &unk_1CFA13490);
}

void sub_1CF72826C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, const void *a8)
{
  v68 = a8;
  v66 = a7;
  v63 = a6;
  v62 = a5;
  v65 = a4;
  *&v67 = a3;
  v8 = type metadata accessor for VFSItem(0);
  v64 = *(v8 - 8);
  v9 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2958, &qword_1CFA134A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - v14;
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation();
  v17 = *(updated - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E5688();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  v24 = v66;
  v25 = v65;
  v61 = v17;
  v26 = updated;
  v27 = v64;
  v58 = v8;
  v59 = v20;
  v57 = v11;
  v60 = v15;
  v28 = v77;
  v29 = v78;
  v30 = v79;
  v31 = v80;
  v32 = v81;
  v33 = v67;
  if (v67)
  {
    v67 = v77;
    VFSItemID.init(rawValue:)([v33 integerValue], &v77);
    v28 = v67;
    v34 = v77;
    v35 = BYTE8(v77);
  }

  else
  {
    v34 = 0;
    v35 = -1;
  }

  v36 = v27;
  if (!*(v24 + 24))
  {
    goto LABEL_14;
  }

  v37 = v26;
  *&v67 = v12;
  v77 = v28;
  v78 = v29;
  v79 = v30;
  v80 = v31;
  v81 = v32;
  v75 = v34;
  v76 = v35;
  v38 = v61;
  if (v62)
  {
    v73 = v25;
    v74 = v62;
    v71 = 58;
    v72 = 0xE100000000000000;
    v69 = 47;
    v70 = 0xE100000000000000;
    sub_1CEFE4E68();

    v39 = sub_1CF9E7668();
  }

  else
  {

    v39 = 0;
    v40 = 0;
  }

  v41 = v68;
  v73 = v39;
  v74 = v40;
  v42 = sub_1CF5028E0(&v77, &v75, &v73, v63 & 1);

  if (!*(v42 + 2))
  {
    __break(1u);
LABEL_14:
    _Block_release(v68);
    __break(1u);
    return;
  }

  v43 = v59;
  sub_1CEFE4FF4(v42 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), v59, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);

  v44 = *(v37 + 20);
  v45 = *(v43 + *(v37 + 24));
  v46 = *(v67 + 48);
  v47 = *(v67 + 64);
  v48 = v60;
  sub_1CEFCCBDC(v43, v60, &qword_1EC4C1310, &qword_1CFA08AC8);
  sub_1CEFCCBDC(v43 + v44, v48 + v46, &unk_1EC4BEC00, &unk_1CF9FCB60);
  *(v48 + v47) = v45;
  if ((*(v36 + 48))(v48 + v46, 1, v58) == 1)
  {
    (*(v41 + 2))(v41, 0, v45, 0);
  }

  else
  {
    v49 = v57;
    sub_1CEFE4D30(v48 + v46, v57, type metadata accessor for VFSItem);
    v50 = sub_1CF9E56C8();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    sub_1CF725648(&qword_1EC4C2950, type metadata accessor for VFSItem);
    v53 = sub_1CF9E56A8();
    v55 = v54;

    v56 = sub_1CF9E5B48();
    (*(v41 + 2))(v41, v56, v45, 0);

    sub_1CEFE4714(v53, v55);
    sub_1CEFE522C(v49, type metadata accessor for VFSItem);
  }

  sub_1CEFE522C(v43, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
  sub_1CEFCCC44(v48, &qword_1EC4C1310, &qword_1CFA08AC8);
}

void sub_1CF7288E8(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, const void *a7)
{
  v89 = a2;
  v90 = a7;
  *&v84 = a6;
  v85 = a3;
  v88 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v81 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v75 - v13;
  v87 = type metadata accessor for VFSItem(0);
  v82 = *(v87 - 8);
  v14 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation();
  v17 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v75 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v75 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v75 - v27;
  v29 = sub_1CF9E5688();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_1CEFE42D4(a4, a5);
  sub_1CF9E5678();
  sub_1CF190978();
  sub_1CF9E5668();
  v80 = v22;
  v78 = v25;
  v33 = v86;
  v32 = v87;
  v79 = v28;

  sub_1CEFE4714(a4, a5);
  v34 = v92;
  v35 = *(v29 + 48);
  v36 = *(v29 + 52);
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  if ((v85 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v89 = v34;
  if (v85 > 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v38 = *(v84 + 24);
  v88 = v19;
  if (!v38)
  {
LABEL_20:
    _Block_release(v90);
    __break(1u);
    goto LABEL_21;
  }

  v39 = v33;
  *&v37 = v93;
  v40 = v94;
  v41 = v95;
  v42 = *(v38 + 16);
  v91 = v95;
  v84 = v92;
  v77 = v37;

  v43 = v83;
  sub_1CF263024(&v91, &v92, 2049, v83);
  v76 = v38;
  v75 = v40;

  v44 = v82 + 48;
  v45 = *(v82 + 48);
  if (v45(v43, 1, v32) != 1)
  {
    v82 = v44;
    v52 = sub_1CEFE4D30(v43, v39, type metadata accessor for VFSItem);
    v53 = *(v39 + 16);
    v54 = *(v39 + 24);
    MEMORY[0x1EEE9AC00](v52);
    *(&v75 - 4) = v76;
    *(&v75 - 3) = v39;
    v55 = v88;
    *(&v75 - 2) = v89;
    *(&v75 - 8) = v56;
    v57 = v80;
    sub_1CF7136CC(v80, v55, v58, v59, sub_1CF72A310, (&v75 - 6));

    v60 = v78;
    sub_1CEFE4D30(v57, v78, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFE522C(v55, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFE522C(v39, type metadata accessor for VFSItem);
    v61 = v79;
    sub_1CEFE4D30(v60, v79, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    v62 = updated;
    v63 = v81;
    sub_1CEFCCBDC(v61 + *(updated + 20), v81, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if (v45(v63, 1, v32) != 1)
    {

      v64 = sub_1CF9E56C8();
      v65 = *(v64 + 48);
      v66 = *(v64 + 52);
      swift_allocObject();
      sub_1CF9E56B8();
      sub_1CF9E5698();
      sub_1CF725648(&qword_1EC4C2950, type metadata accessor for VFSItem);
      v70 = sub_1CF9E56A8();
      v72 = v71;

      sub_1CEFE522C(v63, type metadata accessor for VFSItem);
      v73 = *(v61 + *(v62 + 24));
      v74 = sub_1CF9E5B48();
      (*(v90 + 2))(v90, v74, v73, 0);

      sub_1CEFE4714(v70, v72);
      sub_1CEFE522C(v61, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
      return;
    }

LABEL_21:
    _Block_release(v90);
    __break(1u);
    return;
  }

  sub_1CEFCCC44(v43, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v46 = (v41 - 1) < 2 || v77 == 0;
  v47 = v46;
  if (v46)
  {
    v48 = v84;
  }

  else
  {
    v48 = v77;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
  v49 = swift_allocError();
  *v50 = v48;
  *(v50 + 8) = v47;
  *(v50 + 16) = 0u;
  *(v50 + 32) = 0u;
  *(v50 + 48) = 0u;
  *(v50 + 64) = 0u;
  *(v50 + 80) = 0u;
  *(v50 + 96) = 0u;
  *(v50 + 112) = 0u;
  sub_1CF2A8DE0(v50);
  swift_willThrow();
  v51 = v49;

  v67 = v90;
  v68 = v49;
  v69 = sub_1CF9E57E8();
  (*(v67 + 2))(v67, 0, 0, v69);
}

void sub_1CF729134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7)
{
  v101 = a7;
  v97 = a6;
  v98 = a3;
  v92 = a5;
  v99 = a4;
  *&v100 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v91 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v84 - v11;
  v12 = type metadata accessor for VFSItem(0);
  v13 = *(v12 - 8);
  v94 = v12;
  v95 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation();
  v17 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v84 - v27;
  v29 = type metadata accessor for ItemMetadata();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1CF9E5688();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();
  v88 = v22;
  v86 = v25;
  v89 = v19;
  v85 = updated;
  v87 = v28;

  v36 = v104;
  v90 = v103;
  *&v37 = v105;
  v100 = v37;
  v38 = v106;
  v39 = v107;
  v40 = v108;
  v41 = *(v33 + 48);
  v42 = *(v33 + 52);
  swift_allocObject();
  v43 = sub_1CF9E5678();
  sub_1CF725648(&qword_1EC4BEAB0, type metadata accessor for ItemMetadata);
  sub_1CF9E5668();
  v44 = v90;
  v45 = *(v97 + 24);
  if (!v45)
  {
    _Block_release(v101);
    __break(1u);
    goto LABEL_21;
  }

  v46 = *(v45 + 16);
  v102[0] = v40;
  v103 = v90;
  v104 = v36;
  v105 = v100;
  v106 = v38;
  v107 = v39;

  v47 = v96;
  sub_1CF263024(v102, &v103, 2049, v96);
  v48 = v44;
  v98 = v43;
  v99 = v32;

  v49 = v95 + 48;
  v50 = *(v95 + 48);
  if (v50(v47, 1, v94) != 1)
  {
    v95 = v49;
    v57 = v93;
    v58 = sub_1CEFE4D30(v47, v93, type metadata accessor for VFSItem);
    v59 = *(v57 + 16);
    v60 = *(v57 + 24);
    MEMORY[0x1EEE9AC00](v58);
    *(&v84 - 4) = v57;
    *(&v84 - 3) = v45;
    v61 = v99;
    *(&v84 - 2) = v92;
    *(&v84 - 1) = v61;
    v62 = v88;
    v63 = v89;
    sub_1CF7136CC(v88, v89, v64, v65, sub_1CF72A32C, (&v84 - 6));
    *&v100 = 0;

    v68 = v86;
    sub_1CEFE4D30(v62, v86, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFE522C(v63, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFE522C(v57, type metadata accessor for VFSItem);
    v69 = v68;
    v70 = v87;
    sub_1CEFE4D30(v69, v87, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    v71 = v85;
    v72 = v91;
    sub_1CEFCCBDC(v70 + *(v85 + 20), v91, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v73 = v50(v72, 1, v94);
    if (v73 != 1)
    {

      v74 = sub_1CF9E56C8();
      v75 = *(v74 + 48);
      v76 = *(v74 + 52);
      swift_allocObject();
      sub_1CF9E56B8();
      sub_1CF9E5698();
      sub_1CF725648(&qword_1EC4C2950, type metadata accessor for VFSItem);
      v56 = v100;
      v77 = sub_1CF9E56A8();
      v79 = v99;
      if (!v56)
      {
        v80 = v77;
        v81 = v78;

        sub_1CEFE522C(v72, type metadata accessor for VFSItem);
        v82 = *(v70 + *(v71 + 24));
        v83 = sub_1CF9E5B48();
        (*(v101 + 2))(v101, v83, v82, 0);

        sub_1CEFE4714(v80, v81);
        sub_1CEFE522C(v70, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
        sub_1CEFE522C(v79, type metadata accessor for ItemMetadata);
        return;
      }

      sub_1CEFE522C(v70, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);

      sub_1CEFE522C(v79, type metadata accessor for ItemMetadata);
      sub_1CEFE522C(v72, type metadata accessor for VFSItem);
      goto LABEL_14;
    }

LABEL_21:
    _Block_release(v101);
    __break(1u);
    return;
  }

  sub_1CEFCCC44(v47, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v51 = (v40 - 1) < 2 || v100 == 0;
  v52 = v51;
  if (v51)
  {
    v53 = v48;
  }

  else
  {
    v53 = v100;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
  v54 = swift_allocError();
  *v55 = v53;
  *(v55 + 8) = v52;
  *(v55 + 16) = 0u;
  *(v55 + 32) = 0u;
  *(v55 + 48) = 0u;
  *(v55 + 64) = 0u;
  *(v55 + 80) = 0u;
  *(v55 + 96) = 0u;
  *(v55 + 112) = 0u;
  sub_1CF2A8DE0(v55);
  swift_willThrow();
  v56 = v54;

  sub_1CEFE522C(v99, type metadata accessor for ItemMetadata);

LABEL_14:
  v66 = v56;
  v67 = sub_1CF9E57E8();
  (*(v101 + 2))(v101, 0, 0, v67);
}

void sub_1CF7299E8(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation();
  v7 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17[-v12];
  v14 = sub_1CF9E5688();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  if (*(a3 + 24))
  {

    sub_1CF50917C(v13, v9, &v18);

    sub_1CEFE522C(v9, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFCCC44(v13, &qword_1EC4C1330, &unk_1CFA13480);

    a4[2](a4, 0);
  }

  else
  {
    _Block_release(a4);
    __break(1u);
  }
}

void sub_1CF729C08(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_self() defaultManager];
  v4 = sub_1CF9E5928();
  v13[0] = 0;
  v5 = [v3 removeItemAtURL:v4 error:v13];

  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = v13[0];
    v6(a2, 0);
  }

  else
  {
    v8 = v13[0];
    v9 = sub_1CF9E57F8();

    swift_willThrow();
    v10 = v9;
    v11 = sub_1CF9E57E8();
    (*(a2 + 16))(a2, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1CF729D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_1CF9E5928();
  v6 = sub_1CF9E5928();
  v15[0] = 0;
  v7 = [v4 moveItemAtURL:v5 toURL:v6 error:v15];

  if (v7)
  {
    v8 = *(a3 + 16);
    v9 = v15[0];
    v8(a3, 0);
  }

  else
  {
    v10 = v15[0];
    v11 = sub_1CF9E57F8();

    swift_willThrow();
    v12 = v11;
    v13 = sub_1CF9E57E8();
    (*(a3 + 16))(a3, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1CF729E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v8 = sub_1CF9E5688();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  if (*(a4 + 24))
  {
    if ((a3 & 0x8000000000000000) == 0)
    {

      sub_1CF50A7C8(&v11, a3);

      a5[2](a5, 0);
      return;
    }

    __break(1u);
  }

  _Block_release(a5);
  __break(1u);
}

void sub_1CF729FE4(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void), void (*a5)(__int128 *))
{
  v8 = sub_1CF9E5688();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  if (*(a3 + 24))
  {

    a5(&v11);

    a4[2](a4, 0);
  }

  else
  {
    _Block_release(a4);
    __break(1u);
  }
}

void sub_1CF72A130(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (**a5)(void, void))
{
  v8 = sub_1CF9E5688();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  if (*(a4 + 24))
  {

    sub_1CF50B864(&v11, a3);

    a5[2](a5, 0);
  }

  else
  {
    _Block_release(a5);
    __break(1u);
  }
}

uint64_t sub_1CF72A2A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF72A344(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v14 = v13;
  result = (*(v9 + 8))(v12, v8);
  v16 = v14 * 1000000000.0;
  if (COERCE__INT64(fabs(v14 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((a2 * 1000000000) >> 64 != (1000000000 * a2) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((1000000000 * a2 * 60) >> 64 != (60000000000 * a2) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((60000000000 * a2 * 60) >> 64 != (3600000000000 * a2) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = 86400000000000 * a2;
  if ((3600000000000 * a2 * 24) >> 64 != (86400000000000 * a2) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = __OFSUB__(v16, v17);
  v19 = v16 - v17;
  if (v18)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v20 = a3;
  if (v19 >= a1)
  {
    sub_1CF6FC3E4();
    v20 = swift_allocError();
    *v21 = a3;
    *(v21 + 8) = a4;
  }

  sub_1CF72A558(a3, a4);
  return v20;
}

id sub_1CF72A558(id result, unsigned __int8 a2)
{
  if (a2 <= 0x10u)
  {
    return result;
  }

  return result;
}

void sub_1CF72A56C(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, char *a5, char *a6)
{
  v7 = v6;
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  if (*(a1 + 112))
  {
    if (*(a1 + 112) == 2)
    {
      v10 = *(a1 + 96);

      v12 = sub_1CF72A344(a2, 1, 0x14, 0x12u);
      v14 = v13;
      sub_1CF6FC3E4();
      swift_allocError();
      *v15 = v12;
      *(v15 + 8) = v14;
      sub_1CF03D7A8(v8, v9, 2u);
      return;
    }

    goto LABEL_7;
  }

  if (v8 != 256)
  {
LABEL_7:
    v23 = sub_1CF72A344(a2, 1, 0x15, 0x12u);
    v25 = v24;
    sub_1CF6FC3E4();
    swift_allocError();
    *v26 = v23;
    *(v26 + 8) = v25;
    return;
  }

  v16 = *(a3 + 24);
  v18 = *(a1 + 104);

  v22 = sub_1CF66FEF4(a1, a4, a5, a6);
  if (v7)
  {
    sub_1CF03D7A8(0x100, v9, 0);
  }

  else
  {
    v27 = v22;
    v41 = v9;
    v28 = *(v22 + 16);
    if (v28)
    {
      v29 = 0;
      v30 = (v22 + 96);
      v31 = 18;
      v32 = 29;
      while (v29 < *(v27 + 16))
      {
        v36 = *(v30 - 3);
        v37 = *(v30 - 64);
        if (v37 == 2)
        {
          v33 = *v30;
          v34 = v36;

          sub_1CF6FC470(v32, v31);
          v35 = v36;

          v31 = 14;
          v32 = v36;
        }

        else
        {
          if (v37 == 1 && v36 != 0)
          {
            v40 = v36;
            sub_1CF6FC470(v32, v31);
            sub_1CF03D7A8(0x100, v41, 0);

            return;
          }

          v36 = v32;
        }

        ++v29;
        v30 += 9;
        if (v28 == v29)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      v31 = 18;
      v36 = 29;
LABEL_21:

      sub_1CF6FC3E4();
      swift_allocError();
      *v39 = v36;
      *(v39 + 8) = v31;
      sub_1CF03D7A8(0x100, v41, 0);
    }
  }
}

id sub_1CF72A7F0(void *a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a2 > 0xCu && a2 - 13 >= 4)
  {
    if (a2 == 17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CF9FA450;
      v5 = *MEMORY[0x1E696A578];
      *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 40) = v6;
      v7 = sub_1CF057690(v2);
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v7;
      *(inited + 56) = v8;
      sub_1CF4E04E8(inited);
      swift_setDeallocating();
      sub_1CF1B8600(inited + 32);
      v9 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v10 = sub_1CF9E6888();
      v11 = sub_1CF9E6618();

      v2 = [v9 initWithDomain:v10 code:v2 userInfo:v11];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1CF72A558(a1, a2);
  }

  return v2;
}

unint64_t sub_1CF72A968(void *a1, unsigned __int8 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v5 = *MEMORY[0x1E696A578];
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v6;
  *&v22 = a1;
  BYTE8(v22) = a2;
  sub_1CF72A558(a1, a2);
  v7 = sub_1CF9E6948();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CF1B8600(inited + 32);
  v10 = sub_1CF72A7F0(a1, a2);
  if (v10)
  {
    v11 = v10;
    v12 = *MEMORY[0x1E696AA08];
    v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v15 = v14;
    swift_getErrorValue();
    v23 = v21;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
    (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v20, v21);
    sub_1CEFE9EB8(&v22, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1CF1D154C(v19, v13, v15, isUniquelyReferenced_nonNull_native);
  }

  return v9;
}

uint64_t sub_1CF72AB24()
{
  result = 1;
  switch(*(v0 + 8))
  {
    case 1:
      result = 2;
      break;
    case 2:
      result = 6;
      break;
    case 3:
      result = 7;
      break;
    case 4:
      result = 8;
      break;
    case 5:
      result = 9;
      break;
    case 6:
      result = 14;
      break;
    case 7:
      result = 15;
      break;
    case 8:
      result = 19;
      break;
    case 9:
      result = 25;
      break;
    case 0xA:
      result = 30;
      break;
    case 0xB:
      result = 5;
      break;
    case 0xC:
      result = 13;
      break;
    case 0xD:
      result = 24;
      break;
    case 0xE:
      result = 28;
      break;
    case 0xF:
      result = 12;
      break;
    case 0x10:
      result = 17;
      break;
    case 0x11:
      result = -109;
      break;
    case 0x12:
      result = qword_1CFA137C8[*v0];
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CF72ABF4(uint64_t a1)
{
  v2 = sub_1CF72B2AC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CF72AC30(uint64_t a1)
{
  v2 = sub_1CF72B2AC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

id sub_1CF72AC6C(id a1, id a2)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v3 = a2;
  v4 = a2;
  v5 = sub_1CF9E57E8();
  v6 = sub_1CF9E57E8();
  v7 = [v5 code];
  if (v7 != [v6 code])
  {

    goto LABEL_10;
  }

  v8 = [v5 domain];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  if (v9 == 0xD000000000000021 && 0x80000001CFA58C80 == v11)
  {

    return v3;
  }

  v13 = sub_1CF9E8048();

  if ((v13 & 1) == 0)
  {

LABEL_10:
    v14 = a1;
    return a1;
  }

  return v3;
}

id sub_1CF72ADB4(uint64_t a1, id a2)
{
  if (a1 > 15)
  {
    switch(a1)
    {
      case 0x10:
        sub_1CF6FC3E4();
        v12 = swift_allocError();
        *v11 = a2;
        v13 = 7;
        break;
      case 0x400:
        sub_1CF6FC3E4();
        v3 = swift_allocError();
        *v24 = a2;
        *(v24 + 8) = 1;
        if (!a2)
        {
          return v3;
        }

        v25 = a2;
        v26 = a2;
        v27 = a2;
        v8 = sub_1CF9E57E8();
        v9 = sub_1CF9E57E8();
        v28 = [v8 code];
        if (v28 == [v9 code])
        {
          goto LABEL_22;
        }

LABEL_25:

        return v3;
      case 0x100000:
        sub_1CF6FC3E4();
        v12 = swift_allocError();
        *v11 = a2;
        v13 = 9;
        break;
      default:
LABEL_16:
        if (a2)
        {
          v19 = a2;
          return a2;
        }

        else
        {
          sub_1CF6FC3E4();
          v3 = swift_allocError();
          *v34 = 0;
          *(v34 + 8) = 18;
        }

        return v3;
    }

LABEL_19:
    *(v11 + 8) = v13;
    v20 = a2;
    v21 = a2;
    v22 = sub_1CF72AC6C(v12, a2);

    return v22;
  }

  if (a1 == 2)
  {
    sub_1CF6FC3E4();
    v3 = swift_allocError();
    *v14 = a2;
    *(v14 + 8) = 0;
    if (!a2)
    {
      return v3;
    }

    v15 = a2;
    v16 = a2;
    v17 = a2;
    v8 = sub_1CF9E57E8();
    v9 = sub_1CF9E57E8();
    v18 = [v8 code];
    if (v18 == [v9 code])
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (a1 == 4)
  {
    sub_1CF6FC3E4();
    v12 = swift_allocError();
    *v11 = a2;
    v13 = 6;
    goto LABEL_19;
  }

  if (a1 != 8)
  {
    goto LABEL_16;
  }

  sub_1CF6FC3E4();
  v3 = swift_allocError();
  *v4 = a2;
  *(v4 + 8) = 5;
  if (!a2)
  {
    return v3;
  }

  v5 = a2;
  v6 = a2;
  v7 = a2;
  v8 = sub_1CF9E57E8();
  v9 = sub_1CF9E57E8();
  v10 = [v8 code];
  if (v10 != [v9 code])
  {
    goto LABEL_25;
  }

LABEL_22:
  v29 = [v8 domain];
  v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v32 = v31;

  if (v30 == 0xD000000000000021 && 0x80000001CFA58C80 == v32)
  {
  }

  else
  {
    v33 = sub_1CF9E8048();

    if ((v33 & 1) == 0)
    {

      return v3;
    }
  }

  return a2;
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon27FPCKPendingSetInternalErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 0x1Fu) <= 0x11)
  {
    return *(a1 + 8) & 0x1F;
  }

  else
  {
    return (*a1 + 18);
  }
}

uint64_t sub_1CF72B1F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEE && *(a1 + 9))
  {
    return (*a1 + 238);
  }

  v3 = *(a1 + 8);
  if (v3 <= 0x12)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1CF72B23C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xED)
  {
    *(result + 8) = 0;
    *result = a2 - 238;
    if (a3 >= 0xEE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CF72B280(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x12)
  {
    *result = a2 - 18;
    LOBYTE(a2) = 18;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1CF72B2AC()
{
  result = qword_1EC4C29C8;
  if (!qword_1EC4C29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C29C8);
  }

  return result;
}

uint64_t sub_1CF72B300(uint64_t a1)
{
  v3 = *(a1 + 80);
  v5 = *(a1 + 96);
  result = type metadata accessor for ReconciliationID();
  if (v2 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF72B3A4(uint64_t a1, void *a2)
{
  sub_1CF9E81D8();
  sub_1CF01D348(v4, a2);
  return sub_1CF9E8228();
}

uint64_t sub_1CF72B3EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[4];
  v4 = a3[5];
  return sub_1CF024490(a1, a2, a3[2], a3[3]);
}

void sub_1CF72B3FC(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x68);
  sub_1CF72B894();
}

uint64_t sub_1CF72B464(uint64_t a1)
{
  v3 = *(a1 + 80);
  v5 = *(a1 + 96);
  result = type metadata accessor for ItemReconciliation();
  if (v2 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF72B50C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF72B588(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1CF72B6B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1CF72B8C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v14 = v3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  if (v5 <= 0x3F)
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2310, &unk_1CFA11710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    swift_getTupleTypeMetadata();
    if (v6 <= 0x3F)
    {
      swift_getTupleTypeMetadata2();
      if (v7 <= 0x3F)
      {
        sub_1CF9E75D8();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
        swift_getTupleTypeMetadata3();
        if (v8 <= 0x3F)
        {
          swift_getTupleTypeMetadata2();
          if (v9 <= 0x3F)
          {
            sub_1CF72C444();
            if (v10 <= 0x3F && v14 <= 0x3F)
            {
              swift_getTupleTypeMetadata2();
              if (v11 <= 0x3F)
              {
                sub_1CF72C474();
                if (v12 <= 0x3F)
                {
                  swift_getTupleTypeMetadata2();
                  if (v13 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1CF72BCC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 64);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 80);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 80);
  v13 = *(v9 + 64);
  v14 = (((((v10 | v12 | 7) + v8) & ~(v10 | v12 | 7)) + ((((*(v11 + 64) + ((v12 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v7 + 80);
  v17 = ((((v8 + 7 + ((v16 + 16 + v15) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v18 = ((v16 + 16) & ~v16) + v8;
  if (*(v7 + 84))
  {
    v19 = v8;
  }

  else
  {
    v19 = v8 + 1;
  }

  v20 = ((v19 + ((v8 + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v21 = ((v19 + v16) & ~v16) + v8;
  v22 = ((v13 + v10) & ~v10) + v13;
  v23 = v15 + 8;
  if (v8 > v17)
  {
    v17 = v8;
  }

  if (v14 <= v18)
  {
    v14 = v18;
  }

  if (v20 > v21)
  {
    v21 = v20;
  }

  if (v22 > v23)
  {
    v23 = v22;
  }

  if (v17 > v14)
  {
    v14 = v17;
  }

  if (v21 <= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v21;
  }

  if (v14 <= v24)
  {
    v14 = v24;
  }

  v25 = 8;
  if (v14 > 8)
  {
    v25 = v14;
  }

  v26 = 244 - (0xDu >> (8 * v25));
  if (v25 > 3)
  {
    v26 = 244;
  }

  if (!a2)
  {
    return 0;
  }

  if (v26 >= a2)
  {
    goto LABEL_45;
  }

  v27 = v25 + 1;
  v28 = 8 * (v25 + 1);
  if ((v25 + 1) <= 3)
  {
    v31 = ((~(-1 << v28) + a2 - v26) >> v28) + 1;
    if (HIWORD(v31))
    {
      v29 = *(a1 + v27);
      if (!v29)
      {
        goto LABEL_45;
      }

      goto LABEL_34;
    }

    if (v31 > 0xFF)
    {
      v29 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_45;
      }

      goto LABEL_34;
    }

    if (v31 < 2)
    {
LABEL_45:
      v33 = *(a1 + v25);
      if (v26 <= (v33 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v33);
      }
    }
  }

  v29 = *(a1 + v27);
  if (!*(a1 + v27))
  {
    goto LABEL_45;
  }

LABEL_34:
  v32 = (v29 - 1) << v28;
  if (v27 > 3)
  {
    v32 = 0;
  }

  if (v27)
  {
    if (v27 > 3)
    {
      LODWORD(v27) = 4;
    }

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        LODWORD(v27) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v27) = *a1;
      }
    }

    else if (v27 == 1)
    {
      LODWORD(v27) = *a1;
    }

    else
    {
      LODWORD(v27) = *a1;
    }
  }

  return v26 + (v27 | v32) + 1;
}

void sub_1CF72C04C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 80);
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 80);
  v14 = *(v10 + 64);
  v15 = (((((v11 | v13 | 7) + v9) & ~(v11 | v13 | 7)) + ((((*(v12 + 64) + ((v13 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v8 + 80);
  if (((((v9 + 7 + ((v17 + 16 + v16) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > v15)
  {
    v15 = ((((v9 + 7 + ((v17 + 16 + v16) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (((v17 + 16) & ~v17) + v9 > v15)
  {
    v15 = ((v17 + 16) & ~v17) + v9;
  }

  if (*(v8 + 84))
  {
    v18 = v9;
  }

  else
  {
    v18 = v9 + 1;
  }

  if (((v18 + ((v9 + v17) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v15)
  {
    v15 = ((v18 + ((v9 + v17) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (((v18 + v17) & ~v17) + v9 > v15)
  {
    v15 = ((v18 + v17) & ~v17) + v9;
  }

  if (v15 <= v9)
  {
    v15 = v9;
  }

  v19 = ((v14 + v11) & ~v11) + v14;
  if (v15 <= v19)
  {
    v15 = v19;
  }

  if (v15 <= v16 + 8)
  {
    v15 = v16 + 8;
  }

  if (v15 <= 8)
  {
    v15 = 8;
  }

  v20 = 244 - (0xDu >> (8 * v15));
  if (v15 > 3)
  {
    v20 = 244;
  }

  v21 = v15 + 1;
  if (v20 >= a3)
  {
    v22 = 0;
  }

  else
  {
    v22 = 1;
    if (v21 <= 3)
    {
      v23 = ((~(-1 << (8 * v21)) + a3 - v20) >> (8 * v21)) + 1;
      v24 = HIWORD(v23);
      if (v23 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v23 >= 2)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      if (v24)
      {
        v22 = 4;
      }

      else
      {
        v22 = v26;
      }
    }
  }

  if (v20 >= a2)
  {
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

LABEL_50:
        a1[v15] = -a2;
        return;
      }

      *&a1[v21] = 0;
    }

    else if (v22)
    {
      a1[v21] = 0;
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

    goto LABEL_50;
  }

  v27 = ~v20 + a2;
  if (v21 >= 4)
  {
    bzero(a1, v21);
    *a1 = v27;
    v28 = 1;
    if (v22 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v28 = (v27 >> (8 * v21)) + 1;
  if (v15 == -1)
  {
LABEL_54:
    if (v22 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v29 = v27 & ~(-1 << (8 * v21));
  bzero(a1, v21);
  if (v21 == 3)
  {
    *a1 = v29;
    a1[2] = BYTE2(v29);
    goto LABEL_54;
  }

  if (v21 == 2)
  {
    *a1 = v29;
    if (v22 > 1)
    {
LABEL_58:
      if (v22 == 2)
      {
        *&a1[v21] = v28;
      }

      else
      {
        *&a1[v21] = v28;
      }

      return;
    }
  }

  else
  {
    *a1 = v27;
    if (v22 > 1)
    {
      goto LABEL_58;
    }
  }

LABEL_55:
  if (v22)
  {
    a1[v21] = v28;
  }
}

uint64_t sub_1CF72C444()
{
  result = qword_1EDEA3748;
  if (!qword_1EDEA3748)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EDEA3748);
  }

  return result;
}

void sub_1CF72C474()
{
  if (!qword_1EDEA3378)
  {
    sub_1CF6116E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEA3378);
    }
  }
}

id sub_1CF72C4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v6 = TupleTypeMetadata[12];
  v7 = TupleTypeMetadata[16];
  v11 = TupleTypeMetadata[20];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);
  type metadata accessor for FileItemVersion();
  v9 = sub_1CF9E75D8();
  (*(*(v9 - 8) + 16))(a4 + v6, a2, v9);
  *(a4 + v7) = a3;
  *(a4 + v11) = 0;
  type metadata accessor for FileTreeError();
  swift_storeEnumTagMultiPayload();
  return a3;
}

uint64_t sub_1CF72C75C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v29 = *(a1 + 16);
      v28 = *(a1 + 24);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v31 = sub_1CF9E75D8();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v14 = *&v6[*(TupleTypeMetadata3 + 64)];
      (*(*(v31 - 8) + 8))(&v6[*(TupleTypeMetadata3 + 48)], v31);
      (*(*(AssociatedTypeWitness - 8) + 8))(v6, AssociatedTypeWitness);
      return v14;
    }

    if (EnumCaseMultiPayload == 8)
    {
      return *v6;
    }

LABEL_8:
    (*(v2 + 8))(v6, a1);
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    strcpy(&v34[-6], " at originalError previousError ");
    v19 = a1 + 16;
    v18 = *(a1 + 16);
    v17 = *(v19 + 8);
    v35 = swift_getAssociatedTypeWitness();
    v20 = swift_getAssociatedTypeWitness();
    v21 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v23 = swift_getAssociatedConformanceWitness();
    v34[1] = v20;
    v34[2] = v21;
    v34[3] = AssociatedConformanceWitness;
    v34[4] = v23;
    type metadata accessor for FileItemVersion();
    v36 = sub_1CF9E75D8();
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v38 = v37;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v25 = TupleTypeMetadata[12];
    v14 = *&v6[TupleTypeMetadata[16]];

    v35 = v20;
    v36 = v21;
    v37 = AssociatedConformanceWitness;
    v38 = v23;
    type metadata accessor for FileItemVersion();
    v26 = sub_1CF9E75D8();
    (*(*(v26 - 8) + 8))(&v6[v25], v26);
    v27 = swift_getAssociatedTypeWitness();
    (*(*(v27 - 8) + 8))(v6, v27);
    return v14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_8;
  }

  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  strcpy(&v34[-6], " filename below syncability originalError ");
  v10 = a1 + 16;
  v9 = *(a1 + 16);
  v8 = *(v10 + 8);
  v35 = swift_getAssociatedTypeWitness();
  v36 = &type metadata for Filename;
  v37 = v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2310, &unk_1CFA11710);
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
  v11 = swift_getTupleTypeMetadata();
  v12 = *&v6[v11[12] + 8];

  v13 = v11[16];
  sub_1CF480620(*&v6[v11[20]], *&v6[v11[20] + 8]);
  v14 = *&v6[v11[24]];
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(*(v15 - 8) + 8);
  v16(&v6[v13], v15);
  v16(v6, v15);
  return v14;
}

uint64_t sub_1CF72CD14()
{
  v0 = type metadata accessor for FileTreeError();
  swift_getMetatypeMetadata();
  v1 = sub_1CF9E6968();
  v18 = 46;
  v19 = 0xE100000000000000;
  v15 = &v18;
  v3 = sub_1CF2A8918(0x7FFFFFFFFFFFFFFFLL, 1, sub_1CF25107C, v14, v1, v2, 0x2EuLL);
  if (v3[2])
  {
    v4 = v3[4];
    v5 = v3[5];
    v7 = v3[6];
    v6 = v3[7];
  }

  else
  {

    v4 = sub_1CF9E7608();
    v5 = v8;
    v7 = v9;
    v6 = v10;
  }

  v18 = v0;
  v22 = sub_1CF9E6968();
  v23 = v11;
  v18 = v4;
  v19 = v5;
  v20 = v7;
  v21 = v6;
  v16 = 0x6E7973736662696CLL;
  v17 = 0xE900000000000063;
  sub_1CEFE4E68();
  sub_1CF611768();
  v12 = sub_1CF9E7668();

  return v12;
}

uint64_t sub_1CF72CEA8(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 7;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      MEMORY[0x1EEE9AC00](7);
      strcpy(&v52[-6], " filename below syncability originalError ");
      v31 = a1 + 16;
      v30 = *(a1 + 16);
      v29 = *(v31 + 8);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v54 = &type metadata for Filename;
      v55 = AssociatedTypeWitness;
      v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2310, &unk_1CFA11710);
      v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v33 = *&v6[TupleTypeMetadata[12] + 8];

      v34 = TupleTypeMetadata[16];
      sub_1CF480620(*&v6[TupleTypeMetadata[20]], *&v6[TupleTypeMetadata[20] + 8]);

      v35 = swift_getAssociatedTypeWitness();
      v36 = *(*(v35 - 8) + 8);
      v36(&v6[v34], v35);
      v36(v6, v35);
      result = 1;
      break;
    case 2:
      v37 = *(v6 + 1);

      v39 = *(a1 + 16);
      v38 = *(a1 + 24);
      v40 = swift_getAssociatedTypeWitness();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(v40 - 8) + 8))(&v6[*(TupleTypeMetadata2 + 48)], v40);
      result = 2;
      break;
    case 3:
      v24 = *(a1 + 16);
      v23 = *(a1 + 24);
      v25 = swift_getAssociatedTypeWitness();
      v26 = sub_1CF9E75D8();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v28 = *(TupleTypeMetadata3 + 48);

      (*(*(v26 - 8) + 8))(&v6[v28], v26);
      (*(*(v25 - 8) + 8))(v6, v25);
      result = 3;
      break;
    case 4:
      v43 = *(a1 + 16);
      v42 = *(a1 + 24);
      v44 = swift_getAssociatedTypeWitness();
      v45 = sub_1CF9E75D8();
      v46 = swift_getTupleTypeMetadata2();
      (*(*(v44 - 8) + 8))(&v6[*(v46 + 48)], v44);
      (*(*(v45 - 8) + 8))(v6, v45);
      result = 4;
      break;
    case 5:
      if (*v6)
      {
        result = 11;
      }

      else
      {
        result = 22;
      }

      break;
    case 6:
      (*(v2 + 8))(v6, a1);
      result = 5;
      break;
    case 7:
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      v49 = swift_getAssociatedTypeWitness();
      v50 = swift_getTupleTypeMetadata2();
      v51 = *(*(v49 - 8) + 8);
      v51(&v6[*(v50 + 48)], v49);
      v51(v6, v49);
      result = 6;
      break;
    case 8:
      (*(v2 + 8))(v6, a1);
      result = 15;
      break;
    case 9:
      (*(v2 + 8))(v6, a1);
      result = 23;
      break;
    case 10:
      v21 = *(a1 + 16);
      v20 = *(a1 + 24);
      v22 = swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);

      (*(*(v22 - 8) + 8))(v6, v22);
      result = 25;
      break;
    case 11:
      return result;
    case 12:
      result = 8;
      break;
    case 13:
      result = 9;
      break;
    case 14:
      result = 10;
      break;
    case 15:
      result = 12;
      break;
    case 16:
      result = 13;
      break;
    case 17:
      result = 14;
      break;
    case 18:
      result = 16;
      break;
    case 19:
      result = 17;
      break;
    case 20:
      result = 18;
      break;
    case 21:
      result = 19;
      break;
    case 22:
      result = 20;
      break;
    case 23:
      result = 24;
      break;
    case 24:
      result = 26;
      break;
    default:
      MEMORY[0x1EEE9AC00](7);
      strcpy(&v52[-6], " at originalError previousError ");
      v11 = a1 + 16;
      v10 = *(a1 + 16);
      v9 = *(v11 + 8);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v12 = swift_getAssociatedTypeWitness();
      v13 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v15 = swift_getAssociatedConformanceWitness();
      v52[1] = v12;
      v52[2] = v13;
      v52[3] = AssociatedConformanceWitness;
      v52[4] = v15;
      type metadata accessor for FileItemVersion();
      v54 = sub_1CF9E75D8();
      v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      v56 = v55;
      v16 = swift_getTupleTypeMetadata();
      v17 = v16[12];

      AssociatedTypeWitness = v12;
      v54 = v13;
      v55 = AssociatedConformanceWitness;
      v56 = v15;
      type metadata accessor for FileItemVersion();
      v18 = sub_1CF9E75D8();
      (*(*(v18 - 8) + 8))(&v6[v17], v18);
      v19 = swift_getAssociatedTypeWitness();
      (*(*(v19 - 8) + 8))(v6, v19);
      result = 0;
      break;
  }

  return result;
}

unint64_t sub_1CF72D79C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v48 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v12 = *MEMORY[0x1E696A578];
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v13;
  v14 = *(v4 + 16);
  v14(v10, v2, a1);
  v15 = sub_1CF9E6948();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v15;
  *(inited + 56) = v16;
  v17 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
  v57 = v17;
  v18 = sub_1CF72C75C(a1);
  if (v18)
  {
    *&v54 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v19 = sub_1CF1B7E64();
    if (swift_dynamicCast())
    {
      v20 = v51;
      v21 = *MEMORY[0x1E696AA08];
      v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v24 = v23;
      v56 = v19;
      *&v54 = v20;
      sub_1CEFE9EB8(&v54, &v51);
      v25 = v20;
      v26 = v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v26;
      sub_1CF1D154C(&v51, v22, v24, isUniquelyReferenced_nonNull_native);

      v17 = v50;
      v57 = v50;
    }
  }

  v14(v7, v2, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    (*(v4 + 8))(v7, a1);
  }

  else
  {
    v48[0] = v48;
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    strcpy(&v48[-6], " at originalError previousError ");
    v30 = *(a1 + 16);
    v29 = *(a1 + 24);
    *&v54 = swift_getAssociatedTypeWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v32 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v34 = swift_getAssociatedConformanceWitness();
    *&v51 = AssociatedTypeWitness;
    *(&v51 + 1) = v32;
    v52 = AssociatedConformanceWitness;
    v53 = v34;
    type metadata accessor for FileItemVersion();
    *(&v54 + 1) = sub_1CF9E75D8();
    v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v56 = v55;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v36 = TupleTypeMetadata[12];

    v37 = *&v7[TupleTypeMetadata[20]];
    *&v54 = AssociatedTypeWitness;
    *(&v54 + 1) = v32;
    v55 = AssociatedConformanceWitness;
    v56 = v34;
    type metadata accessor for FileItemVersion();
    v38 = sub_1CF9E75D8();
    (*(*(v38 - 8) + 8))(&v7[v36], v38);
    v39 = swift_getAssociatedTypeWitness();
    (*(*(v39 - 8) + 8))(v7, v39);
    if (v37)
    {
      swift_getErrorValue();
      v40 = v48[1];
      v41 = v49;
      v56 = v49;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v54);
      (*(*(v41 - 8) + 16))(boxed_opaque_existential_0, v40, v41);
      sub_1CEFE9EB8(&v54, &v51);
      v43 = v57;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v50 = v43;
      sub_1CF1D154C(&v51, 0xD000000000000012, 0x80000001CFA54B30, v44);
      v45 = v50;
    }

    else
    {
      sub_1CF1CE4A0(0xD000000000000012, 0x80000001CFA54B30, &v54);
      sub_1CEFCCC44(&v54, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      v45 = v57;
    }

    v56 = MEMORY[0x1E69E6370];
    LOBYTE(v54) = 1;
    sub_1CEFE9EB8(&v54, &v51);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v45;
    sub_1CF1D154C(&v51, 0xD000000000000019, 0x80000001CFA54B10, v46);

    return v50;
  }

  return v17;
}

uint64_t sub_1CF72DDB0()
{
  v0 = sub_1CF9E8098();

  if (v0 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1CF72DE08(char a1)
{
  result = 0x46746F4E6D657469;
  switch(a1)
  {
    case 1:
      result = 0x6C6C6F436D657469;
      break;
    case 2:
      result = 0x6F42746F6E6E6163;
      break;
    case 3:
    case 11:
    case 24:
      result = 0xD000000000000012;
      break;
    case 4:
    case 10:
    case 18:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x436E6F6973726576;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6D73694D6D657469;
      break;
    case 9:
    case 14:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x657079546D657469;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 16:
    case 21:
      result = 0xD000000000000018;
      break;
    case 17:
      result = 0x614364616F6C7075;
      break;
    case 19:
      v3 = 10;
      goto LABEL_24;
    case 20:
      result = 0x756B6F6F4C78616DLL;
      break;
    case 22:
      result = 0xD00000000000002CLL;
      break;
    case 23:
      result = 0x54746F4E6D657469;
      break;
    case 25:
      result = 0xD000000000000010;
      break;
    case 26:
      v3 = 9;
LABEL_24:
      result = v3 | 0xD000000000000010;
      break;
    case 27:
      result = 0x49746F4E6D657469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CF72E128(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_1CF72CD14();
}

uint64_t sub_1CF72E13C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDC6AD0](a1, WitnessTable);
}

uint64_t sub_1CF72E190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDC6AC0](a1, WitnessTable);
}

uint64_t sub_1CF72E1E4()
{
  swift_getWitnessTable();

  return sub_1CF9E8088();
}

uint64_t sub_1CF72E258(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1CF72E2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1CF72E334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1CF72E3A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_1CF72DDB0();
  *a3 = result;
  return result;
}

unint64_t sub_1CF72E3DC@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = sub_1CF72DE08(*v2);
  *a2 = result;
  a2[1] = v7;
  return result;
}

unint64_t sub_1CF72E40C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1CF72E124(*v1);
}

uint64_t sub_1CF72E418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1CF72DE04(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_1CF72E448@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1CF740A90();
  *a2 = result;
  return result;
}

uint64_t sub_1CF72E474(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF72E4C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF72E51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v58 = a2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1CF9E75D8();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v49 - v10;
  v52 = *(AssociatedTypeWitness - 8);
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v49 - v15;
  v56 = v6;
  v57 = v5;
  v16 = swift_getAssociatedTypeWitness();
  v17 = sub_1CF9E75D8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v49 - v20;
  v22 = *(v16 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v51 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v49 - v28;
  v30 = v3;
  (*(v18 + 16))(v21, v3 + *(a1 + 36), v17, v27);
  if ((*(v22 + 48))(v21, 1, v16) == 1)
  {
    (*(v18 + 8))(v21, v17);
  }

  else
  {
    v31 = *(v22 + 32);
    v31(v29, v21, v16);
    v33 = v54;
    v32 = v55;
    v34 = v30 + *(a1 + 40);
    v35 = v53;
    (*(v54 + 16))(v53, v34, v55);
    v36 = v52;
    if ((*(v52 + 48))(v35, 1, AssociatedTypeWitness) != 1)
    {
      v42 = *(v36 + 32);
      v43 = v49;
      v42(v49, v35, AssociatedTypeWitness);
      v31(v51, v29, v16);
      v44 = v50;
      v42(v50, v43, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v48 = swift_getAssociatedConformanceWitness();
      v45 = v58;
      sub_1CF023878(v51, 0, v44, 0, 0, 0, v16, AssociatedTypeWitness, v58);
      v59 = v16;
      v60 = AssociatedTypeWitness;
      v61 = AssociatedConformanceWitness;
      v62 = v48;
      v39 = type metadata accessor for FileItemVersion();
      v41 = v45;
      v40 = 0;
      return (*(*(v39 - 8) + 56))(v41, v40, 1);
    }

    (*(v22 + 8))(v29, v16);
    (*(v33 + 8))(v35, v32);
  }

  v37 = swift_getAssociatedConformanceWitness();
  v38 = swift_getAssociatedConformanceWitness();
  v59 = v16;
  v60 = AssociatedTypeWitness;
  v61 = v37;
  v62 = v38;
  v39 = type metadata accessor for FileItemVersion();
  v40 = 1;
  v41 = v58;
  return (*(*(v39 - 8) + 56))(v41, v40, 1);
}

uint64_t sub_1CF72EA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v44 = AssociatedTypeWitness;
  v45 = a1;
  (*(v42 + 16))(a6, a1);
  found = type metadata accessor for FileTreeError.ItemNotFoundStruct();
  v13 = *(found + 36);
  swift_getAssociatedTypeWitness();
  v14 = sub_1CF9E75D8();
  v15 = *(v14 - 8);
  v38 = v13;
  v43 = a2;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v41 = v14;
  (*(v15 + 16))(a6 + v13, v16);
  v46 = found;
  v19 = *(found + 40);
  swift_getAssociatedTypeWitness();
  v20 = sub_1CF9E75D8();
  v21 = *(v20 - 8);
  (*(v21 + 16))(a6 + v19, v17, v20);
  if (v18)
  {
    swift_getErrorValue();
    v22 = sub_1CF4C2330(v48, v49);
    if (v47)
    {
      v36 = v19;
      v37 = a6;

      v40 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v22 = 0;
    v23 = 0xF000000000000000;
  }

  v24 = (a6 + *(v46 + 44));
  *v24 = v22;
  v24[1] = v23;
  if (!a5)
  {
    v32 = 0;
    v33 = 0xF000000000000000;
    v34 = v45;
LABEL_12:

    (*(v21 + 8))(v17, v20);
    (*(v15 + 8))(v43, v41);
    result = (*(v42 + 8))(v34, v44);
    v35 = (a6 + *(v46 + 48));
    *v35 = v32;
    v35[1] = v33;
    return result;
  }

  v36 = v19;
  v37 = a6;
  swift_getErrorValue();
  v25 = a5;
  v26 = sub_1CF4C2330(v50, v51);
  if (!v47)
  {
    v32 = v26;
    v33 = v27;

    v34 = v45;
    goto LABEL_12;
  }

  v40 = 1;
LABEL_8:
  v28 = *(v21 + 8);
  v28(v17, v20);
  v29 = *(v15 + 8);
  v29(v43, v41);
  v30 = *(v42 + 8);
  v30(v45, v44);
  v30(v37, v44);
  v29(v37 + v38, v41);
  result = (v28)(v37 + v36, v20);
  if (v40)
  {
    return sub_1CEFE48D8(*(v37 + *(v46 + 44)), *(v37 + *(v46 + 44) + 8));
  }

  return result;
}

uint64_t sub_1CF72EE90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x56746E65746E6F63 && a2 == 0xEE006E6F69737265 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CFA59A40 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CFA59A60 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CFA59A80 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1CF9E8048();

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

unint64_t sub_1CF72F050(unsigned __int8 a1)
{
  v1 = 0x44496D657469;
  v2 = 0xD000000000000011;
  if (a1 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (a1)
  {
    v1 = 0x56746E65746E6F63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CF72F104(void *a1, uint64_t a2)
{
  v23 = a2;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  type metadata accessor for FileTreeError.ItemNotFoundStruct.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1CF9E7F78();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  LOBYTE(v28) = 0;
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 32);
  v26 = v5;
  v11 = v24;
  sub_1CF9E7F08();
  if (v11)
  {
    return (*(v25 + 8))(v8, v26);
  }

  v13 = v23[9];
  LOBYTE(v28) = 1;
  swift_getAssociatedTypeWitness();
  v14 = *(swift_getAssociatedConformanceWitness() + 24);
  sub_1CF9E7E68();
  v15 = v23[10];
  LOBYTE(v28) = 2;
  swift_getAssociatedTypeWitness();
  v16 = *(swift_getAssociatedConformanceWitness() + 24);
  sub_1CF9E7E68();
  v17 = (v27 + v23[11]);
  v18 = v17[1];
  v28 = *v17;
  v29 = v18;
  v30 = 3;
  sub_1CEFF05F4(v28, v18);
  sub_1CF190A74();
  sub_1CF9E7E68();
  v19 = v25;
  sub_1CEFE48D8(v28, v29);
  v20 = (v27 + v23[12]);
  v21 = v20[1];
  v28 = *v20;
  v29 = v21;
  v30 = 4;
  sub_1CEFF05F4(v28, v21);
  sub_1CF9E7E68();
  sub_1CEFE48D8(v28, v29);
  return (*(v19 + 8))(v8, v26);
}

uint64_t sub_1CF72F48C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1CF9E75D8();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v35 - v9;
  v46 = swift_getAssociatedTypeWitness();
  v44 = sub_1CF9E75D8();
  v42 = *(v44 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v35 - v11;
  v50 = swift_getAssociatedTypeWitness();
  v45 = *(v50 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v35 - v13;
  type metadata accessor for FileTreeError.ItemNotFoundStruct.CodingKeys();
  swift_getWitnessTable();
  v52 = sub_1CF9E7E08();
  v48 = *(v52 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v16 = &v35 - v15;
  v49 = a2;
  v47 = a3;
  found = type metadata accessor for FileTreeError.ItemNotFoundStruct();
  v18 = *(found - 1);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](found);
  v21 = &v35 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v53 = v16;
  v23 = v54;
  sub_1CF9E8298();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v18;
  v54 = a1;
  LOBYTE(v55) = 0;
  v24 = v50;
  v25 = *(swift_getAssociatedConformanceWitness() + 24);
  sub_1CF9E7D88();
  v26 = *(v45 + 32);
  v35 = v21;
  v26(v21, v51, v24);
  LOBYTE(v55) = 1;
  v27 = *(swift_getAssociatedConformanceWitness() + 16);
  v28 = v43;
  sub_1CF9E7CF8();
  (*(v42 + 32))(&v35[found[9]], v28, v44);
  LOBYTE(v55) = 2;
  v29 = *(swift_getAssociatedConformanceWitness() + 16);
  v30 = v38;
  sub_1CF9E7CF8();
  (*(v40 + 32))(&v35[found[10]], v30, v41);
  v56 = 3;
  sub_1CF190888();
  sub_1CF9E7CF8();
  v31 = v48;
  v32 = v35;
  *&v35[found[11]] = v55;
  v56 = 4;
  sub_1CF9E7CF8();
  (*(v31 + 8))(v53, v52);
  *&v32[found[12]] = v55;
  v33 = v36;
  (*(v36 + 16))(v37, v32, found);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return (*(v33 + 8))(v32, found);
}

unint64_t sub_1CF72FC34(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1CF72F050(*v1);
}

uint64_t sub_1CF72FC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1CF72EE90(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1CF72FC70@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1CF664CD8();
  *a2 = result;
  return result;
}

uint64_t sub_1CF72FC9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF72FCF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF72FD7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v26 = *a2;
  v23 = a2[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 16);
  v27 = a1;
  v10(a5, a1, AssociatedTypeWitness);
  v11 = type metadata accessor for FileTreeError.ItemCollisionStruct();
  v12 = (a5 + v11[9]);
  *v12 = v26;
  v12[1] = v23;
  v13 = v11[10];
  v10(a5 + v13, a3, AssociatedTypeWitness);
  if (a4)
  {
    swift_getErrorValue();
    v14 = sub_1CF4C2330(v28, v29);
    if (v25)
    {

      v16 = *(v9 + 8);
      v16(a3, AssociatedTypeWitness);
      v16(v27, AssociatedTypeWitness);
      v16(a5, AssociatedTypeWitness);
      v17 = v12[1];

      return (v16)(a5 + v13, AssociatedTypeWitness);
    }

    v19 = v14;
    v20 = v15;
  }

  else
  {
    v19 = 0;
    v20 = 0xF000000000000000;
  }

  v21 = *(v9 + 8);
  v21(a3, AssociatedTypeWitness);
  result = (v21)(v27, AssociatedTypeWitness);
  v22 = (a5 + v11[11]);
  *v22 = v19;
  v22[1] = v20;
  return result;
}

uint64_t sub_1CF72FF9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449746E65726170 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CFA59A60 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CF9E8048();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1CF730104(unsigned __int8 a1)
{
  v1 = 0x44496D657469;
  v2 = 0x4449746E65726170;
  if (a1 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (a1)
  {
    v1 = 0x656D616E656C6966;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CF730180(void *a1, uint64_t a2)
{
  v21[0] = a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for FileTreeError.ItemCollisionStruct.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1CF9E7F78();
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v21[1];
  sub_1CF9E82A8();
  LOBYTE(v24) = 0;
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getAssociatedConformanceWitness() + 32);
  v12 = v23;
  sub_1CF9E7F08();
  if (v12)
  {
    return (*(v22 + 8))(v8, v5);
  }

  v14 = v22;
  v15 = v21[0];
  v16 = (v10 + *(v21[0] + 36));
  v17 = v16[1];
  v24 = *v16;
  v25 = v17;
  v26 = 1;
  sub_1CF1E60E8();

  sub_1CF9E7F08();

  v18 = *(v15 + 40);
  LOBYTE(v24) = 2;
  sub_1CF9E7F08();
  v19 = (v10 + *(v15 + 44));
  v20 = v19[1];
  v24 = *v19;
  v25 = v20;
  v26 = 3;
  sub_1CEFF05F4(v24, v20);
  sub_1CF190A74();
  sub_1CF9E7E68();
  sub_1CEFE48D8(v24, v25);
  return (*(v14 + 8))(v8, v5);
}

uint64_t sub_1CF73045C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v38 = AssociatedTypeWitness;
  v39 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = (&v32 - v10);
  type metadata accessor for FileTreeError.ItemCollisionStruct.CodingKeys();
  swift_getWitnessTable();
  v41 = sub_1CF9E7E08();
  v36 = *(v41 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v32 - v12;
  v37 = a2;
  v14 = type metadata accessor for FileTreeError.ItemCollisionStruct();
  v33 = *(v14 - 8);
  v15 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42 = v13;
  v19 = v43;
  sub_1CF9E8298();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v36;
  v32 = v17;
  v43 = a1;
  LOBYTE(v44) = 0;
  v22 = v38;
  v21 = v39;
  v23 = *(swift_getAssociatedConformanceWitness() + 24);
  sub_1CF9E7D88();
  v24 = *(v21 + 32);
  v24(v32, v40, v22);
  v45 = 1;
  sub_1CF1E613C();
  sub_1CF9E7D88();
  v40 = v24;
  v25 = *(&v44 + 1);
  v26 = v14;
  v27 = &v32[*(v14 + 36)];
  *v27 = v44;
  *(v27 + 1) = v25;
  LOBYTE(v44) = 2;
  v28 = v35;
  sub_1CF9E7D88();
  v40(&v32[*(v26 + 40)], v28, v22);
  v45 = 3;
  sub_1CF190888();
  sub_1CF9E7CF8();
  (*(v20 + 8))(v42, v41);
  v30 = v32;
  v29 = v33;
  *&v32[*(v26 + 44)] = v44;
  (*(v29 + 16))(v34, v30, v26);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return (*(v29 + 8))(v30, v26);
}

uint64_t sub_1CF730994(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F6C6562 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1CF9E8048();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CF730A5C(char a1)
{
  if (a1)
  {
    return 0x776F6C6562;
  }

  else
  {
    return 0x656D616E656C6966;
  }
}

uint64_t sub_1CF730A90(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v17[0] = *(a2 + 24);
  v17[1] = v4;
  type metadata accessor for FileTreeError.CannotBounceStruct.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1CF9E7F78();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v17[2];
  sub_1CF9E82A8();
  v12 = v11[1];
  v18 = *v11;
  v19 = v12;
  v20 = 0;
  sub_1CF1E60E8();

  v13 = v17[3];
  sub_1CF9E7F08();

  if (!v13)
  {
    v14 = *(a2 + 36);
    LOBYTE(v18) = 1;
    swift_getAssociatedTypeWitness();
    v15 = *(swift_getAssociatedConformanceWitness() + 32);
    sub_1CF9E7F08();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CF730CB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 1) = v5;
  v6 = *(type metadata accessor for FileTreeError.CannotBounceStruct() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 32);

  return v8(&a3[v6], a2, AssociatedTypeWitness);
}

uint64_t sub_1CF730D70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v29 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v30 = &v25 - v6;
  type metadata accessor for FileTreeError.CannotBounceStruct.CodingKeys();
  swift_getWitnessTable();
  v35 = sub_1CF9E7E08();
  v31 = *(v35 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v25 - v8;
  v33 = a2;
  v10 = type metadata accessor for FileTreeError.CannotBounceStruct();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v34 = v9;
  v15 = v36;
  sub_1CF9E8298();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = a1;
  v26 = v10;
  v16 = v31;
  v17 = AssociatedTypeWitness;
  v39 = 0;
  sub_1CF1E613C();
  sub_1CF9E7D88();
  v18 = v38;
  v19 = v13;
  *v13 = v37;
  *(v13 + 1) = v18;
  LOBYTE(v37) = 1;
  v20 = *(swift_getAssociatedConformanceWitness() + 24);
  v21 = v30;
  sub_1CF9E7D88();
  (*(v16 + 8))(v34, v35);
  v22 = v26;
  (*(v28 + 32))(&v19[*(v26 + 36)], v21, v17);
  v23 = v27;
  (*(v27 + 16))(v29, v19, v22);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return (*(v23 + 8))(v19, v22);
}

uint64_t sub_1CF731144(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001CFA59AA0 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001CFA59AC0 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001CFA59AE0 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001CFA59B00 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1CF9E8048();

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

unint64_t sub_1CF7312FC(unsigned __int8 a1)
{
  v1 = 0x44496D657469;
  v2 = 0xD000000000000017;
  if (a1 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v1 = 0xD000000000000017;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1CF731398(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1CF730104(*v1);
}

uint64_t sub_1CF7313A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1CF72FF9C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1CF7313D4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1CF740BD0();
  *a2 = result;
  return result;
}

uint64_t sub_1CF731400(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF731454(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF7314F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1CF730A5C(*v1);
}

uint64_t sub_1CF731508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1CF730994(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1CF731538(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF73158C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF731630@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1CF189FC0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1CF731660(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7316B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

unint64_t sub_1CF731750(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1CF7312FC(*v1);
}

uint64_t sub_1CF73175C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1CF731144(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1CF73178C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7317E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF7318D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 16))(a4, a1, AssociatedTypeWitness);
  if (a3)
  {
    swift_getErrorValue();
    v10 = sub_1CF4C2330(v22, v23);
    if (v4)
    {

      v12 = sub_1CF9E75D8();
      (*(*(v12 - 8) + 8))(a2, v12);
      v13 = *(v9 + 8);
      v13(a1, AssociatedTypeWitness);
      return (v13)(a4, AssociatedTypeWitness);
    }

    v15 = v10;
    v16 = v11;
  }

  else
  {
    v15 = 0;
    v16 = 0xF000000000000000;
  }

  (*(v9 + 8))(a1, AssociatedTypeWitness);
  v17 = type metadata accessor for FileTreeError.DirectoryNotEmptyStruct();
  v18 = (a4 + *(v17 + 36));
  *v18 = v15;
  v18[1] = v16;
  v19 = *(v17 + 40);
  v20 = sub_1CF9E75D8();
  return (*(*(v20 - 8) + 32))(a4 + v19, a2, v20);
}

uint64_t sub_1CF731AD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CFA59A60 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696B636F6C62 && a2 == 0xEE0044496D657449)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CF9E8048();

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

uint64_t sub_1CF731BFC(char a1)
{
  if (!a1)
  {
    return 0x44496D657469;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x676E696B636F6C62;
}

uint64_t sub_1CF731C60(void *a1, uint64_t a2)
{
  v20[0] = a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for FileTreeError.DirectoryNotEmptyStruct.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1CF9E7F78();
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v20[1];
  sub_1CF9E82A8();
  LOBYTE(v23) = 0;
  swift_getAssociatedTypeWitness();
  v11 = v8;
  v12 = *(swift_getAssociatedConformanceWitness() + 32);
  v13 = v22;
  sub_1CF9E7F08();
  if (v13)
  {
    return (*(v21 + 8))(v11, v5);
  }

  v15 = v21;
  v16 = v20[0];
  v17 = (v10 + *(v20[0] + 36));
  v18 = v17[1];
  v23 = *v17;
  v24 = v18;
  v25 = 1;
  sub_1CEFF05F4(v23, v18);
  sub_1CF190A74();
  sub_1CF9E7E68();
  sub_1CEFE48D8(v23, v24);
  v19 = *(v16 + 40);
  LOBYTE(v23) = 2;
  sub_1CF9E7E68();
  return (*(v15 + 8))(v11, v5);
}

uint64_t sub_1CF731ED8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1CF9E75D8();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v30 - v8;
  v39 = AssociatedTypeWitness;
  v37 = *(AssociatedTypeWitness - 8);
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v30 - v11;
  type metadata accessor for FileTreeError.DirectoryNotEmptyStruct.CodingKeys();
  swift_getWitnessTable();
  v41 = sub_1CF9E7E08();
  v36 = *(v41 - 8);
  v12 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v14 = &v30 - v13;
  v38 = a2;
  v15 = type metadata accessor for FileTreeError.DirectoryNotEmptyStruct();
  v31 = *(v15 - 8);
  v16 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42 = v14;
  v20 = v43;
  sub_1CF9E8298();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v36;
  v21 = v37;
  v43 = v18;
  LOBYTE(v44) = 0;
  v23 = v39;
  v24 = *(swift_getAssociatedConformanceWitness() + 24);
  sub_1CF9E7D88();
  (*(v21 + 32))(v43, v40, v23);
  v45 = 1;
  sub_1CF190888();
  sub_1CF9E7CF8();
  v40 = v15;
  v25 = *(v15 + 36);
  v26 = v43;
  *&v43[v25] = v44;
  LOBYTE(v44) = 2;
  sub_1CF9E7CF8();
  (*(v22 + 8))(v42, v41);
  v27 = v40;
  (*(v32 + 32))(&v26[*(v40 + 10)], v35, v33);
  v28 = v31;
  (*(v31 + 16))(v34, v26, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v28 + 8))(v26, v27);
}

uint64_t sub_1CF7323BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001CFA59B20 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001CFA59B40 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001CFA59B60 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001CFA59B80 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1CF9E8048();

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

unint64_t sub_1CF73256C(unsigned __int8 a1)
{
  v1 = 0x44496D657469;
  v2 = 0xD000000000000019;
  if (a1 != 3)
  {
    v2 = 0xD000000000000018;
  }

  if (a1 == 2)
  {
    v2 = 0xD000000000000015;
  }

  if (a1)
  {
    v1 = 0xD000000000000016;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CF732604(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v25 = a2;
  v26 = v5;
  a3(255, v6);
  swift_getWitnessTable();
  v7 = sub_1CF9E7F78();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  v33 = 0;
  swift_getAssociatedTypeWitness();
  v13 = *(swift_getAssociatedConformanceWitness() + 32);
  v14 = v27;
  v28 = v11;
  sub_1CF9E7F08();
  if (v14)
  {
    return (*(v8 + 8))(v28, v7);
  }

  v24 = v8;
  v27 = v7;
  v16 = *(v25 + 36);
  v32 = 1;
  swift_getAssociatedTypeWitness();
  v17 = *(swift_getAssociatedConformanceWitness() + 24);
  sub_1CF9E7F08();
  v18 = v25;
  v19 = *(v25 + 40);
  v31 = 2;
  sub_1CF9E7F08();
  v20 = *(v18 + 44);
  v30 = 3;
  swift_getAssociatedTypeWitness();
  v21 = *(swift_getAssociatedConformanceWitness() + 24);
  v22 = v27;
  sub_1CF9E7F08();
  v23 = *(v18 + 48);
  v29 = 4;
  sub_1CF9E7F08();
  return (*(v24 + 8))(v28, v22);
}

uint64_t sub_1CF732968@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t, void (*)(void, void, void), __n128)@<X3>, uint64_t (*a5)(void, uint64_t, void (*)(char *, char *, uint64_t), __n128)@<X5>, uint64_t a6@<X8>)
{
  v60 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v64 = AssociatedTypeWitness;
  v65 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v61 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v57 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  v66 = v17;
  v67 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v69 = &v57 - v22;
  v74 = swift_getAssociatedTypeWitness();
  v68 = *(v74 - 8);
  v23 = *(v68 + 64);
  v24 = MEMORY[0x1EEE9AC00](v74);
  v70 = (&v57 - v25);
  a4(255, a2, a3, v24);
  swift_getWitnessTable();
  v76 = sub_1CF9E7E08();
  v73 = *(v76 - 8);
  v26 = *(v73 + 64);
  v27 = MEMORY[0x1EEE9AC00](v76);
  v29 = &v57 - v28;
  v71 = a2;
  v72 = a3;
  v30 = a5(0, a2, a3, v27);
  v59 = *(v30 - 8);
  v31 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v57 - v32;
  v34 = a1;
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v75 = v29;
  v37 = v77;
  sub_1CF9E8298();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v38 = v69;
  v58 = v33;
  v77 = v34;
  v82 = 0;
  v39 = v74;
  v40 = *(swift_getAssociatedConformanceWitness() + 24);
  v41 = v70;
  sub_1CF9E7D88();
  (*(v68 + 32))(v58, v41, v39);
  v81 = 1;
  v42 = v66;
  v43 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7D88();
  v70 = v30;
  v44 = v38;
  v45 = *(v67 + 32);
  v45(&v58[*(v30 + 36)], v44, v42);
  v80 = 2;
  v46 = v63;
  sub_1CF9E7D88();
  v47 = v64;
  v45(&v58[v70[10]], v46, v42);
  v79 = 3;
  v48 = *(swift_getAssociatedConformanceWitness() + 16);
  v49 = v62;
  v50 = v47;
  sub_1CF9E7D88();
  v51 = &v58[v70[11]];
  v72 = *(v65 + 32);
  v72(v51, v49, v47);
  v78 = 4;
  v52 = v61;
  sub_1CF9E7D88();
  (*(v73 + 8))(v75, v76);
  v53 = v70;
  v54 = v58;
  v72(&v58[v70[12]], v52, v50);
  v55 = v59;
  (*(v59 + 16))(v60, v54, v53);
  __swift_destroy_boxed_opaque_existential_1(v77);
  return (*(v55 + 8))(v54, v53);
}

uint64_t sub_1CF733168(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465746365707865 && a2 == 0xEE0044496D657449;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465766965636572 && a2 == 0xEE0044496D657449)
  {

    return 1;
  }

  else
  {
    v6 = sub_1CF9E8048();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CF733244(char a1)
{
  if (a1)
  {
    return 0x6465766965636572;
  }

  else
  {
    return 0x6465746365707865;
  }
}

uint64_t sub_1CF733280(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for FileTreeError.ItemMismatchStruct.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1CF9E7F78();
  v17 = *(v5 - 8);
  v6 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v5;
  sub_1CF9E82A8();
  v20 = 0;
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getAssociatedConformanceWitness() + 32);
  v12 = v18;
  sub_1CF9E7E68();
  if (v12)
  {
    return (*(v17 + 8))(v8, v10);
  }

  v14 = v17;
  v15 = *(v16 + 36);
  v19 = 1;
  sub_1CF9E7F08();
  return (*(v14 + 8))(v8, v10);
}

uint64_t sub_1CF7334A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1CF9E75D8();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  v8 = type metadata accessor for FileTreeError.ItemMismatchStruct();
  v9 = *(*(AssociatedTypeWitness - 8) + 32);
  v10 = a3 + *(v8 + 36);

  return v9(v10, a2, AssociatedTypeWitness);
}

uint64_t sub_1CF733594@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v37 = &v33 - v7;
  v43 = v8;
  v9 = sub_1CF9E75D8();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v33 - v11;
  type metadata accessor for FileTreeError.ItemMismatchStruct.CodingKeys();
  swift_getWitnessTable();
  v45 = sub_1CF9E7E08();
  v38 = *(v45 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v14 = &v33 - v13;
  v41 = a2;
  v15 = type metadata accessor for FileTreeError.ItemMismatchStruct();
  v34 = *(v15 - 8);
  v16 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v44 = v14;
  v20 = v46;
  sub_1CF9E8298();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v18;
  v33 = v15;
  v22 = v38;
  v23 = v39;
  v46 = a1;
  v24 = v40;
  v48 = 0;
  v25 = *(swift_getAssociatedConformanceWitness() + 24);
  v26 = v42;
  sub_1CF9E7CF8();
  v27 = *(v23 + 32);
  v41 = v21;
  v27(v21, v26, v24);
  v47 = 1;
  v28 = v37;
  sub_1CF9E7D88();
  (*(v22 + 8))(v44, v45);
  v29 = v33;
  v30 = v41;
  (*(v35 + 32))(&v41[*(v33 + 36)], v28, v43);
  v31 = v34;
  (*(v34 + 16))(v36, v30, v29);
  __swift_destroy_boxed_opaque_existential_1(v46);
  return (*(v31 + 8))(v30, v29);
}

uint64_t sub_1CF733A0C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726573557962 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1CF9E8048();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1CF733A80(void *a1)
{
  type metadata accessor for FileTreeError.DownloadCancelled.CodingKeys();
  swift_getWitnessTable();
  v2 = sub_1CF9E7F78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  sub_1CF9E7E48();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1CF733BE0(uint64_t *a1)
{
  type metadata accessor for FileTreeError.DownloadCancelled.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_1CF9E7E08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E8298();
  if (!v1)
  {
    v9 = sub_1CF9E7CC8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1CF733D78(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1CF731BFC(*v1);
}

uint64_t sub_1CF733D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1CF731AD8(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1CF733DB4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1CF740BD8();
  *a2 = result;
  return result;
}

uint64_t sub_1CF733DE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF733E34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF733EC0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  sub_1CF9E81D8();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1CF9E8228();
}

unint64_t sub_1CF733F18(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1CF73256C(*v1);
}

uint64_t sub_1CF733F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1CF7323BC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1CF733F54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF733FA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF734098(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7340EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF734188(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7341DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF734278(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7342CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF734368(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7343BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF734458(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1CF733244(*v1);
}

uint64_t sub_1CF734468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1CF733168(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1CF734498(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7344EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF734578(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7345CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF73467C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1CF733A0C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1CF7346B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF734704(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF734758@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  result = sub_1CF733BE0(a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1CF73478C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *v2;
  return sub_1CF733A80(a1);
}

void sub_1CF7347AC(void *a1)
{
  if (a1)
  {
    swift_getErrorValue();
    sub_1CF4C2330(v2, v3);
  }
}

uint64_t sub_1CF734838(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001CFA59A60 == a2)
  {

    v2 = 0;
  }

  else
  {
    v3 = sub_1CF9E8048();

    v2 = v3 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1CF7348BC(void *a1, uint64_t a2, unint64_t a3)
{
  v13 = a3;
  type metadata accessor for FileTreeError.UploadCancelled.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1CF9E7F78();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  v14 = a2;
  v15 = v13;
  sub_1CEFF05F4(a2, v13);
  sub_1CF190A74();
  sub_1CF9E7E68();
  sub_1CEFE48D8(v14, v15);
  return (*(v6 + 8))(v9, v5);
}

void *sub_1CF734A4C(uint64_t *a1)
{
  type metadata accessor for FileTreeError.UploadCancelled.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_1CF9E7E08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E8298();
  if (!v1)
  {
    sub_1CF190888();
    sub_1CF9E7CF8();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1CF734C04(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001CFA59B20 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001CFA59BA0 == a2)
  {

    return 1;
  }

  else
  {
    v5 = sub_1CF9E8048();

    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CF734D10(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for FileTreeError.ItemContentVersionMismatchStruct.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1CF9E7F78();
  v17 = *(v5 - 8);
  v6 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v5;
  sub_1CF9E82A8();
  v20 = 0;
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getAssociatedConformanceWitness() + 24);
  v12 = v18;
  sub_1CF9E7F08();
  if (v12)
  {
    return (*(v17 + 8))(v8, v10);
  }

  v14 = v17;
  v15 = *(v16 + 36);
  v19 = 1;
  sub_1CF9E7F08();
  return (*(v14 + 8))(v8, v10);
}