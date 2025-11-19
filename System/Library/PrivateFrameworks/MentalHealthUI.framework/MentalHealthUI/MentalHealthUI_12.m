uint64_t sub_258AE1D50(uint64_t result, int a2, int a3)
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

char *sub_258AE1DCC()
{
  v15 = MEMORY[0x277D84F90];
  v1 = *(v0 + 56);
  v2 = sub_258B003E4();
  sub_2589FCBA4(v2);
  v3 = *(*(v0 + 8) + 16);
  v4 = sub_258A90FF4();
  v5 = v15;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_258A757CC(0, *(v15 + 2) + 1, 1, v15);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_258A757CC((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  v8 = sub_258B003E4();
  v9 = sub_258AEA60C(v8);

  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = sub_258AE563C(*(v9 + 16), 0, &qword_27F970058, MEMORY[0x277D83B88], MEMORY[0x277D84560], sub_258AEACD0);
  v12 = sub_258AE9A2C(&v14, v11 + 4, v10, v9);
  sub_258A8CFE8();
  if (v12 != v10)
  {
    __break(1u);
LABEL_8:

    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11;

  sub_258AE83C8(&v14);

  return v14;
}

uint64_t sub_258AE1F84()
{
  sub_258A155A0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_258AE21C4();
  v4 = v3;
  v6 = v5 & 1;
  sub_2589FC8C8(&unk_2869D5B18);
  v7 = MEMORY[0x277D837D0];
  sub_258AEACD0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_258AEA1C8(&qword_280DF8940, &qword_280DF8948, v7);
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v2, v4, v6);

  sub_258AE9D78(0);
  sub_258AEAF44(&qword_27F971718, sub_258AE9D78);
  sub_258A5B2D4();
  return sub_258B02434();
}

uint64_t sub_258AE21C4()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 24);
  if (sub_258A8FBE0() & 1) != 0 || (v3 = *(v1 + 16), (sub_258A8FBE0()))
  {
    if (sub_258A8FBE0())
    {
      v4 = *(v1 + 16);
      sub_258A8FBE0();
    }
  }

  sub_258B01084();
  type metadata accessor for MentalHealthUIRepresentative();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  return sub_258B01B24();
}

uint64_t sub_258AE2340@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  sub_258AE9EFC(0);
  v124 = *(v3 - 8);
  v125 = v3;
  v4 = *(v124 + 64);
  MEMORY[0x28223BE20](v3);
  v117 = v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A5B270();
  v110 = v6;
  v109 = *(v6 - 8);
  v7 = *(v109 + 64);
  MEMORY[0x28223BE20](v6);
  v108 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AEA298();
  v116 = v9;
  v115 = *(v9 - 8);
  v10 = *(v115 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v114 = v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v113 = v95 - v13;
  sub_258AEA02C(0);
  v102 = v14;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v103 = v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AE9FA0(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v111 = v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v121 = v95 - v21;
  sub_258AEAE4C(0, &qword_27F9716B8, sub_258AE9EFC, MEMORY[0x277D83D88]);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v123 = v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v127 = v95 - v26;
  sub_258A5B1E4();
  v28 = v27;
  v29 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v105 = v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = v95 - v32;
  sub_258AE9E4C(0);
  v107 = v34;
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v122 = v95 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v106 = v95 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = v95 - v40;
  v42 = *a1;
  v43 = a1[1];
  v44 = type metadata accessor for AssessmentsSettingsModel();
  v45 = sub_258AEAF44(&qword_27F96EDD0, type metadata accessor for AssessmentsSettingsModel);
  v99 = v42;
  v97 = v44;
  sub_258B00A34();
  swift_getKeyPath();
  v98 = v45;
  sub_258B00A44();

  v112 = a1;
  v128 = a1;
  sub_258A155A0();
  v47 = v46;
  v48 = sub_258A5B2D4();
  v101 = v47;
  v100 = v48;
  sub_258B022A4();
  v118 = *(v43 + 16);
  LOBYTE(v42) = sub_258A8FBE0();
  KeyPath = swift_getKeyPath();
  v50 = swift_allocObject();
  v51 = 1;
  *(v50 + 16) = (v42 & 1) == 0;
  v52 = &v33[*(v28 + 36)];
  *v52 = KeyPath;
  v52[1] = sub_2589E1658;
  v52[2] = v50;
  *&v129 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5B68);
  v53 = MEMORY[0x277D837D0];
  sub_258AEACD0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v55 = v54;
  v56 = sub_258AEA1C8(&qword_280DF8940, &qword_280DF8948, v53);
  v120 = v55;
  v119 = v56;
  sub_258B02A34();

  swift_arrayDestroy();
  v57 = sub_258A5B384();
  v104 = v28;
  sub_258B01DD4();

  sub_258AEA49C(v33, sub_258A5B1E4);
  if (AssessmentsSettingsModel.isPeriodicPromptsSettingOn.getter())
  {
    v95[1] = v57;
    if (qword_27F96C240 != -1)
    {
      swift_once();
    }

    v96 = v41;
    v133 = sub_258AFFD94();
    v134 = v58;
    sub_258B00A34();
    swift_getKeyPath();
    sub_258B00A44();

    v131 = v129;
    v132 = v130;
    MEMORY[0x28223BE20](v59);
    v60 = v112;
    sub_258AEA0E0();
    sub_258AEA220();
    sub_2589BFF58();
    v61 = v103;
    sub_258B02244();
    v62 = sub_258A8FBE0();
    v63 = swift_getKeyPath();
    v64 = swift_allocObject();
    v65 = 1;
    *(v64 + 16) = (v62 & 1) == 0;
    v66 = (v61 + *(v102 + 36));
    *v66 = v63;
    v66[1] = sub_258A5BC78;
    v66[2] = v64;
    *&v129 = &unk_2869D4670;
    sub_2589FC8C8(&unk_2869D5BB8);
    sub_258B02A34();

    swift_arrayDestroy();
    sub_258AEA3DC();
    sub_258B01DD4();

    sub_258AEA49C(v61, sub_258AEA02C);
    v68 = *(v60 + 16);
    v67 = *(v60 + 24);
    type metadata accessor for NotificationSettingsModel();
    sub_258AEAF44(&qword_27F96D308, type metadata accessor for NotificationSettingsModel);
    v69 = sub_258B00A34();
    swift_getKeyPath();
    sub_258B00A44();

    MEMORY[0x28223BE20](v129);
    v70 = v108;
    sub_258B022A4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    if ((v129 & 1) == 0)
    {
      v65 = sub_258A8FBE0() ^ 1;
    }

    v71 = swift_getKeyPath();
    v72 = swift_allocObject();
    *(v72 + 16) = v65 & 1;
    v73 = v105;
    (*(v109 + 32))(v105, v70, v110);
    v74 = (v73 + *(v104 + 36));
    *v74 = v71;
    v74[1] = sub_258A5BC78;
    v74[2] = v72;
    *&v129 = &unk_2869D4670;
    sub_2589FC8C8(&unk_2869D5C08);
    sub_258B02A34();

    swift_arrayDestroy();
    v75 = v106;
    sub_258B01DD4();

    sub_258AEA49C(v73, sub_258A5B1E4);
    v76 = swift_allocObject();
    v77 = *(v60 + 16);
    v76[1] = *v60;
    v76[2] = v77;
    v78 = *(v60 + 48);
    v76[3] = *(v60 + 32);
    v76[4] = v78;
    sub_258A36CE4(v60, &v129);
    sub_258AEA31C();
    v79 = v113;
    sub_258B01C34();

    sub_258AEA49C(v75, sub_258AE9E4C);
    v80 = v121;
    v81 = v111;
    sub_258AE9D08(v121, v111, sub_258AE9FA0);
    v82 = v115;
    v83 = *(v115 + 16);
    v84 = v114;
    v85 = v116;
    v83(v114, v79, v116);
    v86 = v117;
    sub_258AE9D08(v81, v117, sub_258AE9FA0);
    sub_258AE9F30();
    v83((v86 + *(v87 + 48)), v84, v85);
    v88 = *(v82 + 8);
    v88(v79, v85);
    sub_258AEA49C(v80, sub_258AE9FA0);
    v88(v84, v85);
    sub_258AEA49C(v81, sub_258AE9FA0);
    sub_2589B8658(v86, v127);
    v51 = 0;
    v41 = v96;
  }

  v89 = v127;
  (*(v124 + 56))(v127, v51, 1, v125);
  v90 = v122;
  sub_258AE9D08(v41, v122, sub_258AE9E4C);
  v91 = v123;
  sub_2589B851C(v89, v123);
  v92 = v126;
  sub_258AE9D08(v90, v126, sub_258AE9E4C);
  sub_258AE9DAC();
  sub_2589B851C(v91, v92 + *(v93 + 48));
  sub_2589B85B0(v89);
  sub_258AEA49C(v41, sub_258AE9E4C);
  sub_2589B85B0(v91);
  return sub_258AEA49C(v90, sub_258AE9E4C);
}

uint64_t sub_258AE3208(uint64_t a1)
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  sub_258AFFD94();
  sub_2589BFF58();
  v2 = sub_258B01B44();
  v4 = v3;
  v6 = v5;
  v7 = *(*(a1 + 8) + 16);
  if (sub_258A8FBE0())
  {
    sub_258B014A4();
  }

  else
  {
    sub_258B014B4();
  }

  v8 = sub_258B01AB4();
  v10 = v9;
  v12 = v11;
  sub_2589BFFAC(v2, v4, v6 & 1);

  sub_2589FC8C8(&unk_2869D5C58);
  v13 = MEMORY[0x277D837D0];
  sub_258AEACD0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_258AEA1C8(&qword_280DF8940, &qword_280DF8948, v13);
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v8, v10, v12 & 1);
}

uint64_t sub_258AE3474(_OWORD *a1)
{
  v8 = sub_258AE1DCC();
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v4 = a1[3];
  v2[3] = a1[2];
  v2[4] = v4;
  sub_258A36CE4(a1, v7);
  v5 = MEMORY[0x277D83B88];
  sub_258AEACD0(0, &qword_27F9716F0, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
  sub_258A155A0();
  sub_258AEA1C8(&qword_27F9716F8, &qword_27F9716F0, v5);
  sub_258A5B2D4();
  return sub_258B023B4();
}

uint64_t sub_258AE35BC(uint64_t *a1)
{
  sub_258AEA680(*a1);
  sub_2589BFF58();
  v1 = MEMORY[0x277D837D0];
  v2 = sub_258B01B44();
  v4 = v3;
  v6 = v5;
  sub_258AEACD0(0, &qword_280DF88F0, v1, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B326A0;
  *(inited + 32) = 0xD000000000000020;
  *(inited + 40) = 0x8000000258B39A10;
  *(inited + 48) = sub_258B03414();
  *(inited + 56) = v8;
  *(inited + 64) = 1937334596;
  *(inited + 72) = 0xE400000000000000;
  v9 = sub_258B003E4();
  sub_2589FC8C8(v9);
  sub_258AEACD0(0, &qword_280DF8948, v1, MEMORY[0x277D83940]);
  sub_258AEA1C8(&qword_280DF8940, &qword_280DF8948, v1);
  sub_258B02A34();

  swift_setDeallocating();
  v10 = *(inited + 16);
  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v2, v4, v6 & 1);
}

uint64_t sub_258AE37E8(uint64_t a1)
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  sub_258AFFD94();
  sub_2589BFF58();
  v2 = sub_258B01B44();
  v4 = v3;
  v6 = v5;
  v7 = *(*(a1 + 8) + 16);
  if (sub_258A8FBE0())
  {
    sub_258B014A4();
  }

  else
  {
    sub_258B014B4();
  }

  v8 = sub_258B01AB4();
  v10 = v9;
  v12 = v11;
  sub_2589BFFAC(v2, v4, v6 & 1);

  sub_2589FC8C8(&unk_2869D5CA8);
  v13 = MEMORY[0x277D837D0];
  sub_258AEACD0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_258AEA1C8(&qword_280DF8940, &qword_280DF8948, v13);
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v8, v10, v12 & 1);
}

uint64_t sub_258AE3A54(uint64_t a1)
{
  sub_258AEAE4C(0, &qword_280DF8930, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14[-v4];
  v6 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if (v15 == 1)
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    v14[15] = 1;
    sub_258AEACD0(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    return sub_258B02314();
  }

  else
  {
    v8 = sub_258B02D44();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    sub_258B02D24();
    sub_258A36CE4(a1, &v15);
    v9 = sub_258B02D14();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    *(v10 + 16) = v9;
    *(v10 + 24) = v11;
    v12 = *(a1 + 16);
    *(v10 + 32) = *a1;
    *(v10 + 48) = v12;
    v13 = *(a1 + 48);
    *(v10 + 64) = *(a1 + 32);
    *(v10 + 80) = v13;
    sub_258A8F090(0, 0, v5, &unk_258B34F48, v10);
  }
}

uint64_t sub_258AE3C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_258B00084();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_258B02D24();
  v4[6] = sub_258B02D14();
  v9 = sub_258B02CE4();
  v4[7] = v9;
  v4[8] = v8;

  return MEMORY[0x2822009F8](sub_258AE3D58, v9, v8);
}

uint64_t sub_258AE3D58()
{
  v1 = v0[5];
  v2 = *(v0[2] + 8);
  sub_258B00044();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_258A92678;
  v4 = v0[5];

  return AssessmentsSettingsModel.resetPeriodicPromptsTimer(acknowledgmentDate:)(v4);
}

uint64_t sub_258AE3E00()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_258AE1F84();
}

uint64_t sub_258AE3E58(uint64_t a1, uint64_t a2)
{
  sub_258A155A0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_258AE4078(a1, a2);
  v8 = v7;
  v10 = v9 & 1;
  sub_2589FC8C8(&unk_2869D5CF8);
  v11 = MEMORY[0x277D837D0];
  sub_258AEACD0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_258AEA1C8(&qword_280DF8940, &qword_280DF8948, v11);
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v6, v8, v10);

  sub_258AE9E4C(0);
  sub_258AEA31C();
  sub_258A5B2D4();
  return sub_258B02434();
}

uint64_t sub_258AE4078(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if ((sub_258A8FBE0() & 1) != 0 || (v4 = *(a2 + 16), (sub_258A8FBE0())) && (sub_258A8FBE0())
  {
    v5 = *(a2 + 16);
    sub_258A8FBE0();
    sub_258B01084();
    type metadata accessor for MentalHealthUIRepresentative();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    sub_258B01084();
    type metadata accessor for MentalHealthUIRepresentative();
    v8 = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
  }

  v9 = v7;
  return sub_258B01B24();
}

uint64_t sub_258AE41F0(uint64_t a1, uint64_t a2)
{
  sub_258A5B1E4();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for AssessmentsSettingsModel();
  sub_258AEAF44(&qword_27F96EDD0, type metadata accessor for AssessmentsSettingsModel);
  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  v16 = a1;
  v17 = a2;
  sub_258A155A0();
  sub_258A5B2D4();
  sub_258B022A4();
  v9 = *(a2 + 24);
  LOBYTE(v9) = sub_258A8FBE0();
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = (v9 & 1) == 0;
  v12 = &v8[*(v5 + 36)];
  *v12 = KeyPath;
  v12[1] = sub_258A5BC78;
  v12[2] = v11;
  v18 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5D48);
  v13 = MEMORY[0x277D837D0];
  sub_258AEACD0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_258AEA1C8(&qword_280DF8940, &qword_280DF8948, v13);
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258A5B384();
  sub_258B01DD4();

  return sub_258AEA49C(v8, sub_258A5B1E4);
}

uint64_t sub_258AE44C0(uint64_t a1, uint64_t a2)
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  sub_258AFFD94();
  sub_2589BFF58();
  v3 = sub_258B01B44();
  v5 = v4;
  v7 = v6;
  v8 = *(a2 + 24);
  if (sub_258A8FBE0())
  {
    sub_258B014A4();
  }

  else
  {
    sub_258B014B4();
  }

  v9 = sub_258B01AB4();
  v11 = v10;
  v13 = v12;
  sub_2589BFFAC(v3, v5, v7 & 1);

  sub_2589FC8C8(&unk_2869D5D88);
  v14 = MEMORY[0x277D837D0];
  sub_258AEACD0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_258AEA1C8(&qword_280DF8940, &qword_280DF8948, v14);
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v9, v11, v13 & 1);
}

uint64_t sub_258AE4730@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B013D4();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AE5208();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AE534C();
  v39 = *(v14 - 8);
  v40 = v14;
  v15 = *(v39 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AE5420();
  v19 = *(v18 - 8);
  v41 = v18;
  v42 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v38 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v1 + 8);
  v23 = *(v22 + 16);
  v24 = sub_258A8F9D8();
  if (v24 & 1) != 0 || (v25 = *(v22 + 24), v24 = sub_258A8F9D8(), (v24))
  {
    v36 = a1;
    MEMORY[0x28223BE20](v24);
    *(&v35 - 2) = v2;
    sub_258AE52B8(0);
    sub_258AEAF44(&qword_27F971678, sub_258AE52B8);
    sub_258B01A74();
    sub_258B013C4();
    v26 = sub_258AEAF44(&qword_27F971688, sub_258AE5208);
    sub_258B01F24();
    (*(v37 + 8))(v7, v4);
    (*(v10 + 8))(v13, v9);
    v47 = *(v2 + 32);
    sub_258AEACD0(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    v27 = sub_258B02144();
    MEMORY[0x28223BE20](v27);
    *(&v35 - 2) = v2;
    v43 = v9;
    v44 = v4;
    v45 = v26;
    v46 = MEMORY[0x277CDE0D0];
    swift_getOpaqueTypeConformance2();
    v28 = v38;
    v29 = v40;
    sub_258B01E64();

    (*(v39 + 8))(v17, v29);
    v30 = v41;
    v31 = v36;
    (*(v42 + 32))(v36, v28, v41);
    return (*(v42 + 56))(v31, 0, 1, v30);
  }

  else
  {
    v33 = v41;
    v34 = *(v42 + 56);

    return v34(a1, 1, 1, v33);
  }
}

uint64_t sub_258AE4C4C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v19 = a1[1];
  v20 = v3;
  v22 = a1[2];

  sub_258AE9D08(&v20, &v26, sub_258AE9C74);
  sub_258AE9D08(&v19, &v26, sub_2589DEB08);
  sub_258AEACD0(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v4 = v26;
  v5 = v27;
  v18 = v28;
  type metadata accessor for AssessmentsSettingsModel();
  sub_258AEAF44(&qword_27F96EDD0, type metadata accessor for AssessmentsSettingsModel);
  v6 = sub_258B00A24();
  v8 = v7;
  type metadata accessor for NotificationSettingsModel();
  sub_258AEAF44(&qword_27F96D308, type metadata accessor for NotificationSettingsModel);
  v9 = sub_258B00A24();
  v11 = v10;
  v12 = sub_258B00A24();
  *&v22 = v6;
  *(&v22 + 1) = v8;
  *&v23 = v9;
  *(&v23 + 1) = v11;
  *&v24 = v4;
  *(&v24 + 1) = v5;
  *(&v25 + 1) = *v21;
  DWORD1(v25) = *&v21[3];
  LOBYTE(v25) = v18;
  *(&v25 + 1) = &unk_2869D5DC8;
  v13 = v22;
  v14 = v23;
  v15 = v25;
  *(a2 + 32) = v24;
  *(a2 + 48) = v15;
  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 64) = v12;
  *(a2 + 72) = v16;
  sub_258A36CE4(&v22, &v26);
  v26 = v6;
  v27 = v8;
  v28 = v9;
  v29 = v11;
  v30 = v4;
  v31 = v5;
  v32 = v18;
  *v33 = *v21;
  *&v33[3] = *&v21[3];
  v34 = &unk_2869D5DC8;
  return sub_258A36D40(&v26);
}

uint64_t sub_258AE4E78@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_258B01F64();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v41 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = v35 - v5;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v6 = sub_258AFFD94();
  v8 = v7;
  v9 = sub_258AFFD94();
  v11 = v10;
  v12 = sub_258AFFD94();
  v14 = v13;
  v15 = sub_258AFFD94();
  v17 = v16;
  v43 = v6;
  v44 = v8;
  sub_2589BFF58();
  v18 = sub_258B01B44();
  v38 = v19;
  v39 = v18;
  v36 = v20;
  v37 = v21;
  v43 = v9;
  v44 = v11;
  v22 = sub_258B01B44();
  v35[2] = v23;
  v35[3] = v22;
  v35[0] = v24 & 1;
  v35[1] = v25;
  v43 = v12;
  v44 = v14;
  v26 = sub_258B01B44();
  v28 = v27;
  LOBYTE(v9) = v29;
  sub_258B01F54();
  sub_2589BFFAC(v26, v28, v9 & 1);

  v43 = v15;
  v44 = v17;
  v30 = sub_258B01B44();
  v32 = v31;
  LOBYTE(v17) = v33;
  sub_258B01F44();
  sub_2589BFFAC(v30, v32, v17 & 1);

  return sub_258B01F34();
}

uint64_t sub_258AE51CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_258AE4730(a1);
}

void sub_258AE5208()
{
  if (!qword_27F971660)
  {
    sub_258AE52B8(255);
    sub_258AEAF44(&qword_27F971678, sub_258AE52B8);
    v0 = sub_258B01A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971660);
    }
  }
}

void sub_258AE52EC()
{
  if (!qword_27F971670)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F971670);
    }
  }
}

void sub_258AE534C()
{
  if (!qword_27F971680)
  {
    sub_258AE5208();
    sub_258B013D4();
    sub_258AEAF44(&qword_27F971688, sub_258AE5208);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F971680);
    }
  }
}

void sub_258AE5420()
{
  if (!qword_27F971690)
  {
    sub_258AE534C();
    sub_258AE5208();
    sub_258B013D4();
    sub_258AEAF44(&qword_27F971688, sub_258AE5208);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F971690);
    }
  }
}

