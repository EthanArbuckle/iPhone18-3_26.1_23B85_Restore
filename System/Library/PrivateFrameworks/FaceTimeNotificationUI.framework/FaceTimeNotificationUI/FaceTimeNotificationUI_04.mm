void sub_24AA7E22C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CB8, &qword_24AABC2A8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = *a1;
  v11 = a1[1];
  v30 = *a1;
  v31 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v12 = sub_24AA1F130();

  if (!v12)
  {
    v15 = 0;
LABEL_6:
    v26 = 0;
    v27 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v14 = 0;
    goto LABEL_8;
  }

  v30 = v10;
  v31 = v11;
  sub_24AAB4B64();
  v13 = v29;
  swift_getKeyPath();
  v30 = v13;
  sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v14 = *(v13 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__posterViewModel);

  if (!v14)
  {
    v15 = 0;
    v26 = 0;
    v27 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_8;
  }

  swift_getKeyPath();
  v30 = v14;
  sub_24AA80D80(&qword_27EF85528, type metadata accessor for CallNotificationPosterViewModel);
  sub_24AAB2CF4();

  v15 = *(v14 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView);
  v16 = v15;

  if (!v15)
  {
    goto LABEL_6;
  }

  sub_24AAB4D44();
  sub_24AAB3D54();
  v26 = v31;
  v27 = v30;
  v17 = v32;
  v18 = v33;
  v19 = v34;
  v14 = v35;
  v20 = v16;
LABEL_8:
  *v9 = sub_24AAB41B4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CC0, &qword_24AABC2B0);
  sub_24AA7E598(a1, &v9[*(v21 + 44)]);
  v22 = v28;
  sub_24AA1695C(v9, v28, &qword_27EF86CB8, &qword_24AABC2A8);
  v23 = v26;
  v24 = v27;
  *a2 = v15;
  a2[1] = v24;
  a2[2] = v23;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = v19;
  a2[6] = v14;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CC8, &qword_24AABC2B8);
  sub_24AA1695C(v22, a2 + *(v25 + 48), &qword_27EF86CB8, &qword_24AABC2A8);
  sub_24AA169C4(v9, &qword_27EF86CB8, &qword_24AABC2A8);
  sub_24AA169C4(v22, &qword_27EF86CB8, &qword_24AABC2A8);
}

uint64_t sub_24AA7E598@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = type metadata accessor for CallNotificationView(0);
  v85 = *(v3 - 8);
  v4 = *(v85 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = v5;
  v87 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CD0, &qword_24AABC310);
  v6 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v8 = &v82 - v7;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CD8, &qword_24AABC318);
  v9 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v88 = &v82 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CE0, &qword_24AABC320);
  v11 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v92 = &v82 - v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CE8, &qword_24AABC328);
  v13 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v83 = &v82 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CF0, &qword_24AABC330);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v96 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v94 = &v82 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CF8, &qword_24AABC338);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v93 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v82 - v25;
  *v26 = sub_24AAB41C4();
  *(v26 + 1) = 0;
  v26[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86D00, &qword_24AABC340);
  sub_24AA78234(a1, &v26[*(v27 + 44)]);
  v28 = sub_24AAB44D4();
  v29 = &v26[*(v21 + 44)];
  *v29 = v28;
  __asm { FMOV            V0.2D, #14.0 }

  *(v29 + 8) = _Q0;
  *(v29 + 24) = _Q0;
  v29[40] = 0;
  v35 = *a1;
  v36 = a1[1];
  v89 = a1;
  v100 = v35;
  v101 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v37 = v102;
  swift_getKeyPath();
  v100 = v37;
  sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  LODWORD(v21) = *(v37 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad);

  if (v21 != 1)
  {
    goto LABEL_4;
  }

  v100 = v35;
  v101 = v36;
  sub_24AAB4B64();
  v38 = v102;
  swift_getKeyPath();
  v100 = v38;
  sub_24AAB2CF4();

  v39 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__keypadViewModel;
  swift_beginAccess();
  v40 = *(v38 + v39);

  if (v40)
  {
    v41 = type metadata accessor for KeypadView(0);
    v42 = v83;
    v43 = &v83[*(v41 + 20)];
    v98 = MEMORY[0x277D84FA0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85CF0, &qword_24AAB89C0);
    sub_24AAB4B54();
    v44 = v103;
    *v43 = v102;
    *(v43 + 1) = v44;
    v45 = v42 + *(v41 + 24);
    *v45 = sub_24AAB3C94() & 1;
    *(v45 + 8) = v46;
    *(v45 + 16) = v47 & 1;
    type metadata accessor for KeypadViewModel(0);
    sub_24AA80D80(&qword_27EF85CF8, type metadata accessor for KeypadViewModel);
    sub_24AAB4CB4();
    v48 = sub_24AAB4D44();
    v50 = v49;
    v51 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86D68, &qword_24AABC370) + 36);
    *v51 = 0;
    *(v51 + 8) = v48;
    *(v51 + 16) = v50;
    v52 = v89[2];
    v53 = sub_24AAB4DD4();
    sub_24AAB4E04();
    v55 = v54;
    v57 = v56;
    LODWORD(v48) = sub_24AAB43D4();
    v58 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86D58, &qword_24AABC368) + 36);
    *v58 = 0x746E65746E6F63;
    *(v58 + 8) = 0xE700000000000000;
    *(v58 + 16) = v53;
    *(v58 + 24) = v48;
    *(v58 + 32) = v55;
    *(v58 + 40) = v57;
    *(v58 + 48) = 1;
    LOBYTE(v102) = 1;
    v103 = 0x4014000000000000;
    LOBYTE(v98) = 0;
    v99 = 0x4014000000000000;
    sub_24AA82490();
    sub_24AAB3DA4();
    MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
    sub_24AAB4D74();

    sub_24AAB3DB4();

    v59 = sub_24AAB3D64();

    v60 = v92;
    *(v42 + *(v91 + 36)) = v59;
    sub_24AA1695C(v42, v60, &qword_27EF86CE8, &qword_24AABC328);
    swift_storeEnumTagMultiPayload();
    sub_24AA82110();
    sub_24AA82368();
    v61 = v94;
    sub_24AAB42B4();

    sub_24AA169C4(v42, &qword_27EF86CE8, &qword_24AABC328);
  }

  else
  {
LABEL_4:
    *v8 = sub_24AAB41B4();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v62 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86D08, &qword_24AABC348) + 44)];
    v63 = v89;
    sub_24AA7A520(v89);
    v64 = *(v63 + 16);
    v65 = sub_24AAB4DD4();
    sub_24AAB4E04();
    v66 = &v8[*(v84 + 36)];
    *v66 = 0x746E65746E6F63;
    *(v66 + 1) = 0xE700000000000000;
    *(v66 + 2) = v65;
    *(v66 + 6) = 0;
    *(v66 + 4) = v67;
    *(v66 + 5) = v68;
    v66[48] = 1;
    v102 = v35;
    v103 = v36;
    sub_24AAB4B64();
    sub_24AA1F130();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86D10, &qword_24AABC350);
    sub_24AA81F20();
    sub_24AA82004();
    v69 = v88;
    sub_24AAB4784();
    sub_24AA169C4(v8, &qword_27EF86CD0, &qword_24AABC310);
    v70 = sub_24AAB4D44();
    v72 = v71;
    v73 = v87;
    sub_24AA832B8(v63, v87, type metadata accessor for CallNotificationView);
    v74 = (*(v85 + 80) + 16) & ~*(v85 + 80);
    v75 = swift_allocObject();
    sub_24AA80DCC(v73, v75 + v74);
    v76 = (v69 + *(v95 + 36));
    *v76 = sub_24AA82090;
    v76[1] = v75;
    v76[2] = v70;
    v76[3] = v72;
    sub_24AA1695C(v69, v92, &qword_27EF86CD8, &qword_24AABC318);
    swift_storeEnumTagMultiPayload();
    sub_24AA82110();
    sub_24AA82368();
    v61 = v94;
    sub_24AAB42B4();
    sub_24AA169C4(v69, &qword_27EF86CD8, &qword_24AABC318);
  }

  v77 = v93;
  sub_24AA1695C(v26, v93, &qword_27EF86CF8, &qword_24AABC338);
  v78 = v96;
  sub_24AA1695C(v61, v96, &qword_27EF86CF0, &qword_24AABC330);
  v79 = v97;
  sub_24AA1695C(v77, v97, &qword_27EF86CF8, &qword_24AABC338);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86D90, &qword_24AABC380);
  sub_24AA1695C(v78, v79 + *(v80 + 48), &qword_27EF86CF0, &qword_24AABC330);
  sub_24AA169C4(v61, &qword_27EF86CF0, &qword_24AABC330);
  sub_24AA169C4(v26, &qword_27EF86CF8, &qword_24AABC338);
  sub_24AA169C4(v78, &qword_27EF86CF0, &qword_24AABC330);
  return sub_24AA169C4(v77, &qword_27EF86CF8, &qword_24AABC338);
}

__n128 sub_24AA7EFD0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24AAB4D44();
  sub_24AAB3F24();
  sub_24AA1695C(a1, a2, &qword_27EF86CD0, &qword_24AABC310);
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86D10, &qword_24AABC350) + 36));
  v4[4] = v10;
  v4[5] = v11;
  v4[6] = v12;
  *v4 = v6;
  v4[1] = v7;
  result = v9;
  v4[2] = v8;
  v4[3] = v9;
  return result;
}

uint64_t sub_24AA7F0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a1;
  v5 = sub_24AAB3DF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CallNotificationView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = sub_24AAB4A24();
  sub_24AA832B8(a2, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CallNotificationView);
  (*(v6 + 16))(v8, v18, v5);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_24AA80DCC(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  result = (*(v6 + 32))(v15 + v14, v8, v5);
  *a3 = v12;
  a3[1] = sub_24AA82694;
  a3[2] = v15;
  a3[3] = 0;
  a3[4] = 0;
  return result;
}

uint64_t sub_24AA7F29C(uint64_t *a1)
{
  v2 = sub_24AAB42E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v14 = *a1;
  v15 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v8 = v13[1];
  swift_getKeyPath();
  v14 = v8;
  sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v9 = *(v8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__posterViewModel);

  if (v9)
  {
    sub_24AAB4364();
    sub_24AAB3DE4();
    (*(v3 + 8))(v6, v2);
    swift_getKeyPath();
    v14 = v9;
    sub_24AA80D80(&qword_27EF85528, type metadata accessor for CallNotificationPosterViewModel);
    sub_24AAB2CF4();

    v11 = *(v9 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController);
    if (v11)
    {
      v12 = v11;
      sub_24AAB3AC4();
    }
  }

  return result;
}

uint64_t sub_24AA7F50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_24AAB50C4();
  v3[6] = sub_24AAB50B4();
  v5 = sub_24AAB5094();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_24AA7F5A4, v5, v4);
}

uint64_t sub_24AA7F5A4()
{
  v1 = v0[5];
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_24AA7F66C;

  return CallNotificationViewModel.observe()();
}

uint64_t sub_24AA7F66C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24AA7F7B0, v5, v4);
}

uint64_t sub_24AA7F7B0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t CallNotificationView.body.getter()
{
  v1 = v0;
  v2 = v0[1];
  v106 = *v0;
  v107 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  swift_getKeyPath();
  v106 = v104;
  sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  swift_beginAccess();
  v4 = *(v104 + v3);

  if (!v4)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  v104 = v4;
  sub_24AA80D80(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v6 = *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity);
  v5 = *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity + 8);
  v7 = *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity + 16);
  sub_24AA80F1C(v6);

  if (v6)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BC8, &unk_24AABBFD8);
    v100 = *(v8 - 8);
    v101 = v8;
    v9 = *(v100 + 64);
    v10 = MEMORY[0x28223BE20](v8);
    v99 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v97 = &v86;
    MEMORY[0x28223BE20](v10);
    v96 = &v86 - v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CA0, &unk_24AAB62C0);
    v95 = &v86;
    v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v13);
    v16 = &v86 - v15;

    v102 = v7;
    sub_24AAB2F84();
    v17 = sub_24AAB44C4();
    sub_24AAB3C54();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BF0, &unk_24AABBFF0) + 36)];
    *v26 = v17;
    *(v26 + 1) = v19;
    *(v26 + 2) = v21;
    *(v26 + 3) = v23;
    *(v26 + 4) = v25;
    v26[40] = 0;
    v27 = sub_24AAB44E4();
    sub_24AAB3C54();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BE0, &qword_24AABBFE8) + 36)];
    *v36 = v27;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    v37 = sub_24AAB44F4();
    sub_24AAB3C54();
    v98 = v13;
    v38 = *(v13 + 36);
    v94 = v16;
    v39 = &v16[v38];
    *v39 = v37;
    *(v39 + 1) = v40;
    *(v39 + 2) = v41;
    *(v39 + 3) = v42;
    *(v39 + 4) = v43;
    v39[40] = 0;
    v44 = type metadata accessor for CallNotificationView(0);
    v93 = &v86;
    v45 = *(v44 - 8);
    v46 = *(v45 + 64);
    MEMORY[0x28223BE20](v44 - 8);
    sub_24AA832B8(v1, &v86 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CallNotificationView);
    sub_24AAB50C4();
    v47 = sub_24AAB50B4();
    v48 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v49 = swift_allocObject();
    v50 = MEMORY[0x277D85700];
    *(v49 + 16) = v47;
    *(v49 + 24) = v50;
    sub_24AA80DCC(&v86 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v48);
    v51 = sub_24AAB50F4();
    v92 = &v86;
    v91 = v51;
    v52 = *(v51 - 8);
    v53 = *(v52 + 64);
    MEMORY[0x28223BE20](v51);
    v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
    v55 = &v86 - v54;
    sub_24AAB50D4();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v88 = sub_24AAB3E94();
      v89 = &v86;
      v87 = *(v88 - 8);
      v56 = *(v87 + 64);
      MEMORY[0x28223BE20](v88);
      v58 = &v86 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
      v104 = 0;
      v105 = 0xE000000000000000;
      sub_24AAB5374();

      v104 = 0xD00000000000003ELL;
      v105 = 0x800000024AAD2CE0;
      v103 = 246;
      v59 = sub_24AAB5444();
      v90 = v5;
      MEMORY[0x24C2257F0](v59);

      v86 = &v86;
      MEMORY[0x28223BE20](v60);
      v61 = &v86 - v54;
      v62 = &v86 - v54;
      v63 = v91;
      (*(v52 + 16))(v61, v62, v91);
      sub_24AAB3E84();
      (*(v52 + 8))(v55, v63);
      v64 = v96;
      sub_24AA1A25C(v94, v96, &qword_27EF84CA0, &unk_24AAB62C0);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CA8, &unk_24AABC010);
      (*(v87 + 32))(v64 + *(v65 + 36), v58, v88);
    }

    else
    {
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CB0, &unk_24AAB62D0);
      v64 = v96;
      v77 = (v96 + *(v76 + 36));
      v78 = sub_24AAB3E14();
      (*(v52 + 32))(&v77[*(v78 + 20)], v55, v91);
      *v77 = &unk_24AABC008;
      *(v77 + 1) = v49;
      sub_24AA1A25C(v94, v64, &qword_27EF84CA0, &unk_24AAB62C0);
    }

    v80 = v99;
    v79 = v100;
    v81 = v101;
    (*(v100 + 32))(v99, v64, v101);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BC0, &qword_24AABBFD0);
    v83 = (*(*(v82 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v82);
    (*(v79 + 16))(&v86 - v84, v80, v81);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BB8, &unk_24AABBF70);
    v85 = sub_24AA80F68();
    v104 = v98;
    v105 = v85;
    swift_getOpaqueTypeConformance2();
    sub_24AA8113C();
    sub_24AAB42B4();

    return (*(v79 + 8))(v80, v81);
  }

  else
  {
LABEL_5:
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BB8, &unk_24AABBF70);
    v67 = *(*(v66 - 8) + 64);
    MEMORY[0x28223BE20](v66);
    v69 = &v86 - v68;
    CallNotificationView.displayCall.getter(&v86 - v68);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BC0, &qword_24AABBFD0);
    v71 = (*(*(v70 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v70);
    sub_24AA1695C(v69, &v86 - v72, &qword_27EF86BB8, &unk_24AABBF70);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BC8, &unk_24AABBFD8);
    v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CA0, &unk_24AAB62C0);
    v74 = sub_24AA80F68();
    v104 = v73;
    v105 = v74;
    swift_getOpaqueTypeConformance2();
    sub_24AA8113C();
    sub_24AAB42B4();
    return sub_24AA169C4(v69, &qword_27EF86BB8, &unk_24AABBF70);
  }
}

uint64_t sub_24AA802FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_24AAB50C4();
  v3[6] = sub_24AAB50B4();
  v5 = sub_24AAB5094();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_24AA80394, v5, v4);
}

uint64_t sub_24AA80394()
{
  v1 = v0[5];
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_24AA8045C;

  return CallNotificationViewModel.observe()();
}

uint64_t sub_24AA8045C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24AA83758, v5, v4);
}

uint64_t sub_24AA805A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a1;
  v52 = a2;
  v51 = sub_24AAB3F14();
  v4 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24AAB4AA4();
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86C68, &qword_24AABC240);
  v48 = v14;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = sub_24AAB4D44();
  v20 = v19;
  v21 = sub_24AAB4D44();
  v23 = v22;
  sub_24AA809F4(v3, &v55);
  v24 = v55;
  v25 = v56;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86C70, &qword_24AABC248);
  (*(*(v26 - 8) + 16))(v17, v50, v26);
  v27 = &v17[*(v14 + 36)];
  *v27 = v21;
  *(v27 + 1) = v23;
  *(v27 + 2) = v24;
  v27[24] = v25;
  *(v27 + 4) = v18;
  *(v27 + 5) = v20;
  sub_24AAB4A84();
  v28 = v49;
  MEMORY[0x24C2252E0](1);
  v29 = *(v54 + 8);
  v54 += 8;
  v29(v12, v53);
  v30 = v51;
  v31 = *(v51 + 20);
  LODWORD(v50) = *MEMORY[0x277CE0118];
  v32 = v50;
  v33 = sub_24AAB4184();
  v47 = *(*(v33 - 8) + 104);
  v47(&v6[v31], v32, v33);
  __asm { FMOV            V0.2D, #31.0 }

  v46 = _Q0;
  *v6 = _Q0;
  sub_24AA81CB0();
  sub_24AA80D80(&qword_27EF86AD0, MEMORY[0x277CDFC08]);
  v39 = v52;
  sub_24AAB47F4();
  sub_24AA81D94(v6, MEMORY[0x277CDFC08]);
  v29(v28, v53);
  sub_24AA169C4(v17, &qword_27EF86C68, &qword_24AABC240);
  v40 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86C98, &unk_24AABC258) + 36));
  v47(&v40[*(v30 + 20)], v50, v33);
  *v40 = v46;
  *&v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF852A0, &unk_24AAB6CA0) + 36)] = 256;
  v41 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CA0, &qword_24AABC268) + 36));
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CA8, &qword_24AABC270) + 28);
  v43 = *MEMORY[0x277CDF3C0];
  v44 = sub_24AAB3CE4();
  (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
  result = swift_getKeyPath();
  *v41 = result;
  return result;
}

uint64_t sub_24AA809F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AAB4094();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*(a1 + 8) != 1)
  {
    v12 = *a1;

    sub_24AAB5134();
    v13 = sub_24AAB44B4();
    sub_24AAB3A54();

    sub_24AAB4084();
    swift_getAtKeyPath();
    sub_24AA630E4(v9, 0);
    (*(v5 + 8))(v8, v4);
    if (v19 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = [objc_opt_self() systemGroupedBackgroundColor];
    v17 = sub_24AAB49C4();
    v18 = 0;
    goto LABEL_6;
  }

  if (v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [objc_opt_self() systemGroupedBackgroundColor];
  sub_24AAB49C4();
  v11 = sub_24AAB4A54();

  v17 = v11;
  v18 = 1;
LABEL_6:
  result = sub_24AAB42B4();
  v16 = v20;
  *a2 = v19;
  *(a2 + 8) = v16;
  return result;
}

uint64_t sub_24AA80C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA81EBC();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24AA80C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA81EBC();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24AA80CFC()
{
  sub_24AA81EBC();
  sub_24AAB4474();
  __break(1u);
}

uint64_t sub_24AA80D24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24AAB3FF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24AA80D80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AA80DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallNotificationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA80E30()
{
  v2 = *(type metadata accessor for CallNotificationView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AA43DBC;

  return sub_24AA7F50C(v4, v5, v0 + v3);
}

uint64_t sub_24AA80F1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_24AA80F68()
{
  result = qword_27EF86BD0;
  if (!qword_27EF86BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CA0, &unk_24AAB62C0);
    sub_24AA80FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86BD0);
  }

  return result;
}

unint64_t sub_24AA80FF4()
{
  result = qword_27EF86BD8;
  if (!qword_27EF86BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86BE0, &qword_24AABBFE8);
    sub_24AA81080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86BD8);
  }

  return result;
}

unint64_t sub_24AA81080()
{
  result = qword_27EF86BE8;
  if (!qword_27EF86BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86BF0, &unk_24AABBFF0);
    sub_24AA80D80(&qword_27EF86BF8, MEMORY[0x277CFBA18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86BE8);
  }

  return result;
}

unint64_t sub_24AA8113C()
{
  result = qword_27EF86C00;
  if (!qword_27EF86C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86BB8, &unk_24AABBF70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84C88, &qword_24AABBF10);
    sub_24AA81230();
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF84D48, &qword_27EF84D50, &qword_24AAB6330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86C00);
  }

  return result;
}

unint64_t sub_24AA81230()
{
  result = qword_27EF86C08;
  if (!qword_27EF86C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84C88, &qword_24AABBF10);
    sub_24AA812BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86C08);
  }

  return result;
}

unint64_t sub_24AA812BC()
{
  result = qword_27EF86C10;
  if (!qword_27EF86C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86BA0, &qword_24AABBF18);
    sub_24AA16A68(&qword_27EF86C18, &qword_27EF86BA8, &qword_24AABBF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86C10);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for CallNotificationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 8);

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24AAB3CE4();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
    v11 = *(v6 + v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AA814A0()
{
  v2 = *(type metadata accessor for CallNotificationView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AA44FD0;

  return sub_24AA802FC(v4, v5, v0 + v3);
}

uint64_t sub_24AA815B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86088, qword_24AABD4A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24AA81684(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86088, qword_24AABD4A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24AA81734()
{
  sub_24AA81BD8(319, &qword_27EF86C30, type metadata accessor for CallNotificationViewModel, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_24AA81BD8(319, &qword_27EF860A0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24AA81828()
{
  result = qword_27EF86C38;
  if (!qword_27EF86C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86C40, &qword_24AABC0B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CA0, &unk_24AAB62C0);
    sub_24AA80F68();
    swift_getOpaqueTypeConformance2();
    sub_24AA8113C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86C38);
  }

  return result;
}

uint64_t sub_24AA818F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for NotificationBackground(255);
  sub_24AAB3EE4();
  sub_24AA80D80(&qword_27EF86B88, type metadata accessor for NotificationBackground);
  return swift_getWitnessTable();
}

uint64_t sub_24AA819B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86C48, &qword_24AABC108);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AA81A78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86C48, &qword_24AABC108);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24AA81B24()
{
  sub_24AA60CA4();
  if (v0 <= 0x3F)
  {
    sub_24AA81BD8(319, &qword_27EF86018, MEMORY[0x277CE0228], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24AA81BD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24AA81C40()
{
  result = qword_27EF86C60;
  if (!qword_27EF86C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86C60);
  }

  return result;
}

unint64_t sub_24AA81CB0()
{
  result = qword_27EF86C78;
  if (!qword_27EF86C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86C68, &qword_24AABC240);
    sub_24AA16A68(&qword_27EF86C80, &qword_27EF86C70, &qword_24AABC248);
    sub_24AA16A68(&qword_27EF86C88, &qword_27EF86C90, &qword_24AABC250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86C78);
  }

  return result;
}

uint64_t sub_24AA81D94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24AA81DF4(uint64_t a1)
{
  v2 = sub_24AAB3CE4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24AAB3F74();
}

unint64_t sub_24AA81EBC()
{
  result = qword_27EF86CB0;
  if (!qword_27EF86CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86CB0);
  }

  return result;
}

unint64_t sub_24AA81F20()
{
  result = qword_27EF86D18;
  if (!qword_27EF86D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86CD0, &qword_24AABC310);
    sub_24AA16A68(&qword_27EF86D20, &qword_27EF86D28, &qword_24AABC358);
    sub_24AA16A68(&qword_27EF86D30, &qword_27EF86D38, &qword_24AABC360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86D18);
  }

  return result;
}

