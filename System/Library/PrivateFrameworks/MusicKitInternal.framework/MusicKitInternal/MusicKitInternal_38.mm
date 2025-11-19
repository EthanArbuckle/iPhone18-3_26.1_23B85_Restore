uint64_t sub_1D51B3BA0(uint64_t a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  if (!swift_dynamicCastClass())
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D5686FF0);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_25;
  }

  v5 = qword_1EC7E8E68;
  swift_retain_n();
  if (v5 != -1)
  {
    OUTLINED_FUNCTION_16_55();
  }

  sub_1D4EC5794(&qword_1EC7F1528, &qword_1EC7ECD68, &qword_1D5622F58);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_77_0();
  if (v2 & 1) != 0 || (, sub_1D4F84A88(), v6 = OUTLINED_FUNCTION_39_0(), , , (v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_62_22();
    sub_1D51B9308(v7, v8);
    OUTLINED_FUNCTION_93();
    sub_1D5612248();
  }

  else
  {
    v10 = qword_1EC7E8EE0;

    if (v10 != -1)
    {
      OUTLINED_FUNCTION_37_3();
    }

    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_77_0();
    if (v10)
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_62_22();
      sub_1D51B9308(v11, v12);
      OUTLINED_FUNCTION_93();
      sub_1D5612238();
    }

    else
    {
      v13 = qword_1EC7E8EE8;

      if (v13 != -1)
      {
        OUTLINED_FUNCTION_36_26();
      }

      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_77_0();
      if (v13)
      {
        swift_getKeyPath();
        OUTLINED_FUNCTION_116_9();
        v14 = v1 + *(type metadata accessor for UploadedAudioPropertyProvider() + 108);
        OUTLINED_FUNCTION_93();
        sub_1D54CE644();
      }

      else
      {
        v15 = off_1EC7E8EF0;

        if (v15 != -1)
        {
          OUTLINED_FUNCTION_35_6();
        }

        OUTLINED_FUNCTION_39_0();
        OUTLINED_FUNCTION_77_0();
        if (v15)
        {
          swift_getKeyPath();
          OUTLINED_FUNCTION_116_9();
          v16 = v1 + *(type metadata accessor for UploadedAudioPropertyProvider() + 108);
          OUTLINED_FUNCTION_93();
          sub_1D54CE668();
        }

        else
        {
          v17 = off_1EC7E8EF8;

          if (v17 != -1)
          {
            OUTLINED_FUNCTION_33_4();
          }

          v18 = OUTLINED_FUNCTION_39_0();

          if ((v18 & 1) == 0)
          {
            while (1)
            {
              sub_1D5615B68();
              MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
              sub_1D560CDE8();
              sub_1D5615D48();
              OUTLINED_FUNCTION_33_0();
LABEL_25:
              OUTLINED_FUNCTION_17_13();
              __break(1u);
            }
          }

          swift_getKeyPath();
          OUTLINED_FUNCTION_116_9();
          v19 = v3 + *(type metadata accessor for UploadedAudioPropertyProvider() + 108);
          OUTLINED_FUNCTION_93();
          sub_1D54CE68C();
        }
      }
    }
  }

  return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
}

void sub_1D51B4008()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1320, &qword_1D563FBC8);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - v11;
  v13 = type metadata accessor for UploadedAudioPropertyProvider();
  v14 = OUTLINED_FUNCTION_14(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1518, &unk_1D56407B0);
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000033, 0x80000001D5686F40);
    v33 = v5;
    v28 = *(v6 + *MEMORY[0x1E6974E08]);
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v29 = 136;
    goto LABEL_15;
  }

  v21 = v20;
  sub_1D4E628D4(v3, v32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    v30 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v30, v31, 1, v13);
    sub_1D4E50004(v12, &qword_1EC7F1320, &qword_1D563FBC8);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000036, 0x80000001D5686F80);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v29 = 139;
    goto LABEL_15;
  }

  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_1D51B91B4(v12, v19, type metadata accessor for UploadedAudioPropertyProvider);
  v22 = qword_1EC7E8E68;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_16_55();
  }

  v32[0] = qword_1EC87C1B0;
  v33 = v21;
  sub_1D4EC5794(&qword_1EC7F1520, &qword_1EC7F1518, &unk_1D56407B0);
  v23 = sub_1D5614D18();

  if ((v23 & 1) == 0)
  {

    v32[0] = sub_1D4F84C3C();
    v33 = v21;
    v26 = sub_1D5614D18();

    if (v26)
    {

      v24 = *(v19 + *(v13 + 48));

      OUTLINED_FUNCTION_69_16();
      v25 = *(v13 + 48);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D5686FC0);
    v33 = v21;
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v29 = 149;
LABEL_15:
    v32[0] = v29;
    OUTLINED_FUNCTION_17_13();
    __break(1u);
    return;
  }

  v24 = *(v19 + *(v13 + 40));

  OUTLINED_FUNCTION_69_16();
  v25 = *(v13 + 40);
LABEL_9:
  v27 = *(v1 + v25);
  if (!v24)
  {
    v24 = *(v1 + v25);
  }

  *(v1 + v25) = v24;
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51B4428()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D5640630;
  if (qword_1EC7E8E38 != -1)
  {
    OUTLINED_FUNCTION_90_13();
  }

  *(v0 + 32) = qword_1EC87C180;
  v1 = qword_1EC7E8E40;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_89_10();
  }

  *(v0 + 40) = qword_1EC87C188;
  v2 = qword_1EC7E8E48;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_86_13();
  }

  *(v0 + 48) = qword_1EC87C190;
  v3 = qword_1EC7E8E50;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_85_9();
  }

  *(v0 + 56) = qword_1EC87C198;
  v4 = qword_1EC7E8E58;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_39_23();
  }

  *(v0 + 64) = qword_1EC87C1A0;
  v5 = qword_1EC7E8E60;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_40();
  }

  *(v0 + 72) = qword_1EC87C1A8;
  v6 = qword_1EC7E8E68;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_16_55();
  }

  *(v0 + 80) = qword_1EC87C1B0;
  v7 = qword_1EC7E8E70;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_81_16();
  }

  *(v0 + 88) = qword_1EC87C1B8;

  *(v0 + 96) = sub_1D4F84A88();
  if (qword_1EC7E8E78 != -1)
  {
    OUTLINED_FUNCTION_79_8();
  }

  *(v0 + 104) = qword_1EC87C1C0;
  v8 = qword_1EC7E8E80;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_78_13();
  }

  *(v0 + 112) = qword_1EC87C1C8;
  v9 = qword_1EC7E8E88;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_77_7();
  }

  *(v0 + 120) = qword_1EC87C1D0;
  v10 = qword_1EC7E8E90;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_76_10();
  }

  *(v0 + 128) = qword_1EC87C1D8;
  v11 = qword_1EC7E8E98;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_75_13();
  }

  *(v0 + 136) = qword_1EC87C1E0;
  v12 = qword_1EC7E8EA0;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_74_14();
  }

  *(v0 + 144) = qword_1EC87C1E8;
  v13 = qword_1EC7E8EA8;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_73_11();
  }

  *(v0 + 152) = qword_1EC87C1F0;
  v14 = qword_1EC7E8EB0;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_72_17();
  }

  *(v0 + 160) = qword_1EC87C1F8;
  v15 = qword_1EC7E8EB8;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_38_25();
  }

  *(v0 + 168) = qword_1EC87C200;
  v16 = qword_1EC7E8EC0;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_70_13();
  }

  *(v0 + 176) = qword_1EC87C208;
  v17 = qword_1EC7E8EC8;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  *(v0 + 184) = qword_1EC87C210;
  v18 = qword_1EC7E8ED0;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_91_11();
  }

  *(v0 + 192) = qword_1EC87C218;
  v19 = qword_1EC7E8ED8;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_87_12();
  }

  *(v0 + 200) = qword_1EC87C220;
  v20 = qword_1EC7E8EE0;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_37_3();
  }

  *(v0 + 208) = qword_1EC7F0858;
  v21 = qword_1EC7E8EE8;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_36_26();
  }

  *(v0 + 216) = qword_1EC7F0860;
  v22 = off_1EC7E8EF0;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_35_6();
  }

  *(v0 + 224) = qword_1EC7F0868;
  v23 = off_1EC7E8EF8;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_33_4();
  }

  *(v0 + 232) = qword_1EC7F0870;
  qword_1EC87C278 = v0;
}