void *sub_258AE5550(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_258AEACD0(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_258AE563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  a6(0, a3, a4, a5);
  v8 = swift_allocObject();
  v9 = _swift_stdlib_malloc_size(v8);
  result = v8;
  v12 = v9 - 32;
  v11 = v9 < 32;
  v13 = v9 - 25;
  if (!v11)
  {
    v13 = v12;
  }

  v8[2] = a1;
  v8[3] = 2 * (v13 >> 3);
  return result;
}

uint64_t sub_258AE56C4(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_258B03514();
  sub_2589C6E40(a2);
  sub_258B02B74();

  v6 = sub_258B03554();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v36 = ~v7;
    v9 = 0xEA0000000000676ELL;
    while (1)
    {
      v10 = *(*(v4 + 48) + v8);
      if (v10 > 4)
      {
        if (*(*(v4 + 48) + v8) <= 6u)
        {
          if (v10 == 5)
          {
            v17 = 0x746169636F737341;
            v18 = 0xEC000000736E6F69;
          }

          else
          {
            v17 = 0x616D7269666E6F43;
            v18 = 0xEC0000006E6F6974;
          }
        }

        else if (v10 == 7)
        {
          v17 = 0x6F4C207972746E45;
          v18 = 0xEC00000064656767;
        }

        else if (v10 == 8)
        {
          v18 = 0xEC00000064656C69;
          v17 = 0x6146207972746E45;
        }

        else
        {
          v17 = 0xD000000000000010;
          v18 = 0x8000000258B35BC0;
        }
      }

      else
      {
        v11 = 0xD000000000000013;
        if (v10 == 3)
        {
          v12 = 0xD000000000000010;
        }

        else
        {
          v12 = 0x736C6562614CLL;
        }

        if (v10 == 3)
        {
          v13 = 0x8000000258B35B70;
        }

        else
        {
          v13 = 0xE600000000000000;
        }

        if (v10 == 2)
        {
          v14 = 0x8000000258B35B50;
        }

        else
        {
          v11 = v12;
          v14 = v13;
        }

        v15 = 0xD000000000000017;
        if (*(*(v4 + 48) + v8))
        {
          v15 = 0x696472616F626E4FLL;
          v16 = 0xEA0000000000676ELL;
        }

        else
        {
          v16 = 0x8000000258B35B20;
        }

        if (*(*(v4 + 48) + v8) <= 1u)
        {
          v17 = v15;
        }

        else
        {
          v17 = v11;
        }

        if (*(*(v4 + 48) + v8) <= 1u)
        {
          v18 = v16;
        }

        else
        {
          v18 = v14;
        }
      }

      v19 = 0xEC00000064656C69;
      v20 = 0x6146207972746E45;
      if (a2 != 8)
      {
        v20 = 0xD000000000000010;
        v19 = 0x8000000258B35BC0;
      }

      if (a2 == 7)
      {
        v20 = 0x6F4C207972746E45;
        v19 = 0xEC00000064656767;
      }

      v21 = 0x746169636F737341;
      if (a2 != 5)
      {
        v21 = 0x616D7269666E6F43;
      }

      v22 = 0xEC000000736E6F69;
      if (a2 != 5)
      {
        v22 = 0xEC0000006E6F6974;
      }

      if (a2 <= 6u)
      {
        v20 = v21;
        v19 = v22;
      }

      v23 = 0xD000000000000013;
      if (a2 == 3)
      {
        v24 = 0xD000000000000010;
      }

      else
      {
        v24 = 0x736C6562614CLL;
      }

      if (a2 == 3)
      {
        v25 = 0x8000000258B35B70;
      }

      else
      {
        v25 = 0xE600000000000000;
      }

      if (a2 == 2)
      {
        v26 = 0x8000000258B35B50;
      }

      else
      {
        v23 = v24;
        v26 = v25;
      }

      v27 = 0xD000000000000017;
      if (a2)
      {
        v27 = 0x696472616F626E4FLL;
      }

      else
      {
        v9 = 0x8000000258B35B20;
      }

      if (a2 <= 1u)
      {
        v23 = v27;
        v26 = v9;
      }

      v28 = a2 <= 4u ? v23 : v20;
      v29 = a2 <= 4u ? v26 : v19;
      if (v17 == v28 && v18 == v29)
      {
        break;
      }

      v30 = sub_258B03454();

      if (v30)
      {
        goto LABEL_68;
      }

      v8 = (v8 + 1) & v36;
      v9 = 0xEA0000000000676ELL;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

LABEL_68:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_66:
    v31 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v34;
    sub_258AE6AE8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v34 = v37;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_258AE5AB0(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_258B03514();
  MEMORY[0x259C93B20](a2);
  v7 = sub_258B03554();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_258AE6F44(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_258AE5BA8(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_258B03504();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_258AE70A0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_258AE5C88(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_258B03514();
  sub_258B02B74();

  v6 = sub_258B03554();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  v25 = v4 + 56;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v24 = ~v7;
    v9 = 0xE900000000000073;
    v10 = 0xD000000000000010;
    v26 = v4;
    while (1)
    {
      v11 = *(*(v4 + 48) + v8);
      if (v11 <= 1)
      {
        if (*(*(v4 + 48) + v8))
        {
          v12 = 0x6574614720656741;
        }

        else
        {
          v12 = 0xD000000000000010;
        }

        if (*(*(v4 + 48) + v8))
        {
          v13 = 0xEF6F72746E492064;
        }

        else
        {
          v13 = 0x8000000258B35DF0;
        }
      }

      else if (v11 == 2)
      {
        v13 = 0xE500000000000000;
        v12 = 0x6F72746E49;
      }

      else
      {
        if (v11 == 3)
        {
          v12 = 0x6E6F697473657551;
        }

        else
        {
          v12 = 0x746C75736552;
        }

        if (v11 == 3)
        {
          v13 = 0xE900000000000073;
        }

        else
        {
          v13 = 0xE600000000000000;
        }
      }

      if (a2 == 3)
      {
        v14 = 0x6E6F697473657551;
      }

      else
      {
        v14 = 0x746C75736552;
      }

      if (a2 != 3)
      {
        v9 = 0xE600000000000000;
      }

      if (a2 == 2)
      {
        v14 = 0x6F72746E49;
        v9 = 0xE500000000000000;
      }

      if (a2)
      {
        v10 = 0x6574614720656741;
        v15 = 0xEF6F72746E492064;
      }

      else
      {
        v15 = 0x8000000258B35DF0;
      }

      v16 = a2 <= 1u ? v10 : v14;
      v17 = a2 <= 1u ? v15 : v9;
      if (v12 == v16 && v13 == v17)
      {
        break;
      }

      v18 = sub_258B03454();

      if (v18)
      {
        goto LABEL_40;
      }

      v8 = (v8 + 1) & v24;
      v4 = v26;
      v9 = 0xE900000000000073;
      v10 = 0xD000000000000010;
      if (((*(v25 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    result = 0;
    LOBYTE(a2) = *(*(v26 + 48) + v8);
  }

  else
  {
LABEL_38:
    v19 = *v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v22;
    sub_258AE71C0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v22 = v27;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_258AE5F6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_258AEA9C0(0, &qword_27F971768, sub_258AEAA20);
  result = sub_258B03174();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_258B03514();
      sub_258B02B74();

      result = sub_258B03554();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_258AE6358(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_258AEAEB0();
  result = sub_258B03174();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_258B03514();
      MEMORY[0x259C93B20](v18);
      result = sub_258B03554();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_258AE659C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_258AEA918(0, &qword_27F971730, MEMORY[0x277D83B98], MEMORY[0x277D84098]);
  result = sub_258B03174();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_258B03504();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_258AE67D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_258AEA9C0(0, &qword_27F971738, sub_258AEA96C);
  result = sub_258B03174();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_258B03514();
      sub_258B02B74();

      result = sub_258B03554();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_258AE6AE8(uint64_t result, unint64_t a2, char a3)
{
  v40 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_74;
  }

  if (a3)
  {
    sub_258AE5F6C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_258AE77D0(&qword_27F971768, sub_258AEAA20);
      goto LABEL_74;
    }

    sub_258AE7910(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_258B03514();
  sub_2589C6E40(v40);
  sub_258B02B74();

  result = sub_258B03554();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v39 = ~v9;
    v10 = 0xEA0000000000676ELL;
    v11 = 0x696472616F626E4FLL;
    do
    {
      v12 = *(*(v7 + 48) + a2);
      if (v12 > 4)
      {
        if (*(*(v7 + 48) + a2) <= 6u)
        {
          if (v12 == 5)
          {
            v18 = 0x746169636F737341;
            v19 = 0xEC000000736E6F69;
          }

          else
          {
            v18 = 0x616D7269666E6F43;
            v19 = 0xEC0000006E6F6974;
          }
        }

        else if (v12 == 7)
        {
          v18 = 0x6F4C207972746E45;
          v19 = 0xEC00000064656767;
        }

        else if (v12 == 8)
        {
          v19 = 0xEC00000064656C69;
          v18 = 0x6146207972746E45;
        }

        else
        {
          v18 = 0xD000000000000010;
          v19 = 0x8000000258B35BC0;
        }
      }

      else
      {
        v13 = 0xD000000000000013;
        if (v12 == 3)
        {
          v14 = 0xD000000000000010;
        }

        else
        {
          v14 = 0x736C6562614CLL;
        }

        if (v12 == 3)
        {
          v15 = 0x8000000258B35B70;
        }

        else
        {
          v15 = 0xE600000000000000;
        }

        if (v12 == 2)
        {
          v16 = 0x8000000258B35B50;
        }

        else
        {
          v13 = v14;
          v16 = v15;
        }

        v17 = 0xD000000000000017;
        if (*(*(v7 + 48) + a2))
        {
          v17 = v11;
        }

        else
        {
          v10 = 0x8000000258B35B20;
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v18 = v17;
        }

        else
        {
          v18 = v13;
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v19 = v10;
        }

        else
        {
          v19 = v16;
        }
      }

      v20 = 0xEC00000064656C69;
      v21 = 0x6146207972746E45;
      if (v40 != 8)
      {
        v21 = 0xD000000000000010;
        v20 = 0x8000000258B35BC0;
      }

      if (v40 == 7)
      {
        v21 = 0x6F4C207972746E45;
        v20 = 0xEC00000064656767;
      }

      v22 = 0x746169636F737341;
      if (v40 != 5)
      {
        v22 = 0x616D7269666E6F43;
      }

      v23 = 0xEC000000736E6F69;
      if (v40 != 5)
      {
        v23 = 0xEC0000006E6F6974;
      }

      if (v40 <= 6u)
      {
        v21 = v22;
        v20 = v23;
      }

      v24 = 0xD000000000000013;
      if (v40 == 3)
      {
        v25 = 0xD000000000000010;
      }

      else
      {
        v25 = 0x736C6562614CLL;
      }

      if (v40 == 3)
      {
        v26 = 0x8000000258B35B70;
      }

      else
      {
        v26 = 0xE600000000000000;
      }

      if (v40 == 2)
      {
        v27 = 0x8000000258B35B50;
      }

      else
      {
        v24 = v25;
        v27 = v26;
      }

      v28 = 0xD000000000000017;
      v29 = v11;
      if (v40)
      {
        v28 = v11;
      }

      v30 = 0xEA0000000000676ELL;
      if (!v40)
      {
        v30 = 0x8000000258B35B20;
      }

      if (v40 <= 1u)
      {
        v24 = v28;
        v27 = v30;
      }

      v31 = v40 <= 4u ? v24 : v21;
      v32 = v40 <= 4u ? v27 : v20;
      if (v18 == v31 && v19 == v32)
      {
        goto LABEL_77;
      }

      v33 = sub_258B03454();

      if (v33)
      {
        goto LABEL_78;
      }

      a2 = (a2 + 1) & v39;
      v10 = 0xEA0000000000676ELL;
      v11 = v29;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_74:
  v34 = *v38;
  *(*v38 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v34 + 48) + a2) = v40;
  v35 = *(v34 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (!v36)
  {
    *(v34 + 16) = v37;
    return result;
  }

  __break(1u);
LABEL_77:

LABEL_78:
  result = sub_258B03474();
  __break(1u);
  return result;
}

void sub_258AE6F44(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_258AE6358(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_258AE7544();
      a2 = v7;
      goto LABEL_12;
    }

    sub_258AE7CCC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_258B03514();
  MEMORY[0x259C93B20](a1);
  v10 = sub_258B03554();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for Label(0);
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_258B03474();
  __break(1u);
}

uint64_t sub_258AE70A0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_258AE659C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_258AE7678();
      a2 = v7;
      goto LABEL_12;
    }

    sub_258AE7EE0(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_258B03504();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_258B03474();
  __break(1u);
  return result;
}

uint64_t sub_258AE71C0(uint64_t result, unint64_t a2, char a3)
{
  v36 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_47;
  }

  if (a3)
  {
    sub_258AE67D8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_258AE77D0(&qword_27F971738, sub_258AEA96C);
      goto LABEL_47;
    }

    sub_258AE80E8(v5 + 1);
  }

  v7 = 0xEF6F72746E492064;
  v8 = 0x6574614720656741;
  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_258B03514();
  sub_258B02B74();

  result = sub_258B03554();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  v35 = v9 + 56;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v34 = ~v11;
    v12 = 0x6E6F697473657551;
    v13 = 0x746C75736552;
    v14 = v9;
    do
    {
      v15 = *(*(v9 + 48) + a2);
      if (v15 <= 1)
      {
        if (*(*(v9 + 48) + a2))
        {
          v16 = v8;
        }

        else
        {
          v16 = 0xD000000000000010;
        }

        if (*(*(v9 + 48) + a2))
        {
          v17 = v7;
        }

        else
        {
          v17 = 0x8000000258B35DF0;
        }
      }

      else if (v15 == 2)
      {
        v17 = 0xE500000000000000;
        v16 = 0x6F72746E49;
      }

      else
      {
        if (v15 == 3)
        {
          v16 = v12;
        }

        else
        {
          v16 = v13;
        }

        if (v15 == 3)
        {
          v17 = 0xE900000000000073;
        }

        else
        {
          v17 = 0xE600000000000000;
        }
      }

      v18 = v12;
      v19 = v13;
      if (v36 == 3)
      {
        v20 = v12;
      }

      else
      {
        v20 = v13;
      }

      v21 = 0xE900000000000073;
      if (v36 != 3)
      {
        v21 = 0xE600000000000000;
      }

      if (v36 == 2)
      {
        v20 = 0x6F72746E49;
        v21 = 0xE500000000000000;
      }

      v22 = 0xD000000000000010;
      if (v36)
      {
        v22 = v8;
      }

      v23 = v7;
      v24 = v36 ? v7 : 0x8000000258B35DF0;
      v25 = v36 <= 1u ? v22 : v20;
      v26 = v36 <= 1u ? v24 : v21;
      v27 = v8;
      if (v16 == v25 && v17 == v26)
      {
        goto LABEL_50;
      }

      v28 = sub_258B03454();

      if (v28)
      {
        goto LABEL_51;
      }

      a2 = (a2 + 1) & v34;
      v7 = v23;
      v8 = v27;
      v12 = v18;
      v9 = v14;
      v13 = v19;
    }

    while (((*(v35 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_47:
  v29 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v29 + 48) + a2) = v36;
  v30 = *(v29 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *(v29 + 16) = v32;
    return result;
  }

  __break(1u);
LABEL_50:

LABEL_51:
  result = sub_258B03474();
  __break(1u);
  return result;
}

void *sub_258AE7544()
{
  v1 = v0;
  sub_258AEAEB0();
  v2 = *v0;
  v3 = sub_258B03164();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_258AE7678()
{
  v1 = v0;
  sub_258AEA918(0, &qword_27F971730, MEMORY[0x277D83B98], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_258B03164();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_258AE77D0(unint64_t *a1, void (*a2)(void))
{
  v3 = v2;
  sub_258AEA9C0(0, a1, a2);
  v4 = *v2;
  v5 = sub_258B03164();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_258AE7910(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_258AEA9C0(0, &qword_27F971768, sub_258AEAA20);
  result = sub_258B03174();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_258B03514();
      sub_258B02B74();

      result = sub_258B03554();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_258AE7CCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_258AEAEB0();
  result = sub_258B03174();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_258B03514();
      MEMORY[0x259C93B20](v17);
      result = sub_258B03554();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_258AE7EE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_258AEA918(0, &qword_27F971730, MEMORY[0x277D83B98], MEMORY[0x277D84098]);
  result = sub_258B03174();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_258B03504();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_258AE80E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_258AEA9C0(0, &qword_27F971738, sub_258AEA96C);
  result = sub_258B03174();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_18:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_258B03514();
      sub_258B02B74();

      result = sub_258B03554();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_258AE83C8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_258AE9BB4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_258B03404();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_258B02CA4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_258AE84FC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_258AE84FC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_258AE8CC8(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_258AE8A48((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_258A74C78(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_258A74C78((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_258AE8A48((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_258AE8A48(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_258AE8C3C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_258AE8CC8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_258AE8CDC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_258AEACD0(0, &qword_27F970B08, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_258AE8DF8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_258AEACD0(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258AE8F1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_258AEAE4C(0, &qword_27F9717A0, type metadata accessor for CGSize, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_258AE9044(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_258AEACD0(0, &qword_27F971798, MEMORY[0x277CDFB90], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_258AE915C(void *result, int64_t a2, char a3, void *a4)
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
    sub_258AEAE4C(0, &qword_27F9717A8, sub_258A0AFC8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_258A0AFC8(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258AE92DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_258AEACD0(0, &qword_27F96E3D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258AE9408(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_258AEACD0(0, &qword_27F970058, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_258AE9544(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_258AEACD0(0, &qword_27F970D80, MEMORY[0x277CE1308], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_258AE969C(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_258AEAE4C(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_258AE98B0(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_258AEAE4C(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_258AE9A2C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_258AE9BC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Label(0);
  v4 = v3;
  v5 = sub_258AEAF44(&qword_27F9704C8, type metadata accessor for Label);
  result = MEMORY[0x259C93370](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_258AE5AB0(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

void sub_258AE9C74()
{
  if (!qword_27F971698)
  {
    type metadata accessor for AssessmentsSettingsModel();
    sub_258AEAF44(&qword_27F96EDD0, type metadata accessor for AssessmentsSettingsModel);
    v0 = sub_258B00A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971698);
    }
  }
}

uint64_t sub_258AE9D08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258AE9DAC()
{
  if (!qword_27F9716A8)
  {
    sub_258AE9E4C(255);
    sub_258AEAE4C(255, &qword_27F9716B8, sub_258AE9EFC, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9716A8);
    }
  }
}

void sub_258AE9E6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258AEACD0(255, &qword_27F96CDD0, MEMORY[0x277D839B0], MEMORY[0x277CE0898]);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AE9F30()
{
  if (!qword_27F9716C8)
  {
    sub_258AE9FA0(255);
    sub_258AEA298();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9716C8);
    }
  }
}

void sub_258AE9FC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258B017D4();
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AEA04C()
{
  if (!qword_27F9716E0)
  {
    sub_258AEA0E0();
    sub_258AEA220();
    v0 = sub_258B02254();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9716E0);
    }
  }
}

void sub_258AEA0E0()
{
  if (!qword_27F9716E8)
  {
    v0 = MEMORY[0x277D83B88];
    sub_258AEACD0(255, &qword_27F9716F0, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
    sub_258A155A0();
    sub_258AEA1C8(&qword_27F9716F8, &qword_27F9716F0, v0);
    v1 = sub_258B023D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9716E8);
    }
  }
}

uint64_t sub_258AEA1C8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_258AEACD0(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258AEA220()
{
  result = qword_27F971700;
  if (!qword_27F971700)
  {
    sub_258AEA0E0();
    sub_258A5B2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971700);
  }

  return result;
}

void sub_258AEA298()
{
  if (!qword_27F971708)
  {
    sub_258AE9E4C(255);
    sub_258AEA31C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F971708);
    }
  }
}

unint64_t sub_258AEA31C()
{
  result = qword_27F971710;
  if (!qword_27F971710)
  {
    sub_258AE9E4C(255);
    sub_258A5B384();
    sub_258AEAF44(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971710);
  }

  return result;
}

unint64_t sub_258AEA3DC()
{
  result = qword_27F971720;
  if (!qword_27F971720)
  {
    sub_258AEA02C(255);
    sub_258AEAF44(&qword_27F971728, sub_258AEA04C);
    sub_2589D2560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971720);
  }

  return result;
}

uint64_t sub_258AEA49C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258AEA4FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2589EEE18;

  return sub_258AE3C64(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroy_41Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_258AEA60C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x259C93370](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_258AE5BA8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_258AEA680(uint64_t a1)
{
  if (a1 > 89)
  {
    if (a1 != 90 && a1 != 180)
    {
      goto LABEL_8;
    }

    if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

LABEL_15:
    swift_once();
    return sub_258AFFD94();
  }

  if (!a1)
  {
    if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

    goto LABEL_15;
  }

  if (a1 == 30)
  {
    if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

    goto LABEL_15;
  }

LABEL_8:
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  sub_258AFFD94();
  sub_258AEAE4C(0, &qword_27F9702D8, sub_258ABB050, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_258B2C470;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_258B02AE4();

  return v5;
}

void sub_258AEA918(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x277D83B88]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258AEA96C()
{
  result = qword_27F971740;
  if (!qword_27F971740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971740);
  }

  return result;
}

void sub_258AEA9C0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_258B03194();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_258AEAA20()
{
  result = qword_27F971770;
  if (!qword_27F971770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971770);
  }

  return result;
}

unint64_t sub_258AEAA84()
{
  result = qword_27F971778;
  if (!qword_27F971778)
  {
    sub_258AEAE4C(255, &qword_27F971780, sub_258AE5420, MEMORY[0x277D83D88]);
    sub_258AE534C();
    sub_258AE5208();
    sub_258B013D4();
    sub_258AEAF44(&qword_27F971688, sub_258AE5208);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971778);
  }

  return result;
}

unint64_t sub_258AEABDC()
{
  result = qword_27F971788;
  if (!qword_27F971788)
  {
    sub_258AEADD8(255, &qword_27F971790, sub_258AE9D78);
    sub_258AEAF44(&qword_27F971718, sub_258AE9D78);
    sub_258A5B2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971788);
  }

  return result;
}

void sub_258AEACD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258AEAD30()
{
  result = qword_27F9717B0;
  if (!qword_27F9717B0)
  {
    sub_258AEADD8(255, &qword_27F9717B8, sub_258AE9E4C);
    sub_258AEA31C();
    sub_258A5B2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9717B0);
  }

  return result;
}

void sub_258AEADD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258A155A0();
    v4 = sub_258B02444();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AEAE4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258AEAEB0()
{
  if (!qword_27F9717C0)
  {
    type metadata accessor for Label(255);
    sub_258AEAF44(&qword_27F9704C8, type metadata accessor for Label);
    v0 = sub_258B03194();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9717C0);
    }
  }
}

uint64_t sub_258AEAF44(unint64_t *a1, void (*a2)(uint64_t))
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

id StateOfMindSampleCountContext.__allocating_init(accessibilityIdentifier:applicationItems:overlayChartController:overlayPredicate:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem;
  *&v11[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem] = 0;
  v13 = &v11[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_accessibilityIdentifier_];
  *v13 = a1;
  *(v13 + 1) = a2;
  *&v11[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayChartController] = a4;
  sub_258AEB598();
  v14 = a4;
  sub_258ADEBAC(a3, a5, 0);
  *&v11[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayDisplayType] = v15;
  *&v11[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayPredicate] = a5;
  v16 = *&v11[v12];
  *&v11[v12] = 0;
  v17 = a5;

  v20.receiver = v11;
  v20.super_class = type metadata accessor for StateOfMindOverlayContext();
  v18 = objc_msgSendSuper2(&v20, sel_init);

  return v18;
}

void sub_258AEB0A8(unint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_258B032B4())
  {
    v4 = MEMORY[0x277D84F90];
    if (i)
    {
      v5 = v1;
      v19 = MEMORY[0x277D84F90];
      sub_258AA92AC(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return;
      }

      v4 = v19;
      if ((v2 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != i; ++j)
        {
          MEMORY[0x259C937C0](j, v2);
          v7 = sub_258B027B4();
          swift_unknownObjectRelease();
          v9 = *(v19 + 16);
          v8 = *(v19 + 24);
          if (v9 >= v8 >> 1)
          {
            sub_258AA92AC((v8 > 1), v9 + 1, 1);
          }

          *(v19 + 16) = v9 + 1;
          *(v19 + 8 * v9 + 32) = v7;
        }
      }

      else
      {
        v10 = (v2 + 32);
        do
        {
          v11 = *v10;
          v2 = sub_258B027B4();

          v13 = *(v19 + 16);
          v12 = *(v19 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_258AA92AC((v12 > 1), v13 + 1, 1);
          }

          *(v19 + 16) = v13 + 1;
          *(v19 + 8 * v13 + 32) = v2;
          ++v10;
          --i;
        }

        while (i);
      }

      v1 = v5;
    }

    v14 = *(v4 + 16);
    if (!v14)
    {
      break;
    }

    v15 = 0;
    v16 = (v4 + 32);
    while (1)
    {
      v17 = *v16++;
      v18 = __OFADD__(v15, v17);
      v15 += v17;
      if (v18)
      {
        break;
      }

      if (!--v14)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    ;
  }

  v15 = 0;
LABEL_22:

  sub_258AEB288(v15, 0);
}

void sub_258AEB288(uint64_t a1, char a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayPredicate) localizedNameKey];
  v6 = sub_258B02B14();
  v8 = v7;

  v9 = 0;
  if (a2)
  {
    v10 = 0;
    goto LABEL_6;
  }

  v10 = 0;
  if (a1 < 1)
  {
LABEL_6:
    sub_258A30494(v6, v8, v9, v10);

    return;
  }

  sub_258A828E0();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D83B88];
  *(v11 + 16) = xmmword_258B2C470;
  v13 = MEMORY[0x277D83C10];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 32) = a1;
  v9 = sub_258B02AE4();
  v10 = v14;

  v15 = sub_258B02AD4();
  v16 = HKUILocalizedString();

  if (v16)
  {
    sub_258B02B14();

    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_258B2C470;
    *(v17 + 56) = MEMORY[0x277D83B88];
    *(v17 + 64) = MEMORY[0x277D83C10];
    *(v17 + 32) = a1;
    sub_258B02AE4();

    goto LABEL_6;
  }

  __break(1u);
}

id StateOfMindSampleCountContext.init(accessibilityIdentifier:applicationItems:overlayChartController:overlayPredicate:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v10 = OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem;
  *&v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem] = 0;
  v11 = &v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_accessibilityIdentifier_];
  *v11 = a1;
  *(v11 + 1) = a2;
  *&v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayChartController] = a4;
  sub_258AEB598();
  v12 = a4;
  sub_258ADEBAC(a3, a5, 0);
  *&v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayDisplayType] = v13;
  *&v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayPredicate] = a5;
  v14 = *&v6[v10];
  *&v6[v10] = 0;
  v15 = a5;

  v18.receiver = v6;
  v18.super_class = type metadata accessor for StateOfMindOverlayContext();
  v16 = objc_msgSendSuper2(&v18, sel_init);

  return v16;
}

unint64_t sub_258AEB598()
{
  result = qword_27F96D870;
  if (!qword_27F96D870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F96D870);
  }

  return result;
}

id StateOfMindSampleCountContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindSampleCountContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_258AEB68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_258AED668(0, &qword_27F9717C8, sub_258AECCCC, MEMORY[0x277CE1428], MEMORY[0x277CE0330]);
  v113 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v114 = &v88 - v6;
  v7 = sub_258B01724();
  v107 = *(v7 - 8);
  v108 = v7;
  v8 = *(v107 + 64);
  MEMORY[0x28223BE20](v7);
  v104 = v9;
  v105 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A8773C();
  v103 = v10;
  v102 = *(v10 - 8);
  v11 = *(v102 + 64);
  MEMORY[0x28223BE20](v10);
  v100 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AECDD8();
  v99 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v101 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AED668(0, &qword_27F9717D8, sub_258AECDD8, MEMORY[0x277CE0780], MEMORY[0x277CDFAB8]);
  v115 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v110 = &v88 - v18;
  sub_258AECCCC();
  v112 = v19;
  v109 = *(v19 - 8);
  v20 = *(v109 + 64);
  MEMORY[0x28223BE20](v19);
  v106 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AED020(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v88 - v27;
  v29 = sub_258B00084();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v98 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v32);
  v97 = &v88 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v111 = &v88 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v88 - v37;
  v39 = a1;
  sub_258B016F4();
  v40 = v30;
  v41 = *(v30 + 48);
  if (v41(v28, 1, v29) == 1)
  {
    v26 = v28;
LABEL_5:
    sub_258AED428(v26, &qword_27F96EBF0, MEMORY[0x277D83D88]);
    swift_storeEnumTagMultiPayload();
    v42 = type metadata accessor for MomentaryDatePickerFullView();
    v43 = sub_258AECE40();
    v44 = sub_258AECFD8(&qword_27F9717F8, type metadata accessor for MomentaryDatePickerFullView);
    v117 = v115;
    v118 = v42;
    v119 = v43;
    v120 = v44;
    swift_getOpaqueTypeConformance2();
    return sub_258B012A4();
  }

  v95 = a2;
  v94 = *(v40 + 32);
  v94(v38, v28, v29);
  sub_258B016E4();
  if (v41(v26, 1, v29) == 1)
  {
    (*(v40 + 8))(v38, v29);
    goto LABEL_5;
  }

  v92 = v40;
  v93 = v38;
  v91 = v29;
  v94(v111, v26, v29);
  v90 = v40 + 32;
  v46 = v96;
  v47 = *(v96 + 8);
  v49 = *(v96 + 16);
  v122 = *v96;
  v48 = v122;
  v121 = *(v96 + 24);
  v50 = swift_allocObject();
  v51 = *(v46 + 16);
  *(v50 + 16) = *v46;
  *(v50 + 32) = v51;
  *(v50 + 48) = *(v46 + 32);
  MEMORY[0x28223BE20](v50);
  v89 = v39;
  sub_2589DE784(&v122, &v117);

  sub_258AED3B4(&v121, &v117, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8], sub_258A00D6C);
  v52 = v100;
  sub_258B02174();
  v117 = v48;
  v118 = v47;
  v96 = v49;
  v119 = v49;
  sub_258AED020(0, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
  v54 = v53;
  MEMORY[0x259C92900](&v116);
  if (v116 == 1)
  {
    v55 = sub_258B01FC4();
  }

  else
  {
    v55 = sub_258B02044();
  }

  v56 = v55;
  KeyPath = swift_getKeyPath();
  v117 = v56;
  v58 = sub_258B00864();
  v59 = v101;
  (*(v102 + 32))(v101, v52, v103);
  v60 = (v59 + *(v99 + 36));
  *v60 = KeyPath;
  v60[1] = v58;
  v117 = v48;
  v118 = v47;
  v119 = v96;
  MEMORY[0x259C92900](&v116, v54);
  LOBYTE(v58) = v116 == 1;
  v61 = v110;
  sub_258AED2E4(v59, v110, sub_258AECDD8);
  *(v61 + *(v115 + 36)) = v58;
  v116 = v121;
  sub_258A00D6C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v102 = v117;
  v101 = v118;
  LODWORD(v103) = v119;
  v62 = v92;
  v63 = *(v92 + 16);
  v64 = v97;
  v65 = v91;
  v63(v97, v93, v91);
  v66 = v98;
  v63(v98, v111, v65);
  v68 = v107;
  v67 = v108;
  v69 = v105;
  (*(v107 + 16))(v105, v89, v108);
  v70 = *(v62 + 80);
  v71 = (v70 + 16) & ~v70;
  v72 = (v31 + v70 + v71) & ~v70;
  v73 = (v31 + *(v68 + 80) + v72) & ~*(v68 + 80);
  v74 = swift_allocObject();
  v75 = v74 + v71;
  v76 = v64;
  v77 = v65;
  v78 = v94;
  v94(v75, v76, v65);
  v78(v74 + v72, v66, v65);
  (*(v68 + 32))(v74 + v73, v69, v67);
  v79 = type metadata accessor for MomentaryDatePickerFullView();
  v86 = sub_258AECE40();
  v87 = sub_258AECFD8(&qword_27F9717F8, type metadata accessor for MomentaryDatePickerFullView);
  v80 = v106;
  v81 = v115;
  v82 = v110;
  sub_258B01E94();

  sub_258AED1E8(v82);
  v83 = v109;
  v84 = v112;
  (*(v109 + 16))(v114, v80, v112);
  swift_storeEnumTagMultiPayload();
  v117 = v81;
  v118 = v79;
  v119 = v86;
  v120 = v87;
  swift_getOpaqueTypeConformance2();
  sub_258B012A4();
  (*(v83 + 8))(v80, v84);
  v85 = *(v92 + 8);
  v85(v111, v77);
  return (v85)(v93, v77);
}

uint64_t sub_258AEC2B4@<X0>(uint64_t *a1@<X8>)
{
  v54 = a1;
  v1 = sub_258AFFF74();
  v52 = *(v1 - 8);
  v53 = v1;
  v2 = *(v52 + 64);
  MEMORY[0x28223BE20](v1);
  v51 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258AFFF24();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_258AFFF34();
  v8 = *(v47 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v47);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258AFFFD4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v45 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - v21;
  v48 = sub_258B00084();
  v46 = *(v48 - 8);
  v23 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_258B01714();
  MEMORY[0x259C90120](v26);
  sub_258AFFF14();
  sub_258AFFF04();
  (*(v49 + 8))(v7, v50);
  sub_258AFFEC4();
  (*(v8 + 8))(v11, v47);
  v27 = *(v13 + 8);
  v27(v17, v12);
  v28 = v51;
  sub_258AFFF64();
  sub_258AFFFB4();
  (*(v52 + 8))(v28, v53);
  v27(v20, v12);
  sub_258AECFD8(&qword_27F9702C8, MEMORY[0x277CC9428]);
  sub_258B00064();
  v27(v22, v12);
  (*(v46 + 8))(v25, v48);
  v55 = v57;
  v56 = v58;
  sub_2589BFF58();
  v29 = sub_258B01B44();
  v31 = v30;
  LOBYTE(v11) = v32;
  sub_258B018F4();
  v33 = sub_258B01AE4();
  v35 = v34;
  LOBYTE(v22) = v36;

  sub_2589BFFAC(v29, v31, v11 & 1);

  sub_258B01994();
  v37 = sub_258B01A94();
  v39 = v38;
  LOBYTE(v11) = v40;
  v42 = v41;
  sub_2589BFFAC(v33, v35, v22 & 1);

  v44 = v54;
  *v54 = v37;
  v44[1] = v39;
  *(v44 + 16) = v11 & 1;
  v44[3] = v42;
  return result;
}

void sub_258AEC7AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_258AED020(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  v49 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - v10;
  sub_258AED27C();
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  sub_258A3F24C();
  v48 = v20;
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_258B00084();
  sub_258AECFD8(&qword_27F96F0D8, MEMORY[0x277CC9578]);
  if (sub_258B02A74())
  {
    v25 = *(v24 - 8);
    v46 = v11;
    v47 = a3;
    v26 = v25;
    v27 = *(v25 + 16);
    v27(v19, a1, v24);
    v27(&v19[*(v13 + 48)], a2, v24);
    sub_258AED34C(v19, v17, sub_258AED27C);
    v28 = *(v13 + 48);
    v29 = v23;
    v30 = *(v26 + 32);
    v45 = v13;
    v31 = v29;
    v30();
    v32 = *(v26 + 8);
    v32(&v17[v28], v24);
    sub_258AED2E4(v19, v17, sub_258AED27C);
    (v30)(v31 + *(v48 + 36), &v17[*(v45 + 48)], v24);
    v32(v17, v24);
    v33 = v46;
    sub_258B01704();
    v34 = type metadata accessor for MomentaryDatePickerFullView();
    v35 = v34[7];
    *(a4 + v35) = swift_getKeyPath();
    v36 = MEMORY[0x277CDF458];
    sub_258AED020(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v37 = v34[8];
    *(a4 + v37) = swift_getKeyPath();
    sub_258AED020(0, &qword_27F96C968, MEMORY[0x277CDD848], v36);
    swift_storeEnumTagMultiPayload();
    v38 = v34[9];
    *(a4 + v38) = swift_getKeyPath();
    sub_258AED020(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, v36);
    swift_storeEnumTagMultiPayload();
    v39 = v31;
    sub_258AED34C(v31, a4, sub_258A3F24C);
    v40 = MEMORY[0x277CC9578];
    v41 = MEMORY[0x277CE11F8];
    sub_258AED3B4(v33, a4 + v34[5], &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8], sub_258AED020);
    v42 = a4 + v34[6];
    MEMORY[0x259C92900](v49);
    sub_258AED428(v33, &qword_27F96EA60, v41);
    sub_258AED49C(v39);
    sub_258AED020(0, &qword_27F96E968, v40, MEMORY[0x277CE10B8]);
    *(v42 + *(v43 + 28)) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_258AECCCC()
{
  if (!qword_27F9717D0)
  {
    sub_258AED668(255, &qword_27F9717D8, sub_258AECDD8, MEMORY[0x277CE0780], MEMORY[0x277CDFAB8]);
    type metadata accessor for MomentaryDatePickerFullView();
    sub_258AECE40();
    sub_258AECFD8(&qword_27F9717F8, type metadata accessor for MomentaryDatePickerFullView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9717D0);
    }
  }
}

void sub_258AECDD8()
{
  if (!qword_27F9717E0)
  {
    sub_258A8773C();
    sub_2589EDB9C();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9717E0);
    }
  }
}

unint64_t sub_258AECE40()
{
  result = qword_27F9717E8;
  if (!qword_27F9717E8)
  {
    sub_258AED668(255, &qword_27F9717D8, sub_258AECDD8, MEMORY[0x277CE0780], MEMORY[0x277CDFAB8]);
    sub_258AECEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9717E8);
  }

  return result;
}

unint64_t sub_258AECEF8()
{
  result = qword_27F9717F0;
  if (!qword_27F9717F0)
  {
    sub_258AECDD8();
    sub_258AECFD8(&qword_27F96E060, sub_258A8773C);
    sub_258AECFD8(&qword_27F96D730, sub_2589EDB9C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9717F0);
  }

  return result;
}

uint64_t sub_258AECFD8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258AED020(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258AED084()
{
  v2 = *(v0 + 40);
  sub_258A00D6C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

void sub_258AED0FC(uint64_t a1@<X8>)
{
  v3 = *(sub_258B00084() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(sub_258B01724() - 8);
  v9 = v1 + ((v7 + v6 + *(v8 + 80)) & ~*(v8 + 80));

  sub_258AEC7AC(v1 + v5, v1 + v7, v9, a1);
}

uint64_t sub_258AED1E8(uint64_t a1)
{
  sub_258AED668(0, &qword_27F9717D8, sub_258AECDD8, MEMORY[0x277CE0780], MEMORY[0x277CDFAB8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258AED27C()
{
  if (!qword_27F971800)
  {
    sub_258B00084();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F971800);
    }
  }
}

uint64_t sub_258AED2E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AED34C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AED3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_258AED428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_258AED020(0, a2, MEMORY[0x277CC9578], a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258AED49C(uint64_t a1)
{
  sub_258A3F24C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258AED4F8()
{
  result = qword_27F971808;
  if (!qword_27F971808)
  {
    sub_258AED668(255, &qword_27F971810, sub_258AECCCC, MEMORY[0x277CE1428], MEMORY[0x277CE0338]);
    sub_258AED668(255, &qword_27F9717D8, sub_258AECDD8, MEMORY[0x277CE0780], MEMORY[0x277CDFAB8]);
    type metadata accessor for MomentaryDatePickerFullView();
    sub_258AECE40();
    sub_258AECFD8(&qword_27F9717F8, type metadata accessor for MomentaryDatePickerFullView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971808);
  }

  return result;
}

void sub_258AED668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t Symbol.image.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    *v0;
    goto LABEL_7;
  }

  if (*v0 <= 5u || v1 == 8 || v1 == 7)
  {
LABEL_7:

    return sub_258B020A4();
  }

  type metadata accessor for MentalHealthUIRepresentative();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];

  return sub_258B020D4();
}

uint64_t Symbol.name.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v5 = 0x7261646E656C6163;
    v6 = 0x72616D6B63656863;
    if (v1 != 2)
    {
      v6 = 0x6B636F6C63;
    }

    if (*v0)
    {
      v5 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD00000000000001FLL;
    if (v1 != 7)
    {
      v2 = 0xD000000000000014;
    }

    if (v1 == 6)
    {
      v2 = 0xD000000000000019;
    }

    v3 = 0xD000000000000011;
    if (v1 != 4)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (*v0 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

id Symbol.bundle.getter()
{
  if (*v0 != 6)
  {
    return 0;
  }

  type metadata accessor for MentalHealthUIRepresentative();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  return [objc_opt_self() bundleForClass_];
}

uint64_t Symbol.hashValue.getter()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

unint64_t sub_258AEDAB4()
{
  result = qword_27F971818;
  if (!qword_27F971818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971818);
  }

  return result;
}

uint64_t sub_258AEDB18(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + 8 * v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_258AA936C(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_258AA936C((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + 8 * v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_258AEDC70@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for LabelsPicker();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = v6;
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF17C0();
  v42 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF20AC();
  v13 = *(v12 - 8);
  v43 = v12;
  v44 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v37 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = sub_258B011A4();
  *(v11 + 1) = 0;
  v11[16] = 0;
  sub_258AF2774(0, &qword_27F971908, sub_258AF1854);
  sub_258AEE19C(v1, &v11[*(v16 + 44)]);
  v17 = v1 + *(v3 + 48);
  v36 = v1;
  v18 = *v17;
  v19 = *(v17 + 8);
  LOBYTE(v49[0]) = v18;
  v49[1] = v19;
  sub_258AF2918(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v35 = BYTE8(v47);
  v41 = type metadata accessor for LabelsPicker;
  v38 = v7;
  sub_258AF27E0(v1, v7, type metadata accessor for LabelsPicker);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  v39 = type metadata accessor for LabelsPicker;
  sub_258AF28B0(v7, v21 + v20, type metadata accessor for LabelsPicker);
  sub_258AF21E8();
  v23 = v22;
  v34 = sub_258AF1EA4(&qword_27F971900, sub_258AF17C0);
  v24 = type metadata accessor for ShowAllLabelsPicker();
  v25 = sub_258AF1EA4(&qword_27F9718F8, type metadata accessor for ShowAllLabelsPicker);
  v46 = v24;
  *&v47 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v42;
  sub_258B01E94();

  sub_258AF2714(v11, sub_258AF17C0);
  v27 = v36;
  v46 = *(v36 + 16);
  v47 = *(v36 + 24);
  sub_258AF1508(0, &qword_27F96F2E8, sub_258A1E3AC, MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](v49);
  v28 = v38;
  sub_258AF27E0(v27, v38, v41);
  v29 = swift_allocObject();
  sub_258AF28B0(v28, v29 + v20, v39);
  sub_258A1E3AC(0);
  v46 = v26;
  *&v47 = v23;
  *(&v47 + 1) = v34;
  v48 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_258AF264C();
  v30 = v43;
  v31 = v37;
  sub_258B01EF4();

  return (*(v44 + 8))(v31, v30);
}

uint64_t sub_258AEE19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v31 = a2;
  sub_258AF18EC();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  v8 = type metadata accessor for ExpandableInfoSectionHeader();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v30 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = (&v28 - v12);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v14 = sub_258AFFD94();
  v16 = v15;
  v17 = sub_258AFFD94();
  *v13 = v14;
  v13[1] = v16;
  v13[2] = v17;
  v13[3] = v18;
  v19 = *(v8 + 24);
  *(v13 + v19) = swift_getKeyPath();
  sub_258AF1508(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v20 = v13 + *(v8 + 28);
  v33 = 0;
  sub_258B02114();
  v21 = v35;
  *v20 = v34;
  *(v20 + 1) = v21;
  *v7 = sub_258B011A4();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_258AF2774(0, &qword_27F971918, sub_258AF1980);
  sub_258AEE574(v29, &v7[*(v22 + 44)]);
  v23 = v30;
  sub_258AF27E0(v13, v30, type metadata accessor for ExpandableInfoSectionHeader);
  v24 = v32;
  sub_258AF27E0(v7, v32, sub_258AF18EC);
  v25 = v31;
  sub_258AF27E0(v23, v31, type metadata accessor for ExpandableInfoSectionHeader);
  sub_258AF19BC(0, &qword_27F971840, type metadata accessor for ExpandableInfoSectionHeader, sub_258AF18EC);
  sub_258AF27E0(v24, v25 + *(v26 + 48), sub_258AF18EC);
  sub_258AF2714(v7, sub_258AF18EC);
  sub_258AF2714(v13, type metadata accessor for ExpandableInfoSectionHeader);
  sub_258AF2714(v24, sub_258AF18EC);
  return sub_258AF2714(v23, type metadata accessor for ExpandableInfoSectionHeader);
}

uint64_t sub_258AEE574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = type metadata accessor for AssociationSelectionPhaseSpecs();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LabelsPicker();
  v7 = v6 - 8;
  v71 = *(v6 - 8);
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](v6);
  sub_258AF1C38();
  v74 = v9;
  v75 = *(v9 - 8);
  v10 = *(v75 + 64);
  MEMORY[0x28223BE20](v9);
  v72 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF1B1C(0);
  v13 = *(v12 - 8);
  v76 = v12 - 8;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v73 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF1AF4(0);
  v17 = *(v16 - 8);
  v80 = v16 - 8;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8);
  v82 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v78 = &v70 - v22;
  MEMORY[0x28223BE20](v21);
  v81 = &v70 - v23;
  sub_258AF1A38(0);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v79 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v70 - v29;
  v31 = *(a1 + 8);
  v32 = (a1 + *(v7 + 44));
  v34 = *v32;
  v33 = v32[1];
  *v87 = v34;
  *&v87[8] = v33;
  sub_258AF1508(0, &qword_27F970438, sub_258A1E3AC, MEMORY[0x277CE10B8]);
  sub_258B003E4();
  sub_258B02124();
  *v87 = v31;
  sub_2589FCC90(v85);
  v35 = *v87;
  *v87 = *(a1 + 16);
  *&v87[8] = *(a1 + 24);
  sub_258AF1508(0, &qword_27F96F2E8, sub_258A1E3AC, MEMORY[0x277CE11F8]);
  sub_258B02334();
  v36 = v85;
  v70 = v86;
  *&v30[*(v25 + 68)] = swift_getKeyPath();
  sub_258AF1508(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *v30 = v35;
  *(v30 + 1) = v36;
  *(v30 + 1) = v70;
  v30[32] = 1;
  *(v30 + 40) = xmmword_258B35270;
  *(v30 + 7) = sub_258AEEEB0;
  *(v30 + 8) = 0;
  *(v30 + 9) = sub_258AEEF00;
  *(v30 + 10) = 0;
  sub_258AF27E0(a1, &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LabelsPicker);
  v37 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v38 = swift_allocObject();
  sub_258AF28B0(&v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37, type metadata accessor for LabelsPicker);
  v84 = a1;
  sub_258AF1CCC(0, &qword_27F971890, sub_258AF1D40, sub_258A563B0);
  sub_258AF1EEC();
  v39 = v72;
  sub_258B02174();
  *v87 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5E00);
  sub_258AF2918(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D5E20);
  sub_258AF1EA4(&qword_27F971920, sub_258AF1C38);
  v40 = v73;
  v41 = v74;
  sub_258B01DD4();

  (*(v75 + 8))(v39, v41);
  LOBYTE(v41) = sub_258B01884();
  v42 = *(v7 + 36);
  v43 = v77;
  sub_258AC1B28(v77);
  sub_258AF2714(v43, type metadata accessor for AssociationSelectionPhaseSpecs);
  sub_258B00654();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_258AF1BA8();
  v53 = v40 + *(v52 + 36);
  *v53 = v41;
  *(v53 + 8) = v45;
  *(v53 + 16) = v47;
  *(v53 + 24) = v49;
  *(v53 + 32) = v51;
  *(v53 + 40) = 0;
  LOBYTE(v41) = sub_258B018A4();
  sub_258AC1B28(v43);
  sub_258AF2714(v43, type metadata accessor for AssociationSelectionPhaseSpecs);
  sub_258B00654();
  v54 = v40 + *(v76 + 44);
  *v54 = v41;
  *(v54 + 8) = v55;
  *(v54 + 16) = v56;
  *(v54 + 24) = v57;
  *(v54 + 32) = v58;
  *(v54 + 40) = 0;
  sub_258B02504();
  sub_258B00C94();
  v59 = v78;
  sub_258AF28B0(v40, v78, sub_258AF1B1C);
  v60 = (v59 + *(v80 + 44));
  v61 = v91;
  v60[4] = v90;
  v60[5] = v61;
  v60[6] = v92;
  v62 = *&v87[16];
  *v60 = *v87;
  v60[1] = v62;
  v63 = v89;
  v60[2] = v88;
  v60[3] = v63;
  v64 = v81;
  sub_258AF28B0(v59, v81, sub_258AF1AF4);
  v65 = v79;
  sub_258AF27E0(v30, v79, sub_258AF1A38);
  v66 = v82;
  sub_258AF27E0(v64, v82, sub_258AF1AF4);
  v67 = v83;
  sub_258AF27E0(v65, v83, sub_258AF1A38);
  sub_258AF19BC(0, &qword_27F971858, sub_258AF1A38, sub_258AF1AF4);
  sub_258AF27E0(v66, v67 + *(v68 + 48), sub_258AF1AF4);
  sub_258AF2714(v64, sub_258AF1AF4);
  sub_258AF2714(v30, sub_258AF1A38);
  sub_258AF2714(v66, sub_258AF1AF4);
  return sub_258AF2714(v65, sub_258AF1A38);
}

uint64_t sub_258AEEEB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = HKUILocalizedStringForStateOfMindLabel();
  v3 = sub_258B02B14();

  return v3;
}

uint64_t sub_258AEEF00(uint64_t *a1)
{
  v1 = *a1;
  sub_258AF2918(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_258B2BE60;
  *(v2 + 32) = 0x6C6562614CLL;
  *(v2 + 40) = 0xE500000000000000;
  v3 = NSStringFromHKStateOfMindLabel();
  v4 = sub_258B02B14();
  v6 = v5;

  *(v2 + 48) = v4;
  *(v2 + 56) = v6;
  return v2;
}

uint64_t sub_258AEEFB0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LabelsPicker() + 40));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_258AF2918(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

void sub_258AEF03C(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258B006A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258B019F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_258B01004();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  sub_258AF2774(0, &qword_27F971928, sub_258AF1E08);
  sub_258AEF2D4(a2 + *(v14 + 44));
  sub_258B018F4();
  (*(v10 + 104))(v13, *MEMORY[0x277CE0A10], v9);
  v15 = sub_258B01A14();

  (*(v10 + 8))(v13, v9);
  KeyPath = swift_getKeyPath();
  sub_258AF1D40(0);
  v18 = (a2 + *(v17 + 36));
  *v18 = KeyPath;
  v18[1] = v15;
  v19 = *a1;
  v20 = a1 + *(type metadata accessor for LabelsPicker() + 32);
  sub_258AC14E8(v8);
  v21 = sub_258A82B60(v8, v19);
  (*(v5 + 8))(v8, v4);
  sub_258AF1CCC(0, &qword_27F971890, sub_258AF1D40, sub_258A563B0);
  *(a2 + *(v22 + 36)) = v21;
}

uint64_t sub_258AEF2D4@<X0>(uint64_t a1@<X8>)
{
  sub_2589E0B98();
  v3 = v2;
  v4 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v25[-v8];
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v27 = sub_258AFFD94();
  v28 = v10;
  sub_2589BFF58();
  v11 = sub_258B01B44();
  v13 = v12;
  v26 = v14;
  v16 = v15;
  v17 = sub_258B02084();
  v18 = (v9 + *(v3 + 36));
  sub_258AF1508(0, &qword_27F96D398, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
  v20 = *(v19 + 28);
  v21 = *MEMORY[0x277CE1050];
  v22 = sub_258B020B4();
  (*(*(v22 - 8) + 104))(v18 + v20, v21, v22);
  *v18 = swift_getKeyPath();
  *v9 = v17;
  sub_258AF27E0(v9, v7, sub_2589E0B98);
  *a1 = v11;
  *(a1 + 8) = v13;
  LOBYTE(v20) = v26 & 1;
  *(a1 + 16) = v26 & 1;
  *(a1 + 24) = v16;
  sub_258AF1E3C();
  sub_258AF27E0(v7, a1 + *(v23 + 48), sub_2589E0B98);
  sub_2589E36D4(v11, v13, v20);
  sub_258B003E4();
  sub_258AF2714(v9, sub_2589E0B98);
  sub_258AF2714(v7, sub_2589E0B98);
  sub_2589BFFAC(v11, v13, v20);
}

uint64_t sub_258AEF5A0(uint64_t *a1)
{
  v2 = type metadata accessor for ShowAllLabelsPicker();
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = sub_258B03084();
  if (v8)
  {
    v9 = 4;
  }

  else
  {
    v9 = v7;
  }

  v20 = a1[2];
  v21 = *(a1 + 3);
  sub_258AF1508(0, &qword_27F96F2E8, sub_258A1E3AC, MEMORY[0x277CE11F8]);
  sub_258B02334();
  v10 = v18;
  v11 = v19;
  *v5 = v9;
  *(v5 + 1) = v10;
  *(v5 + 1) = v11;
  v12 = v2[6];
  *&v5[v12] = swift_getKeyPath();
  v13 = MEMORY[0x277CDF458];
  sub_258AF1508(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v14 = v2[7];
  *&v5[v14] = swift_getKeyPath();
  sub_258AF1508(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, v13);
  swift_storeEnumTagMultiPayload();
  v15 = &v5[v2[8]];
  v18 = MEMORY[0x277D84F90];
  sub_258A1E3AC(0);
  sub_258B02114();
  v16 = v21;
  *v15 = v20;
  *(v15 + 1) = v16;
  sub_258AF1EA4(&qword_27F9718F8, type metadata accessor for ShowAllLabelsPicker);
  sub_258B01E04();
  return sub_258AF2714(v5, type metadata accessor for ShowAllLabelsPicker);
}

uint64_t sub_258AEF7E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v10[2] = a3;
  sub_258B003E4();
  v5 = sub_258AEDB18(sub_258AF26F4, v10, v4);
  v6 = (a3 + *(type metadata accessor for LabelsPicker() + 36));
  v8 = v6[1];
  v11 = *v6;
  v7 = v11;
  v12 = v8;
  sub_258AF1508(0, &qword_27F970438, sub_258A1E3AC, MEMORY[0x277CE10B8]);
  sub_258B003E4();

  sub_258B02124();
  sub_2589FCC90(v5);
  v10[4] = v7;
  v10[5] = v8;
  v10[3] = v13;
  sub_258B02134();
}

BOOL sub_258AEF904(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  v4 = *(v3 + 16);
  v5 = (v3 + 32);
  while (v4)
  {
    v6 = *v5++;
    --v4;
    if (v6 == v2)
    {
      return 0;
    }
  }

  v8 = (a2 + *(type metadata accessor for LabelsPicker() + 36));
  v14 = *v8;
  v15 = v8[1];
  sub_258AF1508(0, &qword_27F970438, sub_258A1E3AC, MEMORY[0x277CE10B8]);
  sub_258B02124();
  v9 = *(v13 + 16);
  v10 = 32;
  do
  {
    v7 = v9 == 0;
    if (!v9)
    {
      break;
    }

    v11 = *(v13 + v10);
    v10 += 8;
    --v9;
  }

  while (v11 != v2);

  return v7;
}

uint64_t sub_258AEF9FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_258AE9B2C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_258AEFA68(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_258AEFA68(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_258B03404();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Label(0);
        v5 = sub_258B02CA4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_258AEFCA8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_258AEFB64(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_258AEFB64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v16 = v7;
    v17 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = HKUILocalizedStringForStateOfMindLabel();
      sub_258B02B14();

      v11 = HKUILocalizedStringForStateOfMindLabel();
      sub_258B02B14();

      sub_2589BFF58();
      v12 = sub_258B030F4();

      if (v12 != -1)
      {
LABEL_4:
        ++v4;
        v6 = v17 + 1;
        v7 = v16 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v13 = *v6;
      result = v6[1];
      *v6 = result;
      v6[1] = v13;
      --v6;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_258AEFCA8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v106 = result;
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v9 + 1 < v8)
      {
        v108 = v8;
        v13 = *(*v6 + 8 * v12);
        v14 = (*v6 + 8 * v9);
        v16 = *v14;
        v15 = v14 + 2;
        v17 = HKUILocalizedStringForStateOfMindLabel();
        sub_258B02B14();

        v18 = HKUILocalizedStringForStateOfMindLabel();
        sub_258B02B14();
        v9 = v19;

        sub_2589BFF58();
        v20 = sub_258B030F4();

        v103 = v11;
        v21 = v11 + 2;
        while (1)
        {
          v12 = v108;
          if (v108 == v21)
          {
            break;
          }

          v23 = *(v15 - 1);
          v22 = *v15;
          v24 = HKUILocalizedStringForStateOfMindLabel();
          sub_258B02B14();

          v25 = HKUILocalizedStringForStateOfMindLabel();
          v9 = sub_258B02B14();

          v26 = sub_258B030F4();

          ++v21;
          ++v15;
          if ((v20 == -1) == (v26 != -1))
          {
            v12 = v21 - 1;
            break;
          }
        }

        v27 = v20 == -1;
        v6 = a3;
        v11 = v103;
        v7 = v106;
        if (v27)
        {
          if (v12 < v103)
          {
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            return result;
          }

          if (v103 < v12)
          {
            v28 = v12 - 1;
            v29 = v103;
            do
            {
              if (v29 != v28)
              {
                v32 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v30 = *(v32 + 8 * v29);
                *(v32 + 8 * v29) = *(v32 + 8 * v28);
                *(v32 + 8 * v28) = v30;
              }
            }

            while (++v29 < v28--);
          }
        }
      }

      v33 = v6[1];
      if (v12 < v33)
      {
        if (__OFSUB__(v12, v11))
        {
          goto LABEL_117;
        }

        if (v12 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_118;
          }

          if (v11 + a4 >= v33)
          {
            v34 = v6[1];
          }

          else
          {
            v34 = v11 + a4;
          }

          if (v34 < v11)
          {
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          if (v12 != v34)
          {
            v105 = v5;
            v35 = *v6;
            v36 = v11;
            v37 = *v6 + 8 * v12 - 8;
            v104 = v36;
            v38 = v36 - v12;
            v107 = v34;
            do
            {
              v109 = v12;
              v39 = *(v35 + 8 * v12);
              v40 = v38;
              v41 = v37;
              do
              {
                v42 = *v41;
                v43 = HKUILocalizedStringForStateOfMindLabel();
                sub_258B02B14();

                v44 = HKUILocalizedStringForStateOfMindLabel();
                sub_258B02B14();
                v9 = v45;

                sub_2589BFF58();
                v46 = sub_258B030F4();

                if (v46 != -1)
                {
                  break;
                }

                if (!v35)
                {
                  goto LABEL_122;
                }

                v47 = *v41;
                *v41 = v41[1];
                v41[1] = v47;
                --v41;
              }

              while (!__CFADD__(v40++, 1));
              v12 = v109 + 1;
              v37 += 8;
              --v38;
            }

            while (v109 + 1 != v107);
            v12 = v107;
            v5 = v105;
            v6 = a3;
            v11 = v104;
            v7 = v106;
          }
        }
      }

      if (v12 < v11)
      {
        goto LABEL_116;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_258A74C78(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v50 = *(v10 + 2);
      v49 = *(v10 + 3);
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        result = sub_258A74C78((v49 > 1), v50 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v51;
      v52 = &v10[16 * v50];
      *(v52 + 4) = v11;
      *(v52 + 5) = v12;
      v9 = v12;
      v53 = *v7;
      if (!*v7)
      {
        goto LABEL_126;
      }

      if (v50)
      {
        while (1)
        {
          v54 = v51 - 1;
          if (v51 >= 4)
          {
            break;
          }

          if (v51 == 3)
          {
            v55 = *(v10 + 4);
            v56 = *(v10 + 5);
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_58:
            if (v58)
            {
              goto LABEL_105;
            }

            v71 = &v10[16 * v51];
            v73 = *v71;
            v72 = *(v71 + 1);
            v74 = __OFSUB__(v72, v73);
            v75 = v72 - v73;
            v76 = v74;
            if (v74)
            {
              goto LABEL_108;
            }

            v77 = &v10[16 * v54 + 32];
            v79 = *v77;
            v78 = *(v77 + 1);
            v65 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v65)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v75, v80))
            {
              goto LABEL_112;
            }

            if (v75 + v80 >= v57)
            {
              if (v57 < v80)
              {
                v54 = v51 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          v81 = &v10[16 * v51];
          v83 = *v81;
          v82 = *(v81 + 1);
          v65 = __OFSUB__(v82, v83);
          v75 = v82 - v83;
          v76 = v65;
LABEL_72:
          if (v76)
          {
            goto LABEL_107;
          }

          v84 = &v10[16 * v54];
          v86 = *(v84 + 4);
          v85 = *(v84 + 5);
          v65 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v65)
          {
            goto LABEL_110;
          }

          if (v87 < v75)
          {
            goto LABEL_3;
          }

LABEL_79:
          v92 = v54 - 1;
          if (v54 - 1 >= v51)
          {
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (!*v6)
          {
            goto LABEL_123;
          }

          v93 = *&v10[16 * v92 + 32];
          v94 = *&v10[16 * v54 + 40];
          sub_258AF03C4((*v6 + 8 * v93), (*v6 + 8 * *&v10[16 * v54 + 32]), (*v6 + 8 * v94), v53);
          if (v5)
          {
          }

          if (v94 < v93)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_258AE8CC8(v10);
          }

          if (v92 >= *(v10 + 2))
          {
            goto LABEL_102;
          }

          v95 = &v10[16 * v92];
          *(v95 + 4) = v93;
          *(v95 + 5) = v94;
          result = sub_258AE8C3C(v54);
          v51 = *(v10 + 2);
          if (v51 <= 1)
          {
            goto LABEL_3;
          }
        }

        v59 = &v10[16 * v51 + 32];
        v60 = *(v59 - 64);
        v61 = *(v59 - 56);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_103;
        }

        v64 = *(v59 - 48);
        v63 = *(v59 - 40);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_104;
        }

        v66 = &v10[16 * v51];
        v68 = *v66;
        v67 = *(v66 + 1);
        v65 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v65)
        {
          goto LABEL_106;
        }

        v65 = __OFADD__(v57, v69);
        v70 = v57 + v69;
        if (v65)
        {
          goto LABEL_109;
        }

        if (v70 >= v62)
        {
          v88 = &v10[16 * v54 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v65 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v65)
          {
            goto LABEL_113;
          }

          if (v57 < v91)
          {
            v54 = v51 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_58;
      }

LABEL_3:
      v8 = v6[1];
      v7 = v106;
      if (v9 >= v8)
      {
        goto LABEL_89;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_89:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_127;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_120:
    result = sub_258AE8CC8(v10);
    v10 = result;
  }

  v96 = *(v10 + 2);
  if (v96 >= 2)
  {
    while (*v6)
    {
      v97 = v10;
      v10 = (v96 - 1);
      v98 = *&v97[16 * v96];
      v99 = *&v97[16 * v96 + 24];
      sub_258AF03C4((*v6 + 8 * v98), (*v6 + 8 * *&v97[16 * v96 + 16]), (*v6 + 8 * v99), v9);
      if (v5)
      {
      }

      if (v99 < v98)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v97 = sub_258AE8CC8(v97);
      }

      if (v96 - 2 >= *(v97 + 2))
      {
        goto LABEL_115;
      }

      v100 = &v97[16 * v96];
      *v100 = v98;
      *(v100 + 1) = v99;
      result = sub_258AE8C3C(v96 - 1);
      v10 = v97;
      v96 = *(v97 + 2);
      if (v96 <= 1)
      {
      }
    }

    goto LABEL_124;
  }
}

uint64_t sub_258AF03C4(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v14 = a4;
    if (a4 != a2 || &a2[8 * v11] <= a4)
    {
      v22 = a2;
      memmove(a4, a2, 8 * v11);
      a2 = v22;
    }

    v23 = a2;
    v37 = &v14[8 * v11];
    if (v9 >= 8 && a2 > v5)
    {
      v35 = v5;
      do
      {
        v36 = v23;
        v24 = v23 - 8;
        v4 -= 8;
        v25 = v37;
        while (1)
        {
          v26 = v14;
          v27 = v4 + 8;
          v28 = *(v25 - 1);
          v25 -= 8;
          v29 = v24;
          v30 = *v24;
          v31 = HKUILocalizedStringForStateOfMindLabel();
          sub_258B02B14();

          v32 = HKUILocalizedStringForStateOfMindLabel();
          sub_258B02B14();

          sub_2589BFF58();
          v33 = sub_258B030F4();

          if (v33 == -1)
          {
            break;
          }

          if (v27 != v37)
          {
            *v4 = *v25;
          }

          v4 -= 8;
          v37 = v25;
          v14 = v26;
          v24 = v29;
          if (v25 <= v26)
          {
            v37 = v25;
            v23 = v36;
            goto LABEL_39;
          }
        }

        if (v27 != v36)
        {
          *v4 = *v29;
        }

        v14 = v26;
        if (v37 <= v26)
        {
          break;
        }

        v23 = v29;
      }

      while (v29 > v35);
      v23 = v29;
    }
  }

  else
  {
    v12 = a2;
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v8);
      a4 = v13;
    }

    v37 = &a4[8 * v8];
    v14 = a4;
    if (v6 >= 8 && v12 < v4)
    {
      while (1)
      {
        v15 = *v12;
        v16 = *v14;
        v17 = HKUILocalizedStringForStateOfMindLabel();
        sub_258B02B14();

        v18 = HKUILocalizedStringForStateOfMindLabel();
        sub_258B02B14();

        sub_2589BFF58();
        v19 = sub_258B030F4();

        if (v19 != -1)
        {
          break;
        }

        v20 = v12;
        v21 = v5 == v12;
        v12 += 8;
        if (!v21)
        {
          goto LABEL_13;
        }

LABEL_14:
        v5 += 8;
        if (v14 >= v37 || v12 >= v4)
        {
          v23 = v5;
          goto LABEL_39;
        }
      }

      v20 = v14;
      v21 = v5 == v14;
      v14 += 8;
      if (v21)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v5 = *v20;
      goto LABEL_14;
    }

    v23 = v5;
  }

LABEL_39:
  if (v23 != v14 || v23 >= &v14[(v37 - v14 + (v37 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v23, v14, 8 * ((v37 - v14) / 8));
  }

  return 1;
}

uint64_t sub_258AF0754(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_258B003E4();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_258AF0CD4(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_258AF084C(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v56 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v49 = a1;
    v50 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v48 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v49;
          v16 = v50;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {
              sub_258B003E4();
              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v50 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v49;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v50 << 9) | (8 * v18)));
        v19 = *(v6 + 40);
        sub_258B03514();
        MEMORY[0x259C93B20](v5);
        v20 = sub_258B03554();
        v21 = -1 << *(v6 + 32);
        v2 = v20 & ~v21;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v22 = *(v6 + 48);
      if (*(v22 + 8 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v21;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v22 + 8 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v53 = v48;
    v54 = v50;
    v55 = v11;
    v52[0] = v49;
    v52[1] = v8;
    v14 = (63 - v21) >> 6;
    v5 = 8 * v14;
    v23 = sub_258B003E4();
    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v42 = swift_slowAlloc();
      memcpy(v42, (v6 + 56), v5);
      v43 = sub_258AF0DE0(v42, v14, v6, v2, v52);

      MEMORY[0x259C945C0](v42, -1, -1);
      v48 = v53;
      v50 = v54;
      v6 = v43;
      goto LABEL_43;
    }

LABEL_18:
    v45 = v14;
    v46 = &v44;
    MEMORY[0x28223BE20](v23);
    v14 = &v44 - v24;
    memcpy(&v44 - v24, (v6 + 56), v5);
    v25 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v26 = v25 - 1;
    v3 = 1;
    v4 = v49;
LABEL_19:
    v47 = v26;
    while (v11)
    {
LABEL_27:
      v30 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v50 << 9) | (8 * v30)));
      v31 = *(v6 + 40);
      sub_258B03514();
      v2 = &v51;
      MEMORY[0x259C93B20](v5);
      v32 = sub_258B03554();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) != 0)
      {
        v37 = *(v6 + 48);
        if (*(v37 + 8 * v34) == v5)
        {
LABEL_20:
          v27 = *(v14 + 8 * v35);
          *(v14 + 8 * v35) = v27 & ~v36;
          if ((v27 & v36) != 0)
          {
            v26 = v47 - 1;
            if (__OFSUB__(v47, 1))
            {
              __break(1u);
            }

            if (v47 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v38 = ~v33;
          while (1)
          {
            v34 = (v34 + 1) & v38;
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) == 0)
            {
              break;
            }

            if (*(v37 + 8 * v34) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v28 = v50;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v29 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v29);
      ++v28;
      if (v11)
      {
        v50 = v29;
        goto LABEL_27;
      }
    }

    if (v12 <= v50 + 1)
    {
      v39 = v50 + 1;
    }

    else
    {
      v39 = v12;
    }

    v50 = v39 - 1;
    v6 = sub_258AF0FB8(v14, v45, v47, v6);
LABEL_43:
    sub_258A8CFE8();
  }

  else
  {

    v6 = MEMORY[0x277D84FA0];
  }

  v40 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_258AF0CD4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  sub_258B03514();
  MEMORY[0x259C93B20](a1);
  v5 = sub_258B03554();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_258AE7544();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_258AF11D0(v7);
  result = v13;
  *v1 = v14;
  return result;
}

uint64_t sub_258AF0DE0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    v18 = *(a3 + 40);
    sub_258B03514();
    MEMORY[0x259C93B20](v17);
    result = sub_258B03554();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v17)
      {
LABEL_2:
        v11 = v7[v21];
        v7[v21] = v11 & ~v22;
        if ((v11 & v22) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v26 = v12 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_258AF0FB8(v7, a2, v9, a3);
}

uint64_t sub_258AF0FB8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_258AF1A58(0, &qword_27F9717C0, MEMORY[0x277D84098]);
  result = sub_258B03184();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_258B03514();
    MEMORY[0x259C93B20](v16);
    result = sub_258B03554();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_258AF11D0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_258B03124();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_258B03514();
        MEMORY[0x259C93B20](v12);
        v13 = sub_258B03554() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

char *sub_258AF1378(uint64_t a1, uint64_t a2)
{
  sub_258B003E4();
  v3 = sub_258AE9BC8(a2);

  v4 = sub_258B003E4();
  v5 = sub_258AE9BC8(v4);

  if (*(v5 + 16) > *(v3 + 16) >> 3)
  {
    v3 = sub_258AF084C(v5, v3);

    v6 = *(v3 + 16);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:

    v7 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v10 = v3;
  sub_258AF0754(v5);

  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = sub_258AE55F4(v6, 0);
  v8 = sub_258AE9A2C(&v10, v7 + 4, v6, v3);
  sub_258B003E4();
  sub_258A8CFE8();
  if (v8 == v6)
  {

LABEL_7:
    v10 = v7;
    sub_258AEF9FC(&v10);
    return v10;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_258AF1508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for LabelsPicker()
{
  result = qword_27F971820;
  if (!qword_27F971820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AF15CC()
{
  sub_258A1E3AC(319);
  if (v0 <= 0x3F)
  {
    sub_258AF1508(319, &qword_27F96F2E8, sub_258A1E3AC, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_258AF1508(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_258AF1508(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_258AF1508(319, &qword_27F970438, sub_258A1E3AC, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_258AF2918(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_258AF17C0()
{
  if (!qword_27F971830)
  {
    sub_258AF1854(255);
    sub_258AF1EA4(&qword_27F9718E0, sub_258AF1854);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971830);
    }
  }
}

void sub_258AF1890(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_258AF19BC(255, a3, a4, a5);
    v6 = sub_258B02574();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258AF18EC()
{
  if (!qword_27F971848)
  {
    sub_258AF1980(255);
    sub_258AF1EA4(&qword_27F9718D8, sub_258AF1980);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971848);
    }
  }
}

void sub_258AF19BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_258AF1A58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Label(255);
    v7 = v6;
    v8 = sub_258AF1EA4(&qword_27F9704C8, type metadata accessor for Label);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_258AF1B44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AF1BA8()
{
  if (!qword_27F971878)
  {
    sub_258AF1CCC(255, &qword_27F971880, sub_258AF1C38, MEMORY[0x277CDE470]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971878);
    }
  }
}

void sub_258AF1C38()
{
  if (!qword_27F971888)
  {
    sub_258AF1CCC(255, &qword_27F971890, sub_258AF1D40, sub_258A563B0);
    sub_258AF1EEC();
    v0 = sub_258B021B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971888);
    }
  }
}

void sub_258AF1CCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258AF1D74()
{
  if (!qword_27F9718A0)
  {
    sub_258AF1E08(255);
    sub_258AF1EA4(&qword_27F9718B8, sub_258AF1E08);
    v0 = sub_258B021D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9718A0);
    }
  }
}

void sub_258AF1E3C()
{
  if (!qword_27F9718B0)
  {
    sub_2589E0B98();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9718B0);
    }
  }
}

uint64_t sub_258AF1EA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258AF1EEC()
{
  result = qword_27F9718C0;
  if (!qword_27F9718C0)
  {
    sub_258AF1CCC(255, &qword_27F971890, sub_258AF1D40, sub_258A563B0);
    sub_258AF1FCC();
    sub_258AF1EA4(&qword_27F96C930, sub_258A563B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9718C0);
  }

  return result;
}

unint64_t sub_258AF1FCC()
{
  result = qword_27F9718C8;
  if (!qword_27F9718C8)
  {
    sub_258AF1D40(255);
    sub_258AF1EA4(&qword_27F9718D0, sub_258AF1D74);
    sub_258AF1EA4(&qword_27F96C938, sub_2589BF83C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9718C8);
  }

  return result;
}

void sub_258AF20AC()
{
  if (!qword_27F9718E8)
  {
    sub_258AF17C0();
    sub_258AF21E8();
    sub_258AF1EA4(&qword_27F971900, sub_258AF17C0);
    type metadata accessor for ShowAllLabelsPicker();
    sub_258AF1EA4(&qword_27F9718F8, type metadata accessor for ShowAllLabelsPicker);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9718E8);
    }
  }
}

void sub_258AF21E8()
{
  if (!qword_27F9718F0)
  {
    type metadata accessor for ShowAllLabelsPicker();
    sub_258AF1EA4(&qword_27F9718F8, type metadata accessor for ShowAllLabelsPicker);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9718F0);
    }
  }
}

uint64_t sub_258AF229C()
{
  v1 = *(type metadata accessor for LabelsPicker() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_258AEF5A0(v2);
}

uint64_t objectdestroyTm_24()
{
  v1 = type metadata accessor for LabelsPicker();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *(v3 + 1);

  v5 = *(v3 + 2);

  v6 = *(v3 + 3);

  v7 = *(v3 + 4);

  v8 = &v3[v1[7]];
  sub_258AF1508(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B01504();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v8, 1, v9))
    {
      (*(v10 + 8))(v8, v9);
    }

    v11 = *(type metadata accessor for AssociationSelectionPhaseSpecs() + 20);
    v12 = sub_258B00AA4();
    (*(*(v12 - 8) + 8))(&v8[v11], v12);
  }

  else
  {
    v13 = *v8;
  }

  v14 = v1[8];
  sub_258AF1508(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_258B006A4();
    (*(*(v15 - 8) + 8))(&v3[v14], v15);
  }

  else
  {
    v16 = *&v3[v14];
  }

  v17 = &v3[v1[9]];
  v18 = *v17;

  v19 = *(v17 + 1);

  v20 = *&v3[v1[10] + 8];

  return swift_deallocObject();
}

uint64_t sub_258AF25CC(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for LabelsPicker() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_258AEF7E8(a1, a2, v6);
}

unint64_t sub_258AF264C()
{
  result = qword_27F971910;
  if (!qword_27F971910)
  {
    sub_258A1E3AC(255);
    sub_258AF1EA4(&qword_27F96C4E0, type metadata accessor for Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971910);
  }

  return result;
}

uint64_t sub_258AF2714(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258AF2774(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258AF27E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AF2848()
{
  v1 = *(type metadata accessor for LabelsPicker() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258AEEFB0(v2);
}

uint64_t sub_258AF28B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258AF2918(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258AF297C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258AF2A14()
{
  type metadata accessor for __HKStateOfMindReflectiveInterval(319);
  if (v0 <= 0x3F)
  {
    sub_258AF297C(319, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_258AF297C(319, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_258AF297C(319, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_258AF297C(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_258AF2BBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C0024(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ReflectiveIntervalPickerButtonView(0);
  sub_258AF8D28(v1 + *(v12 + 32), v11, sub_2589C0024);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B006A4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_258B02E94();
    v16 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_258AF2DB8@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v2 = sub_258B00C34();
  v3 = *(v2 - 8);
  v96 = v2 - 8;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v98 = (&v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AF3634();
  v7 = *(v6 - 8);
  v100 = v6 - 8;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs();
  v11 = *(v10 - 8);
  v94 = v10 - 8;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v92 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v89 = &v88 - v15;
  sub_258AF36E4(0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF372C(0);
  v22 = *(v21 - 8);
  v91 = v21 - 8;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v90 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF3754(0);
  v26 = *(v25 - 8);
  v95 = v25 - 8;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v93 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v1;
  v30 = v1[3];
  v103 = *(v1 + 1);
  v104 = v30;
  v31 = MEMORY[0x277CE11F8];
  sub_258AF297C(0, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
  sub_258B02334();
  v88 = v101;
  v32 = v102;
  v33 = type metadata accessor for ReflectiveIntervalPickerButtonView(0);
  v34 = *(v33 + 24);
  v35 = type metadata accessor for ReflectiveIntervalPickerSelectionView(0);
  v36 = v35[6];
  sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], v31);
  sub_258B02334();
  *v20 = v29;
  *(v20 + 8) = v88;
  *(v20 + 3) = v32;
  v37 = v35[7];
  *&v20[v37] = swift_getKeyPath();
  v38 = MEMORY[0x277CDF458];
  sub_258AF297C(0, &qword_27F96D7C0, MEMORY[0x277CC99E8], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v39 = v35[8];
  *&v20[v39] = swift_getKeyPath();
  sub_2589C0024(0);
  swift_storeEnumTagMultiPayload();
  v40 = v35[9];
  *&v20[v40] = swift_getKeyPath();
  sub_258AF297C(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, v38);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v40) = sub_258B018A4();
  v41 = *(v33 + 28);
  v42 = v89;
  sub_258AC1BC4(v89);
  sub_258AF8D90(v42, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  sub_258B00654();
  v43 = &v20[*(v17 + 44)];
  *v43 = v40;
  *(v43 + 1) = v44;
  *(v43 + 2) = v45;
  *(v43 + 3) = v46;
  *(v43 + 4) = v47;
  v43[40] = 0;
  LOBYTE(v40) = sub_258B018C4();
  v48 = v92;
  sub_258AC1BC4(v92);
  v49 = v48 + *(v94 + 28);
  sub_258B00A84();
  sub_258AF8D90(v48, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  sub_258B00654();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v20;
  v59 = v90;
  sub_258AF7448(v58, v90, sub_258AF36E4);
  v60 = v59 + *(v91 + 44);
  *v60 = v40;
  *(v60 + 8) = v51;
  *(v60 + 16) = v53;
  *(v60 + 24) = v55;
  *(v60 + 32) = v57;
  *(v60 + 40) = 0;
  LOBYTE(v40) = sub_258B018D4();
  sub_258AC1BC4(v42);
  sub_258AF8D90(v42, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  sub_258B00654();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = v93;
  sub_258AF7448(v59, v93, sub_258AF372C);
  v70 = v69 + *(v95 + 44);
  *v70 = v40;
  *(v70 + 8) = v62;
  *(v70 + 16) = v64;
  *(v70 + 24) = v66;
  *(v70 + 32) = v68;
  *(v70 + 40) = 0;
  v71 = sub_258B024F4();
  v73 = v72;
  if (_UISolariumEnabled())
  {
    v74 = 26.0;
  }

  else
  {
    v74 = 12.0;
  }

  sub_258AF8A50(0, &qword_27F971960, sub_258AF3754, sub_258AF74B0);
  v76 = v99;
  v77 = v99 + *(v75 + 36);
  v78 = *(v96 + 28);
  v79 = *MEMORY[0x277CE0118];
  v80 = sub_258B010C4();
  v81 = v98;
  (*(*(v80 - 8) + 104))(v98 + v78, v79, v80);
  *v81 = v74;
  v81[1] = v74;
  v82 = sub_258AF3478();
  v83 = v97;
  sub_258AF7448(v81, v97, MEMORY[0x277CDFC08]);
  v84 = v100;
  *(v83 + *(v100 + 60)) = v82;
  *(v83 + *(v84 + 64)) = 256;
  sub_258AF7448(v83, v77, sub_258AF3634);
  sub_258AF74B0();
  v86 = (v77 + *(v85 + 36));
  *v86 = v71;
  v86[1] = v73;
  return sub_258AF7448(v69, v76, sub_258AF3754);
}

uint64_t sub_258AF3478()
{
  v0 = sub_258B006A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF2BBC(v4);
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x277CDF3D0])
  {
    v6 = [objc_opt_self() systemBackgroundColor];
    sub_258B01F94();
    v7 = sub_258B02024();
  }

  else
  {
    v8 = v5;
    v9 = *MEMORY[0x277CDF3C0];
    v10 = objc_opt_self();
    if (v8 == v9)
    {
      v11 = [v10 quaternarySystemFillColor];
      return sub_258B01F94();
    }

    else
    {
      v12 = [v10 systemBackgroundColor];
      sub_258B01F94();
      v7 = sub_258B02024();

      (*(v1 + 8))(v4, v0);
    }
  }

  return v7;
}

void sub_258AF3634()
{
  if (!qword_27F971940)
  {
    sub_258B00C34();
    sub_258AF8F00(&qword_27F96CAA0, MEMORY[0x277CDFC08]);
    v0 = sub_258B00684();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971940);
    }
  }
}

uint64_t sub_258AF377C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v89 = a1;
  v90 = sub_258B01134();
  v88 = *(v90 - 8);
  v3 = *(v88 + 64);
  v4 = MEMORY[0x28223BE20](v90);
  v87 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v86 = &v74 - v6;
  v7 = sub_258B01B04();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B00084();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_258B01074();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v81 = sub_258B01634();
  v15 = *(v81 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v81);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs();
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF79E0();
  v25 = v24;
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF8968();
  v82 = v29;
  v80 = *(v29 - 8);
  v30 = *(v80 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF8A1C(0);
  v85 = v33;
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v78 = &v74 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v83 = &v74 - v38;
  MEMORY[0x28223BE20](v37);
  v84 = &v74 - v39;
  v75 = type metadata accessor for ReflectiveIntervalPickerSelectionView(0);
  v40 = v1 + *(v75 + 36);
  sub_258AC1BC4(v23);
  v41 = &v23[*(v20 + 28)];
  LOBYTE(v41) = sub_258B00A84();
  sub_258AF8D90(v23, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  if (v41)
  {
    v42 = 0x4024000000000000;
  }

  else
  {
    v42 = 0x4030000000000000;
  }

  *v28 = sub_258B01004();
  *(v28 + 1) = v42;
  v28[16] = 0;
  sub_258AF8B8C(0, &qword_27F971AE8, sub_258AF7A74);
  sub_258AF419C(v2, &v28[*(v43 + 44)]);
  sub_258B01624();
  v44 = sub_258AF8F00(&qword_27F971AD8, sub_258AF79E0);
  v79 = v25;
  sub_258B01D84();
  (*(v15 + 8))(v18, v81);
  sub_258AF8CC8(v28, sub_258AF79E0);
  sub_258B01064();
  sub_258B01054();
  *&v92 = 0;
  *(&v92 + 1) = 0xE000000000000000;
  sub_258B031B4();

  *&v92 = 0xD000000000000014;
  *(&v92 + 1) = 0x8000000258B39DB0;
  v45 = *v2;
  v46 = 0xE700000000000000;
  v47 = 0x4E4F49544F4D45;
  if (*v2 != 1)
  {
    v47 = 0;
    v46 = 0xE000000000000000;
  }

  if (v45 == 2)
  {
    v48 = 1146048333;
  }

  else
  {
    v48 = v47;
  }

  if (v45 == 2)
  {
    v49 = 0xE400000000000000;
  }

  else
  {
    v49 = v46;
  }

  MEMORY[0x259C931B0](v48, v49);

  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  sub_258AFFD94();

  sub_258B01044();

  sub_258B01054();
  sub_258AF6484();
  sub_258B01044();

  sub_258B01054();
  sub_258B01094();
  v50 = sub_258B01B24();
  v52 = v51;
  v54 = v53;
  *&v92 = v79;
  *(&v92 + 1) = v44;
  swift_getOpaqueTypeConformance2();
  v55 = v78;
  v56 = v82;
  sub_258B01D24();
  sub_2589BFFAC(v50, v52, v54 & 1);

  (*(v80 + 8))(v32, v56);
  v81 = v45;
  if (v45 == 1)
  {
    v57 = *(v75 + 24);
    sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    MEMORY[0x259C92900]();
    sub_258B01AF4();
    v58 = sub_258B01B14();
  }

  else
  {
    sub_258B01084();
    v58 = sub_258B01B24();
  }

  v61 = v58;
  v62 = v60;
  v63 = v2;
  v64 = v84;
  v65 = v83;
  v66 = v59;
  sub_258B00AD4();
  sub_2589BFFAC(v61, v66, v62 & 1);

  sub_258AF8CC8(v55, sub_258AF8A1C);
  v67 = v86;
  sub_258B01124();
  sub_258B00AE4();
  v68 = *(v88 + 8);
  v69 = v67;
  v70 = v90;
  v68(v69, v90);
  sub_258AF8CC8(v65, sub_258AF8A1C);
  v71 = v63[3];
  v92 = *(v63 + 1);
  v93 = v71;
  sub_258AF297C(0, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v91);
  if (v91 == v81)
  {
    *&v92 = MEMORY[0x277D84F90];
    sub_258AF8F00(&qword_27F96EFD0, MEMORY[0x277CE01F0]);
    sub_258AF8AC4(0);
    sub_258AF8F00(&qword_27F96EFE0, sub_258AF8AC4);
    v72 = v87;
    sub_258B03114();
  }

  else
  {
    v72 = v87;
    sub_258B01114();
  }

  sub_258B00AF4();
  v68(v72, v70);
  return sub_258AF8CC8(v64, sub_258AF8A1C);
}

uint64_t sub_258AF419C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF8A50(0, &qword_27F971AA0, sub_258AF87FC, sub_2589BF83C);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v62 - v9);
  sub_258AF876C();
  v66 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF86E0(0, &qword_27F971A90, sub_258AF876C, sub_258AF881C);
  v71 = v15;
  v69 = *(v15 - 8);
  v16 = *(v69 + 64);
  MEMORY[0x28223BE20](v15);
  v63 = &v62 - v17;
  sub_258AF863C();
  v19 = *(v18 - 8);
  v68 = v18 - 8;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18 - 8);
  v70 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v62 - v24;
  MEMORY[0x28223BE20](v23);
  v67 = &v62 - v26;
  sub_258AF7AB0();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v65 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v62 - v31;
  *v32 = sub_258B011A4();
  *(v32 + 1) = 0;
  v32[16] = 0;
  sub_258AF8B8C(0, &qword_27F971AF0, sub_258AF7B44);
  sub_258AF48E0(a1, &v32[*(v33 + 44)]);
  v34 = sub_258B020A4();
  sub_2589E0B98();
  v36 = (v10 + *(v35 + 36));
  sub_258AF7FCC(0);
  v38 = *(v37 + 28);
  v39 = *MEMORY[0x277CE1058];
  v40 = sub_258B020B4();
  (*(*(v40 - 8) + 104))(v36 + v38, v39, v40);
  *v36 = swift_getKeyPath();
  *v10 = v34;
  v41 = sub_258B01FC4();
  sub_258AF87FC(0);
  *(v10 + *(v42 + 36)) = v41;
  v43 = sub_258B019D4();
  KeyPath = swift_getKeyPath();
  v45 = (v10 + *(v7 + 44));
  *v45 = KeyPath;
  v45[1] = v43;
  v46 = a1;
  v47 = a1 + *(type metadata accessor for ReflectiveIntervalPickerSelectionView(0) + 36);
  v48 = v64;
  sub_258AC1BC4(v64);
  sub_258AF8D90(v48, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  sub_258B024F4();
  sub_258B00C94();
  sub_258AF8AF8(v10, v14);
  v49 = &v14[*(v66 + 36)];
  v50 = v81;
  *(v49 + 4) = v80;
  *(v49 + 5) = v50;
  *(v49 + 6) = v82;
  v51 = v77;
  *v49 = v76;
  *(v49 + 1) = v51;
  v52 = v79;
  *(v49 + 2) = v78;
  *(v49 + 3) = v52;
  sub_258AF881C();
  v53 = v63;
  sub_258B01E44();
  sub_258AF8D90(v14, sub_258AF876C);
  v54 = v46[3];
  v74 = *(v46 + 1);
  v75 = v54;
  sub_258AF297C(0, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v73);
  if (v73 == *v46)
  {
    v55 = 1.0;
  }

  else
  {
    v55 = 0.0;
  }

  (*(v69 + 32))(v25, v53, v71);
  *&v25[*(v68 + 44)] = v55;
  v56 = v67;
  sub_258AF8BF8(v25, v67, sub_258AF863C);
  v57 = v65;
  sub_258AF8C60(v32, v65, sub_258AF7AB0);
  v58 = v70;
  sub_258AF8C60(v56, v70, sub_258AF863C);
  v59 = v72;
  sub_258AF8C60(v57, v72, sub_258AF7AB0);
  sub_258AF7E40(0, &qword_27F9719C8, sub_258AF7AB0, sub_258AF863C);
  sub_258AF8C60(v58, v59 + *(v60 + 48), sub_258AF863C);
  sub_258AF8CC8(v56, sub_258AF863C);
  sub_258AF8CC8(v32, sub_258AF7AB0);
  sub_258AF8CC8(v58, sub_258AF863C);
  return sub_258AF8CC8(v57, sub_258AF7AB0);
}

uint64_t sub_258AF48E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v201 = a2;
  v3 = sub_258B012D4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v174 = v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A3F24C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v173 = v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  v169[1] = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v171 = v169 - v11;
  sub_258AF84B8(0, &qword_27F96E9D8, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
  v172 = v12;
  v170 = *(v12 - 8);
  v13 = *(v170 + 64);
  MEMORY[0x28223BE20](v12);
  v169[0] = v169 - v14;
  sub_258AF842C(0);
  v176 = v15;
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v177 = v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF838C();
  v205 = v18;
  v203 = *(v18 - 8);
  v19 = *(v203 + 64);
  MEMORY[0x28223BE20](v18);
  v175 = v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF8358(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v200 = v169 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v204 = v169 - v25;
  v197 = sub_258B006A4();
  v195 = *(v197 - 8);
  v26 = *(v195 + 64);
  v27 = MEMORY[0x28223BE20](v197);
  v194 = v169 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v190 = v169 - v29;
  v185 = sub_258B019F4();
  v30 = *(v185 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v185);
  v183 = v169 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v184 = v169 - v34;
  v35 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs();
  v36 = *(v35 - 8);
  v182 = v35 - 8;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v181 = v169 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF82C4();
  v40 = *(v39 - 8);
  v187 = v39 - 8;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v186 = v169 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF829C(0);
  v44 = *(v43 - 8);
  v191 = v43 - 8;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v188 = v169 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF8210();
  v48 = *(v47 - 8);
  v192 = v47 - 8;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v189 = v169 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF81E8(0);
  v52 = *(v51 - 8);
  v196 = v51 - 8;
  v53 = *(v52 + 64);
  v54 = MEMORY[0x28223BE20](v51 - 8);
  v199 = v169 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v193 = v169 - v57;
  MEMORY[0x28223BE20](v56);
  v207 = v169 - v58;
  sub_258AF7C7C(0, &qword_27F9719F0, sub_258AF7D14);
  v60 = v59 - 8;
  v61 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v63 = v169 - v62;
  sub_258AF7C00();
  v65 = v64 - 8;
  v66 = *(*(v64 - 8) + 64);
  v67 = MEMORY[0x28223BE20](v64);
  v198 = v169 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x28223BE20](v67);
  v71 = v169 - v70;
  MEMORY[0x28223BE20](v69);
  v73 = v169 - v72;
  *v63 = sub_258B01004();
  *(v63 + 1) = 0x4010000000000000;
  v63[16] = 0;
  sub_258AF8B8C(0, &qword_27F971AF8, sub_258AF7DA8);
  sub_258AF5948(a1, &v63[*(v74 + 44)]);
  v180 = objc_opt_self();
  v75 = [v180 labelColor];
  *&v63[*(v60 + 44)] = sub_258B01F94();
  sub_258B02504();
  sub_258B00C94();
  sub_2589B96B0(v63, v71);
  v76 = &v71[*(v65 + 44)];
  v77 = v218;
  v78 = v220;
  v79 = v221;
  *(v76 + 4) = v219;
  *(v76 + 5) = v78;
  *(v76 + 6) = v79;
  v80 = v216;
  *v76 = v215;
  *(v76 + 1) = v80;
  *(v76 + 2) = v217;
  *(v76 + 3) = v77;
  v206 = v73;
  sub_258AF8BF8(v71, v73, sub_258AF7C00);
  v81 = a1;
  v179 = a1;
  *&v222 = sub_258AF6484();
  *(&v222 + 1) = v82;
  sub_2589BFF58();
  v83 = sub_258B01B44();
  v85 = v84;
  LOBYTE(v60) = v86;
  sub_258B01994();
  v87 = sub_258B01A94();
  v89 = v88;
  v91 = v90;
  v178 = v92;
  sub_2589BFFAC(v83, v85, v60 & 1);

  v202 = type metadata accessor for ReflectiveIntervalPickerSelectionView(0);
  v93 = v81 + v202[9];
  v94 = v181;
  sub_258AC1BC4(v181);
  sub_258B019D4();
  v95 = v94 + *(v182 + 28);
  v96 = sub_258B00A84();
  v97 = MEMORY[0x277CE0A10];
  if ((v96 & 1) == 0)
  {
    v97 = MEMORY[0x277CE0A18];
  }

  v98 = v183;
  v99 = v185;
  (*(v30 + 104))(v183, *v97, v185);
  v100 = v184;
  (*(v30 + 32))(v184, v98, v99);
  sub_258B01A14();

  (*(v30 + 8))(v100, v99);
  sub_258AF8D90(v94, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  v101 = sub_258B01AE4();
  v103 = v102;
  v105 = v104;
  sub_2589BFFAC(v87, v89, v91 & 1);

  v106 = [v180 labelColor];
  *&v222 = sub_258B01F94();
  v184 = sub_258B01AB4();
  v185 = v107;
  v109 = v108;
  v111 = v110;
  sub_2589BFFAC(v101, v103, v105 & 1);

  v112 = v179;
  v113 = v179 + v202[8];
  v114 = v190;
  sub_258AC14E8(v190);
  v115 = v194;
  v116 = v195;
  v117 = v197;
  (*(v195 + 104))(v194, *MEMORY[0x277CDF3C0], v197);
  LOBYTE(v101) = sub_258B00694();
  v118 = *(v116 + 8);
  v118(v115, v117);
  v118(v114, v117);
  v119 = 1;
  if (v101)
  {
    v120 = 1.0;
  }

  else
  {
    v120 = 0.8;
  }

  v121 = *(v187 + 44);
  KeyPath = swift_getKeyPath();
  v123 = v186;
  *&v186[v121] = KeyPath;
  sub_2589C0024(0);
  swift_storeEnumTagMultiPayload();
  *v123 = v184;
  *(v123 + 1) = v109;
  v123[16] = v111 & 1;
  *(v123 + 3) = v185;
  *(v123 + 4) = v120;
  LOBYTE(v121) = sub_258B01884();
  sub_258B00654();
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v132 = v123;
  v133 = v188;
  sub_258AF7448(v132, v188, sub_258AF82C4);
  v134 = v133 + *(v191 + 44);
  *v134 = v121;
  *(v134 + 8) = v125;
  *(v134 + 16) = v127;
  *(v134 + 24) = v129;
  *(v134 + 32) = v131;
  *(v134 + 40) = 0;
  v135 = swift_getKeyPath();
  v136 = v133;
  v137 = v189;
  sub_258AF7448(v136, v189, sub_258AF829C);
  v138 = v137 + *(v192 + 44);
  *v138 = v135;
  *(v138 + 8) = 0;
  sub_258B02504();
  sub_258B00C94();
  v139 = v193;
  sub_258AF7448(v137, v193, sub_258AF8210);
  v140 = (v139 + *(v196 + 44));
  v141 = v227;
  v140[4] = v226;
  v140[5] = v141;
  v140[6] = v228;
  v142 = v223;
  *v140 = v222;
  v140[1] = v142;
  v143 = v225;
  v140[2] = v224;
  v140[3] = v143;
  sub_258AF7448(v139, v207, sub_258AF81E8);
  if (*v112 == 1)
  {
    sub_258B01084();
    v144 = v112 + v202[6];
    sub_258B02334();
    sub_258AF67C0(v173);
    sub_258B012C4();
    v145 = v169[0];
    sub_258B00644();
    sub_258A41F4C();
    v146 = v177;
    v147 = v172;
    sub_258B01C24();
    (*(v170 + 8))(v145, v147);
    LOBYTE(v144) = sub_258B01884();
    sub_258B00654();
    v148 = v146 + *(v176 + 36);
    *v148 = v144;
    *(v148 + 8) = v149;
    *(v148 + 16) = v150;
    *(v148 + 24) = v151;
    *(v148 + 32) = v152;
    *(v148 + 40) = 0;
    v153 = v112[3];
    v208 = *(v112 + 1);
    v209 = v153;
    sub_258AF297C(0, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
    sub_258B02334();
    v154 = v212;
    v155 = v213;
    v156 = v214;
    LOBYTE(v212) = 0;
    sub_258B02114();
    v157 = v208;
    v158 = *(&v208 + 1);
    *&v208 = v154;
    *(&v208 + 1) = v155;
    v209 = v156;
    v210 = v157;
    v211 = v158;
    sub_258AF850C();
    sub_258AF85E8();
    v159 = v175;
    sub_258B01C74();

    sub_258AF8CC8(v146, sub_258AF842C);
    (*(v203 + 32))(v204, v159, v205);
    v119 = 0;
  }

  v160 = v204;
  (*(v203 + 56))(v204, v119, 1, v205);
  v161 = v198;
  sub_258AF8C60(v206, v198, sub_258AF7C00);
  v162 = v207;
  v163 = v199;
  sub_258AF8D28(v207, v199, sub_258AF81E8);
  v164 = v200;
  sub_258AF8C60(v160, v200, sub_258AF8358);
  v165 = v201;
  sub_258AF8C60(v161, v201, sub_258AF7C00);
  sub_258AF7B78();
  v167 = v166;
  sub_258AF8D28(v163, v165 + *(v166 + 48), sub_258AF81E8);
  sub_258AF8C60(v164, v165 + *(v167 + 64), sub_258AF8358);
  sub_258AF8CC8(v160, sub_258AF8358);
  sub_258AF8D90(v162, sub_258AF81E8);
  sub_258AF8CC8(v206, sub_258AF7C00);
  sub_258AF8CC8(v164, sub_258AF8358);
  sub_258AF8D90(v163, sub_258AF81E8);
  return sub_258AF8CC8(v161, sub_258AF7C00);
}

uint64_t sub_258AF5948@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258B019F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v121 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v122 = &v112 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v117 = &v112 - v12;
  MEMORY[0x28223BE20](v11);
  v119 = &v112 - v13;
  v126 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs();
  v14 = *(*(v126 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v126);
  v120 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v112 - v17;
  sub_2589E0B98();
  v20 = v19;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AF7F38();
  v116 = v24;
  v25 = *(*(v24 - 1) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF7F04(0);
  v114 = v28;
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AF7EBC(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v35 = MEMORY[0x28223BE20](v34);
  v118 = a1;
  v36 = *a1;
  v124 = v35;
  v125 = a2;
  v123 = v37;
  v127 = v4;
  v128 = v38;
  v129 = v5;
  v130 = &v112 - v39;
  v40 = sub_258B020A4();
  v41 = (v23 + *(v20 + 36));
  sub_258AF7FCC(0);
  v43 = *(v42 + 28);
  v44 = *MEMORY[0x277CE1050];
  v45 = sub_258B020B4();
  (*(*(v45 - 8) + 104))(v41 + v43, v44, v45);
  *v41 = swift_getKeyPath();
  *v23 = v40;
  LODWORD(v40) = sub_258B014B4();
  sub_258AF7448(v23, v27, sub_2589E0B98);
  *&v27[v116[9]] = v40;
  v115 = v118 + *(type metadata accessor for ReflectiveIntervalPickerSelectionView(0) + 36);
  sub_258AC1BC4(v18);
  sub_258B018F4();
  v46 = &v18[*(v126 + 20)];
  v47 = sub_258B00A84();
  v48 = v129;
  v49 = *(v129 + 104);
  v50 = MEMORY[0x277CE0A10];
  if ((v47 & 1) == 0)
  {
    v50 = MEMORY[0x277CE0A18];
  }

  v51 = *v50;
  v52 = v117;
  v53 = v127;
  v118 = (v129 + 104);
  v116 = v49;
  (v49)(v117, v51, v127);
  v54 = *(v48 + 32);
  v55 = v119;
  v117 = (v48 + 32);
  v113 = v54;
  v54(v119, v52, v53);
  v56 = sub_258B01A14();

  v57 = *(v48 + 8);
  v129 = v48 + 8;
  v119 = v57;
  (v57)(v55, v53);
  sub_258AF8D90(v18, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  KeyPath = swift_getKeyPath();
  sub_258AF7448(v27, v31, sub_258AF7F38);
  v59 = &v31[*(v114 + 36)];
  *v59 = KeyPath;
  v59[1] = v56;
  sub_258B01994();
  sub_258AF8000();
  sub_258B01BB4();
  sub_258AF8D90(v31, sub_258AF7F04);
  v134 = 0;
  v135 = 0xE000000000000000;
  sub_258B031B4();

  v134 = 0xD000000000000014;
  v135 = 0x8000000258B39DB0;
  v60 = 0xE700000000000000;
  v61 = 0x4E4F49544F4D45;
  if (v36 != 1)
  {
    v61 = 0;
    v60 = 0xE000000000000000;
  }

  if (v36 == 2)
  {
    v62 = 1146048333;
  }

  else
  {
    v62 = v61;
  }

  if (v36 == 2)
  {
    v63 = 0xE400000000000000;
  }

  else
  {
    v63 = v60;
  }

  MEMORY[0x259C931B0](v62, v63);

  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v64 = sub_258AFFD94();
  v66 = v65;

  v134 = v64;
  v135 = v66;
  sub_2589BFF58();
  v67 = sub_258B01B44();
  v69 = v68;
  v71 = v70;
  LODWORD(v134) = sub_258B014B4();
  v72 = sub_258B01AB4();
  v74 = v73;
  v76 = v75;
  sub_2589BFFAC(v67, v69, v71 & 1);

  v77 = v120;
  sub_258AC1BC4(v120);
  sub_258B018F4();
  v78 = v77 + *(v126 + 20);
  v79 = sub_258B00A84();
  v80 = MEMORY[0x277CE0A10];
  if ((v79 & 1) == 0)
  {
    v80 = MEMORY[0x277CE0A18];
  }

  v81 = v121;
  v82 = v127;
  (v116)(v121, *v80, v127);
  v83 = v122;
  v113(v122, v81, v82);
  sub_258B01A14();

  (v119)(v83, v82);
  sub_258AF8D90(v77, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  v84 = sub_258B01AE4();
  v86 = v85;
  LOBYTE(v82) = v87;
  sub_2589BFFAC(v72, v74, v76 & 1);

  sub_258B01994();
  v88 = sub_258B01A94();
  v127 = v89;
  v91 = v90;
  v129 = v92;
  sub_2589BFFAC(v84, v86, v82 & 1);

  v126 = swift_getKeyPath();
  sub_258B02504();
  sub_258B00C94();
  *&v148[55] = v154;
  *&v148[71] = v155;
  *&v148[87] = v156;
  *&v148[103] = v157;
  *&v148[7] = v151;
  *&v148[23] = v152;
  v150 = v91 & 1;
  *&v148[39] = v153;
  v93 = v123;
  v94 = v124;
  v95 = *(v123 + 16);
  v96 = v128;
  v95(v128, v130, v124);
  v97 = v125;
  v95(v125, v96, v94);
  sub_258AF7E40(0, &qword_27F971A08, sub_258AF7EBC, sub_2589BFB4C);
  v99 = *(v98 + 48);
  *(v133 + 9) = *v148;
  *(&v133[4] + 9) = *&v148[64];
  v100 = (v97 + v99);
  v101 = v88;
  *&v131 = v88;
  v102 = v126;
  v103 = v127;
  *(&v131 + 1) = v127;
  LOBYTE(v132) = v91 & 1;
  *(&v132 + 1) = *v149;
  DWORD1(v132) = *&v149[3];
  v104 = v129;
  *(&v132 + 1) = v129;
  *&v133[0] = v126;
  BYTE8(v133[0]) = 0;
  *(&v133[5] + 9) = *&v148[80];
  *(&v133[6] + 9) = *&v148[96];
  *(&v133[7] + 1) = *&v148[111];
  *(&v133[1] + 9) = *&v148[16];
  *(&v133[2] + 9) = *&v148[32];
  *(&v133[3] + 9) = *&v148[48];
  v105 = v133[5];
  v100[6] = v133[4];
  v100[7] = v105;
  v106 = v133[7];
  v100[8] = v133[6];
  v100[9] = v106;
  v107 = v133[1];
  v100[2] = v133[0];
  v100[3] = v107;
  v108 = v133[3];
  v100[4] = v133[2];
  v100[5] = v108;
  v109 = v132;
  *v100 = v131;
  v100[1] = v109;
  sub_258AF8D28(&v131, &v134, sub_2589BFB4C);
  v110 = *(v93 + 8);
  v110(v130, v94);
  v145 = *&v148[64];
  v146 = *&v148[80];
  v147[0] = *&v148[96];
  v141 = *v148;
  v142 = *&v148[16];
  v143 = *&v148[32];
  v134 = v101;
  v135 = v103;
  v136 = v91 & 1;
  *v137 = *v149;
  *&v137[3] = *&v149[3];
  v138 = v104;
  v139 = v102;
  v140 = 0;
  *(v147 + 15) = *&v148[111];
  v144 = *&v148[48];
  sub_258AF8D90(&v134, sub_2589BFB4C);
  return (v110)(v128, v94);
}

uint64_t sub_258AF6484()
{
  v1 = sub_258B00084();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - v7;
  v9 = sub_258B00224();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0 == 2)
  {
    v22 = type metadata accessor for ReflectiveIntervalPickerSelectionView(0);
    v23 = v0 + *(v22 + 28);
    sub_258AC1BF8(v13);
    v24 = *(v22 + 24);
    sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    MEMORY[0x259C92900]();
    LOBYTE(v24) = sub_258B00124();
    (*(v2 + 8))(v8, v1);
    (*(v10 + 8))(v13, v9);
    if (v24)
    {
      return sub_258AF72E8();
    }
  }

  else
  {
    if (*v0 != 1)
    {
      return sub_258AF72E8();
    }

    v14 = type metadata accessor for ReflectiveIntervalPickerSelectionView(0);
    v15 = v0 + *(v14 + 28);
    sub_258AC1BF8(v13);
    v16 = *(v14 + 24);
    sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    v25[0] = v17;
    v25[1] = v16;
    MEMORY[0x259C92900]();
    LOBYTE(v16) = sub_258B00124();
    v18 = *(v2 + 8);
    v18(v8, v1);
    (*(v10 + 8))(v13, v9);
    if (v16)
    {
      sub_258B00044();
      MEMORY[0x259C92900](v25[0]);
      sub_258AFFFF4();
      v20 = v19;
      v18(v6, v1);
      v18(v8, v1);
      if (v20 <= 60.0)
      {
        return sub_258AF72E8();
      }
    }
  }

  return sub_258AF71CC();
}

uint64_t sub_258AF67C0@<X0>(char *a1@<X8>)
{
  v87 = a1;
  v1 = sub_258B00384();
  v79 = *(v1 - 8);
  v80 = v1;
  v2 = *(v79 + 64);
  MEMORY[0x28223BE20](v1);
  v78 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_258B00204();
  v82 = *(v84 - 8);
  v4 = *(v82 + 64);
  MEMORY[0x28223BE20](v84);
  v81 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F7DCC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AED27C();
  v86 = v9;
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v88 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = &v76 - v13;
  v91 = sub_258B00224();
  v95 = *(v91 - 8);
  v14 = *(v95 + 64);
  MEMORY[0x28223BE20](v91);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_258B00084();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v77 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v76 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v76 - v25;
  v27 = type metadata accessor for ReflectiveIntervalPickerSelectionView(0);
  v93 = *(v27 + 28);
  sub_258AC1BF8(v16);
  v90 = *(v27 + 24);
  sub_258AF297C(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  v89 = v28;
  MEMORY[0x259C92900]();
  v94 = v26;
  sub_258B00114();
  v92 = v18;
  v29 = *(v18 + 8);
  v29(v24, v17);
  v30 = v95 + 8;
  v31 = *(v95 + 8);
  v32 = v91;
  v31(v16, v91);
  v33 = v30;
  sub_258AC1BF8(v16);
  MEMORY[0x259C92900](v89);
  LOBYTE(v30) = sub_258B00124();
  v89 = v29;
  v90 = v18 + 8;
  v29(v24, v17);
  v34 = v32;
  v35 = v31;
  v95 = v33;
  v31(v16, v34);
  if (v30)
  {
    v36 = v92;
    sub_258B00044();
    sub_258AF8F00(&qword_27F96F0D8, MEMORY[0x277CC9578]);
    v37 = v94;
    result = sub_258B02A74();
    if (result)
    {
      v39 = v17;
      v40 = v37;
      v41 = *(v36 + 32);
      v42 = v85;
      v41(v85, v40, v17);
      v43 = v86;
      v41((v42 + *(v86 + 48)), v24, v17);
      v44 = v88;
      sub_258AF8D28(v42, v88, sub_258AED27C);
      v45 = *(v43 + 48);
      v46 = v87;
      v41(v87, v44, v39);
      v47 = v89;
      v89((v44 + v45), v39);
LABEL_9:
      sub_258AF7448(v42, v44, sub_258AED27C);
      v63 = *(v43 + 48);
      sub_258A3F24C();
      v41(&v46[*(v64 + 36)], (v44 + v63), v39);
      return v47(v44, v39);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_258AC1BF8(v16);
  v49 = v81;
  v48 = v82;
  v50 = v84;
  (*(v82 + 104))(v81, *MEMORY[0x277CC9968], v84);
  v51 = v83;
  sub_258B001C4();
  (*(v48 + 8))(v49, v50);
  v35(v16, v34);
  v52 = v92;
  v53 = (*(v92 + 48))(v51, 1, v17);
  v39 = v17;
  v54 = v94;
  if (v53 == 1)
  {
    sub_258AF8D90(v51, sub_2589F7DCC);
    v55 = v78;
    sub_258B00364();
    v56 = sub_258B00374();
    v57 = sub_258B02E84();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = v54;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v96 = v60;
      *v59 = 136446210;
      *(v59 + 4) = sub_2589F1F78(0xD00000000000004CLL, 0x8000000258B39E30, &v96);
      _os_log_impl(&dword_2589A1000, v56, v57, "[%{public}s] Unable to determine start of next day", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x259C945C0](v60, -1, -1);
      v61 = v59;
      v54 = v58;
      MEMORY[0x259C945C0](v61, -1, -1);
    }

    (*(v79 + 8))(v55, v80);
    v44 = v88;
    v47 = v89;
    sub_258AF8F00(&qword_27F96F0D8, MEMORY[0x277CC9578]);
    result = sub_258B02A74();
    if (result)
    {
      v42 = v85;
      (*(v52 + 16))(v85, v54, v39);
      v43 = v86;
      v41 = *(v52 + 32);
      v41((v42 + *(v86 + 48)), v54, v39);
      sub_258AF8D28(v42, v44, sub_258AED27C);
      v62 = *(v43 + 48);
      v46 = v87;
      v41(v87, v44, v39);
      v47(v44 + v62, v39);
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v65 = v94;
  v66 = *(v52 + 32);
  v67 = v77;
  v66(v77, v51, v39);
  sub_258B00004();
  sub_258AF8F00(&qword_27F96F0D8, MEMORY[0x277CC9578]);
  v68 = sub_258B02A74();
  v69 = v89;
  result = (v89)(v67, v39);
  if (v68)
  {
    v70 = v85;
    v66(v85, v65, v39);
    v71 = v86;
    v66((v70 + *(v86 + 48)), v24, v39);
    v44 = v88;
    sub_258AF8D28(v70, v88, sub_258AED27C);
    v72 = *(v71 + 48);
    v47 = v69;
    v73 = v87;
    v66(v87, v44, v39);
    v47(v44 + v72, v39);
    sub_258AF7448(v70, v44, sub_258AED27C);
    v74 = *(v71 + 48);
    sub_258A3F24C();
    v66(&v73[*(v75 + 36)], v44 + v74, v39);
    return v47(v44, v39);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_258AF71CC()
{
  if (*v0 == 2)
  {
    if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

LABEL_8:
    swift_once();
    return sub_258AFFD94();
  }

  if (*v0 == 1)
  {
    if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_258AF72E8()
{
  sub_258B031B4();

  v1 = *v0;
  v2 = 0xE700000000000000;
  v3 = 0x4E4F49544F4D45;
  if (*v0 != 1)
  {
    v3 = 0;
    v2 = 0xE000000000000000;
  }

  if (v1 == 2)
  {
    v4 = 1146048333;
  }

  else
  {
    v4 = v3;
  }

  if (v1 == 2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x259C931B0](v4, v5);

  MEMORY[0x259C931B0](0x504952435345445FLL, 0xEC0000004E4F4954);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v6 = sub_258AFFD94();

  return v6;
}

uint64_t sub_258AF7448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258AF74B0()
{
  if (!qword_27F971968)
  {
    sub_258AF3634();
    sub_258AF8F00(&qword_27F971970, sub_258AF3634);
    v0 = sub_258B01294();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971968);
    }
  }
}

void sub_258AF756C()
{
  type metadata accessor for __HKStateOfMindReflectiveInterval(319);
  if (v0 <= 0x3F)
  {
    sub_258AF297C(319, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_258AF297C(319, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_258AF297C(319, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_258AF297C(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_258AF297C(319, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_258AF7740()
{
  result = qword_27F971988;
  if (!qword_27F971988)
  {
    sub_258AF8A50(255, &qword_27F971960, sub_258AF3754, sub_258AF74B0);
    sub_258AF7894(&qword_27F971990, sub_258AF3754, sub_258AF7858);
    sub_258AF8F00(&qword_27F9719B0, sub_258AF74B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971988);
  }

  return result;
}

uint64_t sub_258AF7894(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258AF7914()
{
  result = qword_27F9719A0;
  if (!qword_27F9719A0)
  {
    sub_258AF36E4(255);
    sub_258AF8F00(&qword_27F9719A8, type metadata accessor for ReflectiveIntervalPickerSelectionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9719A0);
  }

  return result;
}

void sub_258AF79E0()
{
  if (!qword_27F9719B8)
  {
    sub_258AF7A74(255);
    sub_258AF8F00(&qword_27F971AC8, sub_258AF7A74);
    v0 = sub_258B021D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9719B8);
    }
  }
}

void sub_258AF7AB0()
{
  if (!qword_27F9719D0)
  {
    sub_258AF7B44(255);
    sub_258AF8F00(&qword_27F971A80, sub_258AF7B44);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9719D0);
    }
  }
}

void sub_258AF7B78()
{
  if (!qword_27F9719E0)
  {
    sub_258AF7C00();
    sub_258AF81E8(255);
    sub_258AF8358(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F9719E0);
    }
  }
}

void sub_258AF7C00()
{
  if (!qword_27F9719E8)
  {
    sub_258AF7C7C(255, &qword_27F9719F0, sub_258AF7D14);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9719E8);
    }
  }
}

void sub_258AF7C7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258AF84B8(255, &qword_27F96C860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AF7D14()
{
  if (!qword_27F9719F8)
  {
    sub_258AF7DA8(255);
    sub_258AF8F00(&qword_27F971A38, sub_258AF7DA8);
    v0 = sub_258B021D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9719F8);
    }
  }
}

void sub_258AF7DE4(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_258AF7E40(255, a3, a4, a5);
    v6 = sub_258B02574();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258AF7E40(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_258AF7F38()
{
  if (!qword_27F971A20)
  {
    sub_2589E0B98();
    sub_258AF84B8(255, &qword_27F96F3D8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE0730]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971A20);
    }
  }
}

unint64_t sub_258AF8000()
{
  result = qword_27F971A28;
  if (!qword_27F971A28)
  {
    sub_258AF7F04(255);
    sub_258AF80E0(&qword_27F971A30, sub_258AF7F38, sub_258AF8164);
    sub_258AF8F00(&qword_27F96C938, sub_2589BF83C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971A28);
  }

  return result;
}

uint64_t sub_258AF80E0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_2589E0C28();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258AF8164()
{
  result = qword_27F96F3E8;
  if (!qword_27F96F3E8)
  {
    sub_258AF84B8(255, &qword_27F96F3D8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE0730]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F3E8);
  }

  return result;
}

void sub_258AF8210()
{
  if (!qword_27F971A48)
  {
    sub_258AF829C(255);
    sub_2589BFC30(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971A48);
    }
  }
}

void sub_258AF82C4()
{
  if (!qword_27F970BE0)
  {
    sub_258AF84B8(255, &qword_27F970BE8, MEMORY[0x277CE0BD8], MEMORY[0x277CDF910], MEMORY[0x277CDFAB8]);
    type metadata accessor for LoggingFlowBlendMode();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970BE0);
    }
  }
}

void sub_258AF838C()
{
  if (!qword_27F971A60)
  {
    sub_258AF842C(255);
    sub_258AF850C();
    sub_258AF85E8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F971A60);
    }
  }
}

void sub_258AF8454(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AF84B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258AF850C()
{
  result = qword_27F971A70;
  if (!qword_27F971A70)
  {
    sub_258AF842C(255);
    sub_258AF84B8(255, &qword_27F96E9D8, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
    sub_258A41F4C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971A70);
  }

  return result;
}

unint64_t sub_258AF85E8()
{
  result = qword_27F971A78;
  if (!qword_27F971A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971A78);
  }

  return result;
}

void sub_258AF863C()
{
  if (!qword_27F971A88)
  {
    sub_258AF86E0(255, &qword_27F971A90, sub_258AF876C, sub_258AF881C);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971A88);
    }
  }
}

void sub_258AF86E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_258AF876C()
{
  if (!qword_27F971A98)
  {
    sub_258AF8A50(255, &qword_27F971AA0, sub_258AF87FC, sub_2589BF83C);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971A98);
    }
  }
}

unint64_t sub_258AF8858()
{
  result = qword_27F971AB8;
  if (!qword_27F971AB8)
  {
    sub_258AF8A50(255, &qword_27F971AA0, sub_258AF87FC, sub_2589BF83C);
    sub_258AF80E0(&qword_27F971AC0, sub_258AF87FC, sub_2589C02DC);
    sub_258AF8F00(&qword_27F96C938, sub_2589BF83C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971AB8);
  }

  return result;
}

void sub_258AF8968()
{
  if (!qword_27F971AD0)
  {
    sub_258AF79E0();
    sub_258AF8F00(&qword_27F971AD8, sub_258AF79E0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F971AD0);
    }
  }
}

void sub_258AF8A50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_258AF8AF8(uint64_t a1, uint64_t a2)
{
  sub_258AF8A50(0, &qword_27F971AA0, sub_258AF87FC, sub_2589BF83C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258AF8B8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258AF8BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AF8C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AF8CC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258AF8D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AF8D90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_258AF8DF0()
{
  result = qword_27F971B00;
  if (!qword_27F971B00)
  {
    sub_258AF8A1C(255);
    sub_258AF79E0();
    sub_258AF8F00(&qword_27F971AD8, sub_258AF79E0);
    swift_getOpaqueTypeConformance2();
    sub_258AF8F00(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971B00);
  }

  return result;
}

uint64_t sub_258AF8F00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AssessmentsNotificationSettingsView.init(navigationTitleText:assessmentsSettingModel:notificationSettingsModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 48) = a1;
  *(a5 + 56) = a2;
  *a5 = sub_2589C0528;
  *(a5 + 8) = a3;
  *(a5 + 16) = 0;
  result = swift_allocObject();
  *(result + 16) = a4;
  *(a5 + 24) = sub_258A35EA8;
  *(a5 + 32) = result;
  *(a5 + 40) = 0;
  return result;
}

uint64_t AssessmentsNotificationSettingsView.body.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  v8 = v0[6];
  v7 = v0[7];
  type metadata accessor for AssessmentsSettingsModel();
  sub_258AF9180(&qword_27F96EDD0, type metadata accessor for AssessmentsSettingsModel);
  sub_258B00744();
  type metadata accessor for NotificationSettingsModel();
  sub_258AF9180(&qword_27F96D308, type metadata accessor for NotificationSettingsModel);
  sub_258B00744();
  sub_258B00A24();
  sub_258B00A24();
  v10 = v9;
  sub_258B02114();
  sub_258AF91C8();
  sub_2589BFF58();
  sub_258B01CB4();
}

uint64_t sub_258AF9180(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258AF91C8()
{
  result = qword_27F971B08;
  if (!qword_27F971B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971B08);
  }

  return result;
}

uint64_t sub_258AF923C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_258AF9284(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t _s14ShowMoreButtonVMa()
{
  result = qword_27F971B10;
  if (!qword_27F971B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AF9358()
{
  sub_258AFA6D8(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2589C0D10();
    if (v1 <= 0x3F)
    {
      sub_2589FCE08();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258AF9440@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_258AFA2B0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AFA554(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = sub_258B01194();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_258AFA590();
  sub_258AF9640(v2, &v7[*(v13 + 44)]);
  sub_258B024F4();
  sub_258B00C94();
  sub_258AFA810(v7, v12, sub_258AFA2B0);
  v14 = &v12[*(v9 + 44)];
  v15 = v22[5];
  *(v14 + 4) = v22[4];
  *(v14 + 5) = v15;
  *(v14 + 6) = v22[6];
  v16 = v22[1];
  *v14 = v22[0];
  *(v14 + 1) = v16;
  v17 = v22[3];
  *(v14 + 2) = v22[2];
  *(v14 + 3) = v17;
  sub_258AFA628(0, &qword_27F971B68, sub_258AFA554, sub_258AFA69C);
  v19 = a1 + *(v18 + 36);
  sub_258B02494();
  LOBYTE(v9) = sub_258B01874();
  sub_258AFA69C(0);
  *(v19 + *(v20 + 36)) = v9;
  return sub_258AFA810(v12, a1, sub_258AFA554);
}

uint64_t sub_258AF9640@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v91 = a2;
  v81 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  v3 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v79 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v76 - v10;
  v82 = _s14ShowMoreButtonVMa();
  v77 = *(v82 - 8);
  v12 = *(v77 + 64);
  MEMORY[0x28223BE20](v82);
  sub_258A8773C();
  v78 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AFA424(0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AFA3E8(0);
  v85 = v23;
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v84 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AFA3B4(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v90 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v87 = &v76 - v30;
  v89 = sub_258B023A4();
  v88 = *(v89 - 8);
  v31 = *(v88 + 64);
  v32 = MEMORY[0x28223BE20](v89);
  v86 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v83 = &v76 - v34;
  sub_258B02394();
  sub_258AFA9F0(a1, &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), _s14ShowMoreButtonVMa);
  v35 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v36 = swift_allocObject() + v35;
  v37 = a1;
  v38 = v22;
  sub_258AFA810(&v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v36, _s14ShowMoreButtonVMa);
  v92 = v37;
  sub_258B02174();
  sub_258AC1060(v11);
  sub_258AFA7B0(v11, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00C94();
  (*(v14 + 32))(v22, v17, v78);
  v39 = &v22[*(v19 + 44)];
  v40 = v99;
  *(v39 + 4) = v98;
  *(v39 + 5) = v40;
  *(v39 + 6) = v100;
  v41 = v95;
  *v39 = v94;
  *(v39 + 1) = v41;
  v42 = v97;
  *(v39 + 2) = v96;
  *(v39 + 3) = v42;
  v43 = sub_258B01864();
  v44 = v79;
  sub_258AC1060(v79);
  v45 = v80;
  sub_258AFA9F0(v44 + *(v6 + 56), v80, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  v46 = v44;
  v47 = v45;
  sub_258AFA7B0(v46, type metadata accessor for StateOfMindTimeline.Styles);
  if (*(v45 + *(v81 + 24)))
  {
    v48 = v45 + *(v81 + 20);
    if ((sub_258B00A84() & 1) == 0)
    {
      sub_258ABF198();
    }

    sub_258AFA7B0(v47, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  }

  else
  {
    sub_258AFA7B0(v45, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  }

  v49 = v85;
  v50 = v84;
  sub_258B00654();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_258AFA810(v38, v50, sub_258AFA424);
  v59 = v50 + *(v49 + 36);
  *v59 = v43;
  *(v59 + 8) = v52;
  *(v59 + 16) = v54;
  *(v59 + 24) = v56;
  *(v59 + 32) = v58;
  *(v59 + 40) = 0;
  v60 = *(v37 + *(v82 + 24));
  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v60 = sub_258A74828(0, *(v60 + 2) + 1, 1, v60);
  }

  v62 = *(v60 + 2);
  v61 = *(v60 + 3);
  if (v62 >= v61 >> 1)
  {
    v60 = sub_258A74828((v61 > 1), v62 + 1, 1, v60);
  }

  *(v60 + 2) = v62 + 1;
  v63 = &v60[16 * v62];
  *(v63 + 4) = 0x7474754265726F4DLL;
  *(v63 + 5) = 0xEA00000000006E6FLL;
  v93 = &unk_2869D4670;
  v64 = sub_258B003E4();
  sub_2589FC8C8(v64);
  sub_2589FCE08();
  sub_258AFA878(&qword_280DF8940, sub_2589FCE08);
  sub_258B02A34();

  sub_258AFA8C0();
  v65 = v87;
  sub_258B01DD4();

  sub_258AFA7B0(v50, sub_258AFA3E8);
  v66 = v88;
  v67 = *(v88 + 16);
  v68 = v86;
  v69 = v83;
  v70 = v89;
  v67(v86, v83, v89);
  v71 = v90;
  sub_258AFA9F0(v65, v90, sub_258AFA3B4);
  v72 = v91;
  v67(v91, v68, v70);
  sub_258AFA344();
  sub_258AFA9F0(v71, &v72[*(v73 + 48)], sub_258AFA3B4);
  sub_258AFA7B0(v65, sub_258AFA3B4);
  v74 = *(v66 + 8);
  v74(v69, v70);
  sub_258AFA7B0(v71, sub_258AFA3B4);
  return (v74)(v68, v70);
}

uint64_t sub_258AF9F80@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = sub_258B019F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v36 = sub_258AFFD94();
  v37 = v10;
  sub_2589BFF58();
  v11 = sub_258B01B44();
  v13 = v12;
  v15 = v14;
  v32 = v16;
  sub_258AC1060(v9);
  v34 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_258AFA7B0(v9, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B018F4();
  (*(v2 + 104))(v5, *MEMORY[0x277CE0A10], v1);
  sub_258B01A14();

  (*(v2 + 8))(v5, v1);
  v17 = sub_258B01AE4();
  v33 = v18;
  v20 = v19;
  sub_2589BFFAC(v11, v13, v15 & 1);

  sub_258AC1060(v9);
  sub_258AFA7B0(v9, v34);
  v21 = [objc_opt_self() secondaryLabelColor];
  v36 = sub_258B01F94();
  v22 = v33;
  v23 = sub_258B01AB4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_2589BFFAC(v17, v22, v20 & 1);

  v31 = v35;
  *v35 = v23;
  v31[1] = v25;
  *(v31 + 16) = v27 & 1;
  v31[3] = v29;
  return result;
}

void sub_258AFA2B0()
{
  if (!qword_27F971B20)
  {
    sub_258AFA6D8(255, &qword_27F971B28, sub_258AFA344, MEMORY[0x277CE14B8]);
    sub_258AFA4CC();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971B20);
    }
  }
}

void sub_258AFA344()
{
  if (!qword_27F971B30)
  {
    sub_258B023A4();
    sub_258AFA3B4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F971B30);
    }
  }
}

void sub_258AFA460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_258AFA4CC()
{
  result = qword_27F971B50;
  if (!qword_27F971B50)
  {
    sub_258AFA6D8(255, &qword_27F971B28, sub_258AFA344, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971B50);
  }

  return result;
}

void sub_258AFA590()
{
  if (!qword_27F971B60)
  {
    sub_258AFA6D8(255, &qword_27F971B28, sub_258AFA344, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971B60);
    }
  }
}

void sub_258AFA628(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258AFA6D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258AFA73C()
{
  v1 = _s14ShowMoreButtonVMa();
  v2 = v0 + *(v1 + 20) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_258AFA7B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258AFA810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AFA878(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258AFA8C0()
{
  result = qword_27F971B78;
  if (!qword_27F971B78)
  {
    sub_258AFA3E8(255);
    sub_258AFA940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971B78);
  }

  return result;
}

unint64_t sub_258AFA940()
{
  result = qword_27F971B80;
  if (!qword_27F971B80)
  {
    sub_258AFA424(255);
    sub_258AFA878(&qword_27F96E060, sub_258A8773C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971B80);
  }

  return result;
}

uint64_t sub_258AFA9F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_258AFAA58()
{
  result = qword_27F971B88;
  if (!qword_27F971B88)
  {
    sub_258AFA628(255, &qword_27F971B68, sub_258AFA554, sub_258AFA69C);
    sub_258AFAB38();
    sub_258AFA878(&qword_27F971BA0, sub_258AFA69C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971B88);
  }

  return result;
}

unint64_t sub_258AFAB38()
{
  result = qword_27F971B90;
  if (!qword_27F971B90)
  {
    sub_258AFA554(255);
    sub_258AFA878(&qword_27F971B98, sub_258AFA2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971B90);
  }

  return result;
}

__n128 sub_258AFABE8(float a1, float32x4_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = __sincospif_stret(a1 * 0.0055556);
  v3 = vmulq_f32(a2, a2);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  *v3.f32 = vrsqrte_f32(v4);
  *v3.f32 = vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32)));
  v5 = vmulq_n_f32(a2, vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32))).f32[0]);
  v6 = vmuls_lane_f32(v2.__sinval, *v5.f32, 1);
  v7 = vmuls_lane_f32(v2.__sinval, v5, 2);
  v8 = (1.0 - v2.__cosval) * v5.f32[0];
  v9 = vmuls_lane_f32(1.0 - v2.__cosval, *v5.f32, 1);
  v10 = v2.__cosval + (v8 * v5.f32[0]);
  v11 = vmuls_lane_f32(v8, *v5.f32, 1);
  v12 = vmuls_lane_f32(v8, v5, 2);
  HIDWORD(v13) = 0;
  *&v13 = v10;
  *(&v13 + 1) = v7 + v11;
  *(&v13 + 2) = v12 - v6;
  v14 = v2.__cosval + vmuls_lane_f32(v9, *v5.f32, 1);
  v15 = vmuls_lane_f32(v9, v5, 2);
  HIDWORD(v16) = 0;
  *&v16 = v11 - v7;
  *(&v16 + 1) = v14;
  *(&v16 + 2) = (v2.__sinval * v5.f32[0]) + v15;
  v21 = v16;
  v22 = v13;
  *&v17 = v6 + v12;
  *(&v17 + 1) = v15 - (v2.__sinval * v5.f32[0]);
  *(&v17 + 1) = COERCE_UNSIGNED_INT(v2.__cosval + vmuls_lane_f32(vmuls_lane_f32(1.0 - v2.__cosval, v5, 2), v5, 2));
  v24 = v17;
  sub_258AFAD74();
  v18 = swift_allocObject();
  v18[2] = v22;
  v18[3] = v21;
  v18[4] = v24;
  v18[5] = xmmword_258B34050;
  swift_setDeallocating();
  swift_deallocClassInstance();
  v19 = *MEMORY[0x277D85DE8];
  return v22;
}

void sub_258AFAD74()
{
  if (!qword_27F971BA8)
  {
    sub_258AFADCC();
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971BA8);
    }
  }
}

void sub_258AFADCC()
{
  if (!qword_27F971BB0)
  {
    sub_258A75B6C();
    v0 = sub_258B034E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971BB0);
    }
  }
}

__n64 sub_258AFAEB8(double a1, int32x4_t a2, int32x4_t a3)
{
  v3 = vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL);
  v4 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL), vnegq_f32(a2)), a3, v3);
  v5 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
  v6 = vmulq_f32(v4, v4);
  v7 = COERCE_UNSIGNED_INT(v6.f32[1] + (v6.f32[2] + v6.f32[0]));
  v8 = vrsqrte_f32(v7);
  v9 = vmul_f32(v8, vrsqrts_f32(v7.u32[0], vmul_f32(v8, v8)));
  v10 = vmulq_n_f32(v5, vmul_f32(v9, vrsqrts_f32(v7.u32[0], vmul_f32(v9, v9))).f32[0]);
  v11 = vmlaq_f32(vmulq_f32(v3, vnegq_f32(v10)), a2, vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL));
  v12 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
  v13 = vmulq_f32(v11, v11);
  v7.f32[0] = v13.f32[1] + (v13.f32[2] + v13.f32[0]);
  *v13.f32 = vrsqrte_f32(v7.u32[0]);
  *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v7.u32[0], vmul_f32(*v13.f32, *v13.f32)));
  result.n64_u32[0] = v10.i32[0];
  result.n64_u32[1] = vmulq_n_f32(v12, vmul_f32(*v13.f32, vrsqrts_f32(v7.u32[0], vmul_f32(*v13.f32, *v13.f32))).f32[0]).u32[0];
  return result;
}

void sub_258AFB04C()
{
  v1 = &v0[OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_lastBounds];
  v2 = *&v0[OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_lastBounds];
  v3 = *&v0[OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_lastBounds + 8];
  v4 = *&v0[OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_lastBounds + 16];
  v5 = *&v0[OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_lastBounds + 24];
  [v0 bounds];
  v44.origin.x = v6;
  v44.origin.y = v7;
  v44.size.width = v8;
  v44.size.height = v9;
  v39.origin.x = v2;
  v39.origin.y = v3;
  v39.size.width = v4;
  v39.size.height = v5;
  if (!CGRectEqualToRect(v39, v44))
  {
    v10 = *&v0[OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer];
    if (v10)
    {
      v11 = *v1;
      v12 = v1[1];
      rect = *v1;
      v14 = v1[2];
      v13 = v1[3];
      rect_16 = v10;
      [v0 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v40.origin.x = v11;
      v40.origin.y = v12;
      v40.size.width = v14;
      v40.size.height = v13;
      Width = CGRectGetWidth(v40);
      v41.origin.x = v16;
      v41.origin.y = v18;
      v41.size.width = v20;
      v41.size.height = v22;
      rect_8 = vabdd_f64(Width, CGRectGetWidth(v41));
      v42.origin.x = rect;
      v42.origin.y = v12;
      v42.size.width = v14;
      v42.size.height = v13;
      Height = CGRectGetHeight(v42);
      v43.origin.x = v16;
      v43.origin.y = v18;
      v43.size.width = v20;
      v43.size.height = v22;
      v25 = vabdd_f64(Height, CGRectGetHeight(v43));
      if (rect_8 <= 40.0 && v25 <= 40.0)
      {
      }

      else
      {
        [v0 bounds];
        sub_258AC92B4();
        [v0 bounds];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        *v1 = v28;
        *(v1 + 1) = v30;
        *(v1 + 2) = v32;
        *(v1 + 3) = v34;
      }
    }
  }
}

id sub_258AFB274()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_258AFD58C(0, &qword_280DF8930, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = sub_258B02D44();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *&v0[OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer];
  sub_258B02D24();
  v9 = v8;
  v10 = sub_258B02D14();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  sub_258A8F398(0, 0, v6, &unk_258B35808, v11);

  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_dealloc);
}

uint64_t sub_258AFB3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_258B02D24();
  v4[4] = sub_258B02D14();
  v6 = sub_258B02CE4();

  return MEMORY[0x2822009F8](sub_258AFB488, v6, v5);
}

uint64_t sub_258AFB488()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink;
    v5 = *(v3 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink);
    if (v5)
    {
      [v5 setPaused_];
      v5 = *(v3 + v4);
    }

    [v5 invalidate];
    v6 = *(v3 + v4);
    *(v3 + v4) = 0;
  }

  **(v0 + 16) = v2 == 0;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_258AFB828@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CDF458];
  sub_258AFD58C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_258AFD5F0(v2, &v18 - v12, &qword_27F96C908, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_258B006A4();
    return (*(*(v14 - 8) + 32))(a1, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_258B02E94();
    v17 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_258AFBA4C()
{
  v1 = sub_258B00F84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for EmotionShape() + 20);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_258B02E94();
    v8 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();
    sub_258AADD10(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

id sub_258AFBBA4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV14MentalHealthUI12EmotionShape11Coordinator_parent;
  [a1 velocityInView_];
  v7 = *(v1 + v4);
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer);
    if (v8)
    {
      v9 = v5;
      v10 = v6;
      v11 = v8;
      sub_258AC753C(v9, v10);
    }
  }

  result = [a1 state];
  v13 = *(v2 + v4);
  if (result > 2)
  {
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer);
      if (v14)
      {
        v15 = 0;
        goto LABEL_11;
      }
    }
  }

  else if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer);
    if (v14)
    {
      v15 = 1;
LABEL_11:
      *(v14 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_isDragging) = v15;
    }
  }

  return result;
}

id sub_258AFBD3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmotionShape.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_258AFBDA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258A9762C;

  return sub_258AFB3F0(a1, v4, v5, v6);
}

uint64_t sub_258AFBE58()
{
  v1 = v0;
  v2 = sub_258B006A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v66 - v8;
  v10 = [objc_allocWithZone(type metadata accessor for ShapeContainer()) initWithFrame_];
  GenericRGB = [v10 layer];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = v12;
  v14 = MTLCreateSystemDefaultDevice();
  [v13 setDevice_];
  v71 = GenericRGB;
  [v13 setOpaque_];
  [v13 setFramebufferOnly_];
  [v13 setPixelFormat_];
  [v13 setPresentsWithTransaction_];
  sub_258AFB828(v9);
  (*(v3 + 104))(v7, *MEMORY[0x277CDF3C0], v2);
  v15 = sub_258B00694();
  v74 = v3;
  v16 = *(v3 + 8);
  v72 = v3 + 8;
  v16(v7, v2);
  v73 = v16;
  v16(v9, v2);
  v76 = v2;
  v77 = v10;
  v75 = v14;
  if ((v15 & 1) == 0)
  {
    GenericRGB = CGColorCreateGenericRGB(0.858823529, 0.882352941, 0.88627451, 1.0);
    goto LABEL_10;
  }

  GenericRGB = CGColorCreateGenericRGB(0.741176471, 0.82745098, 0.839215686, 1.0);
  if (CGColorGetNumberOfComponents(GenericRGB) != 4)
  {
    goto LABEL_10;
  }

  v17 = sub_258B02E04();
  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = *(v17 + 16);
  if (v18)
  {
    if (v18 != 1)
    {
      if (v18 >= 3)
      {
        v19 = *(v17 + 32) * 0.5;
        v20 = *(v17 + 40) * 0.5;
        v21 = *(v17 + 48);

        v22 = CGColorCreateGenericRGB(v19, v20, v21 * 0.5, 1.0);

        GenericRGB = v22;
LABEL_10:
        [v13 setBackgroundColor_];

        v23 = v71;
        v24 = type metadata accessor for EmotionShape();
        v25 = *(v1 + v24[7]);
        v69 = *(v1 + v24[6]);
        v26 = (v1 + v24[9]);
        v27 = v26[1];
        v28 = *(v26 + 4);
        v78 = *v26;
        v79 = v27;
        LODWORD(v80) = v28;
        sub_258AFD66C(0, &unk_27F971190, MEMORY[0x277D83A90], MEMORY[0x277CE11F8]);
        v70 = v29;
        v71 = v23;
        sub_258B02334();
        v66 = v81[1];
        v67 = v81[0];
        v30 = v82;
        sub_258AFB828(v9);
        v68 = sub_258AFBA4C();
        v31 = objc_allocWithZone(type metadata accessor for ChamomileRenderer());
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode] = 0;
        v32 = &v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_randomNumberGenerator];
        v33 = MEMORY[0x277D84700];
        *(v32 + 3) = MEMORY[0x277D846F8];
        *(v32 + 4) = v33;
        v34 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_meshQuality;
        v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_meshQuality] = 2;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valence] = 0;
        v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_isDragging] = 0;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_offset] = 0;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_scale] = 1065353216;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valenceSmoothed] = 0;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_time] = 0;
        v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_firstRun] = 1;
        v35 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_ringBufferHelpers;
        sub_258AFD66C(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_258B33250;
        type metadata accessor for RingBufferHelper();
        v37 = swift_allocObject();
        *(v37 + 32) = 0;
        *(v37 + 16) = 1065353216;
        *(v37 + 20) = 0x400000000;
        *(v37 + 36) = 0x3F80000000000000;
        *(v37 + 28) = 4;
        *(v36 + 32) = v37;
        v38 = swift_allocObject();
        *(v38 + 32) = 0;
        *(v38 + 16) = 0;
        *(v38 + 20) = 0x500000004;
        *(v38 + 36) = 0;
        *(v38 + 28) = 5;
        *(v36 + 40) = v38;
        v39 = swift_allocObject();
        *(v39 + 32) = 0;
        *(v39 + 16) = 1077936128;
        *(v39 + 20) = 0x600000005;
        *(v39 + 36) = 0x4040000000000000;
        *(v39 + 28) = 6;
        *(v36 + 48) = v39;
        *&v31[v35] = v36;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_disc] = 0;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_quad] = 0;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_instances] = 0;
        v40 = &v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_model];
        v41 = *MEMORY[0x277D860B8];
        v42 = *(MEMORY[0x277D860B8] + 16);
        v43 = *(MEMORY[0x277D860B8] + 32);
        v44 = *(MEMORY[0x277D860B8] + 48);
        *v40 = *MEMORY[0x277D860B8];
        v40[1] = v42;
        v40[2] = v43;
        v40[3] = v44;
        v45 = &v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation];
        *v45 = v41;
        v45[1] = v42;
        v45[2] = v43;
        v45[3] = v44;
        v46 = &v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_projection];
        *v46 = v41;
        v46[1] = v42;
        v46[2] = v43;
        v46[3] = v44;
        v47 = &v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_camera];
        *v47 = v41;
        v47[1] = v42;
        v47[2] = v43;
        v47[3] = v44;
        v48 = MEMORY[0x277D84F90];
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_lights] = MEMORY[0x277D84F90];
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_thetaOffsetRange] = 0x3EC90FDA00000000;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth] = 0;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight] = 0;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_background] = 0;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_environmentMap] = 0;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_albedo] = 0;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_msaaAlbedo] = 0;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_backShape] = 0;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_msaaBackShape] = 0;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_result] = 0;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_resultBuffer] = 0;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_blurSigma] = 1107296256;
        *&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_blurPipeline] = 0;
        v49 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_kernelCache;
        *&v31[v49] = [objc_allocWithZone(HKCVKernelCache) init];
        v50 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_renderPipelines;
        *&v31[v50] = sub_258AD64B0(v48);
        v51 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_computePipelines;
        *&v31[v51] = sub_258AD61A0(v48);
        v31[v34] = v69;
        v52 = &v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer__effectiveValence];
        v53 = v66;
        *v52 = v67;
        *(v52 + 1) = v53;
        *(v52 + 4) = v30;
        v54 = v76;
        (*(v74 + 16))(&v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_colorScheme], v9, v76);
        v31[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_reduceMotion] = v68 & 1;
        v55 = sub_258A0EE38(v13, 1, v25);
        v73(v9, v54);
        v56 = v77;
        v57 = *&v77[OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer];
        *&v77[OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer] = v55;
        v58 = v55;

        v59 = (v1 + v24[10]);
        v60 = v59[1];
        v61 = v59[2];
        v78 = *v59;
        v79 = v60;
        v80 = v61;
        sub_258AFD58C(0, &qword_27F971C78, sub_258AADFC0, MEMORY[0x277CE11F8]);
        MEMORY[0x259C92900](v81);
        *&v58[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_offset] = v81[0];
        v62 = (v1 + v24[11]);
        v63 = v62[1];
        v64 = *(v62 + 4);
        v78 = *v62;
        v79 = v63;
        LODWORD(v80) = v64;
        MEMORY[0x259C92900](v81, v70);

        swift_unknownObjectRelease();
        *&v58[OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_scale] = v81[0];

        return v56;
      }

      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:

  result = sub_258B03294();
  __break(1u);
  return result;
}