unint64_t sub_24AA82004()
{
  result = qword_27EF86D40;
  if (!qword_27EF86D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86D10, &qword_24AABC350);
    sub_24AA81F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86D40);
  }

  return result;
}

uint64_t sub_24AA82090@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for CallNotificationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24AA7F0A0(a1, v6, a2);
}

unint64_t sub_24AA82110()
{
  result = qword_27EF86D48;
  if (!qword_27EF86D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86CE8, &qword_24AABC328);
    sub_24AA821C8();
    sub_24AA16A68(&qword_27EF85E40, &qword_27EF85E48, &qword_24AAB91C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86D48);
  }

  return result;
}

unint64_t sub_24AA821C8()
{
  result = qword_27EF86D50;
  if (!qword_27EF86D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86D58, &qword_24AABC368);
    sub_24AA82280();
    sub_24AA16A68(&qword_27EF86D30, &qword_27EF86D38, &qword_24AABC360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86D50);
  }

  return result;
}

unint64_t sub_24AA82280()
{
  result = qword_27EF86D60;
  if (!qword_27EF86D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86D68, &qword_24AABC370);
    sub_24AA80D80(&qword_27EF86D70, type metadata accessor for KeypadView);
    sub_24AA16A68(&qword_27EF85CD0, &qword_27EF85CD8, &unk_24AAB8990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86D60);
  }

  return result;
}

unint64_t sub_24AA82368()
{
  result = qword_27EF86D78;
  if (!qword_27EF86D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86CD8, &qword_24AABC318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86CD0, &qword_24AABC310);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86D10, &qword_24AABC350);
    sub_24AA81F20();
    sub_24AA82004();
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF86D80, &qword_27EF86D88, &qword_24AABC378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86D78);
  }

  return result;
}

unint64_t sub_24AA82490()
{
  result = qword_27EF86D98;
  if (!qword_27EF86D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86D98);
  }

  return result;
}

uint64_t sub_24AA824E4()
{
  v1 = (type metadata accessor for CallNotificationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_24AAB3DF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0 + v3;
  v10 = *(v0 + v3);

  v11 = *(v0 + v3 + 8);

  v12 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_24AAB3CE4();
    (*(*(v13 - 8) + 8))(v9 + v12, v13);
  }

  else
  {
    v14 = *(v9 + v12);
  }

  v15 = v2 | v7;
  v16 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v16, v5);

  return MEMORY[0x2821FE8E8](v0, v16 + v8, v15 | 7);
}

uint64_t sub_24AA82694()
{
  v1 = *(type metadata accessor for CallNotificationView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_24AAB3DF4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_24AA7F29C((v0 + v2));
}

void sub_24AA82794(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for CallNotificationView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24AA7CBD4(a1, a2, (v2 + v6));
}

unint64_t sub_24AA82840()
{
  result = qword_27EF86DF8;
  if (!qword_27EF86DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86DF0, &qword_24AABC4F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86DF8);
  }

  return result;
}

uint64_t objectdestroy_55Tm()
{
  v1 = (type metadata accessor for CallNotificationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24AAB3CE4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_90Tm()
{
  v1 = (type metadata accessor for CallNotificationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24AAB3CE4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v2 | 7);
}

uint64_t sub_24AA82B38()
{
  v1 = *(type metadata accessor for CallNotificationView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24AA7CEAC((v0 + v2));
}

uint64_t sub_24AA82C04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24AAB3FD4();
  *a1 = result;
  return result;
}

unint64_t sub_24AA82C58()
{
  result = qword_27EF86E50;
  if (!qword_27EF86E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86E40, &qword_24AABC6B0);
    sub_24AA82D10();
    sub_24AA16A68(&qword_27EF86E78, &qword_27EF86E80, &qword_24AABC6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86E50);
  }

  return result;
}

unint64_t sub_24AA82D10()
{
  result = qword_27EF86E58;
  if (!qword_27EF86E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86E60, &qword_24AABC6C0);
    sub_24AA16A68(&qword_27EF86E68, &qword_27EF86E70, &qword_24AABC6C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86E58);
  }

  return result;
}

unint64_t sub_24AA82DC8()
{
  result = qword_27EF86E88;
  if (!qword_27EF86E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86E48, &qword_24AABC6B8);
    sub_24AA82C58();
    sub_24AA16A68(&qword_27EF85E40, &qword_27EF85E48, &qword_24AAB91C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86E88);
  }

  return result;
}

uint64_t sub_24AA82E80(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24AA1A814(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24AA82EC4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24AA158E8(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_24AA82F50()
{
  result = qword_27EF86F18;
  if (!qword_27EF86F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86F10, &qword_24AABC838);
    sub_24AA83008();
    sub_24AA16A68(&qword_27EF85E40, &qword_27EF85E48, &qword_24AAB91C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86F18);
  }

  return result;
}

unint64_t sub_24AA83008()
{
  result = qword_27EF86F20;
  if (!qword_27EF86F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86F20);
  }

  return result;
}

unint64_t sub_24AA8305C()
{
  result = qword_27EF86F38;
  if (!qword_27EF86F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86F28, &qword_24AABC840);
    sub_24AA82F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86F38);
  }

  return result;
}

unint64_t sub_24AA830E0()
{
  result = qword_27EF86F40;
  if (!qword_27EF86F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86F30, &qword_24AABC848);
    sub_24AA8316C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86F40);
  }

  return result;
}

unint64_t sub_24AA8316C()
{
  result = qword_27EF86F48;
  if (!qword_27EF86F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86F50, &qword_24AABC850);
    sub_24AA83224();
    sub_24AA16A68(&qword_27EF85E40, &qword_27EF85E48, &qword_24AAB91C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86F48);
  }

  return result;
}

unint64_t sub_24AA83224()
{
  result = qword_27EF86F58;
  if (!qword_27EF86F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86F60, &qword_24AABC858);
    sub_24AA68104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86F58);
  }

  return result;
}

uint64_t sub_24AA832B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AA8333C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CallNotificationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_24AA833B0()
{
  result = qword_27EF86F90;
  if (!qword_27EF86F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86F88, &qword_24AABC8A0);
    sub_24AA83468();
    sub_24AA16A68(&qword_27EF86FA8, &qword_27EF86FB0, &qword_24AABC8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86F90);
  }

  return result;
}

unint64_t sub_24AA83468()
{
  result = qword_27EF86F98;
  if (!qword_27EF86F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86FA0, &qword_24AABC8A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86F98);
  }

  return result;
}

unint64_t sub_24AA83528()
{
  result = qword_27EF86FD0;
  if (!qword_27EF86FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86CA0, &qword_24AABC268);
    sub_24AA835E0();
    sub_24AA16A68(&unk_27EF86FE0, &qword_27EF86CA8, &qword_24AABC270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86FD0);
  }

  return result;
}

unint64_t sub_24AA835E0()
{
  result = qword_27EF86FD8;
  if (!qword_27EF86FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86C98, &unk_24AABC258);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86C68, &qword_24AABC240);
    sub_24AAB3F14();
    sub_24AA81CB0();
    sub_24AA80D80(&qword_27EF86AD0, MEMORY[0x277CDFC08]);
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF85310, &qword_27EF852A0, &unk_24AAB6CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86FD8);
  }

  return result;
}

uint64_t sub_24AA8375C(void *a1, char a2)
{
  if (a2)
  {
    strcpy(v8, ".joinRequest(");
    HIWORD(v8[1]) = -4864;
    v3 = &unk_27EF87018;
    v4 = 0x277D6EEF0;
  }

  else
  {
    strcpy(v8, ".dialRequest(");
    HIWORD(v8[1]) = -4864;
    v3 = &unk_27EF87020;
    v4 = 0x277D6EED0;
  }

  sub_24AA442A0(0, v3, v4);
  v5 = a1;
  v6 = sub_24AAB4F44();
  MEMORY[0x24C2257F0](v6);

  return v8[0];
}

id sub_24AA8382C(void *a1, char a2)
{
  v61[1] = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    v6 = [a1 handle];
    if (!v6)
    {
LABEL_32:
      v42 = objc_allocWithZone(MEMORY[0x277CBDA58]);
      v43 = *MEMORY[0x277D85DE8];

      return [v42 init];
    }

    v7 = v6;
    v8 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
    v9 = [objc_allocWithZone(MEMORY[0x277CBDBF0]) init];
    v10 = [v9 descriptorForRequiredKeys];

    v11 = [objc_opt_self() sharedInstance];
    v12 = [v11 contactStore];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87048, &qword_24AABD020);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24AABC8C0;
    *(v13 + 32) = v7;
    sub_24AA442A0(0, &qword_27EF87050, 0x277D6EEE8);
    v14 = v7;
    v15 = sub_24AAB5014();

    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24AABC8D0;
    *(v16 + 32) = v8;
    *(v16 + 40) = v10;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87058, &qword_24AABCA68);
    v17 = sub_24AAB5014();

    v61[0] = 0;
    v18 = [v12 tu:v15 contactsByHandleForHandles:v17 keyDescriptors:v61 error:?];

    v19 = v61[0];
    if (v18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87060, &unk_24AABCA70);
      sub_24AA84A68(&qword_27EF87068, &qword_27EF87050, 0x277D6EEE8);
      v20 = sub_24AAB4E54();
      v21 = v19;

      v22 = sub_24AA58C78(v20);

      if (v22)
      {
        if (v22 >> 62)
        {
          if (sub_24AAB52F4())
          {
            goto LABEL_9;
          }
        }

        else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_9:
          if ((v22 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x24C225BD0](0, v22);
          }

          else
          {
            if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
            }

            v23 = *(v22 + 32);
          }

          v24 = v23;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          goto LABEL_20;
        }
      }
    }

    else
    {
      v39 = v61[0];
      v40 = sub_24AAB2B04();

      swift_willThrow();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87040, &qword_24AAB8C00);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_24AAB7070;
    v54 = [v14 value];
    v55 = sub_24AAB4EF4();
    v57 = v56;

    *(v53 + 32) = v55;
    *(v53 + 40) = v57;
    v58 = sub_24AAB5014();

    v59 = [objc_opt_self() contactWithDisplayName:0 handleStrings:v58];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v60 = *MEMORY[0x277D85DE8];
    return v59;
  }

  v3 = [a1 remoteMembers];
  sub_24AA442A0(0, &qword_27EF87030, 0x277D6EEA0);
  sub_24AA84A68(&qword_27EF87038, &qword_27EF87030, 0x277D6EEA0);
  v4 = sub_24AAB5114();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_24AAB52F4();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  if (v5 != 1)
  {
    if (qword_27EF84C68 != -1)
    {
      swift_once();
    }

    v34 = sub_24AAB3A84();
    __swift_project_value_buffer(v34, qword_27EF919D8);
    v35 = sub_24AAB3A64();
    v36 = sub_24AAB5134();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_31;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "The must be exactly one participant to start the audio call.";
    goto LABEL_30;
  }

  v25 = [a1 remoteMembers];
  v26 = sub_24AAB5114();

  v27 = sub_24AA58CE0(v26);

  if (!v27)
  {
    if (qword_27EF84C68 != -1)
    {
      swift_once();
    }

    v41 = sub_24AAB3A84();
    __swift_project_value_buffer(v41, qword_27EF919D8);
    v35 = sub_24AAB3A64();
    v36 = sub_24AAB5134();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_31;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "No remote members.";
LABEL_30:
    _os_log_impl(&dword_24AA0F000, v35, v36, v38, v37, 2u);
    MEMORY[0x24C226630](v37, -1, -1);
LABEL_31:

    goto LABEL_32;
  }

  v28 = [objc_opt_self() sharedInstance];
  v29 = [v28 contactStore];

  v30 = [v27 handle];
  v31 = [v30 value];

  if (!v31)
  {
    sub_24AAB4EF4();
    v31 = sub_24AAB4EE4();
  }

  v24 = [v29 contactForDestinationId_];

  if (v24)
  {

LABEL_20:
    v32 = *MEMORY[0x277D85DE8];
    return v24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87040, &qword_24AAB8C00);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_24AAB7070;
  v45 = [v27 handle];
  v46 = [v45 value];

  v47 = sub_24AAB4EF4();
  v49 = v48;

  *(v44 + 32) = v47;
  *(v44 + 40) = v49;
  v50 = sub_24AAB5014();

  v51 = [objc_opt_self() contactWithDisplayName:0 handleStrings:v50];

  v52 = *MEMORY[0x277D85DE8];
  return v51;
}

void *sub_24AA84094(void *a1, char a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  if (a2)
  {
    v5 = sub_24AA8382C(a1, 1);
    v6 = [v4 stringFromContact_];

    if (!v6)
    {
      v7 = [a1 remoteMembers];
      sub_24AA442A0(0, &qword_27EF87030, 0x277D6EEA0);
      sub_24AA84A68(&qword_27EF87038, &qword_27EF87030, 0x277D6EEA0);
      v8 = sub_24AAB5114();

      v9 = sub_24AA58CE0(v8);

      if (!v9)
      {
        return v9;
      }

      v10 = [v9 handle];

      v11 = [v10 value];
      if (!v11)
      {
        sub_24AAB4EF4();
        v11 = sub_24AAB4EE4();
      }

LABEL_11:
      v6 = [v11 formattedDisplayID];
    }
  }

  else
  {
    v12 = sub_24AA8382C(a1, 0);
    v6 = [v4 stringFromContact_];

    if (!v6)
    {
      v13 = [a1 handle];
      if (!v13)
      {
        return 0;
      }

      v14 = v13;
      v11 = [v13 value];

      if (!v11)
      {
        sub_24AAB4EF4();
        v11 = sub_24AAB4EE4();
      }

      goto LABEL_11;
    }
  }

  v9 = sub_24AAB4EF4();

  return v9;
}

uint64_t sub_24AA842FC@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = type metadata accessor for CallSubtitle(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  if (a2)
  {
    v13 = sub_24AA84094(a1, 1);
    v15 = v14;
    if (v14)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    swift_storeEnumTagMultiPayload();
    v17 = sub_24AA8382C(a1, 1);
    v49 = v17;
    v18 = MEMORY[0x277D84F90];
    v48 = MEMORY[0x277D84F90];
    if (v17)
    {
      v19 = v17;
      MEMORY[0x24C225850]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v44 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24AAB5044();
      }

      sub_24AAB5064();
      v18 = v48;
    }

    if (v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = 0xE000000000000000;
    }

    sub_24AA8499C(&v49);
    *a3 = v16;
    a3[1] = v20;
    v21 = type metadata accessor for CallStatusViewModel(0);
    a3[2] = 0;
    a3[3] = 0;
    result = sub_24AA84A04(v10, a3 + v21[6]);
    *(a3 + v21[7]) = v18;
    *(a3 + v21[8]) = 1;
    v23 = (a3 + v21[9]);
    *v23 = 0;
    v23[1] = 0;
  }

  else
  {
    v24 = sub_24AA84094(a1, 0);
    v26 = v25;
    if (v25)
    {
      v27 = v24;
    }

    else
    {
      v27 = 0;
    }

    swift_storeEnumTagMultiPayload();
    v28 = sub_24AA8382C(a1, 0);
    v47 = v28;
    v29 = MEMORY[0x277D84F90];
    v48 = MEMORY[0x277D84F90];
    if (v28)
    {
      v30 = v28;
      MEMORY[0x24C225850]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v45 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24AAB5044();
      }

      sub_24AAB5064();
      v29 = v48;
    }

    if (v26)
    {
      v31 = v26;
    }

    else
    {
      v31 = 0xE000000000000000;
    }

    sub_24AA8499C(&v47);
    v32 = [a1 provider];
    v33 = [a1 isVideo];
    if ([v32 isFaceTimeProvider])
    {

      if (v33)
      {
        v34 = 2;
      }

      else
      {
        v34 = 1;
      }
    }

    else
    {
      v35 = [v32 isTelephonyProvider];

      if (v35)
      {
        v34 = 0;
      }

      else
      {
        v34 = 3;
      }
    }

    v36 = [a1 localSenderIdentity];
    if (v36)
    {
      v37 = v36;
      v38 = [v36 localizedShortName];

      v39 = sub_24AAB4EF4();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    *a3 = v27;
    a3[1] = v31;
    v42 = type metadata accessor for CallStatusViewModel(0);
    a3[2] = 0;
    a3[3] = 0;
    result = sub_24AA84A04(v12, a3 + v42[6]);
    *(a3 + v42[7]) = v29;
    *(a3 + v42[8]) = v34;
    v43 = (a3 + v42[9]);
    *v43 = v39;
    v43[1] = v41;
  }

  return result;
}

uint64_t DialPromptViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = *(v0 + 80);

  v2 = OBJC_IVAR____TtC22FaceTimeNotificationUI19DialPromptViewModel___observationRegistrar;
  v3 = sub_24AAB2D34();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t DialPromptViewModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = *(v0 + 80);

  v2 = OBJC_IVAR____TtC22FaceTimeNotificationUI19DialPromptViewModel___observationRegistrar;
  v3 = sub_24AAB2D34();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for DialPromptViewModel()
{
  result = qword_27EF87000;
  if (!qword_27EF87000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AA84814()
{
  result = sub_24AAB2D34();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24AA848F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24AA8493C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_24AA8499C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87028, &unk_24AABCA58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AA84A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallSubtitle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA84A68(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24AA442A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AnyTransition.delay(insertion:)()
{
  MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
  sub_24AAB4D74();

  sub_24AAB3DB4();

  v0 = sub_24AAB3D64();

  return v0;
}

uint64_t sub_24AA84B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87070, &qword_24AABCB18);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87078, &qword_24AABCB20);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = *v2;
  v15 = v2[1];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87080, &qword_24AABCB28);
  (*(*(v16 - 8) + 16))(v8, a1, v16);
  sub_24AA1A25C(v8, v13, &qword_27EF87070, &qword_24AABCB18);
  if (v14)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = &v13[*(v10 + 44)];
  *v18 = v17;
  v18[8] = 0;
  if (v14)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 1.0;
  }

  sub_24AA1A25C(v13, a2, &qword_27EF87078, &qword_24AABCB20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87088, &unk_24AABCB30);
  *(a2 + *(result + 36)) = v19;
  return result;
}

uint64_t AnyTransition.delay(removal:)()
{
  MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
  sub_24AAB4D74();

  sub_24AAB3DB4();

  v0 = sub_24AAB3D64();

  return v0;
}

uint64_t getEnumTagSinglePayload for BlurModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BlurModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24AA84E9C()
{
  result = qword_27EF87090;
  if (!qword_27EF87090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87088, &unk_24AABCB30);
    sub_24AA84F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87090);
  }

  return result;
}

unint64_t sub_24AA84F28()
{
  result = qword_27EF87098;
  if (!qword_27EF87098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87078, &qword_24AABCB20);
    sub_24AA84FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87098);
  }

  return result;
}

unint64_t sub_24AA84FB4()
{
  result = qword_27EF870A0;
  if (!qword_27EF870A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87070, &qword_24AABCB18);
    sub_24AA85040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF870A0);
  }

  return result;
}

unint64_t sub_24AA85040()
{
  result = qword_27EF870A8;
  if (!qword_27EF870A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87080, &qword_24AABCB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF870A8);
  }

  return result;
}