void sub_1D51B4940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  OUTLINED_FUNCTION_116_9();
  v25 = type metadata accessor for CuratorRelationshipProvider();
  v26 = OUTLINED_FUNCTION_20(v25, &v711);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF600, &unk_1D5640880);
  OUTLINED_FUNCTION_20(v37, &v710);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_12_0(v42, &v709);
  v688 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF608, &unk_1D5632420);
  OUTLINED_FUNCTION_20(v53, &v705);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v57);
  v58 = sub_1D560C0A8();
  v59 = OUTLINED_FUNCTION_12_0(v58, &v717);
  v685 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_20(v69, &v715);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v73);
  v74 = sub_1D56109F8();
  v75 = OUTLINED_FUNCTION_12_0(v74, &v720);
  v683 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v80);
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF610, &unk_1D5637E70);
  OUTLINED_FUNCTION_20(v85, v718);
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v89);
  v90 = sub_1D5614A78();
  v91 = OUTLINED_FUNCTION_12_0(v90, &v728);
  v698 = v92;
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v95);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v96);
  v98 = *(v97 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v100);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF618, &unk_1D5632430);
  OUTLINED_FUNCTION_20(v101, &v723);
  v103 = *(v102 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v105);
  v106 = sub_1D56134E8();
  v107 = OUTLINED_FUNCTION_12_0(v106, &v734);
  v700[1] = v108;
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v111);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v112);
  v114 = *(v113 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v116);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF620, &unk_1D5637E80);
  OUTLINED_FUNCTION_20(v117, &v729);
  v119 = *(v118 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v121);
  v122 = sub_1D5613198();
  v123 = OUTLINED_FUNCTION_12_0(v122, &v740);
  v703[1] = v124;
  v126 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v127);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v128);
  v130 = *(v129 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v132);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440);
  OUTLINED_FUNCTION_20(v133, &v735);
  v135 = *(v134 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v137);
  v138 = sub_1D5610CB8();
  v139 = OUTLINED_FUNCTION_12_0(v138, &v746);
  v708 = v140;
  v142 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v143);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v144);
  v146 = *(v145 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v147);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v148);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF630, &qword_1D5632450);
  OUTLINED_FUNCTION_20(v149, &v741);
  v151 = *(v150 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v153);
  v154 = sub_1D56128E8();
  v155 = OUTLINED_FUNCTION_12_0(v154, &a12);
  v714 = v156;
  v158 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v159);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
  OUTLINED_FUNCTION_22(v160);
  v162 = *(v161 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v163);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v164);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF640, &unk_1D5632460);
  OUTLINED_FUNCTION_20(v165, &v747);
  v167 = *(v166 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v168);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v169);
  v170 = sub_1D560C328();
  v171 = OUTLINED_FUNCTION_12_0(v170, &a16);
  v720 = v172;
  v174 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v171);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v175);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v177 = OUTLINED_FUNCTION_22(v176);
  v179 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v177);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v180);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v181);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v182);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB578, &unk_1D5644D10);
  v184 = OUTLINED_FUNCTION_20(v183, &a15);
  v186 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v184);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v187);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v188);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v189);
  v729 = sub_1D5610978();
  v190 = OUTLINED_FUNCTION_4(v729);
  v727 = v191;
  v193 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v190);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v194);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v196 = OUTLINED_FUNCTION_22(v195);
  v198 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v196);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v199);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v200);
  v728 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF648, &unk_1D5632470);
  v201 = OUTLINED_FUNCTION_14(v728);
  v203 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v201);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v204);
  OUTLINED_FUNCTION_13_2();
  v730 = v205;
  OUTLINED_FUNCTION_70_0();
  v737 = sub_1D56106B8();
  v206 = OUTLINED_FUNCTION_4(v737);
  v733 = v207;
  v209 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v206);
  OUTLINED_FUNCTION_5_0();
  v731 = v210;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v211);
  v213 = *(v212 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v214);
  OUTLINED_FUNCTION_13_3();
  v732 = v215;
  v735 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE730, &unk_1D562C598);
  OUTLINED_FUNCTION_14(v735);
  v217 = *(v216 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v218);
  OUTLINED_FUNCTION_13_3();
  v736 = v219;
  OUTLINED_FUNCTION_70_0();
  v743 = sub_1D560F928();
  v220 = OUTLINED_FUNCTION_4(v743);
  v739 = v221;
  v223 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v220);
  OUTLINED_FUNCTION_5_0();
  v734 = v224;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v225);
  v227 = *(v226 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v228);
  OUTLINED_FUNCTION_13_3();
  v738 = v229;
  v741 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF650, &qword_1D5632480);
  OUTLINED_FUNCTION_14(v741);
  v231 = *(v230 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v232);
  OUTLINED_FUNCTION_13_3();
  v742 = v233;
  OUTLINED_FUNCTION_70_0();
  v746 = type metadata accessor for AssetFlavors();
  v234 = OUTLINED_FUNCTION_14(v746);
  v236 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v234);
  OUTLINED_FUNCTION_5_0();
  v740 = v237;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_22(v238);
  v240 = *(v239 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v241);
  OUTLINED_FUNCTION_13_3();
  v744 = v242;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF658, &qword_1D5632488);
  OUTLINED_FUNCTION_14(v243);
  v245 = *(v244 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v246);
  OUTLINED_FUNCTION_13_3();
  v747 = v247;
  OUTLINED_FUNCTION_70_0();
  v248 = sub_1D56140F8();
  v249 = OUTLINED_FUNCTION_4(v248);
  v251 = v250;
  v253 = *(v252 + 64);
  MEMORY[0x1EEE9AC00](v249);
  OUTLINED_FUNCTION_5();
  v256 = v255 - v254;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v257);
  v259 = *(v258 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v260);
  v262 = &v675 - v261;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  OUTLINED_FUNCTION_14(v263);
  v265 = *(v264 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v266);
  v268 = &v675 - v267;
  v269 = v20[1];
  v270 = v24[1];
  if (v269)
  {
    if (!v270)
    {
      goto LABEL_31;
    }

    v271 = *v20 == *v24 && v269 == v270;
    if (!v271 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v270)
  {
    goto LABEL_31;
  }

  v676 = v31;
  v272 = type metadata accessor for UploadedAudioPropertyProvider();
  v745 = v24;
  v677 = v272;
  v273 = *(v272 + 20);
  v274 = v20;
  v275 = *(v263 + 48);
  v678 = v274;
  sub_1D4E69910(v274 + v273, v268, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v276 = OUTLINED_FUNCTION_44_22();
  sub_1D4E69910(v276, v268 + v275, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v268, 1, v248);
  if (v271)
  {
    OUTLINED_FUNCTION_57(v268 + v275, 1, v248);
    if (v271)
    {
      sub_1D4E50004(v268, &qword_1EC7E9CA0, &unk_1D561A0C0);
      goto LABEL_21;
    }

LABEL_18:
    v281 = &qword_1EC7E9FB8;
    v282 = &unk_1D561B9C0;
LABEL_19:
    v283 = v268;
LABEL_30:
    sub_1D4E50004(v283, v281, v282);
    goto LABEL_31;
  }

  sub_1D4E69910(v268, v262, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v268 + v275, 1, v248);
  if (v277)
  {
    v278 = *(v251 + 8);
    v279 = OUTLINED_FUNCTION_117_6();
    v280(v279);
    goto LABEL_18;
  }

  (*(v251 + 32))(v256, v268 + v275, v248);
  OUTLINED_FUNCTION_64_15();
  sub_1D51B9308(v284, v285);
  v286 = sub_1D5614D18();
  v287 = *(v251 + 8);
  v287(v256, v248);
  v288 = OUTLINED_FUNCTION_117_6();
  (v287)(v288);
  sub_1D4E50004(v268, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if ((v286 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v289 = v677;
  v290 = v677[6];
  v291 = *(v243 + 48);
  v292 = v678;
  v293 = v747;
  OUTLINED_FUNCTION_8_1();
  sub_1D4E69910(v294, v295, v296, v297);
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_8_1();
  sub_1D4E69910(v298, v299, v300, v301);
  OUTLINED_FUNCTION_14_54(v293, 1);
  if (v271)
  {
    OUTLINED_FUNCTION_1(v293 + v291);
    if (v271)
    {
      sub_1D4E50004(v293, &qword_1EC7ECC88, &unk_1D56310F0);
      goto LABEL_33;
    }

LABEL_29:
    v281 = &qword_1EC7EF658;
    v282 = &qword_1D5632488;
    v283 = v293;
    goto LABEL_30;
  }

  v302 = v744;
  sub_1D4E69910(v293, v744, &qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_1(v293 + v291);
  if (v303)
  {
    sub_1D51B9214(v302, type metadata accessor for AssetFlavors);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_57_19();
  v304 = v293 + v291;
  v305 = v740;
  sub_1D51B91B4(v304, v740, v306);
  static AssetFlavors.== infix(_:_:)();
  v308 = v307;
  sub_1D51B9214(v305, type metadata accessor for AssetFlavors);
  sub_1D51B9214(v302, type metadata accessor for AssetFlavors);
  sub_1D4E50004(v293, &qword_1EC7ECC88, &unk_1D56310F0);
  if ((v308 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_33:
  v309 = v289[7];
  v268 = v742;
  v310 = *(v741 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4E69910(v311, v312, v313, v314);
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_8_1();
  sub_1D4E69910(v315, v316, v317, v318);
  v319 = v743;
  OUTLINED_FUNCTION_57(v268, 1, v743);
  if (v271)
  {
    OUTLINED_FUNCTION_57(v268 + v310, 1, v319);
    if (v271)
    {
      sub_1D4E50004(v268, &qword_1EC7EDB98, L"X\b\a");
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v320 = v738;
  sub_1D4E69910(v268, v738, &qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_57(v268 + v310, 1, v319);
  if (v321)
  {
    (*(v739 + 8))(v320, v319);
LABEL_41:
    v281 = &qword_1EC7EF650;
    v282 = &qword_1D5632480;
    goto LABEL_19;
  }

  v322 = v739;
  OUTLINED_FUNCTION_113_9();
  v323 = (v268 + v310);
  v324 = v734;
  v325(v734, v323, v319);
  OUTLINED_FUNCTION_58_18();
  sub_1D51B9308(v326, v327);
  v328 = sub_1D5614D18();
  v329 = *(v322 + 8);
  v329(v324, v319);
  v329(v320, v319);
  sub_1D4E50004(v268, &qword_1EC7EDB98, L"X\b\a");
  if ((v328 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_43:
  v330 = v289[8];
  v331 = v736;
  v332 = *(v735 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4E69910(v333, v334, v335, v336);
  OUTLINED_FUNCTION_44_22();
  v337 = v745;
  OUTLINED_FUNCTION_8_1();
  sub_1D4E69910(v338, v339, v340, v341);
  v342 = v737;
  OUTLINED_FUNCTION_14_54(v331, 1);
  if (v271)
  {
    OUTLINED_FUNCTION_1(v331 + v332);
    if (v271)
    {
      sub_1D4E50004(v331, &qword_1EC7EC478, &unk_1D56299D0);
      goto LABEL_53;
    }

LABEL_51:
    v281 = &qword_1EC7EE730;
    v282 = &unk_1D562C598;
    v283 = v331;
    goto LABEL_30;
  }

  v343 = v732;
  sub_1D4E69910(v331, v732, &qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_1(v331 + v332);
  if (v344)
  {
    (*(v733 + 8))(v343, v342);
    goto LABEL_51;
  }

  v345 = v733;
  OUTLINED_FUNCTION_113_9();
  v346 = v731;
  v347(v731, v331 + v332, v342);
  OUTLINED_FUNCTION_55_18();
  sub_1D51B9308(v348, v349);
  v350 = v342;
  v351 = sub_1D5614D18();
  v352 = *(v345 + 8);
  v352(v346, v350);
  v352(v343, v350);
  sub_1D4E50004(v331, &qword_1EC7EC478, &unk_1D56299D0);
  if ((v351 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_53:
  v353 = v289[9];
  v354 = (v292 + v353);
  v355 = *(v292 + v353 + 8);
  v356 = (v337 + v353);
  v357 = *(v337 + v353 + 8);
  if (v355)
  {
    if (!v357)
    {
      goto LABEL_31;
    }

LABEL_59:
    v358 = v289[10];
    v359 = *(v337 + v358);
    if (*(v292 + v358))
    {
      if (!v359)
      {
        goto LABEL_31;
      }

      v360 = *(v337 + v358);

      sub_1D4F28F1C();
      v362 = v361;

      if ((v362 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (v359)
    {
      goto LABEL_31;
    }

    v363 = v289[11];
    v364 = *(v728 + 48);
    v365 = v730;
    OUTLINED_FUNCTION_8_1();
    sub_1D4E69910(v366, v367, v368, v369);
    OUTLINED_FUNCTION_44_22();
    v370 = v745;
    OUTLINED_FUNCTION_8_1();
    v371 = v365;
    sub_1D4E69910(v372, v373, v374, v375);
    v376 = v729;
    OUTLINED_FUNCTION_14_54(v365, 1);
    if (v271)
    {
      OUTLINED_FUNCTION_1(v364 + v365);
      if (v271)
      {
        sub_1D4E50004(v365, &qword_1EC7EAC98, &unk_1D561DA80);
        goto LABEL_74;
      }
    }

    else
    {
      v377 = v365;
      v378 = v726;
      sub_1D4E69910(v377, v726, &qword_1EC7EAC98, &unk_1D561DA80);
      OUTLINED_FUNCTION_1(v364 + v371);
      if (!v379)
      {
        v380 = v727;
        v381 = v725;
        (*(v727 + 32))(v725, v364 + v371, v376);
        OUTLINED_FUNCTION_9_69();
        sub_1D51B9308(v382, v383);
        v384 = v378;
        v385 = v376;
        v386 = sub_1D5614D18();
        v364 = *(v380 + 8);
        v364(v381, v385);
        v364(v384, v385);
        sub_1D4E50004(v730, &qword_1EC7EAC98, &unk_1D561DA80);
        if ((v386 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_74:
        v387 = v289[12];
        v388 = *(v370 + v387);
        if (*(v292 + v387))
        {
          if (!v388)
          {
            goto LABEL_31;
          }

          v389 = *(v370 + v387);

          sub_1D4F29174();
          v391 = v390;

          if ((v391 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else if (v388)
        {
          goto LABEL_31;
        }

        v392 = v289[13];
        OUTLINED_FUNCTION_62_0(&a15);
        v268 = v722[1];
        OUTLINED_FUNCTION_8_1();
        sub_1D4E69910(v393, v394, v395, v396);
        OUTLINED_FUNCTION_44_22();
        OUTLINED_FUNCTION_8_1();
        sub_1D4E69910(v397, v398, v399, v400);
        v401 = v724;
        OUTLINED_FUNCTION_57(v268, 1, v724);
        if (v271)
        {
          OUTLINED_FUNCTION_57(v364 + v268, 1, v401);
          if (!v271)
          {
            goto LABEL_86;
          }

          sub_1D4E50004(v268, &qword_1EC7EA3B8, &unk_1D561E370);
        }

        else
        {
          sub_1D4E69910(v268, v719, &qword_1EC7EA3B8, &unk_1D561E370);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v364 + v268, 1, v401);
          if (EnumTagSinglePayload == 1)
          {
            OUTLINED_FUNCTION_136(&a11);
            v403 = OUTLINED_FUNCTION_215();
            v404(v403);
LABEL_86:
            v281 = &qword_1EC7EB578;
            v282 = &unk_1D5644D10;
            goto LABEL_19;
          }

          v292 = v720;
          v405 = *(v720 + 32);
          v406 = OUTLINED_FUNCTION_114_4();
          v407(v406);
          OUTLINED_FUNCTION_2_101();
          sub_1D51B9308(v408, v409);
          OUTLINED_FUNCTION_119_7();
          v410 = OUTLINED_FUNCTION_31_7();
          (v364)(v410);
          v411 = OUTLINED_FUNCTION_215();
          (v364)(v411);
          sub_1D4E50004(v268, &qword_1EC7EA3B8, &unk_1D561E370);
          if ((&qword_1EC7EA3B8 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        OUTLINED_FUNCTION_42_23();
        v413 = *(v412 + 56);
        OUTLINED_FUNCTION_62_0(&v747);
        v414 = OUTLINED_FUNCTION_20_50();
        OUTLINED_FUNCTION_30_23(v414, &a13);
        OUTLINED_FUNCTION_17_54();
        v415 = OUTLINED_FUNCTION_95_0();
        v416 = v721;
        OUTLINED_FUNCTION_14_54(v415, v417);
        if (v271)
        {
          OUTLINED_FUNCTION_1(v364 + v292);
          if (!v271)
          {
            goto LABEL_95;
          }

          sub_1D4E50004(v722[0], &qword_1EC7EF5C8, &unk_1D5632130);
        }

        else
        {
          sub_1D4E69910(v292, v718[0], &qword_1EC7EF5C8, &unk_1D5632130);
          v418 = __swift_getEnumTagSinglePayload(v364 + v292, 1, v416);
          if (v418 == 1)
          {
            OUTLINED_FUNCTION_136(&v744);
            v419(v718[0], v721);
LABEL_95:
            v281 = &qword_1EC7EF640;
            v282 = &unk_1D5632460;
            v420 = &a13;
LABEL_169:
            v283 = *(v420 - 32);
            goto LABEL_30;
          }

          OUTLINED_FUNCTION_35_0(&v744);
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v421();
          OUTLINED_FUNCTION_65_19();
          sub_1D51B9308(v422, v423);
          OUTLINED_FUNCTION_76(&v748);
          v424 = OUTLINED_FUNCTION_51();
          (unk_1D5632130)(v424);
          v425 = OUTLINED_FUNCTION_85();
          (unk_1D5632130)(v425);
          sub_1D4E50004(v289, &qword_1EC7EF5C8, &unk_1D5632130);
          if ((v416 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        OUTLINED_FUNCTION_42_23();
        v427 = *(v426 + 60);
        OUTLINED_FUNCTION_62_0(&v741);
        v428 = OUTLINED_FUNCTION_20_50();
        OUTLINED_FUNCTION_30_23(v428, &a9);
        OUTLINED_FUNCTION_17_54();
        v429 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v429, v430, &v746);
        if (v271)
        {
          v431 = OUTLINED_FUNCTION_86_1(&a9);
          OUTLINED_FUNCTION_47_2(v431, v432, &v746);
          if (!v271)
          {
            goto LABEL_104;
          }

          sub_1D4E50004(v718[1], &qword_1EC7EF5D0, &unk_1D5632140);
        }

        else
        {
          v433 = OUTLINED_FUNCTION_145_0(&a9);
          sub_1D4E69910(v433, v712, v434, v435);
          v436 = OUTLINED_FUNCTION_72_1();
          v438 = __swift_getEnumTagSinglePayload(v436, v437, v716);
          if (v438 == 1)
          {
            OUTLINED_FUNCTION_136(&v738);
            v439(v712, v716);
LABEL_104:
            v281 = &qword_1EC7EF630;
            v282 = &qword_1D5632450;
            v420 = &a9;
            goto LABEL_169;
          }

          OUTLINED_FUNCTION_35_0(&v738);
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v440();
          OUTLINED_FUNCTION_61_21();
          sub_1D51B9308(v441, v442);
          OUTLINED_FUNCTION_76(&v742);
          v443 = OUTLINED_FUNCTION_51();
          (unk_1D5632140)(v443);
          v444 = OUTLINED_FUNCTION_85();
          (unk_1D5632140)(v444);
          sub_1D4E50004(v289, &qword_1EC7EF5D0, &unk_1D5632140);
          if ((&qword_1EC7EF5D0 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        OUTLINED_FUNCTION_42_23();
        v446 = *(v445 + 64);
        OUTLINED_FUNCTION_62_0(&v735);
        v447 = OUTLINED_FUNCTION_20_50();
        OUTLINED_FUNCTION_30_23(v447, &v743);
        OUTLINED_FUNCTION_17_54();
        v448 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v448, v449, &v740);
        if (v271)
        {
          v450 = OUTLINED_FUNCTION_86_1(&v743);
          OUTLINED_FUNCTION_47_2(v450, v451, &v740);
          if (!v271)
          {
            goto LABEL_113;
          }

          sub_1D4E50004(v713, &qword_1EC7EC530, &unk_1D5632150);
        }

        else
        {
          v452 = OUTLINED_FUNCTION_145_0(&v743);
          sub_1D4E69910(v452, v707[0], v453, v454);
          v455 = OUTLINED_FUNCTION_72_1();
          v457 = __swift_getEnumTagSinglePayload(v455, v456, v710);
          if (v457 == 1)
          {
            OUTLINED_FUNCTION_136(&v732);
            v458(v707[0], v710);
LABEL_113:
            v281 = &qword_1EC7EF628;
            v282 = &unk_1D5632440;
            v420 = &v743;
            goto LABEL_169;
          }

          OUTLINED_FUNCTION_35_0(&v732);
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v459();
          OUTLINED_FUNCTION_60_14();
          sub_1D51B9308(v460, v461);
          OUTLINED_FUNCTION_76(&v736);
          v462 = OUTLINED_FUNCTION_51();
          (unk_1D5632150)(v462);
          v463 = OUTLINED_FUNCTION_85();
          (unk_1D5632150)(v463);
          sub_1D4E50004(v289, &qword_1EC7EC530, &unk_1D5632150);
          if ((&qword_1EC7EC530 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        OUTLINED_FUNCTION_42_23();
        v465 = *(v464 + 68);
        OUTLINED_FUNCTION_62_0(&v729);
        v466 = OUTLINED_FUNCTION_20_50();
        OUTLINED_FUNCTION_30_23(v466, &v737);
        OUTLINED_FUNCTION_17_54();
        v467 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v467, v468, &v734);
        if (v271)
        {
          v469 = OUTLINED_FUNCTION_86_1(&v737);
          OUTLINED_FUNCTION_47_2(v469, v470, &v734);
          if (!v271)
          {
            goto LABEL_122;
          }

          sub_1D4E50004(v707[1], &qword_1EC7EC528, &unk_1D5621070);
        }

        else
        {
          v471 = OUTLINED_FUNCTION_145_0(&v737);
          sub_1D4E69910(v471, v702, v472, v473);
          v474 = OUTLINED_FUNCTION_72_1();
          v476 = __swift_getEnumTagSinglePayload(v474, v475, v705);
          if (v476 == 1)
          {
            OUTLINED_FUNCTION_136(&v726);
            v477(v702, v705);
LABEL_122:
            v281 = &qword_1EC7EF620;
            v282 = &unk_1D5637E80;
            v420 = &v737;
            goto LABEL_169;
          }

          OUTLINED_FUNCTION_35_0(&v726);
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v478();
          OUTLINED_FUNCTION_59_14();
          sub_1D51B9308(v479, v480);
          OUTLINED_FUNCTION_76(&v730);
          v481 = OUTLINED_FUNCTION_51();
          (unk_1D5621070)(v481);
          v482 = OUTLINED_FUNCTION_85();
          (unk_1D5621070)(v482);
          sub_1D4E50004(v289, &qword_1EC7EC528, &unk_1D5621070);
          if ((&qword_1EC7EC528 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        OUTLINED_FUNCTION_42_23();
        v484 = *(v483 + 72);
        OUTLINED_FUNCTION_62_0(&v723);
        v485 = OUTLINED_FUNCTION_20_50();
        OUTLINED_FUNCTION_30_23(v485, &v731);
        OUTLINED_FUNCTION_17_54();
        v486 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v486, v487, &v728);
        if (v271)
        {
          v488 = OUTLINED_FUNCTION_86_1(&v731);
          OUTLINED_FUNCTION_47_2(v488, v489, &v728);
          if (!v271)
          {
            goto LABEL_131;
          }

          sub_1D4E50004(v703[0], &qword_1EC7EF5D8, &unk_1D5632160);
        }

        else
        {
          v490 = OUTLINED_FUNCTION_145_0(&v731);
          sub_1D4E69910(v490, v700[0], v491, v492);
          v493 = OUTLINED_FUNCTION_72_1();
          v495 = __swift_getEnumTagSinglePayload(v493, v494, v701[0]);
          if (v495 == 1)
          {
            OUTLINED_FUNCTION_136(v722);
            v496(v700[0], v701[0]);
LABEL_131:
            v281 = &qword_1EC7EF618;
            v282 = &unk_1D5632430;
            v420 = &v731;
            goto LABEL_169;
          }

          OUTLINED_FUNCTION_35_0(v722);
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v497();
          OUTLINED_FUNCTION_56_19();
          sub_1D51B9308(v498, v499);
          OUTLINED_FUNCTION_76(&v725);
          v500 = OUTLINED_FUNCTION_51();
          (unk_1D5632160)(v500);
          v501 = OUTLINED_FUNCTION_85();
          (unk_1D5632160)(v501);
          sub_1D4E50004(v289, &qword_1EC7EF5D8, &unk_1D5632160);
          if ((&qword_1EC7EF5D8 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        OUTLINED_FUNCTION_42_23();
        v503 = *(v502 + 76);
        v504 = *(v728 + 48);
        v505 = OUTLINED_FUNCTION_20_50();
        OUTLINED_FUNCTION_30_23(v505, &v724);
        OUTLINED_FUNCTION_17_54();
        v506 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_57(v506, v507, v729);
        if (v271)
        {
          v508 = OUTLINED_FUNCTION_86_1(&v724);
          OUTLINED_FUNCTION_57(v508, v509, v729);
          if (v271)
          {
            sub_1D4E50004(v699, &qword_1EC7EAC98, &unk_1D561DA80);
            goto LABEL_143;
          }
        }

        else
        {
          v510 = OUTLINED_FUNCTION_145_0(&v724);
          sub_1D4E69910(v510, v695, v511, v512);
          v513 = OUTLINED_FUNCTION_72_1();
          OUTLINED_FUNCTION_57(v513, v514, v729);
          if (!v515)
          {
            v516 = *(v727 + 32);
            OUTLINED_FUNCTION_79_5();
            v517 = OUTLINED_FUNCTION_78();
            v504 = v729;
            v518(v517);
            OUTLINED_FUNCTION_9_69();
            sub_1D51B9308(v519, v520);
            OUTLINED_FUNCTION_76(&v719);
            v521 = OUTLINED_FUNCTION_51();
            (unk_1D561DA80)(v521);
            v522 = OUTLINED_FUNCTION_85();
            (unk_1D561DA80)(v522);
            sub_1D4E50004(v289, &qword_1EC7EAC98, &unk_1D561DA80);
            if ((&qword_1EC7EAC98 & 1) == 0)
            {
              goto LABEL_31;
            }

LABEL_143:
            OUTLINED_FUNCTION_42_23();
            v524 = *(v523 + 80);
            OUTLINED_FUNCTION_62_0(v718);
            v525 = OUTLINED_FUNCTION_20_50();
            OUTLINED_FUNCTION_30_23(v525, &v721);
            OUTLINED_FUNCTION_17_54();
            v526 = OUTLINED_FUNCTION_95_0();
            OUTLINED_FUNCTION_47_2(v526, v527, &v720);
            if (v271)
            {
              v528 = OUTLINED_FUNCTION_86_1(&v721);
              OUTLINED_FUNCTION_47_2(v528, v529, &v720);
              if (!v271)
              {
                goto LABEL_150;
              }

              sub_1D4E50004(v697, &qword_1EC7EB5C0, &unk_1D56223C0);
            }

            else
            {
              v530 = OUTLINED_FUNCTION_145_0(&v721);
              sub_1D4E69910(v530, v692, v531, v532);
              v533 = OUTLINED_FUNCTION_72_1();
              v535 = __swift_getEnumTagSinglePayload(v533, v534, v696);
              if (v535 == 1)
              {
                OUTLINED_FUNCTION_136(&v702);
                v536(v692, v696);
LABEL_150:
                v281 = &qword_1EC7EF610;
                v282 = &unk_1D5637E70;
                v420 = &v721;
                goto LABEL_169;
              }

              OUTLINED_FUNCTION_35_0(&v702);
              OUTLINED_FUNCTION_79_5();
              OUTLINED_FUNCTION_78();
              OUTLINED_FUNCTION_133();
              v537();
              OUTLINED_FUNCTION_54_17();
              sub_1D51B9308(v538, v539);
              OUTLINED_FUNCTION_76(&v714);
              v540 = OUTLINED_FUNCTION_51();
              (unk_1D56223C0)(v540);
              v541 = OUTLINED_FUNCTION_85();
              (unk_1D56223C0)(v541);
              sub_1D4E50004(v289, &qword_1EC7EB5C0, &unk_1D56223C0);
              if ((&qword_1EC7EB5C0 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            OUTLINED_FUNCTION_42_23();
            v543 = *(v542 + 84);
            OUTLINED_FUNCTION_62_0(&v715);
            v544 = OUTLINED_FUNCTION_20_50();
            OUTLINED_FUNCTION_30_23(v544, &v716);
            OUTLINED_FUNCTION_17_54();
            v545 = OUTLINED_FUNCTION_95_0();
            OUTLINED_FUNCTION_47_2(v545, v546, &v717);
            if (v271)
            {
              v547 = OUTLINED_FUNCTION_86_1(&v716);
              OUTLINED_FUNCTION_47_2(v547, v548, &v717);
              if (!v271)
              {
                goto LABEL_159;
              }

              sub_1D4E50004(v693, &unk_1EC7E9CA8, &unk_1D561D1D0);
            }

            else
            {
              v549 = OUTLINED_FUNCTION_145_0(&v716);
              sub_1D4E69910(v549, v684, v550, v551);
              v552 = OUTLINED_FUNCTION_72_1();
              v554 = __swift_getEnumTagSinglePayload(v552, v553, v694);
              if (v554 == 1)
              {
                OUTLINED_FUNCTION_136(&v704);
                v555(v684, v694);
LABEL_159:
                v281 = &qword_1EC7E9FB0;
                v282 = &qword_1D562C590;
                v420 = &v716;
                goto LABEL_169;
              }

              OUTLINED_FUNCTION_35_0(&v704);
              OUTLINED_FUNCTION_79_5();
              OUTLINED_FUNCTION_78();
              OUTLINED_FUNCTION_133();
              v556();
              OUTLINED_FUNCTION_67_20();
              sub_1D51B9308(v557, v558);
              OUTLINED_FUNCTION_76(v703);
              v559 = OUTLINED_FUNCTION_51();
              (unk_1D561D1D0)(v559);
              v560 = OUTLINED_FUNCTION_85();
              (unk_1D561D1D0)(v560);
              sub_1D4E50004(v289, &unk_1EC7E9CA8, &unk_1D561D1D0);
              if ((&unk_1EC7E9CA8 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            OUTLINED_FUNCTION_42_23();
            v562 = *(v561 + 88);
            OUTLINED_FUNCTION_62_0(&a15);
            v563 = OUTLINED_FUNCTION_20_50();
            OUTLINED_FUNCTION_30_23(v563, v700);
            OUTLINED_FUNCTION_17_54();
            v564 = OUTLINED_FUNCTION_95_0();
            OUTLINED_FUNCTION_47_2(v564, v565, &a16);
            if (v271)
            {
              v566 = OUTLINED_FUNCTION_86_1(v700);
              OUTLINED_FUNCTION_47_2(v566, v567, &a16);
              if (!v271)
              {
                goto LABEL_168;
              }

              sub_1D4E50004(v679, &qword_1EC7EA3B8, &unk_1D561E370);
            }

            else
            {
              v568 = OUTLINED_FUNCTION_145_0(v700);
              sub_1D4E69910(v568, v680, v569, v570);
              v571 = OUTLINED_FUNCTION_72_1();
              v573 = __swift_getEnumTagSinglePayload(v571, v572, v724);
              if (v573 == 1)
              {
                OUTLINED_FUNCTION_136(&a11);
                v574(v680, v724);
LABEL_168:
                v281 = &qword_1EC7EB578;
                v282 = &unk_1D5644D10;
                v420 = v700;
                goto LABEL_169;
              }

              v575 = *(v720 + 32);
              v576 = v679;
              v577 = OUTLINED_FUNCTION_114_4();
              v578(v577);
              OUTLINED_FUNCTION_2_101();
              sub_1D51B9308(v579, v580);
              OUTLINED_FUNCTION_119_7();
              v581 = OUTLINED_FUNCTION_31_7();
              (v504)(v581);
              v582 = OUTLINED_FUNCTION_215();
              (v504)(v582);
              sub_1D4E50004(v576, &qword_1EC7EA3B8, &unk_1D561E370);
              if ((&qword_1EC7EA3B8 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            OUTLINED_FUNCTION_42_23();
            v584 = *(v583 + 92);
            OUTLINED_FUNCTION_31_31();
            if (v587)
            {
              if (!v585)
              {
                goto LABEL_31;
              }

              OUTLINED_FUNCTION_31_0(v586);
              v590 = v271 && v588 == v589;
              if (!v590 && (sub_1D5616168() & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            else if (v585)
            {
              goto LABEL_31;
            }

            OUTLINED_FUNCTION_42_23();
            v592 = *(v591 + 96);
            OUTLINED_FUNCTION_62_0(&a15);
            v593 = OUTLINED_FUNCTION_20_50();
            OUTLINED_FUNCTION_30_23(v593, v701);
            OUTLINED_FUNCTION_17_54();
            v594 = OUTLINED_FUNCTION_95_0();
            OUTLINED_FUNCTION_47_2(v594, v595, &a16);
            if (v271)
            {
              v596 = OUTLINED_FUNCTION_86_1(v701);
              OUTLINED_FUNCTION_47_2(v596, v597, &a16);
              if (!v271)
              {
                goto LABEL_187;
              }

              sub_1D4E50004(v681, &qword_1EC7EA3B8, &unk_1D561E370);
            }

            else
            {
              v598 = OUTLINED_FUNCTION_145_0(v701);
              sub_1D4E69910(v598, v682, v599, v600);
              v601 = OUTLINED_FUNCTION_72_1();
              v603 = __swift_getEnumTagSinglePayload(v601, v602, v724);
              if (v603 == 1)
              {
                OUTLINED_FUNCTION_136(&a11);
                v604(v682, v724);
LABEL_187:
                v281 = &qword_1EC7EB578;
                v282 = &unk_1D5644D10;
                v420 = v701;
                goto LABEL_169;
              }

              OUTLINED_FUNCTION_35_0(&a11);
              v605 = v681;
              OUTLINED_FUNCTION_78();
              OUTLINED_FUNCTION_133();
              v606();
              OUTLINED_FUNCTION_2_101();
              sub_1D51B9308(v607, v608);
              v289 = v682;
              sub_1D5614D18();
              v609 = OUTLINED_FUNCTION_51();
              (v504)(v609);
              (v504)(v289, v504);
              sub_1D4E50004(v605, &qword_1EC7EA3B8, &unk_1D561E370);
              if ((&qword_1EC7EA3B8 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            OUTLINED_FUNCTION_42_23();
            v611 = *(v610 + 100);
            OUTLINED_FUNCTION_31_31();
            if (v614)
            {
              if (!v612)
              {
                goto LABEL_31;
              }

              OUTLINED_FUNCTION_31_0(v613);
              v617 = v271 && v615 == v616;
              if (!v617 && (sub_1D5616168() & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            else if (v612)
            {
              goto LABEL_31;
            }

            OUTLINED_FUNCTION_42_23();
            v619 = *(v618 + 104);
            OUTLINED_FUNCTION_62_0(&v705);
            v620 = OUTLINED_FUNCTION_20_50();
            OUTLINED_FUNCTION_30_23(v620, v707);
            OUTLINED_FUNCTION_17_54();
            v621 = OUTLINED_FUNCTION_95_0();
            OUTLINED_FUNCTION_47_2(v621, v622, &v709);
            if (v271)
            {
              v623 = OUTLINED_FUNCTION_86_1(v707);
              OUTLINED_FUNCTION_47_2(v623, v624, &v709);
              if (!v271)
              {
                goto LABEL_205;
              }

              sub_1D4E50004(v687, &off_1EC7EB5B0, &unk_1D5632170);
            }

            else
            {
              v625 = OUTLINED_FUNCTION_145_0(v707);
              sub_1D4E69910(v625, v686, v626, v627);
              v628 = OUTLINED_FUNCTION_72_1();
              v630 = __swift_getEnumTagSinglePayload(v628, v629, v689);
              if (v630 == 1)
              {
                OUTLINED_FUNCTION_136(&v708);
                v631(v686, v689);
LABEL_205:
                v281 = &qword_1EC7EF608;
                v282 = &unk_1D5632420;
                v420 = v707;
                goto LABEL_169;
              }

              OUTLINED_FUNCTION_35_0(&v708);
              OUTLINED_FUNCTION_79_5();
              OUTLINED_FUNCTION_78();
              OUTLINED_FUNCTION_133();
              v632();
              sub_1D51B926C(&qword_1EC7EF660, &qword_1EC7EF668);
              OUTLINED_FUNCTION_76(&v706);
              v633 = OUTLINED_FUNCTION_51();
              (unk_1D5632170)(v633);
              v634 = OUTLINED_FUNCTION_85();
              (unk_1D5632170)(v634);
              sub_1D4E50004(v289, &off_1EC7EB5B0, &unk_1D5632170);
              if ((&off_1EC7EB5B0 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            OUTLINED_FUNCTION_42_23();
            v636 = *(v635 + 108);
            OUTLINED_FUNCTION_62_0(&v710);
            v637 = OUTLINED_FUNCTION_20_50();
            OUTLINED_FUNCTION_30_23(v637, &v713);
            OUTLINED_FUNCTION_17_54();
            v638 = OUTLINED_FUNCTION_95_0();
            OUTLINED_FUNCTION_47_2(v638, v639, &v711);
            if (v271)
            {
              v640 = OUTLINED_FUNCTION_86_1(&v713);
              OUTLINED_FUNCTION_47_2(v640, v641, &v711);
              if (v271)
              {
                sub_1D4E50004(v691, &qword_1EC7ECC80, &unk_1D5622EA0);
                goto LABEL_217;
              }
            }

            else
            {
              v642 = OUTLINED_FUNCTION_145_0(&v713);
              sub_1D4E69910(v642, v690, v643, v644);
              v645 = OUTLINED_FUNCTION_72_1();
              OUTLINED_FUNCTION_47_2(v645, v646, &v711);
              if (!v647)
              {
                v649 = v691;
                v650 = v691 + v504;
                v651 = v676;
                sub_1D51B91B4(v650, v676, type metadata accessor for CuratorRelationshipProvider);
                v652 = v690;
                v653 = OUTLINED_FUNCTION_93();
                v655 = sub_1D4F4AA50(v653, v654);
                sub_1D51B9214(v651, type metadata accessor for CuratorRelationshipProvider);
                sub_1D51B9214(v652, type metadata accessor for CuratorRelationshipProvider);
                sub_1D4E50004(v649, &qword_1EC7ECC80, &unk_1D5622EA0);
                if (!v655)
                {
                  goto LABEL_31;
                }

LABEL_217:
                OUTLINED_FUNCTION_42_23();
                OUTLINED_FUNCTION_19_49(*(v656 + 112));
                sub_1D4EF6F7C();
                if ((v657 & 1) == 0)
                {
                  goto LABEL_31;
                }

                OUTLINED_FUNCTION_42_23();
                OUTLINED_FUNCTION_109_11(*(v658 + 116));
                if ((sub_1D560D6E8() & 1) == 0)
                {
                  goto LABEL_31;
                }

                OUTLINED_FUNCTION_42_23();
                OUTLINED_FUNCTION_109_11(*(v659 + 120));
                if ((sub_1D4F3B22C() & 1) == 0)
                {
                  goto LABEL_31;
                }

                OUTLINED_FUNCTION_42_23();
                v661 = *(v660 + 124);
                OUTLINED_FUNCTION_31_31();
                if (v664)
                {
                  if (!v662)
                  {
                    goto LABEL_31;
                  }

                  OUTLINED_FUNCTION_31_0(v663);
                  v667 = v271 && v665 == v666;
                  if (!v667 && (sub_1D5616168() & 1) == 0)
                  {
                    goto LABEL_31;
                  }
                }

                else if (v662)
                {
                  goto LABEL_31;
                }

                OUTLINED_FUNCTION_42_23();
                OUTLINED_FUNCTION_19_49(*(v668 + 128));
                sub_1D4F286E0();
                if (v669)
                {
                  OUTLINED_FUNCTION_42_23();
                  OUTLINED_FUNCTION_19_49(*(v670 + 132));
                  sub_1D4F286E0();
                  if (v671)
                  {
                    OUTLINED_FUNCTION_42_23();
                    OUTLINED_FUNCTION_19_49(*(v672 + 136));
                    sub_1D4F286E0();
                    if (v673)
                    {
                      OUTLINED_FUNCTION_42_23();
                      OUTLINED_FUNCTION_19_49(*(v674 + 140));
                      sub_1D4F286E0();
                    }
                  }
                }

                goto LABEL_31;
              }

              OUTLINED_FUNCTION_7_76();
              sub_1D51B9214(v690, v648);
            }

            v281 = &qword_1EC7EF600;
            v282 = &unk_1D5640880;
            v420 = &v713;
            goto LABEL_169;
          }

          (*(v727 + 8))(v695, v729);
        }

        v281 = &qword_1EC7EF648;
        v282 = &unk_1D5632470;
        v420 = &v724;
        goto LABEL_169;
      }

      (*(v727 + 8))(v378, v376);
    }

    v281 = &qword_1EC7EF648;
    v282 = &unk_1D5632470;
    v283 = v371;
    goto LABEL_30;
  }

  if (*v354 != *v356)
  {
    LOBYTE(v357) = 1;
  }

  if ((v357 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_31:
  OUTLINED_FUNCTION_46();
}

void sub_1D51B7550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v360[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_4(v360[0]);
  v339 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v359 = v34;
  OUTLINED_FUNCTION_70_0();
  v358 = sub_1D560C0A8();
  v35 = OUTLINED_FUNCTION_4(v358);
  v338 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  v357 = v44;
  OUTLINED_FUNCTION_70_0();
  v356 = sub_1D56109F8();
  v45 = OUTLINED_FUNCTION_4(v356);
  v336 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_3();
  v355 = v54;
  OUTLINED_FUNCTION_70_0();
  v353 = sub_1D5614A78();
  v55 = OUTLINED_FUNCTION_4(v353);
  v334 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13_3();
  v351 = v64;
  OUTLINED_FUNCTION_70_0();
  v350 = sub_1D56134E8();
  v65 = OUTLINED_FUNCTION_4(v350);
  v332 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13_3();
  v349 = v74;
  OUTLINED_FUNCTION_70_0();
  v346 = sub_1D5613198();
  v75 = OUTLINED_FUNCTION_4(v346);
  v331 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v80);
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_13_3();
  v344 = v84;
  OUTLINED_FUNCTION_70_0();
  v85 = sub_1D5610CB8();
  v86 = OUTLINED_FUNCTION_12_0(v85, &a18);
  v329 = v87;
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v91);
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v95);
  v96 = sub_1D56128E8();
  v97 = OUTLINED_FUNCTION_12_0(v96, &a16);
  v328 = v98;
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v101);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
  OUTLINED_FUNCTION_22(v102);
  v104 = *(v103 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v106);
  v363 = sub_1D560C328();
  v107 = OUTLINED_FUNCTION_4(v363);
  v361 = v108;
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_5_0();
  v360[1] = v111;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v113 = OUTLINED_FUNCTION_22(v112);
  v115 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_13();
  v354 = v116;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_135();
  v352 = v118;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v120);
  v362 = sub_1D5610978();
  v121 = OUTLINED_FUNCTION_4(v362);
  v348 = v122;
  v124 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_5_0();
  v347 = v125;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v127 = OUTLINED_FUNCTION_22(v126);
  v129 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_13();
  v345 = v130;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v132);
  v133 = sub_1D56106B8();
  v134 = OUTLINED_FUNCTION_12_0(v133, &a12);
  v326 = v135;
  v137 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v138);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v139);
  v141 = *(v140 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v143);
  v144 = sub_1D560F928();
  v145 = OUTLINED_FUNCTION_12_0(v144, &a10);
  v325 = v146;
  v148 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v149);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v150);
  v152 = *(v151 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v153);
  v155 = &v323 - v154;
  v156 = sub_1D56140F8();
  v157 = OUTLINED_FUNCTION_4(v156);
  v159 = v158;
  v161 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v157);
  OUTLINED_FUNCTION_5();
  v164 = v163 - v162;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v165);
  v167 = *(v166 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v168);
  v170 = &v323 - v169;
  if (v20[1])
  {
    v21 = *v20;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v171 = type metadata accessor for UploadedAudioPropertyProvider();
  sub_1D4E69910(v20 + v171[5], v170, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v170, 1, v156);
  if (v172)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v159 + 32))(v164, v170, v156);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_64_15();
    sub_1D51B9308(v173, v174);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v159 + 8))(v164, v156);
  }

  v175 = v362;
  v176 = v20 + v171[6];
  sub_1D4F8596C();
  sub_1D4E69910(v24 + v171[7], v155, &qword_1EC7EDB98, L"X\b\a");
  v177 = v340;
  OUTLINED_FUNCTION_57(v155, 1, v340);
  if (v172)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v178 = v325;
    v179 = v324;
    (*(v325 + 32))(v324, v155, v177);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_58_18();
    sub_1D51B9308(v180, v181);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v182 = *(v178 + 8);
    v21 = v178 + 8;
    v182(v179, v177);
  }

  OUTLINED_FUNCTION_108_0(v24 + v171[8], &qword_1EC7EC478, &unk_1D56299D0, &a11);
  v183 = OUTLINED_FUNCTION_35_1();
  v184 = v341;
  OUTLINED_FUNCTION_57(v183, v185, v341);
  if (v172)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_117_5(&v350);
    v186 = OUTLINED_FUNCTION_145_2();
    v187(v186);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_55_18();
    sub_1D51B9308(v188, v189);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v177 + 8))(v21, v184);
  }

  v190 = v24 + v171[9];
  if (v190[8] == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v191 = *v190;
    OUTLINED_FUNCTION_27();
    if ((v191 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v192 = v191;
    }

    else
    {
      v192 = 0;
    }

    MEMORY[0x1DA6EC100](v192);
  }

  if (*(v24 + v171[10]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_108_0(v24 + v171[11], &qword_1EC7EAC98, &unk_1D561DA80, &a13);
  v193 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v193, v194, v175);
  if (v172)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v196 = v347;
    v195 = v348;
    v197 = *(v348 + 32);
    v198 = OUTLINED_FUNCTION_123_2();
    v199(v198);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_9_69();
    sub_1D51B9308(v200, v201);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v195 + 8))(v196, v175);
  }

  v202 = v346;
  if (*(v24 + v171[12]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v203 = v343;
  OUTLINED_FUNCTION_108_0(v24 + v171[13], &qword_1EC7EA3B8, &unk_1D561E370, &a14);
  v204 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v204, v205, v363);
  if (v172)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v206 = v361;
    v207 = *(v361 + 32);
    v208 = OUTLINED_FUNCTION_123_2();
    v209(v208);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_101();
    sub_1D51B9308(v210, v211);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v212 = *(v206 + 8);
    v213 = OUTLINED_FUNCTION_215();
    v214(v213);
  }

  v215 = v353;
  v216 = v342;
  OUTLINED_FUNCTION_108_0(v24 + v171[14], &qword_1EC7EF5C8, &unk_1D5632130, &a15);
  v217 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v217, v218, v216);
  if (v172)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v219 = v328;
    v220 = *(v328 + 32);
    v221 = v202;
    v222 = v215;
    v223 = v203;
    v224 = v327;
    v225 = OUTLINED_FUNCTION_117_6();
    v226(v225);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_65_19();
    sub_1D51B9308(v227, v228);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v229 = *(v219 + 8);
    v21 = v219 + 8;
    v230 = v224;
    v203 = v223;
    v215 = v222;
    v202 = v221;
    v229(v230, v216);
  }

  OUTLINED_FUNCTION_108_0(v24 + v171[15], &qword_1EC7EF5D0, &unk_1D5632140, &a17);
  v231 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v231, v232, v203);
  if (v172)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_117_5(&v354);
    v233 = OUTLINED_FUNCTION_145_2();
    v234(v233);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_61_21();
    sub_1D51B9308(v235, v236);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v237 = *(v216 + 8);
    v216 += 8;
    v237(v21, v203);
  }

  v238 = v344;
  sub_1D4E69910(v24 + v171[16], v344, &qword_1EC7EC530, &unk_1D5632150);
  v239 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v239, v240, v202);
  if (v172)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_117_5(&v356);
    v241 = v330;
    v242(v330, v238, v202);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_60_14();
    sub_1D51B9308(v243, v244);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v245 = *(v216 + 8);
    v216 += 8;
    v245(v241, v202);
  }

  v246 = v356;
  sub_1D4E69910(v24 + v171[17], v349, &qword_1EC7EC528, &unk_1D5621070);
  v247 = OUTLINED_FUNCTION_35_1();
  v248 = v350;
  OUTLINED_FUNCTION_57(v247, v249, v350);
  if (v172)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_117_5(&v358);
    v250 = OUTLINED_FUNCTION_145_2();
    v251(v250);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_59_14();
    sub_1D51B9308(v252, v253);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v254 = *(v216 + 8);
    v216 += 8;
    v254(v21, v248);
  }

  v255 = v351;
  sub_1D4E69910(v24 + v171[18], v351, &qword_1EC7EF5D8, &unk_1D5632160);
  v256 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v256, v257, v215);
  if (v172)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_117_5(v360);
    v258 = v333;
    v259(v333, v255, v215);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_56_19();
    sub_1D51B9308(v260, v261);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v216 + 8))(v258, v215);
  }

  v262 = v362;
  v263 = v345;
  sub_1D4E69910(v24 + v171[19], v345, &qword_1EC7EAC98, &unk_1D561DA80);
  v264 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v264, v265, v262);
  if (v172)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v267 = v347;
    v266 = v348;
    OUTLINED_FUNCTION_113_9();
    v268(v267, v263, v262);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_9_69();
    sub_1D51B9308(v269, v270);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v271 = *(v266 + 8);
    v215 = v266 + 8;
    v271(v267, v262);
  }

  v272 = v355;
  sub_1D4E69910(v24 + v171[20], v355, &qword_1EC7EB5C0, &unk_1D56223C0);
  v273 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v273, v274, v246);
  if (v172)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v275 = v336;
    OUTLINED_FUNCTION_113_9();
    v276 = v335;
    v277(v335, v272, v246);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_54_17();
    sub_1D51B9308(v278, v279);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v280 = *(v275 + 8);
    v215 = v275 + 8;
    v280(v276, v246);
  }

  sub_1D4E69910(v24 + v171[21], v357, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v281 = OUTLINED_FUNCTION_35_1();
  v282 = v358;
  OUTLINED_FUNCTION_57(v281, v283, v358);
  if (v172)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v284 = v338;
    v285 = *(v338 + 32);
    v215 = v337;
    v286 = OUTLINED_FUNCTION_123_2();
    v287(v286);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_67_20();
    sub_1D51B9308(v288, v289);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v290 = *(v284 + 8);
    v262 = v284 + 8;
    v291 = OUTLINED_FUNCTION_215();
    v292(v291);
  }

  sub_1D4E69910(v24 + v171[22], v352, &qword_1EC7EA3B8, &unk_1D561E370);
  v293 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v293, v294, v363);
  if (v172)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v295 = OUTLINED_FUNCTION_95_11();
    v296(v295);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_101();
    sub_1D51B9308(v297, v298);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v262 + 8))(v282, v215);
  }

  v299 = (v24 + v171[23]);
  v300 = v299[1];
  if (v300)
  {
    v262 = *v299;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4E69910(v24 + v171[24], v354, &qword_1EC7EA3B8, &unk_1D561E370);
  v301 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v301, v302, v363);
  if (v172)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v303 = OUTLINED_FUNCTION_95_11();
    v304(v303);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_101();
    sub_1D51B9308(v305, v306);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v262 + 8))(v300, v215);
  }

  v307 = (v24 + v171[25]);
  if (v307[1])
  {
    v308 = *v307;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4E69910(v24 + v171[26], v359, &off_1EC7EB5B0, &unk_1D5632170);
  v309 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v309, v310, v360[0]);
  if (v172)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v311 = v339;
    v312 = *(v339 + 32);
    v313 = OUTLINED_FUNCTION_123_2();
    v314(v313);
    OUTLINED_FUNCTION_27();
    sub_1D51B926C(&qword_1EC7EF6C0, &qword_1EC7EC7E8);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v315 = *(v311 + 8);
    v316 = OUTLINED_FUNCTION_215();
    v317(v316);
  }

  v318 = v24 + v171[27];
  sub_1D4F84DAC();
  OUTLINED_FUNCTION_32_2(v171[28]);
  sub_1D4F070FC();
  v319 = v171[29];
  sub_1D560D838();
  sub_1D51B9308(&qword_1EDD53DC0, MEMORY[0x1E6974F58]);
  OUTLINED_FUNCTION_24();
  sub_1D5614CB8();
  v320 = v171[30];
  sub_1D5610088();
  sub_1D51B9308(&qword_1EDD53358, MEMORY[0x1E6975BC8]);
  OUTLINED_FUNCTION_24();
  sub_1D5614CB8();
  v321 = (v24 + v171[31]);
  if (v321[1])
  {
    v322 = *v321;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2(v171[32]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v171[33]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v171[34]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v171[35]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51B8BD4()
{
  sub_1D56162D8();
  sub_1D51B7550(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1D5616328();
}

void sub_1D51B8C88(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  if (a2)
  {
    sub_1D4E69910(*a1, v2 + 32, &qword_1EC7E9F98, &qword_1D561C420);

    sub_1D51B3BA0(v2 + 32);
    v5 = OUTLINED_FUNCTION_24();
    sub_1D4E50004(v5, v6, &qword_1D561C420);
  }

  else
  {

    sub_1D51B3BA0(v2);
  }

  free(v2);
}

uint64_t sub_1D51B8D44()
{
  sub_1D56162D8();
  sub_1D51B7550(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1D5616328();
}

uint64_t sub_1D51B8DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D51B9308(&qword_1EC7F1510, type metadata accessor for UploadedAudioPropertyProvider);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D51B8E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 116);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D51B8EDC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 116);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1D51B8F50(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 116);
  return result;
}

uint64_t sub_1D51B8F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 120);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D51B8FE8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 124));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D51B9020(uint64_t a1)
{
  v2 = sub_1D51B9308(&qword_1EC7F1510, type metadata accessor for UploadedAudioPropertyProvider);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D51B909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D51B9308(&qword_1EC7F1500, type metadata accessor for UploadedAudioPropertyProvider);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D51B9130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D51B9308(&qword_1EC7F1508, type metadata accessor for UploadedAudioPropertyProvider);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D51B91B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D51B9214(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D51B926C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA448, &unk_1D561D110);
    sub_1D51B9308(a2, MEMORY[0x1E6976F28]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D51B9308(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_70_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_72_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_74_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_75_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_76_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_78_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_81_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_87_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_89_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_91_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_109_11@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 - 792) + a1;
  v3 = *(v1 - 112) + a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_119_7()
{

  return sub_1D5614D18();
}

void sub_1D51B95B4(uint64_t a1)
{
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D5615A98();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D4F03980();
    v3 = v35;
    v32 = sub_1D53FF338(a1);
    v33 = v4;
    v34 = v5 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v28 = v2;
      while (!__OFADD__(v6++, 1))
      {
        v8 = v32;
        v9 = v34;
        v30 = v33;
        v10 = sub_1D51D30D4(v32, v33, v34, a1);
        v11 = *(v10 + 16);
        v12 = *(v10 + 24);

        v35 = v3;
        v13 = *(v3 + 16);
        if (v13 >= *(v3 + 24) >> 1)
        {
          sub_1D4F03980();
          v3 = v35;
        }

        *(v3 + 16) = v13 + 1;
        v14 = v3 + 16 * v13;
        *(v14 + 32) = v11;
        *(v14 + 40) = v12;
        if (v29)
        {
          if (!v9)
          {
            goto LABEL_36;
          }

          v15 = v3;
          if (sub_1D5615A68())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v20 = v28;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1650, &qword_1D5640A30);
          v21 = sub_1D56155B8();
          sub_1D5615AE8();
          v21(v31, 0);
        }

        else
        {
          if (v9)
          {
            goto LABEL_37;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v15 = v3;
          v16 = 1 << *(a1 + 32);
          if (v8 >= v16)
          {
            goto LABEL_32;
          }

          v17 = v8 >> 6;
          v18 = *(a1 + 56 + 8 * (v8 >> 6));
          if (((v18 >> v8) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(a1 + 36) != v30)
          {
            goto LABEL_34;
          }

          v19 = v18 & (-2 << (v8 & 0x3F));
          if (v19)
          {
            v16 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v20 = v28;
          }

          else
          {
            v22 = v17 << 6;
            v23 = v17 + 1;
            v24 = (a1 + 64 + 8 * v17);
            v20 = v28;
            while (v23 < (v16 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_1D4ECC79C(v8, v30, 0);
                v16 = __clz(__rbit64(v25)) + v22;
                goto LABEL_27;
              }
            }

            sub_1D4ECC79C(v8, v30, 0);
          }

LABEL_27:
          v27 = *(a1 + 36);
          v32 = v16;
          v33 = v27;
          v34 = 0;
        }

        v3 = v15;
        if (v6 == v20)
        {
          sub_1D4ECC79C(v32, v33, v34);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

uint64_t sub_1D51B98D8()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_204_2();
  v0[8] = sub_1D51D32C4;
  v0[9] = 0;

  OUTLINED_FUNCTION_318();
  v0[11] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_27_0(&unk_1D564E110);
  v4 = v1;
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_183_3(v2);

  return v4();
}

uint64_t sub_1D51B9994()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 96);
  *v4 = *v1;
  v3[13] = v7;
  v3[14] = v0;

  if (v0)
  {
    v8 = v3[11];
    OUTLINED_FUNCTION_356();
    v9 = v3[9];
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D51B9AAC()
{
  OUTLINED_FUNCTION_80();
  v2 = v1[13];
  if (v2)
  {
    v3 = v1[11];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v1[11];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v5 + 16);
      sub_1D4F00DEC();
      v5 = v18;
    }

    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    OUTLINED_FUNCTION_224_1();
    if (v10)
    {
      OUTLINED_FUNCTION_22_41(v9);
      sub_1D4F00DEC();
      v8 = v19;
    }

    *(v8 + 16) = v0;
    *(v8 + 8 * v7 + 32) = v2;
    v1[11] = v8;
    OUTLINED_FUNCTION_27_0(&unk_1D564E110);
    v20 = v11;
    v12 = swift_task_alloc();
    v1[12] = v12;
    *v12 = v1;
    OUTLINED_FUNCTION_183_3();

    return v20();
  }

  else
  {
    OUTLINED_FUNCTION_351();
    v14 = v1[9];

    v15 = v1[1];
    v16 = v1[11];

    return v15(v16);
  }
}

uint64_t sub_1D51B9BDC()
{
  OUTLINED_FUNCTION_55();
  v1 = *(v0 + 112);
  return v2();
}

uint64_t sub_1D51B9C00()
{
  v1[10] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1568, &qword_1D5640910) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF50, &qword_1D561DD10);
  v1[12] = v3;
  v4 = *(v3 - 8);
  v1[13] = v4;
  v5 = *(v4 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D51B9D10, 0, 0);
}

uint64_t sub_1D51B9D10()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_204_2();
  v0[8] = sub_1D52B248C;
  v0[9] = 0;

  OUTLINED_FUNCTION_318();
  v0[16] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_27_0(&unk_1D564E0D8);
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[17] = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_179_3(v2);

  return v6(v4);
}

uint64_t sub_1D51B9DCC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[18] = v0;

  if (v0)
  {
    v9 = v3[16];
    OUTLINED_FUNCTION_356();
    v10 = v3[9];
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D51B9EDC()
{
  OUTLINED_FUNCTION_160();
  v1 = v0[11];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[12]) == 1)
  {
    v3 = v0[14];
    v2 = v0[15];
    OUTLINED_FUNCTION_351();
    v4 = v0[9];

    sub_1D4E50004(v1, &qword_1EC7F1568, &qword_1D5640910);

    v5 = v0[1];
    v6 = v0[16];

    return v5(v6);
  }

  else
  {
    v9 = v0[15];
    v8 = v0[16];
    v10 = v0[14];
    sub_1D51D3078();
    sub_1D51D3024();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = v0[16];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_100_8();
      sub_1D4F0216C();
      v12 = v23;
    }

    OUTLINED_FUNCTION_222_1();
    if (v14)
    {
      OUTLINED_FUNCTION_16_56(v13);
      sub_1D4F0216C();
      v12 = v24;
    }

    v15 = v0[14];
    v16 = v0[13];
    sub_1D4E50004(v0[15], &qword_1EC7EAF50, &qword_1D561DD10);
    *(v12 + 16) = v8;
    v17 = *(v16 + 80);
    OUTLINED_FUNCTION_220_1();
    v18 = *(v16 + 72);
    sub_1D51D3078();
    v0[16] = v12;
    OUTLINED_FUNCTION_27_0(&unk_1D564E0D8);
    v25 = v19;
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[17] = v20;
    *v20 = v21;
    v22 = OUTLINED_FUNCTION_179_3();

    return v25(v22);
  }
}

uint64_t sub_1D51BA0D4()
{
  OUTLINED_FUNCTION_60();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];

  OUTLINED_FUNCTION_55();
  v5 = v0[18];

  return v4();
}

uint64_t sub_1D51BA144()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
  }

  else
  {
    v4 = *v0 + 16 * v1;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v0[1] = v1 + 1;
    v3 = v0[2];
    if (!__OFADD__(v3, 1))
    {
      v0[2] = v3 + 1;

      return v3;
    }
  }

  __break(1u);
  return result;
}

void sub_1D51BA1C8()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
    }

    else
    {
      v3 = *(*v0 + 8 * v1 + 32);
      v0[1] = v1 + 1;
      v4 = v0[2];
      if (!__OFADD__(v4, 1))
      {
        v0[2] = v4 + 1;
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D51BA21C()
{
  OUTLINED_FUNCTION_60();
  v0[89] = v1;
  v0[88] = v2;
  v0[87] = v3;
  v0[86] = v4;
  v0[85] = v5;
  v6 = type metadata accessor for MusicDownloadedSongCatalogProperties();
  OUTLINED_FUNCTION_69(v6);
  v0[90] = v7;
  v9 = *(v8 + 64);
  v0[91] = OUTLINED_FUNCTION_127();
  v10 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D51BA2CC()
{
  v214 = v0;
  if (*(v0[87] + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D5621E90;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15D0, &qword_1D56409C0);
    inited = swift_initStaticObject();
    *(v2 + 32) = inited;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15E0, &qword_1D56409D0);
    *(v2 + 40) = swift_initStaticObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1600, &qword_1D56409F0);
    *(v2 + 48) = swift_initStaticObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1610, &qword_1D5640A00);
    v5 = swift_initStaticObject();
    *(v2 + 56) = v5;
    *(v2 + 64) = swift_initStaticObject();
    *(v2 + 72) = swift_initStaticObject();
    *(v2 + 80) = swift_initStaticObject();
    v180 = v5;
    if (sub_1D4E62628(v2))
    {
      sub_1D5011DA4();
    }

    else
    {
      swift_setDeallocating();
      sub_1D4EFF20C();
      v6 = MEMORY[0x1E69E7CD0];
    }

    v11 = v0[85];
    v0[83] = v6;
    v200 = sub_1D51BE884(v11);
    OUTLINED_FUNCTION_185_3();
    i = 0;
    if (v1)
    {
      while (1)
      {
        v13 = i;
LABEL_14:
        OUTLINED_FUNCTION_239(v13);
        v210.n128_u8[0] = inited;
        sub_1D51C75A0(&v210);
        sub_1D52C8A20();
      }
    }

    while (1)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_56;
      }

      if (v13 >= v5)
      {
        break;
      }

      v1 = *(v3 + 8 * v13);
      ++i;
      if (v1)
      {
        i = v13;
        goto LABEL_14;
      }
    }

    v14 = v0[86];
    v15 = v0[85];

    OUTLINED_FUNCTION_185_3();
    for (i = 0; ; ++i)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v5)
      {
        v18 = v0[87];
        v19 = v0[86];

        sub_1D51B95B4(v0[83]);
        v21 = v20;

        v0[84] = v21;
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
        OUTLINED_FUNCTION_182_2();
        sub_1D4E62A60(v23, v24, &unk_1D561D780);
        v161 = v22;
        i = sub_1D5614CF8();
        v2 = v25;

        sub_1D4F40C50(v18);
        v190 = v26;
        OUTLINED_FUNCTION_315();
        v28 = v27;
        v3 = *(v27 + 16);
        v29 = *(v27 + 24) >> 1;
        v1 = v3 + 1;
        if (v29 <= v3)
        {
          goto LABEL_57;
        }

        goto LABEL_22;
      }

      v1 = *(v3 + 8 * v16);
      if (v1)
      {
        for (j = v16; ; v16 = j)
        {
          OUTLINED_FUNCTION_239(v16);
          v210.n128_u8[0] = inited;
          sub_1D51C75A0(&v210);
          sub_1D52C8A20();
        }
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    OUTLINED_FUNCTION_121_7();
    sub_1D4F0029C();
    v28 = v108;
    v29 = *(v108 + 24) >> 1;
LABEL_22:
    *(v28 + 16) = v1;
    OUTLINED_FUNCTION_282_0();
    OUTLINED_FUNCTION_80_9(v30);
    *(v31 + 104) = 0;
    v32 = v3 + 2;

    if (v29 < v32)
    {
      OUTLINED_FUNCTION_121_7();
      sub_1D4F0029C();
      v28 = v109;
    }

    *(v28 + 16) = v32;
    v33 = v28 + 80 * v1;
    *(v33 + 32) = i;
    *(v33 + 40) = v2;
    OUTLINED_FUNCTION_18_52(v33, v122, v131, v141, v151, v161, inited, v180, v190, v200, v210, v211, v212, v213);

    OUTLINED_FUNCTION_166_1();
    if (v35)
    {
      OUTLINED_FUNCTION_22_41(v34);
      sub_1D4F0029C();
      v28 = v110;
    }

    OUTLINED_FUNCTION_124_6();
    OUTLINED_FUNCTION_80_9(v36);
    OUTLINED_FUNCTION_18_52(v37, v123, v132, v142, v152, v162, v171, v181, v191, v201, v210, v211, v212, v213);
    v38 = OUTLINED_FUNCTION_252();
    v40 = v39;
    v41 = *(v28 + 16);
    v42 = *(v28 + 24);

    if (v41 >= v42 >> 1)
    {
      OUTLINED_FUNCTION_54_18();
      sub_1D4F0029C();
      v28 = v111;
    }

    OUTLINED_FUNCTION_124_6();
    *(v43 + 32) = v38;
    *(v43 + 40) = v40;
    OUTLINED_FUNCTION_18_52(v43, v124, v133, v143, v153, v163, v172, v182, v192, v202, v210, v211, v212, v213);
    OUTLINED_FUNCTION_279();
    if (!(v46 ^ v47 | v45))
    {
      OUTLINED_FUNCTION_25(v44);
      sub_1D4F0029C();
      v28 = v112;
    }

    *(v28 + 16) = v41;
    OUTLINED_FUNCTION_176_2();
    OUTLINED_FUNCTION_280();
    *(v49 + 32) = v48 & 0xFFFFFFFFFFFFLL | 0x2045000000000000;
    *(v49 + 40) = 0xE800000000000000;
    OUTLINED_FUNCTION_18_52(v49, v125, v134, v144, v154, v164, v173, v183, v193, v203, v210, v211, v212, v213);
    if (qword_1EDD5A228 != -1)
    {
      OUTLINED_FUNCTION_14_55();
    }

    v50 = *(inited + 16);
    v51 = *(inited + 24);
    v52 = *(v28 + 16);
    v53 = *(v28 + 24);

    if (v52 >= v53 >> 1)
    {
      OUTLINED_FUNCTION_54_18();
      sub_1D4F0029C();
      v28 = v113;
    }

    OUTLINED_FUNCTION_124_6();
    *(v54 + 32) = v50;
    *(v54 + 40) = v51;
    OUTLINED_FUNCTION_18_52(v54, v126, v135, v145, v155, v165, v174, v184, v194, v204, v210, v211, v212, v213);
    OUTLINED_FUNCTION_279();
    if (!(v46 ^ v47 | v45))
    {
      OUTLINED_FUNCTION_25(v55);
      sub_1D4F0029C();
      v28 = v114;
    }

    *(v28 + 16) = v52;
    OUTLINED_FUNCTION_176_2();
    *(v56 + 32) = v57;
    *(v56 + 40) = 0xE400000000000000;
    OUTLINED_FUNCTION_18_52(v56, v127, v136, v146, v156, v166, v175, v185, v195, v205, v210, v211, v212, v213);
    v58 = sub_1D51D2E5C(&qword_1EC7F15B8, &qword_1EC7EABD8, &unk_1D561D780);
    OUTLINED_FUNCTION_9_0();
    v0[59] = 0xD000000000000021;
    v0[60] = v59;
    v0[61] = 60;
    v0[62] = 0xE100000000000000;
    v0[63] = 95;
    v0[64] = 0xE100000000000000;
    v60 = sub_1D4F53278();

    v61 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_3_31();
    v0[65] = OUTLINED_FUNCTION_361();
    v0[66] = v62;
    v0[67] = 62;
    v0[68] = 0xE100000000000000;
    v0[69] = 95;
    v0[70] = 0xE100000000000000;
    OUTLINED_FUNCTION_3_31();
    OUTLINED_FUNCTION_361();
    OUTLINED_FUNCTION_188_3();

    v0[71] = v0 + 65;
    v0[72] = v50;
    v0[73] = 46;
    v0[74] = 0xE100000000000000;
    v0[75] = 95;
    v0[76] = 0xE100000000000000;
    OUTLINED_FUNCTION_3_31();
    v63 = OUTLINED_FUNCTION_361();
    v65 = v64;

    v0[77] = v63;
    v0[78] = v65;
    v0[79] = 8236;
    v0[80] = 0xE200000000000000;
    v0[81] = 95;
    v0[82] = 0xE100000000000000;
    v147 = v60;
    v157 = v60;
    v137 = v60;
    OUTLINED_FUNCTION_3_31();
    v66 = OUTLINED_FUNCTION_361();
    v68 = v67;

    v70 = *(v28 + 16);
    v69 = *(v28 + 24);
    OUTLINED_FUNCTION_320();
    if (v35)
    {
      OUTLINED_FUNCTION_25(v71);
      sub_1D4F0029C();
      v28 = v115;
    }

    *(v28 + 16) = v65;
    v72 = v28 + 80 * v70;
    *(v72 + 32) = v196;
    *(v72 + 40) = v210;
    *(v72 + 56) = v167;
    *(v72 + 64) = v58;
    *(v72 + 72) = v66;
    *(v72 + 80) = v68;
    OUTLINED_FUNCTION_173_1(v72);

    OUTLINED_FUNCTION_166_1();
    if (v35)
    {
      OUTLINED_FUNCTION_22_41(v73);
      sub_1D4F0029C();
      v28 = v116;
    }

    v74 = v186;
    OUTLINED_FUNCTION_124_6();
    OUTLINED_FUNCTION_103_11();
    *(v75 + 32) = v76;
    *(v75 + 40) = 0xE900000000000020;
    v77 = v210;
    v78 = v211;
    v79 = v212;
    *(v75 + 96) = v213;
    *(v75 + 64) = v78;
    *(v75 + 80) = v79;
    *(v75 + 48) = v77;
    v80 = MEMORY[0x1E69E6530];
    *(v75 + 104) = 0;
    v0[37] = v80;
    v0[38] = &off_1F50BFF78;
    v0[34] = v206;
    sub_1D4E628D4((v0 + 34), (v0 + 2));
    OUTLINED_FUNCTION_172_3();
    OUTLINED_FUNCTION_279();
    if (!(v46 ^ v47 | v45))
    {
      OUTLINED_FUNCTION_25(v81);
      sub_1D4F0029C();
      v28 = v117;
    }

    *(v28 + 16) = v65;
    OUTLINED_FUNCTION_176_2();
    OUTLINED_FUNCTION_140_7(v82);
    __swift_destroy_boxed_opaque_existential_1(v0 + 34);
    OUTLINED_FUNCTION_166_1();
    if (v35)
    {
      OUTLINED_FUNCTION_22_41(v83);
      sub_1D4F0029C();
      v28 = v118;
    }

    OUTLINED_FUNCTION_124_6();
    OUTLINED_FUNCTION_106_8(v84);
    OUTLINED_FUNCTION_18_52(v85, v61, v137, v147, v157, v167, v176, v186, v196, v206, v210, v211, v212, v213);
    v87 = *(v74 + 16);
    v86 = *(v74 + 24);
    v88 = *(v28 + 24);

    if (v65 + 2 > (v88 >> 1))
    {
      OUTLINED_FUNCTION_58_19();
      sub_1D4F0029C();
      v28 = v119;
    }

    OUTLINED_FUNCTION_125_8();
    *(v89 + 32) = v87;
    *(v89 + 40) = v86;
    OUTLINED_FUNCTION_18_52(v89, v128, v138, v148, v158, v168, v177, v187, v197, v207, v210, v211, v212, v213);
    v90 = *(v28 + 24);
    if (v65 + 3 > (v90 >> 1))
    {
      OUTLINED_FUNCTION_22_41(v90);
      sub_1D4F0029C();
      v28 = v120;
    }

    OUTLINED_FUNCTION_83_11();
    OUTLINED_FUNCTION_276(v91);
    OUTLINED_FUNCTION_18_52(v92, v129, v139, v149, v159, v169, v178, v188, v198, v208, v210, v211, v212, v213);
    v0[42] = v80;
    v0[43] = &off_1F50BFF78;
    v0[39] = v209;
    sub_1D4E628D4((v0 + 39), (v0 + 12));
    OUTLINED_FUNCTION_160_5();
    v93 = *(v28 + 24);
    v94 = v65 + 4;
    if (v94 > (v93 >> 1))
    {
      OUTLINED_FUNCTION_25(v93);
      sub_1D4F0029C();
      v28 = v121;
    }

    *(v28 + 16) = v94;
    OUTLINED_FUNCTION_176_2();
    OUTLINED_FUNCTION_141_3(v95);
    __swift_destroy_boxed_opaque_existential_1(v0 + 39);
    OUTLINED_FUNCTION_166_1();
    if (v35)
    {
      OUTLINED_FUNCTION_22_41(v96);
      sub_1D4F0029C();
    }

    OUTLINED_FUNCTION_124_6();
    OUTLINED_FUNCTION_148_7(v97);
    OUTLINED_FUNCTION_18_52(v98, v130, v140, v150, v160, v170, v179, v189, v199, v209, v210, v211, v212, v213);
    OUTLINED_FUNCTION_57_1();
    sub_1D54F08F4(v99, v100, v101, v102, v103);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[92] = v104;
    *v104 = v105;
    v104[1] = sub_1D51BAC80;
    v106 = v0[89];
    v107 = v0[88];

    return sub_1D52EF728((v0 + 28), (v0 + 49), v107, v106);
  }

  else
  {
    v7 = v0[91];

    v8 = v0[1];
    v9 = MEMORY[0x1E69E7CC0];

    return v8(v9);
  }
}

uint64_t sub_1D51BAC80()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 736);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    sub_1D51D2984(v3 + 392);
    *(v3 + 800) = v0;
    v9 = OUTLINED_FUNCTION_57_20();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    *(v3 + 744) = *(v3 + 224);
    v12 = *(v3 + 248);
    *(v3 + 352) = *(v3 + 232);
    *(v3 + 368) = v12;
    *(v3 + 384) = *(v3 + 264);
    OUTLINED_FUNCTION_27_0(&unk_1D566D128);
    v17 = v13;
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v3 + 752) = v14;
    *v14 = v15;
    v14[1] = sub_1D51BAE10;

    return v17(v3 + 352, &unk_1D566D190, 0);
  }
}

uint64_t sub_1D51BAE10()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 752);
  v7 = *v1;
  *v4 = v7;
  v3[95] = v8;
  v3[96] = v0;

  if (v0)
  {
    sub_1D51D2984((v3 + 49));
    v9 = OUTLINED_FUNCTION_12_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_27_0(&unk_1D56409B8);
    v15 = v12;
    v13 = swift_task_alloc();
    v3[97] = v13;
    *v13 = v7;
    v13[1] = sub_1D51BAF84;

    return v15();
  }
}

uint64_t sub_1D51BAF84()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 776);
  *v4 = *v1;
  v3[98] = v7;
  v3[99] = v0;

  if (v0)
  {
    v8 = v3[95];
    sub_1D51D2984((v3 + 49));
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51BB09C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[93];

  sub_1D51D2984((v0 + 44));
  v0[100] = v0[96];
  v2 = OUTLINED_FUNCTION_57_20();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D51BB0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v18 = 0;
  v19 = *(v14 + 784);
  v20 = *(v14 + 720);
  v21 = *(v19 + 16);
  v51 = v19 + 32;
  v22 = *(v14 + 792);
  v23 = MEMORY[0x1E69E7CC0];
  while (v21 != v18)
  {
    if (v18 >= *(v19 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v15, v16, v17);
    }

    v24 = *(v14 + 760);
    v25 = *(v14 + 728);
    v26 = *(v51 + 8 * v18);

    sub_1D51D2F74(v14 + 392, v14 + 432);
    sub_1D51CE098(v24, v26, (v14 + 392), v14 + 176);
    sub_1D51C6050((v14 + 176), v25);
    if (v22)
    {
      v47 = *(v14 + 784);
      v48 = *(v14 + 760);
      v49 = *(v14 + 744);

      sub_1D51D2984(v14 + 352);

      sub_1D51D2984(v14 + 392);

      *(v14 + 800) = v22;
      OUTLINED_FUNCTION_57_20();
      OUTLINED_FUNCTION_89();

      return MEMORY[0x1EEE6DFA0](v15, v16, v17);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_100_8();
      sub_1D4F00EDC();
      v23 = v32;
    }

    OUTLINED_FUNCTION_97_2();
    if (v28)
    {
      OUTLINED_FUNCTION_16_56(v27);
      sub_1D4F00EDC();
      v23 = v33;
    }

    v29 = *(v14 + 728);
    *(v23 + 16) = v24;
    v30 = *(v20 + 80);
    OUTLINED_FUNCTION_220_1();
    v31 = *(v20 + 72);
    v15 = OUTLINED_FUNCTION_205_2();
    v22 = 0;
    ++v18;
  }

  v34 = *(v14 + 784);
  v35 = *(v14 + 760);
  v36 = *(v14 + 744);
  sub_1D51D2984(v14 + 392);

  sub_1D51D2984(v14 + 352);

  v37 = *(v14 + 728);

  OUTLINED_FUNCTION_51_15();
  OUTLINED_FUNCTION_89();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, v51, a11, a12, a13, a14);
}

uint64_t sub_1D51BB2D8()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[93];

  sub_1D51D2984((v0 + 44));
  v0[100] = v0[99];
  v2 = OUTLINED_FUNCTION_57_20();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D51BB338()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 728);

  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 800);

  return v2();
}