void *sub_258AFC774(uint64_t a1)
{
  v2 = v1;
  v4 = sub_258B006A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AFD454();
  v58 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AFD58C(0, &qword_27F96EAE0, MEMORY[0x277CDF3E0], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v56 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  if (a1)
  {
    v21 = type metadata accessor for EmotionShape();
    v22 = (v1 + v21[8]);
    v23 = v22[1];
    v24 = *(v22 + 4);
    v60 = *v22;
    v61 = v23;
    LODWORD(v62) = v24;
    sub_258AFD66C(0, &unk_27F971190, MEMORY[0x277D83A90], MEMORY[0x277CE11F8]);
    v26 = v25;
    MEMORY[0x259C92900](v59);
    *(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valence) = v59[0];
    v27 = (v1 + v21[10]);
    v28 = v27[1];
    v29 = v27[2];
    v60 = *v27;
    v61 = v28;
    v62 = v29;
    sub_258AFD58C(0, &qword_27F971C78, sub_258AADFC0, MEMORY[0x277CE11F8]);
    MEMORY[0x259C92900](v59);
    *(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_offset) = v59[0];
    v30 = (v1 + v21[11]);
    v31 = v30[1];
    v32 = *(v30 + 4);
    v60 = *v30;
    v61 = v31;
    LODWORD(v62) = v32;
    MEMORY[0x259C92900](v59, v26);
    *(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_scale) = v59[0];
    v33 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_colorScheme;
    swift_beginAccess();
    (*(v5 + 16))(v20, a1 + v33, v4);
    v34 = *(v5 + 56);
    v34(v20, 0, 1, v4);
  }

  else
  {
    v34 = *(v5 + 56);
    v34(&v54 - v19, 1, 1, v4);
  }

  sub_258AFB828(v18);
  v34(v18, 0, 1, v4);
  v35 = *(v58 + 48);
  v36 = MEMORY[0x277D83D88];
  sub_258AFD5F0(v20, v11, &qword_27F96EAE0, MEMORY[0x277D83D88]);
  sub_258AFD5F0(v18, &v11[v35], &qword_27F96EAE0, v36);
  v58 = v5;
  v37 = *(v5 + 48);
  if (v37(v11, 1, v4) == 1)
  {
    sub_258A2D304(v18);
    sub_258A2D304(v20);
    if (v37(&v11[v35], 1, v4) == 1)
    {
      sub_258A2D304(v11);
LABEL_13:
      if (a1)
      {
        v45 = *(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_reduceMotion);
        if ((sub_258AFBA4C() & 1) == v45)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      sub_258AFBA4C();
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  v38 = v56;
  sub_258AFD5F0(v11, v56, &qword_27F96EAE0, MEMORY[0x277D83D88]);
  if (v37(&v11[v35], 1, v4) == 1)
  {
    sub_258A2D304(v18);
    sub_258A2D304(v20);
    (*(v58 + 8))(v38, v4);
LABEL_9:
    sub_258AFD4E8(v11);
    goto LABEL_10;
  }

  v39 = v58;
  v40 = *(v58 + 32);
  v55 = v2;
  v41 = v57;
  v40(v57, &v11[v35], v4);
  sub_258AFD544(&qword_27F971CC0, MEMORY[0x277CDF3E0]);
  v42 = sub_258B02AA4();
  v43 = *(v39 + 8);
  v44 = v41;
  v2 = v55;
  v43(v44, v4);
  sub_258A2D304(v18);
  sub_258A2D304(v20);
  v43(v38, v4);
  sub_258A2D304(v11);
  if (v42)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (a1)
  {
LABEL_15:
    v46 = v2;
    v47 = v57;
    sub_258AFB828(v57);
    v48 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_colorScheme;
    swift_beginAccess();
    v49 = v47;
    v2 = v46;
    (*(v58 + 40))(a1 + v48, v49, v4);
    swift_endAccess();
    *(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_reduceMotion) = sub_258AFBA4C() & 1;
    sub_258AC3580();
  }

LABEL_17:
  v50 = (v2 + *(type metadata accessor for EmotionShape() + 48));
  v51 = *v50;
  v52 = v50[1];
  LOBYTE(v50) = *(v50 + 16);
  v60 = v51;
  v61 = v52;
  LOBYTE(v62) = v50;
  sub_258AFD66C(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  result = MEMORY[0x259C92900](&v63);
  if (a1)
  {
    result = *(a1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink);
    if (result)
    {
      return [result setPaused_];
    }
  }

  return result;
}

void sub_258AFCE48(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer);
  v2 = v1;
  sub_258AFC774(v1);
}

id sub_258AFCEA4@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for EmotionShape.Coordinator()) init];
  *a1 = result;
  return result;
}

uint64_t sub_258AFCF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258AFD544(&qword_27F971CA8, type metadata accessor for EmotionShape);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_258AFCFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258AFD544(&qword_27F971CA8, type metadata accessor for EmotionShape);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_258AFD04C()
{
  sub_258AFD544(&qword_27F971CA8, type metadata accessor for EmotionShape);
  sub_258B01274();
  __break(1u);
}

unint64_t sub_258AFD0A4()
{
  result = qword_27F971C50;
  if (!qword_27F971C50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F971C50);
  }

  return result;
}