uint64_t static CallStatusViewModel.statusViewModel(for:status:isScreenLocked:wantsBadge:isCarPlay:)@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v82 = a5;
  v83 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v77 = &v75 - v12;
  v78 = type metadata accessor for CallSubtitle(0);
  v13 = *(*(v78 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v78);
  v16 = (&v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v75 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v75 - v20;
  if (a2 == 4 || a2 == 1)
  {
    v22 = a4;
    v23 = &v75 - v20;
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v21 = v23;
    a4 = v22;
    sub_24AAB3504();
    v25 = v85;
    if (v85)
    {
      v26 = v86;
      v27 = v84;

      if (v26)
      {
        v81 = v27;
        goto LABEL_8;
      }
    }
  }

  v28 = a1[3];
  v29 = a1[4];
  v30 = __swift_project_boxed_opaque_existential_1(a1, v28);
  v81 = sub_24AA87578(v30, a2, v83 & 1, v28, v29);
  v25 = v31;
LABEL_8:
  v32 = a1[3];
  v33 = __swift_project_boxed_opaque_existential_1(a1, v32);
  v34 = sub_24AA86BC8(v33, a2, v82 & 1, v32);
  v79 = v35;
  v80 = v34;
  if (a2 > 2)
  {
    if ((a2 - 5) >= 2)
    {
      if (a2 == 3)
      {
        v48 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        *v19 = sub_24AAB34F4();
        *(v19 + 1) = v49;
      }

      else if (a2 == 4)
      {
        sub_24AA16768(a1, v19);
        *(v19 + 10) = 4;
        v36 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        *(v19 + 6) = sub_24AAB34F4();
        *(v19 + 7) = v37;
        v19[64] = v82 & 1;
      }

      goto LABEL_22;
    }

    v38 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_24AAB35B4();
    v39 = v88;
    if (v88)
    {
      v40 = v87;
    }

    else
    {
      v50 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v51 = sub_24AAB34F4();
      if (v52)
      {
        v40 = v51;
      }

      else
      {
        v40 = 0;
      }

      if (v52)
      {
        v39 = v52;
      }

      else
      {
        v39 = 0xE000000000000000;
      }
    }

    *v16 = v40;
    v16[1] = v39;
    swift_storeEnumTagMultiPayload();
    sub_24AA84A04(v16, v19);
  }

  else
  {
    if (a2 != 1)
    {
LABEL_22:
      swift_storeEnumTagMultiPayload();
      goto LABEL_32;
    }

    v82 = a4;
    v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
    v41 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    *v19 = sub_24AAB34F4();
    *(v19 + 1) = v42;
    v43 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v44 = v77;
    sub_24AAB34E4();
    v45 = sub_24AAB2C54();
    v46 = *(v45 - 8);
    v47 = *(v46 + 48);
    if (v47(v44, 1, v45) == 1)
    {
      sub_24AAB2C34();
      if (v47(v44, 1, v45) != 1)
      {
        sub_24AA169C4(v44, &qword_27EF855E8, &unk_24AABCB40);
      }
    }

    else
    {
      (*(v46 + 32))(&v19[v76], v44, v45);
    }

    swift_storeEnumTagMultiPayload();
    LOBYTE(a4) = v82;
  }

LABEL_32:
  sub_24AA84A04(v19, v21);
  v53 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v54 = sub_24AAB3564();
  if (v54 && (v55 = v54, v56 = [v54 shouldHideContactWithLockState_], v55, (v56 & 1) != 0))
  {
    v57 = MEMORY[0x277D84F90];
    if ((a4 & 1) == 0)
    {
LABEL_35:
      v58 = 3;
      goto LABEL_44;
    }
  }

  else
  {
    v59 = a1[3];
    v60 = __swift_project_boxed_opaque_existential_1(a1, v59);
    v57 = sub_24AA86F34(v60, v59);
    if ((a4 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v61 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v62 = sub_24AAB35A4();
  v63 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v64 = sub_24AAB3574();
  if ([v62 isFaceTimeProvider])
  {

    if (v64)
    {
      v58 = 2;
    }

    else
    {
      v58 = 1;
    }
  }

  else
  {
    v65 = [v62 isTelephonyProvider];

    if (v65)
    {
      v58 = 0;
    }

    else
    {
      v58 = 3;
    }
  }

LABEL_44:
  v66 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v67 = sub_24AAB3554();
  v69 = v68;
  v70 = v80;
  *a6 = v81;
  a6[1] = v25;
  v71 = v79;
  a6[2] = v70;
  a6[3] = v71;
  v72 = type metadata accessor for CallStatusViewModel(0);
  result = sub_24AA84A04(v21, a6 + v72[6]);
  *(a6 + v72[7]) = v57;
  *(a6 + v72[8]) = v58;
  v74 = (a6 + v72[9]);
  *v74 = v67;
  v74[1] = v69;
  return result;
}

uint64_t static CallStatusViewModel.statusViewModelFoCallRecording(for:statusLabel:duration:isScreenLocked:)@<X0>(void *a1@<X0>, uint64_t a2@<X3>, char a3@<W4>, uint64_t *a4@<X8>)
{
  v76 = a2;
  v82 = a4;
  v6 = sub_24AAB2CD4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24AAB4ED4();
  v84 = *(v9 - 8);
  v85 = v9;
  v10 = *(v84 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v74 - v17;
  v87 = sub_24AAB2C54();
  v79 = *(v87 - 8);
  v19 = *(v79 + 64);
  MEMORY[0x28223BE20](v87);
  v21 = v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for CallSubtitle(0);
  v22 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v24 = (v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a1[4];
  v74[0] = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v74[1] = v25;
  v26 = sub_24AAB3564();
  v77 = v21;
  if (v26)
  {
    v27 = v26;
    v28 = [v26 siriDisplayName];
    if (v28)
    {
      v29 = v28;
      v86 = v18;
      v30 = sub_24AAB4EF4();
      v32 = v31;

      if ([v27 shouldHideContactWithLockState_])
      {

        v78 = MEMORY[0x277D84F90];
        v33 = v32;
        v18 = v86;
        goto LABEL_8;
      }

      v18 = v86;
    }

    else
    {
    }
  }

  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v35 = sub_24AAB34C4();
  v33 = v36;
  v37 = a1[3];
  v38 = v13;
  v39 = __swift_project_boxed_opaque_existential_1(a1, v37);

  v40 = v39;
  v13 = v38;
  v30 = v35;
  v78 = sub_24AA86F34(v40, v37);
LABEL_8:

  v41 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v41 = v30 & 0xFFFFFFFFFFFFLL;
  }

  v42 = v87;
  v75 = v24;
  if (v41)
  {
    v86 = v30;
    v43 = v85;
    v44 = v81;
  }

  else
  {
    v45 = v13;

    v46 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v86 = sub_24AAB3544();
    if (v47)
    {
      v33 = v47;
      v43 = v85;
      v42 = v87;
    }

    else
    {
      v48 = sub_24AAB3564();
      v42 = v87;
      if (v48)
      {
        v49 = v48;
        v50 = [v48 value];

        v86 = sub_24AAB4EF4();
        v33 = v51;
      }

      else
      {
        v86 = 0;
        v33 = 0xE000000000000000;
      }

      v43 = v85;
    }

    v44 = v81;
    v13 = v45;
  }

  sub_24AA46DA8(v76, v18);
  v52 = v79;
  if ((*(v79 + 48))(v18, 1, v42) == 1)
  {
    sub_24AA169C4(v18, &qword_27EF855E8, &unk_24AABCB40);
    v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF870B0, &unk_24AABCB50) + 48);
    sub_24AAB4E84();
    v53 = v84;
    (*(v84 + 16))(v13, v44, v43);
    if (qword_27EF84C50 != -1)
    {
      swift_once();
    }

    v54 = qword_27EF919A8;
    sub_24AAB2CC4();
    v55 = sub_24AAB4F14();
    v57 = v56;
    (*(v53 + 8))(v44, v43);
    v58 = v75;
    *v75 = v55;
    *(v58 + 8) = v57;
    (*(v52 + 56))(v58 + v85, 1, 1, v42);
  }

  else
  {
    v85 = *(v52 + 32);
    (v85)(v77, v18, v42);
    v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF870B0, &unk_24AABCB50) + 48);
    sub_24AAB4E84();
    v59 = v84;
    (*(v84 + 16))(v13, v44, v43);
    if (qword_27EF84C50 != -1)
    {
      swift_once();
    }

    v60 = qword_27EF919A8;
    sub_24AAB2CC4();
    v61 = sub_24AAB4F14();
    v63 = v62;
    (*(v59 + 8))(v44, v43);
    v58 = v75;
    *v75 = v61;
    *(v58 + 8) = v63;
    v64 = v81;
    v65 = v87;
    (v85)(&v81[v58], v77, v87);
    (*(v52 + 56))(&v64[v58], 0, 1, v65);
  }

  swift_storeEnumTagMultiPayload();
  v66 = type metadata accessor for CallStatusViewModel(0);
  v67 = v82;
  sub_24AA877CC(v58, v82 + v66[6]);
  v68 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v69 = sub_24AAB3554();
  v71 = v70;
  result = sub_24AA87830(v58);
  *v67 = v86;
  v67[1] = v33;
  v67[2] = 0;
  v67[3] = 0;
  *(v67 + v66[7]) = v78;
  *(v67 + v66[8]) = 3;
  v73 = (v67 + v66[9]);
  *v73 = v69;
  v73[1] = v71;
  return result;
}

uint64_t static CallStatusViewModel.statusViewModelForWaitOnHold(for:isScreenLocked:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_24AAB2CD4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24AAB4ED4();
  v9 = *(v57 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v57);
  v54 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v53 - v13;
  v15 = a1[4];
  v53[1] = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v53[2] = v15;
  v16 = sub_24AAB3564();
  if (v16)
  {
    v17 = v16;
    v18 = [v16 siriDisplayName];
    if (v18)
    {
      v19 = v18;
      v20 = sub_24AAB4EF4();
      v22 = v21;

      if ([v17 shouldHideContactWithLockState_])
      {

        v55 = MEMORY[0x277D84F90];
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_24AAB34C4();
  v22 = v24;
  v25 = a1[3];
  v26 = __swift_project_boxed_opaque_existential_1(a1, v25);

  v55 = sub_24AA86F34(v26, v25);
LABEL_8:

  v27 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v27 = v20 & 0xFFFFFFFFFFFFLL;
  }

  v28 = v54;
  if (!v27)
  {

    v29 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v30 = sub_24AAB3544();
    if (v31)
    {
      v20 = v30;
      v22 = v31;
    }

    else
    {
      v32 = sub_24AAB3564();
      if (v32)
      {
        v33 = v32;
        v34 = [v32 value];

        v20 = sub_24AAB4EF4();
        v22 = v35;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }
    }
  }

  v36 = v57;
  sub_24AAB4E84();
  (*(v9 + 16))(v28, v14, v36);
  if (qword_27EF84C50 != -1)
  {
    swift_once();
  }

  v37 = qword_27EF919A8;
  sub_24AAB2CC4();
  v38 = sub_24AAB4F14();
  v40 = v39;
  (*(v9 + 8))(v14, v36);
  v41 = type metadata accessor for CallStatusViewModel(0);
  v42 = (a3 + v41[6]);
  *v42 = v20;
  v42[1] = v22;
  type metadata accessor for CallSubtitle(0);
  swift_storeEnumTagMultiPayload();
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v44 = sub_24AAB35A4();
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v46 = sub_24AAB3574();
  if ([v44 isFaceTimeProvider])
  {

    if (v46)
    {
      v47 = 2;
    }

    else
    {
      v47 = 1;
    }
  }

  else
  {
    v48 = [v44 isTelephonyProvider];

    if (v48)
    {
      v47 = 0;
    }

    else
    {
      v47 = 3;
    }
  }

  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_24AAB3554();
  *a3 = v38;
  a3[1] = v40;
  a3[2] = 0;
  a3[3] = 0;
  *(a3 + v41[7]) = v55;
  *(a3 + v41[8]) = v47;
  v51 = (a3 + v41[9]);
  *v51 = result;
  v51[1] = v52;
  return result;
}

uint64_t CallStatusViewModel.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CallStatusViewModel.source.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CallStatusViewModel.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CallStatusViewModel(0) + 24);

  return sub_24AA877CC(v3, a1);
}

uint64_t CallStatusViewModel.contacts.getter()
{
  v1 = *(v0 + *(type metadata accessor for CallStatusViewModel(0) + 28));
}

uint64_t CallStatusViewModel.badge.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CallStatusViewModel(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t CallStatusViewModel.senderIdentityShortName.getter()
{
  v1 = (v0 + *(type metadata accessor for CallStatusViewModel(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t static CallStatusViewModel.contacts(for:)(void *a1)
{
  v1 = a1[3];
  v2 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_24AA86F34(v2, v1);
}

uint64_t CallSubtitle.string.getter()
{
  v1 = v0;
  v2 = sub_24AAB2CD4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_24AAB4ED4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v50[-v10];
  v12 = type metadata accessor for CallSubtitle(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24AA877CC(v1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6 || (v17 = EnumCaseMultiPayload, result = 0, v17 == 7))
      {
        sub_24AAB4E84();
        (*(v5 + 16))(v9, v11, v4);
        if (qword_27EF84C50 == -1)
        {
LABEL_28:
          v40 = qword_27EF919A8;
          sub_24AAB2CC4();
          v41 = sub_24AAB4F14();
          (*(v5 + 8))(v11, v4);
          return v41;
        }

LABEL_44:
        swift_once();
        goto LABEL_28;
      }

      return result;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v39 = *(v15 + 1);
      v53 = *v15;
      v54 = v39;
      return sub_24AAB4FF4();
    }

    v44 = *(v15 + 1);

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF870B0, &unk_24AABCB50);
    sub_24AA169C4(&v15[*(v45 + 48)], &qword_27EF855E8, &unk_24AABCB40);
    return 0;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      result = *v15;
      v43 = *(v15 + 1);
      return result;
    }

    v36 = *(v15 + 1);

    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
    v38 = sub_24AAB2C54();
    (*(*(v38 - 8) + 8))(&v15[v37], v38);
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    v19 = *(v15 + 10);
    v20 = *(v15 + 6);
    v21 = *(v15 + 7);
    v51 = v15[64];
    sub_24AA16AF4(v15, &v53);
    v52 = v19;
    v22 = v19 == 4 || v19 == 1;
    if (!v22 || (__swift_project_boxed_opaque_existential_1(&v53, v55), sub_24AAB3504(), !v58))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v53);
      return v20;
    }

    v23 = v60;
    if ((v61 & 1) == 0)
    {
      v46 = v57;
      __swift_destroy_boxed_opaque_existential_1Tm(&v53);

      if (!v21)
      {
        return v46;
      }

      return v20;
    }

    v24 = v59;

    if (v51)
    {
      if (!v23)
      {
LABEL_40:
        v47 = v55;
        v48 = v56;
        v49 = __swift_project_boxed_opaque_existential_1(&v53, v55);
        v35 = sub_24AA87578(v49, v52, 0, v47, v48);
LABEL_41:
        __swift_destroy_boxed_opaque_existential_1Tm(&v53);
        return v35;
      }

      v25 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v25 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        sub_24AAB4E84();
        (*(v5 + 16))(v9, v11, v4);
        if (qword_27EF84C50 != -1)
        {
          swift_once();
        }

        v26 = qword_27EF919A8;
        sub_24AAB2CC4();
        sub_24AAB4F14();
        (*(v5 + 8))(v11, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A60, &qword_24AAB8138);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_24AAB7D10;
        v28 = MEMORY[0x277D837D0];
        *(v27 + 56) = MEMORY[0x277D837D0];
        v29 = sub_24AA8788C();
        *(v27 + 64) = v29;
        *(v27 + 32) = v24;
        *(v27 + 40) = v23;
        v30 = v55;
        v31 = v56;
        v32 = __swift_project_boxed_opaque_existential_1(&v53, v55);
        v33 = sub_24AA87578(v32, v52, 0, v30, v31);
        *(v27 + 96) = v28;
        *(v27 + 104) = v29;
        *(v27 + 72) = v33;
        *(v27 + 80) = v34;
        v35 = sub_24AAB4F04();

        goto LABEL_41;
      }
    }

    goto LABEL_40;
  }

  v42 = *(v15 + 1);
  if (!v42)
  {
    sub_24AAB4E84();
    (*(v5 + 16))(v9, v11, v4);
    if (qword_27EF84C50 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_44;
  }

  v53 = *v15;
  v54 = v42;

  MEMORY[0x24C2257F0](10911970, 0xA300000000000000);

  return v53;
}

uint64_t sub_24AA86BC8(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v8 = sub_24AAB2CD4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_24AAB4ED4();
  v32 = *(v10 - 8);
  v33 = v10;
  v11 = *(v32 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v30 - v16;
  v18 = *(a4 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, a4);
  v22 = 0;
  if ((a3 & 1) == 0 && a2 == 4)
  {
    sub_24AAB3504();
    if (v34)
    {
      v23 = v35;
      v24 = v36;

      if (v24)
      {
        v31 = v23;
        sub_24AAB4E84();
        v25 = v32;
        v26 = v33;
        (*(v32 + 16))(v14, v17, v33);
        if (qword_27EF84C50 != -1)
        {
          swift_once();
        }

        v27 = qword_27EF919A8;
        sub_24AAB2CC4();
        sub_24AAB4F14();
        (*(v25 + 8))(v17, v26);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A60, &qword_24AAB8138);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_24AAB7070;
        *(v28 + 56) = MEMORY[0x277D837D0];
        *(v28 + 64) = sub_24AA8788C();
        *(v28 + 32) = v31;
        *(v28 + 40) = v24;
        v22 = sub_24AAB4F04();
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  (*(v18 + 8))(v21, a4);
  return v22;
}

uint64_t sub_24AA86F34(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85868, &qword_24AAB7940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v50 - v6;
  v8 = sub_24AAB2BD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  v16 = *(*(a2 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v19;
  (*(v19 + 16))(v18, a1, a2);
  v20 = sub_24AAB3584();
  v21 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v22 = [v21 callerIDSyncMacEnabled];

  if (v22)
  {
    v55 = a2;
    sub_24AAB3594();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_24AA169C4(v7, &qword_27EF85868, &qword_24AAB7940);
      v23 = v20;
LABEL_15:
      v24 = v55;
      goto LABEL_16;
    }

    v25 = v8;
    v26 = v15;
    (*(v9 + 32))(v15, v7, v8);
    v23 = v20;
    if (v20 >> 62)
    {
      if (sub_24AAB52F4() == 1 && sub_24AAB52F4())
      {
        goto LABEL_7;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
LABEL_7:
      if ((v20 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x24C225BD0](0, v20);
      }

      else
      {
        if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          swift_once();
          v30 = sub_24AAB3A84();
          __swift_project_value_buffer(v30, qword_27EF919D8);
          v31 = v56;
          (*(v9 + 16))(v56, v15, v25);
          v32 = sub_24AAB3A64();
          v33 = v25;
          v34 = sub_24AAB5124();
          if (os_log_type_enabled(v32, v34))
          {
            v35 = swift_slowAlloc();
            v54 = v26;
            v36 = v35;
            v59 = swift_slowAlloc();
            v53 = a2;
            v37 = v59;
            *v36 = 136315138;
            sub_24AA87FF4();
            v51 = v32;
            v38 = sub_24AAB5444();
            v52 = v7;
            v40 = v39;
            v41 = *(v9 + 8);
            v41(v31, v33);
            v42 = sub_24AA406B4(v38, v40, &v59);

            *(v36 + 4) = v42;
            v43 = v51;
            _os_log_impl(&dword_24AA0F000, v51, v34, "Could not create imageData from %s", v36, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v37);
            MEMORY[0x24C226630](v37, -1, -1);
            MEMORY[0x24C226630](v36, -1, -1);

            v41(v54, v33);
          }

          else
          {

            v49 = *(v9 + 8);
            v49(v31, v33);
            v49(v26, v33);
          }

          goto LABEL_15;
        }

        v27 = *(v20 + 32);
      }

      v28 = v27;
      [v27 mutableCopy];

      sub_24AAB5284();
      swift_unknownObjectRelease();
      sub_24AA442A0(0, &qword_27EF87138, 0x277CBDB38);
      if (swift_dynamicCast())
      {
        v29 = v58;
        v44 = sub_24AAB2BE4();
        v46 = v45;

        v47 = sub_24AAB2BF4();
        sub_24AA190E8(v44, v46);
        [v29 setImageData_];

        [v29 setContactType_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87048, &qword_24AABD020);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_24AABC8C0;
        *(v23 + 32) = v29;
      }
    }

    (*(v9 + 8))(v15, v25);
    goto LABEL_15;
  }

  v23 = v20;
  v24 = a2;
LABEL_16:
  (*(v57 + 8))(v18, v24);
  return v23;
}

uint64_t sub_24AA87578(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v28);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a4);
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v10 = sub_24AAB3564();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 siriDisplayName];
    if (v12)
    {
      v13 = v12;
      v14 = sub_24AAB4EF4();
      v16 = v15;

      v17 = [v11 shouldHideContactWithLockState_];
      if (v17)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v14 = sub_24AAB34C4();
  v16 = v18;
LABEL_7:

  v19 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v19 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
LABEL_15:
    if (a2 != 6)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v20 = sub_24AAB3544();
  if (v21)
  {
    v14 = v20;
    if (a2 != 6)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v22 = sub_24AAB3564();
  if (v22)
  {
    v23 = v22;
    v24 = [v22 value];

    v14 = sub_24AAB4EF4();
    goto LABEL_15;
  }

  v14 = 0;
  if (a2 != 6)
  {
    goto LABEL_19;
  }

LABEL_16:
  sub_24AAB35B4();
  if (v33)
  {
    v25 = v31;
    v26 = v32;

    if (v26)
    {

      v14 = v25;
    }
  }

LABEL_19:
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v14;
}

uint64_t sub_24AA877CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallSubtitle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA87830(uint64_t a1)
{
  v2 = type metadata accessor for CallSubtitle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24AA8788C()
{
  result = qword_27EF870B8;
  if (!qword_27EF870B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF870B8);
  }

  return result;
}

uint64_t sub_24AA878F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CallSubtitle(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AA879B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CallSubtitle(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24AA87A58()
{
  sub_24AA87BA0(319, &qword_27EF870D0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CallSubtitle(319);
    if (v1 <= 0x3F)
    {
      sub_24AA87B38();
      if (v2 <= 0x3F)
      {
        sub_24AA87BA0(319, &qword_27EF870E0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24AA87B38()
{
  if (!qword_27EF870D8)
  {
    sub_24AA442A0(255, &qword_27EF861A0, 0x277CBDA58);
    v0 = sub_24AAB5074();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF870D8);
    }
  }
}

void sub_24AA87BA0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24AAB5274();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_24AA87C3C()
{
  sub_24AA87D00(319);
  if (v0 <= 0x3F)
  {
    sub_24AA87E44();
    if (v1 <= 0x3F)
    {
      sub_24AA87E9C();
      if (v2 <= 0x3F)
      {
        sub_24AA87F1C();
        if (v3 <= 0x3F)
        {
          sub_24AA87F4C();
          if (v4 <= 0x3F)
          {
            sub_24AA87F7C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24AA87D00(uint64_t a1)
{
  if (!qword_27EF870F8)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87100, &qword_24AABCBD8);
    type metadata accessor for TUCallStatus(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87108, &qword_24AABCBE0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27EF870F8);
    }
  }
}

void sub_24AA87E44()
{
  if (!qword_27EF87110)
  {
    sub_24AA87BA0(0, &qword_27EF870D0);
    if (!v1)
    {
      atomic_store(v0, &qword_27EF87110);
    }
  }
}

void sub_24AA87E9C()
{
  if (!qword_27EF87118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87108, &qword_24AABCBE0);
    sub_24AAB2C54();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF87118);
    }
  }
}

uint64_t sub_24AA87F1C()
{
  result = qword_27EF87120;
  if (!qword_27EF87120)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27EF87120);
  }

  return result;
}

uint64_t sub_24AA87F4C()
{
  result = qword_27EF87128;
  if (!qword_27EF87128)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27EF87128);
  }

  return result;
}

void sub_24AA87F7C()
{
  if (!qword_27EF87130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF855E8, &unk_24AABCB40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF87130);
    }
  }
}

unint64_t sub_24AA87FF4()
{
  result = qword_27EF85878;
  if (!qword_27EF85878)
  {
    sub_24AAB2BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85878);
  }

  return result;
}

uint64_t sub_24AA8805C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA8F508(&qword_27EF85CF8, type metadata accessor for KeypadViewModel);
  sub_24AAB2CF4();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_24AA8811C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_24AA593F8(v2, v3);
}

unint64_t sub_24AA881AC@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
  sub_24AAB2CF4();

  swift_beginAccess();
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_24AA8CD98(v4);
}

uint64_t sub_24AA88274(__int128 *a1, uint64_t *a2)
{
  v5 = *a1;
  v2 = *(a1 + 2);
  v3 = *a2;
  swift_getKeyPath();
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
  sub_24AAB2CE4();
}

unint64_t sub_24AA88354@<X0>(unint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
  sub_24AAB2CF4();

  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return sub_24AA8CD98(v3);
}

uint64_t sub_24AA8841C(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  swift_getKeyPath();
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
  sub_24AAB2CE4();
  sub_24AA8CE4C(v1);
}

unint64_t sub_24AA88504(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
  sub_24AA8CD98(a2);
  return sub_24AA8CE4C(v8);
}

void (*sub_24AA8859C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  v4[7] = sub_24AA8815C();
  return sub_24AA886D4;
}

void sub_24AA886D4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_24AAB2D04();

  free(v1);
}

uint64_t sub_24AA88768()
{
  swift_getKeyPath();
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
  sub_24AAB2CF4();

  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback);
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback + 8);
  sub_24AA16D2C(v1);
  return v1;
}

uint64_t sub_24AA88828@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback);
  v5 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24AA8F788;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24AA16D2C(v4);
}

uint64_t sub_24AA88920(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24AA8F750;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AA16D2C(v3);
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
  sub_24AAB2CE4();
  sub_24AA16D74(v6);
}

uint64_t sub_24AA88A7C()
{
  v0 = sub_24AAB2E34();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_24AAB2E24();
  v3 = sub_24AAB2E14();

  qword_27EF87140 = v3;
  return result;
}

uint64_t sub_24AA88B08@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_24AABCC10;
  v2 = *MEMORY[0x277CFCA00];
  v3 = sub_24AAB2D94();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t static NotificationController.answeringMachine.getter()
{
  if (qword_27EF84C60 != -1)
  {
    swift_once();
  }

  return swift_unknownObjectRetain();
}

uint64_t NotificationController.__allocating_init(callCenter:channel:callsReminder:)(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  NotificationController.init(callCenter:channel:callsReminder:)(a1, a2, a3);
  return v9;
}