uint64_t sub_1D51BB394(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D51BC2B4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1D51D2984(v3 + 16);
    OUTLINED_FUNCTION_55();

    return v12();
  }
}

uint64_t sub_1D51BC3D0()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D2984(v0 + 16);
  OUTLINED_FUNCTION_55();
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_1D51BC42C()
{
  OUTLINED_FUNCTION_60();
  v0[269] = v1;
  v0[268] = v2;
  v0[267] = v3;
  v4 = _s10DescriptorVMa();
  v0[270] = v4;
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  v0[271] = OUTLINED_FUNCTION_127();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15B0, &qword_1D5640980);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  v0[272] = OUTLINED_FUNCTION_127();
  v10 = _s13PersistedDateVMa();
  v0[273] = v10;
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  v0[274] = OUTLINED_FUNCTION_127();
  v13 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D51BC500()
{
  OUTLINED_FUNCTION_75_0();
  v1 = *(v0 + 2192);
  v2 = *(v0 + 2136);
  sub_1D560C2F8();
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = OUTLINED_FUNCTION_159();
  v7 = __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = *(v3 - 8);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_127();
  (*(v8 + 16))(v10, v7, v3);
  v11 = *(v4 + 8);
  *(v0 + 2048) = swift_getAssociatedTypeWitness();
  *(v0 + 2056) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0((v0 + 2024));
  sub_1D5614F98();

  v12 = OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_85_0();
  sub_1D5615938();
  if (__swift_getEnumTagSinglePayload(v3, 1, v10) == 1)
  {
    OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_6_71();
    sub_1D51D2E04(v12, v13);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2024));

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_73_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_227_1();
  v16 = *(v0 + 2176);
  v17 = *(v0 + 2168);
  OUTLINED_FUNCTION_65_20();
  sub_1D4F0029C();
  v19 = v18;
  v21 = *(v18 + 16);
  v20 = *(v18 + 24);
  OUTLINED_FUNCTION_320();
  if (v23)
  {
    OUTLINED_FUNCTION_16_56(v22);
    sub_1D4F0029C();
    v19 = v154;
  }

  OUTLINED_FUNCTION_117_7();
  OUTLINED_FUNCTION_322(v24);
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_178_2();
  v25 = *(v19 + 16);
  v26 = *(v19 + 24);

  if (v25 >= v26 >> 1)
  {
    OUTLINED_FUNCTION_23_44();
    sub_1D4F0029C();
    v19 = v155;
  }

  OUTLINED_FUNCTION_123_0();
  v28 = (v19 + v25 * v27);
  v28[2].n128_u64[0] = v10;
  v28[2].n128_u64[1] = v21;
  v29 = *(v0 + 1328);
  OUTLINED_FUNCTION_17_55(v28, *(v0 + 1280), *(v0 + 1296), *(v0 + 1312));
  OUTLINED_FUNCTION_203_2();
  if (!(v32 ^ v33 | v31))
  {
    OUTLINED_FUNCTION_24_43(v30);
    sub_1D4F0029C();
    v19 = v156;
  }

  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_80_9(v34);
  OUTLINED_FUNCTION_11_70(v35);
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55();
  }

  v36 = (v0 + 1672);
  v38 = aAssetAdamId[0];
  v37 = aAssetAdamId[1];
  v40 = *(v19 + 16);
  v39 = *(v19 + 24);

  if (v40 >= v39 >> 1)
  {
    OUTLINED_FUNCTION_53_18();
    sub_1D4F0029C();
    v19 = v157;
  }

  v41 = (v0 + 1504);
  OUTLINED_FUNCTION_284();
  v42[2].n128_u64[0] = v38;
  v42[2].n128_u64[1] = v37;
  v43 = *(v0 + 1720);
  OUTLINED_FUNCTION_17_55(v42, *v36, *(v0 + 1688), *(v0 + 1704));
  if ((v40 + 2) > (v44 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v44);
    sub_1D4F0029C();
    v19 = v158;
  }

  OUTLINED_FUNCTION_62_23();
  v45[2].n128_u64[0] = 0x202020200A2CLL;
  v45[2].n128_u64[1] = v46;
  v47 = *(v0 + 1552);
  OUTLINED_FUNCTION_21(v45, *v41, *(v0 + 1520), *(v0 + 1536));
  OUTLINED_FUNCTION_297(aAddedDate);
  OUTLINED_FUNCTION_319();
  if ((v40 + 1) > (v38 >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
    v19 = v159;
  }

  OUTLINED_FUNCTION_61_3();
  *(v48 + 32) = v36;
  *(v48 + 40) = v41;
  OUTLINED_FUNCTION_10_68(v48);
  OUTLINED_FUNCTION_287();
  if (!(v32 ^ v33 | v31))
  {
    OUTLINED_FUNCTION_16_56(v49);
    sub_1D4F0029C();
    v19 = v160;
  }

  OUTLINED_FUNCTION_62_23();
  *(v50 + 32) = 0x202020200A2CLL;
  *(v50 + 40) = v51;
  OUTLINED_FUNCTION_8_67(v50);
  OUTLINED_FUNCTION_297(aIsBackfill);

  if ((v40 + 5) > ((v0 + 1728) >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
    v19 = v161;
  }

  OUTLINED_FUNCTION_61_3();
  *(v52 + 32) = v36;
  *(v52 + 40) = v41;
  OUTLINED_FUNCTION_10_68(v52);
  OUTLINED_FUNCTION_286();
  if (!(v32 ^ v33 | v31))
  {
    OUTLINED_FUNCTION_16_56(v53);
    sub_1D4F0029C();
    v19 = v162;
  }

  OUTLINED_FUNCTION_62_23();
  *(v54 + 32) = 0x202020200A2CLL;
  *(v54 + 40) = v55;
  OUTLINED_FUNCTION_8_67(v54);
  OUTLINED_FUNCTION_297(&qword_1EC7E9980);

  if ((v40 + 7) > ((v0 + 664) >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
    v19 = v163;
  }

  OUTLINED_FUNCTION_61_3();
  *(v56 + 32) = v36;
  *(v56 + 40) = v41;
  OUTLINED_FUNCTION_10_68(v56);
  v57 = *(v19 + 24);
  if ((v40 + 8) > (v57 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v57);
    sub_1D4F0029C();
    v19 = v164;
  }

  OUTLINED_FUNCTION_62_23();
  *(v58 + 32) = 0x202020200A2CLL;
  *(v58 + 40) = v59;
  OUTLINED_FUNCTION_8_67(v58);
  OUTLINED_FUNCTION_297(&qword_1EC7E99A8);

  if ((v40 + 9) > ((v0 + 776) >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
    v19 = v165;
  }

  OUTLINED_FUNCTION_61_3();
  *(v60 + 32) = v36;
  *(v60 + 40) = v41;
  OUTLINED_FUNCTION_10_68(v60);
  v61 = *(v19 + 24);
  if ((v40 + 10) > (v61 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v61);
    sub_1D4F0029C();
    v19 = v166;
  }

  OUTLINED_FUNCTION_62_23();
  OUTLINED_FUNCTION_340(v62);
  OUTLINED_FUNCTION_12_58(v63);
  v65 = qword_1EC7E99D0;
  v64 = off_1EC7E99D8;
  v66 = *(v19 + 24);

  if ((v40 + 11) > (v66 >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
    v19 = v167;
  }

  OUTLINED_FUNCTION_61_3();
  *(v67 + 32) = v65;
  *(v67 + 40) = v64;
  OUTLINED_FUNCTION_10_68(v67);
  v68 = *(v19 + 24);
  if ((v40 + 12) > (v68 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v68);
    sub_1D4F0029C();
    v19 = v168;
  }

  OUTLINED_FUNCTION_62_23();
  OUTLINED_FUNCTION_340(v69);
  OUTLINED_FUNCTION_8_67(v70);
  OUTLINED_FUNCTION_297(&qword_1EC7E99F8);

  if ((v40 + 13) > ((v0 + 1000) >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
    v19 = v169;
  }

  OUTLINED_FUNCTION_61_3();
  *(v71 + 32) = v65;
  *(v71 + 40) = v64;
  OUTLINED_FUNCTION_12_58(v71);
  v72 = *(v19 + 24);
  if ((v40 + 14) > (v72 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v72);
    sub_1D4F0029C();
    v19 = v170;
  }

  v73 = *(v0 + 2168);
  OUTLINED_FUNCTION_288();
  *(v74 + 32) = 0xD000000000000010;
  *(v74 + 40) = 0x80000001D5687730;
  v75 = *(v0 + 1160);
  OUTLINED_FUNCTION_52_20(*(v0 + 1112), *(v0 + 1128), *(v0 + 1144));
  v78 = *v76;
  v77 = v76[1];
  v79 = *(v19 + 24);

  if ((v40 + 15) > (v79 >> 1))
  {
    OUTLINED_FUNCTION_53_18();
    sub_1D4F0029C();
    v19 = v171;
  }

  OUTLINED_FUNCTION_61_3();
  v80 = MEMORY[0x1E69E6158];
  v81[4] = v78;
  v81[5] = v77;
  v81[7] = v80;
  v81[8] = &off_1F50C0538;
  OUTLINED_FUNCTION_249(v81, *(v0 + 2104), *(v0 + 2120));
  if (!(v32 ^ v33 | v31))
  {
    OUTLINED_FUNCTION_16_56(v82);
    sub_1D4F0029C();
    v19 = v172;
  }

  v83 = *(v0 + 2184);
  v84 = *(v0 + 2168);
  OUTLINED_FUNCTION_40_31();
  *(v85 + 32) = 0x202020200A2CLL;
  *(v85 + 40) = v86;
  v87 = OUTLINED_FUNCTION_133_4();
  v88 = *(v0 + 1272);
  OUTLINED_FUNCTION_69_17(v87, v89, v90);
  v92 = *(v91 + 20);
  *(v0 + 1968) = v93;
  *(v0 + 1976) = &off_1F50B88D8;
  __swift_allocate_boxed_opaque_existential_0((v0 + 1944));
  OUTLINED_FUNCTION_2_102();
  sub_1D51D2DB0();
  sub_1D4E628D4(v0 + 1944, v0 + 16);
  OUTLINED_FUNCTION_336();
  if (!(v32 ^ v33 | v31))
  {
    OUTLINED_FUNCTION_24_43(v94);
    sub_1D4F0029C();
    v19 = v173;
  }

  v95 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_253(v95);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1944));
  OUTLINED_FUNCTION_97_2();
  if (v23)
  {
    OUTLINED_FUNCTION_16_56(v96);
    sub_1D4F0029C();
    v19 = v174;
  }

  v97 = *(v0 + 2168);
  OUTLINED_FUNCTION_40_31();
  *(v98 + 32) = 0x202020200A2CLL;
  *(v98 + 40) = v99;
  OUTLINED_FUNCTION_43_20();
  LOBYTE(v101) = *(v101 + *(v100 + 24));
  *(v0 + 1888) = &_s13PersistedBoolVN;
  OUTLINED_FUNCTION_357(v101);
  *(v0 + 488) = 1;
  OUTLINED_FUNCTION_116_10();
  if (!(v32 ^ v33 | v31))
  {
    OUTLINED_FUNCTION_24_43(v102);
    sub_1D4F0029C();
    v19 = v175;
  }

  v103 = OUTLINED_FUNCTION_49_18();
  memcpy(v103, (v0 + 416), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1864));
  OUTLINED_FUNCTION_97_2();
  if (v23)
  {
    OUTLINED_FUNCTION_16_56(v104);
    sub_1D4F0029C();
    v19 = v176;
  }

  v105 = *(v0 + 2168);
  OUTLINED_FUNCTION_40_31();
  *(v106 + 32) = 0x202020200A2CLL;
  *(v106 + 40) = v107;
  OUTLINED_FUNCTION_43_20();
  v110 = *(v109 + *(v108 + 28));
  *(v0 + 1848) = MEMORY[0x1E69E6530];
  OUTLINED_FUNCTION_353(v110);
  *(v0 + 408) = 1;
  OUTLINED_FUNCTION_116_10();
  if (!(v32 ^ v33 | v31))
  {
    OUTLINED_FUNCTION_24_43(v111);
    sub_1D4F0029C();
    v19 = v177;
  }

  v112 = OUTLINED_FUNCTION_49_18();
  memcpy(v112, (v0 + 336), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1824));
  OUTLINED_FUNCTION_97_2();
  if (v23)
  {
    OUTLINED_FUNCTION_16_56(v113);
    sub_1D4F0029C();
    v19 = v178;
  }

  v114 = *(v0 + 2168);
  OUTLINED_FUNCTION_40_31();
  *(v115 + 32) = 0x202020200A2CLL;
  *(v115 + 40) = v116;
  v117 = OUTLINED_FUNCTION_133_4();
  v118 = *(v0 + 600);
  OUTLINED_FUNCTION_69_17(v117, v119, v120);
  OUTLINED_FUNCTION_272_0(v121);
  *(v0 + 328) = 1;
  OUTLINED_FUNCTION_116_10();
  if (!(v32 ^ v33 | v31))
  {
    OUTLINED_FUNCTION_24_43(v122);
    sub_1D4F0029C();
    v19 = v179;
  }

  v123 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_369(v123);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1784));
  OUTLINED_FUNCTION_97_2();
  if (v23)
  {
    OUTLINED_FUNCTION_16_56(v124);
    sub_1D4F0029C();
    v19 = v180;
  }

  v125 = *(v0 + 2184);
  v126 = *(v0 + 2168);
  OUTLINED_FUNCTION_40_31();
  *(v127 + 32) = 0x202020200A2CLL;
  *(v127 + 40) = v128;
  OUTLINED_FUNCTION_43_20();
  OUTLINED_FUNCTION_352(v129);
  OUTLINED_FUNCTION_2_102();
  sub_1D51D2DB0();
  sub_1D4E628D4(v0 + 1904, v0 + 176);
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_116_10();
  if (!(v32 ^ v33 | v31))
  {
    OUTLINED_FUNCTION_24_43(v130);
    sub_1D4F0029C();
    v19 = v181;
  }

  v131 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_317(v131);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1904));
  OUTLINED_FUNCTION_222_1();
  if (v23)
  {
    OUTLINED_FUNCTION_16_56(v132);
    sub_1D4F0029C();
    v19 = v182;
  }

  OUTLINED_FUNCTION_270();
  *(v133 + 32) = 0x202020200A2CLL;
  *(v133 + 40) = v134;
  OUTLINED_FUNCTION_44_23();
  *(v0 + 2008) = v135;
  *(v0 + 2016) = &off_1F50B88D8;
  __swift_allocate_boxed_opaque_existential_0((v0 + 1984));
  OUTLINED_FUNCTION_2_102();
  sub_1D51D2DB0();
  sub_1D4E628D4(v0 + 1984, v0 + 96);
  OUTLINED_FUNCTION_160_5();
  v136 = *(v19 + 24);
  OUTLINED_FUNCTION_203_2();
  if (!(v32 ^ v33 | v31))
  {
    OUTLINED_FUNCTION_24_43(v137);
    sub_1D4F0029C();
  }

  v138 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_254(v138);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1984));
  OUTLINED_FUNCTION_97_2();
  if (v23)
  {
    OUTLINED_FUNCTION_16_56(v139);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_64_16();
  v140[2].n128_u64[0] = 10506;
  v140[2].n128_u64[1] = 0xE200000000000000;
  v141 = *(v0 + 544);
  OUTLINED_FUNCTION_21(v140, *(v0 + 496), *(v0 + 512), *(v0 + 528));
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v142, v143, v144, v145, v146);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 2200) = v147;
  *v147 = v148;
  OUTLINED_FUNCTION_161_5(v147);
  OUTLINED_FUNCTION_73_0();

  return sub_1D52EF24C(v149, v150, v151);
}