uint64_t objectdestroyTm_25()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_258AFD130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2589EEE18;

  return sub_258AFB3F0(a1, v4, v5, v6);
}

uint64_t type metadata accessor for EmotionShape()
{
  result = qword_27F971C58;
  if (!qword_27F971C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AFD258()
{
  sub_258AFD58C(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_258AFD66C(319, &unk_27F971C68, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_258AFD66C(319, &unk_27F971190, MEMORY[0x277D83A90], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_258AFD58C(319, &qword_27F971C78, sub_258AADFC0, MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_258AFD66C(319, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_258AFD454()
{
  if (!qword_27F971CB0)
  {
    sub_258AFD58C(255, &qword_27F96EAE0, MEMORY[0x277CDF3E0], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F971CB0);
    }
  }
}

uint64_t sub_258AFD4E8(uint64_t a1)
{
  sub_258AFD454();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258AFD544(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258AFD58C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258AFD5F0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_258AFD58C(0, a3, MEMORY[0x277CDF3E0], a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_258AFD66C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_258AFD6BC(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_67;
  }

  v4 = *(a2 + 40);
  sub_258B03514();
  sub_2589C6E40(a1);
  sub_258B02B74();

  v5 = sub_258B03554();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v34 = ~v6;
    v8 = 0xEA0000000000676ELL;
    v9 = 0x696472616F626E4FLL;
    v33 = a1;
    while (1)
    {
      v10 = *(*(a2 + 48) + v7);
      if (v10 > 4)
      {
        if (*(*(a2 + 48) + v7) <= 6u)
        {
          if (v10 == 5)
          {
            v17 = 0x746169636F737341;
            v18 = 0xEC000000736E6F69;
          }

          else
          {
            v17 = 0x616D7269666E6F43;
            v18 = 0xEC0000006E6F6974;
          }
        }

        else if (v10 == 7)
        {
          v17 = 0x6F4C207972746E45;
          v18 = 0xEC00000064656767;
        }

        else if (v10 == 8)
        {
          v18 = 0xEC00000064656C69;
          v17 = 0x6146207972746E45;
        }

        else
        {
          v17 = 0xD000000000000010;
          v18 = 0x8000000258B35BC0;
        }
      }

      else
      {
        v11 = 0xD000000000000013;
        if (v10 == 3)
        {
          v12 = 0xD000000000000010;
        }

        else
        {
          v12 = 0x736C6562614CLL;
        }

        if (v10 == 3)
        {
          v13 = 0x8000000258B35B70;
        }

        else
        {
          v13 = 0xE600000000000000;
        }

        if (v10 == 2)
        {
          v14 = 0x8000000258B35B50;
        }

        else
        {
          v11 = v12;
          v14 = v13;
        }

        v15 = 0xD000000000000017;
        if (*(*(a2 + 48) + v7))
        {
          v15 = v9;
          v16 = 0xEA0000000000676ELL;
        }

        else
        {
          v16 = 0x8000000258B35B20;
        }

        if (*(*(a2 + 48) + v7) <= 1u)
        {
          v17 = v15;
        }

        else
        {
          v17 = v11;
        }

        if (*(*(a2 + 48) + v7) <= 1u)
        {
          v18 = v16;
        }

        else
        {
          v18 = v14;
        }
      }

      v19 = 0xEC00000064656C69;
      v20 = 0x6146207972746E45;
      if (a1 != 8)
      {
        v20 = 0xD000000000000010;
        v19 = 0x8000000258B35BC0;
      }

      if (a1 == 7)
      {
        v20 = 0x6F4C207972746E45;
        v19 = 0xEC00000064656767;
      }

      v21 = 0x746169636F737341;
      if (a1 != 5)
      {
        v21 = 0x616D7269666E6F43;
      }

      v22 = 0xEC000000736E6F69;
      if (a1 != 5)
      {
        v22 = 0xEC0000006E6F6974;
      }

      if (a1 <= 6u)
      {
        v20 = v21;
        v19 = v22;
      }

      v23 = 0xD000000000000013;
      if (a1 == 3)
      {
        v24 = 0xD000000000000010;
      }

      else
      {
        v24 = 0x736C6562614CLL;
      }

      if (a1 == 3)
      {
        v25 = 0x8000000258B35B70;
      }

      else
      {
        v25 = 0xE600000000000000;
      }

      if (a1 == 2)
      {
        v26 = 0x8000000258B35B50;
      }

      else
      {
        v23 = v24;
        v26 = v25;
      }

      v27 = 0xD000000000000017;
      if (a1)
      {
        v27 = v9;
      }

      else
      {
        v8 = 0x8000000258B35B20;
      }

      if (a1 <= 1u)
      {
        v23 = v27;
        v26 = v8;
      }

      v28 = a1 <= 4u ? v23 : v20;
      v29 = a1 <= 4u ? v26 : v19;
      if (v17 == v28 && v18 == v29)
      {
        break;
      }

      v30 = v9;
      v31 = sub_258B03454();

      if ((v31 & 1) == 0)
      {
        v7 = (v7 + 1) & v34;
        a1 = v33;
        v8 = 0xEA0000000000676ELL;
        v9 = v30;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v31 & 1;
    }

    v31 = 1;
  }

  else
  {
LABEL_67:
    v31 = 0;
  }

  return v31 & 1;
}

uint64_t sub_258AFDA74(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_42;
  }

  v4 = 0xEF6F72746E492064;
  v5 = 0x6574614720656741;
  v6 = *(a2 + 40);
  sub_258B03514();
  sub_258B02B74();

  v7 = sub_258B03554();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v27 = ~v8;
    v10 = 0xE900000000000073;
    v11 = 0xD000000000000010;
    v12 = 0x746C75736552;
    v26 = a1;
    while (1)
    {
      v13 = *(*(a2 + 48) + v9);
      if (v13 <= 1)
      {
        if (*(*(a2 + 48) + v9))
        {
          v14 = v5;
        }

        else
        {
          v14 = 0xD000000000000010;
        }

        if (*(*(a2 + 48) + v9))
        {
          v15 = v4;
        }

        else
        {
          v15 = 0x8000000258B35DF0;
        }
      }

      else if (v13 == 2)
      {
        v15 = 0xE500000000000000;
        v14 = 0x6F72746E49;
      }

      else
      {
        if (v13 == 3)
        {
          v14 = 0x6E6F697473657551;
        }

        else
        {
          v14 = v12;
        }

        if (v13 == 3)
        {
          v15 = 0xE900000000000073;
        }

        else
        {
          v15 = 0xE600000000000000;
        }
      }

      v16 = a1;
      if (a1 == 3)
      {
        v17 = 0x6E6F697473657551;
      }

      else
      {
        v17 = v12;
      }

      if (a1 != 3)
      {
        v10 = 0xE600000000000000;
      }

      if (a1 == 2)
      {
        v17 = 0x6F72746E49;
        v10 = 0xE500000000000000;
      }

      v18 = v5;
      if (v16)
      {
        v11 = v5;
      }

      v19 = v4;
      v20 = v16 ? v4 : 0x8000000258B35DF0;
      v21 = v16 <= 1 ? v11 : v17;
      v22 = v16 <= 1 ? v20 : v10;
      if (v14 == v21 && v15 == v22)
      {
        break;
      }

      v23 = v12;
      v24 = sub_258B03454();

      if ((v24 & 1) == 0)
      {
        v9 = (v9 + 1) & v27;
        v4 = v19;
        v5 = v18;
        a1 = v26;
        v10 = 0xE900000000000073;
        v11 = 0xD000000000000010;
        v12 = v23;
        if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          continue;
        }
      }

      return v24 & 1;
    }

    v24 = 1;
  }

  else
  {
LABEL_42:
    v24 = 0;
  }

  return v24 & 1;
}

void sub_258AFDD38(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_258AFDDB0()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 128);
  }

  else
  {
    v3 = HKLogMentalHealthCategory();
    v4 = [objc_allocWithZone(MEMORY[0x277CCCFE8]) initWithLoggingCategory:v3 healthDataSource:*(v0 + 112)];

    v5 = *(v0 + 128);
    *(v0 + 128) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t MentalHealthAssessmentsAnalyticsContextManager.__allocating_init(healthStore:entryPoint:provenance:)(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v6 = swift_allocObject();
  LOBYTE(a2) = *a2;
  LOBYTE(a3) = *a3;
  swift_defaultActor_initialize();
  *(v6 + 120) = 2;
  *(v6 + 123) = 3;
  v7 = MEMORY[0x277D84FA0];
  *(v6 + 128) = 0;
  *(v6 + 136) = v7;
  *(v6 + 112) = a1;
  *(v6 + 121) = a2;
  *(v6 + 122) = a3;
  return v6;
}

uint64_t MentalHealthAssessmentsAnalyticsContextManager.init(healthStore:entryPoint:provenance:)(uint64_t a1, char *a2, char *a3)
{
  v5 = *a2;
  v6 = *a3;
  swift_defaultActor_initialize();
  *(v3 + 120) = 2;
  *(v3 + 123) = 3;
  v7 = MEMORY[0x277D84FA0];
  *(v3 + 128) = 0;
  *(v3 + 136) = v7;
  *(v3 + 112) = a1;
  *(v3 + 121) = v5;
  *(v3 + 122) = v6;
  return v3;
}

uint64_t sub_258AFDF2C(_BYTE *a1, _BYTE *a2)
{
  *(v3 + 64) = v2;
  *(v3 + 72) = *v2;
  *(v3 + 96) = *a1;
  *(v3 + 97) = *a2;
  return MEMORY[0x2822009F8](sub_258AFDF84, v2, 0);
}

uint64_t sub_258AFDF84()
{
  v14 = v0;
  if (*(v0[8] + 120) == 2)
  {
    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = sub_258AFE148;
    v2 = v0[8];

    return sub_258AFE3F8();
  }

  else
  {
    v4 = *(v0 + 97);
    v5 = v0[9];
    v12 = *(v0 + 96);
    v13 = v4;
    v6 = sub_258AFE958(&v12, &v13);
    v7 = sub_258AFDDB0();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    v0[6] = sub_258AFEF04;
    v0[7] = v8;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_258AFDD38;
    v0[5] = &block_descriptor_16;
    v9 = _Block_copy(v0 + 2);
    v10 = v0[7];

    [v7 submitEvent:v6 completion:v9];
    _Block_release(v9);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_258AFE148(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_258AFE260, v3, 0);
}

uint64_t sub_258AFE260()
{
  v18 = v0;
  v1 = v0[11];
  if (v1)
  {
    if (v1 >> 62)
    {
      if (v1 < 0)
      {
        v14 = v0[11];
      }

      v15 = v0[11];
      v2 = sub_258B032B4();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = v2 == 0;
  }

  else
  {
    v3 = 2;
  }

  *(v0[8] + 120) = v3;
  v4 = *(v0 + 97);
  v5 = v0[8];
  v6 = v0[9];
  v16 = *(v0 + 96);
  v17 = v4;
  v7 = sub_258AFE958(&v16, &v17);
  v8 = sub_258AFDDB0();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v0[6] = sub_258AFEF04;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_258AFDD38;
  v0[5] = &block_descriptor_16;
  v10 = _Block_copy(v0 + 2);
  v11 = v0[7];

  [v8 submitEvent:v7 completion:v10];
  _Block_release(v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_258AFE3F8()
{
  v1[2] = v0;
  sub_258AFF160(0, &qword_27F96E850, &qword_27F96E858, 0x277CCD8A8, MEMORY[0x277CCB610]);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258AFE4E4, v0, 0);
}

uint64_t sub_258AFE4E4()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_258AFF1C8();
  sub_258AFF160(0, &qword_27F96E868, &qword_27F96E858, 0x277CCD8A8, MEMORY[0x277CCB570]);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_258B2BE60;
  sub_2589F4488(0, &qword_27F971CC8, 0x277CCD8F0);
  v6 = MEMORY[0x259C93600](*MEMORY[0x277CCCD60]);
  sub_2589F4488(0, &qword_27F96E858, 0x277CCD8A8);
  sub_258B028E4();

  v7 = MEMORY[0x259C93600](*MEMORY[0x277CCCD68]);
  sub_258B028E4();

  sub_258B028F4();
  v8 = *(v2 + 112);
  v9 = *(MEMORY[0x277CCB608] + 4);
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_258AFE710;
  v11 = v0[5];
  v12 = v0[3];

  return MEMORY[0x282120380](v8, v12);
}

uint64_t sub_258AFE710(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 48);
  v7 = *v2;

  v8 = *(v4 + 16);
  if (v1)
  {

    v9 = sub_258AFE8D8;
  }

  else
  {
    *(v5 + 56) = a1;
    v9 = sub_258AFE854;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_258AFE854()
{
  v1 = v0[7];
  (*(v0[4] + 8))(v0[5], v0[3]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_258AFE8D8()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1(0);
}

_BYTE *sub_258AFE958(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(v2 + 123);
  v6 = *(v2 + 121);
  v7 = *(v2 + 122);
  swift_beginAccess();
  v8 = *(v2 + 136);
  sub_258B003E4();
  v9 = sub_258AFDA74(v3, v8);

  v10 = *(v2 + 120);
  type metadata accessor for MentalHealthAssessmentsEvent();
  v11 = swift_allocObject();
  v11[16] = v3;
  v11[17] = v4;
  v11[18] = v5;
  v11[19] = v6;
  v11[20] = v7;
  v11[21] = (v9 & 1) == 0;
  v11[22] = v10;
  if (v4 <= 1 && v4)
  {
  }

  else
  {
    v12 = sub_258B03454();

    if ((v12 & 1) == 0)
    {
      swift_beginAccess();
      sub_258AE5C88(&v14, v3);
      swift_endAccess();
    }
  }

  return v11;
}

uint64_t sub_258AFEBCC(char a1, void *a2)
{
  v4 = sub_258B00384();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  if (a1)
  {
    sub_258B00364();
    v12 = sub_258B00374();
    v13 = sub_258B02E64();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v36 = v15;
      *v14 = 136446210;
      v16 = sub_258B035A4();
      v18 = sub_2589F1F78(v16, v17, &v36);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_2589A1000, v12, v13, "[%{public}s] Successfully submitted analytics", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x259C945C0](v15, -1, -1);
      MEMORY[0x259C945C0](v14, -1, -1);
    }

    v19 = *(v5 + 8);
    v20 = v11;
    goto LABEL_9;
  }

  sub_258B00364();
  v21 = a2;
  v22 = sub_258B00374();
  v23 = sub_258B02E84();

  if (!os_log_type_enabled(v22, v23))
  {

    v19 = *(v5 + 8);
    v20 = v9;
LABEL_9:
    v33 = v4;
    return v19(v20, v33);
  }

  v35 = v4;
  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v36 = v26;
  *v24 = 136446466;
  v27 = sub_258B035A4();
  v29 = sub_2589F1F78(v27, v28, &v36);

  *(v24 + 4) = v29;
  *(v24 + 12) = 2112;
  if (a2)
  {
    v30 = a2;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    v32 = v31;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  *(v24 + 14) = v31;
  *v25 = v32;
  _os_log_impl(&dword_2589A1000, v22, v23, "[%{public}s] Failed to submit analytics with error: %@", v24, 0x16u);
  sub_258A22E44(v25);
  MEMORY[0x259C945C0](v25, -1, -1);
  __swift_destroy_boxed_opaque_existential_1(v26);
  MEMORY[0x259C945C0](v26, -1, -1);
  MEMORY[0x259C945C0](v24, -1, -1);

  v19 = *(v5 + 8);
  v20 = v9;
  v33 = v35;
  return v19(v20, v33);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t MentalHealthAssessmentsAnalyticsContextManager.deinit()
{
  v1 = *(v0 + 136);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MentalHealthAssessmentsAnalyticsContextManager.__deallocating_deinit()
{
  v1 = *(v0 + 136);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of MentalHealthAssessmentsAnalyticsContextManager.submitAssessmentAnalyticsEvent(step:action:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 256);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2589EEE18;

  return v10(a1, a2);
}

void sub_258AFF160(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2589F4488(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_258AFF1C8()
{
  if (!qword_27F96E860)
  {
    sub_258AFF160(255, &qword_27F96E868, &qword_27F96E858, 0x277CCD8A8, MEMORY[0x277CCB570]);
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E860);
    }
  }
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincospif_stret(float a1)
{
  MEMORY[0x2822043D0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}