void *NotificationController.init(callCenter:channel:callsReminder:)(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = 0xF000000000000007;
  v8 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_alertIdentifier;
  v9 = sub_24AAB3454();
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  v10 = (v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_logger;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v12 = sub_24AAB3A84();
  v13 = __swift_project_value_buffer(v12, qword_27EF919D8);
  (*(*(v12 - 8) + 16))(v4 + v11, v13, v12);
  sub_24AAB2D24();
  *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_xpc) = a2;
  sub_24AA16768(a1, v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter);
  sub_24AA16768(a3, v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callsReminder);

  v14 = sub_24AAB3A64();
  v15 = sub_24AAB5144();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315138;
    type metadata accessor for NotificationController();

    v18 = sub_24AAB4F44();
    v20 = sub_24AA406B4(v18, v19, &v22);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_24AA0F000, v14, v15, "%s created.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x24C226630](v17, -1, -1);
    MEMORY[0x24C226630](v16, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

void sub_24AA88ED4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_xpc;
  v3 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_xpc);
  swift_allocObject();
  swift_weakInit();

  sub_24AAB3274();

  v4 = *(v1 + v2);
  swift_allocObject();
  swift_weakInit();

  sub_24AAB3284();

  v5 = *(v1 + v2);

  v6 = sub_24AAB3634();

  swift_allocObject();
  swift_weakInit();

  sub_24AAB3684();

  v7 = *(v1 + v2);

  sub_24AAB3644();

  oslog = sub_24AAB3A64();
  v8 = sub_24AAB5144();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    type metadata accessor for NotificationController();

    v11 = sub_24AAB4F44();
    v13 = sub_24AA406B4(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_24AA0F000, oslog, v8, "%s: NotificationController configured.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x24C226630](v10, -1, -1);
    MEMORY[0x24C226630](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24AA89194(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87188, &qword_24AABCDA8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_24AAB3454();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, a1, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v10 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_alertIdentifier;
    swift_beginAccess();
    sub_24AA8FA3C(v5, v7 + v10);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_24AA89304(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;

    v8 = a1;
    v9 = sub_24AAB3A64();
    v10 = sub_24AAB5144();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v7;
      v27 = v12;
      *v11 = 136315394;
      type metadata accessor for NotificationController();

      v13 = sub_24AAB4F44();
      v15 = sub_24AA406B4(v13, v14, &v27);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v26 = v8;
      sub_24AAB3444();
      v16 = v8;
      v17 = sub_24AAB4F44();
      v19 = sub_24AA406B4(v17, v18, &v27);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_24AA0F000, v9, v10, "%s: Received action %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v12, -1, -1);
      MEMORY[0x24C226630](v11, -1, -1);
    }

    v20 = sub_24AAB50F4();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    sub_24AAB50C4();

    v21 = v8;
    v22 = sub_24AAB50B4();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v7;
    v23[5] = v21;
    sub_24AA330D4(0, 0, v5, &unk_24AABD050, v23);
  }

  return result;
}

uint64_t sub_24AA895D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_24AAB50C4();
  v5[7] = sub_24AAB50B4();
  v7 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA89670, v7, v6);
}

uint64_t sub_24AA89670()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  swift_getKeyPath();
  *(v0 + 16) = v2;
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
  sub_24AAB2CF4();

  v3 = swift_beginAccess();
  if ((~*(v2 + 16) & 0xF000000000000007) != 0)
  {
    MEMORY[0x24C2255E0](v3, 0.5, 1.0, 0.0);
  }

  *(swift_task_alloc() + 16) = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857F0, &qword_24AAB7910);
  sub_24AAB3E24();

  v4 = *(v0 + 8);

  return v4();
}

void sub_24AA897F8(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  sub_24AAB36D4();
  if (swift_dynamicCastClass())
  {
    v6 = a1;
    v7 = sub_24AAB36C4();
    v8 = v7;
    v9 = 1;
LABEL_5:
    sub_24AA89FDC(v7, v9);
LABEL_6:

    goto LABEL_7;
  }

  sub_24AAB36B4();
  if (swift_dynamicCastClass())
  {
    v6 = a1;
    v7 = sub_24AAB36A4();
    v8 = v7;
    v9 = 0;
    goto LABEL_5;
  }

  sub_24AAB3434();
  if (swift_dynamicCastClass())
  {
    v6 = a1;
    v11 = sub_24AAB3424();
    sub_24AA8D548(v11, a2);

    goto LABEL_7;
  }

  sub_24AAB34B4();
  if (swift_dynamicCastClass())
  {
    v6 = a1;
    v8 = sub_24AAB34A4();
    sub_24AA8A368(v8);
    goto LABEL_6;
  }

  sub_24AAB3614();
  if (swift_dynamicCastClass())
  {
    v6 = a1;
    sub_24AAB3604();
    sub_24AA8A738();
  }

  else
  {
    sub_24AAB37A4();
    if (!swift_dynamicCastClass())
    {
      v16 = a1;

      v17 = sub_24AAB3A64();
      v18 = sub_24AAB5124();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v28 = v20;
        *v19 = 136315394;
        type metadata accessor for NotificationController();

        v21 = sub_24AAB4F44();
        v23 = sub_24AA406B4(v21, v22, &v28);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2080;
        sub_24AAB3444();
        v24 = v16;
        v25 = sub_24AAB4F44();
        v27 = sub_24AA406B4(v25, v26, &v28);

        *(v19 + 14) = v27;
        _os_log_impl(&dword_24AA0F000, v17, v18, "%s: Unhandled received action %s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v20, -1, -1);
        MEMORY[0x24C226630](v19, -1, -1);
      }

      goto LABEL_8;
    }

    swift_getKeyPath();
    v28 = a2;
    sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
    v6 = a1;
    sub_24AAB2CF4();

    v12 = a2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback;
    v13 = *(a2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback);
    if (!v13)
    {

      v10 = 1;
      goto LABEL_9;
    }

    v14 = *(v12 + 1);

    v15 = sub_24AAB3794();
    v13(v15 & 1);
    sub_24AA16D74(v13);
  }

LABEL_7:

LABEL_8:
  v10 = 0;
LABEL_9:
  *a3 = v10;
}

uint64_t sub_24AA89BC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_24AAB50F4();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_24AAB50C4();

    v7 = sub_24AAB50B4();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v5;
    sub_24AA330D4(0, 0, v3, &unk_24AABD040, v8);
  }

  return result;
}

uint64_t sub_24AA89D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_24AAB50C4();
  *(v4 + 32) = sub_24AAB50B4();
  v6 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA89DAC, v6, v5);
}

uint64_t sub_24AA89DAC()
{
  v16 = v0;
  v2 = v0[3];
  v1 = v0[4];

  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    type metadata accessor for NotificationController();

    v8 = sub_24AAB4F44();
    v10 = sub_24AA406B4(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24AA0F000, v3, v4, "%s: Connection invalidated, destructing view model.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x24C226630](v7, -1, -1);
    MEMORY[0x24C226630](v6, -1, -1);
  }

  v11 = v0[3];
  swift_getKeyPath();
  v12 = swift_task_alloc();
  v12[2] = v11;
  v12[3] = 0xF000000000000007;
  v12[4] = 0;
  v12[5] = 0;
  v0[2] = v11;
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
  sub_24AAB2CE4();

  v13 = v0[1];

  return v13();
}

uint64_t sub_24AA89FDC(void *a1, char a2)
{
  v3 = v2;
  v6 = a1;

  v7 = sub_24AAB3A64();
  v8 = sub_24AAB5144();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26[0] = v10;
    *v9 = 136315394;
    *&v27[0] = v3;
    type metadata accessor for NotificationController();

    v11 = sub_24AAB4F44();
    v13 = sub_24AA406B4(v11, v12, v26);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *&v27[0] = a1;
    BYTE8(v27[0]) = a2 & 1;
    v14 = v6;
    v15 = sub_24AAB4F44();
    v17 = sub_24AA406B4(v15, v16, v26);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_24AA0F000, v7, v8, "%s: Showing dial prompt for %s.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v10, -1, -1);
    MEMORY[0x24C226630](v9, -1, -1);
  }

  sub_24AA16768(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter, v27);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = type metadata accessor for DialPromptViewModel();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  *(v22 + 88) = 0;

  sub_24AAB2D24();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2 & 1;
  sub_24AA15A64(v27, v22 + 32);
  *(v22 + 72) = sub_24AA8F550;
  *(v22 + 80) = v18;
  v23 = v6;

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *&v27[0] = v3;
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
  sub_24AAB2CE4();
}

void sub_24AA8A2F0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v0 = [objc_allocWithZone(sub_24AAB3744()) init];
    sub_24AA8B95C(v0);
  }
}

uint64_t sub_24AA8A368(void *a1)
{
  v2 = v1;

  v4 = a1;
  v5 = sub_24AAB3A64();
  v6 = sub_24AAB5144();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315394;
    type metadata accessor for NotificationController();

    v9 = sub_24AAB4F44();
    v11 = sub_24AA406B4(v9, v10, &v26);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    sub_24AAB3844();
    v12 = v4;
    v13 = sub_24AAB4F44();
    v15 = sub_24AA406B4(v13, v14, &v26);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_24AA0F000, v5, v6, "%s: Showing notice %s.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v8, -1, -1);
    MEMORY[0x24C226630](v7, -1, -1);
  }

  v16 = (v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter);
  v17 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter), *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter + 24));
  sub_24AAB32D4();
  v18 = v16[4];
  v19 = __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  MEMORY[0x28223BE20](v19);
  sub_24AAB3344();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
  v20 = sub_24AAB53D4();

  if (v20[2])
  {
    v21 = v20[4];
    v22 = v20[5];
    swift_unknownObjectRetain();
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v26 = v2;
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
  v24 = v4;
  sub_24AAB2CE4();

  return swift_unknownObjectRelease();
}

uint64_t sub_24AA8A738()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v39 - v4;

  v6 = sub_24AAB3A64();
  v7 = sub_24AAB5144();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40 = v9;
    *v8 = 136315138;
    v39[1] = v1;
    type metadata accessor for NotificationController();

    v10 = sub_24AAB4F44();
    v12 = sub_24AA406B4(v10, v11, &v40);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AA0F000, v6, v7, "%s: Showing test call.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x24C226630](v9, -1, -1);
    MEMORY[0x24C226630](v8, -1, -1);
  }

  sub_24AA8D4E0();
  sub_24AAB5154();
  v13 = sub_24AAB2C54();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = objc_allocWithZone(MEMORY[0x277D6EEE8]);
  v15 = sub_24AAB4EE4();
  [v14 initWithType:3 value:v15];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87048, &qword_24AABD020);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24AABC8C0;
  v17 = sub_24AAB4EE4();
  v18 = sub_24AAB4EE4();
  v19 = [objc_opt_self() contactWithDisplayName:v17 emailOrPhoneNumber:v18];

  *(v16 + 32) = v19;
  v20 = sub_24AAB3254();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_24AAB3244();
  v24 = sub_24AAB35D4();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  v27 = sub_24AAB35C4();
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = sub_24AAB36F4();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();

  v32 = sub_24AAB36E4();
  v33 = type metadata accessor for CallNotificationViewModel();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();

  sub_24AA8E8F4(v23, v27, v32, v1, sub_24AA8D52C, v28, 0, v36);

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v40 = v1;
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
  sub_24AAB2CE4();
}

uint64_t sub_24AA8AC28(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v3 != 2)
    {
    }

    if (v2 > 9)
    {
      if (__PAIR128__((v2 >= 0x12) + v1 - 1, v2 - 18) < 2)
      {
        v6 = [objc_allocWithZone(sub_24AAB3744()) init];
        goto LABEL_19;
      }

      if (v2 ^ 0xA | v1)
      {
        if (!(v2 ^ 0xC | v1))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      if (v2 <= 7)
      {
        if (v2 ^ 1 | v1)
        {
          if (!(v2 ^ 3 | v1))
          {
LABEL_7:
            v5 = objc_allocWithZone(sub_24AAB35F4());
            v6 = sub_24AAB35E4();
LABEL_19:
            v9 = v6;
            sub_24AA8B95C(v6);
          }
        }

        else
        {
          v7 = [objc_allocWithZone(sub_24AAB3624()) init];
          sub_24AA8B95C(v7);
        }
      }

      if (!(v2 ^ 8 | v1))
      {
        sub_24AA8AE64(0.0, 0.0);
      }

      if (v2 ^ 9 | v1)
      {
      }
    }

    v8 = objc_allocWithZone(sub_24AAB3674());
    v6 = sub_24AAB3664();
    goto LABEL_19;
  }

  return result;
}

unint64_t sub_24AA8AE64(double a1, double a2)
{
  v3 = v2;
  swift_getKeyPath();
  *&v39 = v2;
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
  sub_24AAB2CF4();

  result = swift_beginAccess();
  v7 = v2[2];
  if ((~v7 & 0xF000000000000007) != 0 && (v7 & 0xC000000000000000) == 0x4000000000000000)
  {
    v9 = v2[3];
    v8 = v2[4];
    v10 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    swift_getKeyPath();
    *&v39 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    sub_24AA8CDAC(v7);
    sub_24AA8F508(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CF4();

    v11 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callTranslationViewModel;
    swift_beginAccess();
    v12 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + v11);
    if (v12)
    {
      swift_getKeyPath();
      *&v39 = v12;
      sub_24AA8F508(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);

      sub_24AAB2CF4();

      v13 = *(v12 + 32);

      if (v13)
      {
        goto LABEL_7;
      }
    }

    swift_getKeyPath();
    *&v39 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    sub_24AAB2CF4();

    v14 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
    swift_beginAccess();
    v15 = *(v10 + v14);
    if (!v15)
    {
      goto LABEL_9;
    }

    swift_getKeyPath();
    *&v39 = v15;
    sub_24AA8F508(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);

    sub_24AAB2CF4();

    v16 = *(v15 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts);

    if (v16 == 1)
    {
LABEL_7:
      v17 = sub_24AAB3A64();
      v18 = sub_24AAB5144();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_24AA0F000, v17, v18, "Dragging notification view is disabled because translation or screening is active", v19, 2u);
        MEMORY[0x24C226630](v19, -1, -1);
      }
    }

    else
    {
LABEL_9:

      v20 = sub_24AAB3A64();
      v21 = sub_24AAB5144();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38[0] = v23;
        *v22 = 136315394;
        *&v39 = v3;
        type metadata accessor for NotificationController();

        v24 = sub_24AAB4F44();
        v26 = sub_24AA406B4(v24, v25, v38);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2080;
        *&v39 = a1;
        *(&v39 + 1) = a2;
        type metadata accessor for CGPoint(0);
        v27 = sub_24AAB4F44();
        v29 = sub_24AA406B4(v27, v28, v38);

        *(v22 + 14) = v29;
        _os_log_impl(&dword_24AA0F000, v20, v21, "%s: Started dragging notification view at point %s", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v23, -1, -1);
        MEMORY[0x24C226630](v22, -1, -1);
      }

      swift_getKeyPath();
      *&v39 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      sub_24AAB2CF4();

      v30 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT;
      swift_beginAccess();
      v31 = *(v10 + v30);
      swift_getKeyPath();
      *&v39 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      sub_24AAB2CF4();

      v32 = *(v10 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad);
      swift_getKeyPath();
      *&v39 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      sub_24AAB2CF4();

      v33 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__keypadViewModel;
      swift_beginAccess();
      v34 = *(v10 + v33);
      if (v34)
      {
        swift_getKeyPath();
        *&v39 = v34;
        sub_24AA8F508(&qword_27EF85CF8, type metadata accessor for KeypadViewModel);

        sub_24AAB2CF4();

        swift_beginAccess();
        v35 = *(v34 + 32);
        v36 = *(v34 + 40);
      }

      v39 = 0u;
      v40 = 0u;
      v41 = 1;
      v37 = objc_allocWithZone(sub_24AAB3674());
      v17 = sub_24AAB3664();
      sub_24AA8B95C(v17);
    }

    return sub_24AA8CE4C(v7);
  }

  return result;
}

void sub_24AA8B54C()
{

  v0 = sub_24AAB3A64();
  v1 = sub_24AAB5144();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v12 = v3;
    *v2 = 136315394;
    type metadata accessor for NotificationController();

    v4 = sub_24AAB4F44();
    v6 = sub_24AA406B4(v4, v5, &v12);

    *(v2 + 4) = v6;
    *(v2 + 12) = 2080;
    type metadata accessor for CGSize(0);
    v7 = sub_24AAB4F44();
    v9 = sub_24AA406B4(v7, v8, &v12);

    *(v2 + 14) = v9;
    _os_log_impl(&dword_24AA0F000, v0, v1, "%s: Notification content size changed to %s", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v3, -1, -1);
    MEMORY[0x24C226630](v2, -1, -1);
  }

  v10 = objc_allocWithZone(sub_24AAB3494());
  v11 = sub_24AAB3484();
  sub_24AA8B95C(v11);
}

void sub_24AA8B710()
{
  v1 = v0;
  v2 = sub_24AAB2CB4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  swift_getKeyPath();
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
  sub_24AAB2CF4();

  swift_beginAccess();
  v4 = *(v0 + 16);
  if ((~v4 & 0xF000000000000007) != 0 && (v4 & 0xC000000000000000) == 0x8000000000000000)
  {
    v6 = *(v0 + 24);
    v5 = *(v1 + 32);
    v7 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
    sub_24AA8CDAC(v4);
    swift_unknownObjectRelease();
    sub_24AAB37C4();
    v8 = objc_allocWithZone(sub_24AAB3764());

    v9 = sub_24AAB3754();
    sub_24AA8B95C(v9);
  }

  else
  {
    v9 = sub_24AAB3A64();
    v10 = sub_24AAB5124();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24AA0F000, v9, v10, "buttonClicked called but we're not presenting a notice.", v11, 2u);
      MEMORY[0x24C226630](v11, -1, -1);
    }
  }
}

void sub_24AA8B90C()
{
  v0 = [objc_allocWithZone(sub_24AAB3234()) init];
  sub_24AA8B95C(v0);
}

void sub_24AA8B95C(void *a1)
{
  v2 = v1;
  v4 = sub_24AAB3454();
  v5 = *(v4 - 8);
  v69 = v4;
  v70 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v67 = &v60 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87188, &qword_24AABCDA8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v60 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v60 - v22;
  v24 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_logger;

  v25 = a1;
  v26 = sub_24AAB3A64();
  v27 = sub_24AAB5144();

  v68 = v27;
  if (os_log_type_enabled(v26, v27))
  {
    v60 = v13;
    v62 = v26;
    v63 = v18;
    v65 = v24;
    v66 = v9;
    v28 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v74[0] = v61;
    *v28 = 136315650;
    v71 = v2;
    type metadata accessor for NotificationController();

    v29 = sub_24AAB4F44();
    v31 = sub_24AA406B4(v29, v30, v74);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    v71 = v25;
    sub_24AAB3464();
    v64 = v25;
    v32 = v25;
    v33 = sub_24AAB4F44();
    v35 = sub_24AA406B4(v33, v34, v74);

    *(v28 + 14) = v35;
    v36 = v69;
    v37 = v70;
    *(v28 + 22) = 2080;
    v38 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_alertIdentifier;
    swift_beginAccess();
    sub_24AA8F7B4(&v2[v38], v23);
    sub_24AA8F7B4(v23, v21);
    if ((*(v37 + 48))(v21, 1, v36) == 1)
    {
      sub_24AA8CFF0(v21);
      v39 = 0xE300000000000000;
      v40 = 7104878;
    }

    else
    {
      v42 = v69;
      v41 = v70;
      v43 = v60;
      (*(v70 + 32))(v60, v21, v69);
      (*(v41 + 16))(v67, v43, v42);
      v40 = sub_24AAB4F44();
      v39 = v44;
      (*(v41 + 8))(v43, v42);
    }

    v45 = v62;
    sub_24AA8CFF0(v23);
    v46 = sub_24AA406B4(v40, v39, v74);

    *(v28 + 24) = v46;
    _os_log_impl(&dword_24AA0F000, v45, v68, "%s: Send downstream action %s for alert %s", v28, 0x20u);
    v47 = v61;
    swift_arrayDestroy();
    MEMORY[0x24C226630](v47, -1, -1);
    MEMORY[0x24C226630](v28, -1, -1);

    v9 = v66;
    v18 = v63;
  }

  else
  {
  }

  v48 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_alertIdentifier;
  swift_beginAccess();
  sub_24AA8F7B4(&v2[v48], v18);
  if ((*(v70 + 48))(v18, 1, v69) == 1)
  {
    sub_24AA8CFF0(v18);
  }

  else
  {
    (*(v70 + 32))(v9, v18, v69);
    v49 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_xpc;
    v50 = *&v2[OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_xpc];

    v51 = sub_24AAB3654();

    if (v51)
    {
      v52 = *&v2[v49];

      sub_24AAB3264();

      (*(v70 + 8))(v9, v69);
      return;
    }

    (*(v70 + 8))(v9, v69);
  }

  v53 = sub_24AAB3A64();
  v54 = sub_24AAB5134();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v72 = v2;
    v73 = v56;
    *v55 = 136315138;
    type metadata accessor for NotificationController();

    v57 = sub_24AAB4F44();
    v59 = sub_24AA406B4(v57, v58, &v73);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_24AA0F000, v53, v54, "%s: XPC disconnected.", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    MEMORY[0x24C226630](v56, -1, -1);
    MEMORY[0x24C226630](v55, -1, -1);
  }
}

unint64_t *NotificationController.deinit()
{
  v1 = v0;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v2 = sub_24AAB3A84();
  __swift_project_value_buffer(v2, qword_27EF919D8);

  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    type metadata accessor for NotificationController();

    v7 = sub_24AAB4F44();
    v9 = sub_24AA406B4(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24AA0F000, v3, v4, "%s: Notification controller destroyed.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  v10 = v1[3];
  v11 = v1[4];
  sub_24AA8CE4C(v1[2]);
  sub_24AA8CFF0(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_alertIdentifier);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter));
  v12 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_xpc);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callsReminder));
  v13 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback + 8);
  sub_24AA16D74(*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback));
  (*(*(v2 - 8) + 8))(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_logger, v2);
  v14 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController___observationRegistrar;
  v15 = sub_24AAB2D34();
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  return v1;
}

uint64_t NotificationController.__deallocating_deinit()
{
  NotificationController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24AA8C230()
{
  v1 = *v0;
  MEMORY[0x24C2257F0](60, 0xE100000000000000);
  v2 = sub_24AAB5584();
  MEMORY[0x24C2257F0](v2);

  MEMORY[0x24C2257F0](8250, 0xE200000000000000);
  sub_24AAB53E4();
  MEMORY[0x24C2257F0](62, 0xE100000000000000);
  return 0;
}

uint64_t NotificationController.promptConfirmation(for:conflictingCall:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_24AAB3694();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = sub_24AAB50C4();
  v4[11] = sub_24AAB50B4();
  v9 = sub_24AAB5094();
  v4[12] = v9;
  v4[13] = v8;

  return MEMORY[0x2822009F8](sub_24AA8C42C, v9, v8);
}

uint64_t sub_24AA8C42C()
{
  v1 = v0[6];
  swift_getKeyPath();
  v0[2] = v1;
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
  sub_24AAB2CF4();

  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback))
  {
    v2 = v0[11];

    v3 = v0[9];

    v4 = v0[1];

    return v4(0);
  }

  else
  {
    v6 = v0[10];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[4];
    (*(v0[8] + 16))(v0[9], v0[3], v0[7]);
    swift_getObjectType();
    sub_24AAB39A4();
    v10 = objc_allocWithZone(sub_24AAB3784());
    v11 = sub_24AAB3774();
    sub_24AA8B95C(v11);

    v12 = sub_24AAB50B4();
    v0[14] = v12;
    v13 = *(MEMORY[0x277D859E0] + 4);
    v14 = swift_task_alloc();
    v0[15] = v14;
    *v14 = v0;
    v14[1] = sub_24AA8C668;
    v15 = v0[6];
    v16 = MEMORY[0x277D85700];
    v17 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 16, v12, v16, 0xD000000000000028, 0x800000024AAD2F10, sub_24AA8D060, v15, v17);
  }
}