uint64_t sub_1D51BCF50()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 2200);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 2208) = v0;

  sub_1D51D2984(v3 + 2064);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51BD050()
{
  OUTLINED_FUNCTION_75_0();
  v5 = *(v2 + 2168);
  OUTLINED_FUNCTION_189_2();
  sub_1D51D2E04(v6, v7);
  v8 = OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_85_0();
  sub_1D5615938();
  if (__swift_getEnumTagSinglePayload(v0, 1, v1) == 1)
  {
    OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_6_71();
    sub_1D51D2E04(v8, v9);
    __swift_destroy_boxed_opaque_existential_1((v2 + 2024));

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_73_0();

    __asm { BRAA            X1, X16 }
  }

  v12 = *(v2 + 2176);
  v13 = *(v2 + 2168);
  OUTLINED_FUNCTION_65_20();
  sub_1D4F0029C();
  OUTLINED_FUNCTION_144_3(v14);
  if (v16)
  {
    OUTLINED_FUNCTION_16_56(v15);
    sub_1D4F0029C();
    v8 = v142;
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_288();
  *(v19 + 32) = v17 | 7;
  *(v19 + 40) = v18;
  *(v19 + 104) = 0;
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_178_2();
  v21 = *(v8 + 16);
  v20 = *(v8 + 24);

  if (v21 >= v20 >> 1)
  {
    OUTLINED_FUNCTION_23_44();
    sub_1D4F0029C();
    v8 = v143;
  }

  OUTLINED_FUNCTION_123_0();
  v23 = (v8 + v21 * v22);
  v23[2].n128_u64[0] = v1;
  v23[2].n128_u64[1] = v3;
  v24 = *(v2 + 1328);
  OUTLINED_FUNCTION_17_55(v23, *(v2 + 1280), *(v2 + 1296), *(v2 + 1312));
  if ((v21 + 2) > (v25 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v25);
    sub_1D4F0029C();
    v8 = v144;
  }

  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_80_9(v26);
  OUTLINED_FUNCTION_11_70(v27);
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55();
  }

  v28 = (v2 + 1672);
  v30 = aAssetAdamId[0];
  v29 = aAssetAdamId[1];
  v32 = *(v8 + 16);
  v31 = *(v8 + 24);

  if (v32 >= v31 >> 1)
  {
    OUTLINED_FUNCTION_53_18();
    sub_1D4F0029C();
    v8 = v145;
  }

  v33 = (v2 + 1504);
  OUTLINED_FUNCTION_284();
  v34[2].n128_u64[0] = v30;
  v34[2].n128_u64[1] = v29;
  v35 = *(v2 + 1720);
  OUTLINED_FUNCTION_17_55(v34, *v28, *(v2 + 1688), *(v2 + 1704));
  if ((v32 + 2) > (v36 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v36);
    sub_1D4F0029C();
    v8 = v146;
  }

  OUTLINED_FUNCTION_290();
  OUTLINED_FUNCTION_62_23();
  v37[2].n128_u64[0] = v28;
  v37[2].n128_u64[1] = v38;
  v39 = *(v2 + 1552);
  OUTLINED_FUNCTION_21(v37, *v33, *(v2 + 1520), *(v2 + 1536));
  OUTLINED_FUNCTION_250(aAddedDate);
  OUTLINED_FUNCTION_319();
  if ((v32 + 1) > (v4 >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
    v8 = v147;
  }

  OUTLINED_FUNCTION_61_3();
  *(v40 + 32) = v20;
  *(v40 + 40) = v33;
  OUTLINED_FUNCTION_10_68(v40);
  OUTLINED_FUNCTION_287();
  if (!(v43 ^ v44 | v42))
  {
    OUTLINED_FUNCTION_16_56(v41);
    sub_1D4F0029C();
    v8 = v148;
  }

  OUTLINED_FUNCTION_62_23();
  *(v45 + 32) = v28;
  *(v45 + 40) = v46;
  OUTLINED_FUNCTION_12_58(v45);
  OUTLINED_FUNCTION_250(aIsBackfill);

  if ((v32 + 5) > ((v2 + 1728) >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
    v8 = v149;
  }

  OUTLINED_FUNCTION_61_3();
  *(v47 + 32) = v20;
  *(v47 + 40) = v33;
  OUTLINED_FUNCTION_10_68(v47);
  OUTLINED_FUNCTION_286();
  if (!(v43 ^ v44 | v42))
  {
    OUTLINED_FUNCTION_16_56(v48);
    sub_1D4F0029C();
    v8 = v150;
  }

  OUTLINED_FUNCTION_62_23();
  *(v49 + 32) = v28;
  *(v49 + 40) = v50;
  OUTLINED_FUNCTION_12_58(v49);
  OUTLINED_FUNCTION_250(&qword_1EC7E9980);

  if ((v32 + 7) > ((v2 + 664) >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
    v8 = v151;
  }

  OUTLINED_FUNCTION_61_3();
  *(v51 + 32) = v20;
  *(v51 + 40) = v33;
  OUTLINED_FUNCTION_10_68(v51);
  v52 = *(v8 + 24);
  if ((v32 + 8) > (v52 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v52);
    sub_1D4F0029C();
    v8 = v152;
  }

  OUTLINED_FUNCTION_62_23();
  *(v53 + 32) = v28;
  *(v53 + 40) = v54;
  OUTLINED_FUNCTION_12_58(v53);
  OUTLINED_FUNCTION_250(&qword_1EC7E99A8);

  if ((v32 + 9) > ((v2 + 776) >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
    v8 = v153;
  }

  OUTLINED_FUNCTION_61_3();
  *(v55 + 32) = v20;
  *(v55 + 40) = v33;
  OUTLINED_FUNCTION_10_68(v55);
  v56 = *(v8 + 24);
  if ((v32 + 10) > (v56 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v56);
    sub_1D4F0029C();
    v8 = v154;
  }

  OUTLINED_FUNCTION_62_23();
  *(v57 + 32) = v28;
  *(v57 + 40) = v58;
  OUTLINED_FUNCTION_12_58(v57);
  OUTLINED_FUNCTION_250(&qword_1EC7E99D0);

  if ((v32 + 11) > ((v2 + 888) >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
    v8 = v155;
  }

  OUTLINED_FUNCTION_61_3();
  *(v59 + 32) = v20;
  *(v59 + 40) = v33;
  OUTLINED_FUNCTION_10_68(v59);
  v60 = *(v8 + 24);
  if ((v32 + 12) > (v60 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v60);
    sub_1D4F0029C();
    v8 = v156;
  }

  OUTLINED_FUNCTION_62_23();
  *(v61 + 32) = v28;
  *(v61 + 40) = v62;
  OUTLINED_FUNCTION_12_58(v61);
  OUTLINED_FUNCTION_250(&qword_1EC7E99F8);

  if ((v32 + 13) > ((v2 + 1000) >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
    v8 = v157;
  }

  v63 = v2 + 1112;
  OUTLINED_FUNCTION_61_3();
  *(v64 + 32) = v20;
  *(v64 + 40) = v33;
  OUTLINED_FUNCTION_10_68(v64);
  v65 = *(v8 + 24);
  if ((v32 + 14) > (v65 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v65);
    sub_1D4F0029C();
    v8 = v158;
  }

  v66 = *(v2 + 2168);
  *(v8 + 16) = v32 + 14;
  v67 = v8 + 80 * (v32 + 13);
  *(v67 + 32) = 0xD000000000000010;
  *(v67 + 40) = 0x80000001D5687730;
  v68 = *v63;
  v69 = *(v2 + 1128);
  v70 = *(v2 + 1144);
  *(v67 + 96) = *(v2 + 1160);
  *(v67 + 64) = v69;
  *(v67 + 80) = v70;
  *(v67 + 48) = v68;
  *(v67 + 104) = 0;
  OUTLINED_FUNCTION_250(v66);

  if ((v32 + 15) > (v63 >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
    v8 = v159;
  }

  OUTLINED_FUNCTION_61_3();
  v71 = MEMORY[0x1E69E6158];
  v72[4] = v20;
  v72[5] = v33;
  v72[7] = v71;
  v72[8] = &off_1F50C0538;
  OUTLINED_FUNCTION_249(v72, *(v2 + 2104), *(v2 + 2120));
  if (!(v43 ^ v44 | v42))
  {
    OUTLINED_FUNCTION_16_56(v73);
    sub_1D4F0029C();
    v8 = v160;
  }

  v74 = *(v2 + 2184);
  v75 = *(v2 + 2168);
  OUTLINED_FUNCTION_40_31();
  *(v76 + 32) = v28;
  *(v76 + 40) = v77;
  v78 = *(v2 + 1272);
  OUTLINED_FUNCTION_69_17(*(v2 + 1224), *(v2 + 1240), *(v2 + 1256));
  v80 = *(v79 + 20);
  *(v2 + 1968) = v81;
  *(v2 + 1976) = &off_1F50B88D8;
  __swift_allocate_boxed_opaque_existential_0((v2 + 1944));
  OUTLINED_FUNCTION_2_102();
  sub_1D51D2DB0();
  sub_1D4E628D4(v2 + 1944, v2 + 16);
  OUTLINED_FUNCTION_336();
  if (!(v43 ^ v44 | v42))
  {
    OUTLINED_FUNCTION_24_43(v82);
    sub_1D4F0029C();
    v8 = v161;
  }

  v83 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_253(v83);
  __swift_destroy_boxed_opaque_existential_1((v2 + 1944));
  OUTLINED_FUNCTION_97_2();
  if (v16)
  {
    OUTLINED_FUNCTION_16_56(v84);
    sub_1D4F0029C();
    v8 = v162;
  }

  v85 = *(v2 + 2168);
  OUTLINED_FUNCTION_40_31();
  *(v86 + 32) = v28;
  *(v86 + 40) = v87;
  OUTLINED_FUNCTION_43_20();
  LOBYTE(v89) = *(v89 + *(v88 + 24));
  *(v2 + 1888) = &_s13PersistedBoolVN;
  OUTLINED_FUNCTION_357(v89);
  *(v2 + 488) = 1;
  OUTLINED_FUNCTION_116_10();
  if (!(v43 ^ v44 | v42))
  {
    OUTLINED_FUNCTION_24_43(v90);
    sub_1D4F0029C();
    v8 = v163;
  }

  v91 = OUTLINED_FUNCTION_49_18();
  memcpy(v91, (v2 + 416), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v2 + 1864));
  OUTLINED_FUNCTION_97_2();
  if (v16)
  {
    OUTLINED_FUNCTION_16_56(v92);
    sub_1D4F0029C();
    v8 = v164;
  }

  v93 = *(v2 + 2168);
  OUTLINED_FUNCTION_40_31();
  *(v94 + 32) = v28;
  *(v94 + 40) = v95;
  OUTLINED_FUNCTION_43_20();
  v98 = *(v97 + *(v96 + 28));
  *(v2 + 1848) = MEMORY[0x1E69E6530];
  OUTLINED_FUNCTION_353(v98);
  *(v2 + 408) = 1;
  OUTLINED_FUNCTION_116_10();
  if (!(v43 ^ v44 | v42))
  {
    OUTLINED_FUNCTION_24_43(v99);
    sub_1D4F0029C();
    v8 = v165;
  }

  v100 = OUTLINED_FUNCTION_49_18();
  memcpy(v100, (v2 + 336), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v2 + 1824));
  OUTLINED_FUNCTION_97_2();
  if (v16)
  {
    OUTLINED_FUNCTION_16_56(v101);
    sub_1D4F0029C();
    v8 = v166;
  }

  v102 = *(v2 + 2168);
  OUTLINED_FUNCTION_40_31();
  *(v103 + 32) = v28;
  *(v103 + 40) = v104;
  v105 = OUTLINED_FUNCTION_133_4();
  v106 = *(v2 + 600);
  OUTLINED_FUNCTION_69_17(v105, v107, v108);
  OUTLINED_FUNCTION_272_0(v109);
  *(v2 + 328) = 1;
  OUTLINED_FUNCTION_116_10();
  if (!(v43 ^ v44 | v42))
  {
    OUTLINED_FUNCTION_24_43(v110);
    sub_1D4F0029C();
    v8 = v167;
  }

  v111 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_369(v111);
  __swift_destroy_boxed_opaque_existential_1((v2 + 1784));
  OUTLINED_FUNCTION_97_2();
  if (v16)
  {
    OUTLINED_FUNCTION_16_56(v112);
    sub_1D4F0029C();
    v8 = v168;
  }

  v113 = *(v2 + 2184);
  v114 = *(v2 + 2168);
  OUTLINED_FUNCTION_40_31();
  *(v115 + 32) = v28;
  *(v115 + 40) = v116;
  OUTLINED_FUNCTION_43_20();
  OUTLINED_FUNCTION_352(v117);
  OUTLINED_FUNCTION_2_102();
  sub_1D51D2DB0();
  sub_1D4E628D4(v2 + 1904, v2 + 176);
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_116_10();
  if (!(v43 ^ v44 | v42))
  {
    OUTLINED_FUNCTION_24_43(v118);
    sub_1D4F0029C();
    v8 = v169;
  }

  v119 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_317(v119);
  __swift_destroy_boxed_opaque_existential_1((v2 + 1904));
  OUTLINED_FUNCTION_222_1();
  if (v16)
  {
    OUTLINED_FUNCTION_16_56(v120);
    sub_1D4F0029C();
    v8 = v170;
  }

  OUTLINED_FUNCTION_270();
  *(v121 + 32) = v28;
  *(v121 + 40) = v122;
  OUTLINED_FUNCTION_44_23();
  *(v2 + 2008) = v123;
  *(v2 + 2016) = &off_1F50B88D8;
  __swift_allocate_boxed_opaque_existential_0((v2 + 1984));
  OUTLINED_FUNCTION_2_102();
  sub_1D51D2DB0();
  sub_1D4E628D4(v2 + 1984, v2 + 96);
  OUTLINED_FUNCTION_160_5();
  v124 = *(v8 + 24);
  OUTLINED_FUNCTION_203_2();
  if (!(v43 ^ v44 | v42))
  {
    OUTLINED_FUNCTION_24_43(v125);
    sub_1D4F0029C();
  }

  v126 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_254(v126);
  __swift_destroy_boxed_opaque_existential_1((v2 + 1984));
  OUTLINED_FUNCTION_97_2();
  if (v16)
  {
    OUTLINED_FUNCTION_16_56(v127);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_64_16();
  v128[2].n128_u64[0] = 10506;
  v128[2].n128_u64[1] = 0xE200000000000000;
  v129 = *(v2 + 544);
  OUTLINED_FUNCTION_21(v128, *(v2 + 496), *(v2 + 512), *(v2 + 528));
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v130, v131, v132, v133, v134);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v2 + 2200) = v135;
  *v135 = v136;
  OUTLINED_FUNCTION_161_5();
  OUTLINED_FUNCTION_73_0();

  return sub_1D52EF24C(v137, v138, v139);
}

uint64_t sub_1D51BD9B4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_189_2();
  sub_1D51D2E04(v1, v3);
  OUTLINED_FUNCTION_6_71();
  sub_1D51D2E04(v0, v4);
  __swift_destroy_boxed_opaque_existential_1((v2 + 2024));

  OUTLINED_FUNCTION_55();
  v6 = *(v2 + 2208);

  return v5();
}

uint64_t sub_1D51BDA4C()
{
  OUTLINED_FUNCTION_60();
  v0[25] = v1;
  v0[26] = v2;
  v0[23] = v3;
  v0[24] = v4;
  v0[22] = v5;
  v6 = _s13PersistedDateVMa();
  v0[27] = v6;
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  v0[28] = OUTLINED_FUNCTION_127();
  v9 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51BDAD0()
{
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_144_3(v6);
  if (v8)
  {
    OUTLINED_FUNCTION_16_56(v7);
    sub_1D4F0029C();
    v0 = v83;
  }

  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_32_35(v9);
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_156_4();
  if (v4 >= v5 >> 1)
  {
    OUTLINED_FUNCTION_23_44();
    sub_1D4F0029C();
    v0 = v84;
  }

  OUTLINED_FUNCTION_123_0();
  v11 = v0 + v4 * v10;
  *(v11 + 32) = v1;
  *(v11 + 40) = v3;
  OUTLINED_FUNCTION_0_126(v11, v97, v109, v121, v133, v145);
  OUTLINED_FUNCTION_221_0();
  if (!(v14 ^ v15 | v13))
  {
    OUTLINED_FUNCTION_24_43(v12);
    sub_1D4F0029C();
    v0 = v85;
  }

  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_243();
  *(v17 + 32) = v16 | 0x2020200A00000000;
  *(v17 + 40) = 0xE900000000000020;
  OUTLINED_FUNCTION_0_126(v17, v98, v110, v122, v134, v146);
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55();
  }

  v19 = qword_1EC7E99A8;
  v18 = off_1EC7E99B0;
  v21 = *(v0 + 16);
  v20 = *(v0 + 24);

  if (v21 >= v20 >> 1)
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
    v0 = v86;
  }

  OUTLINED_FUNCTION_284();
  *(v22 + 32) = v19;
  *(v22 + 40) = v18;
  OUTLINED_FUNCTION_0_126(v22, v99, v111, v123, v135, v147);
  v23 = *(v0 + 24);
  if ((v21 + 2) > (v23 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v23);
    sub_1D4F0029C();
    v0 = v87;
  }

  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_149_3(v24);
  OUTLINED_FUNCTION_0_126(v25, v100, v112, v124, v136, v148);
  v27 = qword_1EC7E99A8;
  v26 = off_1EC7E99B0;
  v28 = *(v0 + 24);
  OUTLINED_FUNCTION_319();
  if ((v21 + 1) > (v28 >> 1))
  {
    OUTLINED_FUNCTION_34_35();
    sub_1D4F0029C();
    v0 = v88;
  }

  OUTLINED_FUNCTION_61_3();
  *(v29 + 32) = v27;
  *(v29 + 40) = v26;
  OUTLINED_FUNCTION_0_126(v29, v101, v113, v125, v137, v149);
  OUTLINED_FUNCTION_287();
  if (!(v14 ^ v15 | v13))
  {
    OUTLINED_FUNCTION_16_56(v30);
    sub_1D4F0029C();
    v0 = v89;
  }

  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_95_12(v31);
  OUTLINED_FUNCTION_0_126(v32, v102, v114, v126, v138, v150);
  v34 = qword_1EC7E99D0;
  v33 = off_1EC7E99D8;
  v35 = *(v0 + 24);

  if ((v21 + 5) > (v35 >> 1))
  {
    OUTLINED_FUNCTION_34_35();
    sub_1D4F0029C();
    v0 = v90;
  }

  OUTLINED_FUNCTION_61_3();
  *(v36 + 32) = v34;
  *(v36 + 40) = v33;
  OUTLINED_FUNCTION_0_126(v36, v103, v115, v127, v139, v151);
  OUTLINED_FUNCTION_286();
  if (!(v14 ^ v15 | v13))
  {
    OUTLINED_FUNCTION_16_56(v37);
    sub_1D4F0029C();
    v0 = v91;
  }

  v39 = v2[27];
  v38 = v2[28];
  v40 = v2[24];
  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_149_3(v41);
  OUTLINED_FUNCTION_0_126(v42, v104, v116, v128, v140, v152);
  v43 = sub_1D560C328();
  OUTLINED_FUNCTION_3_36(v43);
  v45 = *(v44 + 16);
  v46 = OUTLINED_FUNCTION_85_0();
  v47(v46);
  v2[15] = v39;
  v2[16] = &off_1F50B88D8;
  __swift_allocate_boxed_opaque_existential_0(v2 + 12);
  OUTLINED_FUNCTION_2_102();
  sub_1D51D2DB0();
  sub_1D4E628D4((v2 + 12), (v2 + 2));
  OUTLINED_FUNCTION_172_3();
  v48 = *(v0 + 24);
  v49 = v21 + 7;
  if ((v21 + 7) > (v48 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v48);
    sub_1D4F0029C();
    v0 = v92;
  }

  v50 = v2[28];
  v51 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_253(v51);
  __swift_destroy_boxed_opaque_existential_1(v2 + 12);
  OUTLINED_FUNCTION_6_71();
  sub_1D51D2E04(v50, v52);
  v54 = *(v0 + 16);
  v53 = *(v0 + 24);
  if (v54 >= v53 >> 1)
  {
    OUTLINED_FUNCTION_16_56(v53);
    sub_1D4F0029C();
    v0 = v93;
  }

  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_48_21(v0 + v54 * v55);
  OUTLINED_FUNCTION_0_126(v56, v105, v117, v129, v141, v153);
  v58 = aAssetAdamId[0];
  v57 = aAssetAdamId[1];
  v59 = *(v0 + 24);
  OUTLINED_FUNCTION_251();
  if (v49 > (v59 >> 1))
  {
    OUTLINED_FUNCTION_34_35();
    sub_1D4F0029C();
    v0 = v94;
  }

  OUTLINED_FUNCTION_61_3();
  *(v60 + 32) = v58;
  *(v60 + 40) = v57;
  OUTLINED_FUNCTION_0_126(v60, v106, v118, v130, v142, v154);
  v61 = *(v0 + 24);
  if ((v54 + 3) > (v61 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v61);
    sub_1D4F0029C();
    v0 = v95;
  }

  v62 = v2[23];
  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_149_3(v63);
  OUTLINED_FUNCTION_0_126(v64, v107, v119, v131, v143, v155);
  v65 = *(v0 + 24);

  if ((v54 + 4) > (v65 >> 1))
  {
    OUTLINED_FUNCTION_53_18();
    sub_1D4F0029C();
    v0 = v96;
  }

  v67 = v2[22];
  v66 = v2[23];
  *(v0 + 16) = v54 + 4;
  v68 = v0 + 80 * (v54 + 3);
  v69 = MEMORY[0x1E69E6158];
  *(v68 + 32) = v67;
  *(v68 + 40) = v66;
  *(v68 + 56) = v69;
  *(v68 + 64) = &off_1F50C0538;
  *(v68 + 88) = v132;
  *(v68 + 72) = v120;
  *(v68 + 104) = 1;
  v70 = *(v0 + 24);
  if ((v54 + 5) > (v70 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v70);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_148_7(v71);
  OUTLINED_FUNCTION_0_126(v72, v108, v120, v132, v144, v156);
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v73, v74, v75, v76, v77);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v2[29] = v78;
  *v78 = v79;
  v78[1] = sub_1D51BDF80;
  v80 = v2[25];
  v81 = v2[26];

  return sub_1D52EF24C((v2 + 17), v80, v81);
}

uint64_t sub_1D51BDF80()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 240) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 224);
    sub_1D51D2984(v3 + 136);

    OUTLINED_FUNCTION_22_1();

    return v13();
  }
}

uint64_t sub_1D51BE0A8()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 224);
  sub_1D51D2984(v0 + 136);

  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 240);

  return v2();
}

uint64_t sub_1D51BE110()
{
  OUTLINED_FUNCTION_60();
  v0[41] = v1;
  v0[42] = v2;
  v0[39] = v3;
  v0[40] = v4;
  v0[38] = v5;
  v6 = _s13PersistedDateVMa();
  v0[43] = v6;
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  v0[44] = OUTLINED_FUNCTION_127();
  v9 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51BE6F4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 360);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 368) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 352);
    sub_1D51D2984(v3 + 256);

    OUTLINED_FUNCTION_22_1();

    return v13();
  }
}

uint64_t sub_1D51BE81C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 352);
  sub_1D51D2984(v0 + 256);

  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 368);

  return v2();
}

uint64_t sub_1D51BE884(uint64_t a1)
{
  result = 0;
  v3 = 0;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  for (i = v5 & *(a1 + 56); i; result |= qword_1D5640A40[*(*(a1 + 48) + (v8 | (v7 << 6)))])
  {
    v7 = v3;
LABEL_9:
    v8 = __clz(__rbit64(i));
    i &= i - 1;
  }

  while (1)
  {
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v7 >= ((v4 + 63) >> 6))
    {
      return result;
    }

    i = *(a1 + 56 + 8 * v7);
    ++v3;
    if (i)
    {
      v3 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D51BE928(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v5 = *v4++;
    result |= qword_1D5640A40[v5];
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1D51BE964()
{
  OUTLINED_FUNCTION_60();
  v0[41] = v1;
  v0[42] = v2;
  v0[39] = v3;
  v0[40] = v4;
  v0[38] = v5;
  v6 = _s13PersistedDateVMa();
  v0[43] = v6;
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  v0[44] = OUTLINED_FUNCTION_127();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1538, &qword_1D56408C0);
  v0[45] = v9;
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  v0[46] = OUTLINED_FUNCTION_127();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  v0[47] = OUTLINED_FUNCTION_127();
  v15 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1D51BF0B0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 384);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[49] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[46];
    v12 = v3[47];
    v14 = v3[44];
    sub_1D51D2984((v3 + 32));

    OUTLINED_FUNCTION_22_1();

    return v15();
  }
}

uint64_t sub_1D51BF1F8()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[44];
  sub_1D51D2984((v0 + 32));

  OUTLINED_FUNCTION_55();
  v5 = v0[49];

  return v4();
}

uint64_t sub_1D51BF27C()
{
  OUTLINED_FUNCTION_60();
  v7 = OUTLINED_FUNCTION_344(v1, v2, v3, v4, v5, v6);
  v0[59] = v7;
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  v0[60] = OUTLINED_FUNCTION_167();
  v0[61] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1540, &qword_1D56408D0);
  v0[62] = v10;
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  v0[63] = OUTLINED_FUNCTION_127();
  v13 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D51BF9D8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 512);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[65] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[63];
    v14 = v3[60];
    v13 = v3[61];
    sub_1D51D2984((v3 + 47));

    OUTLINED_FUNCTION_22_1();

    return v15();
  }
}

uint64_t sub_1D51BFB20()
{
  OUTLINED_FUNCTION_60();
  v7 = OUTLINED_FUNCTION_344(v1, v2, v3, v4, v5, v6);
  v0[59] = v7;
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  v0[60] = OUTLINED_FUNCTION_167();
  v0[61] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1550, &unk_1D566ADA0);
  v0[62] = v10;
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  v0[63] = OUTLINED_FUNCTION_127();
  v13 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D51C027C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 512);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[65] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[63];
    v14 = v3[60];
    v13 = v3[61];
    sub_1D51D2984((v3 + 47));

    OUTLINED_FUNCTION_22_1();

    return v15();
  }
}

uint64_t sub_1D51C03C4()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[63];
  v3 = v0[60];
  v2 = v0[61];
  sub_1D51D2984((v0 + 47));

  OUTLINED_FUNCTION_55();
  v5 = v0[65];

  return v4();
}

uint64_t sub_1D51C0448()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v0[130] = v3;
  v0[129] = v4;
  v0[128] = v5;
  v0[127] = v6;
  v0[126] = v7;
  v8 = _s13PersistedDateVMa();
  v0[131] = v8;
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  v0[132] = OUTLINED_FUNCTION_127();
  memcpy(v0 + 2, v2, 0xB0uLL);
  v11 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D51C0C4C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 1064);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 1072) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 1056);
    sub_1D51D2984(v3 + 960);

    OUTLINED_FUNCTION_22_1();

    return v13();
  }
}

uint64_t sub_1D51C0D74()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 1056);
  sub_1D51D2984(v0 + 960);

  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 1072);

  return v2();
}

uint64_t sub_1D51C0DDC()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 320) = v1;
  *(v0 + 328) = v2;
  *(v0 + 304) = v3;
  *(v0 + 312) = v4;
  *(v0 + 89) = v5;
  v6 = _s13PersistedDateVMa();
  *(v0 + 336) = v6;
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  *(v0 + 344) = OUTLINED_FUNCTION_127();
  v9 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51C13A4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 360) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 344);
    sub_1D51D2984(v3 + 256);

    OUTLINED_FUNCTION_22_1();

    return v13();
  }
}

uint64_t sub_1D51C14CC()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 344);
  sub_1D51D2984(v0 + 256);

  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 360);

  return v2();
}

uint64_t sub_1D51C1534()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 304) = v1;
  *(v0 + 312) = v2;
  *(v0 + 296) = v3;
  *(v0 + 89) = v4;
  v5 = _s13PersistedDateVMa();
  *(v0 + 320) = v5;
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  *(v0 + 328) = OUTLINED_FUNCTION_127();
  v8 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D51C15B8()
{
  OUTLINED_FUNCTION_76_2();
  sub_1D4F0029C();
  v7 = v6;
  OUTLINED_FUNCTION_207_1(v6);
  OUTLINED_FUNCTION_320();
  if (v9)
  {
    OUTLINED_FUNCTION_16_56(v8);
    sub_1D4F0029C();
    v7 = v70;
  }

  OUTLINED_FUNCTION_117_7();
  OUTLINED_FUNCTION_322(v10);
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55();
    v0 = *(v7 + 16);
  }

  OUTLINED_FUNCTION_255(aIsBackfill);
  if (v0 >= v5 >> 1)
  {
    OUTLINED_FUNCTION_58_19();
    sub_1D4F0029C();
    v7 = v71;
  }

  *(v7 + 16) = v3;
  OUTLINED_FUNCTION_122_5();
  *(v11 + 32) = v4;
  *(v11 + 40) = v1;
  OUTLINED_FUNCTION_3_99(v11, v76, v82, v88, v93);
  OUTLINED_FUNCTION_285();
  if (!(v23 ^ v24 | v22))
  {
    OUTLINED_FUNCTION_24_43(v20);
    sub_1D4F0029C();
    v7 = v12;
  }

  v25 = *(v2 + 89);
  *(v7 + 16) = v1;
  v26 = v7 + 80 * v3;
  *(v26 + 32) = 2112800;
  *(v26 + 40) = 0xE300000000000000;
  OUTLINED_FUNCTION_136_6(v12, v13, v14, v15, v16, v17, v18, v19, v21, v77, v83, v89);
  *(v27 + 104) = 0;
  OUTLINED_FUNCTION_355(v28);
  OUTLINED_FUNCTION_172_3();
  v29 = *(v7 + 24);
  if ((v0 + 3) > (v29 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v29);
    sub_1D4F0029C();
    v7 = v72;
  }

  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_140_7(v30);
  __swift_destroy_boxed_opaque_existential_1((v2 + 176));
  OUTLINED_FUNCTION_222_1();
  if (v9)
  {
    OUTLINED_FUNCTION_16_56(v31);
    sub_1D4F0029C();
    v7 = v73;
  }

  OUTLINED_FUNCTION_123_0();
  v33 = v7 + v5 * v32;
  strcpy((v33 + 32), "\nWHERE \n    ");
  *(v33 + 45) = 0;
  *(v33 + 46) = -5120;
  OUTLINED_FUNCTION_3_99(v33, v78, v84, v89, v94);
  v35 = aAddedDate[0];
  v34 = aAddedDate[1];
  v36 = *(v7 + 24);

  if ((v5 + 2) > (v36 >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
    v7 = v74;
  }

  OUTLINED_FUNCTION_61_3();
  *(v37 + 32) = v35;
  *(v37 + 40) = v34;
  OUTLINED_FUNCTION_3_99(v37, v79, v85, v90, v95);
  v38 = *(v7 + 24);
  if ((v5 + 3) > (v38 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v38);
    sub_1D4F0029C();
    v7 = v75;
  }

  v40 = *(v2 + 320);
  v39 = *(v2 + 328);
  v41 = *(v2 + 296);
  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_276(v42);
  OUTLINED_FUNCTION_3_99(v43, v80, v86, v91, v96);
  v44 = sub_1D560C328();
  OUTLINED_FUNCTION_3_36(v44);
  v46 = *(v45 + 16);
  v47 = OUTLINED_FUNCTION_85_0();
  v48(v47);
  *(v2 + 240) = v40;
  *(v2 + 248) = &off_1F50B88D8;
  __swift_allocate_boxed_opaque_existential_0((v2 + 216));
  OUTLINED_FUNCTION_2_102();
  sub_1D51D2DB0();
  OUTLINED_FUNCTION_365();
  OUTLINED_FUNCTION_160_5();
  v49 = *(v7 + 24);
  OUTLINED_FUNCTION_334_0();
  if (!(v23 ^ v24 | v22))
  {
    OUTLINED_FUNCTION_24_43(v50);
    sub_1D4F0029C();
  }

  v51 = *(v2 + 328);
  v52 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_254(v52);
  __swift_destroy_boxed_opaque_existential_1((v2 + 216));
  OUTLINED_FUNCTION_6_71();
  sub_1D51D2E04(v51, v53);
  OUTLINED_FUNCTION_97_2();
  if (v9)
  {
    OUTLINED_FUNCTION_16_56(v54);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_148_7(v55);
  OUTLINED_FUNCTION_3_99(v56, v81, v87, v92, v97);
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v57, v58, v59, v60, v61);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v2 + 336) = v62;
  *v62 = v63;
  v62[1] = sub_1D51C192C;
  v64 = *(v2 + 304);
  v65 = *(v2 + 312);
  v66 = OUTLINED_FUNCTION_325();

  return sub_1D52EF24C(v66, v67, v68);
}

uint64_t sub_1D51C192C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 344) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 328);
    sub_1D51D2984(v3 + 256);

    OUTLINED_FUNCTION_22_1();

    return v13();
  }
}

uint64_t sub_1D51C1A54()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 328);
  sub_1D51D2984(v0 + 256);

  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 344);

  return v2();
}

uint64_t sub_1D51C1ABC()
{
  OUTLINED_FUNCTION_60();
  v0[80] = v1;
  v0[79] = v2;
  v0[78] = v3;
  v4 = _s13PersistedDateVMa();
  v0[81] = v4;
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  v0[82] = OUTLINED_FUNCTION_127();
  v7 = _s10DescriptorVMa();
  v0[83] = v7;
  OUTLINED_FUNCTION_69(v7);
  v0[84] = v8;
  v10 = *(v9 + 64);
  v0[85] = OUTLINED_FUNCTION_127();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF50, &qword_1D561DD10);
  v0[86] = v11;
  OUTLINED_FUNCTION_69(v11);
  v0[87] = v12;
  v14 = *(v13 + 64);
  v0[88] = OUTLINED_FUNCTION_167();
  v0[89] = swift_task_alloc();
  v15 = sub_1D560C328();
  v0[90] = v15;
  OUTLINED_FUNCTION_69(v15);
  v0[91] = v16;
  v18 = *(v17 + 64);
  v0[92] = OUTLINED_FUNCTION_167();
  v0[93] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15A0, &qword_1D5640960);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  v0[94] = OUTLINED_FUNCTION_127();
  v22 = sub_1D560BB08();
  v0[95] = v22;
  OUTLINED_FUNCTION_69(v22);
  v0[96] = v23;
  v25 = *(v24 + 64);
  v0[97] = OUTLINED_FUNCTION_127();
  v26 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v26, v27, v28);
}

uint64_t sub_1D51C1CC0()
{
  OUTLINED_FUNCTION_335();
  sub_1D4F0029C();
  OUTLINED_FUNCTION_144_3(v8);
  if (v10)
  {
    OUTLINED_FUNCTION_16_56(v9);
    sub_1D4F0029C();
    v1 = v106;
  }

  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_282_0();
  OUTLINED_FUNCTION_175_2(v11);
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55();
    v0 = *(v1 + 16);
  }

  OUTLINED_FUNCTION_255(aAssetAdamId);
  if (v0 >= v6 >> 1)
  {
    OUTLINED_FUNCTION_58_19();
    sub_1D4F0029C();
    v1 = v107;
  }

  *(v1 + 16) = v4;
  OUTLINED_FUNCTION_122_5();
  *(v12 + 32) = v5;
  *(v12 + 40) = v2;
  OUTLINED_FUNCTION_0_126(v12, v131, v154, v176, v198, v220);
  OUTLINED_FUNCTION_285();
  if (!(v15 ^ v16 | v14))
  {
    OUTLINED_FUNCTION_24_43(v13);
    sub_1D4F0029C();
    v1 = v108;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_85_10(v17);
  OUTLINED_FUNCTION_0_126(v18, v132, v155, v177, v199, v221);
  OUTLINED_FUNCTION_245(aAddedDate);

  if ((v0 + 3) > (v7 >> 1))
  {
    OUTLINED_FUNCTION_45_25();
    sub_1D4F0029C();
    v1 = v109;
  }

  OUTLINED_FUNCTION_91_12();
  *(v19 + 32) = v6;
  *(v19 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v19, v133, v156, v178, v200, v222);
  v20 = *(v1 + 24);
  if ((v0 + 4) > (v20 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v20);
    sub_1D4F0029C();
    v1 = v110;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_85_10(v21);
  OUTLINED_FUNCTION_0_126(v22, v134, v157, v179, v201, v223);
  OUTLINED_FUNCTION_245(aIsBackfill);

  if ((v0 + 5) > (v7 >> 1))
  {
    OUTLINED_FUNCTION_45_25();
    sub_1D4F0029C();
    v1 = v111;
  }

  OUTLINED_FUNCTION_91_12();
  *(v23 + 32) = v6;
  *(v23 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v23, v135, v158, v180, v202, v224);
  v24 = *(v1 + 24);
  if ((v0 + 6) > (v24 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v24);
    sub_1D4F0029C();
    v1 = v112;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_85_10(v25);
  OUTLINED_FUNCTION_0_126(v26, v136, v159, v181, v203, v225);
  OUTLINED_FUNCTION_245(&qword_1EC7E9980);

  if ((v0 + 7) > (v7 >> 1))
  {
    OUTLINED_FUNCTION_45_25();
    sub_1D4F0029C();
    v1 = v113;
  }

  OUTLINED_FUNCTION_91_12();
  *(v27 + 32) = v6;
  *(v27 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v27, v137, v160, v182, v204, v226);
  v28 = *(v1 + 24);
  if ((v0 + 8) > (v28 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v28);
    sub_1D4F0029C();
    v1 = v114;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_85_10(v29);
  OUTLINED_FUNCTION_0_126(v30, v138, v161, v183, v205, v227);
  OUTLINED_FUNCTION_245(&qword_1EC7E99A8);

  if ((v0 + 9) > (v7 >> 1))
  {
    OUTLINED_FUNCTION_45_25();
    sub_1D4F0029C();
    v1 = v115;
  }

  OUTLINED_FUNCTION_91_12();
  *(v31 + 32) = v6;
  *(v31 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v31, v139, v162, v184, v206, v228);
  v32 = *(v1 + 24);
  if ((v0 + 10) > (v32 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v32);
    sub_1D4F0029C();
    v1 = v116;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_85_10(v33);
  OUTLINED_FUNCTION_0_126(v34, v140, v163, v185, v207, v229);
  OUTLINED_FUNCTION_245(&qword_1EC7E99D0);

  if ((v0 + 11) > (v7 >> 1))
  {
    OUTLINED_FUNCTION_45_25();
    sub_1D4F0029C();
    v1 = v117;
  }

  OUTLINED_FUNCTION_91_12();
  *(v35 + 32) = v6;
  *(v35 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v35, v141, v164, v186, v208, v230);
  v36 = *(v1 + 24);
  v37 = v0 + 12;
  if ((v0 + 12) > (v36 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v36);
    sub_1D4F0029C();
    v1 = v118;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_85_10(v38);
  OUTLINED_FUNCTION_0_126(v39, v142, v165, v187, v209, v231);
  OUTLINED_FUNCTION_245(&qword_1EC7E99F8);

  if ((v0 + 13) > (v7 >> 1))
  {
    OUTLINED_FUNCTION_45_25();
    sub_1D4F0029C();
    v1 = v119;
  }

  OUTLINED_FUNCTION_91_12();
  *(v40 + 32) = v6;
  *(v40 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v40, v143, v166, v188, v210, v232);
  v41 = *(v1 + 24);
  if ((v0 + 14) > (v41 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v41);
    sub_1D4F0029C();
    v1 = v120;
  }

  OUTLINED_FUNCTION_117_7();
  *(v42 + 32) = 0x204D4F52460ALL;
  *(v42 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_0_126(v42, v144, v167, v189, v211, v233);
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_156_4();
  if (v5 >= v6 >> 1)
  {
    OUTLINED_FUNCTION_23_44();
    sub_1D4F0029C();
    v1 = v121;
  }

  OUTLINED_FUNCTION_123_0();
  v44 = v1 + v5 * v43;
  *(v44 + 32) = v37;
  *(v44 + 40) = v0 + 13;
  OUTLINED_FUNCTION_0_126(v44, v145, v168, v190, v212, v234);
  OUTLINED_FUNCTION_221_0();
  if (!(v15 ^ v16 | v14))
  {
    OUTLINED_FUNCTION_24_43(v45);
    sub_1D4F0029C();
  }

  v46 = *(v3 + 760);
  v47 = *(v3 + 752);
  v48 = *(v3 + 624);
  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_148_7(v49);
  OUTLINED_FUNCTION_0_126(v50, v146, v169, v191, v213, v235);
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v51, v52, v53, v54, v55);
  v56 = *(v3 + 584);
  v57 = *(v3 + 592);
  v58 = *(v3 + 600);
  v59 = *(v3 + 608);
  v60 = *(v3 + 616);
  sub_1D51D3024();
  if (__swift_getEnumTagSinglePayload(v47, 1, v46) == 1)
  {
    sub_1D4E50004(*(v3 + 752), &qword_1EC7F15A0, &qword_1D5640960);
  }

  else
  {
    (*(*(v3 + 768) + 32))(*(v3 + 776), *(v3 + 752), *(v3 + 760));
    *(v3 + 304) = xmmword_1D5640890;
    *(v3 + 320) = 0;
    *(v3 + 328) = 0;
    *(v3 + 336) = 0;
    sub_1D54F1BF4(v3 + 584, v3 + 304, v3 + 544);
    sub_1D51D2984(v3 + 584);
    sub_1D4F0029C();
    v62 = v61;
    v63 = *(v61 + 24) >> 1;
    if (v63 <= *(v61 + 16))
    {
      OUTLINED_FUNCTION_54_18();
      sub_1D4F0029C();
      v62 = v122;
      v63 = *(v122 + 24) >> 1;
    }

    OUTLINED_FUNCTION_76_11();
    OUTLINED_FUNCTION_175_2(v64);
    OUTLINED_FUNCTION_251();
    if (v63 < v37)
    {
      OUTLINED_FUNCTION_51_22();
      sub_1D4F0029C();
      v62 = v123;
    }

    OUTLINED_FUNCTION_47_27();
    OUTLINED_FUNCTION_0_126(v65, v147, v170, v192, v214, v236);
    OUTLINED_FUNCTION_135_8();
    if (!(v15 ^ v16 | v14))
    {
      OUTLINED_FUNCTION_20_51(v66);
      sub_1D4F0029C();
      v62 = v124;
    }

    OUTLINED_FUNCTION_223_1();
    v67 = *(v3 + 776);
    v68 = *(v3 + 744);
    v69 = *(v3 + 728);
    v70 = *(v3 + 720);
    OUTLINED_FUNCTION_72_18();
    OUTLINED_FUNCTION_158_5(v71);
    OUTLINED_FUNCTION_0_126(v72, v148, v171, v193, v215, v237);
    sub_1D560BAE8();
    sub_1D560C208();
    v74 = v73;
    v75 = *(v69 + 8);
    v75(v68, v70);
    *(v3 + 248) = MEMORY[0x1E69E63B0];
    *(v3 + 256) = &off_1F50C0338;
    *(v3 + 224) = v74;
    sub_1D4E628D4(v3 + 224, v3 + 16);
    OUTLINED_FUNCTION_172_3();
    v77 = *(v62 + 16);
    v76 = *(v62 + 24);
    OUTLINED_FUNCTION_224_1();
    if (v10)
    {
      OUTLINED_FUNCTION_22_41(v78);
      sub_1D4F0029C();
      v62 = v125;
    }

    OUTLINED_FUNCTION_63_13();
    OUTLINED_FUNCTION_140_7(v79);
    __swift_destroy_boxed_opaque_existential_1((v3 + 224));
    OUTLINED_FUNCTION_84_10();
    if (v10)
    {
      OUTLINED_FUNCTION_22_41(v80);
      sub_1D4F0029C();
      v62 = v126;
    }

    OUTLINED_FUNCTION_76_11();
    *(v81 + 32) = 0xA444E410ALL;
    *(v81 + 40) = 0xE500000000000000;
    OUTLINED_FUNCTION_0_126(v81, v149, v172, v194, v216, v238);
    OUTLINED_FUNCTION_159_6();
    if (v77 > (v63 >> 1))
    {
      OUTLINED_FUNCTION_29_36();
      sub_1D4F0029C();
      v62 = v127;
    }

    OUTLINED_FUNCTION_56_20();
    OUTLINED_FUNCTION_0_126(v82, v150, v173, v195, v217, v239);
    OUTLINED_FUNCTION_135_8();
    if (!(v15 ^ v16 | v14))
    {
      OUTLINED_FUNCTION_20_51(v83);
      sub_1D4F0029C();
      v62 = v128;
    }

    v84 = *(v3 + 776);
    v85 = *(v3 + 736);
    v86 = *(v3 + 720);
    OUTLINED_FUNCTION_68_12();
    OUTLINED_FUNCTION_0_126(v87, v151, v174, v196, v218, v240);
    sub_1D560BAC8();
    sub_1D560C208();
    v88 = OUTLINED_FUNCTION_169_1();
    (v75)(v88);
    *(v3 + 288) = MEMORY[0x1E69E63B0];
    *(v3 + 296) = &off_1F50C0338;
    *(v3 + 264) = v74;
    sub_1D4E628D4(v3 + 264, v3 + 96);
    OUTLINED_FUNCTION_160_5();
    v90 = *(v62 + 16);
    v89 = *(v62 + 24);
    OUTLINED_FUNCTION_224_1();
    if (v10)
    {
      OUTLINED_FUNCTION_22_41(v91);
      sub_1D4F0029C();
      v62 = v129;
    }

    OUTLINED_FUNCTION_63_13();
    OUTLINED_FUNCTION_141_3(v92);
    __swift_destroy_boxed_opaque_existential_1((v3 + 264));
    v94 = *(v62 + 16);
    v93 = *(v62 + 24);
    if (v94 >= v93 >> 1)
    {
      OUTLINED_FUNCTION_22_41(v93);
      sub_1D4F0029C();
      v62 = v130;
    }

    v95 = *(v3 + 776);
    v96 = *(v3 + 768);
    v97 = *(v3 + 760);
    OUTLINED_FUNCTION_119_8();
    OUTLINED_FUNCTION_148_7(v62 + v94 * v98);
    OUTLINED_FUNCTION_0_126(v99, v152, v175, v197, v219, v241);
    OUTLINED_FUNCTION_150_7(MEMORY[0x1E69E7CC0], v3 + 504);
    sub_1D54F1BF4(v3 + 544, v3 + 504, v3 + 464);
    v56 = *(v3 + 464);
    v57 = *(v3 + 472);
    v58 = *(v3 + 480);
    v59 = *(v3 + 488);
    v60 = *(v3 + 496);
    sub_1D51D2984(v3 + 504);
    sub_1D51D2984(v3 + 544);
    (*(v96 + 8))(v95, v97);
  }

  *(v3 + 89) = v60;
  *(v3 + 808) = v59;
  *(v3 + 800) = v58;
  *(v3 + 792) = v57;
  *(v3 + 784) = v56;
  *(v3 + 344) = v56;
  *(v3 + 352) = v57;
  *(v3 + 360) = v58;
  *(v3 + 368) = v59;
  *(v3 + 376) = v60;
  OUTLINED_FUNCTION_27_0(&unk_1D564E0E0);
  v153 = v100;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v3 + 816) = v101;
  *v101 = v102;
  v101[1] = sub_1D51C256C;
  v103 = *(v3 + 640);
  v104 = *(v3 + 632);

  return v153(v3 + 176, v3 + 344, v104, v103);
}

uint64_t sub_1D51C256C()
{
  OUTLINED_FUNCTION_161_0();
  v24 = v2;
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_59_1();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 816);
  v8 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;

  if (v0)
  {
    OUTLINED_FUNCTION_312();
    v10 = v4[97];
    v11 = v4[94];
    v12 = v4[93];
    v13 = v4[92];
    v14 = v4[89];
    v15 = v4[88];
    v16 = v4[85];
    v17 = v4[82];

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_134();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_27_0(&unk_1D5640908);
  v23 = v20;
  v21 = swift_task_alloc();
  v4[103] = v21;
  *v21 = v8;
  v21[1] = sub_1D51C2734;

  return v23();
}

uint64_t sub_1D51C2734()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 824);
  *v3 = *v1;
  *(v2 + 832) = v6;
  *(v2 + 840) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D51C2838()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 832);

  *(v0 + 424) = *(v0 + 184);
  *(v0 + 440) = *(v0 + 200);
  *(v0 + 456) = *(v0 + 216);
  result = sub_1D51D2984(v0 + 424);
  v53 = *(v2 + 16);
  v54 = v2;
  if (v53)
  {
    v4 = 0;
    v51 = *(v0 + 712);
    v48 = *(v0 + 680);
    v49 = *(v0 + 688);
    v47 = *(v0 + 672);
    v46 = *(v0 + 664);
    v45 = v49[12];
    v44 = v49[16];
    v43 = v49[20];
    v42 = v49[24];
    v40 = v49[32];
    v41 = v49[28];
    v50 = *(v0 + 696);
    v39 = *(v0 + 832) + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v5 = MEMORY[0x1E69E7CC0];
    v52 = v0;
    while (v4 < *(v54 + 16))
    {
      v6 = *(v0 + 712);
      v7 = *(v0 + 704);
      v8 = *(v0 + 680);
      v57 = *(v0 + 656);
      v58 = *(v0 + 648);
      v9 = *(v50 + 72);
      v59 = v4;
      sub_1D51D3024();
      *v7 = *v6;
      v56 = v49[12];
      sub_1D51D2DB0();
      v10 = v49[16];
      *(v7 + v10) = *(v51 + v44);
      v11 = v49[20];
      *(v7 + v11) = *(v51 + v43);
      v12 = v49[24];
      *(v7 + v12) = *(v51 + v42);
      v13 = v49[28];
      sub_1D51D2DB0();
      v14 = v49[32];
      sub_1D51D2DB0();
      sub_1D4E50004(v6, &qword_1EC7EAF50, &qword_1D561DD10);
      LOBYTE(v10) = *(v7 + v10);
      v15 = *v7;
      v16 = *(v7 + v11);
      v55 = *(v7 + v12);
      v17 = v46[5];
      sub_1D51D2DB0();
      v18 = v46[9];
      sub_1D51D2DB0();
      sub_1D51D2DB0();
      *v8 = sub_1D560EF08();
      *(v48 + 8) = v19;
      *(v8 + v46[6]) = v10;
      *(v8 + v46[7]) = v16;
      *(v8 + v46[8]) = v55;
      v20 = v46[10];
      OUTLINED_FUNCTION_186_3();
      sub_1D51D2FD0();
      __swift_storeEnumTagSinglePayload(v8 + v20, 0, 1, v58);
      sub_1D4E50004(v7, &qword_1EC7EAF50, &qword_1D561DD10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(v5 + 16);
        sub_1D4F02094();
        v5 = v26;
      }

      v22 = *(v5 + 16);
      v21 = *(v5 + 24);
      v0 = v52;
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_20_51(v21);
        sub_1D4F02094();
        v5 = v27;
      }

      v4 = v59 + 1;
      v23 = *(v52 + 680);
      *(v5 + 16) = v22 + 1;
      v24 = v5 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v22;
      result = OUTLINED_FUNCTION_65_20();
      if (v53 == v59 + 1)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v28 = *(v0 + 832);
    v29 = *(v0 + 776);
    v30 = *(v0 + 752);
    v31 = *(v0 + 744);
    v32 = *(v0 + 736);
    v33 = *(v0 + 712);
    v34 = *(v0 + 704);
    v35 = *(v0 + 680);
    v36 = *(v0 + 656);

    v37 = OUTLINED_FUNCTION_51_15();

    return v38(v37);
  }

  return result;
}

uint64_t sub_1D51C2C50()
{
  OUTLINED_FUNCTION_160();
  v1 = *(v0 + 176);

  v2 = *(v0 + 200);
  *(v0 + 384) = *(v0 + 184);
  *(v0 + 400) = v2;
  *(v0 + 416) = *(v0 + 216);
  sub_1D51D2984(v0 + 384);
  v3 = *(v0 + 840);
  v4 = *(v0 + 776);
  v5 = *(v0 + 752);
  v6 = *(v0 + 744);
  v7 = *(v0 + 736);
  v8 = *(v0 + 712);
  v9 = *(v0 + 704);
  v10 = *(v0 + 680);
  v11 = *(v0 + 656);

  OUTLINED_FUNCTION_55();

  return v12();
}

uint64_t sub_1D51C2D3C()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 1376) = v1;
  *(v0 + 1368) = v2;
  *(v0 + 1360) = v3;
  *(v0 + 1352) = v4;
  *(v0 + 1344) = v5;
  *(v0 + 89) = v6;
  v7 = _s13PersistedDateVMa();
  *(v0 + 1384) = v7;
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  *(v0 + 1392) = OUTLINED_FUNCTION_127();
  v10 = _s10DescriptorVMa();
  *(v0 + 1400) = v10;
  OUTLINED_FUNCTION_69(v10);
  *(v0 + 1408) = v11;
  v13 = *(v12 + 64);
  *(v0 + 1416) = OUTLINED_FUNCTION_127();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF50, &qword_1D561DD10);
  *(v0 + 1424) = v14;
  OUTLINED_FUNCTION_69(v14);
  *(v0 + 1432) = v15;
  v17 = *(v16 + 64);
  *(v0 + 1440) = OUTLINED_FUNCTION_167();
  *(v0 + 1448) = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1D51C41DC()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 1488);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_314();
    v9 = v3[181];
    v10 = v3[180];
    v11 = v3[177];
    v12 = v3[174];

    OUTLINED_FUNCTION_71_0();

    return v13();
  }

  else
  {
    OUTLINED_FUNCTION_314();
    OUTLINED_FUNCTION_27_0(&unk_1D5640908);
    v17 = v15;
    v16 = swift_task_alloc();
    v3[187] = v16;
    *v16 = v7;
    v16[1] = sub_1D51C4374;

    return v17();
  }
}