uint64_t sub_24AA8C668()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v7 = *v0;

  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_24AA8C7AC, v5, v4);
}

uint64_t sub_24AA8C7AC()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 128);
  v3 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_24AA8C81C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF871B8, &unk_24AABD028);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = (v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v10, v8, v4);
  *(v12 + v11) = v9;
  swift_getKeyPath();
  v15 = a2;
  v16 = sub_24AA8F600;
  v17 = v12;
  v18 = a2;
  sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);

  sub_24AAB2CE4();
}

uint64_t sub_24AA8CA40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF871B8, &unk_24AABD028);
  sub_24AAB50A4();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
    sub_24AAB2CE4();
  }

  return result;
}

uint64_t sub_24AA8CB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AA8CC40;

  return NotificationController.promptConfirmation(for:conflictingCall:)(a1, a2, a3);
}

uint64_t sub_24AA8CC40(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t type metadata accessor for NotificationController()
{
  result = qword_27EF87190;
  if (!qword_27EF87190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24AA8CD98(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_24AA8CDAC(result);
  }

  return result;
}

unint64_t sub_24AA8CDAC(unint64_t result)
{
  v2 = result >> 62;
  if ((result >> 62) > 1)
  {
    if (v2 == 2)
    {
      v3 = (result & 0x3FFFFFFFFFFFFFFFLL);
      swift_unknownObjectRetain();

      return v3;
    }
  }

  else
  {
    if (v2)
    {
    }
  }

  return result;
}

unint64_t sub_24AA8CE4C(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_24AA8CE60(result);
  }

  return result;
}

unint64_t sub_24AA8CE60(unint64_t result)
{
  v2 = result >> 62;
  if ((result >> 62) > 1)
  {
    if (v2 == 2)
    {

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    if (v2)
    {
    }
  }

  return result;
}

uint64_t sub_24AA8CF24()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AA8CFB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_24AA593F8(v2, v3);
}

uint64_t sub_24AA8CFF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87188, &qword_24AABCDA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AA8D074(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 24))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24AA8D0D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_24AA8D164()
{
  sub_24AA8D438();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_24AAB3A84();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_24AAB2D34();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24AA8D438()
{
  if (!qword_27EF871A0)
  {
    sub_24AAB3454();
    v0 = sub_24AAB5274();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF871A0);
    }
  }
}

unint64_t sub_24AA8D4E0()
{
  result = qword_27EF871A8;
  if (!qword_27EF871A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF871A8);
  }

  return result;
}

unint64_t sub_24AA8D548(void *a1, void *a2)
{
  v151 = sub_24AAB3454();
  v150 = *(v151 - 8);
  v4 = *(v150 + 64);
  v5 = MEMORY[0x28223BE20](v151);
  v145 = v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v147 = v143 - v8;
  MEMORY[0x28223BE20](v7);
  v144 = v143 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87188, &qword_24AABCDA8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v148 = v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v153 = v143 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v146 = v143 - v17;
  MEMORY[0x28223BE20](v16);
  v149 = v143 - v18;
  v19 = (a2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter);
  v20 = *(a2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter), *(a2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_callCenter + 24));
  v21 = [a1 uniqueProxyIdentifier];
  sub_24AAB4EF4();

  v22 = sub_24AAB3324();

  v23 = &qword_27EF87000;
  if (v22)
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v154 = v22;
    v155 = AssociatedConformanceWitness;
    v25 = v22;
LABEL_5:
    v29 = v23[45];
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();

    v30 = sub_24AAB3A64();
    v31 = sub_24AAB5144();
    swift_unknownObjectRelease_n();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v157[0] = v33;
      *v32 = 136315651;
      v158 = a2;
      type metadata accessor for NotificationController();

      v34 = sub_24AAB4F44();
      v36 = sub_24AA406B4(v34, v35, v157);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      swift_getObjectType();
      v37 = v155;
      v158 = sub_24AAB39A4();
      v159 = v38;
      v39 = sub_24AAB4F44();
      v41 = sub_24AA406B4(v39, v40, v157);

      *(v32 + 14) = v41;
      *(v32 + 22) = 2081;
      v158 = v25;
      v159 = v37;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
      v42 = sub_24AAB4F44();
      v44 = sub_24AA406B4(v42, v43, v157);

      *(v32 + 24) = v44;
      _os_log_impl(&dword_24AA0F000, v30, v31, "%s: Successfully fetched call with identifier %s %{private}s.", v32, 0x20u);
      swift_arrayDestroy();
      v45 = v33;
      v23 = &qword_27EF87000;
      MEMORY[0x24C226630](v45, -1, -1);
      MEMORY[0x24C226630](v32, -1, -1);
    }

    goto LABEL_8;
  }

  v26 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  sub_24AAB32D4();
  v27 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v28 = [a1 uniqueProxyIdentifier];
  sub_24AAB4EF4();

  v25 = sub_24AAB3324();

  if (v25)
  {
    swift_getAssociatedTypeWitness();
    v155 = swift_getAssociatedConformanceWitness();
    swift_unknownObjectRetain();
    v154 = v25;
    v23 = &qword_27EF87000;
    goto LABEL_5;
  }

  v23 = &qword_27EF87000;

  v25 = a1;
  v79 = sub_24AAB3A64();
  v80 = sub_24AAB5124();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v157[0] = v82;
    *v81 = 136315394;
    v158 = a2;
    type metadata accessor for NotificationController();

    v83 = sub_24AAB4F44();
    v85 = sub_24AA406B4(v83, v84, v157);

    *(v81 + 4) = v85;
    *(v81 + 12) = 2080;
    v86 = [v25 uniqueProxyIdentifier];
    v87 = sub_24AAB4EF4();
    v89 = v88;

    v158 = v87;
    v159 = v89;
    v90 = sub_24AAB4F44();
    v92 = sub_24AA406B4(v90, v91, v157);

    *(v81 + 14) = v92;
    v23 = &qword_27EF87000;
    _os_log_impl(&dword_24AA0F000, v79, v80, "%s: Could not find call with identifier %s, using call passed from the app. The view won't receive call updates.", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v82, -1, -1);
    MEMORY[0x24C226630](v81, -1, -1);
  }

  swift_unknownObjectRetain();
  v154 = 0;
  v155 = MEMORY[0x277D07EF0];
LABEL_8:
  swift_getKeyPath();
  v46 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController___observationRegistrar;
  v158 = a2;
  v152 = sub_24AA8F508(&qword_27EF87150, type metadata accessor for NotificationController);
  sub_24AAB2CF4();

  swift_beginAccess();
  v47 = a2[2];
  if ((~v47 & 0xF000000000000007) != 0 && (v47 & 0xC000000000000000) == 0x4000000000000000)
  {
    v143[0] = v19;
    v48 = a2[3];
    v49 = a2[4];
    v50 = ((v47 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v51 = *v50;
    v52 = v50[1];
    swift_getObjectType();
    v143[1] = v48;
    v143[2] = v49;
    sub_24AA8CDAC(v47);
    v53 = sub_24AAB39A4();
    v55 = v54;
    swift_getObjectType();
    if (v53 == sub_24AAB39A4() && v55 == v56)
    {

      goto LABEL_14;
    }

    v57 = sub_24AAB5474();

    if (v57)
    {
LABEL_14:
      v58 = v23[45];

      swift_unknownObjectRetain();
      v59 = sub_24AAB3A64();
      v60 = sub_24AAB5144();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v157[0] = v62;
        *v61 = 136315650;
        v158 = a2;
        type metadata accessor for NotificationController();

        v63 = sub_24AAB4F44();
        v65 = sub_24AA406B4(v63, v64, v157);

        *(v61 + 4) = v65;
        *(v61 + 12) = 2080;
        v158 = sub_24AAB39A4();
        v159 = v66;
        v67 = sub_24AAB4F44();
        v69 = sub_24AA406B4(v67, v68, v157);

        *(v61 + 14) = v69;
        *(v61 + 22) = 2080;
        v70 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_alertIdentifier;
        swift_beginAccess();
        v71 = a2 + v70;
        v72 = v149;
        sub_24AA8F7B4(v71, v149);
        v73 = v146;
        sub_24AA8F7B4(v72, v146);
        v74 = v150;
        v75 = v151;
        if ((*(v150 + 48))(v73, 1, v151) == 1)
        {
          v76 = 7104878;
          sub_24AA8CFF0(v73);
          v77 = 0xE300000000000000;
        }

        else
        {
          v137 = *(v74 + 32);
          v155 = v62;
          v138 = v144;
          v137(v144, v73, v75);
          (*(v74 + 16))(v147, v138, v75);
          v76 = sub_24AAB4F44();
          v77 = v139;
          v140 = v138;
          v62 = v155;
          (*(v74 + 8))(v140, v75);
        }

        sub_24AA8CFF0(v149);
        v141 = sub_24AA406B4(v76, v77, v157);

        *(v61 + 24) = v141;
        _os_log_impl(&dword_24AA0F000, v59, v60, "%s: Already showing call with identifier %s notification %s", v61, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v62, -1, -1);
        MEMORY[0x24C226630](v61, -1, -1);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return sub_24AA8CE4C(v47);
      }

      else
      {

        swift_unknownObjectRelease();
        sub_24AA8CE4C(v47);
        return swift_unknownObjectRelease();
      }
    }

    sub_24AA8CE4C(v47);
    v19 = v143[0];
  }

  v149 = v46;
  v93 = v23[45];

  swift_unknownObjectRetain();
  v94 = sub_24AAB3A64();
  v95 = sub_24AAB5144();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v157[0] = v146;
    *v96 = 136315907;
    v158 = a2;
    type metadata accessor for NotificationController();

    v97 = sub_24AAB4F44();
    v99 = sub_24AA406B4(v97, v98, v157);

    *(v96 + 4) = v99;
    *(v96 + 12) = 2080;
    swift_getObjectType();
    v100 = v155;
    v158 = sub_24AAB39A4();
    v159 = v101;
    v102 = sub_24AAB4F44();
    v104 = sub_24AA406B4(v102, v103, v157);

    *(v96 + 14) = v104;
    *(v96 + 22) = 2081;
    v158 = v25;
    v159 = v100;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
    v105 = sub_24AAB4F44();
    v107 = sub_24AA406B4(v105, v106, v157);

    *(v96 + 24) = v107;
    *(v96 + 32) = 2080;
    v108 = OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController_alertIdentifier;
    swift_beginAccess();
    v109 = a2 + v108;
    v110 = v153;
    sub_24AA8F7B4(v109, v153);
    v111 = v110;
    v112 = v148;
    sub_24AA8F7B4(v111, v148);
    v113 = v150;
    v114 = v151;
    if ((*(v150 + 48))(v112, 1, v151) == 1)
    {
      v115 = v112;
      v116 = 7104878;
      sub_24AA8CFF0(v115);
      v117 = 0xE300000000000000;
    }

    else
    {
      v118 = v145;
      (*(v113 + 32))(v145, v112, v114);
      (*(v113 + 16))(v147, v118, v114);
      v116 = sub_24AAB4F44();
      v119 = v113;
      v117 = v120;
      (*(v119 + 8))(v118, v114);
    }

    sub_24AA8CFF0(v153);
    v121 = sub_24AA406B4(v116, v117, v157);

    *(v96 + 34) = v121;
    _os_log_impl(&dword_24AA0F000, v94, v95, "%s: Showing call with identifier %s %{private}s in notification %s", v96, 0x2Au);
    v122 = v146;
    swift_arrayDestroy();
    MEMORY[0x24C226630](v122, -1, -1);
    MEMORY[0x24C226630](v96, -1, -1);
  }

  v123 = type metadata accessor for CallNotificationViewModel();
  sub_24AA16768(v19, &v158);
  v124 = swift_allocObject();
  swift_weakInit();
  v125 = sub_24AAB36F4();
  v126 = *(v125 + 48);
  v127 = *(v125 + 52);
  swift_allocObject();

  v128 = sub_24AAB36E4();
  v157[3] = v125;
  v157[4] = MEMORY[0x277D07EB0];
  v157[0] = v128;
  ObjectType = swift_getObjectType();
  v131 = v160;
  v130 = v161;
  v132 = __swift_mutable_project_boxed_opaque_existential_1(&v158, v160);
  v156 = a2;
  v133 = type metadata accessor for NotificationController();
  v134 = sub_24AA8F508(&qword_27EF871B0, type metadata accessor for NotificationController);

  v135 = swift_unknownObjectRetain();
  *(&v142 + 1) = v130;
  *&v142 = v155;
  sub_24AA41C74(v135, v132, v157, &v156, sub_24AA8FAC8, v124, 0, v123, ObjectType, v131, v133, v142, v134);

  __swift_destroy_boxed_opaque_existential_1Tm(&v158);

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v158 = a2;
  sub_24AAB2CE4();

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

char *sub_24AA8E5E0(uint64_t a1, char *a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_logger;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v6 = sub_24AAB3A84();
  v7 = __swift_project_value_buffer(v6, qword_27EF919D8);
  v8 = *(v6 - 8);
  v24 = v5;
  (*(v8 + 16))(&v2[v5], v7, v6);
  v9 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_featureFlags;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v10 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__cancellables;
  *&v2[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__cancellables] = MEMORY[0x277D84FA0];
  v11 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController;
  *&v2[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController] = 0;
  v23 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView;
  *&v2[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView] = 0;
  v12 = [objc_opt_self() tu_contactStore];
  v13 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore;
  *&v2[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore] = v12;
  v14 = OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel___observationRegistrar;
  sub_24AAB2D24();
  if ([*&v2[v9] posterEnabledMac] && (swift_getObjectType(), v15 = *(MEMORY[0x277D07E80] + 8), (sub_24AAB3574() & 1) == 0) && (sub_24AAB3254(), (sub_24AAB3864() & 1) != 0))
  {
    v16 = &v2[OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel_call];
    *v16 = a1;
    *(v16 + 1) = MEMORY[0x277D07E80];
    swift_unknownObjectRetain();
    v17 = sub_24AA476E8();
    sub_24AA47AAC(v17);
    sub_24AA47C14();
  }

  else
  {

    (*(v8 + 8))(&v2[v24], v6);

    v18 = *&v2[v10];

    v19 = sub_24AAB2D34();
    (*(*(v19 - 8) + 8))(&v2[v14], v19);
    v20 = *(*v2 + 48);
    v21 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_24AA8E8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v103 = a7;
  v99 = a6;
  v98 = a5;
  v97 = a1;
  v100 = type metadata accessor for CallSubtitle(0);
  v12 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v102 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for CallStatusViewModel(0);
  v14 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v16 = (&v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_24AAB3A84();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108[3] = sub_24AAB36F4();
  v108[4] = MEMORY[0x277D07EB0];
  v108[0] = a3;
  v107[3] = sub_24AAB35D4();
  v107[4] = MEMORY[0x277D07EA8];
  v107[0] = a2;
  v106[3] = type metadata accessor for NotificationController();
  v106[4] = sub_24AA8F508(&qword_27EF871B0, type metadata accessor for NotificationController);
  v106[0] = a4;
  v22 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v17, qword_27EF919D8);
  v93 = *(v18 + 16);
  (v93)(a8 + v22, v23, v17);
  v24 = a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 64) = 0u;
  *(v24 + 80) = 5;
  v25 = a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 80) = -1;
  v26 = type metadata accessor for CallHoldingAnalytics();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  v96 = v22;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85888, &qword_24AAB7950);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v30 + 16) = v31;
  v32 = OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_holdDetectionStartedTimestamp;
  v33 = sub_24AAB2C54();
  v34 = *(*(v33 - 8) + 56);
  v94 = v18;
  v34(v30 + v32, 1, 1, v33);
  v34(v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPresentedTimestamp, 1, 1, v33);
  *(v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipFeedbackLatency) = 0;
  *(v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_tipPreviewLatency) = 0;
  *(v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI20CallHoldingAnalytics_observation) = 4;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics) = v30;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__moreMenuViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__keypadViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waveformViewModel) = 0;
  v95 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__posterViewModel;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__posterViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__liveVoicemailViewController) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_changesCancellable) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_recordingCancellable) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_smartHoldingCancellable) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_waitOnHoldStatusMessageCancellable) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldController) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldService) = 0;
  v35 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldStatusMessage;
  v36 = sub_24AAB2AA4();
  (*(*(v36 - 8) + 56))(a8 + v35, 1, 1, v36);
  v37 = (a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle);
  *v37 = 0;
  v37[1] = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__isHoldDetected) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showWaitOnHoldErrorSymbol) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__userHasDeclinedSmartHolding) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitingForAskToShare) = 0;
  v38 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_featureFlags;
  *(a8 + v38) = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callTranslationViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel) = 0;
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel____lazy_storage___controlsManager) = 1;
  sub_24AAB2D24();
  v39 = a8 + v96;
  v96 = v17;
  (v93)(v21, v39, v17);
  v40 = v97;

  v41 = sub_24AAB3A64();
  v42 = sub_24AAB5144();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v93 = v21;
    v44 = v40;
    v45 = v43;
    v46 = swift_slowAlloc();
    v104[0] = v46;
    *v45 = 136316162;
    *(v45 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v104);
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_24AA406B4(0xD00000000000005FLL, 0x800000024AAD20B0, v104);
    *(v45 + 22) = 2048;
    *(v45 + 24) = 158;
    *(v45 + 32) = 2080;
    sub_24AAB3254();
    v47 = sub_24AAB39A4();
    v49 = sub_24AA406B4(v47, v48, v104);

    *(v45 + 34) = v49;
    *(v45 + 42) = 1024;
    v50 = v44;
    v51 = v103;
    *(v45 + 44) = v103 & 1;
    _os_log_impl(&dword_24AA0F000, v41, v42, "[%s:%s:%ld] Initializing CallNotificationViewModel with call: %s, isScreenLocked: %{BOOL}d", v45, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v46, -1, -1);
    MEMORY[0x24C226630](v45, -1, -1);

    (*(v94 + 8))(v93, v96);
  }

  else
  {

    (*(v94 + 8))(v21, v96);
    v50 = v40;
    v51 = v103;
  }

  v52 = MEMORY[0x277D07E80];
  v53 = (a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  *v53 = v50;
  v53[1] = v52;
  sub_24AA16768(v107, a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter);
  sub_24AA16768(v108, a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callsReminder);
  v54 = type metadata accessor for CallNotificationPosterViewModel();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = swift_allocObject();
  v58 = swift_retain_n();
  v59 = sub_24AA8E5E0(v58, v57);
  v60 = v95;
  v61 = *(a8 + v95);

  *(a8 + v60) = v59;
  sub_24AA16768(v107, v104);
  sub_24AA16768(v106, v105);
  v62 = sub_24AAB3734();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callConfirmationHelper) = sub_24AAB3714();
  v65 = (a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction);
  v66 = v98;
  v67 = v99;
  *v65 = v98;
  v65[1] = v67;
  ObjectType = swift_getObjectType();
  v104[0] = v50;

  sub_24AA16D2C(v66);
  v99 = sub_24AA87578(v104, 0, v51 & 1, ObjectType, *(v52 + 8));
  v98 = v69;
  v70 = sub_24AA86BC8(v104, 0, 0, ObjectType);
  v97 = v71;
  swift_storeEnumTagMultiPayload();
  v72 = sub_24AAB3564();
  if (v72 && (v73 = v72, v74 = [v72 shouldHideContactWithLockState_], v73, v74))
  {
    v75 = MEMORY[0x277D84F90];
  }

  else
  {
    v75 = sub_24AA86F34(v104, ObjectType);
  }

  v76 = sub_24AAB35A4();
  v77 = sub_24AAB3574();
  if ([v76 isFaceTimeProvider])
  {

    if (v77)
    {
      v78 = 2;
    }

    else
    {
      v78 = 1;
    }
  }

  else
  {
    v79 = [v76 isTelephonyProvider];

    if (v79)
    {
      v78 = 0;
    }

    else
    {
      v78 = 3;
    }
  }

  v80 = sub_24AAB3554();
  v82 = v81;

  v83 = v98;
  *v16 = v99;
  v16[1] = v83;
  v84 = v97;
  v16[2] = v70;
  v16[3] = v84;
  v85 = v101;
  sub_24AA44DD4(v102, v16 + *(v101 + 24), type metadata accessor for CallSubtitle);
  *(v16 + v85[7]) = v75;
  *(v16 + v85[8]) = v78;
  v86 = (v16 + v85[9]);
  *v86 = v80;
  v86[1] = v82;
  sub_24AA44DD4(v16, a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__statusViewModel, type metadata accessor for CallStatusViewModel);
  *(a8 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_isScreenLocked) = v103 & 1;
  sub_24AA23BC0();
  v87 = sub_24AAB3A64();
  v88 = sub_24AAB5144();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v104[0] = v90;
    *v89 = 136315650;
    *(v89 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v104);
    *(v89 + 12) = 2080;
    *(v89 + 14) = sub_24AA406B4(0xD00000000000005FLL, 0x800000024AAD20B0, v104);
    *(v89 + 22) = 2048;
    *(v89 + 24) = 169;
    _os_log_impl(&dword_24AA0F000, v87, v88, "[%s:%s:%ld] CallNotificationViewModel features set up completed. Starting control recipe creation", v89, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v90, -1, -1);
    MEMORY[0x24C226630](v89, -1, -1);
  }

  sub_24AA2A2D4(v104);
  sub_24AA1D19C(v104);
  sub_24AA29C9C(v104);
  sub_24AA20C48(v104);
  __swift_destroy_boxed_opaque_existential_1Tm(v108);
  __swift_destroy_boxed_opaque_existential_1Tm(v106);
  __swift_destroy_boxed_opaque_existential_1Tm(v107);
  return a8;
}

uint64_t sub_24AA8F508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AA8F558()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF871B8, &unk_24AABD028);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AA8F600()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF871B8, &unk_24AABD028) - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24AA8CA40();
}

uint64_t sub_24AA8F6C0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC22FaceTimeNotificationUI22NotificationController__callConfirmationResponseCallback);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_24AA16D2C(v1);
  return sub_24AA16D74(v4);
}

uint64_t sub_24AA8F718()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AA8F750(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_24AA8F788(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_24AA8F7B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87188, &qword_24AABCDA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA8F824()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AA8F864(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA44FD0;

  return sub_24AA89D14(a1, v4, v5, v6);
}

uint64_t sub_24AA8F918()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AA8F960(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AA43DBC;

  return sub_24AA895D8(a1, v4, v5, v7, v6);
}

uint64_t sub_24AA8FA3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87188, &qword_24AABCDA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_24AA8FAE4@<D0>(_OWORD *a1@<X8>)
{
  sub_24AA73590();
  sub_24AAB40A4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_24AA8FB34(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_24AA73590();

  return sub_24AAB40B4();
}

uint64_t VideoCallNotificationView.viewModel.getter()
{
  v3 = *v0;
  v4 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  return v2;
}

uint64_t VideoCallNotificationView.viewModel.setter()
{
  v2 = *v0;
  v3 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  return sub_24AAB4B74();
}

void (*VideoCallNotificationView.viewModel.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  return sub_24AA77F28;
}

uint64_t VideoCallNotificationView.$viewModel.getter()
{
  v3 = *v0;
  v4 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B84();
  return v2;
}

uint64_t VideoCallNotificationView.init(viewModel:)@<X0>(void *a1@<X8>)
{
  a1[2] = 0;
  v2 = *(type metadata accessor for VideoCallNotificationView() + 24);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CallNotificationViewModel();
  result = sub_24AAB4B54();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t type metadata accessor for VideoCallNotificationView()
{
  result = qword_27EF871E0;
  if (!qword_27EF871E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AA8FE24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for CallStatusView();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87248, &qword_24AABD1F8);
  v9 = *(v8 - 8);
  v52 = v8 - 8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87250, &qword_24AABD200);
  v13 = *(v12 - 8);
  v53 = v12 - 8;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8);
  v54 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v50 = &v49 - v18;
  MEMORY[0x28223BE20](v17);
  v49 = &v49 - v19;
  v20 = a1[1];
  *&v56 = *a1;
  *(&v56 + 1) = v20;
  *&v63 = v56;
  *(&v63 + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B84();
  v21 = v69;
  v22 = v70;
  swift_getKeyPath();
  v69 = v21;
  *&v70 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F08, &qword_24AABD230);
  sub_24AAB4C04();

  v57 = v56;
  sub_24AAB4B84();
  v23 = v63;
  v24 = v64;
  swift_getKeyPath();
  v63 = v23;
  *&v64 = v24;
  sub_24AAB4C04();

  v25 = v57;
  v26 = v58;

  *&v7[v4[11]] = 0;
  v27 = v4[12];
  *&v7[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  v28 = &v7[v4[7]];
  *v28 = v25;
  v28[16] = v26;
  v29 = v56;
  v7[v4[8]] = 1;
  v7[v4[9]] = 1;
  *&v7[v4[10]] = 0x404B000000000000;
  sub_24AAB4D44();
  sub_24AAB3F24();
  v30 = v7;
  v31 = v49;
  v32 = v51;
  sub_24AA91704(v30, v51, type metadata accessor for CallStatusView);
  v33 = (v32 + *(v52 + 44));
  v34 = v74;
  v33[4] = v73;
  v33[5] = v34;
  v33[6] = v75;
  v35 = v70;
  *v33 = v69;
  v33[1] = v35;
  v36 = v72;
  v33[2] = v71;
  v33[3] = v36;
  v37 = v32;
  v38 = v50;
  sub_24AA1A25C(v37, v50, &qword_27EF87248, &qword_24AABD1F8);
  *(v38 + *(v53 + 44)) = 0;
  sub_24AA1A25C(v38, v31, &qword_27EF87250, &qword_24AABD200);
  v39 = *(&v56 + 1);
  v63 = __PAIR128__(*(&v56 + 1), v29);
  sub_24AAB4B64();
  v40 = v57;
  swift_getKeyPath();
  *&v63 = v40;
  sub_24AA91774();
  sub_24AAB2CF4();

  v41 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
  swift_beginAccess();
  sub_24AA43A54(v40 + v41, &v63);

  v59 = v65;
  v60 = v66;
  v61 = v67;
  LODWORD(v41) = v68;
  LOBYTE(v62) = v68;
  v57 = v63;
  v58 = v64;
  sub_24AA4214C(&v57);
  if (v41)
  {
    *&v63 = v29;
    *(&v63 + 1) = v39;
    sub_24AAB4B64();
    v42 = v57;
    swift_getKeyPath();
    *&v63 = v42;
    sub_24AAB2CF4();

    v43 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
    swift_beginAccess();
    sub_24AA43A54(v42 + v43, &v57);

    *(&v62 + 1) = sub_24AAB3D74();
    v65 = v59;
    v66 = v60;
    v63 = v57;
    v64 = v58;
    v67 = v61;
    v68 = v62;
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
  }

  v44 = v54;
  sub_24AA1695C(v31, v54, &qword_27EF87250, &qword_24AABD200);
  sub_24AA1695C(&v63, &v57, &qword_27EF87258, &qword_24AABD288);
  v45 = v55;
  sub_24AA1695C(v44, v55, &qword_27EF87250, &qword_24AABD200);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87260, &qword_24AABD290);
  v47 = v45 + *(v46 + 48);
  *v47 = 0;
  *(v47 + 8) = 1;
  sub_24AA1695C(&v57, v45 + *(v46 + 64), &qword_27EF87258, &qword_24AABD288);
  sub_24AA169C4(&v63, &qword_27EF87258, &qword_24AABD288);
  sub_24AA169C4(v31, &qword_27EF87250, &qword_24AABD200);
  sub_24AA169C4(&v57, &qword_27EF87258, &qword_24AABD288);
  return sub_24AA169C4(v44, &qword_27EF87250, &qword_24AABD200);
}

uint64_t VideoCallNotificationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF871C0, &qword_24AABD0B0);
  v3 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v5 = v53 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF871C8, &qword_24AABD0B8);
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v6);
  v59 = v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CB8, &qword_24AABD0C0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v53 - v12;
  *v13 = sub_24AAB41B4();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF871D0, &qword_24AABD0C8);
  sub_24AA90BB0(v1, &v13[*(v14 + 44)]);
  sub_24AAB4D44();
  sub_24AAB3D54();
  v15 = &v13[*(v10 + 44)];
  v16 = v68;
  *v15 = v67;
  *(v15 + 1) = v16;
  *(v15 + 2) = v69;
  v17 = type metadata accessor for VideoCallNotificationView();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  sub_24AA90DE4(v1, v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24AAB50C4();
  v20 = sub_24AAB50B4();
  v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v20;
  *(v22 + 24) = v23;
  sub_24AA91704(v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for VideoCallNotificationView);
  v58 = sub_24AAB50F4();
  v24 = *(v58 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v58);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v53 - v26;
  sub_24AAB50D4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v56 = sub_24AAB3E94();
    v57 = v53;
    v55 = *(v56 - 8);
    v28 = *(v55 + 64);
    MEMORY[0x28223BE20](v56);
    v30 = v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_24AAB5374();

    v65 = 0xD000000000000043;
    v66 = 0x800000024AAD3020;
    v64 = 53;
    v31 = sub_24AAB5444();
    v54 = v2;
    MEMORY[0x24C2257F0](v31);

    v53[1] = v53;
    MEMORY[0x28223BE20](v32);
    v33 = v53 - v26;
    v34 = v53 - v26;
    v35 = v58;
    (*(v24 + 16))(v33, v34, v58);
    v2 = v54;
    sub_24AAB3E84();
    (*(v24 + 8))(v27, v35);
    v36 = v59;
    sub_24AA1A25C(v13, v59, &qword_27EF84CB8, &qword_24AABD0C0);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CC0, &qword_24AAB62E0);
    (*(v55 + 32))(v36 + *(v37 + 36), v30, v56);
  }

  else
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CC8, &qword_24AAB62E8);
    v39 = v59;
    v40 = (v59 + *(v38 + 36));
    v41 = sub_24AAB3E14();
    (*(v24 + 32))(&v40[*(v41 + 20)], v27, v58);
    v36 = v39;
    *v40 = &unk_24AABD0D8;
    *(v40 + 1) = v22;
    sub_24AA1A25C(v13, v39, &qword_27EF84CB8, &qword_24AABD0C0);
  }

  v42 = *(v60 + 36);
  v43 = *MEMORY[0x277CDF3C0];
  v44 = sub_24AAB3CE4();
  v45 = *(v44 - 8);
  (*(v45 + 104))(&v5[v42], v43, v44);
  (*(v45 + 56))(&v5[v42], 0, 1, v44);
  (*(v61 + 32))(v5, v36, v62);
  KeyPath = swift_getKeyPath();
  v47 = v2[1];
  v65 = *v2;
  v66 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v48 = v64;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_24AA910A4;
  *(v49 + 24) = v48;
  v50 = v63;
  sub_24AA91110(v5, v63);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF871D8, &unk_24AABD110);
  v52 = (v50 + *(result + 36));
  *v52 = KeyPath;
  v52[1] = sub_24AA1B7D0;
  v52[2] = v49;
  return result;
}

uint64_t sub_24AA90BB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87228, &qword_24AABD1D8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  *v11 = sub_24AAB41C4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87230, &qword_24AABD1E0) + 44)];
  *v12 = sub_24AAB4104();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87238, &qword_24AABD1E8);
  sub_24AA8FE24(a1, &v12[*(v13 + 44)]);
  v14 = sub_24AAB44D4();
  v15 = &v11[*(v5 + 44)];
  *v15 = v14;
  *(v15 + 8) = xmmword_24AABD060;
  *(v15 + 24) = xmmword_24AABD060;
  v15[40] = 0;
  v16 = [objc_opt_self() sharedInstance];
  v22[1] = 0x3FFC71C71C71C71CLL;
  sub_24AAB4B54();
  v17 = v22[2];
  v18 = v22[3];
  sub_24AA1695C(v11, v9, &qword_27EF87228, &qword_24AABD1D8);
  sub_24AA1695C(v9, a2, &qword_27EF87228, &qword_24AABD1D8);
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87240, &qword_24AABD1F0) + 48);
  *v19 = v16;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  *(v19 + 24) = v17;
  *(v19 + 32) = v18;

  v20 = v16;
  sub_24AA169C4(v11, &qword_27EF87228, &qword_24AABD1D8);

  return sub_24AA169C4(v9, &qword_27EF87228, &qword_24AABD1D8);
}

uint64_t sub_24AA90DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoCallNotificationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA90E48()
{
  v1 = (type metadata accessor for VideoCallNotificationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 8);

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24AAB3CE4();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
    v11 = *(v6 + v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AA90F74()
{
  v2 = *(type metadata accessor for VideoCallNotificationView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AA43DBC;

  return sub_24AA7F50C(v4, v5, v0 + v3);
}

double sub_24AA91050@<D0>(_OWORD *a1@<X8>)
{
  sub_24AA73590();
  sub_24AAB40A4();
  result = *&v3;
  *a1 = v3;
  return result;
}

void sub_24AA910A4(__int128 *a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = v1;
  sub_24AA2F6C4(&v2);
}

uint64_t sub_24AA910D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AA91110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF871C0, &qword_24AABD0B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA911BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86088, qword_24AABD4A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24AA9128C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86088, qword_24AABD4A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24AA9133C()
{
  sub_24AA91428(319, &qword_27EF86C30, type metadata accessor for CallNotificationViewModel, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_24AA91428(319, &qword_27EF860A0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24AA91428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24AA91490()
{
  result = qword_27EF871F0;
  if (!qword_27EF871F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF871D8, &unk_24AABD110);
    sub_24AA91548();
    sub_24AA16A68(&qword_27EF87218, &qword_27EF87220, &qword_24AABD1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF871F0);
  }

  return result;
}

unint64_t sub_24AA91548()
{
  result = qword_27EF871F8;
  if (!qword_27EF871F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF871C0, &qword_24AABD0B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CB8, &qword_24AABD0C0);
    sub_24AA9163C();
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF84D48, &qword_27EF84D50, &qword_24AAB6330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF871F8);
  }

  return result;
}

unint64_t sub_24AA9163C()
{
  result = qword_27EF87200;
  if (!qword_27EF87200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CB8, &qword_24AABD0C0);
    sub_24AA16A68(&qword_27EF87208, &qword_27EF87210, &unk_24AABD1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87200);
  }

  return result;
}

uint64_t sub_24AA91704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24AA91774()
{
  result = qword_27EF854D8;
  if (!qword_27EF854D8)
  {
    type metadata accessor for CallNotificationViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF854D8);
  }

  return result;
}

uint64_t sub_24AA917CC()
{
  v0 = sub_24AAB3A84();
  __swift_allocate_value_buffer(v0, qword_27EF919D8);
  __swift_project_value_buffer(v0, qword_27EF919D8);
  sub_24AAB3224();
  return sub_24AAB3A74();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_24AA918B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MoreMenuControl(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24AA91978(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MoreMenuControl(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MoreMenuButton()
{
  result = qword_27EF87268;
  if (!qword_27EF87268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AA91A68()
{
  sub_24AAB30F4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MoreMenuControl(319);
    if (v1 <= 0x3F)
    {
      sub_24AA91B0C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24AA91B0C()
{
  if (!qword_27EF87278)
  {
    v0 = sub_24AAB4B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF87278);
    }
  }
}

uint64_t sub_24AA91B78@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = sub_24AAB4394();
  v77 = *(v2 - 8);
  v78 = v2;
  v3 = *(v77 + 64);
  MEMORY[0x28223BE20](v2);
  v76 = (&v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE8, &qword_24AAB85F0);
  v5 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v7 = &v62 - v6;
  v66 = sub_24AAB3ED4();
  v67 = *(v66 - 8);
  v8 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for MoreMenuButton();
  v11 = *(v65 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v65);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CF8, &unk_24AAB6310);
  v64 = *(v63 - 8);
  v13 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  v15 = &v62 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE0, &unk_24AAB6300);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CD0, &unk_24AAB62F0);
  v72 = *(v20 - 8);
  v73 = v20;
  v21 = *(v72 + 64);
  MEMORY[0x28223BE20](v20);
  v79 = &v62 - v22;
  sub_24AA92B2C(v1, &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v11 + 80);
  v24 = (v23 + 16) & ~v23;
  v70 = v12;
  v68 = v23;
  v25 = swift_allocObject();
  v69 = v24;
  v26 = v25 + v24;
  v27 = v19;
  v71 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA92B94(v71, v26);
  v80 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EB8, &unk_24AAB8780);
  sub_24AA15964();
  sub_24AAB4BB4();
  sub_24AAB3EC4();
  sub_24AA16A68(&qword_27EF84D00, &qword_27EF84CF8, &unk_24AAB6310);
  sub_24AA9302C(&qword_27EF84D08, MEMORY[0x277CDD9E0]);
  v28 = v63;
  v29 = v66;
  v30 = v1;
  sub_24AAB49B4();
  (*(v67 + 8))(v10, v29);
  (*(v64 + 8))(v15, v28);
  v31 = v16;
  v32 = *(v16 + 36);
  v33 = v65;
  v34 = &v19[v32];
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84D18, &qword_24AABDA10) + 28);
  sub_24AAB3F44();
  *v34 = swift_getKeyPath();
  v36 = v1 + v33[5];
  v37 = type metadata accessor for MoreMenuControl(0);
  v38 = *(v37 + 28);
  if (*(v36 + *(v37 + 36)) == 1 && (v39 = *(v36 + v38 + 24)) != 0)
  {
    v40 = *(v36 + v38 + 16);
  }

  else
  {
    v41 = (v36 + v38);
    v40 = *v41;
    v39 = v41[1];
  }

  v42 = *(v30 + v33[6]);
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v43 = v74;
  v44 = *(v74 + 36);
  *&v7[v44] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  v45 = &v7[v43[10]];
  *v45 = v40;
  *(v45 + 1) = v39;
  v46 = &v7[v43[12]];
  *v46 = v42;
  *(v46 + 1) = v42;
  v46[16] = 0;
  v47 = &v7[v43[13]];
  v64 = sub_24AA14EE0();
  v48 = sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0);
  *v47 = 0u;
  *(v47 + 1) = 0u;
  sub_24AAB47E4();
  sub_24AA92D80(v7);
  sub_24AA92DE8(v27);
  v49 = v30 + v33[7];
  v50 = *v49;
  v51 = *(v49 + 8);
  v85 = v50;
  v86 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87280, &qword_24AABDAC0);
  sub_24AAB4B84();
  v66 = v82;
  LODWORD(v67) = v83;
  v52 = v71;
  sub_24AA92B2C(v30, v71);
  v53 = v69;
  v54 = swift_allocObject();
  sub_24AA92B94(v52, v54 + v53);
  v55 = sub_24AAB4BA4();
  v56 = v76;
  v57 = v77;
  *v76 = v55;
  v58 = v78;
  (*(v57 + 104))(v56, *MEMORY[0x277CDE248], v78);
  MEMORY[0x24C224D90](0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CD8, &unk_24AABD3B0);
  v81 = v31;
  v82 = v43;
  v83 = v64;
  v84 = v48;
  swift_getOpaqueTypeConformance2();
  sub_24AA15058();
  v59 = v73;
  v60 = v79;
  sub_24AAB4804();

  (*(v57 + 8))(v56, v58);
  return (*(v72 + 8))(v60, v59);
}

uint64_t sub_24AA923EC(uint64_t a1)
{
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v2 = sub_24AAB3A84();
  __swift_project_value_buffer(v2, qword_27EF919D8);
  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24AA0F000, v3, v4, "did tap MoreMenuButton", v5, 2u);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  v6 = (a1 + *(type metadata accessor for MoreMenuButton() + 28));
  v8 = *v6;
  v9 = *(v6 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87280, &qword_24AABDAC0);
  return sub_24AAB4B74();
}

uint64_t sub_24AA9251C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for MoreMenuButton() + 20);
  v4 = (v3 + *(type metadata accessor for MoreMenuControl(0) + 24));
  v5 = *v4;
  v6 = v4[1];

  v7 = sub_24AAB4AC4();
  v8 = sub_24AAB45D4();
  result = swift_getKeyPath();
  *a2 = v7;
  a2[1] = result;
  a2[2] = v8;
  return result;
}

uint64_t sub_24AA925A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = sub_24AAB4334();
  v32 = *(v34 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24AAB2EF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84D30, &unk_24AAB6320);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = *a1;

  sub_24AAB2EE4();
  sub_24AAB4D14();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84D38, &unk_24AABD3C0);
  v18 = sub_24AA9302C(&qword_27EF84D40, MEMORY[0x277CFB9D0]);
  v35 = v6;
  v36 = MEMORY[0x277CE0F78];
  v37 = v18;
  v38 = MEMORY[0x277CE0F60];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = MEMORY[0x277CE1340];
  v20 = MEMORY[0x277CE1350];
  sub_24AAB4974();
  (*(v7 + 8))(v10, v6);
  sub_24AAB4324();
  v35 = v6;
  v36 = v20;
  v37 = v17;
  v38 = v17;
  v39 = v18;
  v40 = v19;
  v41 = OpaqueTypeConformance2;
  v42 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v21 = v33;
  v22 = v30;
  sub_24AAB48C4();
  (*(v32 + 8))(v5, v34);
  (*(v31 + 8))(v15, v22);
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CD8, &unk_24AABD3B0) + 36);
  v24 = *MEMORY[0x277CDF3C0];
  v25 = sub_24AAB3CE4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v21 + v23, v24, v25);
  return (*(v26 + 56))(v21 + v23, 0, 1, v25);
}

uint64_t sub_24AA929B8()
{
  sub_24AAB4A24();
  sub_24AAB2EF4();
  sub_24AA9302C(&qword_27EF84D40, MEMORY[0x277CFB9D0]);
  sub_24AAB48A4();
}

uint64_t sub_24AA92A64()
{
  sub_24AAB4A14();
  sub_24AAB4A54();

  sub_24AAB2EF4();
  sub_24AA9302C(&qword_27EF84D40, MEMORY[0x277CFB9D0]);
  sub_24AAB48A4();
}

uint64_t sub_24AA92B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoreMenuButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA92B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoreMenuButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA92BF8()
{
  v1 = *(type metadata accessor for MoreMenuButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24AA923EC(v2);
}

uint64_t sub_24AA92CA8(uint64_t a1)
{
  v2 = sub_24AAB3F54();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24AAB3FB4();
}

uint64_t sub_24AA92D80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE8, &qword_24AAB85F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AA92DE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE0, &unk_24AAB6300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for MoreMenuButton();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + v3);

  v6 = v0 + v3 + *(v1 + 20);
  sub_24AA15ED0(*v6, *(v6 + 8), *(v6 + 16));
  v7 = type metadata accessor for MoreMenuControl(0);
  v8 = v7[5];
  v9 = sub_24AAB2B84();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = *(v6 + v7[6] + 8);

  v11 = (v6 + v7[7]);
  v12 = *v11;

  v13 = v11[1];

  if (v11[3])
  {
    v14 = v11[2];

    v15 = v11[3];
  }

  v16 = *(v0 + v3 + *(v1 + 28) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AA92FBC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MoreMenuButton() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24AA925A0(v4, a1);
}

uint64_t sub_24AA9302C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AA9307C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CD0, &unk_24AAB62F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CD8, &unk_24AABD3B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE0, &unk_24AAB6300);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE8, &qword_24AAB85F0);
  sub_24AA14EE0();
  sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0);
  swift_getOpaqueTypeConformance2();
  sub_24AA15058();
  return swift_getOpaqueTypeConformance2();
}

uint64_t CallStatusView.init(viewModel:compact:showSubtitleWhenActive:avatarSize:shouldShowAvatar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v16 = type metadata accessor for CallStatusView();
  *(a7 + v16[9]) = 0;
  v17 = v16[10];
  *(a7 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  result = sub_24AA1A25C(a1, a7, &qword_27EF87288, &qword_24AABD438);
  v19 = a7 + v16[5];
  *v19 = a2;
  *(v19 + 8) = a3;
  *(v19 + 16) = a4;
  *(a7 + v16[6]) = a6;
  *(a7 + v16[7]) = a5;
  *(a7 + v16[8]) = a8;
  return result;
}

uint64_t type metadata accessor for CallStatusView()
{
  result = qword_27EF87298;
  if (!qword_27EF87298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AA932F4@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873F0, &qword_24AABD660);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v42 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873F8, &qword_24AABD668);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87400, &qword_24AABD670);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87408, &qword_24AABD678);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87410, &unk_24AABD680);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v44 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v42 - v20;
  v22 = sub_24AAB2AF4();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = type metadata accessor for CallStatusViewModel(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87288, &qword_24AABD438);
  MEMORY[0x24C225430](v28);
  v30 = *(v27 + 2);
  v29 = *(v27 + 3);

  sub_24AA97374(v27, type metadata accessor for CallStatusViewModel);
  v31 = 1;
  if (v29)
  {
    sub_24AAB2AE4();
    sub_24AAB2AB4();
    sub_24AAB4654();
    v32 = sub_24AAB4664();
    (*(*(v32 - 8) + 56))(v15, 0, 1, v32);
    sub_24AAB4654();
    v33 = sub_24AAB4684();
    (*(*(v33 - 8) + 56))(v11, 0, 1, v33);
    v34 = v43;
    sub_24AAB4694();
    v35 = sub_24AAB46A4();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    v36 = sub_24AAB4644();
    (*(*(v36 - 8) + 56))(v4, 1, 1, v36);
    sub_24AAB4A44();
    sub_24AAB4A54();

    sub_24AAB46B4();
    v37 = sub_24AAB46C4();
    (*(*(v37 - 8) + 56))(v21, 0, 1, v37);
    sub_24AA1695C(v21, v44, &qword_27EF87410, &unk_24AABD680);
    sub_24AA97698();
    v38 = v45;
    sub_24AAB2AC4();
    sub_24AA169C4(v21, &qword_27EF87410, &unk_24AABD680);
    v31 = 0;
    v39 = v38;
  }

  else
  {
    v39 = v45;
  }

  v40 = sub_24AAB2AA4();
  return (*(*(v40 - 8) + 56))(v39, v31, 1, v40);
}

uint64_t sub_24AA93828@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AAB4094();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CallStatusView();
  sub_24AA1695C(v1 + *(v12 + 40), v11, &qword_27EF85290, &qword_24AAB9020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_24AAB3CE4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_24AAB5134();
    v16 = sub_24AAB44B4();
    sub_24AAB3A54();

    sub_24AAB4084();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t CallStatusView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CallStatusViewModel(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87288, &qword_24AABD438);
  MEMORY[0x24C225430](v8);
  LODWORD(v4) = v7[*(v4 + 40)];
  sub_24AA97374(v7, type metadata accessor for CallStatusViewModel);
  if (v4 == 3)
  {
    v9 = 0x4020000000000000;
  }

  else
  {
    v9 = 0x4024000000000000;
  }

  *a1 = sub_24AAB4104();
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87290, &qword_24AABD440);
  return sub_24AA93B24(v1, (a1 + *(v10 + 44)));
}