uint64_t sub_1D51C4374()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 1496);
  *v3 = *v1;
  *(v2 + 1504) = v6;
  *(v2 + 1512) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D51C4478()
{
  v1 = *(v0 + 1504);
  v2 = *(v0 + 736);

  v3 = *(v0 + 760);
  *(v0 + 1224) = *(v0 + 744);
  *(v0 + 1240) = v3;
  *(v0 + 1256) = *(v0 + 776);
  sub_1D51D2984(v0 + 1224);
  v4 = *(v1 + 16);
  if (v4)
  {
    v46 = *(v0 + 1448);
    v5 = *(v0 + 1432);
    v44 = *(v0 + 1416);
    v45 = *(v0 + 1424);
    v43 = *(v0 + 1408);
    v42 = *(v0 + 1400);
    v41 = v45[12];
    v40 = v45[16];
    v39 = v45[20];
    v38 = v45[24];
    v36 = v45[32];
    v37 = v45[28];
    v6 = *(v0 + 1504) + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v35 = *(v5 + 72);
    v7 = MEMORY[0x1E69E7CC0];
    v47 = v0;
    do
    {
      v52 = v7;
      v53 = v4;
      v8 = *(v0 + 1448);
      v9 = *(v0 + 1440);
      v10 = *(v0 + 1416);
      v49 = *(v0 + 1392);
      v50 = *(v0 + 1384);
      v51 = v6;
      sub_1D51D3024();
      *v9 = *v8;
      v48 = v45[12];
      sub_1D51D2DB0();
      v11 = v45[16];
      *(v9 + v11) = *(v46 + v40);
      v12 = v45[20];
      *(v9 + v12) = *(v46 + v39);
      v13 = v45[24];
      *(v9 + v13) = *(v46 + v38);
      v14 = v45[28];
      sub_1D51D2DB0();
      v15 = v45[32];
      sub_1D51D2DB0();
      sub_1D4E50004(v8, &qword_1EC7EAF50, &qword_1D561DD10);
      LOBYTE(v11) = *(v9 + v11);
      v16 = *v9;
      v17 = *(v9 + v12);
      v18 = *(v9 + v13);
      v19 = v42[5];
      sub_1D51D2DB0();
      v20 = v42[9];
      sub_1D51D2DB0();
      sub_1D51D2DB0();
      *v10 = sub_1D560EF08();
      *(v44 + 8) = v21;
      *(v10 + v42[6]) = v11;
      *(v10 + v42[7]) = v17;
      *(v10 + v42[8]) = v18;
      v22 = v42[10];
      OUTLINED_FUNCTION_186_3();
      sub_1D51D2FD0();
      v23 = v10 + v22;
      v7 = v52;
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v50);
      sub_1D4E50004(v9, &qword_1EC7EAF50, &qword_1D561DD10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_100_8();
        sub_1D4F02094();
        v7 = v29;
      }

      v24 = *(v7 + 16);
      v0 = v47;
      if (v24 >= *(v7 + 24) >> 1)
      {
        OUTLINED_FUNCTION_79_9();
        sub_1D4F02094();
        v7 = v30;
      }

      v25 = *(v47 + 1416);
      *(v7 + 16) = v24 + 1;
      v26 = *(v43 + 80);
      OUTLINED_FUNCTION_220_1();
      v28 = *(v27 + 72);
      OUTLINED_FUNCTION_65_20();
      v6 = v51 + v35;
      v4 = v53 - 1;
    }

    while (v53 != 1);
    v31 = *(v47 + 1504);
  }

  else
  {
  }

  OUTLINED_FUNCTION_348();

  v32 = OUTLINED_FUNCTION_51_15();

  return v33(v32);
}

uint64_t sub_1D51C4804()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 736);

  v2 = *(v0 + 760);
  *(v0 + 1264) = *(v0 + 744);
  *(v0 + 1280) = v2;
  *(v0 + 1296) = *(v0 + 776);
  sub_1D51D2984(v0 + 1264);
  v3 = *(v0 + 1512);
  OUTLINED_FUNCTION_348();

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D51C48A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D51C48B8()
{
  OUTLINED_FUNCTION_76_2();
  sub_1D4F0029C();
  v6 = v5;
  OUTLINED_FUNCTION_207_1(v5);
  OUTLINED_FUNCTION_320();
  if (v8)
  {
    OUTLINED_FUNCTION_16_56(v7);
    sub_1D4F0029C();
    v6 = v30;
  }

  OUTLINED_FUNCTION_117_7();
  OUTLINED_FUNCTION_322(v9);
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_156_4();
  if (v3 >= v4 >> 1)
  {
    OUTLINED_FUNCTION_23_44();
    sub_1D4F0029C();
    v6 = v31;
  }

  OUTLINED_FUNCTION_123_0();
  v11 = v6 + v3 * v10;
  *(v11 + 32) = v0;
  *(v11 + 40) = v2;
  OUTLINED_FUNCTION_0_126(v11, v32, v35, v37, v39, v41);
  OUTLINED_FUNCTION_221_0();
  if (!(v14 ^ v15 | v13))
  {
    OUTLINED_FUNCTION_24_43(v12);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_148_7(v16);
  OUTLINED_FUNCTION_0_126(v17, v33, v36, v38, v40, v42);
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v18, v19, v20, v21, v22);
  OUTLINED_FUNCTION_27_0(&unk_1D564E118);
  v34 = v23;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v1[9] = v24;
  *v24 = v25;
  v24[1] = sub_1D51C4A3C;
  v26 = v1[7];
  v27 = v1[8];
  v28 = OUTLINED_FUNCTION_324();

  return v34(v28);
}

uint64_t sub_1D51C4A3C()
{
  OUTLINED_FUNCTION_91();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_59_1();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  *v8 = v7;
  v10 = *(v9 + 72);
  v11 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v12 = v11;

  if (v0)
  {
    sub_1D51D2984(v7 + 16);
    v13 = *(v11 + 8);
    OUTLINED_FUNCTION_153_1();

    __asm { BRAA            X1, X16 }
  }

  *(v7 + 80) = v5;
  *(v7 + 49) = v3;
  sub_1D51D2984(v7 + 16);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1D51C4B88()
{
  if (*(v0 + 49))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 80);
  }

  return (*(v0 + 8))(v1);
}

uint64_t sub_1D51C4BB0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 680) = a5;
  *(v5 + 672) = a4;
  *(v5 + 664) = a3;
  *(v5 + 656) = a2;
  *(v5 + 89) = a1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D51C5298()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_59_1();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  *v8 = v7;
  v10 = *(v9 + 720);
  v11 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v12 = v11;

  if (v0)
  {
    v13 = OUTLINED_FUNCTION_299();
    sub_1D51D29D8(v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_55();

    return v18();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_299();
    *(v7 + 728) = v5;
    *(v7 + 91) = v3;
    sub_1D51D29D8(v20, v21, v22, v23, v24);
    v25 = OUTLINED_FUNCTION_12_1();

    return MEMORY[0x1EEE6DFA0](v25, v26, v27);
  }
}

uint64_t sub_1D51C53D0()
{
  v1 = *(v0 + 728);
  *(v0 + 91);
  OUTLINED_FUNCTION_22_1();
  return v2();
}

uint64_t sub_1D51C5404()
{
  OUTLINED_FUNCTION_60();
  v0[29] = v1;
  v0[30] = v2;
  v3 = type metadata accessor for MusicDownloadedSongCatalogProperties();
  OUTLINED_FUNCTION_69(v3);
  v0[31] = v4;
  v6 = *(v5 + 64);
  v0[32] = OUTLINED_FUNCTION_127();
  v7 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D51C54A4()
{
  OUTLINED_FUNCTION_234_0();
  sub_1D4F0029C();
  OUTLINED_FUNCTION_144_3(v9);
  if (v11)
  {
    OUTLINED_FUNCTION_16_56(v10);
    sub_1D4F0029C();
    v1 = v58;
  }

  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_282_0();
  OUTLINED_FUNCTION_175_2(v12);
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55();
    v0 = *(v1 + 16);
  }

  OUTLINED_FUNCTION_255(aAssetAdamId);
  if (v0 >= v6 >> 1)
  {
    OUTLINED_FUNCTION_58_19();
    sub_1D4F0029C();
    v1 = v59;
  }

  *(v1 + 16) = v4;
  OUTLINED_FUNCTION_122_5();
  *(v13 + 32) = v5;
  *(v13 + 40) = v2;
  OUTLINED_FUNCTION_0_126(v13, v74, v90, v106, v122, v138);
  OUTLINED_FUNCTION_285();
  if (!(v16 ^ v17 | v15))
  {
    OUTLINED_FUNCTION_24_43(v14);
    sub_1D4F0029C();
    v1 = v60;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_206_1(v18);
  OUTLINED_FUNCTION_0_126(v19, v75, v91, v107, v123, v139);
  OUTLINED_FUNCTION_309(aAddedDate);

  if ((v0 + 3) > (v8 >> 1))
  {
    OUTLINED_FUNCTION_37_25();
    sub_1D4F0029C();
    v1 = v61;
  }

  OUTLINED_FUNCTION_91_12();
  *(v20 + 32) = v7;
  *(v20 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v20, v76, v92, v108, v124, v140);
  v21 = *(v1 + 24);
  if ((v0 + 4) > (v21 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v21);
    sub_1D4F0029C();
    v1 = v62;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_206_1(v22);
  OUTLINED_FUNCTION_0_126(v23, v77, v93, v109, v125, v141);
  OUTLINED_FUNCTION_309(aIsBackfill);

  if ((v0 + 5) > (v8 >> 1))
  {
    OUTLINED_FUNCTION_37_25();
    sub_1D4F0029C();
    v1 = v63;
  }

  OUTLINED_FUNCTION_91_12();
  *(v24 + 32) = v7;
  *(v24 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v24, v78, v94, v110, v126, v142);
  v25 = *(v1 + 24);
  if ((v0 + 6) > (v25 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v25);
    sub_1D4F0029C();
    v1 = v64;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_206_1(v26);
  OUTLINED_FUNCTION_0_126(v27, v79, v95, v111, v127, v143);
  OUTLINED_FUNCTION_309(&qword_1EC7E9980);

  if ((v0 + 7) > (v8 >> 1))
  {
    OUTLINED_FUNCTION_37_25();
    sub_1D4F0029C();
    v1 = v65;
  }

  OUTLINED_FUNCTION_91_12();
  *(v28 + 32) = v7;
  *(v28 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v28, v80, v96, v112, v128, v144);
  v29 = *(v1 + 24);
  if ((v0 + 8) > (v29 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v29);
    sub_1D4F0029C();
    v1 = v66;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_206_1(v30);
  OUTLINED_FUNCTION_0_126(v31, v81, v97, v113, v129, v145);
  OUTLINED_FUNCTION_309(&qword_1EC7E99A8);

  if ((v0 + 9) > (v8 >> 1))
  {
    OUTLINED_FUNCTION_37_25();
    sub_1D4F0029C();
    v1 = v67;
  }

  OUTLINED_FUNCTION_91_12();
  *(v32 + 32) = v7;
  *(v32 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v32, v82, v98, v114, v130, v146);
  v33 = *(v1 + 24);
  if ((v0 + 10) > (v33 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v33);
    sub_1D4F0029C();
    v1 = v68;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_206_1(v34);
  OUTLINED_FUNCTION_0_126(v35, v83, v99, v115, v131, v147);
  OUTLINED_FUNCTION_309(&qword_1EC7E99D0);

  if ((v0 + 11) > (v8 >> 1))
  {
    OUTLINED_FUNCTION_37_25();
    sub_1D4F0029C();
    v1 = v69;
  }

  OUTLINED_FUNCTION_91_12();
  *(v36 + 32) = v7;
  *(v36 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v36, v84, v100, v116, v132, v148);
  v37 = *(v1 + 24);
  if ((v0 + 12) > (v37 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v37);
    sub_1D4F0029C();
    v1 = v70;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_206_1(v38);
  OUTLINED_FUNCTION_0_126(v39, v85, v101, v117, v133, v149);
  OUTLINED_FUNCTION_245(&qword_1EC7E99F8);

  if ((v0 + 13) > (v7 >> 1))
  {
    OUTLINED_FUNCTION_45_25();
    sub_1D4F0029C();
    v1 = v71;
  }

  OUTLINED_FUNCTION_91_12();
  *(v40 + 32) = 0x202020200A2CLL;
  *(v40 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v40, v86, v102, v118, v134, v150);
  v41 = *(v1 + 24);
  if ((v0 + 14) > (v41 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v41);
    sub_1D4F0029C();
    v1 = v72;
  }

  OUTLINED_FUNCTION_117_7();
  *(v42 + 32) = 0x204D4F52460ALL;
  *(v42 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_0_126(v42, v87, v103, v119, v135, v151);
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_156_4();
  if (v5 >= 0x101010100516)
  {
    OUTLINED_FUNCTION_23_44();
    sub_1D4F0029C();
    v1 = v73;
  }

  OUTLINED_FUNCTION_123_0();
  v44 = v1 + v5 * v43;
  *(v44 + 32) = v0 + 12;
  *(v44 + 40) = v0 + 13;
  OUTLINED_FUNCTION_0_126(v44, v88, v104, v120, v136, v152);
  OUTLINED_FUNCTION_221_0();
  if (!(v16 ^ v17 | v15))
  {
    OUTLINED_FUNCTION_24_43(v45);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_148_7(v46);
  OUTLINED_FUNCTION_0_126(v47, v89, v105, v121, v137, v153);
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v48, v49, v50, v51, v52);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v3[33] = v53;
  *v53 = v54;
  v53[1] = sub_1D51C5968;
  v55 = v3[29];
  v56 = v3[30];

  return sub_1D52EF728((v3 + 8), (v3 + 19), v55, v56);
}

uint64_t sub_1D51C5968()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 264);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    sub_1D51D2984(v3 + 152);
    v9 = *(v3 + 256);

    OUTLINED_FUNCTION_71_0();

    return v10();
  }

  else
  {
    *(v3 + 272) = *(v3 + 64);
    v12 = *(v3 + 72);
    v13 = *(v3 + 88);
    *(v3 + 144) = *(v3 + 104);
    *(v3 + 112) = v12;
    *(v3 + 128) = v13;
    OUTLINED_FUNCTION_27_0(&unk_1D566D128);
    v16 = v14;
    v15 = swift_task_alloc();
    *(v3 + 280) = v15;
    *v15 = v7;
    v15[1] = sub_1D51C5B08;

    return v16(v3 + 112, &unk_1D566D190, 0);
  }
}

uint64_t sub_1D51C5B08()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  *v4 = v7;
  v3[36] = v8;
  v3[37] = v0;

  if (v0)
  {
    sub_1D51D2984((v3 + 19));
    v9 = OUTLINED_FUNCTION_12_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_27_0(&unk_1D56409B8);
    v15 = v12;
    v13 = swift_task_alloc();
    v3[38] = v13;
    *v13 = v7;
    v13[1] = sub_1D51C5C78;

    return v15();
  }
}

uint64_t sub_1D51C5C78()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 304);
  *v4 = *v1;
  v3[39] = v7;
  v3[40] = v0;

  if (v0)
  {
    v8 = v3[36];
    sub_1D51D2984((v3 + 19));
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51C5D8C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[34];

  sub_1D51D2984((v0 + 14));
  v2 = v0[37];
  v3 = v0[32];

  OUTLINED_FUNCTION_55();

  return v4();
}

void sub_1D51C5DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v15 = 0;
  v16 = *(v14 + 248);
  v18 = *(v14 + 312);
  v17 = *(v14 + 320);
  v19 = *(v18 + 16);
  v55 = v18 + 32;
  v20 = MEMORY[0x1E69E7CC0];
  while (v19 != v15)
  {
    if (v15 >= *(v18 + 16))
    {
      __break(1u);
      return;
    }

    v21 = *(v14 + 288);
    v22 = *(v14 + 256);
    v23 = *(v55 + 8 * v15);

    sub_1D51D2F74(v14 + 152, v14 + 192);
    sub_1D51CE098(v21, v23, (v14 + 152), v14 + 16);
    sub_1D51C6050((v14 + 16), v22);
    if (v17)
    {
      v43 = *(v14 + 312);
      v44 = *(v14 + 288);
      v45 = *(v14 + 272);

      sub_1D51D2984(v14 + 112);

      sub_1D51D2984(v14 + 152);

      v46 = *(v14 + 256);

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_89();

      v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, v55, a11, a12, a13, a14);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_100_8();
      sub_1D4F00EDC();
      v20 = v29;
    }

    OUTLINED_FUNCTION_97_2();
    if (v25)
    {
      OUTLINED_FUNCTION_16_56(v24);
      sub_1D4F00EDC();
      v20 = v30;
    }

    v26 = *(v14 + 256);
    *(v20 + 16) = v21;
    v27 = *(v16 + 80);
    OUTLINED_FUNCTION_220_1();
    v28 = *(v16 + 72);
    OUTLINED_FUNCTION_205_2();
    v17 = 0;
    ++v15;
  }

  v31 = *(v14 + 312);
  v32 = *(v14 + 288);
  v33 = *(v14 + 272);
  v34 = *(v14 + 256);
  sub_1D51D2984(v14 + 152);

  sub_1D51D2984(v14 + 112);

  OUTLINED_FUNCTION_51_15();
  OUTLINED_FUNCTION_89();

  v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, v55, a11, a12, a13, a14);
}

uint64_t sub_1D51C5FE4()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[34];

  sub_1D51D2984((v0 + 14));
  v2 = v0[40];
  v3 = v0[32];

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D51C6050@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v134 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v143 = v127 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1558, &unk_1D5649E60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v142 = v127 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE0, &qword_1D5628A60);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v139 = v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v141 = v127 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v144 = v127 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1548, &unk_1D5649E50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v151 = v127 - v18;
  v148 = sub_1D560C328();
  v146 = *(v148 - 8);
  v19 = *(v146 + 64);
  v20 = MEMORY[0x1EEE9AC00](v148);
  v135 = v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v137 = v127 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v140 = v127 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v152 = v127 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v145 = v127 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v147 = v127 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v150 = v127 - v33;
  v149 = _s13PersistedDateVMa();
  v34 = *(*(v149 - 1) + 64);
  v35 = MEMORY[0x1EEE9AC00](v149);
  v136 = v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v138 = v127 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = v127 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = v127 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v46 = v127 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE8, &qword_1D5628A68);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v47 - 8);
  v51 = v127 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = v127 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v56 = v127 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15D0, &qword_1D56409C0);
  inited = swift_initStaticObject();
  v59 = v153;
  v60 = sub_1D51CBC70(inited);
  v153 = v59;
  if (v59)
  {
    v164 = *a1;
    sub_1D4E50004(&v164, &qword_1EC7F15D8, &qword_1D56409C8);
    v61 = *(a1 + 3);
    v162[0] = *(a1 + 1);
    v162[1] = v61;
    v163 = *(a1 + 40);
    return sub_1D51D2984(v162);
  }

  else
  {
    v132 = v56;
    v133 = a1;
    v63 = v150;
    v129 = v60;
    v130 = v54;
    v131 = v44;
    v127[0] = v57;
    v127[1] = v51;
    v128 = v41;
    if (qword_1EDD5A228 != -1)
    {
      swift_once();
    }

    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15E0, &qword_1D56409D0);
    v65 = swift_initStaticObject();
    v66 = v63;
    v67 = v63;
    v68 = v133;
    v69 = v153;
    sub_1D51CC0D0(v65, v67);
    v71 = v151;
    v70 = v152;
    if (v69)
    {
      v161 = *v68;
      sub_1D4E50004(&v161, &qword_1EC7F15D8, &qword_1D56409C8);
      v72 = *(v68 + 3);
      v159[0] = *(v68 + 1);
      v159[1] = v72;
      v160 = *(v68 + 40);
      return sub_1D51D2984(v159);
    }

    else
    {
      if (__swift_getEnumTagSinglePayload(v66, 1, v149) == 1)
      {
        sub_1D4E50004(v66, &qword_1EC7EB470, &qword_1D561F3D0);
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF00, &unk_1D5628A80);
        __swift_storeEnumTagSinglePayload(v132, 1, 1, v73);
      }

      else
      {
        sub_1D51D2FD0();
        v74 = v146;
        v75 = v46;
        v76 = v145;
        v77 = v148;
        (*(v146 + 16))(v145, v75, v148);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1620, &qword_1D5640A10);
        v78 = swift_initStaticObject();
        sub_1D51CC988(v78, v71);
        sub_1D51D2E04(v75, _s13PersistedDateVMa);
        v79 = *(v74 + 32);
        v80 = v130;
        v79(v130, v76, v77);
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF00, &unk_1D5628A80);
        v82 = *(v81 + 36);
        sub_1D51D3078();
        __swift_storeEnumTagSinglePayload(v80, 0, 1, v81);
        sub_1D51D3078();
        v70 = v152;
      }

      v83 = swift_initStaticObject();
      v84 = v147;
      sub_1D51CC0D0(v83, v147);
      if (__swift_getEnumTagSinglePayload(v84, 1, v149) == 1)
      {
        v153 = v64;
        sub_1D4E50004(v84, &qword_1EC7EB470, &qword_1D561F3D0);
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78);
        __swift_storeEnumTagSinglePayload(v144, 1, 1, v85);
      }

      else
      {
        v86 = v131;
        sub_1D51D2FD0();
        v87 = v146;
        (*(v146 + 16))(v70, v86, v148);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1618, &qword_1D5640A08);
        v88 = swift_initStaticObject();
        sub_1D51CCF0C(v88, v142);
        v153 = v64;
        sub_1D51D2E04(v131, _s13PersistedDateVMa);
        v89 = v141;
        (*(v87 + 32))(v141, v152, v148);
        v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78);
        v91 = *(v90 + 36);
        sub_1D51D3078();
        __swift_storeEnumTagSinglePayload(v89, 0, 1, v90);
        sub_1D51D3078();
      }

      v92 = sub_1D560EF08();
      v94 = v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15E8, &qword_1D56409D8);
      v95 = swift_initStaticObject();
      sub_1D51CD490(v95, v143);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15F0, &qword_1D56409E0);
      v96 = swift_initStaticObject();
      v97 = sub_1D51CC6D4(v96);
      v99 = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15F8, &qword_1D56409E8);
      v100 = swift_initStaticObject();
      sub_1D51CDA14(v100, v155);
      v152 = v97;
      memcpy(v154, v155, sizeof(v154));
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1600, &qword_1D56409F0);
      v102 = swift_initStaticObject();
      v103 = sub_1D51CC3F0(v102);
      v150 = v92;
      v151 = v101;
      if (v103 == 2)
      {
        v104 = 2;
      }

      else
      {
        v104 = v103 & 1;
      }

      v105 = swift_initStaticObject();
      v106 = v128;
      sub_1D51CBD94(v105);
      LODWORD(v147) = v104;
      v149 = *(v146 + 32);
      v149(v140, v106, v148);
      sub_1D51D3024();
      sub_1D51D3024();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1610, &qword_1D5640A00);
      v107 = swift_initStaticObject();
      v108 = sub_1D51CC6D4(v107);
      if (v109)
      {
        v110 = 0;
      }

      else
      {
        v110 = v108;
      }

      v145 = v110;
      v111 = swift_initStaticObject();
      v142 = sub_1D51CBC70(v111);
      v112 = swift_initStaticObject();
      sub_1D51CBD94(v112);
      v149(v137, v138, v148);
      v113 = swift_initStaticObject();
      sub_1D51CBD94(v113);
      v149(v135, v136, v148);
      v114 = swift_initStaticObject();
      v115 = sub_1D51CBFC0(v114);
      v153 = 0;
      v116 = v115;
      v117 = v133;
      v158[0] = *v133;
      sub_1D4E50004(v158, &qword_1EC7F15D8, &qword_1D56409C8);
      v118 = *(v117 + 3);
      v156[0] = *(v117 + 1);
      v156[1] = v118;
      v157 = *(v117 + 40);
      sub_1D51D2984(v156);
      sub_1D4E50004(v144, &qword_1EC7EDEE0, &qword_1D5628A60);
      sub_1D4E50004(v132, &qword_1EC7EDEE8, &qword_1D5628A68);
      v119 = v134;
      *v134 = v150;
      v119[1] = v94;
      v120 = type metadata accessor for MusicDownloadedSongCatalogProperties();
      v121 = v120[5];
      sub_1D51D3078();
      v122 = v119 + v120[6];
      *v122 = v152;
      v122[8] = v99 & 1;
      memcpy(v119 + v120[7], v154, 0xB0uLL);
      *(v119 + v120[8]) = v147;
      v124 = v148;
      v123 = v149;
      v149(v119 + v120[9], v140, v148);
      v125 = v120[10];
      sub_1D51D3078();
      v126 = v120[11];
      sub_1D51D3078();
      *(v119 + v120[12]) = v145;
      *(v119 + v120[13]) = v142;
      v123(v119 + v120[14], v137, v124);
      result = (v123)(v119 + v120[15], v135, v124);
      *(v119 + v120[16]) = v116 & 1;
    }
  }

  return result;
}

uint64_t sub_1D51C75A0(_BYTE *a1)
{
  switch(*a1)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1620, &qword_1D5640A10);
      break;
    case 2:
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15E0, &qword_1D56409D0);
      break;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15F0, &qword_1D56409E0);
      break;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1618, &qword_1D5640A08);
      break;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15F8, &qword_1D56409E8);
      break;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15D0, &qword_1D56409C0);
      break;
    case 8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1600, &qword_1D56409F0);
      break;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15E8, &qword_1D56409D8);
      break;
  }

  return swift_initStaticObject();
}

uint64_t sub_1D51C7704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[32] = a2;
  v3[33] = a3;
  v3[31] = a1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D51C771C()
{
  v4 = v0[31];
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v100 = MEMORY[0x1E69E7CC0];
    sub_1D4F03980();
    v6 = v100;
    v7 = *(v100 + 16);
    v2 = 16 * v7;
    v3 = v4 + 40;
    do
    {
      v8 = *(v3 - 8);
      v1 = *v3;
      v99.n128_u64[0] = v6;
      v9 = *(v6 + 24);

      if (v7 >= v9 >> 1)
      {
        sub_1D4F03980();
      }

      *(v6 + 16) = v7 + 1;
      v10 = v6 + v2;
      *(v10 + 32) = v8;
      *(v10 + 40) = v1;
      v2 += 16;
      v3 += 16;
      ++v7;
      --v5;
    }

    while (v5);
  }

  sub_1D4F0029C();
  v12 = v11;
  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  OUTLINED_FUNCTION_129_4();
  if (v16)
  {
    OUTLINED_FUNCTION_22_41(v15);
    sub_1D4F0029C();
    v12 = v64;
  }

  OUTLINED_FUNCTION_83_11();
  OUTLINED_FUNCTION_175_2(v17);
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_218_2();
  if (v2 >= v3 >> 1)
  {
    OUTLINED_FUNCTION_54_18();
    sub_1D4F0029C();
    v12 = v65;
  }

  OUTLINED_FUNCTION_130_8();
  v19 = v12 + v2 * v18;
  *(v19 + 32) = v14;
  *(v19 + 40) = v1;
  OUTLINED_FUNCTION_9_70(v19, v70, v74, v79, v84, v89, v94, v99, v105, v110, v115);
  v20 = *(v12 + 24);
  OUTLINED_FUNCTION_230_1();
  if (!(v23 ^ v24 | v22))
  {
    OUTLINED_FUNCTION_27_40(v21);
    sub_1D4F0029C();
    v12 = v66;
  }

  OUTLINED_FUNCTION_125_8();
  OUTLINED_FUNCTION_80_9(v25);
  OUTLINED_FUNCTION_9_70(v26, v71, v75, v80, v85, v90, v95, v101, v106, v111, v116);
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55();
  }

  v28 = aAssetAdamId[0];
  v27 = aAssetAdamId[1];
  v29 = *(v12 + 16);
  v30 = *(v12 + 24);

  if (v29 >= v30 >> 1)
  {
    OUTLINED_FUNCTION_54_18();
    sub_1D4F0029C();
    v12 = v67;
  }

  OUTLINED_FUNCTION_130_8();
  v32 = v12 + v29 * v31;
  *(v32 + 32) = v28;
  *(v32 + 40) = v27;
  OUTLINED_FUNCTION_9_70(v32, v72, v76, v81, v86, v91, v96, v102, v107, v112, v117);
  v33 = *(v12 + 24);
  if ((v29 + 2) > (v33 >> 1))
  {
    OUTLINED_FUNCTION_27_40(v33);
    sub_1D4F0029C();
    v12 = v68;
  }

  OUTLINED_FUNCTION_125_8();
  OUTLINED_FUNCTION_276(v34);
  OUTLINED_FUNCTION_9_70(v35, v73, v77, v82, v87, v92, v97, v103, v108, v113, v118);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  v93 = sub_1D51D2E5C(&qword_1EC7F15B8, &qword_1EC7EABD8, &unk_1D561D780);
  OUTLINED_FUNCTION_9_0();
  v0[7] = 0xD000000000000021;
  v0[8] = v36;
  v0[9] = 60;
  v0[10] = 0xE100000000000000;
  v0[11] = 95;
  v0[12] = 0xE100000000000000;
  v37 = sub_1D4F53278();

  v38 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_31();
  v0[13] = OUTLINED_FUNCTION_295();
  v0[14] = v39;
  v0[15] = 62;
  v0[16] = 0xE100000000000000;
  v0[17] = 95;
  v0[18] = 0xE100000000000000;
  OUTLINED_FUNCTION_3_31();
  v40 = OUTLINED_FUNCTION_295();
  v42 = v41;

  v0[19] = v40;
  v0[20] = v42;
  v0[21] = 46;
  v0[22] = 0xE100000000000000;
  v0[23] = 95;
  v0[24] = 0xE100000000000000;
  OUTLINED_FUNCTION_3_31();
  OUTLINED_FUNCTION_295();

  OUTLINED_FUNCTION_337();
  v0[29] = 95;
  v0[30] = 0xE100000000000000;
  v83 = v37;
  v88 = v37;
  v78 = v37;
  OUTLINED_FUNCTION_3_31();
  v43 = OUTLINED_FUNCTION_295();
  v45 = v44;

  v46 = *(v12 + 16);
  if (v46 >= *(v12 + 24) >> 1)
  {
    OUTLINED_FUNCTION_121_7();
    sub_1D4F0029C();
    v12 = v69;
  }

  *(v12 + 16) = v46 + 1;
  v47 = v12 + 80 * v46;
  *(v47 + 32) = v6;
  *(v47 + 40) = v104;
  *(v47 + 56) = v98;
  *(v47 + 64) = v93;
  *(v47 + 72) = v43;
  *(v47 + 80) = v45;
  OUTLINED_FUNCTION_173_1(v47);

  OUTLINED_FUNCTION_166_1();
  if (v16)
  {
    OUTLINED_FUNCTION_22_41(v48);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_124_6();
  OUTLINED_FUNCTION_148_7(v49);
  OUTLINED_FUNCTION_9_70(v50, v38, v78, v83, v88, v93, v98, v104, v109, v114, v119);
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v51, v52, v53, v54, v55);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[34] = v56;
  *v56 = v57;
  v56[1] = sub_1D51C7BDC;
  v58 = v0[32];
  v59 = v0[33];
  v60 = OUTLINED_FUNCTION_324();

  return sub_1D52EF24C(v60, v61, v62);
}

uint64_t sub_1D51C7BDC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 280) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1D51D2984(v3 + 16);
    OUTLINED_FUNCTION_55();

    return v12();
  }
}

uint64_t sub_1D51C7CF8()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D2984(v0 + 16);
  OUTLINED_FUNCTION_55();
  v2 = *(v0 + 280);

  return v1();
}

uint64_t sub_1D51C7D54()
{
  OUTLINED_FUNCTION_60();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = _s10DescriptorVMa();
  v0[11] = v4;
  OUTLINED_FUNCTION_69(v4);
  v0[12] = v5;
  v7 = *(v6 + 64);
  v0[13] = OUTLINED_FUNCTION_167();
  v0[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15A0, &qword_1D5640960);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  v0[15] = OUTLINED_FUNCTION_127();
  v11 = sub_1D560BB08();
  v0[16] = v11;
  OUTLINED_FUNCTION_69(v11);
  v0[17] = v12;
  v14 = *(v13 + 64);
  v0[18] = OUTLINED_FUNCTION_167();
  v0[19] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1D51C7E8C()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[8];
  v5 = *(v4 + 16);
  v0[20] = v5;
  v0[21] = 0;
  if (!v5)
  {
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[15];

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_153_1();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[19];
  v8 = v0[15];
  v7 = v0[16];
  v10 = *(v1 + 16);
  v9 = v1 + 16;
  v11 = (*(v9 + 64) + 32) & ~*(v9 + 64);
  v0[22] = v10;
  v0[23] = v9 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v6, v4 + v11, v7);
  v10(v8, v6, v7);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v7);
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_162_5(v12);
  OUTLINED_FUNCTION_153_1();

  return sub_1D51C1ABC();
}

uint64_t sub_1D51C7FE0()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v2 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_24_1();
  *v7 = v6;
  *(v9 + 200) = v8;
  *(v9 + 208) = v0;

  sub_1D4E50004(*(v2 + 120), &qword_1EC7F15A0, &qword_1D5640960);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D51C8114()
{
  OUTLINED_FUNCTION_76_2();
  v50 = v0;
  v1 = v0;
  v2 = v0[25];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[12];
    v1[7] = MEMORY[0x1E69E7CC0];
    sub_1D4F04614();
    v5 = v1[7];
    v46 = v1;
    v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v45 = *(v4 + 72);
    do
    {
      v7 = v1[13];
      v8 = v1[14];
      v9 = v1[11];
      sub_1D51D2DB0();
      v10 = v7[1];
      v47 = *v7;
      v11 = v9[5];
      sub_1D51D2DB0();
      v12 = v5;
      v13 = *(v7 + v9[7]);
      v14 = v9[9];

      sub_1D560C218();
      v15 = v9[10];
      sub_1D51D3024();
      sub_1D51D2E04(v7, _s10DescriptorVMa);
      v1 = v46;
      *v8 = v47;
      v8[1] = v10;
      *(v8 + v9[6]) = 1;
      *(v8 + v9[7]) = v13;
      v5 = v12;
      *(v8 + v9[8]) = 0;
      v46[7] = v12;
      v16 = *(v12 + 16);
      if (v16 >= *(v12 + 24) >> 1)
      {
        sub_1D4F04614();
        v5 = v46[7];
      }

      v17 = v46[14];
      *(v5 + 16) = v16 + 1;
      OUTLINED_FUNCTION_65_20();
      v6 += v45;
      --v3;
    }

    while (v3);
    v18 = v46[25];
  }

  else
  {
    v19 = v0[25];

    v5 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v21 = v1[22];
  v20 = v1[23];
  v23 = v1[18];
  v22 = v1[19];
  v24 = v1[16];
  v25 = sub_1D560C758();
  __swift_project_value_buffer(v25, qword_1EDD76A90);
  v21(v23, v22, v24);
  swift_bridgeObjectRetain_n();
  v26 = sub_1D560C738();
  v27 = sub_1D56156B8();
  v28 = os_log_type_enabled(v26, v27);
  v30 = v1[17];
  v29 = v1[18];
  v31 = v1[16];
  if (v28)
  {
    v48 = v27;
    v32 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v32 = 136446466;
    OUTLINED_FUNCTION_33_36();
    sub_1D51D2B88(v33, v34);
    v35 = sub_1D56160F8();
    v37 = v36;
    v38 = *(v30 + 8);
    v38(v29, v31);
    v39 = sub_1D4E6835C(v35, v37, &v49);

    *(v32 + 4) = v39;
    *(v32 + 12) = 2050;
    v40 = *(v5 + 16);

    *(v32 + 14) = v40;

    _os_log_impl(&dword_1D4E3F000, v26, v48, "Rejecting ALL entries updated between %{public}s: %{public}ld entries found.", v32, 0x16u);
    OUTLINED_FUNCTION_170_2();
    MEMORY[0x1DA6ED200](v32, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v38 = *(v30 + 8);
    v38(v29, v31);
  }

  v1[27] = v38;
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15A8, &qword_1D5640970);
  v1[6] = sub_1D4E62A60(&qword_1EDD52890, &qword_1EC7F15A8, &qword_1D5640970);
  v1[2] = v5;
  v41 = swift_task_alloc();
  v1[28] = v41;
  *v41 = v1;
  v41[1] = sub_1D51C8574;
  v42 = v1[9];
  v43 = v1[10];

  return sub_1D51BC42C();
}

uint64_t sub_1D51C8574()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 232) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51C8674()
{
  OUTLINED_FUNCTION_91();
  v1 = OUTLINED_FUNCTION_333();
  v2(v1);
  v3 = v0[20];
  v4 = v0[21] + 1;
  v0[21] = v4;
  v5 = v0[19];
  v6 = v0[15];
  if (v4 == v3)
  {
    v7 = v0[18];
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[19];

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_153_1();

    __asm { BRAA            X1, X16 }
  }

  v13 = v0[16];
  v14 = v0[17];
  v15 = *(v14 + 16);
  v14 += 16;
  v16 = v0[8] + ((*(v14 + 64) + 32) & ~*(v14 + 64)) + *(v14 + 56) * v4;
  v0[22] = v15;
  v0[23] = v14 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v5, v16, v13);
  v17 = OUTLINED_FUNCTION_159();
  (v15)(v17);
  OUTLINED_FUNCTION_121_7();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = swift_task_alloc();
  v0[24] = v22;
  *v22 = v0;
  OUTLINED_FUNCTION_162_5();
  OUTLINED_FUNCTION_153_1();

  return sub_1D51C1ABC();
}

void sub_1D51C87E0()
{
  OUTLINED_FUNCTION_91();
  (*(v0[17] + 8))(v0[19], v0[16]);
  v1 = v0[26];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  __asm { BRAA            X1, X16 }
}

void sub_1D51C8888()
{
  OUTLINED_FUNCTION_91();
  v1 = OUTLINED_FUNCTION_333();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[29];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1D51C8930()
{
  OUTLINED_FUNCTION_60();
  v4 = OUTLINED_FUNCTION_350(v1, v2, v3);
  v0[224] = v4;
  OUTLINED_FUNCTION_69(v4);
  v0[225] = v5;
  v7 = *(v6 + 64);
  v0[226] = OUTLINED_FUNCTION_167();
  v0[227] = swift_task_alloc();
  v8 = sub_1D560BB08();
  v0[228] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[229] = v9;
  v11 = *(v10 + 64);
  v0[230] = OUTLINED_FUNCTION_167();
  v0[231] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D51C8A30()
{
  OUTLINED_FUNCTION_76_2();
  v5 = *(v1 + 1768);
  *(v1 + 1856) = sub_1D51BE928(&unk_1F50A3C90);
  v6 = *(v5 + 16);
  *(v1 + 1864) = v6;
  if (!v6)
  {
    OUTLINED_FUNCTION_198_3();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_247();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_231_0();
  v7 = OUTLINED_FUNCTION_229_1();
  v8(v7);
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v9 = v5 | 0x8000000000000000;
  v10 = OUTLINED_FUNCTION_155_5();
  __swift_project_value_buffer(v10, qword_1EDD76A90);
  v11 = OUTLINED_FUNCTION_142_5();
  v4(v11);
  v12 = v2;
  v13 = sub_1D560C738();
  v14 = sub_1D56156B8();
  OUTLINED_FUNCTION_104_5(v14);
  OUTLINED_FUNCTION_210_2();
  if (v15)
  {
    OUTLINED_FUNCTION_142();
    v124 = OUTLINED_FUNCTION_37_0();
    *v2 = 136315138;
    OUTLINED_FUNCTION_33_36();
    sub_1D51D2B88(v16, v17);
    OUTLINED_FUNCTION_263();
    sub_1D56160F8();
    v122 = v0;
    v0 = v9;
    OUTLINED_FUNCTION_261();
    v18 = OUTLINED_FUNCTION_107_8();
    v19 = (v3)(v18);
    OUTLINED_FUNCTION_347(v19, v20, v21);
    OUTLINED_FUNCTION_368();
    *(v2 + 4) = v2;
    OUTLINED_FUNCTION_274(&dword_1D4E3F000, v22, v122, "Rejecting audio analysis updated between %s.");
    v12 = v124;
    OUTLINED_FUNCTION_170_2();
    OUTLINED_FUNCTION_118();
  }

  else
  {

    v25 = OUTLINED_FUNCTION_107_8();
    (v3)(v25);
  }

  *(v1 + 1896) = v3;
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_114_5(v26);
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v27);
    sub_1D4F0029C();
    v13 = v115;
  }

  OUTLINED_FUNCTION_63_13();
  *(v30 + 32) = v29 + 11;
  *(v30 + 40) = v9;
  *(v30 + 104) = 0;
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55();
    v12 = v13[2];
  }

  OUTLINED_FUNCTION_196_1();
  if (v12 >= v3 >> 1)
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
    v13 = v116;
  }

  OUTLINED_FUNCTION_90_14();
  *(v31 + 32) = v9;
  *(v31 + 40) = v0;
  OUTLINED_FUNCTION_8_67(v31);
  OUTLINED_FUNCTION_168_3();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_24_43(v32);
    sub_1D4F0029C();
    v13 = v117;
  }

  OUTLINED_FUNCTION_223_1();
  OUTLINED_FUNCTION_75_14();
  OUTLINED_FUNCTION_158_5(v36);
  OUTLINED_FUNCTION_19_50(v37);
  OUTLINED_FUNCTION_195_2();
  if (v2 > (&qword_1EC7E9980 >> 1))
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
    v13 = v118;
  }

  OUTLINED_FUNCTION_72_18();
  *(v38 + 32) = v1 + 1520;
  *(v38 + 40) = v1 + 1240;
  OUTLINED_FUNCTION_11_70(v38);
  OUTLINED_FUNCTION_167_2();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_22_41(v39);
    sub_1D4F0029C();
    v13 = v119;
  }

  OUTLINED_FUNCTION_42_24();
  sub_1D56160F8();
  OUTLINED_FUNCTION_77_8();
  if (v28)
  {
    OUTLINED_FUNCTION_24_43(v40);
    sub_1D4F0029C();
    v13 = v120;
  }

  OUTLINED_FUNCTION_104_12();
  v41 = *(v1 + 448);
  OUTLINED_FUNCTION_15_57(v42, *(v1 + 400), *(v1 + 416), *(v1 + 432));
  OUTLINED_FUNCTION_260();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_22_41(v43);
    sub_1D4F0029C();
    v13 = v121;
  }

  OUTLINED_FUNCTION_63_13();
  OUTLINED_FUNCTION_99_11(v44);
  OUTLINED_FUNCTION_8_67(v45);
  v46 = aAudioAnalysis[1];
  v47 = v13[3];
  OUTLINED_FUNCTION_310();
  if (v0 > (v47 >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
  }

  v48 = v1 + 568;
  OUTLINED_FUNCTION_56_20();
  OUTLINED_FUNCTION_10_68(v49);
  OUTLINED_FUNCTION_134_6();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_22_41(v50);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_35_34();
  OUTLINED_FUNCTION_12_58(v51);
  OUTLINED_FUNCTION_345(&qword_1EC7E9A98);
  if (v0 > ((v1 + 512) >> 1))
  {
    OUTLINED_FUNCTION_34_35();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v52 + 32) = v48;
  *(v52 + 40) = v46;
  OUTLINED_FUNCTION_8_67(v52);
  OUTLINED_FUNCTION_213_1();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_22_41(v53);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_35_34();
  OUTLINED_FUNCTION_10_68(v54);
  OUTLINED_FUNCTION_300(&qword_1EC7E99A8);
  OUTLINED_FUNCTION_364();
  if (v0 > (0x80000001D56874E0 >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_47_27();
  OUTLINED_FUNCTION_8_67(v55);
  OUTLINED_FUNCTION_212_2();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_22_41(v56);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_63_13();
  *(v57 + 32) = v59;
  *(v57 + 40) = v58;
  OUTLINED_FUNCTION_11_70(v57);
  OUTLINED_FUNCTION_228_1(&qword_1EC7E99D0);
  OUTLINED_FUNCTION_363();
  if (v0 > ((v1 + 792) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v60 + 32) = v48;
  *(v60 + 40) = v46;
  OUTLINED_FUNCTION_10_68(v60);
  OUTLINED_FUNCTION_216_1();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_22_41(v61);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_63_13();
  *(v62 + 32) = 0x20200A2C30203D20;
  OUTLINED_FUNCTION_232_0();
  *(v63 + 40) = v64;
  OUTLINED_FUNCTION_11_70(v63);
  OUTLINED_FUNCTION_228_1(aIsBackfill);

  if (v1 + 1251 > ((v1 + 904) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v65 + 32) = v48;
  *(v65 + 40) = v46;
  OUTLINED_FUNCTION_8_67(v65);
  OUTLINED_FUNCTION_215_0();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_22_41(v66);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_39_27();
  *(v68 + 32) = v67 - 1;
  *(v68 + 40) = 0x80000001D5687500;
  OUTLINED_FUNCTION_11_70(v68);
  OUTLINED_FUNCTION_300(&qword_1EC7E9A98);
  OUTLINED_FUNCTION_362();
  if (v1 + 1251 > ((v1 + 1016) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_47_27();
  OUTLINED_FUNCTION_8_67(v69);
  OUTLINED_FUNCTION_217_1();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_20_51(v70);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_11_70(v71);
  sub_1D560BAE8();
  sub_1D560C208();
  v72 = OUTLINED_FUNCTION_143_6();
  v123 = v73;
  v73(v72);
  *(v1 + 1696) = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_194_3(&off_1F50C0338);
  OUTLINED_FUNCTION_172_3();
  OUTLINED_FUNCTION_89_11();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v74);
    sub_1D4F0029C();
  }

  v75 = (v1 + 1296);
  v76 = OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_253(v76);
  __swift_destroy_boxed_opaque_existential_1((v1 + 1672));
  OUTLINED_FUNCTION_84_10();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v77);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_81_17();
  OUTLINED_FUNCTION_76_11();
  OUTLINED_FUNCTION_73_12();
  v78[2].n128_u64[0] = v80;
  v78[2].n128_u64[1] = v79;
  v81 = *(v1 + 1344);
  OUTLINED_FUNCTION_21(v78, *v75, *(v1 + 1312), *(v1 + 1328));
  v83 = qword_1EC7E9A98;
  v82 = off_1EC7E9AA0;
  OUTLINED_FUNCTION_159_6();
  if (v75 > ((v1 + 1128) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v84 + 32) = v83;
  *(v84 + 40) = v82;
  OUTLINED_FUNCTION_8_67(v84);
  OUTLINED_FUNCTION_135_8();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_20_51(v85);
    sub_1D4F0029C();
  }

  v86 = *(v1 + 1848);
  v87 = *(v1 + 1808);
  v88 = *(v1 + 1792);
  OUTLINED_FUNCTION_68_12();
  OUTLINED_FUNCTION_11_70(v89);
  sub_1D560BAC8();
  sub_1D560C208();
  v90 = OUTLINED_FUNCTION_169_1();
  v123(v90);
  *(v1 + 1656) = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_193_1(&off_1F50C0338);
  OUTLINED_FUNCTION_67_21();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v91);
    sub_1D4F0029C();
  }

  v92 = (v1 + 232);
  v93 = OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_254(v93);
  __swift_destroy_boxed_opaque_existential_1((v1 + 1632));
  OUTLINED_FUNCTION_84_10();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v94);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_76_11();
  OUTLINED_FUNCTION_302();
  OUTLINED_FUNCTION_81_17();
  v95[2].n128_u64[0] = v97;
  v95[2].n128_u64[1] = v96;
  v98 = *(v1 + 280);
  OUTLINED_FUNCTION_21(v95, *v92, *(v1 + 248), *(v1 + 264));
  OUTLINED_FUNCTION_159_6();
  if (v92 > ((v1 + 1408) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_47_27();
  OUTLINED_FUNCTION_8_67(v99);
  OUTLINED_FUNCTION_101_5();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_22_41(v100);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_41_29();
  sub_1D56160F8();
  OUTLINED_FUNCTION_112_10();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v101);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_109_12();
  v102 = v87[3].n128_u64[0];
  OUTLINED_FUNCTION_15_57(v103, *v87, v87[1], v87[2]);
  OUTLINED_FUNCTION_203_2();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_24_43(v104);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  OUTLINED_FUNCTION_148_7(v105);
  v106 = *(v1 + 224);
  OUTLINED_FUNCTION_21(v107, *(v1 + 176), *(v1 + 192), *(v1 + 208));
  OUTLINED_FUNCTION_150_7(MEMORY[0x1E69E7CC0], v1 + 1712);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 1904) = v108;
  *v108 = v109;
  OUTLINED_FUNCTION_118_8(v108);
  OUTLINED_FUNCTION_247();

  return sub_1D52EF24C(v110, v111, v112);
}