uint64_t sub_24AA93B24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v78 = a2;
  v77 = sub_24AAB4404();
  v76 = *(v77 - 8);
  v3 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF872C8, &qword_24AABD4E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v62 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF872D0, &qword_24AABD4E8);
  v9 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v70 = &v62 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF872D8, &qword_24AABD4F0);
  v11 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v13 = &v62 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF872E0, &unk_24AABD4F8);
  v65 = *(v74 - 8);
  v14 = *(v65 + 64);
  v15 = MEMORY[0x28223BE20](v74);
  v73 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v72 = &v62 - v17;
  v18 = type metadata accessor for CallStatusViewModel(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v62 - v23;
  v25 = type metadata accessor for CallStatusView();
  v26 = a1 + v25[5];
  v27 = *v26;
  v28 = *(v26 + 8);
  LODWORD(v26) = *(v26 + 16);
  v90 = v27;
  v91 = v28;
  v64 = v26;
  LOBYTE(v92) = v26;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E20, &qword_24AAB8C90);
  MEMORY[0x24C225430](&v85);
  if (v85)
  {
    v68 = 0;
    v29 = 0;
    v67 = 0;
    v66 = 0;
    v84 = 0;
    v83 = 0;
    v82 = 0;
    v81 = 0;
    v80 = 0;
    v79 = 0;
    v30 = a1;
  }

  else
  {
    v30 = a1;
    if (*(a1 + v25[6]) == 1)
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87288, &qword_24AABD438);
      v62 = v28;
      v32 = v27;
      v33 = v31;
      MEMORY[0x24C225430]();
      v68 = *&v24[*(v18 + 28)];

      sub_24AA97374(v24, type metadata accessor for CallStatusViewModel);
      v34 = v33;
      v27 = v32;
      v28 = v62;
      MEMORY[0x24C225430](v34);
      v35 = v22[*(v18 + 32)];
      sub_24AA97374(v22, type metadata accessor for CallStatusViewModel);
      v67 = swift_allocObject();
      *(v67 + 16) = v35;
      v36 = *(a1 + v25[8]);
      sub_24AAB4D44();
      sub_24AAB3D54();
      v66 = v100;
      v84 = v101;
      v83 = v102;
      v82 = v103;
      v81 = v104;
      v80 = v105;
      v79 = sub_24AAB3D74();
      v29 = sub_24AA97364;
    }

    else
    {
      v68 = 0;
      v29 = 0;
      v67 = 0;
      v66 = 0;
      v84 = 0;
      v83 = 0;
      v82 = 0;
      v81 = 0;
      v80 = 0;
      v79 = 0;
    }
  }

  v62 = v29;
  *v8 = sub_24AAB41C4();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF872E8, &qword_24AABD508);
  sub_24AA94420(v30, &v8[*(v37 + 44)]);
  v38 = *(v30 + v25[9]);
  v39 = sub_24AAB4DD4();
  v40 = sub_24AAB43E4();
  sub_24AAB4E14();
  v42 = v41;
  v44 = v43;
  v45 = v70;
  sub_24AA1A25C(v8, v70, &qword_27EF872C8, &qword_24AABD4E0);
  v46 = v45 + *(v69 + 36);
  *v46 = 0x656C746974627573;
  *(v46 + 8) = 0xE800000000000000;
  *(v46 + 16) = v39;
  *(v46 + 24) = v40;
  *(v46 + 32) = v42;
  *(v46 + 40) = v44;
  *(v46 + 48) = 1;
  v90 = v27;
  v91 = v28;
  LOBYTE(v92) = v64;
  MEMORY[0x24C225430](&v85, v63);
  LOBYTE(v39) = v85;
  sub_24AA1A25C(v45, v13, &qword_27EF872D0, &qword_24AABD4E8);
  v13[*(v71 + 52)] = v39;
  v47 = v75;
  sub_24AAB43F4();
  sub_24AA16A68(&qword_27EF872F0, &qword_27EF872D8, &qword_24AABD4F0);
  v48 = v72;
  sub_24AAB4894();
  (*(v76 + 8))(v47, v77);
  sub_24AA169C4(v13, &qword_27EF872D8, &qword_24AABD4F0);
  v49 = v65;
  v50 = *(v65 + 16);
  v51 = v73;
  v52 = v74;
  v50(v73, v48, v74);
  v53 = v68;
  *&v85 = v68;
  *(&v85 + 1) = v29;
  v54 = v67;
  *&v86 = v67;
  v55 = v66;
  *(&v86 + 1) = v66;
  *&v87 = v84;
  *(&v87 + 1) = v83;
  *&v88 = v82;
  *(&v88 + 1) = v81;
  *&v89 = v80;
  *(&v89 + 1) = v79;
  v56 = v88;
  v57 = v78;
  *(v78 + 2) = v87;
  *(v57 + 3) = v56;
  *(v57 + 4) = v89;
  v58 = v86;
  *v57 = v85;
  *(v57 + 1) = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF872F8, &qword_24AABD510);
  v50(&v57[*(v59 + 48)], v51, v52);
  sub_24AA1695C(&v85, &v90, &qword_27EF87300, &qword_24AABD518);
  v60 = *(v49 + 8);
  v60(v48, v52);
  v60(v51, v52);
  v90 = v53;
  v91 = v62;
  v92 = v54;
  v93 = v55;
  v94 = v84;
  v95 = v83;
  v96 = v82;
  v97 = v81;
  v98 = v80;
  v99 = v79;
  return sub_24AA169C4(&v90, &qword_27EF87300, &qword_24AABD518);
}

uint64_t sub_24AA94420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v56 = sub_24AAB3CE4();
  v3 = *(v56 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v56);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v49 - v8;
  v57 = sub_24AAB4DB4();
  v55 = *(v57 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87308, &qword_24AABD520);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87310, &qword_24AABD528);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v53 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v49 - v22;
  MEMORY[0x28223BE20](v21);
  v51 = &v49 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87318, &qword_24AABD530);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v50 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v49 - v29;
  *v30 = sub_24AAB4104();
  *(v30 + 1) = 0;
  v30[16] = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87320, &qword_24AABD538);
  sub_24AA94978(&v30[*(v31 + 44)]);
  sub_24AA95100(a1, v15);
  v32 = sub_24AAB4554();
  KeyPath = swift_getKeyPath();
  v34 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87328, &qword_24AABD570) + 36)];
  *v34 = KeyPath;
  v34[1] = v32;
  v35 = [objc_opt_self() secondaryLabelColor];
  *&v15[*(v12 + 44)] = sub_24AAB49C4();
  v36 = v52;
  sub_24AA93828(v52);
  v37 = v56;
  (*(v3 + 104))(v7, *MEMORY[0x277CDF3C0], v56);
  LOBYTE(v12) = sub_24AAB3CD4();
  v38 = *(v3 + 8);
  v38(v7, v37);
  v38(v36, v37);
  v39 = v55;
  v40 = MEMORY[0x277CE13B8];
  if ((v12 & 1) == 0)
  {
    v40 = MEMORY[0x277CE13B0];
  }

  v41 = v54;
  v42 = v57;
  (*(v55 + 104))(v54, *v40, v57);
  (*(v39 + 32))(&v23[*(v17 + 44)], v41, v42);
  sub_24AA1A25C(v15, v23, &qword_27EF87308, &qword_24AABD520);
  v43 = v51;
  sub_24AA1A25C(v23, v51, &qword_27EF87310, &qword_24AABD528);
  v44 = v50;
  sub_24AA1695C(v30, v50, &qword_27EF87318, &qword_24AABD530);
  v45 = v53;
  sub_24AA1695C(v43, v53, &qword_27EF87310, &qword_24AABD528);
  v46 = v58;
  sub_24AA1695C(v44, v58, &qword_27EF87318, &qword_24AABD530);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87330, &qword_24AABD578);
  sub_24AA1695C(v45, v46 + *(v47 + 48), &qword_27EF87310, &qword_24AABD528);
  sub_24AA169C4(v43, &qword_27EF87310, &qword_24AABD528);
  sub_24AA169C4(v30, &qword_27EF87318, &qword_24AABD530);
  sub_24AA169C4(v45, &qword_27EF87310, &qword_24AABD528);
  return sub_24AA169C4(v44, &qword_27EF87318, &qword_24AABD530);
}

uint64_t sub_24AA94978@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F18, &qword_24AABD640);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v78 = &v76 - v3;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85438, &qword_24AABC780);
  v85 = *(v87 - 8);
  v4 = *(v85 + 64);
  MEMORY[0x28223BE20](v87);
  v79 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855C0, &unk_24AAB7270);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v76 - v8;
  v10 = sub_24AAB2AA4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v80 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873D8, &qword_24AABD648);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v84 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v82 = &v76 - v21;
  v22 = type metadata accessor for CallStatusViewModel(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = (&v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873E0, &qword_24AABD650);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v83 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v76 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87288, &qword_24AABD438);
  MEMORY[0x24C225430](v33);
  v34 = *v25;
  v35 = v25[1];

  sub_24AA97374(v25, type metadata accessor for CallStatusViewModel);
  v36 = [objc_opt_self() labelColor];
  sub_24AAB2F14();
  sub_24AAB4554();
  sub_24AAB45A4();
  v37 = sub_24AAB45E4();

  KeyPath = swift_getKeyPath();
  v39 = *(v27 + 44);
  v81 = v32;
  v40 = &v32[v39];
  *v40 = KeyPath;
  v40[1] = v37;
  sub_24AA932F4(v9);
  v41 = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24AA169C4(v9, &qword_27EF855C0, &unk_24AAB7270);
    v42 = 1;
    v43 = v82;
  }

  else
  {
    v44 = *(v11 + 32);
    v45 = v80;
    v77 = v10;
    v44(v80, v9, v10);
    (*(v11 + 16))(v15, v45, v10);
    v46 = sub_24AAB4764();
    v48 = v47;
    v50 = v49;
    sub_24AAB4584();
    v51 = sub_24AAB4564();
    v52 = v78;
    (*(*(v51 - 8) + 56))(v78, 1, 1, v51);
    sub_24AAB45B4();
    sub_24AA169C4(v52, &qword_27EF85F18, &qword_24AABD640);
    v53 = sub_24AAB4704();
    v55 = v54;
    v57 = v56;

    sub_24AA158E8(v46, v48, v50 & 1);

    sub_24AAB4A44();
    sub_24AAB4A54();

    v58 = sub_24AAB46E4();
    v60 = v59;
    v62 = v61;
    v64 = v63;

    sub_24AA158E8(v53, v55, v57 & 1);

    (*(v41 + 8))(v80, v77);
    v65 = *(v87 + 36);
    v66 = *MEMORY[0x277CE13E8];
    v67 = sub_24AAB4DB4();
    v68 = v79;
    (*(*(v67 - 8) + 104))(&v79[v65], v66, v67);
    *v68 = v58;
    *(v68 + 8) = v60;
    *(v68 + 16) = v62 & 1;
    *(v68 + 24) = v64;
    v43 = v82;
    sub_24AA1A25C(v68, v82, &qword_27EF85438, &qword_24AABC780);
    v42 = 0;
  }

  (*(v85 + 56))(v43, v42, 1, v87);
  v69 = v81;
  v70 = v83;
  sub_24AA1695C(v81, v83, &qword_27EF873E0, &qword_24AABD650);
  v71 = v84;
  sub_24AA1695C(v43, v84, &qword_27EF873D8, &qword_24AABD648);
  v72 = v86;
  sub_24AA1695C(v70, v86, &qword_27EF873E0, &qword_24AABD650);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873E8, &qword_24AABD658);
  v74 = v72 + *(v73 + 48);
  *v74 = 0;
  *(v74 + 8) = 1;
  sub_24AA1695C(v71, v72 + *(v73 + 64), &qword_27EF873D8, &qword_24AABD648);
  sub_24AA169C4(v43, &qword_27EF873D8, &qword_24AABD648);
  sub_24AA169C4(v69, &qword_27EF873E0, &qword_24AABD650);
  sub_24AA169C4(v71, &qword_27EF873D8, &qword_24AABD648);
  return sub_24AA169C4(v70, &qword_27EF873E0, &qword_24AABD650);
}

uint64_t sub_24AA95100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v175 = a2;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87338, &qword_24AABD580);
  v3 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v143 = (&v141 - v4);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87340, &qword_24AABD588);
  v5 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v154 = (&v141 - v6);
  v7 = sub_24AAB4734();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v149 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87348, &qword_24AABD590);
  v10 = *(*(v174 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v174);
  v146 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v147 = &v141 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v144 = &v141 - v16;
  MEMORY[0x28223BE20](v15);
  v145 = &v141 - v17;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87350, &qword_24AABD598);
  v18 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v151 = (&v141 - v19);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87358, &qword_24AABD5A0);
  v20 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170);
  v152 = &v141 - v21;
  v160 = sub_24AAB2C54();
  v162 = *(v160 - 8);
  v22 = *(v162 + 64);
  v23 = MEMORY[0x28223BE20](v160);
  v148 = &v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v164 = &v141 - v26;
  MEMORY[0x28223BE20](v25);
  v163 = &v141 - v27;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87360, &qword_24AABD5A8);
  v28 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v173 = &v141 - v29;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87368, &qword_24AABD5B0);
  v30 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166);
  v168 = &v141 - v31;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87370, &qword_24AABD5B8);
  v32 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v169 = &v141 - v33;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87378, &unk_24AABD5C0);
  v34 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v36 = &v141 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v156 = &v141 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v161 = &v141 - v41;
  v159 = type metadata accessor for CallSubtitle(0);
  v42 = *(*(v159 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v159);
  v45 = (&v141 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = MEMORY[0x28223BE20](v43);
  v157 = (&v141 - v47);
  MEMORY[0x28223BE20](v46);
  v49 = &v141 - v48;
  v50 = type metadata accessor for CallStatusViewModel(0);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50);
  v54 = &v141 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v141 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v60 = &v141 - v59;
  MEMORY[0x28223BE20](v58);
  v62 = &v141 - v61;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87288, &qword_24AABD438);
  v63 = a1;
  MEMORY[0x24C225430]();
  v158 = v50;
  sub_24AA877CC(&v62[*(v50 + 24)], v49);
  sub_24AA97374(v62, type metadata accessor for CallStatusViewModel);
  v64 = CallSubtitle.string.getter();
  v66 = v65;
  sub_24AA97374(v49, type metadata accessor for CallSubtitle);
  if (v66)
  {
    *v36 = sub_24AAB4104();
    *(v36 + 1) = 0x4018000000000000;
    v36[16] = 0;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873B8, &qword_24AABD5F0);
    sub_24AA96524(v64, v66, &v36[*(v67 + 44)]);

    sub_24AA1695C(v36, v168, &qword_27EF87378, &unk_24AABD5C0);
    swift_storeEnumTagMultiPayload();
    sub_24AA16A68(&qword_27EF87398, &qword_27EF87378, &unk_24AABD5C0);
    sub_24AA9748C();
    v68 = v169;
    sub_24AAB42B4();
    sub_24AA1695C(v68, v173, &qword_27EF87370, &qword_24AABD5B8);
    swift_storeEnumTagMultiPayload();
    sub_24AA973D4();
    sub_24AA97518();
    v69 = v175;
    sub_24AAB42B4();
    sub_24AA169C4(v68, &qword_27EF87370, &qword_24AABD5B8);
    sub_24AA169C4(v36, &qword_27EF87378, &unk_24AABD5C0);
LABEL_23:
    v115 = 0;
    goto LABEL_24;
  }

  v142 = v54;
  v70 = v156;
  v71 = v163;
  v72 = v164;
  v73 = v63;
  MEMORY[0x24C225430](v165);
  v74 = v158;
  v75 = v157;
  sub_24AA877CC(&v60[*(v158 + 24)], v157);
  sub_24AA97374(v60, type metadata accessor for CallStatusViewModel);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v76 = *v75;
    v77 = v75[1];
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF870B0, &unk_24AABCB50);
    v79 = v161;
    sub_24AA1A25C(v75 + *(v78 + 48), v161, &qword_27EF855E8, &unk_24AABCB40);
    sub_24AA1695C(v79, v70, &qword_27EF855E8, &unk_24AABCB40);
    v80 = v162;
    v81 = v160;
    if ((*(v162 + 48))(v70, 1, v160) == 1)
    {
      sub_24AA169C4(v70, &qword_27EF855E8, &unk_24AABCB40);
      v177 = v76;
      v178 = v77;
      sub_24AA15894();
      v82 = sub_24AAB4774();
      v83 = v151;
      *v151 = v82;
      v83[1] = v84;
      *(v83 + 16) = v85 & 1;
      v83[3] = v86;
      swift_storeEnumTagMultiPayload();
      sub_24AA97518();
      v87 = v152;
      sub_24AAB42B4();
      v88 = v169;
    }

    else
    {
      v165 = v77;
      v105 = v72;
      (*(v80 + 32))(v72, v70, v81);
      v106 = type metadata accessor for CallStatusView();
      v107 = v73 + *(v106 + 20);
      v108 = *v107;
      v109 = *(v107 + 8);
      LOBYTE(v107) = *(v107 + 16);
      v177 = v108;
      v178 = v109;
      v179 = v107;
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E20, &qword_24AAB8C90);
      MEMORY[0x24C225430](&v176, v110);
      if ((v176 & 1) != 0 || (*(v73 + *(v106 + 28)) & 1) == 0)
      {
        (*(v80 + 16))(v148, v72, v81);
        sub_24AAB4724();
        v116 = sub_24AAB4744();
        v118 = v117;
        v119 = v154;
        *v154 = v116;
        v119[1] = v117;
        v121 = v120 & 1;
        *(v119 + 16) = v120 & 1;
        v119[3] = v122;
        swift_storeEnumTagMultiPayload();
        sub_24AA1A814(v116, v118, v121);

        sub_24AA1A814(v116, v118, v121);
        sub_24AA16A68(&qword_27EF87388, &qword_27EF87338, &qword_24AABD580);

        v114 = v144;
        sub_24AAB42B4();

        sub_24AA158E8(v116, v118, v121);

        sub_24AA158E8(v116, v118, v121);
      }

      else
      {
        v111 = sub_24AAB4104();
        v112 = v143;
        *v143 = v111;
        *(v112 + 8) = 0x4000000000000000;
        *(v112 + 16) = 0;
        v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873B0, &unk_24AABD5E0);
        sub_24AA968F0(0, 0, v76, v165, v105, v112 + *(v113 + 44));
        sub_24AA1695C(v112, v154, &qword_27EF87338, &qword_24AABD580);
        swift_storeEnumTagMultiPayload();
        sub_24AA16A68(&qword_27EF87388, &qword_27EF87338, &qword_24AABD580);
        v114 = v144;
        sub_24AAB42B4();

        sub_24AA169C4(v112, &qword_27EF87338, &qword_24AABD580);
      }

      v88 = v169;
      v123 = v114;
      v124 = v145;
      sub_24AA1A25C(v123, v145, &qword_27EF87348, &qword_24AABD590);
      sub_24AA1695C(v124, v151, &qword_27EF87348, &qword_24AABD590);
      swift_storeEnumTagMultiPayload();
      sub_24AA97518();
      v87 = v152;
      sub_24AAB42B4();
      sub_24AA169C4(v124, &qword_27EF87348, &qword_24AABD590);
      (*(v80 + 8))(v164, v81);
    }

    v69 = v175;
    sub_24AA1695C(v87, v168, &qword_27EF87358, &qword_24AABD5A0);
    swift_storeEnumTagMultiPayload();
    sub_24AA16A68(&qword_27EF87398, &qword_27EF87378, &unk_24AABD5C0);
    sub_24AA9748C();
    sub_24AAB42B4();
    sub_24AA1695C(v88, v173, &qword_27EF87370, &qword_24AABD5B8);
    swift_storeEnumTagMultiPayload();
    sub_24AA973D4();
    sub_24AA97518();
    sub_24AAB42B4();
    sub_24AA169C4(v88, &qword_27EF87370, &qword_24AABD5B8);
    sub_24AA169C4(v87, &qword_27EF87358, &qword_24AABD5A0);
    sub_24AA169C4(v161, &qword_27EF855E8, &unk_24AABCB40);
    goto LABEL_23;
  }

  sub_24AA97374(v75, type metadata accessor for CallSubtitle);
  MEMORY[0x24C225430](v165);
  sub_24AA877CC(&v57[*(v74 + 24)], v45);
  sub_24AA97374(v57, type metadata accessor for CallStatusViewModel);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v89 = *v45;
    v90 = v45[1];
    v91 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
    v92 = v71;
    v93 = v160;
    (*(v162 + 32))(v71, v91, v160);
    v94 = v142;
    MEMORY[0x24C225430](v165);
    v95 = (v94 + *(v74 + 36));
    v97 = *v95;
    v96 = v95[1];

    sub_24AA97374(v94, type metadata accessor for CallStatusViewModel);
    if (v90)
    {
      v98 = type metadata accessor for CallStatusView();
      v99 = v73 + *(v98 + 20);
      v100 = *v99;
      v101 = *(v99 + 8);
      LOBYTE(v99) = *(v99 + 16);
      v177 = v100;
      v178 = v101;
      v179 = v99;
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E20, &qword_24AAB8C90);
      MEMORY[0x24C225430](&v176, v102);
      v103 = v148;
      if (v176)
      {
        v69 = v175;
        v104 = v154;
      }

      else
      {
        v125 = *(v73 + *(v98 + 28));
        v69 = v175;
        if (v125)
        {
          v126 = sub_24AAB4104();
          v127 = v143;
          *v143 = v126;
          *(v127 + 8) = 0x4000000000000000;
          *(v127 + 16) = 0;
          v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873B0, &unk_24AABD5E0);
          sub_24AA968F0(v97, v96, v89, v90, v92, v127 + *(v128 + 44));

          sub_24AA1695C(v127, v154, &qword_27EF87338, &qword_24AABD580);
          swift_storeEnumTagMultiPayload();
          sub_24AA16A68(&qword_27EF87388, &qword_27EF87338, &qword_24AABD580);
          v129 = v146;
          sub_24AAB42B4();

          sub_24AA169C4(v127, &qword_27EF87338, &qword_24AABD580);
          v130 = v173;
          v131 = v162;
LABEL_22:
          v138 = v147;
          sub_24AA1A25C(v129, v147, &qword_27EF87348, &qword_24AABD590);
          sub_24AA1695C(v138, v130, &qword_27EF87348, &qword_24AABD590);
          swift_storeEnumTagMultiPayload();
          sub_24AA973D4();
          sub_24AA97518();
          sub_24AAB42B4();
          sub_24AA169C4(v138, &qword_27EF87348, &qword_24AABD590);
          (*(v131 + 8))(v163, v160);
          goto LABEL_23;
        }

        v104 = v154;
      }
    }

    else
    {
      v69 = v175;
      v104 = v154;
      v103 = v148;
    }

    v131 = v162;
    (*(v162 + 16))(v103, v92, v93);
    sub_24AAB4724();
    v132 = sub_24AAB4744();
    v134 = v133;
    *v104 = v132;
    v104[1] = v133;
    v136 = v135 & 1;
    *(v104 + 16) = v135 & 1;
    v104[3] = v137;
    swift_storeEnumTagMultiPayload();
    sub_24AA1A814(v132, v134, v136);

    sub_24AA1A814(v132, v134, v136);
    sub_24AA16A68(&qword_27EF87388, &qword_27EF87338, &qword_24AABD580);

    v129 = v146;
    sub_24AAB42B4();

    sub_24AA158E8(v132, v134, v136);

    sub_24AA158E8(v132, v134, v136);

    v130 = v173;
    goto LABEL_22;
  }

  sub_24AA97374(v45, type metadata accessor for CallSubtitle);
  v115 = 1;
  v69 = v175;
LABEL_24:
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87380, &unk_24AABD5D0);
  return (*(*(v139 - 8) + 56))(v69, v115, 1, v139);
}

uint64_t sub_24AA96524@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = sub_24AAB3044();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CallStatusViewModel(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873C0, &qword_24AABD5F8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87288, &qword_24AABD438);
  MEMORY[0x24C225430](v22);
  v23 = &v14[*(v11 + 44)];
  v25 = *v23;
  v24 = *(v23 + 1);

  sub_24AA97374(v14, type metadata accessor for CallStatusViewModel);
  if (!v24)
  {
    goto LABEL_7;
  }

  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {

LABEL_7:
    v30 = 1;
    goto LABEL_8;
  }

  v27 = objc_opt_self();
  v28 = [v27 dynamicBackgroundColor];
  sub_24AAB49C4();
  v42 = v5;
  v29 = [v27 dynamicCarPrimaryColor];
  sub_24AAB49C4();
  v5 = v42;
  sub_24AAB3034();
  (*(v6 + 32))(v21, v9, v5);
  v30 = 0;
LABEL_8:
  (*(v6 + 56))(v21, v30, 1, v5);
  v44 = a1;
  v45 = a2;
  sub_24AA15894();

  v31 = sub_24AAB4774();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  KeyPath = swift_getKeyPath();
  sub_24AA1695C(v21, v19, &qword_27EF873C0, &qword_24AABD5F8);
  v39 = v43;
  sub_24AA1695C(v19, v43, &qword_27EF873C0, &qword_24AABD5F8);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873C8, &qword_24AABD630) + 48);
  *v40 = v31;
  *(v40 + 8) = v33;
  *(v40 + 16) = v35 & 1;
  *(v40 + 24) = v37;
  *(v40 + 32) = KeyPath;
  *(v40 + 40) = 2;
  *(v40 + 48) = 0;
  sub_24AA1A814(v31, v33, v35 & 1);

  sub_24AA169C4(v21, &qword_27EF873C0, &qword_24AABD5F8);
  sub_24AA158E8(v31, v33, v35 & 1);

  return sub_24AA169C4(v19, &qword_27EF873C0, &qword_24AABD5F8);
}

uint64_t sub_24AA968F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a3;
  v60 = a6;
  v61 = a1;
  v9 = sub_24AAB4734();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24AAB2C54();
  v13 = *(v58 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v58);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24AAB3044();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873C0, &qword_24AABD5F8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v59 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v54 - v26;
  if (!a2)
  {
    goto LABEL_6;
  }

  v28 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v28 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    v29 = objc_opt_self();
    v55 = a5;
    v30 = v29;

    v31 = [v30 dynamicBackgroundColor];
    sub_24AAB49C4();
    v54 = v12;
    v32 = v30;
    a5 = v55;
    v33 = [v32 dynamicCarPrimaryColor];
    sub_24AAB49C4();
    sub_24AAB3034();
    (*(v18 + 32))(v27, v21, v17);
    (*(v18 + 56))(v27, 0, 1, v17);
  }

  else
  {
LABEL_6:
    (*(v18 + 56))(&v54 - v26, 1, 1, v17);
  }

  v56 = v27;
  v62 = v57;
  v63 = a4;

  MEMORY[0x24C2257F0](2108704, 0xE300000000000000);
  sub_24AA15894();
  v57 = sub_24AAB4774();
  v35 = v34;
  v37 = v36;
  v61 = v38;
  (*(v13 + 16))(v16, a5, v58);
  sub_24AAB4724();
  v39 = sub_24AAB4744();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v27;
  v47 = v59;
  sub_24AA1695C(v46, v59, &qword_27EF873C0, &qword_24AABD5F8);
  v37 &= 1u;
  LOBYTE(v62) = v37;
  v48 = v60;
  sub_24AA1695C(v47, v60, &qword_27EF873C0, &qword_24AABD5F8);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF873D0, &qword_24AABD638);
  v50 = v48 + *(v49 + 48);
  v51 = v57;
  *v50 = v57;
  *(v50 + 8) = v35;
  *(v50 + 16) = v37;
  *(v50 + 24) = v61;
  v52 = v48 + *(v49 + 64);
  *v52 = v39;
  *(v52 + 8) = v41;
  v43 &= 1u;
  *(v52 + 16) = v43;
  *(v52 + 24) = v45;
  sub_24AA1A814(v51, v35, v37);

  sub_24AA1A814(v39, v41, v43);

  sub_24AA169C4(v56, &qword_27EF873C0, &qword_24AABD5F8);
  sub_24AA158E8(v39, v41, v43);

  sub_24AA158E8(v51, v35, v62);

  return sub_24AA169C4(v47, &qword_27EF873C0, &qword_24AABD5F8);
}

uint64_t sub_24AA96DA0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CallStatusViewModel(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87288, &qword_24AABD438);
  MEMORY[0x24C225430](v8);
  LODWORD(v4) = v7[*(v4 + 40)];
  sub_24AA97374(v7, type metadata accessor for CallStatusViewModel);
  if (v4 == 3)
  {
    v9 = 0x4020000000000000;
  }

  else
  {
    v9 = 0x4024000000000000;
  }

  *a1 = sub_24AAB4104();
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87290, &qword_24AABD440);
  return sub_24AA93B24(v1, (a1 + *(v10 + 44)));
}

uint64_t sub_24AA96EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87288, &qword_24AABD438);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86088, qword_24AABD4A0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24AA96FFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87288, &qword_24AABD438);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86088, qword_24AABD4A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24AA9713C()
{
  sub_24AA972AC(319, &qword_27EF872A8, type metadata accessor for CallStatusViewModel, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_24AA9725C();
    if (v1 <= 0x3F)
    {
      sub_24AA972AC(319, &qword_27EF860A0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24AA9725C()
{
  if (!qword_27EF872B0)
  {
    v0 = sub_24AAB4C34();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF872B0);
    }
  }
}

void sub_24AA972AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24AA97374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24AA973D4()
{
  result = qword_27EF87390;
  if (!qword_27EF87390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87370, &qword_24AABD5B8);
    sub_24AA16A68(&qword_27EF87398, &qword_27EF87378, &unk_24AABD5C0);
    sub_24AA9748C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87390);
  }

  return result;
}

unint64_t sub_24AA9748C()
{
  result = qword_27EF873A0;
  if (!qword_27EF873A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87358, &qword_24AABD5A0);
    sub_24AA97518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF873A0);
  }

  return result;
}

unint64_t sub_24AA97518()
{
  result = qword_27EF873A8;
  if (!qword_27EF873A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87348, &qword_24AABD590);
    sub_24AA16A68(&qword_27EF87388, &qword_27EF87338, &qword_24AABD580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF873A8);
  }

  return result;
}

uint64_t sub_24AA975D0@<X0>(uint64_t a1@<X8>)
{
  result = sub_24AAB4044();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24AA97604@<X0>(uint64_t a1@<X8>)
{
  result = sub_24AAB4044();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24AA97638(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_24AAB4054();
}

uint64_t sub_24AA97668(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_24AAB4054();
}

unint64_t sub_24AA97698()
{
  result = qword_27EF87418;
  if (!qword_27EF87418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87418);
  }

  return result;
}

uint64_t CallTranslationViewModel.showingTranslationActivity.getter()
{
  swift_getKeyPath();
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);
  sub_24AAB2CF4();

  return *(v0 + 32);
}

uint64_t *CallTranslationViewModel.__allocating_init(call:)(void *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return CallTranslationViewModel.init(call:)(a1, a2);
}

uint64_t CallTranslationViewModel.moreMenuViewModel.getter()
{
  swift_getKeyPath();
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);
  sub_24AAB2CF4();

  v1 = *(v0 + 40);
}

uint64_t CallTranslationViewModel.prepareToShowCall.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);
  sub_24AAB2CE4();
  sub_24AA16D74(a1);
}

Swift::Void __swiftcall CallTranslationViewModel.start()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856C8, &qword_24AAB75E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87428, &qword_24AABD720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_worker);
  v14[3] = sub_24AAB2F24();
  sub_24AA98EFC();
  v11 = sub_24AAB5184();
  v14[2] = v11;
  v12 = sub_24AAB5174();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87438, &qword_24AABD728);
  sub_24AA16A68(&qword_27EF87440, &qword_27EF87438, &qword_24AABD728);
  sub_24AA98F48(&qword_27EF85720, sub_24AA98EFC);
  sub_24AAB3C14();
  sub_24AA169C4(v4, &qword_27EF856C8, &qword_24AAB75E0);

  swift_allocObject();
  swift_weakInit();
  sub_24AA16A68(&qword_27EF87448, &qword_27EF87428, &qword_24AABD720);
  v13 = sub_24AAB3C44();

  (*(v6 + 8))(v9, v5);
  sub_24AA99118(v13);
}

void sub_24AA97C60(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_call;
  v7 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_call);
  v8 = *(v6 + 8);
  swift_getObjectType();
  v9 = *(v8 + 8);
  if (sub_24AAB3574())
  {
    goto LABEL_2;
  }

  swift_getKeyPath();
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);
  sub_24AAB2CF4();

  if (*(v3 + 32) & 1) != 0 || a1 != 1 || (sub_24AAB2E94(), v10 = sub_24AAB2E84(), v11 = sub_24AAB2E74(), v10, (v11))
  {
LABEL_2:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v12 = type metadata accessor for CustomViewControl(0);
    *(a2 + 24) = v12;
    *(a2 + 32) = sub_24AA98F48(&qword_27EF85680, type metadata accessor for CustomViewControl);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
    v14 = boxed_opaque_existential_1Tm + v12[6];
    sub_24AAB2B24();
    v15 = qword_27EF84C70;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = qword_27EF919F8;
    v17 = unk_27EF91A00;
    v18 = qword_27EF91A08;
    v19 = unk_27EF91A10;
    *(boxed_opaque_existential_1Tm + v12[8]) = 0;
    *(boxed_opaque_existential_1Tm + v12[9]) = 0;
    *boxed_opaque_existential_1Tm = xmmword_24AABD690;
    *(boxed_opaque_existential_1Tm + 16) = 1;
    boxed_opaque_existential_1Tm[3] = 0;
    boxed_opaque_existential_1Tm[4] = 0xE000000000000000;
    v20 = (boxed_opaque_existential_1Tm + v12[7]);
    *v20 = v16;
    v20[1] = v17;
    v20[2] = v18;
    v20[3] = v19;
    v21 = (boxed_opaque_existential_1Tm + v12[10]);
    *v21 = 0x74616C736E617254;
    v21[1] = 0xEB000000006E6F69;
    v22 = (boxed_opaque_existential_1Tm + v12[11]);
    *v22 = sub_24AA9AA48;
    v22[1] = v3;

    sub_24AA1B750(v18, v19);
  }
}

id CallTranslationViewModel.transcriptView()@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_viewController;
  v4 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_viewController);
  v5 = v4;
  if (!v4)
  {
    v6 = v1;
    v7 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_worker);
    v5 = sub_24AAB2F44();
    v8 = *(v6 + v3);
    *(v6 + v3) = v5;

    v9 = v5;
    v4 = 0;
  }

  *a1 = v5;

  return v4;
}

uint64_t *CallTranslationViewModel.init(call:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87458, &qword_24AABD730);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v45 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = &v42 - v11;
  *(v2 + 48) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  v12 = OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_logger;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v13 = sub_24AAB3A84();
  v14 = __swift_project_value_buffer(v13, qword_27EF919D8);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v2 + v12, v14, v13);
  v46 = OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_viewController;
  *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_viewController) = 0;
  v16 = OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel___observationRegistrar;
  sub_24AAB2D24();
  swift_getObjectType();
  v47 = a1;
  v17 = *(a2 + 8);
  if (sub_24AAB3574())
  {
    goto LABEL_6;
  }

  sub_24AAB3124();
  sub_24AAB3114();
  v43 = v16;
  sub_24AAB39A4();
  v18 = sub_24AAB3104();
  v16 = v43;

  if (!v18)
  {
LABEL_6:
    swift_unknownObjectRelease();
    v36 = v3[3];
    sub_24AA16D74(v3[2]);
    v37 = v3[6];

    (*(v15 + 8))(v3 + v12, v13);

    v38 = sub_24AAB2D34();
    (*(*(v38 - 8) + 8))(v3 + v16, v38);
    v39 = *(*v3 + 48);
    v40 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v19 = (v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_call);
    *v19 = a1;
    v19[1] = a2;
    v20 = sub_24AAB31A4();

    swift_unknownObjectRetain();
    v46 = v18;
    v21 = sub_24AAB3194();
    v48 = v20;
    v49 = MEMORY[0x277CFBA58];
    v22 = MEMORY[0x277CFBA58];
    v47 = v21;
    v23 = sub_24AAB2F64();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = v21;
    *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_worker) = sub_24AAB2F54();
    v27 = (v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_service);
    v27[3] = v20;
    v27[4] = v22;
    *v27 = v26;
    sub_24AAB31F4();
    v28 = sub_24AAB2CD4();
    v29 = *(*(v28 - 8) + 56);
    v29(v44, 1, 1, v28);
    v30 = v26;
    v31 = v45;
    sub_24AAB2CC4();
    v29(v31, 0, 1, v28);
    *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_languageViewModel) = sub_24AAB31E4();
    v48 = v20;
    v49 = MEMORY[0x277CFBA58];
    v47 = v30;
    v32 = sub_24AAB3024();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = sub_24AAB3014();
    swift_unknownObjectRelease();

    v3[5] = v35;
  }

  return v3;
}

uint64_t sub_24AA983F4(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

uint64_t sub_24AA98504(uint64_t a1)
{
  if (*(v1 + 40) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);
    sub_24AAB2CE4();
  }
}

uint64_t CallTranslationViewModel.prepareToShowCall.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);
  sub_24AAB2CF4();

  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v4 + 24);
  sub_24AA16D2C(v2);
  return v2;
}

uint64_t sub_24AA98700@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);
  sub_24AAB2CF4();

  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24AA9ABA4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24AA16D2C(v4);
}

uint64_t sub_24AA98800(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24AA9AB9C;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AA16D2C(v3);
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);
  sub_24AAB2CE4();
  sub_24AA16D74(v6);
}

uint64_t sub_24AA9895C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_24AA16D2C(a2);
  return sub_24AA16D74(v6);
}

void (*CallTranslationViewModel.prepareToShowCall.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  swift_beginAccess();
  return sub_24AA98B18;
}

void sub_24AA98B18(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_24AAB2D04();

  free(v1);
}

uint64_t sub_24AA98B9C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TranslationButton(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = *(a2 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_languageViewModel);
  v7[1] = sub_24AA9AA70;
  v7[2] = a2;
  v7[3] = 0x4041800000000000;
  v8 = v7 + *(v5 + 28);
  *v8 = xmmword_24AAB7080;
  v8[16] = 2;
  v9 = type metadata accessor for TranslationControl(0);
  v10 = v9[5];

  sub_24AAB2B24();
  v11 = &v8[v9[6]];
  *v11 = 0x74616C736E617274;
  *(v11 + 1) = 0xE900000000000065;
  v12 = v9[7];
  if (qword_27EF84C70 != -1)
  {
    swift_once();
  }

  v13 = &v8[v12];
  v14 = unk_27EF91A00;
  v15 = qword_27EF91A08;
  v16 = unk_27EF91A10;
  *v13 = qword_27EF919F8;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  v8[v9[8]] = 0;
  v8[v9[9]] = 0;
  v17 = v7 + *(v3 + 32);
  v20[15] = 0;

  sub_24AA1B750(v15, v16);
  sub_24AAB4B54();
  v18 = v21;
  *v17 = v20[16];
  *(v17 + 1) = v18;
  sub_24AA98F48(&qword_27EF874A0, type metadata accessor for TranslationButton);
  return sub_24AAB4BD4();
}

uint64_t sub_24AA98DEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + 40);
}

uint64_t sub_24AA98E9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_24AA98504(v4);
}

uint64_t sub_24AA98EC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_24AA98504(v4);
}

unint64_t sub_24AA98EFC()
{
  result = qword_27EF86400;
  if (!qword_27EF86400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF86400);
  }

  return result;
}

uint64_t sub_24AA98F48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AA98F90()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AA98FC8()
{
  swift_getKeyPath();
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);
  sub_24AAB2CF4();

  v1 = *(v0 + 48);
}

uint64_t sub_24AA9906C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + 48);
}

uint64_t sub_24AA99118(uint64_t a1)
{
  v2 = v1;
  if (!*(v1 + 48))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);
    sub_24AAB2CE4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24AAB3B34();
  sub_24AA98F48(&qword_27EF85A18, MEMORY[0x277CBCDA8]);

  v4 = sub_24AAB4E74();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v2 + 48);
LABEL_7:
  *(v2 + 48) = a1;
}

uint64_t sub_24AA992C0(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24AA99328(v1);
  }

  return result;
}

uint64_t sub_24AA99328(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);
  sub_24AAB2CF4();

  if (*(v1 + 32) != v2)
  {
    v4 = MEMORY[0x24C2255E0](result, 0.5, 1.0, 0.0);
    MEMORY[0x28223BE20](v4);
    sub_24AAB3E24();

    swift_getKeyPath();
    sub_24AAB2CF4();

    result = swift_beginAccess();
    v5 = *(v1 + 16);
    if (v5)
    {
      v6 = *(v1 + 24);

      v5(v7);
      return sub_24AA16D74(v5);
    }
  }

  return result;
}

uint64_t sub_24AA994C8(uint64_t result, char a2)
{
  if (*(result + 32) == (a2 & 1))
  {
    *(result + 32) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA98F48(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

uint64_t *CallTranslationViewModel.deinit()
{
  v1 = v0[3];
  sub_24AA16D74(v0[2]);
  v2 = v0[5];

  v3 = v0[6];

  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_logger;
  v5 = sub_24AAB3A84();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_call);
  swift_unknownObjectRelease();
  v7 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_worker);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_service));
  v8 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_languageViewModel);

  v9 = OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel___observationRegistrar;
  v10 = sub_24AAB2D34();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t CallTranslationViewModel.__deallocating_deinit()
{
  CallTranslationViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24AA9975C()
{
  result = sub_24AAB3A84();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_24AAB2D34();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_24AA998A0()
{
  result = qword_27EF87490;
  if (!qword_27EF87490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87498, &qword_24AABD848);
    sub_24AA81C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87490);
  }

  return result;
}

uint64_t sub_24AA99924(uint64_t a1)
{
  v15 = *v1;
  v16 = *(v1 + 16);
  CallAction.hash(into:)(a1);
  v2 = type metadata accessor for TranslationControl(0);
  v3 = v2[5];
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v4)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  v5 = (v1 + v2[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_24AAB4F64();
  v8 = (v1 + v2[7]);
  v9 = v8[1];
  v11 = v8[2];
  v10 = v8[3];
  if (*v8)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (v10)
  {
    sub_24AAB5514();
    if (v11)
    {
      MEMORY[0x24C225D50](0);
      sub_24AAB4A04();
    }

    else
    {
      MEMORY[0x24C225D50](1);
    }

    sub_24AAB4A04();
  }

  else
  {
    sub_24AAB5514();
  }

  v12 = *(v1 + v2[8]);
  sub_24AAB5514();
  v13 = *(v1 + v2[9]);
  return sub_24AAB5514();
}

uint64_t sub_24AA99AEC()
{
  sub_24AAB54F4();
  sub_24AA99924(v1);
  return sub_24AAB5524();
}

uint64_t sub_24AA99B30()
{
  sub_24AAB54F4();
  sub_24AA99924(v1);
  return sub_24AAB5524();
}

uint64_t sub_24AA99B70@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE8, &qword_24AAB85F0);
  v2 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v4 = &v58 - v3;
  v61 = sub_24AAB3ED4();
  v62 = *(v61 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for TranslationButton(0);
  v8 = *(v73 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v73);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CF8, &unk_24AAB6310);
  v59 = *(v58 - 8);
  v10 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE0, &unk_24AAB6300);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CD0, &unk_24AAB62F0);
  v66 = *(v17 - 8);
  v67 = v17;
  v18 = *(v66 + 64);
  MEMORY[0x28223BE20](v17);
  v64 = &v58 - v19;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF874F8, &qword_24AABDA08);
  v20 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v69 = &v58 - v21;
  sub_24AA9B188(v1, &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v8 + 80);
  v23 = (v22 + 16) & ~v22;
  v71 = v9;
  v65 = v22;
  v24 = swift_allocObject();
  v63 = v23;
  v60 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA9B1F0(v60, v24 + v23);
  v74 = v1;
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EB8, &unk_24AAB8780);
  sub_24AA15964();
  v26 = v13;
  sub_24AAB4BB4();
  sub_24AAB3EC4();
  sub_24AA16A68(&qword_27EF84D00, &qword_27EF84CF8, &unk_24AAB6310);
  sub_24AA98F48(&qword_27EF84D08, MEMORY[0x277CDD9E0]);
  v27 = v58;
  v28 = v61;
  sub_24AAB49B4();
  (*(v62 + 8))(v7, v28);
  (*(v59 + 8))(v12, v27);
  v29 = &v16[*(v26 + 36)];
  v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84D18, &qword_24AABDA10) + 28);
  sub_24AAB3F44();
  *v29 = swift_getKeyPath();
  v31 = v1 + *(v73 + 28);
  v32 = type metadata accessor for TranslationControl(0);
  v33 = *(v32 + 28);
  if (*(v31 + *(v32 + 36)) == 1 && (v34 = *(v31 + v33 + 24)) != 0)
  {
    v35 = *(v31 + v33 + 16);
  }

  else
  {
    v36 = (v31 + v33);
    v35 = *v36;
    v34 = v36[1];
  }

  v37 = *(v25 + 24);
  v38 = v25;
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v39 = v70;
  v40 = *(v70 + 36);
  *&v4[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  v41 = &v4[v39[10]];
  *v41 = v35;
  *(v41 + 1) = v34;
  v42 = &v4[v39[12]];
  *v42 = v37;
  *(v42 + 1) = v37;
  v42[16] = 0;
  v43 = &v4[v39[13]];
  sub_24AA14EE0();
  sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0);
  *v43 = 0u;
  *(v43 + 1) = 0u;
  v44 = v64;
  sub_24AAB47E4();
  sub_24AA169C4(v4, &qword_27EF84CE8, &qword_24AAB85F0);
  sub_24AA169C4(v16, &qword_27EF84CE0, &unk_24AAB6300);
  v45 = v38;
  v46 = v38;
  v47 = v60;
  sub_24AA9B188(v46, v60);
  v48 = v63;
  v49 = swift_allocObject();
  sub_24AA9B1F0(v47, v49 + v48);
  v50 = v69;
  v51 = &v69[*(v68 + 36)];
  v52 = &v51[*(sub_24AAB3E14() + 20)];
  sub_24AAB50D4();
  *v51 = &unk_24AABDAB8;
  *(v51 + 1) = v49;
  (*(v66 + 32))(v50, v44, v67);
  v53 = v45 + *(v73 + 32);
  v54 = *v53;
  v55 = *(v53 + 8);
  v75 = v54;
  v76 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87280, &qword_24AABDAC0);
  sub_24AAB4B84();
  sub_24AA9B188(v45, v47);
  v56 = swift_allocObject();
  sub_24AA9B1F0(v47, v56 + v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87500, &qword_24AABDAC8);
  sub_24AA9B580();
  sub_24AA9B6D8();
  sub_24AAB48D4();

  return sub_24AA169C4(v50, &qword_27EF874F8, &qword_24AABDA08);
}