uint64_t sub_1D51C9354()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 1904);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 1912) = v0;

  sub_1D51D2984(v3 + 1712);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51C9454()
{
  OUTLINED_FUNCTION_100();
  v121 = v3;
  v9 = OUTLINED_FUNCTION_226_1();
  v10(v9);
  if (v0 == v1)
  {
    OUTLINED_FUNCTION_198_3();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_246();

    __asm { BRAA            X1, X16 }
  }

  v13 = OUTLINED_FUNCTION_164_3();
  v14(v13);
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v15 = OUTLINED_FUNCTION_155_5();
  __swift_project_value_buffer(v15, qword_1EDD76A90);
  v16 = OUTLINED_FUNCTION_142_5();
  v6(v16);
  v17 = v4;
  v18 = sub_1D560C738();
  v19 = sub_1D56156B8();
  OUTLINED_FUNCTION_104_5(v19);
  OUTLINED_FUNCTION_210_2();
  if (v20)
  {
    OUTLINED_FUNCTION_142();
    v118 = OUTLINED_FUNCTION_37_0();
    v120 = v118;
    *v4 = 136315138;
    OUTLINED_FUNCTION_33_36();
    sub_1D51D2B88(v21, v22);
    OUTLINED_FUNCTION_263();
    sub_1D56160F8();
    OUTLINED_FUNCTION_261();
    v23 = OUTLINED_FUNCTION_107_8();
    (v5)(v23);
    sub_1D4E6835C(v7, v8, &v120);
    OUTLINED_FUNCTION_368();
    *(v4 + 4) = v4;
    OUTLINED_FUNCTION_274(&dword_1D4E3F000, v24, v2, "Rejecting audio analysis updated between %s.");
    v17 = v118;
    OUTLINED_FUNCTION_170_2();
    OUTLINED_FUNCTION_118();
  }

  else
  {

    v25 = OUTLINED_FUNCTION_107_8();
    (v5)(v25);
  }

  *(v3 + 1896) = v5;
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_114_5(v26);
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v27);
    sub_1D4F0029C();
    v18 = v117;
  }

  OUTLINED_FUNCTION_321();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_105_10();
  *(v31 + 32) = v29 + 11;
  *(v31 + 40) = v30;
  *(v31 + 104) = 0;
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55();
    v17 = v18[2];
  }

  v32 = v3 + 1520;
  OUTLINED_FUNCTION_196_1();
  if (v17 >= v5 >> 1)
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_90_14();
  *(v33 + 32) = v7;
  *(v33 + 40) = v2;
  OUTLINED_FUNCTION_8_67(v33);
  OUTLINED_FUNCTION_168_3();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_24_43(v34);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_223_1();
  OUTLINED_FUNCTION_75_14();
  OUTLINED_FUNCTION_158_5(v38);
  OUTLINED_FUNCTION_19_50(v39);
  OUTLINED_FUNCTION_195_2();
  if (v4 > (&qword_1EC7E9980 >> 1))
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_72_18();
  *(v40 + 32) = v32;
  *(v40 + 40) = v3 + 1240;
  OUTLINED_FUNCTION_11_70(v40);
  OUTLINED_FUNCTION_167_2();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v41);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_42_24();
  sub_1D56160F8();
  OUTLINED_FUNCTION_77_8();
  if (v28)
  {
    OUTLINED_FUNCTION_24_43(v42);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_104_12();
  v43 = *(v3 + 448);
  OUTLINED_FUNCTION_15_57(v44, *(v3 + 400), *(v3 + 416), *(v3 + 432));
  OUTLINED_FUNCTION_260();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v45);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_63_13();
  OUTLINED_FUNCTION_99_11(v46);
  OUTLINED_FUNCTION_10_68(v47);
  OUTLINED_FUNCTION_275(aAudioAnalysis);
  OUTLINED_FUNCTION_310();
  if (v2 > ((v3 + 456) >> 1))
  {
    OUTLINED_FUNCTION_34_35();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_56_20();
  OUTLINED_FUNCTION_11_70(v48);
  OUTLINED_FUNCTION_134_6();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v49);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_35_34();
  OUTLINED_FUNCTION_12_58(v50);
  OUTLINED_FUNCTION_346(&qword_1EC7E9A98);
  if (v2 > (v32 >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v51 + 32) = v3 + 568;
  *(v51 + 40) = v4;
  OUTLINED_FUNCTION_10_68(v51);
  OUTLINED_FUNCTION_213_1();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v52);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_35_34();
  OUTLINED_FUNCTION_8_67(v53);
  OUTLINED_FUNCTION_332(&qword_1EC7E99A8);
  OUTLINED_FUNCTION_364();
  if (v2 > ((v3 + 680) >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v54 + 32) = 0x80000001D56874E0;
  *(v54 + 40) = v4;
  OUTLINED_FUNCTION_10_68(v54);
  OUTLINED_FUNCTION_212_2();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v55);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_63_13();
  *(v56 + 32) = 0x20200A2C30203D20;
  *(v56 + 40) = v57;
  OUTLINED_FUNCTION_8_67(v56);
  OUTLINED_FUNCTION_332(&qword_1EC7E99D0);
  OUTLINED_FUNCTION_363();
  if (v2 > ((v3 + 792) >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v58 + 32) = 0x80000001D56874E0;
  *(v58 + 40) = v4;
  OUTLINED_FUNCTION_12_58(v58);
  OUTLINED_FUNCTION_216_1();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v59);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_63_13();
  OUTLINED_FUNCTION_232_0();
  *(v60 + 32) = 0x20200A2C30203D20;
  *(v60 + 40) = v61;
  OUTLINED_FUNCTION_8_67(v60);
  OUTLINED_FUNCTION_358(aIsBackfill);
  if (v2 > (0x80000001D56874E0 >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_56_20();
  OUTLINED_FUNCTION_12_58(v62);
  OUTLINED_FUNCTION_215_0();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v63);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_105_10();
  OUTLINED_FUNCTION_321();
  *(v66 + 32) = v64 - 1;
  *(v66 + 40) = v65;
  v67 = OUTLINED_FUNCTION_133_4();
  *(v68 + 96) = *(v3 + 1064);
  OUTLINED_FUNCTION_86_14(v67, v69, v70);
  OUTLINED_FUNCTION_275(&qword_1EC7E9A98);
  OUTLINED_FUNCTION_362();
  if (v2 > ((v3 + 1016) >> 1))
  {
    OUTLINED_FUNCTION_34_35();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_56_20();
  OUTLINED_FUNCTION_11_70(v71);
  OUTLINED_FUNCTION_217_1();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_20_51(v72);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_12_58(v73);
  sub_1D560BAE8();
  sub_1D560C208();
  v74 = OUTLINED_FUNCTION_143_6();
  v119 = v75;
  v75(v74);
  *(v3 + 1696) = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_194_3(&off_1F50C0338);
  OUTLINED_FUNCTION_172_3();
  OUTLINED_FUNCTION_89_11();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v76);
    sub_1D4F0029C();
  }

  v77 = (v3 + 1296);
  v78 = OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_253(v78);
  __swift_destroy_boxed_opaque_existential_1((v3 + 1672));
  OUTLINED_FUNCTION_84_10();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v79);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_81_17();
  OUTLINED_FUNCTION_76_11();
  OUTLINED_FUNCTION_73_12();
  v80[2].n128_u64[0] = v82;
  v80[2].n128_u64[1] = v81;
  v83 = *(v3 + 1344);
  OUTLINED_FUNCTION_21(v80, *v77, *(v3 + 1312), *(v3 + 1328));
  v85 = qword_1EC7E9A98;
  v84 = off_1EC7E9AA0;
  OUTLINED_FUNCTION_159_6();
  if (v77 > ((v3 + 1072) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v86 + 32) = v85;
  *(v86 + 40) = v84;
  OUTLINED_FUNCTION_8_67(v86);
  OUTLINED_FUNCTION_135_8();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_20_51(v87);
    sub_1D4F0029C();
  }

  v88 = *(v3 + 1848);
  v89 = *(v3 + 1808);
  v90 = *(v3 + 1792);
  OUTLINED_FUNCTION_68_12();
  OUTLINED_FUNCTION_11_70(v91);
  sub_1D560BAC8();
  sub_1D560C208();
  v92 = OUTLINED_FUNCTION_169_1();
  v119(v92);
  *(v3 + 1656) = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_193_1(&off_1F50C0338);
  OUTLINED_FUNCTION_67_21();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v93);
    sub_1D4F0029C();
  }

  v94 = (v3 + 232);
  v95 = OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_254(v95);
  __swift_destroy_boxed_opaque_existential_1((v3 + 1632));
  OUTLINED_FUNCTION_84_10();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v96);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_76_11();
  OUTLINED_FUNCTION_302();
  OUTLINED_FUNCTION_81_17();
  v97[2].n128_u64[0] = v99;
  v97[2].n128_u64[1] = v98;
  v100 = *(v3 + 280);
  OUTLINED_FUNCTION_21(v97, *v94, *(v3 + 248), *(v3 + 264));
  OUTLINED_FUNCTION_159_6();
  if (v94 > ((v3 + 1408) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_47_27();
  OUTLINED_FUNCTION_8_67(v101);
  OUTLINED_FUNCTION_101_5();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v102);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_41_29();
  sub_1D56160F8();
  OUTLINED_FUNCTION_112_10();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v103);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_109_12();
  v104 = v89[3].n128_u64[0];
  OUTLINED_FUNCTION_15_57(v105, *v89, v89[1], v89[2]);
  OUTLINED_FUNCTION_203_2();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_24_43(v106);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  OUTLINED_FUNCTION_148_7(v107);
  v108 = *(v3 + 224);
  OUTLINED_FUNCTION_21(v109, *(v3 + 176), *(v3 + 192), *(v3 + 208));
  OUTLINED_FUNCTION_150_7(MEMORY[0x1E69E7CC0], v3 + 1712);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v3 + 1904) = v110;
  *v110 = v111;
  OUTLINED_FUNCTION_118_8(v110);
  OUTLINED_FUNCTION_246();

  return sub_1D52EF24C(v112, v113, v114);
}

uint64_t sub_1D51C9D50()
{
  OUTLINED_FUNCTION_60();
  v4 = OUTLINED_FUNCTION_350(v1, v2, v3);
  v0[224] = v4;
  OUTLINED_FUNCTION_69(v4);
  v0[225] = v5;
  v7 = *(v6 + 64);
  v0[226] = OUTLINED_FUNCTION_167();
  v0[227] = swift_task_alloc();
  v8 = sub_1D560BB08();
  v0[228] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[229] = v9;
  v11 = *(v10 + 64);
  v0[230] = OUTLINED_FUNCTION_167();
  v0[231] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D51C9E50()
{
  OUTLINED_FUNCTION_76_2();
  v5 = *(v1 + 1768);
  *(v1 + 1856) = sub_1D51BE928(&unk_1F50A3CB8);
  v6 = *(v5 + 16);
  *(v1 + 1864) = v6;
  if (!v6)
  {
    OUTLINED_FUNCTION_198_3();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_247();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_231_0();
  v7 = OUTLINED_FUNCTION_229_1();
  v8(v7);
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v9 = v5 | 0x8000000000000000;
  v10 = OUTLINED_FUNCTION_155_5();
  __swift_project_value_buffer(v10, qword_1EDD76A90);
  v11 = OUTLINED_FUNCTION_142_5();
  v4(v11);
  v12 = v2;
  v13 = sub_1D560C738();
  v14 = sub_1D56156B8();
  OUTLINED_FUNCTION_104_5(v14);
  OUTLINED_FUNCTION_210_2();
  if (v15)
  {
    OUTLINED_FUNCTION_142();
    v124 = OUTLINED_FUNCTION_37_0();
    *v2 = 136315138;
    OUTLINED_FUNCTION_33_36();
    sub_1D51D2B88(v16, v17);
    OUTLINED_FUNCTION_263();
    sub_1D56160F8();
    v122 = v0;
    v0 = v9;
    OUTLINED_FUNCTION_261();
    v18 = OUTLINED_FUNCTION_107_8();
    v19 = (v3)(v18);
    OUTLINED_FUNCTION_347(v19, v20, v21);
    OUTLINED_FUNCTION_368();
    *(v2 + 4) = v2;
    OUTLINED_FUNCTION_274(&dword_1D4E3F000, v22, v122, "Rejecting flexml analysis updated between %s.");
    v12 = v124;
    OUTLINED_FUNCTION_170_2();
    OUTLINED_FUNCTION_118();
  }

  else
  {

    v25 = OUTLINED_FUNCTION_107_8();
    (v3)(v25);
  }

  *(v1 + 1896) = v3;
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_114_5(v26);
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v27);
    sub_1D4F0029C();
    v13 = v115;
  }

  OUTLINED_FUNCTION_63_13();
  *(v30 + 32) = v29 + 11;
  *(v30 + 40) = v9;
  *(v30 + 104) = 0;
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55();
    v12 = v13[2];
  }

  OUTLINED_FUNCTION_196_1();
  if (v12 >= v3 >> 1)
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
    v13 = v116;
  }

  OUTLINED_FUNCTION_90_14();
  *(v31 + 32) = v9;
  *(v31 + 40) = v0;
  OUTLINED_FUNCTION_8_67(v31);
  OUTLINED_FUNCTION_168_3();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_24_43(v32);
    sub_1D4F0029C();
    v13 = v117;
  }

  OUTLINED_FUNCTION_223_1();
  OUTLINED_FUNCTION_75_14();
  OUTLINED_FUNCTION_158_5(v36);
  OUTLINED_FUNCTION_19_50(v37);
  OUTLINED_FUNCTION_195_2();
  if (v2 > (&qword_1EC7E9980 >> 1))
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
    v13 = v118;
  }

  OUTLINED_FUNCTION_72_18();
  *(v38 + 32) = v1 + 1520;
  *(v38 + 40) = v1 + 1240;
  OUTLINED_FUNCTION_11_70(v38);
  OUTLINED_FUNCTION_167_2();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_22_41(v39);
    sub_1D4F0029C();
    v13 = v119;
  }

  OUTLINED_FUNCTION_42_24();
  sub_1D56160F8();
  OUTLINED_FUNCTION_77_8();
  if (v28)
  {
    OUTLINED_FUNCTION_24_43(v40);
    sub_1D4F0029C();
    v13 = v120;
  }

  OUTLINED_FUNCTION_104_12();
  v41 = *(v1 + 448);
  OUTLINED_FUNCTION_15_57(v42, *(v1 + 400), *(v1 + 416), *(v1 + 432));
  OUTLINED_FUNCTION_260();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_22_41(v43);
    sub_1D4F0029C();
    v13 = v121;
  }

  OUTLINED_FUNCTION_63_13();
  OUTLINED_FUNCTION_99_11(v44);
  OUTLINED_FUNCTION_8_67(v45);
  v46 = aFlexAnalysis[1];
  v47 = v13[3];
  OUTLINED_FUNCTION_310();
  if (v0 > (v47 >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
  }

  v48 = v1 + 568;
  OUTLINED_FUNCTION_56_20();
  OUTLINED_FUNCTION_10_68(v49);
  OUTLINED_FUNCTION_134_6();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_22_41(v50);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_35_34();
  OUTLINED_FUNCTION_12_58(v51);
  OUTLINED_FUNCTION_345(&qword_1EC7E9AE8);
  if (v0 > ((v1 + 512) >> 1))
  {
    OUTLINED_FUNCTION_34_35();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v52 + 32) = v48;
  *(v52 + 40) = v46;
  OUTLINED_FUNCTION_8_67(v52);
  OUTLINED_FUNCTION_213_1();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_22_41(v53);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_35_34();
  OUTLINED_FUNCTION_10_68(v54);
  OUTLINED_FUNCTION_300(&qword_1EC7E99A8);
  OUTLINED_FUNCTION_364();
  if (v0 > (0x80000001D56874E0 >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_47_27();
  OUTLINED_FUNCTION_8_67(v55);
  OUTLINED_FUNCTION_212_2();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_22_41(v56);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_63_13();
  *(v57 + 32) = v59;
  *(v57 + 40) = v58;
  OUTLINED_FUNCTION_11_70(v57);
  OUTLINED_FUNCTION_228_1(&qword_1EC7E99D0);
  OUTLINED_FUNCTION_363();
  if (v0 > ((v1 + 792) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v60 + 32) = v48;
  *(v60 + 40) = v46;
  OUTLINED_FUNCTION_10_68(v60);
  OUTLINED_FUNCTION_216_1();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_22_41(v61);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_63_13();
  *(v62 + 32) = 0x20200A2C30203D20;
  OUTLINED_FUNCTION_232_0();
  *(v63 + 40) = v64;
  OUTLINED_FUNCTION_11_70(v63);
  OUTLINED_FUNCTION_228_1(aIsBackfill);

  if (v1 + 1251 > ((v1 + 904) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v65 + 32) = v48;
  *(v65 + 40) = v46;
  OUTLINED_FUNCTION_8_67(v65);
  OUTLINED_FUNCTION_215_0();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_22_41(v66);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_39_27();
  *(v68 + 32) = v67 - 1;
  *(v68 + 40) = 0x80000001D5687500;
  OUTLINED_FUNCTION_11_70(v68);
  OUTLINED_FUNCTION_300(&qword_1EC7E9AE8);
  OUTLINED_FUNCTION_362();
  if (v1 + 1251 > ((v1 + 1016) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_47_27();
  OUTLINED_FUNCTION_8_67(v69);
  OUTLINED_FUNCTION_217_1();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_20_51(v70);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_11_70(v71);
  sub_1D560BAE8();
  sub_1D560C208();
  v72 = OUTLINED_FUNCTION_143_6();
  v123 = v73;
  v73(v72);
  *(v1 + 1696) = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_194_3(&off_1F50C0338);
  OUTLINED_FUNCTION_172_3();
  OUTLINED_FUNCTION_89_11();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v74);
    sub_1D4F0029C();
  }

  v75 = (v1 + 1296);
  v76 = OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_253(v76);
  __swift_destroy_boxed_opaque_existential_1((v1 + 1672));
  OUTLINED_FUNCTION_84_10();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v77);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_81_17();
  OUTLINED_FUNCTION_76_11();
  OUTLINED_FUNCTION_73_12();
  v78[2].n128_u64[0] = v80;
  v78[2].n128_u64[1] = v79;
  v81 = *(v1 + 1344);
  OUTLINED_FUNCTION_21(v78, *v75, *(v1 + 1312), *(v1 + 1328));
  v83 = qword_1EC7E9AE8;
  v82 = off_1EC7E9AF0;
  OUTLINED_FUNCTION_159_6();
  if (v75 > ((v1 + 1128) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v84 + 32) = v83;
  *(v84 + 40) = v82;
  OUTLINED_FUNCTION_8_67(v84);
  OUTLINED_FUNCTION_135_8();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_20_51(v85);
    sub_1D4F0029C();
  }

  v86 = *(v1 + 1848);
  v87 = *(v1 + 1808);
  v88 = *(v1 + 1792);
  OUTLINED_FUNCTION_68_12();
  OUTLINED_FUNCTION_11_70(v89);
  sub_1D560BAC8();
  sub_1D560C208();
  v90 = OUTLINED_FUNCTION_169_1();
  v123(v90);
  *(v1 + 1656) = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_193_1(&off_1F50C0338);
  OUTLINED_FUNCTION_67_21();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v91);
    sub_1D4F0029C();
  }

  v92 = (v1 + 232);
  v93 = OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_254(v93);
  __swift_destroy_boxed_opaque_existential_1((v1 + 1632));
  OUTLINED_FUNCTION_84_10();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v94);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_76_11();
  OUTLINED_FUNCTION_302();
  OUTLINED_FUNCTION_81_17();
  v95[2].n128_u64[0] = v97;
  v95[2].n128_u64[1] = v96;
  v98 = *(v1 + 280);
  OUTLINED_FUNCTION_21(v95, *v92, *(v1 + 248), *(v1 + 264));
  OUTLINED_FUNCTION_159_6();
  if (v92 > ((v1 + 1408) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_47_27();
  OUTLINED_FUNCTION_8_67(v99);
  OUTLINED_FUNCTION_101_5();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_22_41(v100);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_41_29();
  sub_1D56160F8();
  OUTLINED_FUNCTION_112_10();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v101);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_109_12();
  v102 = v87[3].n128_u64[0];
  OUTLINED_FUNCTION_15_57(v103, *v87, v87[1], v87[2]);
  OUTLINED_FUNCTION_203_2();
  if (!(v34 ^ v35 | v33))
  {
    OUTLINED_FUNCTION_24_43(v104);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  OUTLINED_FUNCTION_148_7(v105);
  v106 = *(v1 + 224);
  OUTLINED_FUNCTION_21(v107, *(v1 + 176), *(v1 + 192), *(v1 + 208));
  OUTLINED_FUNCTION_150_7(MEMORY[0x1E69E7CC0], v1 + 1712);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 1904) = v108;
  *v108 = v109;
  OUTLINED_FUNCTION_118_8(v108);
  OUTLINED_FUNCTION_247();

  return sub_1D52EF24C(v110, v111, v112);
}

uint64_t sub_1D51CA774()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 1904);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 1912) = v0;

  sub_1D51D2984(v3 + 1712);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51CA874()
{
  OUTLINED_FUNCTION_100();
  v121 = v3;
  v9 = OUTLINED_FUNCTION_226_1();
  v10(v9);
  if (v0 == v1)
  {
    OUTLINED_FUNCTION_198_3();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_246();

    __asm { BRAA            X1, X16 }
  }

  v13 = OUTLINED_FUNCTION_164_3();
  v14(v13);
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v15 = OUTLINED_FUNCTION_155_5();
  __swift_project_value_buffer(v15, qword_1EDD76A90);
  v16 = OUTLINED_FUNCTION_142_5();
  v6(v16);
  v17 = v4;
  v18 = sub_1D560C738();
  v19 = sub_1D56156B8();
  OUTLINED_FUNCTION_104_5(v19);
  OUTLINED_FUNCTION_210_2();
  if (v20)
  {
    OUTLINED_FUNCTION_142();
    v118 = OUTLINED_FUNCTION_37_0();
    v120 = v118;
    *v4 = 136315138;
    OUTLINED_FUNCTION_33_36();
    sub_1D51D2B88(v21, v22);
    OUTLINED_FUNCTION_263();
    sub_1D56160F8();
    OUTLINED_FUNCTION_261();
    v23 = OUTLINED_FUNCTION_107_8();
    (v5)(v23);
    sub_1D4E6835C(v7, v8, &v120);
    OUTLINED_FUNCTION_368();
    *(v4 + 4) = v4;
    OUTLINED_FUNCTION_274(&dword_1D4E3F000, v24, v2, "Rejecting flexml analysis updated between %s.");
    v17 = v118;
    OUTLINED_FUNCTION_170_2();
    OUTLINED_FUNCTION_118();
  }

  else
  {

    v25 = OUTLINED_FUNCTION_107_8();
    (v5)(v25);
  }

  *(v3 + 1896) = v5;
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_114_5(v26);
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v27);
    sub_1D4F0029C();
    v18 = v117;
  }

  OUTLINED_FUNCTION_321();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_105_10();
  *(v31 + 32) = v29 + 11;
  *(v31 + 40) = v30;
  *(v31 + 104) = 0;
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55();
    v17 = v18[2];
  }

  v32 = v3 + 1520;
  OUTLINED_FUNCTION_196_1();
  if (v17 >= v5 >> 1)
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_90_14();
  *(v33 + 32) = v7;
  *(v33 + 40) = v2;
  OUTLINED_FUNCTION_8_67(v33);
  OUTLINED_FUNCTION_168_3();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_24_43(v34);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_223_1();
  OUTLINED_FUNCTION_75_14();
  OUTLINED_FUNCTION_158_5(v38);
  OUTLINED_FUNCTION_19_50(v39);
  OUTLINED_FUNCTION_195_2();
  if (v4 > (&qword_1EC7E9980 >> 1))
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_72_18();
  *(v40 + 32) = v32;
  *(v40 + 40) = v3 + 1240;
  OUTLINED_FUNCTION_11_70(v40);
  OUTLINED_FUNCTION_167_2();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v41);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_42_24();
  sub_1D56160F8();
  OUTLINED_FUNCTION_77_8();
  if (v28)
  {
    OUTLINED_FUNCTION_24_43(v42);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_104_12();
  v43 = *(v3 + 448);
  OUTLINED_FUNCTION_15_57(v44, *(v3 + 400), *(v3 + 416), *(v3 + 432));
  OUTLINED_FUNCTION_260();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v45);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_63_13();
  OUTLINED_FUNCTION_99_11(v46);
  OUTLINED_FUNCTION_10_68(v47);
  OUTLINED_FUNCTION_275(aFlexAnalysis);
  OUTLINED_FUNCTION_310();
  if (v2 > ((v3 + 456) >> 1))
  {
    OUTLINED_FUNCTION_34_35();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_56_20();
  OUTLINED_FUNCTION_11_70(v48);
  OUTLINED_FUNCTION_134_6();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v49);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_35_34();
  OUTLINED_FUNCTION_12_58(v50);
  OUTLINED_FUNCTION_346(&qword_1EC7E9AE8);
  if (v2 > (v32 >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v51 + 32) = v3 + 568;
  *(v51 + 40) = v4;
  OUTLINED_FUNCTION_10_68(v51);
  OUTLINED_FUNCTION_213_1();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v52);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_35_34();
  OUTLINED_FUNCTION_8_67(v53);
  OUTLINED_FUNCTION_332(&qword_1EC7E99A8);
  OUTLINED_FUNCTION_364();
  if (v2 > ((v3 + 680) >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v54 + 32) = 0x80000001D56874E0;
  *(v54 + 40) = v4;
  OUTLINED_FUNCTION_10_68(v54);
  OUTLINED_FUNCTION_212_2();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v55);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_63_13();
  *(v56 + 32) = 0x20200A2C30203D20;
  *(v56 + 40) = v57;
  OUTLINED_FUNCTION_8_67(v56);
  OUTLINED_FUNCTION_332(&qword_1EC7E99D0);
  OUTLINED_FUNCTION_363();
  if (v2 > ((v3 + 792) >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v58 + 32) = 0x80000001D56874E0;
  *(v58 + 40) = v4;
  OUTLINED_FUNCTION_12_58(v58);
  OUTLINED_FUNCTION_216_1();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v59);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_63_13();
  OUTLINED_FUNCTION_232_0();
  *(v60 + 32) = 0x20200A2C30203D20;
  *(v60 + 40) = v61;
  OUTLINED_FUNCTION_8_67(v60);
  OUTLINED_FUNCTION_358(aIsBackfill);
  if (v2 > (0x80000001D56874E0 >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_56_20();
  OUTLINED_FUNCTION_12_58(v62);
  OUTLINED_FUNCTION_215_0();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v63);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_105_10();
  OUTLINED_FUNCTION_321();
  *(v66 + 32) = v64 - 1;
  *(v66 + 40) = v65;
  v67 = OUTLINED_FUNCTION_133_4();
  *(v68 + 96) = *(v3 + 1064);
  OUTLINED_FUNCTION_86_14(v67, v69, v70);
  OUTLINED_FUNCTION_275(&qword_1EC7E9AE8);
  OUTLINED_FUNCTION_362();
  if (v2 > ((v3 + 1016) >> 1))
  {
    OUTLINED_FUNCTION_34_35();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_56_20();
  OUTLINED_FUNCTION_11_70(v71);
  OUTLINED_FUNCTION_217_1();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_20_51(v72);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_12_58(v73);
  sub_1D560BAE8();
  sub_1D560C208();
  v74 = OUTLINED_FUNCTION_143_6();
  v119 = v75;
  v75(v74);
  *(v3 + 1696) = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_194_3(&off_1F50C0338);
  OUTLINED_FUNCTION_172_3();
  OUTLINED_FUNCTION_89_11();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v76);
    sub_1D4F0029C();
  }

  v77 = (v3 + 1296);
  v78 = OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_253(v78);
  __swift_destroy_boxed_opaque_existential_1((v3 + 1672));
  OUTLINED_FUNCTION_84_10();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v79);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_81_17();
  OUTLINED_FUNCTION_76_11();
  OUTLINED_FUNCTION_73_12();
  v80[2].n128_u64[0] = v82;
  v80[2].n128_u64[1] = v81;
  v83 = *(v3 + 1344);
  OUTLINED_FUNCTION_21(v80, *v77, *(v3 + 1312), *(v3 + 1328));
  v85 = qword_1EC7E9AE8;
  v84 = off_1EC7E9AF0;
  OUTLINED_FUNCTION_159_6();
  if (v77 > ((v3 + 1072) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v86 + 32) = v85;
  *(v86 + 40) = v84;
  OUTLINED_FUNCTION_8_67(v86);
  OUTLINED_FUNCTION_135_8();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_20_51(v87);
    sub_1D4F0029C();
  }

  v88 = *(v3 + 1848);
  v89 = *(v3 + 1808);
  v90 = *(v3 + 1792);
  OUTLINED_FUNCTION_68_12();
  OUTLINED_FUNCTION_11_70(v91);
  sub_1D560BAC8();
  sub_1D560C208();
  v92 = OUTLINED_FUNCTION_169_1();
  v119(v92);
  *(v3 + 1656) = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_193_1(&off_1F50C0338);
  OUTLINED_FUNCTION_67_21();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v93);
    sub_1D4F0029C();
  }

  v94 = (v3 + 232);
  v95 = OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_254(v95);
  __swift_destroy_boxed_opaque_existential_1((v3 + 1632));
  OUTLINED_FUNCTION_84_10();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v96);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_76_11();
  OUTLINED_FUNCTION_302();
  OUTLINED_FUNCTION_81_17();
  v97[2].n128_u64[0] = v99;
  v97[2].n128_u64[1] = v98;
  v100 = *(v3 + 280);
  OUTLINED_FUNCTION_21(v97, *v94, *(v3 + 248), *(v3 + 264));
  OUTLINED_FUNCTION_159_6();
  if (v94 > ((v3 + 1408) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_47_27();
  OUTLINED_FUNCTION_8_67(v101);
  OUTLINED_FUNCTION_101_5();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v102);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_41_29();
  sub_1D56160F8();
  OUTLINED_FUNCTION_112_10();
  if (v28)
  {
    OUTLINED_FUNCTION_22_41(v103);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_109_12();
  v104 = v89[3].n128_u64[0];
  OUTLINED_FUNCTION_15_57(v105, *v89, v89[1], v89[2]);
  OUTLINED_FUNCTION_203_2();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_24_43(v106);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  OUTLINED_FUNCTION_148_7(v107);
  v108 = *(v3 + 224);
  OUTLINED_FUNCTION_21(v109, *(v3 + 176), *(v3 + 192), *(v3 + 208));
  OUTLINED_FUNCTION_150_7(MEMORY[0x1E69E7CC0], v3 + 1712);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v3 + 1904) = v110;
  *v110 = v111;
  OUTLINED_FUNCTION_118_8(v110);
  OUTLINED_FUNCTION_246();

  return sub_1D52EF24C(v112, v113, v114);
}