uint64_t sub_244009690(uint64_t a1)
{
  v2 = sub_2440D2CD0();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2440D0F60();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3380);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3260);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v31 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  swift_beginAccess();
  v32 = a1;
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2440D1340();
  }

  else
  {
    (*(v5 + 56))(v17, 1, 1, v4);
  }

  (*(v5 + 104))(v15, *MEMORY[0x277D43BA0], v4);
  (*(v5 + 56))(v15, 0, 1, v4);
  v18 = *(v7 + 48);
  sub_243F5F574(v17, v9, &qword_27EDC3260);
  sub_243F5F574(v15, &v9[v18], &qword_27EDC3260);
  v19 = *(v5 + 48);
  if (v19(v9, 1, v4) == 1)
  {
    sub_243F5EED4(v15, &qword_27EDC3260);
    sub_243F5EED4(v17, &qword_27EDC3260);
    if (v19(&v9[v18], 1, v4) == 1)
    {
      sub_243F5EED4(v9, &qword_27EDC3260);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v20 = v31;
  sub_243F5F574(v9, v31, &qword_27EDC3260);
  if (v19(&v9[v18], 1, v4) == 1)
  {
    sub_243F5EED4(v15, &qword_27EDC3260);
    sub_243F5EED4(v17, &qword_27EDC3260);
    (*(v5 + 8))(v20, v4);
LABEL_9:
    sub_243F5EED4(v9, &qword_27EDC3380);
    goto LABEL_10;
  }

  v22 = v30;
  (*(v5 + 32))(v30, &v9[v18], v4);
  sub_244010F50(&qword_27EDC3388, MEMORY[0x277D43BB8]);
  v23 = v20;
  v24 = sub_2440D2F50();
  v25 = *(v5 + 8);
  v25(v22, v4);
  sub_243F5EED4(v15, &qword_27EDC3260);
  sub_243F5EED4(v17, &qword_27EDC3260);
  v25(v23, v4);
  sub_243F5EED4(v9, &qword_27EDC3260);
  if (v24)
  {
LABEL_13:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v26 = v27;
      sub_2440D2CC0();
      sub_2440086E4(v26, 0);

      return (*(v28 + 8))(v26, v29);
    }

    return result;
  }

LABEL_10:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 1472))(result);
  }

  return result;
}

uint64_t sub_244009C9C()
{
  v0 = sub_2440D2CD0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2440D2CC0();
    sub_2440086E4(v3, 0);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

char *sub_244009D9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  v1 = v39;
  if (!v39)
  {
    return 0;
  }

  v2 = sub_2440D0DB0();
  if (v3 >> 60 == 15 || (v4 = v2, v0 = v3, v5 = objc_allocWithZone(MEMORY[0x277D755B8]), sub_243F5FECC(v4, v0), v6 = sub_2440D0670(), v7 = [v5 initWithData_], v6, sub_243F5FF20(v4, v0), sub_243F5FF20(v4, v0), !v7))
  {
    v8 = MEMORY[0x277D84F90];
    v12 = sub_2440D0DE0();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = sub_24400EB48(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    v0 = v10 + 1;
    if (v10 >= v9 >> 1)
    {
      v8 = sub_24400EB48((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v0;
    v11 = &v8[24 * v10];
    *(v11 + 4) = v7;
    *(v11 + 5) = 0;
    v11[48] = 0;
    v12 = sub_2440D0DE0();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  v14 = v12;
  v0 = v13;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_10;
  }

LABEL_36:
  v8 = sub_24400EB48(0, *(v8 + 2) + 1, 1, v8);
LABEL_10:
  v16 = *(v8 + 2);
  v15 = *(v8 + 3);
  if (v16 >= v15 >> 1)
  {
    v8 = sub_24400EB48((v15 > 1), v16 + 1, 1, v8);
  }

  *(v8 + 2) = v16 + 1;
  v17 = &v8[24 * v16];
  *(v17 + 4) = v14;
  *(v17 + 5) = v0;
  v17[48] = 1;
LABEL_13:
  v18 = sub_2440D0DD0();
  if ((v19 & 1) == 0)
  {
    v20 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_24400EB48(0, *(v8 + 2) + 1, 1, v8);
    }

    v22 = *(v8 + 2);
    v21 = *(v8 + 3);
    v0 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      v8 = sub_24400EB48((v21 > 1), v22 + 1, 1, v8);
    }

    *(v8 + 2) = v0;
    v23 = &v8[24 * v22];
    *(v23 + 4) = v20;
    *(v23 + 5) = 0;
    v23[48] = 2;
  }

  v38 = v1;
  v24 = sub_2440D0DC0();
  v14 = v24;
  v25 = 0;
  v26 = v24 + 64;
  v27 = 1 << *(v24 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v24 + 64);
  for (i = (v27 + 63) >> 6; v29; v36[48] = 3)
  {
LABEL_26:
    v32 = __clz(__rbit64(v29)) | (v25 << 6);
    v1 = *(*(v14 + 48) + 8 * v32);
    v33 = *(*(v14 + 56) + v32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_24400EB48(0, *(v8 + 2) + 1, 1, v8);
    }

    v35 = *(v8 + 2);
    v34 = *(v8 + 3);
    v0 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      v8 = sub_24400EB48((v34 > 1), v35 + 1, 1, v8);
    }

    v29 &= v29 - 1;
    *(v8 + 2) = v0;
    v36 = &v8[24 * v35];
    *(v36 + 4) = v1;
    *(v36 + 5) = v33;
  }

  while (1)
  {
    v31 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v31 >= i)
    {
      break;
    }

    v29 = *(v26 + 8 * v31);
    ++v25;
    if (v29)
    {
      v25 = v31;
      goto LABEL_26;
    }
  }

  return v8;
}

uint64_t sub_24400A144()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v30 = &v20 - v3;
  v5 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  swift_weakInit();
  v6 = sub_2440D3390();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_2440D3360();

  v7 = v5;
  v27 = v5;

  v8 = v34;

  v9 = v33;

  v10 = v28;

  v11 = v29;

  v12 = v26;

  v13 = v25;

  v14 = sub_2440D3350();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v1;
  v15[5] = sub_24400EE5C;
  v15[6] = v7;
  v15[7] = sub_24400F1F4;
  v15[8] = v8;
  v15[9] = sub_24400F0C8;
  v17 = v31;
  v15[10] = v32;
  v15[11] = sub_24400EFE0;
  v15[12] = v17;
  v15[13] = sub_24400F764;
  v15[14] = v9;
  v15[15] = sub_24400F364;
  v15[16] = v10;
  v15[17] = sub_24400FBCC;
  v18 = v22;
  v15[18] = v21;
  v15[19] = sub_24400FCC4;
  v15[20] = v18;
  v15[21] = sub_24400FBD4;
  v15[22] = v23;
  v15[23] = sub_24400F64C;
  v15[24] = v11;
  v15[25] = sub_24400F898;
  v15[26] = v12;
  v15[27] = sub_24400F96C;
  v15[28] = v13;
  v15[29] = sub_24400FAEC;
  v15[30] = v24;
  v15[31] = sub_24400F1EC;
  v15[32] = v35;
  sub_243F54830(0, 0, v30, &unk_2440DF760, v15);
}

uint64_t sub_24400A6A0()
{
  v0 = sub_2440D2CD0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3260);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - v5 + 16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2440D1340();

    v9 = sub_2440D0F60();
    v10 = (*(*(v9 - 8) + 48))(v6, 1, v9);
    sub_243F5EED4(v6, &qword_27EDC3260);
    v11 = *(*v8 + 1520);
    if (v10 == 1)
    {
      v11(9);
      sub_2440579C8(0, 0xD000000000000024);
      if (UIAccessibilityIsVoiceOverRunning())
      {
        v12 = *MEMORY[0x277D76438];
        v13 = sub_244057FBC(0);

        UIAccessibilityPostNotification(v12, v13);
      }

      else
      {
      }

      sub_2440709E8();
      (*(*v8 + 1464))(v3);
      (*(v1 + 8))(v3, v0);
    }

    else
    {
      v11(8);
    }

    (*(*v8 + 1456))(4);
    v14 = *(**(v8 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_audioManager) + 272);

    v14(13, 0);

    sub_2440BD1F4(0, 0, 0, 0, 0, 2, v16);
    (*(*v8 + 640))(v16);
  }

  return result;
}

uint64_t sub_24400AA84()
{
  v0 = sub_2440D2CD0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    (*(*result + 1520))(13);
    sub_2440BD1F4(0, 0, 0, 0, 0, 1, v8);
    (*(*v5 + 640))(v8);
    v6 = *(**(v5 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_audioManager) + 272);

    v6(8, 0);

    (*(*v5 + 1456))(2);
    sub_244070FA4();
    sub_2440086E4(v3, 0);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_24400ACC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v26;
  *(v8 + 232) = v25;
  *(v8 + 216) = v24;
  *(v8 + 200) = v23;
  *(v8 + 184) = v22;
  *(v8 + 168) = v21;
  *(v8 + 152) = v20;
  *(v8 + 136) = v19;
  *(v8 + 120) = v18;
  *(v8 + 104) = v17;
  *(v8 + 96) = v16;
  *(v8 + 80) = v15;
  *(v8 + 64) = v13;
  *(v8 + 72) = v14;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  sub_2440D3360();
  *(v8 + 256) = sub_2440D3350();
  v10 = sub_2440D3320();
  *(v8 + 264) = v10;
  *(v8 + 272) = v9;

  return MEMORY[0x2822009F8](sub_24400ADCC, v10, v9);
}

uint64_t sub_24400ADCC()
{
  v59 = *(v0 + 248);
  v60 = *(v0 + 240);
  v57 = *(v0 + 232);
  v58 = *(v0 + 224);
  v55 = *(v0 + 216);
  v56 = *(v0 + 208);
  v54 = *(v0 + 192);
  v64 = *(v0 + 184);
  v65 = *(v0 + 200);
  v67 = *(v0 + 176);
  v52 = *(v0 + 168);
  v53 = *(v0 + 160);
  v50 = *(v0 + 152);
  v51 = *(v0 + 144);
  v48 = *(v0 + 136);
  v49 = *(v0 + 128);
  v62 = *(v0 + 120);
  v66 = *(v0 + 112);
  v68 = *(v0 + 104);
  v73 = *(v0 + 80);
  v74 = *(v0 + 88);
  v70 = *(v0 + 96);
  v71 = *(v0 + 72);
  v72 = *(v0 + 64);
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v63 = v3;
  v69 = *(v0 + 24);
  v5 = v69[2];
  *(v0 + 280) = v5;
  v61 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3368);
  v6 = swift_allocObject();
  *(v0 + 288) = v6;
  *(v6 + 16) = xmmword_2440DF170;
  *(v0 + 312) = 256;
  *(v0 + 16) = 0;
  swift_retain_n();

  v7 = MEMORY[0x277D43790];
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v3, v4, MEMORY[0x277D43790], &type metadata for IdentityUIState, v6 + 32);
  *(v0 + 312) = 2;
  *(v0 + 16) = 1;
  swift_retain_n();
  sub_24405CBC0(v0 + 313, v0 + 312, v0 + 16, v1, v2, v7, &type metadata for IdentityUIState, v6 + 64);
  *(v0 + 312) = 0;
  *(v0 + 16) = 15;
  swift_retain_n();
  sub_24405CAD8(v0 + 312, v0 + 16, &unk_2857784D8, v72, v71, &type metadata for IdentityUIState, v6 + 96);
  *(v0 + 312) = 14;
  *(v0 + 16) = 9;
  swift_retain_n();
  sub_24405CBC0(v0 + 313, v0 + 312, v0 + 16, v73, v74, v7, &type metadata for IdentityUIState, v6 + 128);
  *(v0 + 312) = 258;
  *(v0 + 16) = 1;
  sub_24405CBC0(v0 + 313, v0 + 312, v0 + 16, v1, v2, v7, &type metadata for IdentityUIState, v6 + 160);
  *(v0 + 312) = 260;
  *(v0 + 16) = 18;
  swift_retain_n();
  sub_24405CBC0(v0 + 313, v0 + 312, v0 + 16, v70, v68, v7, &type metadata for IdentityUIState, v6 + 192);
  *(v0 + 312) = 1;
  *(v0 + 16) = 15;
  sub_24405CAD8(v0 + 312, v0 + 16, &unk_285778508, v72, v71, &type metadata for IdentityUIState, v6 + 224);
  *(v0 + 312) = 270;
  *(v0 + 16) = 9;
  sub_24405CBC0(v0 + 313, v0 + 312, v0 + 16, v73, v74, v7, &type metadata for IdentityUIState, v6 + 256);
  *(v0 + 312) = 266;
  *(v0 + 16) = 11;
  v8 = (*v69 + 1528);
  v9 = *v8;
  v10 = (*v8)(1);
  sub_24405CBC0(v0 + 313, v0 + 312, v0 + 16, v10, v11, v7, &type metadata for IdentityUIState, v6 + 288);
  *(v0 + 312) = 266;
  *(v0 + 16) = 10;
  v12 = v9(0);
  sub_24405CBC0(v0 + 313, v0 + 312, v0 + 16, v12, v13, v7, &type metadata for IdentityUIState, v6 + 320);
  *(v0 + 312) = 266;
  *(v0 + 16) = 12;
  v14 = v9(5);
  sub_24405CBC0(v0 + 313, v0 + 312, v0 + 16, v14, v15, v7, &type metadata for IdentityUIState, v6 + 352);
  *(v0 + 312) = 266;
  *(v0 + 16) = 13;
  v16 = v9(6);
  sub_24405CBC0(v0 + 313, v0 + 312, v0 + 16, v16, v17, v7, &type metadata for IdentityUIState, v6 + 384);
  *(v0 + 312) = 266;
  *(v0 + 16) = 14;
  v18 = v9(7);
  sub_24405CBC0(v0 + 313, v0 + 312, v0 + 16, v18, v19, v7, &type metadata for IdentityUIState, v6 + 416);
  *(v0 + 312) = 515;
  *(v0 + 16) = 2;
  swift_retain_n();
  sub_24405CBC0(v0 + 313, v0 + 312, v0 + 16, v66, v62, v7, &type metadata for IdentityUIState, v6 + 448);
  *(v0 + 312) = 516;
  *(v0 + 16) = 18;
  sub_24405CBC0(v0 + 313, v0 + 312, v0 + 16, v70, v68, v7, &type metadata for IdentityUIState, v6 + 480);
  *(v0 + 312) = 2;
  *(v0 + 16) = 15;
  sub_24405CAD8(v0 + 312, v0 + 16, &unk_285778538, v72, v71, &type metadata for IdentityUIState, v6 + 512);
  *(v0 + 312) = 526;
  *(v0 + 16) = 9;
  sub_24405CBC0(v0 + 313, v0 + 312, v0 + 16, v73, v74, v7, &type metadata for IdentityUIState, v6 + 544);
  *(v0 + 312) = 522;
  *(v0 + 16) = 6;
  v20 = v9(2);
  sub_24405CBC0(v0 + 313, v0 + 312, v0 + 16, v20, v21, v7, &type metadata for IdentityUIState, v6 + 576);
  *(v0 + 312) = 2562;
  *(v0 + 16) = 11;
  v22 = v9(1);
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v22, v23, v7, &type metadata for IdentityUIState, v6 + 608);
  *(v0 + 312) = 2562;
  *(v0 + 16) = 12;
  v24 = v9(5);
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v24, v25, v7, &type metadata for IdentityUIState, v6 + 640);
  *(v0 + 312) = 2562;
  *(v0 + 16) = 10;
  v26 = v9(0);
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v26, v27, v7, &type metadata for IdentityUIState, v6 + 672);
  *(v0 + 312) = 2562;
  *(v0 + 16) = 14;
  v28 = v9(7);
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v28, v29, v7, &type metadata for IdentityUIState, v6 + 704);
  *(v0 + 312) = 2562;
  *(v0 + 16) = 13;
  v30 = v9(6);
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v30, v31, v7, &type metadata for IdentityUIState, v6 + 736);
  *(v0 + 312) = 3330;
  *(v0 + 16) = 15;

  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v49, v48, v7, &type metadata for IdentityUIState, v6 + 768);
  *(v0 + 312) = 1030;
  *(v0 + 16) = 18;
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v70, v68, v7, &type metadata for IdentityUIState, v6 + 800);
  *(v0 + 16) = 6;
  *(v0 + 312) = 15;
  sub_24405CAD8(v0 + 16, v0 + 312, &unk_285778568, v72, v71, &type metadata for IdentityUIState, v6 + 832);
  *(v0 + 312) = 266;
  *(v0 + 16) = 0;
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v63, v4, v7, &type metadata for IdentityUIState, v6 + 864);
  *(v0 + 312) = 3594;
  *(v0 + 16) = 9;
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v73, v74, v7, &type metadata for IdentityUIState, v6 + 896);
  *(v0 + 312) = 1546;
  *(v0 + 16) = 21;

  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v51, v50, v7, &type metadata for IdentityUIState, v6 + 928);
  *(v0 + 312) = 2575;
  *(v0 + 16) = 17;
  sub_24405CBC0(v0 + 313, v0 + 312, v0 + 16, v72, v71, v7, &type metadata for IdentityUIState, v6 + 960);
  *(v0 + 312) = 269;
  *(v0 + 16) = 0;
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v63, v4, v7, &type metadata for IdentityUIState, v6 + 992);
  *(v0 + 312) = 3853;
  *(v0 + 16) = 17;
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v72, v71, v7, &type metadata for IdentityUIState, v6 + 1024);
  *(v0 + 312) = 1037;
  *(v0 + 16) = 18;

  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v53, v52, v7, &type metadata for IdentityUIState, v6 + 1056);
  *(v0 + 312) = 268;
  *(v0 + 16) = 0;
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v63, v4, v7, &type metadata for IdentityUIState, v6 + 1088);
  *(v0 + 312) = 3852;
  *(v0 + 16) = 17;
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v72, v71, v7, &type metadata for IdentityUIState, v6 + 1120);
  *(v0 + 312) = 1795;
  *(v0 + 16) = 4;
  swift_retain_n();
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v67, v64, v7, &type metadata for IdentityUIState, v6 + 1152);
  *(v0 + 16) = 3;
  *(v0 + 312) = 15;
  sub_24405CAD8(v0 + 16, v0 + 312, &unk_285778598, v72, v71, &type metadata for IdentityUIState, v6 + 1184);
  *(v0 + 312) = 3587;
  *(v0 + 16) = 9;
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v73, v74, v7, &type metadata for IdentityUIState, v6 + 1216);
  *(v0 + 312) = 2563;
  *(v0 + 16) = 14;
  v32 = v9(7);
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v32, v33, v7, &type metadata for IdentityUIState, v6 + 1248);
  *(v0 + 312) = 1284;
  *(v0 + 16) = 19;
  swift_retain_n();
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v54, v65, v7, &type metadata for IdentityUIState, v6 + 1280);
  *(v0 + 16) = 4;
  *(v0 + 312) = 15;
  sub_24405CAD8(v0 + 16, v0 + 312, &unk_2857785C8, v72, v71, &type metadata for IdentityUIState, v6 + 1312);
  *(v0 + 312) = 772;
  *(v0 + 16) = 3;
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v66, v62, v7, &type metadata for IdentityUIState, v6 + 1344);
  *(v0 + 312) = 1796;
  *(v0 + 16) = 4;
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v67, v64, v7, &type metadata for IdentityUIState, v6 + 1376);
  *(v0 + 312) = 4;
  *(v0 + 313) = 4;
  *(v0 + 16) = 9;

  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v56, v55, v7, &type metadata for IdentityUIState, v6 + 1408);
  *(v0 + 312) = 4;
  *(v0 + 313) = 0;
  *(v0 + 16) = 14;

  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v58, v57, v7, &type metadata for IdentityUIState, v6 + 1440);
  *(v0 + 312) = 5;
  *(v0 + 313) = 0;
  *(v0 + 16) = 16;
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v54, v65, v7, &type metadata for IdentityUIState, v6 + 1472);
  *(v0 + 312) = 5;
  *(v0 + 313) = 15;
  *(v0 + 16) = 17;
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v72, v71, v7, &type metadata for IdentityUIState, v6 + 1504);
  *(v0 + 312) = 5;
  *(v0 + 313) = 1;
  *(v0 + 16) = 0;
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, 0, 0, v7, &type metadata for IdentityUIState, v6 + 1536);
  *(v0 + 312) = 5;
  *(v0 + 313) = 10;
  *(v0 + 16) = 11;
  v34 = v9(1);
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v34, v35, v7, &type metadata for IdentityUIState, v6 + 1568);
  *(v0 + 312) = 7;
  *(v0 + 313) = 8;
  *(v0 + 16) = 5;

  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v60, v59, v7, &type metadata for IdentityUIState, v6 + 1600);
  *(v0 + 16) = 7;
  *(v0 + 312) = 15;
  sub_24405CAD8(v0 + 16, v0 + 312, &unk_2857785F8, v72, v71, &type metadata for IdentityUIState, v6 + 1632);
  *(v0 + 312) = 7;
  *(v0 + 313) = 12;
  *(v0 + 16) = 8;
  v36 = v9(4);
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v36, v37, v7, &type metadata for IdentityUIState, v6 + 1664);
  *(v0 + 312) = 7;
  *(v0 + 313) = 12;
  *(v0 + 16) = 7;
  v38 = v9(8);
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v38, v39, v7, &type metadata for IdentityUIState, v6 + 1696);
  *(v0 + 312) = 7;
  *(v0 + 313) = 12;
  *(v0 + 16) = 15;
  v40 = v9(3);
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v40, v41, v7, &type metadata for IdentityUIState, v6 + 1728);
  *(v0 + 312) = 7;
  *(v0 + 313) = 10;
  *(v0 + 16) = 6;
  v42 = v9(2);
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v42, v43, v7, &type metadata for IdentityUIState, v6 + 1760);
  *(v0 + 312) = 7;
  *(v0 + 313) = 10;
  *(v0 + 16) = 14;
  v44 = v9(7);
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v44, v45, v7, &type metadata for IdentityUIState, v6 + 1792);
  *(v0 + 312) = 7;
  *(v0 + 313) = 14;
  *(v0 + 16) = 9;
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v73, v74, v7, &type metadata for IdentityUIState, v6 + 1824);
  *(v0 + 312) = 8;
  *(v0 + 313) = 1;
  *(v0 + 16) = 0;
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v63, v4, v7, &type metadata for IdentityUIState, v6 + 1856);
  *(v0 + 312) = 8;
  *(v0 + 313) = 15;
  *(v0 + 16) = 17;
  sub_24405CBC0(v0 + 312, v0 + 313, v0 + 16, v72, v71, v7, &type metadata for IdentityUIState, v6 + 1888);
  v46 = *v61 + 264;
  *(v0 + 296) = *v46;
  *(v0 + 304) = v46 & 0xFFFFFFFFFFFFLL | 0x8218000000000000;

  return MEMORY[0x2822009F8](sub_24400BDC0, v61, 0);
}

uint64_t sub_24400BDC0()
{
  (*(v0 + 296))(*(v0 + 288));

  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return MEMORY[0x2822009F8](sub_24400BE3C, v1, v2);
}

uint64_t sub_24400BE3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24400BE9C()
{

  v1 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__identityUIIsPresented;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__dismissViewController, v2);
  v3(v0 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__disableSleep, v2);
  v4 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__screenState;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31E8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__particlesState;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31F8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__particlesPendingState;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3210);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__readerStateModel;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3220);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__identityInformation;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC32E0);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__merchantDetails;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3238);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__requestType;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3250);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__requestValidationMode;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC32E8);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  v20 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__bottomError;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3268);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v3(v0 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__scanQRCodeFlag, v2);
  v22 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__qrCodeScanningState;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3278);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v24 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__platterSize;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3288);
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  v26 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__requestedDocument;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3298);
  (*(*(v27 - 8) + 8))(v0 + v26, v27);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_24400C36C()
{
  sub_24400BE9C();

  return swift_deallocClassInstance();
}

uint64_t sub_24400C3C4()
{
  v0 = swift_allocObject();
  sub_24400C3FC();
  return v0;
}

uint64_t sub_24400C3FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3298);
  v114 = *(v2 - 8);
  v115 = v2;
  MEMORY[0x28223BE20](v2);
  v113 = &v70 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3288);
  v111 = *(v4 - 8);
  v112 = v4;
  MEMORY[0x28223BE20](v4);
  v110 = &v70 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3278);
  v108 = *(v6 - 8);
  v109 = v6;
  MEMORY[0x28223BE20](v6);
  v107 = &v70 - v7;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3268);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v70 - v8;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC32E8);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v70 - v9;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3260);
  v10 = MEMORY[0x28223BE20](v100);
  v99 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v98 = &v70 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3250);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v70 - v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3248);
  v14 = MEMORY[0x28223BE20](v94);
  v93 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v92 = &v70 - v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3238);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v70 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05B8);
  v18 = MEMORY[0x28223BE20](v88);
  v87 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v86 = &v70 - v20;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC32E0);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v70 - v21;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3220);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v70 - v22;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3210);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v70 - v23;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31F8);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v25 = &v70 - v24;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31E8);
  v26 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v28 = &v70 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  v81 = v29;
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v70 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31E0);
  LOBYTE(v116[0]) = 0;
  *(v0 + 16) = sub_24406DE98(v116);
  v33 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__identityUIIsPresented;
  LOBYTE(v116[0]) = 0;
  sub_2440D1300();
  v34 = *(v30 + 32);
  v34(v1 + v33, v32, v29);
  v35 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__dismissViewController;
  LOBYTE(v116[0]) = 0;
  sub_2440D1300();
  v80 = v34;
  v34(v1 + v35, v32, v29);
  v82 = v30 + 32;
  v36 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__disableSleep;
  LOBYTE(v116[0]) = 0;
  sub_2440D1300();
  v34(v1 + v36, v32, v29);
  v37 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__screenState;
  LOBYTE(v116[0]) = 1;
  sub_2440D1300();
  (*(v26 + 32))(v1 + v37, v28, v71);
  v38 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__particlesState;
  LOBYTE(v116[0]) = 1;
  sub_2440D1300();
  (*(v72 + 32))(v1 + v38, v25, v73);
  v39 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__particlesPendingState;
  LOBYTE(v116[0]) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3208);
  v40 = v74;
  sub_2440D1300();
  (*(v75 + 32))(v1 + v39, v40, v76);
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_delayParticlesSet) = 0;
  v41 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__readerStateModel;
  sub_2440BD1F4(0x535F535554415453, 0xEF474E4954524154, 0, 0, 0, 2, v116);
  v42 = v77;
  sub_2440D1300();
  (*(v78 + 32))(v1 + v41, v42, v79);
  v43 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__identityInformation;
  *&v116[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3230);
  v44 = v83;
  sub_2440D1300();
  (*(v84 + 32))(v1 + v43, v44, v85);
  v45 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__merchantDetails;
  v46 = sub_2440D0F20();
  v47 = v86;
  (*(*(v46 - 8) + 56))(v86, 1, 1, v46);
  sub_243F5F574(v47, v87, &qword_27EDC05B8);
  v48 = v89;
  sub_2440D1300();
  sub_243F5EED4(v47, &qword_27EDC05B8);
  (*(v90 + 32))(v1 + v45, v48, v91);
  v49 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__requestType;
  v50 = sub_2440D0F40();
  v51 = v92;
  (*(*(v50 - 8) + 56))(v92, 1, 1, v50);
  sub_243F5F574(v51, v93, &qword_27EDC3248);
  v52 = v95;
  sub_2440D1300();
  sub_243F5EED4(v51, &qword_27EDC3248);
  (*(v96 + 32))(v1 + v49, v52, v97);
  v53 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__requestValidationMode;
  v54 = sub_2440D0F60();
  v55 = v98;
  (*(*(v54 - 8) + 56))(v98, 1, 1, v54);
  sub_243F5F574(v55, v99, &qword_27EDC3260);
  v56 = v101;
  sub_2440D1300();
  sub_243F5EED4(v55, &qword_27EDC3260);
  (*(v102 + 32))(v1 + v53, v56, v103);
  v57 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__bottomError;
  memset(v116, 0, sizeof(v116));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF68);
  v58 = v104;
  sub_2440D1300();
  (*(v105 + 32))(v1 + v57, v58, v106);
  v59 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__scanQRCodeFlag;
  LOBYTE(v116[0]) = 0;
  sub_2440D1300();
  v80(v1 + v59, v32, v81);
  v60 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__qrCodeScanningState;
  LOBYTE(v116[0]) = 2;
  v61 = v107;
  sub_2440D1300();
  (*(v108 + 32))(v1 + v60, v61, v109);
  v62 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__platterSize;
  v116[0] = *sub_24407115C();
  type metadata accessor for CGSize(0);
  v63 = v110;
  sub_2440D1300();
  (*(v111 + 32))(v1 + v62, v63, v112);
  v64 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__requestedDocument;
  v116[0] = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC06A0);
  v65 = v113;
  sub_2440D1300();
  (*(v114 + 32))(v1 + v64, v65, v115);
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy) = 0;
  v66 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_audioManager;
  type metadata accessor for AnnounceManager();
  *(v1 + v66) = sub_243FB304C();
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_connection) = 0;
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_requestRestartOperation) = 0;
  v67 = (v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_lastScannedQRCode);
  *v67 = 0;
  v67[1] = 0;
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_isDifferentQRCode) = 2;
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_processingQRRequest) = 0;
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimer) = 0;
  v68 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimeout;
  *(v1 + v68) = sub_2440D1130();
  return v1;
}

uint64_t sub_24400D444@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for IdentityViewModel();
  result = sub_2440D12F0();
  *a1 = result;
  return result;
}

uint64_t sub_24400D484(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_243F4E22C();
  sub_243F5F574(v10, v9, &qword_27EDC0A50);
  v11 = sub_2440D11E0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_243F5EED4(v9, &qword_27EDC0A50);
  }

  else
  {
    v13 = sub_2440D11C0();
    v14 = sub_2440D3490();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v28 = v15;
      v29 = swift_slowAlloc();
      v30 = v29;
      *v15 = 136446210;
      v16 = sub_2440D0B70();
      v18 = a1;
      v19 = v2;
      v20 = sub_243F4E6F8(v16, v17, &v30);

      v21 = v28;
      *(v28 + 1) = v20;
      v2 = v19;
      a1 = v18;
      v22 = v21;
      _os_log_impl(&dword_243F48000, v13, v14, "Received transaction state update: %{public}s", v21, 0xCu);
      v23 = v29;
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x245D58570](v23, -1, -1);
      MEMORY[0x245D58570](v22, -1, -1);
    }

    (*(v12 + 8))(v9, v11);
  }

  v24 = sub_2440D3390();
  (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v2;
  v25[5] = a1;

  sub_244006AC8(0, 0, v6, &unk_2440DF780, v25);
}

uint64_t sub_24400D784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_24400D7A8, 0, 0);
}

uint64_t sub_24400D7A8()
{
  sub_2440D3360();
  *(v0 + 48) = sub_2440D3350();
  v2 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_24400D83C, v2, v1);
}

uint64_t sub_24400D83C()
{
  v1 = v0[5];
  v2 = v0[4];

  v3 = *(v2 + 16);
  v0[7] = v3;
  v0[2] = v1;
  v4 = *v3;
  v0[8] = *(*v3 + 272);
  v0[9] = (v4 + 272) & 0xFFFFFFFFFFFFLL | 0x859B000000000000;

  return MEMORY[0x2822009F8](sub_24400D8F4, v3, 0);
}

uint64_t sub_24400D8F4()
{
  *(v0 + 80) = (*(v0 + 64))(v0 + 16) & 1;

  return MEMORY[0x2822009F8](sub_24400D974, 0, 0);
}

uint64_t sub_24400D9D8(void *a1)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_2440D2C80();
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2440D2CA0();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_243F4E22C();
  sub_243F5F574(v12, v11, &qword_27EDC0A50);
  v13 = sub_2440D11E0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_243F5EED4(v11, &qword_27EDC0A50);
  }

  else
  {
    v24 = v8;
    v15 = sub_243F4E2F4();
    v16 = sub_243F4E2FC();
    v8 = v24;
    sub_243F4E308(v15 & 1, v2, 0xD00000000000001ELL, 0x80000002440EC0E0, v16, v17);

    (*(v14 + 8))(v11, v13);
  }

  sub_243F5DB84();
  v18 = sub_2440D3530();
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 16) = v2;
  *(v19 + 24) = v20;
  aBlock[4] = sub_244010194;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_129;
  v21 = _Block_copy(aBlock);

  v22 = v20;
  sub_2440D2C90();
  v29 = MEMORY[0x277D84F90];
  sub_244010F50(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  sub_2440D3710();
  MEMORY[0x245D57440](0, v8, v5, v21);
  _Block_release(v21);

  (*(v26 + 8))(v5, v3);
  (*(v27 + 8))(v8, v28);
}

uint64_t sub_24400DE58()
{
  v1 = sub_2440D2C80();
  v12 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2440D2CA0();
  v4 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243F5DB84();
  v7 = sub_2440D3530();
  aBlock[4] = sub_24401021C;
  v15 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_132;
  v8 = _Block_copy(aBlock);

  sub_2440D2C90();
  v13 = MEMORY[0x277D84F90];
  sub_244010F50(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  sub_2440D3710();
  MEMORY[0x245D57440](0, v6, v3, v8);
  _Block_release(v8);

  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_24400E164()
{
  v1 = v0;
  v2 = sub_2440D2CD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v35[-v10];
  v42 = sub_243F4E22C();
  sub_243F5F574(v42, v11, &qword_27EDC0A50);
  v12 = sub_2440D11E0();
  v13 = *(v12 - 8);
  v41 = *(v13 + 48);
  if (v41(v11, 1, v12) == 1)
  {
    v14 = sub_243F5EED4(v11, &qword_27EDC0A50);
  }

  else
  {
    v39 = v5;
    v40 = v3;

    v15 = sub_2440D11C0();
    v16 = sub_2440D3490();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v38 = v2;
      v18 = v17;
      v37 = swift_slowAlloc();
      v44 = v37;
      *v18 = 136315138;
      v19 = *(*v1 + 1328);
      v36 = v16;
      v43 = v19();
      v20 = sub_2440D3040();
      v22 = v13;
      v23 = v9;
      v24 = sub_243F4E6F8(v20, v21, &v44);

      *(v18 + 4) = v24;
      v9 = v23;
      v13 = v22;
      _os_log_impl(&dword_243F48000, v15, v36, "Handling button click for validation mode: [ %s ]", v18, 0xCu);
      v25 = v37;
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x245D58570](v25, -1, -1);
      v26 = v18;
      v2 = v38;
      MEMORY[0x245D58570](v26, -1, -1);
    }

    v14 = (*(v13 + 8))(v11, v12);
    v5 = v39;
    v3 = v40;
  }

  v27 = (*(*v1 + 1328))(v14);
  if (v27 > 1)
  {
    if (v27 == 2)
    {
      sub_243F5F574(v42, v9, &qword_27EDC0A50);
      if (v41(v9, 1, v12) == 1)
      {
        v28 = sub_243F5EED4(v9, &qword_27EDC0A50);
      }

      else
      {
        v31 = v13;
        v32 = sub_2440D11C0();
        v33 = sub_2440D3470();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          MEMORY[0x245D58570](v34, -1, -1);
        }

        v28 = (*(v31 + 8))(v9, v12);
      }
    }

    else
    {
      v28 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
      if (v28)
      {
        v28 = [v28 notifyUIButtonTapWithButton_];
      }
    }

    return (*(*v1 + 1472))(v28);
  }

  if (!v27)
  {
    v28 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
    if (v28)
    {
      v28 = [v28 notifyUIButtonTapWithButton_];
    }

    return (*(*v1 + 1472))(v28);
  }

  v29 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
  if (v29)
  {
    [v29 notifyUIButtonTapWithButton_];
  }

  sub_2440D2CC0();
  sub_2440086E4(v5, 1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24400E6B4(char a1)
{
  v3 = *v1;
  v4 = *(v3 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
  if (v4)
  {
    if (a1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }

    v4 = [v4 notifyUIButtonTapWithButton_];
  }

  return (*(*v3 + 1472))(v4);
}

uint64_t sub_24400E72C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  *a1 = v3;
  return result;
}

uint64_t sub_24400E7AC(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_2440D1350();
}

uint64_t sub_24400E824()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();
}

uint64_t sub_24400E8A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3260);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_243F5F574(a1, &v9 - v6, &qword_27EDC3260);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243F5F574(v7, v5, &qword_27EDC3260);

  sub_2440D1350();
  return sub_243F5EED4(v7, &qword_27EDC3260);
}

uint64_t sub_24400E9D0()
{
  v1 = sub_2440D0EE0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24400EAA0()
{
  v1 = *(sub_2440D0EE0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_244004450(v3, v0 + v2, v4);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_24400EB48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24400EC64()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_24400ECA4()
{
  result = qword_27EDC32D8;
  if (!qword_27EDC32D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC32D8);
  }

  return result;
}

uint64_t sub_24400ECF8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_243F5F610;

  return sub_244007468(v3, v4, v5, v6, v2);
}

uint64_t sub_24400EDA0()
{
  sub_2440D2BA0();
  sub_2440D16E0();
}

uint64_t sub_24400EE18()
{

  return swift_deallocObject();
}

uint64_t sub_24400EE5C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    (*(*result + 1520))(1);
    swift_getKeyPath();
    swift_getKeyPath();
    memset(v2, 0, sizeof(v2));

    sub_2440D1350();
    sub_2440BD1F4(0x535F535554415453, 0xEF474E4954524154, 0, 0, 0, 2, v2);
    (*(*v1 + 640))(v2);
    (*(*v1 + 424))(1);
  }

  return result;
}

uint64_t sub_24400EFE0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    (*(*result + 1520))(14);
    v2 = (*(*v1 + 424))(0);
    (*(*v1 + 1472))(v2);
  }

  return result;
}

uint64_t sub_24400F0C8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    (*(*result + 1520))(15);
    v2 = (*(*v1 + 1456))(4);
    (*(*v1 + 1472))(v2);
    (*(*v1 + 424))(0);
  }

  return result;
}

uint64_t sub_24400F1F4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_2440BD1F4(0xD000000000000020, 0x80000002440EC3B0, 0, 0, 0, 1, v2);
    (*(*v1 + 640))(v2);
    (*(*v1 + 1520))(2);
    (*(*v1 + 424))(1);
    (*(*v1 + 1456))(1);
  }

  return result;
}

void sub_24400F364()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*(*Strong + 464))();
    sub_243FBC5F4();
    sub_2440D31F0();
    sub_2440D31F0();
    if (v9[0] == v7 && v9[1] == v8)
    {

      v2 = 4;
    }

    else
    {
      v3 = sub_2440D3A10();

      if (v3)
      {
        v2 = 4;
      }

      else
      {
        v2 = 3;
      }
    }

    *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_processingQRRequest) = 0;
    (*(*v1 + 1520))(3);
    sub_2440BD1F4(0, 0, 0, 0, 0, 2, v9);
    (*(*v1 + 640))(v9);
    v4 = *(**(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_audioManager) + 272);

    v4(12, 0);

    (*(*v1 + 1456))(v2);
    sub_2440579C8(0, 0xD000000000000027);
    if (UIAccessibilityIsVoiceOverRunning())
    {
      v5 = *MEMORY[0x277D76438];
      v6 = sub_244057FBC(0);

      UIAccessibilityPostNotification(v5, v6);
    }

    else
    {
    }
  }
}

uint64_t sub_24400F64C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    (*(*result + 1520))(7);
    sub_2440BD1F4(0, 0, 0, 0, 0, 2, v2);
    (*(*v1 + 640))(v2);
    (*(*v1 + 1456))(0);
  }

  return result;
}

uint64_t sub_24400F764()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
    if (v2)
    {
      [v2 notifyUIButtonTapWithButton_];
    }

    (*(*v1 + 1520))(4);
    sub_2440BD1F4(0, 0, 0, 0, 0, 2, v3);
    (*(*v1 + 640))(v3);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_2440D1350();
  }

  return result;
}

uint64_t sub_24400F898()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    (*(*result + 1520))(5);
    if (*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_processingQRRequest) == 1)
    {
      *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_processingQRRequest) = 0;
      v2 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
      if (v2)
      {
        v3 = &selRef_requestCancelReadWithIsEngagementTransition_;
LABEL_7:
        [v2 *v3];
      }
    }

    else
    {
      v2 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
      if (v2)
      {
        v3 = &selRef_requestRestartReadWithTriggeredByMultipleCheck_;
        goto LABEL_7;
      }
    }
  }

  return result;
}

void sub_24400F96C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_processingQRRequest) = 0;
    v1 = *(Strong + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_isDifferentQRCode);
    if (v1 != 2 && (v1 & 1) != 0 && (v2 = Strong, swift_getKeyPath(), swift_getKeyPath(), , sub_2440D1350(), v3 = *(**(v2 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_audioManager) + 272), , v3(8, 0), , (v4 = *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy)) != 0))
    {
      swift_unknownObjectRetain();
      sub_2440D10B0();
      v5 = sub_2440D2F80();

      [v4 qrCodeScanErrorWithError_];
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_24400FAEC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_processingQRRequest) = 0;
    v1 = result;
    (*(*result + 1416))();
    v2 = (*(*v1 + 1528))(7);
    v2();
  }

  return result;
}

uint64_t sub_24400FBD4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_244008D30();
    (*(*v1 + 1520))(4);
    sub_2440BD1F4(0xD000000000000012, 0x80000002440EB380, 0, 0, 0, 2, v2);
    (*(*v1 + 640))(v2);
  }

  return result;
}

uint64_t sub_24400FCC4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_2440BD1F4(0xD00000000000001CLL, 0x80000002440EC390, 0, 0, 0, 2, v2);
    (*(*v1 + 640))(v2);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_2440D1350();
    (*(*v1 + 520))(4);
    (*(*v1 + 1520))(6);
    (*(*v1 + 424))(1);
  }

  return result;
}

uint64_t sub_24400FE88()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24400FF38()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_243F5F610;

  return sub_24400ACC0(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_2440100A8(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_243F5DE2C;

  return sub_24400D784(a1, v6, v7, v5, v4);
}

uint64_t sub_244010154()
{

  return swift_deallocObject();
}

id sub_244010194()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  sub_2440D1350();
  return [v1 updateUIState_];
}

unint64_t sub_24401024C()
{
  result = qword_27EDC32F0;
  if (!qword_27EDC32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC32F0);
  }

  return result;
}

unint64_t sub_2440102A4()
{
  result = qword_27EDC32F8;
  if (!qword_27EDC32F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC32F8);
  }

  return result;
}

unint64_t sub_2440102FC()
{
  result = qword_27EDC3300;
  if (!qword_27EDC3300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3300);
  }

  return result;
}

uint64_t type metadata accessor for IdentityViewModel()
{
  result = qword_27EDCE1A0;
  if (!qword_27EDCE1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2440103A4()
{
  sub_2440108C0(319, &qword_27EDBFF90, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    sub_2440108C0(319, &qword_27EDC3308, &type metadata for IdentityUIState, MEMORY[0x277CBCED0]);
    if (v1 <= 0x3F)
    {
      sub_2440108C0(319, &qword_27EDC3310, &type metadata for ParticlesState, MEMORY[0x277CBCED0]);
      if (v2 <= 0x3F)
      {
        sub_244010968(319, &qword_27EDC3318, &qword_27EDC3208);
        if (v3 <= 0x3F)
        {
          sub_2440108C0(319, &qword_27EDC3320, &type metadata for ReaderStateModel, MEMORY[0x277CBCED0]);
          if (v4 <= 0x3F)
          {
            sub_244010968(319, &qword_27EDC3328, &qword_27EDC3230);
            if (v5 <= 0x3F)
            {
              sub_244010968(319, &qword_27EDC3330, &qword_27EDC05B8);
              if (v6 <= 0x3F)
              {
                sub_244010968(319, &qword_27EDC3338, &qword_27EDC3248);
                if (v7 <= 0x3F)
                {
                  sub_244010968(319, &qword_27EDC3340, &qword_27EDC3260);
                  if (v8 <= 0x3F)
                  {
                    sub_244010968(319, &qword_27EDC3348, &qword_27EDBFF68);
                    if (v9 <= 0x3F)
                    {
                      sub_2440108C0(319, &qword_27EDC3350, &type metadata for IdentityViewModel.QRCodeScanningState, MEMORY[0x277CBCED0]);
                      if (v10 <= 0x3F)
                      {
                        sub_244010910();
                        if (v11 <= 0x3F)
                        {
                          sub_244010968(319, &qword_27EDC3360, &qword_27EDC06A0);
                          if (v12 <= 0x3F)
                          {
                            swift_updateClassMetadata2();
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
      }
    }
  }
}

void sub_2440108C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_244010910()
{
  if (!qword_27EDC3358)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_2440D1360();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC3358);
    }
  }
}

void sub_244010968(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_2440D1360();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for IdentityViewModel.QRCodeScanningState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IdentityViewModel.QRCodeScanningState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_244010B40()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_244010B80()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_requestRestartOperation) = 0;
  }

  return [v1 requestRestartReadWithTriggeredByMultipleCheck_];
}

uint64_t sub_244010C04()
{

  return swift_deallocObject();
}

uint64_t sub_244010C3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243F5F610;

  return sub_243F5CE34(a1, v4);
}

uint64_t sub_244010CF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243F5DE2C;

  return sub_243F5CE34(a1, v4);
}

void sub_244010DB4()
{
  (*(v0 + 16))();
  v1 = *MEMORY[0x277D764D8];

  UIAccessibilityPostNotification(v1, 0);
}

uint64_t sub_244010DFC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 1472))(result);
  }

  return result;
}

void *sub_244010E78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [result updateUIState_];
  }

  return result;
}

uint64_t sub_244010F50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_88Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_244010FEC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_244006980(v3, v4, v5, v2);
}

uint64_t sub_244011080(uint64_t a1)
{
  v2 = sub_2440D0F40();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D43A30])
  {
    goto LABEL_2;
  }

  if (v6 == *MEMORY[0x277D43A38])
  {
    v7 = 0xD000000000000017;
    return sub_2440579C8(0, v7);
  }

  if (v6 == *MEMORY[0x277D43A10])
  {
LABEL_2:
    v7 = 0xD000000000000016;
    return sub_2440579C8(0, v7);
  }

  if (v6 == *MEMORY[0x277D43A18])
  {
    v7 = 0xD000000000000027;
    return sub_2440579C8(0, v7);
  }

  if (v6 == *MEMORY[0x277D43A20] || v6 == *MEMORY[0x277D43A40] || v6 == *MEMORY[0x277D43A28])
  {
    v7 = 0xD00000000000001BLL;
    return sub_2440579C8(0, v7);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_2440112E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_243F5F574(a1 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_text, a4, &qword_27EDC3390);
  v8 = *(a1 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image);
  v9 = *(a1 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image + 8);
  v10 = *(a1 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image + 16);
  v11 = *(a1 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image + 24);
  v12 = *(a1 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image + 32);
  v13 = *(a1 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image + 40);
  sub_2440113AC(v8, v9);

  *(a4 + 56) = v8;
  *(a4 + 64) = v9;
  *(a4 + 72) = v10;
  *(a4 + 80) = v11;
  *(a4 + 88) = v12;
  *(a4 + 96) = v13;
  *(a4 + 104) = a2;
  *(a4 + 105) = a3;
  return result;
}

uint64_t sub_2440113AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 sub_2440113F0@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v38 = sub_2440D2C60();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2440D2A70();
  v4 = *(v30 - 8);
  v5 = MEMORY[0x28223BE20](v30);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v32 = sub_2440D2AC0();
  v31 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3398);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC33A0);
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v30 - v15;
  v40 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC33A8);
  sub_244011CFC();
  sub_2440D2870();
  v16 = *(v2 + 104);
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3408) + 36)];
  *v19 = KeyPath;
  v19[1] = sub_243FF6164;
  v19[2] = v18;
  v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3410) + 36)] = 0;
  *&v14[*(v12 + 36)] = 256;
  if (*(v2 + 105) == 1)
  {
    sub_2440D2A60();
    sub_2440D2A50();
    v20 = v7;
    v21 = v30;
    (*(v4 + 8))(v20, v30);
  }

  else
  {
    sub_2440D2A60();
    v21 = v30;
  }

  sub_2440D2A90();
  (*(v4 + 8))(v9, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC07B8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2440D5CF0;
  sub_243FB9B80();
  *(v22 + 32) = sub_2440D29F0();
  v23 = v34;
  sub_2440D2C50();
  sub_244014438(&qword_27EDC3418, &qword_27EDC3398, &unk_2440DFA58, sub_2440144E8);
  v24 = v33;
  sub_2440D2400();
  (*(v37 + 8))(v23, v38);
  (*(v31 + 8))(v11, v32);
  sub_243F5EED4(v14, &qword_27EDC3398);
  sub_244070B04();
  sub_244070B04();
  sub_2440D2B00();
  sub_2440D18E0();
  v25 = v39;
  (*(v35 + 32))(v39, v24, v36);
  v26 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3440) + 36);
  v27 = v46;
  *(v26 + 64) = v45;
  *(v26 + 80) = v27;
  *(v26 + 96) = v47;
  v28 = v42;
  *v26 = v41;
  *(v26 + 16) = v28;
  result = v44;
  *(v26 + 32) = v43;
  *(v26 + 48) = result;
  return result;
}

void *sub_244011A64@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_243F5F574(v3, &v11, &qword_27EDC3390);
  if (*&v12[8])
  {
    v8[0] = v11;
    v8[1] = *v12;
    v8[2] = *&v12[16];
    *&v8[3] = v13;
    sub_244011F7C(v8, __src);
    sub_244015264(__src);
    memcpy(__dst, __src, 0x141uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC33D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC33F0);
    sub_244011E0C();
    sub_244011EC4();
    sub_2440D1D20();
    sub_2440151CC(v8);
  }

  else
  {
    sub_243F5EED4(&v11, &qword_27EDC3390);
    v4 = *(v3 + 64);
    if (!v4)
    {
      sub_244015220(v14);
      return memcpy(a1, v14, 0x141uLL);
    }

    v5 = *(v3 + 96);
    v6 = *(v3 + 72);
    *&v11 = *(v3 + 56);
    *(&v11 + 1) = v4;
    *v12 = v6;
    *&v12[8] = *(v3 + 80);
    *&v12[24] = v5;

    sub_244012250(&v11, v8);
    memcpy(__src, v8, 0x138uLL);
    sub_244015258(__src);
    memcpy(__dst, __src, 0x141uLL);
    sub_243F5F574(v8, v14, &qword_27EDC33F0);
    sub_243F5F574(v8, v14, &qword_27EDC33F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC33D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC33F0);
    sub_244011E0C();
    sub_244011EC4();
    sub_2440D1D20();

    sub_243F5EED4(v8, &qword_27EDC33F0);
    sub_243F5EED4(v8, &qword_27EDC33F0);
  }

  memcpy(__dst, v14, 0x141uLL);
  nullsub_1(__dst);
  memcpy(v14, __dst, 0x141uLL);
  return memcpy(a1, v14, 0x141uLL);
}

unint64_t sub_244011CFC()
{
  result = qword_27EDC33B0;
  if (!qword_27EDC33B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC33A8);
    sub_244011D80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC33B0);
  }

  return result;
}

unint64_t sub_244011D80()
{
  result = qword_27EDC33B8;
  if (!qword_27EDC33B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC33C0);
    sub_244011E0C();
    sub_244011EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC33B8);
  }

  return result;
}

unint64_t sub_244011E0C()
{
  result = qword_27EDC33C8;
  if (!qword_27EDC33C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC33D0);
    sub_243F5DD50(&qword_27EDC33D8, &qword_27EDC33E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC33C8);
  }

  return result;
}

unint64_t sub_244011EC4()
{
  result = qword_27EDC33E8;
  if (!qword_27EDC33E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC33F0);
    sub_243F5DD50(&qword_27EDC33F8, &qword_27EDC3400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC33E8);
  }

  return result;
}

double sub_244011F7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2440D1C20();
  v30 = 0;
  sub_24401249C(a1, v3, &v17);
  v40 = v25;
  v41 = v26;
  v42 = v27;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v44[8] = v25;
  v44[9] = v26;
  v44[10] = v27;
  v44[4] = v21;
  v44[5] = v22;
  v44[6] = v23;
  v44[7] = v24;
  v44[0] = v17;
  v44[1] = v18;
  v43 = v28;
  v45 = v28;
  v44[2] = v19;
  v44[3] = v20;
  sub_243F5F574(&v32, v16, &qword_27EDC3448);
  sub_243F5EED4(v44, &qword_27EDC3448);
  *&v29[135] = v40;
  *&v29[151] = v41;
  *&v29[167] = v42;
  *&v29[71] = v36;
  *&v29[87] = v37;
  *&v29[103] = v38;
  *&v29[119] = v39;
  *&v29[7] = v32;
  *&v29[23] = v33;
  *&v29[39] = v34;
  v29[183] = v43;
  *&v29[55] = v35;
  LOBYTE(v3) = v30;
  sub_2440D2B00();
  sub_2440D18E0();
  *&v31[55] = v20;
  *&v31[71] = v21;
  *&v31[87] = v22;
  *&v31[103] = v23;
  *&v31[7] = v17;
  *&v31[23] = v18;
  *&v31[39] = v19;
  v7 = *&v29[144];
  *(a2 + 145) = *&v29[128];
  *(a2 + 161) = v7;
  *(a2 + 177) = *&v29[160];
  v8 = *&v29[80];
  *(a2 + 81) = *&v29[64];
  *(a2 + 97) = v8;
  v9 = *&v29[112];
  *(a2 + 113) = *&v29[96];
  *(a2 + 129) = v9;
  v10 = *&v29[16];
  *(a2 + 17) = *v29;
  *(a2 + 33) = v10;
  v11 = *&v29[48];
  *(a2 + 49) = *&v29[32];
  *(a2 + 65) = v11;
  v12 = *&v31[80];
  *(a2 + 265) = *&v31[64];
  *(a2 + 281) = v12;
  *(a2 + 297) = *&v31[96];
  v13 = *&v31[16];
  *(a2 + 201) = *v31;
  *(a2 + 217) = v13;
  result = *&v31[32];
  v15 = *&v31[48];
  *(a2 + 233) = *&v31[32];
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
  *(a2 + 193) = *&v29[176];
  *(a2 + 312) = *&v31[111];
  *(a2 + 249) = v15;
  return result;
}

double sub_244012250@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2440D1C20();
  v28 = 1;
  sub_244012BB0(a1, v3, &v17);
  v38 = v25;
  v39[0] = v26[0];
  *(v39 + 9) = *(v26 + 9);
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v40[8] = v25;
  v41[0] = v26[0];
  *(v41 + 9) = *(v26 + 9);
  v40[4] = v21;
  v40[5] = v22;
  v40[6] = v23;
  v40[7] = v24;
  v40[0] = v17;
  v40[1] = v18;
  v40[2] = v19;
  v40[3] = v20;
  sub_243F5F574(&v30, v16, &qword_27EDC3450);
  sub_243F5EED4(v40, &qword_27EDC3450);
  *&v27[119] = v37;
  *&v27[135] = v38;
  *&v27[151] = v39[0];
  *&v27[160] = *(v39 + 9);
  *&v27[55] = v33;
  *&v27[71] = v34;
  *&v27[87] = v35;
  *&v27[103] = v36;
  *&v27[7] = v30;
  *&v27[23] = v31;
  *&v27[39] = v32;
  LOBYTE(v3) = v28;
  sub_2440D2B00();
  sub_2440D18E0();
  *&v29[55] = v20;
  *&v29[71] = v21;
  *&v29[87] = v22;
  *&v29[103] = v23;
  *&v29[7] = v17;
  *&v29[23] = v18;
  *&v29[39] = v19;
  v7 = *&v27[96];
  *(a2 + 129) = *&v27[112];
  v8 = *&v27[144];
  *(a2 + 145) = *&v27[128];
  *(a2 + 161) = v8;
  *(a2 + 177) = *&v27[160];
  v9 = *&v27[32];
  *(a2 + 65) = *&v27[48];
  v10 = *&v27[80];
  *(a2 + 81) = *&v27[64];
  *(a2 + 97) = v10;
  *(a2 + 113) = v7;
  v11 = *&v27[16];
  *(a2 + 17) = *v27;
  *(a2 + 33) = v11;
  *(a2 + 49) = v9;
  v12 = *&v29[80];
  *(a2 + 257) = *&v29[64];
  *(a2 + 273) = v12;
  *(a2 + 289) = *&v29[96];
  v13 = *&v29[16];
  *(a2 + 193) = *v29;
  *(a2 + 209) = v13;
  result = *&v29[32];
  v15 = *&v29[48];
  *(a2 + 225) = *&v29[32];
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
  *(a2 + 304) = *&v29[111];
  *(a2 + 241) = v15;
  return result;
}

uint64_t sub_24401249C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1B60);
  MEMORY[0x28223BE20](v5 - 8);
  v93 = &v79 - v6;
  sub_244052CA8();
  if (v7)
  {

    v91 = 0x4008000000000000;
    v92 = 0xC000000000000000;
  }

  else
  {
    v91 = 0;
    v92 = 0;
  }

  sub_244052C4C();
  v84 = *(a2 + 104);
  v85 = a1;
  if (v84 == 1)
  {
    sub_2440D2670();
    sub_2440D26B0();
  }

  else
  {
    sub_243FFAD00();
  }

  v8 = sub_2440D22C0();
  v10 = v9;
  v12 = v11;

  v83 = sub_243FFAD00();
  v125[0] = *v83;

  v13 = sub_2440D22D0();
  v15 = v14;
  v17 = v16;
  sub_243F62C68(v8, v10, v12 & 1);

  sub_24407118C();
  sub_2440D21B0();
  v18 = sub_2440D2170();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v21 = v93;
  v82 = v19 + 56;
  v20(v93, 1, 1, v18);
  sub_2440D21C0();
  sub_243F5EED4(v21, &qword_27EDC1B60);
  v22 = sub_2440D22E0();
  v87 = v23;
  v88 = v22;
  v25 = v24;
  v89 = v26;

  sub_243F62C68(v13, v15, v17 & 1);

  v86 = sub_2440D20B0();
  v94 = v25 & 1;
  v130 = v25 & 1;
  v127 = 0;
  sub_244052CA8();
  if (v27)
  {
    v80 = v20;
    v81 = v18;
    if (v84)
    {
      sub_2440D2670();
      sub_2440D26B0();

      v28 = v83;
    }

    else
    {
      v28 = v83;
    }

    v40 = sub_2440D22C0();
    v42 = v41;
    v44 = v43;

    v125[0] = *v28;

    v45 = sub_2440D22D0();
    v47 = v46;
    v49 = v48;
    sub_243F62C68(v40, v42, v44 & 1);

    sub_24407122C();
    sub_2440D21B0();
    v50 = v93;
    v80(v93, 1, 1, v81);
    sub_2440D21C0();
    sub_243F5EED4(v50, &qword_27EDC1B60);
    v51 = sub_2440D22E0();
    v53 = v52;
    LOBYTE(v42) = v54;

    sub_243F62C68(v45, v47, v49 & 1);

    v55 = sub_2440D22F0();
    v57 = v56;
    LOBYTE(v47) = v58;
    v31 = v59;
    sub_243F62C68(v51, v53, v42 & 1);

    KeyPath = swift_getKeyPath();
    v61 = sub_2440D20D0();
    sub_2440D13D0();
    v32 = KeyPath;
    v30 = v57;
    v29 = v55;
    LOBYTE(v125[0]) = v47 & 1;
    LOBYTE(v120) = 0;
    v35 = v47 & 1;
    v34 = v61;
    v33 = 0x3FD999999999999ALL;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
  }

  v62 = v87;
  v63 = v88;
  *&v114 = v88;
  *(&v114 + 1) = v87;
  LOBYTE(v115) = v94;
  *(&v115 + 1) = *v129;
  DWORD1(v115) = *&v129[3];
  v64 = v89;
  *(&v115 + 1) = v89;
  v65 = v86;
  LOBYTE(v116) = v86;
  *(&v116 + 1) = *v128;
  DWORD1(v116) = *&v128[3];
  v67 = v91;
  v66 = v92;
  *(&v116 + 1) = v91;
  *&v117 = 0;
  *(&v117 + 1) = v92;
  *&v118 = 0;
  BYTE8(v118) = 0;
  *(&v118 + 9) = v131[0];
  HIDWORD(v118) = *(v131 + 3);
  v119 = 0x3FF0000000000000;
  v108 = v114;
  v109 = v115;
  *v113 = 0x3FF0000000000000;
  v111 = v117;
  v112 = v118;
  v110 = v116;
  *&v120 = v29;
  *(&v120 + 1) = v30;
  *&v121 = v35;
  *(&v121 + 1) = v31;
  *&v122 = v32;
  *(&v122 + 1) = v33;
  *&v123 = v34;
  *(&v123 + 1) = v36;
  *&v124[0] = v37;
  *(&v124[0] + 1) = v38;
  *&v124[1] = v39;
  BYTE8(v124[1]) = 0;
  *&v113[24] = v121;
  *&v113[8] = v120;
  *&v113[81] = *(v124 + 9);
  *&v113[72] = v124[0];
  *&v113[56] = v123;
  *&v113[40] = v122;
  v68 = v114;
  v69 = v115;
  v70 = v117;
  v71 = v90;
  *(v90 + 32) = v116;
  *(v71 + 48) = v70;
  *v71 = v68;
  *(v71 + 16) = v69;
  v72 = v112;
  v73 = *v113;
  v74 = *&v113[32];
  *(v71 + 96) = *&v113[16];
  *(v71 + 112) = v74;
  *(v71 + 64) = v72;
  *(v71 + 80) = v73;
  v75 = *&v113[48];
  v76 = *&v113[64];
  v77 = *&v113[80];
  *(v71 + 176) = v113[96];
  *(v71 + 144) = v76;
  *(v71 + 160) = v77;
  *(v71 + 128) = v75;
  v125[0] = v29;
  v125[1] = v30;
  v125[2] = v35;
  v125[3] = v31;
  v125[4] = v32;
  v125[5] = v33;
  v125[6] = v34;
  v125[7] = v36;
  v125[8] = v37;
  v125[9] = v38;
  v125[10] = v39;
  v126 = 0;
  sub_243F5F574(&v114, v95, &qword_27EDC3508);
  sub_243F5F574(&v120, v95, &qword_27EDC3510);
  sub_243F5EED4(v125, &qword_27EDC3510);
  v95[0] = v63;
  v95[1] = v62;
  v96 = v94;
  *v97 = *v129;
  *&v97[3] = *&v129[3];
  v98 = v64;
  v99 = v65;
  *v100 = *v128;
  *&v100[3] = *&v128[3];
  v101 = v67;
  v102 = 0;
  v103 = v66;
  v104 = 0;
  v105 = 0;
  *&v106[3] = *(v131 + 3);
  *v106 = v131[0];
  v107 = 0x3FF0000000000000;
  return sub_243F5EED4(v95, &qword_27EDC3508);
}

uint64_t sub_244012BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1B60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36[-v7];

  v9 = sub_2440D2760();
  v10 = *(a1 + 24);
  sub_2440D2C40();
  v12 = v11;
  v14 = v13;
  sub_2440711DC();
  v15 = sub_2440D2170();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = sub_2440D21C0();
  sub_243F5EED4(v8, &qword_27EDC1B60);
  KeyPath = swift_getKeyPath();
  if (*(a2 + 104) == 1)
  {
    sub_2440D2670();
    v18 = sub_2440D26B0();
  }

  else
  {
    v18 = *(a1 + 16);
  }

  v19 = swift_getKeyPath();
  v20 = *(a1 + 16);

  v21 = sub_2440D20E0();
  sub_2440D13D0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v36[0] = 0;
  v30 = sub_2440D2100();
  result = sub_2440D13D0();
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v10;
  *(a3 + 24) = v12;
  *(a3 + 32) = v14;
  *(a3 + 40) = KeyPath;
  *(a3 + 48) = v16;
  *(a3 + 56) = v19;
  *(a3 + 64) = v18;
  *(a3 + 72) = v20;
  *(a3 + 80) = v21;
  *(a3 + 88) = v23;
  *(a3 + 96) = v25;
  *(a3 + 104) = v27;
  *(a3 + 112) = v29;
  *(a3 + 120) = 0;
  *(a3 + 128) = v30;
  *(a3 + 136) = v32;
  *(a3 + 144) = v33;
  *(a3 + 152) = v34;
  *(a3 + 160) = v35;
  *(a3 + 168) = 0;
  return result;
}

uint64_t sub_244012DEC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *a4 = *(a1 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_action);
  *(a4 + 8) = a2;
  *(a4 + 24) = a3;
  swift_unknownObjectWeakAssign();

  v8 = sub_2440D10F0();
  v9 = v8();

  if ((v9 & 1) == 0)
  {
LABEL_9:
    v13 = 0;
LABEL_10:
    v12 = 0xE000000000000000;
    goto LABEL_11;
  }

  v10 = (*(**(a1 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_action) + 88))(v10);
  if ((v10 & 0x100) == 0)
  {
    sub_243F5F574(a1 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_text, &v21, &qword_27EDC3390);
    if (*(&v22 + 1))
    {
      v25[0] = v21;
      v25[1] = v22;
      v25[2] = v23;
      v26 = v24;
      *&v21 = 0;
      *(&v21 + 1) = 0xE000000000000000;
      sub_2440D3830();

      *&v21 = 0xD000000000000010;
      *(&v21 + 1) = 0x80000002440EC7B0;
      v11 = sub_244052C4C();
      MEMORY[0x245D57000](v11);

      v12 = *(&v21 + 1);
      v13 = v21;
      v10 = sub_2440151CC(v25);
      goto LABEL_11;
    }

    v10 = sub_243F5EED4(&v21, &qword_27EDC3390);
    goto LABEL_9;
  }

  if (!v10)
  {
    v13 = v10;
    goto LABEL_10;
  }

  if (v10 == 1)
  {
    v12 = 0x80000002440EC7F0;
    v13 = 0xD000000000000013;
  }

  else
  {
    v12 = 0x80000002440EC7D0;
    v13 = 0xD000000000000011;
  }

LABEL_11:
  *(a4 + 32) = v13;
  *(a4 + 40) = v12;
  v14 = (*(**(a1 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_action) + 88))(v10);
  if ((v14 & 0x100) == 0)
  {
    v15 = 0x505F4E49505F4F56;
LABEL_19:
    v17 = sub_2440579C8(0, v15);
    v18 = v19;
    goto LABEL_20;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      v16 = 5;
    }

    else
    {
      v16 = 10;
    }

    v15 = v16 | 0xD000000000000010;
    goto LABEL_19;
  }

  v17 = v14;
  v18 = 0xE000000000000000;
LABEL_20:

  result = swift_unknownObjectRelease();
  *(a4 + 48) = v17;
  *(a4 + 56) = v18;
  return result;
}

uint64_t sub_2440130C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v54 = sub_2440D1E30();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2440D1BC0();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2440D1F60();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3458);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3460);
  MEMORY[0x28223BE20](v40);
  v11 = &v40 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3468);
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v13 = &v40 - v12;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3470);
  v14 = MEMORY[0x28223BE20](v47);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v40 - v18;
  MEMORY[0x28223BE20](v17);
  v46 = &v40 - v20;
  sub_244014680(v2, v57);
  v21 = swift_allocObject();
  sub_2440146B8(v57, v21 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3478);
  sub_2440147AC();
  sub_2440D2870();
  v22 = *(v2 + 8);
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v25 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3498) + 36)];
  *v25 = KeyPath;
  v25[1] = sub_243FF7220;
  v25[2] = v24;
  v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC34A0) + 36)] = v22 ^ 1;
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC34A8) + 36)] = 256;
  v9[*(v7 + 44)] = 0;
  sub_244070B04();
  sub_244070B04();
  sub_2440D2B00();
  sub_2440D18E0();
  sub_244014864(v9, v11);
  v26 = v40;
  v27 = &v11[*(v40 + 36)];
  v28 = v57[5];
  *(v27 + 4) = v57[4];
  *(v27 + 5) = v28;
  *(v27 + 6) = v57[6];
  v29 = v57[1];
  *v27 = v57[0];
  *(v27 + 1) = v29;
  v30 = v57[3];
  *(v27 + 2) = v57[2];
  *(v27 + 3) = v30;
  v31 = v43;
  sub_2440D1F30();
  v32 = sub_2440148D4();
  sub_2440D2490();
  (*(v44 + 8))(v31, v45);
  sub_243F5EED4(v11, &qword_27EDC3460);
  v33 = v48;
  sub_2440D1BB0();
  v55 = v26;
  v56 = v32;
  swift_getOpaqueTypeConformance2();
  v34 = v42;
  sub_2440D24C0();
  (*(v49 + 8))(v33, v50);
  (*(v41 + 8))(v13, v34);
  v35 = *(v2 + 56);
  v55 = *(v2 + 48);
  v56 = v35;
  sub_243F4EF64();
  sub_2440D17C0();
  sub_244014B58(v16);
  v36 = v46;
  sub_2440D1800();
  sub_244014B58(v19);
  sub_244014680(v2, &v55);
  v37 = swift_allocObject();
  sub_2440146B8(&v55, v37 + 16);
  v38 = v51;
  sub_2440D1E20();
  sub_2440D17E0();

  (*(v53 + 8))(v38, v54);
  return sub_244014B58(v36);
}

__n128 sub_2440138D4@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_2440D1C20();
  sub_2440D2B00();
  sub_2440D18E0();
  *&v4[55] = v8;
  *&v4[71] = v9;
  *&v4[87] = v10;
  *&v4[103] = v11;
  *&v4[7] = v5;
  *&v4[23] = v6;
  *&v4[39] = v7;
  *(a1 + 97) = *&v4[64];
  *(a1 + 113) = *&v4[80];
  *(a1 + 129) = *&v4[96];
  *(a1 + 33) = *v4;
  *(a1 + 49) = *&v4[16];
  result = *&v4[32];
  *(a1 + 65) = *&v4[32];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 144) = *(&v11 + 1);
  *(a1 + 81) = *&v4[48];
  return result;
}

uint64_t sub_244013AB0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2440D2810();
  *(a3 + 24) = a1;
  result = a2(v6);
  *(a3 + 32) = result;
  *a3 = v8;
  *(a3 + 8) = v9;
  return result;
}

uint64_t sub_244013B98@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v4 = a1;
  v30 = a1;
  v33 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3520);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v31 = &v29 - v9;
  v10 = type metadata accessor for StringMasker();
  v11 = sub_243F7EE80();
  v12 = sub_243F7EEA0(v11);
  v34[4] = &off_285774210;
  v34[3] = v10;
  v34[0] = v12;
  sub_244052AEC(51, 0xE100000000000000, 4605252, 0xE300000000000000, v34, v35);
  type metadata accessor for PINButtonModel();
  sub_244015408(v35, v34);
  v13 = sub_2440524AC(0, v34, 0);
  sub_2440151CC(v35);
  v35[0] = v4;
  v36 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  v14 = v34[0];
  sub_243F5F574(v13 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_text, v35, &qword_27EDC3390);
  v15 = *(v13 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image);
  v16 = *(v13 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image + 8);
  v18 = *(v13 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image + 16);
  v17 = *(v13 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image + 24);
  v20 = *(v13 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image + 32);
  v19 = *(v13 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image + 40);
  sub_2440113AC(v15, v16);

  v37 = v15;
  v38 = v16;
  v39 = v18;
  v40 = v17;
  v41 = v20;
  v42 = v19;
  v43 = v14;
  v44 = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  *(v21 + 24) = v29;

  v22 = v31;
  sub_2440D2870();
  sub_244015304(v35, v34);
  v23 = *(v6 + 16);
  v24 = v32;
  v23(v32, v22, v5);
  v25 = v33;
  sub_244015304(v34, v33);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3528);
  v23((v25 + *(v26 + 48)), v24, v5);
  v27 = *(v6 + 8);
  v27(v22, v5);
  sub_24401533C(v35);
  v27(v24, v5);
  return sub_24401533C(v34);
}

uint64_t sub_244013F38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2440D5CF0;
  v1 = sub_2440D3040();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  sub_2440D3B00();
}

uint64_t sub_244013FDC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v30 = a2;
  v4 = a1;
  v31 = a1;
  v35 = a3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3520);
  v5 = *(v34 - 8);
  v6 = MEMORY[0x28223BE20](v34);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v32 = &v29 - v8;
  v9 = *sub_243FFAC60();

  sub_2440D21B0();
  v11 = v10;
  v12 = sub_244052904();
  sub_244052910(0x72616D6B63656863, 0xE90000000000006BLL, v9, v47, v12, v11, 5.0);
  type metadata accessor for PINButtonModel();
  v13 = sub_2440525B0(0, v47, 0);
  v37[0] = v4;
  v38 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  LOBYTE(v3) = v36[0];
  sub_243F5F574(v13 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_text, v37, &qword_27EDC3390);
  v14 = *(v13 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image);
  v15 = *(v13 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image + 8);
  v16 = *(v13 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image + 16);
  v17 = *(v13 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image + 24);
  v19 = *(v13 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image + 32);
  v18 = *(v13 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_image + 40);
  sub_2440113AC(v14, v15);

  v39 = v14;
  v40 = v15;
  v41 = v16;
  v42 = v17;
  v43 = v19;
  v44 = v18;
  v45 = v3;
  v46 = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = v31;
  *(v20 + 24) = v30;

  v21 = v32;
  sub_2440D2870();
  sub_244015304(v37, v36);
  v22 = *(v5 + 16);
  v24 = v33;
  v23 = v34;
  v22(v33, v21, v34);
  v25 = v35;
  sub_244015304(v36, v35);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3528);
  v22((v25 + *(v26 + 48)), v24, v23);
  v27 = *(v5 + 8);
  v27(v21, v23);
  sub_24401533C(v37);
  v27(v24, v23);
  return sub_24401533C(v36);
}

uint64_t sub_244014320@<X0>(uint64_t a1@<X8>)
{
  sub_2440D1B70();
  result = sub_2440D2300();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2440143B8@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  *a2 = sub_2440D1C20();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3518);
  return a1(v5, v6);
}

uint64_t sub_244014438(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_243F5DD50(&qword_27EDC1D08, &qword_27EDC1D10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_244014518(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24401459C()
{
  result = qword_27EDC3428;
  if (!qword_27EDC3428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3408);
    sub_243F5DD50(&qword_27EDC3430, &qword_27EDC3438);
    sub_243F5DD50(&qword_27EDC2DD0, &qword_27EDC2DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3428);
  }

  return result;
}

uint64_t sub_2440146F0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    v4 = (*(**(v0 + 16) + 88))();
    (*(v2 + 16))(v4 & 0x1FF, ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_2440147AC()
{
  result = qword_27EDC3480;
  if (!qword_27EDC3480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3478);
    sub_243F5DD50(&qword_27EDC3488, &qword_27EDC3490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3480);
  }

  return result;
}

uint64_t sub_244014864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3458);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2440148D4()
{
  result = qword_27EDC34B0;
  if (!qword_27EDC34B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3460);
    sub_244014960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC34B0);
  }

  return result;
}

unint64_t sub_244014960()
{
  result = qword_27EDC34B8;
  if (!qword_27EDC34B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3458);
    sub_244014438(&qword_27EDC34C0, &qword_27EDC34A8, &unk_2440DFB50, sub_244014A44);
    sub_243F5DD50(&qword_27EDC34E8, &qword_27EDC34F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC34B8);
  }

  return result;
}

unint64_t sub_244014A74()
{
  result = qword_27EDC34D0;
  if (!qword_27EDC34D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3498);
    sub_243F5DD50(&qword_27EDC34D8, &qword_27EDC34E0);
    sub_243F5DD50(&qword_27EDC2DD0, &qword_27EDC2DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC34D0);
  }

  return result;
}

uint64_t sub_244014B58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_2Tm()
{

  MEMORY[0x245D58620](v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_244014C14()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19ContactlessReaderUI13PINButtonTextVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_19ContactlessReaderUI14PINButtonImageVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy106_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_244014D14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 106))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_244014D70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_244014DF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_244014E38(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_244014F04()
{
  result = qword_27EDC34F8;
  if (!qword_27EDC34F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3398);
    sub_244014438(&qword_27EDC3418, &qword_27EDC3398, &unk_2440DFA58, sub_2440144E8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC34F8);
  }

  return result;
}

unint64_t sub_244015004()
{
  result = qword_27EDC3500;
  if (!qword_27EDC3500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3460);
    sub_2440148D4();
    swift_getOpaqueTypeConformance2();
    sub_2440150CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3500);
  }

  return result;
}

unint64_t sub_2440150CC()
{
  result = qword_27EDC0048;
  if (!qword_27EDC0048)
  {
    sub_2440D2050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0048);
  }

  return result;
}

unint64_t sub_244015124()
{
  result = qword_27EDCE3C0;
  if (!qword_27EDCE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDCE3C0);
  }

  return result;
}

unint64_t sub_244015178()
{
  result = qword_27EDCE3C8[0];
  if (!qword_27EDCE3C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDCE3C8);
  }

  return result;
}

double sub_244015220(uint64_t a1)
{
  result = 0.0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 320) = -1;
  return result;
}

uint64_t sub_2440152CC()
{

  return swift_deallocObject();
}

uint64_t sub_244015370()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  sub_2440D2830();
}

uint64_t sub_2440154D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_244015564()
{
  type metadata accessor for IdentityViewModel();
  sub_2440154D0(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);
  v0 = *sub_2440D1490();
  (*(v0 + 464))();

  sub_243FBC5F4();
  sub_2440D31F0();
  sub_2440D31F0();
  if (v7 == v5 && v8 == v6)
  {

    v1 = 1;
  }

  else
  {
    v2 = sub_2440D3A10();

    if (v2)
    {
      v1 = 1;
    }

    else
    {
      v3 = *sub_2440D1490();
      (*(v3 + 464))();

      sub_2440D31F0();
      sub_2440D31F0();
      if (v7 == v5 && v8 == v6)
      {
        v1 = 1;
      }

      else
      {
        v1 = sub_2440D3A10();
      }
    }
  }

  return v1 & 1;
}

double sub_2440157DC()
{
  type metadata accessor for IdentityViewModel();
  sub_2440154D0(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);
  v0 = *sub_2440D1490();
  (*(v0 + 464))();

  sub_243FBC5F4();
  sub_2440D31F0();
  sub_2440D31F0();
  if (v8 == v6 && v9 == v7)
  {
  }

  else
  {
    v1 = sub_2440D3A10();

    result = 30.0;
    if ((v1 & 1) == 0)
    {
      return result;
    }
  }

  v3 = *sub_2440D1490();
  v4 = (*(v3 + 1328))();

  v5 = sub_243FA1978(v4, 2);
  result = 120.0;
  if (v5)
  {
    return 180.0;
  }

  return result;
}

uint64_t sub_2440159E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = type metadata accessor for IdentityView(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = v5;
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3540);
  v8 = *(v7 - 8);
  v49 = v7;
  v50 = v8;
  MEMORY[0x28223BE20](v7);
  v59 = &v44 - v9;
  v61 = type metadata accessor for IdentityView;
  v52 = v6;
  sub_24401C56C(v1, v6, type metadata accessor for IdentityView);
  v58 = *(v4 + 80);
  v10 = (v58 + 16) & ~v58;
  v53 = v10;
  v11 = swift_allocObject();
  v57 = type metadata accessor for IdentityView;
  sub_24401C5D8(v6, v11 + v10, type metadata accessor for IdentityView);
  v12 = sub_2440D2BE0();
  v56 = v2;
  v13 = *v2;
  v14 = *(v2 + 8);
  LODWORD(v2) = *(v2 + 16);
  v15 = type metadata accessor for IdentityViewModel();
  v16 = sub_2440154D0(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);
  v54 = v15;
  v55 = v16;
  v17 = *sub_2440D1490();
  (*(v17 + 872))(&v63);

  *v71 = v12;
  *&v71[8] = v63;
  *&v71[24] = v64;
  *&v71[40] = v65;
  *&v71[88] = v68;
  *&v71[72] = v67;
  *&v71[56] = v66;
  v79 = *v71;
  v80 = *&v71[16];
  v83 = *&v71[64];
  v84 = *&v71[80];
  v81 = *&v71[32];
  v82 = *&v71[48];
  v73 = v63;
  v74 = v64;
  v85 = *(&v68 + 1);
  v72 = v12;
  v77 = v67;
  v78 = v68;
  v75 = v65;
  v76 = v66;
  sub_243F5F574(v71, v86, &qword_27EDC3548);
  sub_243F5EED4(&v72, &qword_27EDC3548);
  *&v63 = sub_2440191F4;
  *(&v63 + 1) = v11;
  v68 = v83;
  v69 = v84;
  v70 = v85;
  v64 = v79;
  v65 = v80;
  v67 = v82;
  v66 = v81;
  v48 = v13;
  v46 = v14;
  v47 = v2;
  v18 = *sub_2440D1490();
  LOBYTE(v12) = (*(v18 + 320))();

  v62 = v12 & 1;
  v19 = v52;
  sub_24401C56C(v56, v52, v61);
  v20 = v53;
  v21 = swift_allocObject();
  sub_24401C5D8(v19, v21 + v20, v57);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3550);
  v22 = sub_24401AF18();
  sub_2440D25D0();

  v86[4] = v67;
  v86[5] = v68;
  v86[6] = v69;
  v87 = v70;
  v86[0] = v63;
  v86[1] = v64;
  v86[2] = v65;
  v86[3] = v66;
  sub_243F5EED4(v86, &qword_27EDC3550);
  v23 = *sub_2440D1490();
  LOBYTE(v14) = (*(v23 + 512))();

  v62 = v14;
  v24 = v56;
  v25 = v52;
  sub_24401C56C(v56, v52, v61);
  v26 = v53;
  v27 = swift_allocObject();
  v28 = v57;
  sub_24401C5D8(v25, v27 + v26, v57);
  *&v63 = v45;
  *(&v63 + 1) = MEMORY[0x277D839B0];
  *&v64 = v22;
  *(&v64 + 1) = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_24401B0B0();
  v29 = v51;
  v30 = v49;
  v31 = v59;
  sub_2440D25D0();

  (*(v50 + 8))(v31, v30);
  v32 = v61;
  sub_24401C56C(v24, v25, v61);
  v33 = swift_allocObject();
  sub_24401C5D8(v25, v33 + v26, v28);
  v34 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3580) + 36));
  *v34 = 0;
  v34[1] = 0;
  v34[2] = sub_24401B104;
  v34[3] = v33;
  sub_24401C56C(v24, v25, v32);
  v35 = swift_allocObject();
  sub_24401C5D8(v25, v35 + v26, v28);
  v36 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3588) + 36));
  *v36 = sub_24401B958;
  v36[1] = v35;
  v36[2] = 0;
  v36[3] = 0;
  type metadata accessor for FineRotationManager(0);
  sub_2440154D0(&qword_27EDC0188, type metadata accessor for FineRotationManager);
  v37 = sub_2440D1490();
  v38 = sub_2440D12E0();
  v39 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3590) + 36));
  *v39 = v38;
  v39[1] = v37;
  v40 = sub_2440D1490();
  v41 = sub_2440D12E0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3598);
  v43 = (v29 + *(result + 36));
  *v43 = v41;
  v43[1] = v40;
  return result;
}

uint64_t sub_244016218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v343 = a3;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3628);
  v316 = *(v317 - 8);
  MEMORY[0x28223BE20](v317);
  v271 = &v249 - v5;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3630);
  v6 = MEMORY[0x28223BE20](v268);
  v270 = &v249 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v269 = (&v249 - v8);
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3638);
  v339 = *(v340 - 8);
  MEMORY[0x28223BE20](v340);
  v315 = &v249 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3640);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v342 = &v249 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v341 = &v249 - v13;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3648);
  MEMORY[0x28223BE20](v278);
  v280 = &v249 - v14;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3650);
  MEMORY[0x28223BE20](v279);
  v282 = &v249 - v15;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3658);
  MEMORY[0x28223BE20](v281);
  v284 = &v249 - v16;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3660);
  MEMORY[0x28223BE20](v283);
  v287 = &v249 - v17;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3668);
  v337 = *(v345 - 8);
  v18 = MEMORY[0x28223BE20](v345);
  v285 = &v249 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v286 = &v249 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3670);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v338 = &v249 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v355 = &v249 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05B0);
  MEMORY[0x28223BE20](v25 - 8);
  v333 = &v249 - v26;
  v298 = type metadata accessor for CentralContainerView();
  MEMORY[0x28223BE20](v298);
  v297 = &v249 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3678);
  v302 = *(v28 - 8);
  v303 = v28;
  MEMORY[0x28223BE20](v28);
  v301 = &v249 - v29;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3680);
  v30 = MEMORY[0x28223BE20](v299);
  v306 = &v249 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v300 = &v249 - v33;
  MEMORY[0x28223BE20](v32);
  v304 = &v249 - v34;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3688);
  MEMORY[0x28223BE20](v305);
  v334 = (&v249 - v35);
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3690);
  MEMORY[0x28223BE20](v309);
  v312 = &v249 - v36;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3698);
  MEMORY[0x28223BE20](v311);
  v310 = &v249 - v37;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC36A0);
  v335 = *(v346 - 8);
  v38 = MEMORY[0x28223BE20](v346);
  v308 = &v249 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v307 = &v249 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC36A8);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v353 = &v249 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v358 = &v249 - v44;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC36B0);
  MEMORY[0x28223BE20](v323);
  v325 = (&v249 - v45);
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC36B8);
  MEMORY[0x28223BE20](v324);
  v328 = &v249 - v46;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC36C0);
  MEMORY[0x28223BE20](v327);
  v331 = &v249 - v47;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC36C8);
  MEMORY[0x28223BE20](v329);
  v332 = &v249 - v48;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC36D0);
  v49 = MEMORY[0x28223BE20](v330);
  v352 = &v249 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v326 = &v249 - v52;
  MEMORY[0x28223BE20](v51);
  v357 = &v249 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC36D8);
  v295 = *(v54 - 8);
  v296 = v54;
  MEMORY[0x28223BE20](v54);
  v267 = (&v249 - v55);
  v56 = sub_2440D1B10();
  v290 = *(v56 - 8);
  v291 = v56;
  v57 = MEMORY[0x28223BE20](v56);
  v288 = &v249 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v289 = &v249 - v59;
  v60 = type metadata accessor for ParticlesView();
  MEMORY[0x28223BE20](v60 - 8);
  v253 = &v249 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC36E0);
  MEMORY[0x28223BE20](v250);
  v259 = &v249 - v62;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC36E8);
  MEMORY[0x28223BE20](v257);
  v258 = &v249 - v63;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC36F0);
  MEMORY[0x28223BE20](v255);
  v256 = &v249 - v64;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC36F8);
  MEMORY[0x28223BE20](v254);
  v252 = &v249 - v65;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3700);
  MEMORY[0x28223BE20](v251);
  v261 = &v249 - v66;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3708);
  MEMORY[0x28223BE20](v263);
  v262 = &v249 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3710);
  v264 = *(v68 - 8);
  v265 = v68;
  MEMORY[0x28223BE20](v68);
  v260 = &v249 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3718);
  v71 = MEMORY[0x28223BE20](v70 - 8);
  v266 = &v249 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v272 = &v249 - v73;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3720);
  MEMORY[0x28223BE20](v319);
  v293 = &v249 - v74;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3728);
  MEMORY[0x28223BE20](v322);
  v344 = &v249 - v75;
  v314 = sub_2440D1670();
  v318 = *(v314 - 8);
  MEMORY[0x28223BE20](v314);
  v313 = &v249 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3730);
  MEMORY[0x28223BE20](v321);
  v292 = &v249 - v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3738);
  v79 = MEMORY[0x28223BE20](v78 - 8);
  v351 = &v249 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v356 = &v249 - v81;
  v273 = type metadata accessor for IdentityView(0);
  v82 = *(v273 - 8);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v273);
  sub_2440D1650();
  v294 = v84 / 10.0;
  sub_2440D1650();
  v86 = v85 / 3.0 * 0.5;
  v87 = sub_244070850();
  v320 = v87;
  if (*v87 < v86)
  {
    v86 = *v87;
  }

  v336 = a1;
  sub_2440D1640();
  v88 = *a2;
  v89 = *(a2 + 8);
  v90 = *(a2 + 16);
  v91 = type metadata accessor for IdentityViewModel();
  v92 = sub_2440154D0(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);
  v350 = v88;
  v349 = v89;
  v348 = v90;
  v354 = v91;
  sub_2440D14A0();
  swift_getKeyPath();
  v359 = v92;
  sub_2440D1740();

  v94 = *(&v392 + 1);
  v93 = v392;
  LOBYTE(v89) = v393;
  sub_24401C56C(a2, &v249 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IdentityView);
  v95 = *(v82 + 80);
  v96 = (v95 + 16) & ~v95;
  v276 = v83;
  v274 = v95;
  v97 = swift_allocObject();
  v275 = v96;
  v277 = &v249 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24401C5D8(v277, v97 + v96, type metadata accessor for IdentityView);
  sub_243F676A0();
  v98 = v94;
  v99 = a2;
  sub_2440553C4(v93, v98, v89, sub_24401D968, v97, &v365);
  v100 = sub_244015564();
  v347 = a2;
  if (v100)
  {
    v101 = v313;
    (*(v318 + 16))(v313, v336, v314);
    v102 = sub_243FDA300();
    v104 = v103;
    v105 = sub_243FDA304();
    v107 = v106;
    sub_243F4E2FC();
    sub_243FD9120();
    sub_243FD912C();
    sub_243FD9138();
    v108 = v292;
    v99 = v347;
    sub_243FD9144(v102, v104, v105, v107, v101, v292);
    *(v108 + *(v321 + 36)) = 0x4000000000000000;
    sub_243F5F574(v108, v344, &qword_27EDC3730);
    swift_storeEnumTagMultiPayload();
    sub_24401DB24();
    sub_24401DC0C();
    sub_2440D1D20();
    sub_243F5EED4(v108, &qword_27EDC3730);
  }

  else
  {
    v109 = v318;
    v110 = v344;
    v111 = *(a2 + 56);
    LOBYTE(v392) = *(a2 + 48);
    *(&v392 + 1) = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
    v112 = sub_2440D2820();
    if (v388 == 1)
    {
      v113 = nullsub_1(v112);
      v114 = *(a2 + 72);
      LOBYTE(v392) = *(a2 + 64);
      *(&v392 + 1) = v114;
      sub_2440D2820();
      v115 = 1;
      if (v388 == 1)
      {
        sub_2440D14A0();
        swift_getKeyPath();
        sub_2440D1740();

        v116 = v392;
        v117 = v393;
        v118 = v313;
        (*(v109 + 16))(v313, v336, v314);
        v119 = sub_243F4E2F4();
        v120 = v253;
        sub_244021204(v116, *(&v116 + 1), v117, v118, v119 & 1, v253, v86);
        sub_2440D2B00();
        sub_2440D18E0();
        v121 = v259;
        sub_24401C5D8(v120, v259, type metadata accessor for ParticlesView);
        v122 = (v121 + *(v250 + 36));
        v123 = v374;
        v122[4] = v373;
        v122[5] = v123;
        v122[6] = v375;
        v124 = v370;
        *v122 = v369;
        v122[1] = v124;
        v125 = v372;
        v122[2] = v371;
        v122[3] = v125;
        sub_2440D2C40();
        v127 = v126;
        v129 = v128;
        v130 = v258;
        sub_243F681C8(v121, v258, &qword_27EDC36E0);
        v131 = (v130 + *(v257 + 36));
        *v131 = 0x400921FB54442D18;
        v131[1] = v127;
        v131[2] = v129;
        LOBYTE(v121) = sub_2440D20B0();
        v132 = v256;
        sub_243F681C8(v130, v256, &qword_27EDC36E8);
        *(v132 + *(v255 + 36)) = v121;
        v133 = sub_2440D2690();
        LOBYTE(v130) = sub_2440D20B0();
        v134 = v132;
        v135 = v252;
        sub_243F681C8(v134, v252, &qword_27EDC36F0);
        v136 = v135 + *(v254 + 36);
        *v136 = v133;
        *(v136 + 8) = v130;
        v137 = v261;
        sub_243F681C8(v135, v261, &qword_27EDC36F8);
        *(v137 + *(v251 + 36)) = 0x4000000000000000;
        v138 = v289;
        sub_2440D1B00();
        v140 = v290;
        v139 = v291;
        (*(v290 + 16))(v288, v138, v291);
        sub_2440154D0(&qword_27EDC0148, MEMORY[0x277CE0068]);
        v141 = sub_2440D1610();
        (*(v140 + 8))(v138, v139);
        v142 = v262;
        sub_243F681C8(v137, v262, &qword_27EDC3700);
        *(v142 + *(v263 + 36)) = v141;
        sub_24401DE30();
        v143 = v260;
        sub_2440D2480();
        sub_243F5EED4(v142, &qword_27EDC3708);
        sub_243F681C8(v143, v272, &qword_27EDC3710);
        v115 = 0;
      }

      v144 = v272;
      (*(v264 + 56))(v272, v115, 1, v265);
      v145 = v266;
      sub_243F5F574(v144, v266, &qword_27EDC3718);
      v146 = v267;
      *v267 = v113;
      *(v146 + 8) = 0x3FF0000000000000;
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC37C8);
      sub_243F5F574(v145, v146 + *(v147 + 48), &qword_27EDC3718);
      sub_243F5EED4(v144, &qword_27EDC3718);
      sub_243F5EED4(v145, &qword_27EDC3718);
      v148 = v293;
      sub_243F681C8(v146, v293, &qword_27EDC36D8);
      v149 = 0;
      v150 = v344;
    }

    else
    {
      v149 = 1;
      v150 = v110;
      v148 = v293;
    }

    (*(v295 + 56))(v148, v149, 1, v296);
    sub_243F5F574(v148, v150, &qword_27EDC3720);
    swift_storeEnumTagMultiPayload();
    sub_24401DB24();
    sub_24401DC0C();
    sub_2440D1D20();
    sub_243F5EED4(v148, &qword_27EDC3720);
  }

  v151 = v86 < *v320;
  v152 = sub_2440D1C20();
  v153 = v325;
  *v325 = v152;
  v153[1] = 0;
  *(v153 + 16) = 0;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3760);
  sub_244019274(v99, v151, v153 + *(v154 + 44), v86);
  *(v153 + *(v323 + 36)) = 0x4008000000000000;
  sub_2440D2B00();
  sub_2440D18E0();
  v155 = v153;
  v156 = v328;
  sub_243F681C8(v155, v328, &qword_27EDC36B0);
  v157 = (v156 + *(v324 + 36));
  v158 = v381;
  v157[4] = v380;
  v157[5] = v158;
  v157[6] = v382;
  v159 = v377;
  *v157 = v376;
  v157[1] = v159;
  v160 = v379;
  v157[2] = v378;
  v157[3] = v160;
  LOBYTE(v151) = sub_2440D20A0();
  sub_244071480();
  sub_2440D13D0();
  v162 = v161;
  v164 = v163;
  v166 = v165;
  v168 = v167;
  v169 = v156;
  v170 = v331;
  sub_243F681C8(v169, v331, &qword_27EDC36B8);
  v171 = v170 + *(v327 + 36);
  *v171 = v151;
  *(v171 + 8) = v162;
  *(v171 + 16) = v164;
  *(v171 + 24) = v166;
  *(v171 + 32) = v168;
  *(v171 + 40) = 0;
  LOBYTE(v151) = sub_2440D20D0();
  sub_244071480();
  sub_2440D13D0();
  v173 = v172;
  v175 = v174;
  v177 = v176;
  v179 = v178;
  v180 = v332;
  sub_243F681C8(v170, v332, &qword_27EDC36C0);
  v181 = v180 + *(v329 + 36);
  *v181 = v151;
  *(v181 + 8) = v173;
  *(v181 + 16) = v175;
  *(v181 + 24) = v177;
  *(v181 + 32) = v179;
  *(v181 + 40) = 0;
  v182 = sub_2440D1860();
  LOBYTE(v170) = sub_2440D20D0();
  v183 = v180;
  v184 = v326;
  sub_243F681C8(v183, v326, &qword_27EDC36C8);
  v185 = v184 + *(v330 + 36);
  *v185 = v182;
  *(v185 + 8) = v170;
  sub_243F681C8(v184, v357, &qword_27EDC36D0);
  v186 = *(v99 + 56);
  LODWORD(v344) = *(v99 + 48);
  LOBYTE(v392) = v344;
  v332 = v186;
  *(&v392 + 1) = v186;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  if (v388 == 1)
  {
    v187 = sub_2440D1C20();
    v188 = v334;
    *v334 = v187;
    v188[1] = 0;
    *(v188 + 16) = 1;
    sub_2440D14A0();
    swift_getKeyPath();
    sub_2440D1740();

    v330 = v385;
    v329 = v386;
    LODWORD(v328) = v387;
    sub_2440D14A0();
    swift_getKeyPath();
    sub_2440D1740();

    sub_2440D14A0();
    swift_getKeyPath();
    sub_2440D1740();

    v326 = *(&v392 + 1);
    v327 = v392;
    v189 = *(&v393 + 1);
    v325 = v393;
    sub_2440D14A0();
    swift_getKeyPath();
    sub_2440D1740();

    v190 = v388;
    v191 = v389;
    v192 = v390;
    v193 = v391;
    v194 = *sub_2440D1490();
    (*(v194 + 872))(v383);

    v195 = v384;
    if (v384)
    {
      sub_243F5EED4(v383, &qword_27EDBFF68);
    }

    sub_2440B2AE8(v330, v329, v328, v333, v327, v326, v325, v189, v297, v192, v193, v190, v191, v195 != 0);
    sub_2440154D0(&qword_27EDC37B0, type metadata accessor for CentralContainerView);
    sub_24408F1D8();
  }

  (*(v335 + 56))(v358, 1, 1, v346);
  v196 = *sub_2440D1490();
  v197 = (*(v196 + 464))();

  LOBYTE(v399[0]) = v197;
  LOBYTE(v362[0]) = 2;
  sub_243FBC5F4();
  sub_2440D31F0();
  sub_2440D31F0();
  if (v392 == v405[0])
  {
  }

  else
  {
    v198 = sub_2440D3A10();

    if ((v198 & 1) == 0)
    {
      v203 = 1;
      goto LABEL_22;
    }
  }

  v199 = *sub_2440D1490();
  v200 = (*(v199 + 1016))();
  v202 = v201;

  v203 = 1;
  if (v200 != 0.0 || v202 != 0.0)
  {
    *&v392 = sub_2440D2690();
    WORD4(v392) = 256;
    v204 = sub_24401A230();
    v206 = v205;
    v208 = v207;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3798);
    sub_243F5DD50(&qword_27EDC37A0, &qword_27EDC3798);
    v209 = v280;
    sub_2440D2430();
    sub_243F62C68(v204, v206, v208 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
    sub_2440D1E60();
    LOBYTE(v405[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0258);
    sub_24401DCBC();
    sub_243F67D98();
    v210 = v282;
    sub_2440D24A0();

    sub_243F5EED4(v209, &qword_27EDC3648);
    v211 = sub_2440D20A0();
    v212 = v210 + *(v279 + 36);
    *v212 = v211;
    *(v212 + 8) = 0u;
    *(v212 + 24) = 0u;
    *(v212 + 40) = 1;
    sub_2440D1650();
    v213 = *sub_2440D1490();
    (*(v213 + 1016))();

    sub_2440D2B00();
    sub_2440D18E0();
    v214 = v284;
    sub_243F681C8(v210, v284, &qword_27EDC3650);
    v215 = (v214 + *(v281 + 36));
    v216 = v397;
    v215[4] = v396;
    v215[5] = v216;
    v215[6] = v398;
    v217 = v393;
    *v215 = v392;
    v215[1] = v217;
    v218 = v395;
    v215[2] = v394;
    v215[3] = v218;
    v219 = v287;
    sub_243F681C8(v214, v287, &qword_27EDC3658);
    *(v219 + *(v283 + 36)) = 0x4014000000000000;
    v220 = v277;
    sub_24401C56C(v347, v277, type metadata accessor for IdentityView);
    v221 = v275;
    v222 = swift_allocObject();
    sub_24401C5D8(v220, v222 + v221, type metadata accessor for IdentityView);
    v223 = v285;
    sub_243F681C8(v219, v285, &qword_27EDC3660);
    v224 = (v223 + *(v345 + 36));
    *v224 = sub_24401DDA4;
    v224[1] = v222;
    v224[2] = 0;
    v224[3] = 0;
    v225 = v223;
    v226 = v286;
    sub_243F681C8(v225, v286, &qword_27EDC3668);
    sub_243F681C8(v226, v355, &qword_27EDC3668);
    v203 = 0;
  }

LABEL_22:
  v227 = 1;
  (*(v337 + 56))(v355, v203, 1, v345);
  v228 = *sub_2440D1490();
  (*(v228 + 872))(v399);

  if (v401)
  {
    v405[0] = v399[0];
    v405[1] = v399[1];
    v406 = v400;
    v407 = v401;
    v408 = v402;
    v409 = v403;
    v410 = v404;
    LOBYTE(v362[0]) = v344;
    *(&v362[0] + 1) = v332;
    sub_2440D2820();
    if (LOBYTE(v360[0]) == 1)
    {
      sub_2440D20B0();
      sub_2440D2680();
      sub_2440D26B0();

      swift_getKeyPath();
      v229 = v289;
      sub_2440D1B00();
      v231 = v290;
      v230 = v291;
      (*(v290 + 16))(v288, v229, v291);
      sub_2440154D0(&qword_27EDC0148, MEMORY[0x277CE0068]);
      sub_2440D1610();
      (*(v231 + 8))(v229, v230);
      v232 = sub_2440D1C20();
      v233 = v269;
      *v269 = v232;
      v233[1] = 0;
      *(v233 + 16) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C80);
      sub_24401A984(v405);
    }

    sub_243F5EED4(v399, &qword_27EDBFF68);
    v234 = v341;
    v236 = v315;
    v235 = v356;
    (*(v316 + 56))(v315, 1, 1, v317);
    sub_243F681C8(v236, v234, &qword_27EDC3638);
    v227 = 0;
  }

  else
  {
    v234 = v341;
    v235 = v356;
  }

  (*(v339 + 56))(v234, v227, 1, v340);
  v237 = v351;
  sub_243F5F574(v235, v351, &qword_27EDC3738);
  v238 = v352;
  sub_243F5F574(v357, v352, &qword_27EDC36D0);
  v239 = v353;
  sub_243F5F574(v358, v353, &qword_27EDC36A8);
  v240 = v355;
  v241 = v338;
  sub_243F5F574(v355, v338, &qword_27EDC3670);
  v242 = v342;
  sub_243F5F574(v234, v342, &qword_27EDC3640);
  v243 = v366;
  v360[0] = v365;
  v360[1] = v366;
  v244 = v367;
  v360[2] = v367;
  v361 = v368;
  v245 = v343;
  *v343 = v365;
  v245[1] = v243;
  v246 = v361;
  v245[2] = v244;
  v245[3] = v246;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3768);
  sub_243F5F574(v237, v245 + v247[12], &qword_27EDC3738);
  sub_243F5F574(v238, v245 + v247[16], &qword_27EDC36D0);
  sub_243F5F574(v239, v245 + v247[20], &qword_27EDC36A8);
  sub_243F5F574(v241, v245 + v247[24], &qword_27EDC3670);
  sub_243F5F574(v242, v245 + v247[28], &qword_27EDC3640);
  sub_243F5F574(v360, v362, &qword_27EDC3770);
  sub_243F5EED4(v234, &qword_27EDC3640);
  sub_243F5EED4(v240, &qword_27EDC3670);
  sub_243F5EED4(v358, &qword_27EDC36A8);
  sub_243F5EED4(v357, &qword_27EDC36D0);
  sub_243F5EED4(v356, &qword_27EDC3738);
  sub_243F5EED4(v242, &qword_27EDC3640);
  sub_243F5EED4(v241, &qword_27EDC3670);
  sub_243F5EED4(v353, &qword_27EDC36A8);
  sub_243F5EED4(v352, &qword_27EDC36D0);
  sub_243F5EED4(v351, &qword_27EDC3738);
  v362[0] = v365;
  v362[1] = v366;
  v362[2] = v367;
  v363 = v368;
  v364 = 0;
  return sub_243F5EED4(v362, &qword_27EDC3770);
}

uint64_t sub_2440191F4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for IdentityView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_244016218(a1, v6, a2);
}

uint64_t sub_244019274@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v74 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3808);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v69 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3810);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v90 = v69 - v16;
  v17 = sub_2440D1B10();
  v72 = *(v17 - 8);
  v73 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v70 = v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v71 = v69 - v20;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3818);
  MEMORY[0x28223BE20](v89);
  v75 = v69 - v21;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3820);
  MEMORY[0x28223BE20](v85);
  v88 = v69 - v22;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3828);
  MEMORY[0x28223BE20](v86);
  v84 = v69 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
  MEMORY[0x28223BE20](v24 - 8);
  v76 = v69 - v25;
  v79 = type metadata accessor for IdentityInformationView();
  MEMORY[0x28223BE20](v79);
  v77 = v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3830);
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v78 = v69 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3838);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v81 = v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v83 = v69 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3840);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v87 = v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v91 = v69 - v35;
  v36 = *(a1 + 56);
  LOBYTE(v102) = *(a1 + 48);
  *(&v102 + 1) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  if (v92 == 1)
  {
    v69[1] = v15;
    v69[2] = v12;
    v69[3] = v11;
    v69[4] = v10;
    v69[5] = v8;
    v69[6] = v7;
    v69[7] = a3;
    type metadata accessor for IdentityViewModel();
    sub_2440154D0(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);
    v37 = *sub_2440D1490();
    v38 = (*(v37 + 464))();

    LOBYTE(v108[0]) = v38;
    v105 = 8;
    sub_243FBC5F4();
    sub_2440D31F0();
    sub_2440D31F0();
    if (v102 == v92)
    {
    }

    else
    {
      v39 = sub_2440D3A10();

      if ((v39 & 1) == 0)
      {
        type metadata accessor for FineRotationManager(0);
        sub_2440154D0(&qword_27EDC0188, type metadata accessor for FineRotationManager);
        v48 = sub_2440D1490();
        v49 = (*(*v48 + 136))(v48);

        v50 = sub_243F7CACC(v49 & 1, 1);
        sub_2440D14A0();
        swift_getKeyPath();
        sub_2440D1740();

        v108[0] = v102;
        v108[1] = v103;
        v109[0] = v104[0];
        *(v109 + 9) = *(v104 + 9);
        v105 = 0;
        sub_2440D2970();
        v51 = v92;
        v52 = v93;
        sub_243F676A0();
        sub_243F62020();
        sub_243F68750();
        sub_243F93FC0(v74 & 1, v50, v108, v51, *(&v51 + 1), v52, v106, a4);
        v53 = v71;
        sub_2440D1B00();
        v55 = v72;
        v54 = v73;
        (*(v72 + 16))(v70, v53, v73);
        sub_2440154D0(&qword_27EDC0148, MEMORY[0x277CE0068]);
        v56 = sub_2440D1610();
        (*(v55 + 8))(v53, v54);
        v98 = v106[6];
        v99 = v106[7];
        v100 = v106[8];
        v94 = v106[2];
        v95 = v106[3];
        v96 = v106[4];
        v97 = v106[5];
        v92 = v106[0];
        v93 = v106[1];
        *&v101 = v107;
        *(&v101 + 1) = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3848);
        sub_24401E468();
        v57 = v75;
        sub_2440D2480();
        v104[4] = v98;
        v104[5] = v99;
        v104[6] = v100;
        v104[7] = v101;
        v104[0] = v94;
        v104[1] = v95;
        v104[2] = v96;
        v104[3] = v97;
        v102 = v92;
        v103 = v93;
        sub_243F5EED4(&v102, &qword_27EDC3848);
        sub_2440D2AE0();
        sub_2440D1560();
        v58 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3860) + 36));
        v59 = v93;
        *v58 = v92;
        v58[1] = v59;
        v58[2] = v94;
        *(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3868) + 36)) = 0x3FF0000000000000;
        LOBYTE(v56) = sub_2440D20D0();
        sub_2440D13D0();
        v60 = v88;
        v61 = v57 + *(v89 + 36);
        *v61 = v56;
        *(v61 + 8) = v62;
        *(v61 + 16) = v63;
        *(v61 + 24) = v64;
        *(v61 + 32) = v65;
        *(v61 + 40) = 0;
        sub_243F5F574(v57, v60, &qword_27EDC3818);
        swift_storeEnumTagMultiPayload();
        sub_243F5DD50(&qword_27EDC3870, &qword_27EDC3828);
        sub_24401E574();
        sub_2440D1D20();
        sub_243F5EED4(v57, &qword_27EDC3818);
        *&v102 = sub_243FBBF58();
        *(&v102 + 1) = v66;
        *&v103 = v67;
        sub_243FBC54C();
        sub_24408F1D8();
      }
    }

    sub_2440D14A0();
    swift_getKeyPath();
    sub_2440D1740();

    v40 = *(&v102 + 1);
    v75 = v102;
    v41 = v103;
    v42 = *sub_2440D1490();
    v43 = (*(v42 + 1536))();

    v44 = *sub_2440D1490();
    v45 = (*(v44 + 1328))();

    v46 = sub_243FA1978(v45, 2);
    v47 = v76;
    sub_243F67654();
    sub_243FCDDCC(v47, v75, v40, v41, v43, v46, v77);
    sub_2440154D0(&qword_27EDC2228, type metadata accessor for IdentityInformationView);
    sub_24408F1D8();
  }

  return (*(v8 + 56))(a3, 1, 1, v7);
}

uint64_t sub_24401A230()
{
  v0 = sub_2440D0F20();
  v29 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v28 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  type metadata accessor for IdentityViewModel();
  sub_2440154D0(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);
  v5 = *sub_2440D1490();
  v6 = (*(v5 + 1064))();
  v8 = v7;

  v30 = v8;
  if (!v8)
  {
    sub_2440D1B70();
    return sub_2440D2300();
  }

  v9 = *sub_2440D1490();
  (*(v9 + 728))();

  v10 = v29;
  v11 = (*(v29 + 48))(v4, 1, v0);
  v12 = MEMORY[0x277D837D0];
  if (v11)
  {
    sub_243F5EED4(v4, &qword_27EDC05B8);
  }

  else
  {
    v18 = v28;
    (*(v10 + 16))(v28, v4, v0);
    sub_243F5EED4(v4, &qword_27EDC05B8);
    v19 = sub_2440D0EF0();
    v21 = v20;
    (*(v10 + 8))(v18, v0);
    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_2440D66C0;
      *(v23 + 56) = v12;
      v24 = sub_243F644C8();
      *(v23 + 32) = v19;
      *(v23 + 40) = v21;
      *(v23 + 96) = v12;
      *(v23 + 104) = v24;
      *(v23 + 64) = v24;
      *(v23 + 72) = v6;
      *(v23 + 80) = v30;
      v16 = 0xD000000000000025;
      v15 = v23;
      goto LABEL_10;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2440D5CF0;
  *(v13 + 56) = v12;
  *(v13 + 64) = sub_243F644C8();
  v14 = v30;
  *(v13 + 32) = v6;
  *(v13 + 40) = v14;
  v15 = v13;
  v16 = 0xD000000000000023;
LABEL_10:
  v25 = sub_244057E7C(0, v15, v16);
  v27 = v26;

  v31 = v25;
  v32 = v27;
  sub_243F4EF64();
  return sub_2440D2310();
}

uint64_t sub_24401A668(uint64_t a1)
{
  v2 = type metadata accessor for IdentityView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_2440D3390();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_24401C56C(a1, v5, type metadata accessor for IdentityView);
  sub_2440D3360();
  v10 = sub_2440D3350();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_24401C5D8(v5, v12 + v11, type metadata accessor for IdentityView);
  sub_243F54830(0, 0, v8, &unk_2440E0518, v12);
}

uint64_t sub_24401A848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2440D3360();
  *(v4 + 24) = sub_2440D3350();
  v6 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_24401A8E0, v6, v5);
}

uint64_t sub_24401A8E0()
{

  type metadata accessor for IdentityView(0);
  *(v0 + 32) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
  sub_2440D1E50();
  v1 = *(v0 + 8);

  return v1();
}

void sub_24401A984(uint64_t a1)
{
  v2 = type metadata accessor for BottomErrorView();
  MEMORY[0x28223BE20](v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F80);
  v6 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  sub_243FF70E0(a1, v10);
  v7 = sub_244030640();
  sub_24403067C(a1, v7, v9, v8 & 1, v4);
  sub_2440154D0(&qword_27EDC2F88, type metadata accessor for BottomErrorView);
  sub_24408F1D8();
}

uint64_t sub_24401AAF8()
{
  sub_24401E800(v5, type metadata accessor for BottomErrorView);
  v6 = sub_2440D20D0();
  sub_2440707B4();
  sub_2440D13D0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F90) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = sub_2440D20A0();
  sub_2440D13D0();
  v17 = v3 + *(v4 + 44);
  *v17 = v16;
  *(v17 + 8) = v18;
  *(v17 + 16) = v19;
  *(v17 + 24) = v20;
  *(v17 + 32) = v21;
  *(v17 + 40) = 0;
  sub_243F5F574(v3, v2, v1);
  *v0 = 0;
  *(v0 + 8) = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F98);
  sub_243F5F574(v2, v0 + *(v22 + 48), v1);
  sub_243F5EED4(v3, v1);
  return sub_243F5EED4(v2, v1);
}

uint64_t sub_24401AC24(_BYTE *a1)
{
  if (*a1 == 1)
  {
    sub_2440D2B70();
    sub_2440D2B60();
  }

  else
  {
    v1 = sub_2440D2BD0();
  }

  MEMORY[0x28223BE20](v1);
  sub_2440D16E0();
}

uint64_t objectdestroyTm_18()
{
  v1 = (type metadata accessor for IdentityView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2440191EC();
  sub_2440191EC();

  v3 = v2 + v1[10];
  v4 = sub_2440D1F00();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);

  return swift_deallocObject();
}

uint64_t sub_24401AEA8(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for IdentityView(0);

  return sub_24401AC24(a2);
}

unint64_t sub_24401AF18()
{
  result = qword_27EDC3558;
  if (!qword_27EDC3558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3550);
    sub_243F5DD50(&qword_27EDC3560, &qword_27EDC3568);
    sub_243F5DD50(&qword_27EDC3570, &qword_27EDC3548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3558);
  }

  return result;
}

uint64_t sub_24401AFFC()
{
  type metadata accessor for IdentityView(0);
  sub_2440D2BA0();
  sub_2440D16E0();
}

unint64_t sub_24401B0B0()
{
  result = qword_27EDC3578;
  if (!qword_27EDC3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3578);
  }

  return result;
}

uint64_t sub_24401B104()
{
  type metadata accessor for IdentityView(0);
  type metadata accessor for FineRotationManager(0);
  sub_2440154D0(&qword_27EDC0188, type metadata accessor for FineRotationManager);
  v0 = *sub_2440D1490();
  (*(v0 + 264))();

  type metadata accessor for IdentityViewModel();
  sub_2440154D0(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);
  v1 = *sub_2440D1490();
  v2 = (*(v1 + 320))();

  if (v2)
  {
    v4 = *sub_2440D1490();
    (*(v4 + 328))(0);

    v5 = *sub_2440D1490();
    (*(v5 + 264))();

    v6 = *sub_2440D1490();
    (*(v6 + 1496))();
  }

  return result;
}

uint64_t sub_24401B420(uint64_t a1)
{
  v29 = sub_2440D2C80();
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2440D2CA0();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v27 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityView(0);
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2440D2CD0();
  v8 = *(v7 - 8);
  v25 = v7;
  v26 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  type metadata accessor for FineRotationManager(0);
  sub_2440154D0(&qword_27EDC0188, type metadata accessor for FineRotationManager);
  v14 = *sub_2440D1490();
  (*(v14 + 256))();

  sub_243F5DB84();
  v15 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v26 = *(v26 + 8);
  (v26)(v11, v7);
  sub_24401C56C(a1, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IdentityView);
  v16 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v17 = swift_allocObject();
  sub_24401C5D8(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for IdentityView);
  aBlock[4] = sub_24401D70C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_43;
  v18 = _Block_copy(aBlock);

  v19 = v27;
  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2440154D0(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  v21 = v28;
  v20 = v29;
  sub_2440D3710();
  MEMORY[0x245D57400](v13, v19, v21, v18);
  _Block_release(v18);

  (*(v32 + 8))(v21, v20);
  (*(v30 + 8))(v19, v31);
  return (v26)(v13, v25);
}

uint64_t sub_24401B98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = 0;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = 0;
  sub_2440D2810();
  *(a6 + 48) = v10;
  *(a6 + 56) = v11;
  sub_2440D2810();
  *(a6 + 64) = v10;
  *(a6 + 72) = v11;
  v8 = type metadata accessor for IdentityView(0);
  return sub_243F681C8(a5, a6 + *(v8 + 32), &qword_27EDBFFE0);
}

uint64_t sub_24401BA9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a1;
  v27 = a2;
  v3 = type metadata accessor for IdentityView_Previews.ContainerView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3610);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v26 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v25 = sub_2440D26A0();
  sub_24401C56C(a1, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IdentityView_Previews.ContainerView);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_24401C5D8(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for IdentityView_Previews.ContainerView);
  type metadata accessor for IdentityView(0);
  sub_243F64688();
  sub_2440D1E70();
  *v11 = sub_24401D574;
  *(v11 + 1) = v13;
  v11[16] = 0;
  *(v11 + 3) = sub_244015518;
  *(v11 + 4) = 0;
  v11[40] = 0;
  v28 = 0;
  sub_2440D2810();
  v14 = v30;
  v11[48] = v29;
  *(v11 + 7) = v14;
  v28 = 1;
  sub_2440D2810();
  v15 = v30;
  v11[64] = v29;
  *(v11 + 9) = v15;
  sub_24401C56C(v24, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IdentityView_Previews.ContainerView);
  v16 = swift_allocObject();
  sub_24401C5D8(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v12, type metadata accessor for IdentityView_Previews.ContainerView);
  v17 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3618) + 36)];
  sub_2440D16C0();
  sub_2440D3370();
  *v17 = &unk_2440E0250;
  *(v17 + 1) = v16;
  *&v11[*(v7 + 44)] = 0x3FF0000000000000;
  v18 = v26;
  sub_243F5F574(v11, v26, &qword_27EDC3610);
  v19 = v27;
  *v27 = v25;
  *(v19 + 4) = 256;
  v20 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3620);
  sub_243F5F574(v18, v20 + *(v21 + 48), &qword_27EDC3610);

  sub_243F5EED4(v11, &qword_27EDC3610);
  sub_243F5EED4(v18, &qword_27EDC3610);
}

uint64_t sub_24401BE14(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_2440D3360();
  *(v1 + 24) = sub_2440D3350();
  v3 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_24401BEAC, v3, v2);
}

uint64_t sub_24401BEAC()
{
  v1 = *(v0 + 16);

  type metadata accessor for IdentityViewModel();
  sub_2440154D0(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);
  v2 = sub_2440D1490();
  v3 = *(type metadata accessor for IdentityView_Previews.ContainerView(0) + 24);
  (*(*v2 + 1360))(v1 + v3, 300);

  sub_24401BFDC();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24401BFDC()
{
  v1 = sub_2440D2C80();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x28223BE20](v1);
  v33 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2440D2CA0();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityView_Previews.ContainerView(0);
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2440D2CD0();
  v29 = *(v36 - 8);
  v7 = MEMORY[0x28223BE20](v36);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v28 = &v25 - v10;
  v11 = *v0;
  v12 = v0[1];
  aBlock = *v0;
  v38 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC35A0);
  sub_2440D2820();
  v13 = 0;
  if (v43 <= 5)
  {
    v13 = qword_2440E05D8[v43];
  }

  aBlock = v11;
  v38 = v12;
  v43 = v13;
  sub_2440D2830();
  type metadata accessor for IdentityViewModel();
  sub_2440154D0(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);
  v14 = sub_2440D1490();
  aBlock = v11;
  v38 = v12;
  sub_2440D2820();
  [v14 updateUIState_];

  sub_243F5DB84();
  v25 = sub_2440D3530();
  sub_2440D2CC0();
  v15 = v28;
  sub_2440D2D20();
  v29 = *(v29 + 8);
  (v29)(v9, v36);
  v16 = v27;
  sub_24401C56C(v0, v27, type metadata accessor for IdentityView_Previews.ContainerView);
  v17 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v18 = swift_allocObject();
  sub_24401C5D8(v16, v18 + v17, type metadata accessor for IdentityView_Previews.ContainerView);
  v41 = sub_24401C640;
  v42 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_243F5F604;
  v40 = &block_descriptor_19;
  v19 = _Block_copy(&aBlock);

  v20 = v30;
  sub_2440D2C90();
  aBlock = MEMORY[0x277D84F90];
  sub_2440154D0(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  v21 = v33;
  v22 = v35;
  sub_2440D3710();
  v23 = v25;
  MEMORY[0x245D57400](v15, v20, v21, v19);
  _Block_release(v19);

  (*(v34 + 8))(v21, v22);
  (*(v31 + 8))(v20, v32);
  return (v29)(v15, v36);
}

uint64_t sub_24401C56C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24401C5D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24401C6B4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_2440D2B00();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC35A8);
  return sub_24401BA9C(v1, (a1 + *(v4 + 44)));
}

uint64_t sub_24401C700@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3260);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - v3;
  v5 = sub_2440D0F40();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440D0F20();
  MEMORY[0x28223BE20](v9 - 8);
  v12[1] = 0;
  sub_2440D2810();
  *a1 = v13;
  *(a1 + 16) = sub_24401BA50;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  type metadata accessor for IdentityView_Previews.ContainerView(0);
  sub_2440D1150();
  sub_2440D0F00();
  (*(v6 + 104))(v8, *MEMORY[0x277D43A10], v5);
  v10 = sub_2440D0F60();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  return sub_2440D0EC0();
}

unint64_t sub_24401C978()
{
  result = qword_27EDC35B0;
  if (!qword_27EDC35B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC35B0);
  }

  return result;
}

uint64_t sub_24401C9EC(uint64_t a1)
{
  v2 = sub_24401D42C();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_24401CA38(uint64_t a1)
{
  v2 = sub_24401D42C();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_24401CA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24401CB74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 56) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24401CC24()
{
  sub_24401CCFC();
  if (v0 <= 0x3F)
  {
    sub_24401CD90();
    if (v1 <= 0x3F)
    {
      sub_24401E860(319, &qword_27EDC0280, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_243F67D28();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24401CCFC()
{
  if (!qword_27EDC35B8)
  {
    type metadata accessor for IdentityViewModel();
    sub_2440154D0(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);
    v0 = sub_2440D14B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC35B8);
    }
  }
}

void sub_24401CD90()
{
  if (!qword_27EDC35C0)
  {
    type metadata accessor for FineRotationManager(255);
    sub_2440154D0(&qword_27EDC0188, type metadata accessor for FineRotationManager);
    v0 = sub_2440D14B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC35C0);
    }
  }
}

uint64_t sub_24401CE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_2440D0EE0();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24401CF14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_2440D0EE0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24401CFB8()
{
  sub_24401E860(319, &qword_27EDC35C8, MEMORY[0x277D43790], MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_24401CCFC();
    if (v1 <= 0x3F)
    {
      sub_2440D0EE0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24401D07C()
{
  result = qword_27EDC35D0;
  if (!qword_27EDC35D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3598);
    sub_24401D134();
    sub_243F5DD50(&qword_27EDC1DE8, &qword_27EDC1DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC35D0);
  }

  return result;
}

unint64_t sub_24401D134()
{
  result = qword_27EDC35D8;
  if (!qword_27EDC35D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3590);
    sub_24401D1EC();
    sub_243F5DD50(&qword_27EDC0730, &qword_27EDC0738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC35D8);
  }

  return result;
}

unint64_t sub_24401D1EC()
{
  result = qword_27EDC35E0;
  if (!qword_27EDC35E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3588);
    sub_24401D278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC35E0);
  }

  return result;
}

unint64_t sub_24401D278()
{
  result = qword_27EDC35E8;
  if (!qword_27EDC35E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3580);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3550);
    sub_24401AF18();
    swift_getOpaqueTypeConformance2();
    sub_24401B0B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC35E8);
  }

  return result;
}

unint64_t sub_24401D42C()
{
  result = qword_27EDC3608;
  if (!qword_27EDC3608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3608);
  }

  return result;
}

uint64_t objectdestroy_16Tm()
{
  v1 = (type metadata accessor for IdentityView_Previews.ContainerView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_2440191EC();
  v3 = v1[8];
  v4 = sub_2440D0EE0();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24401D574()
{
  type metadata accessor for IdentityView_Previews.ContainerView(0);
  type metadata accessor for IdentityViewModel();
  sub_2440154D0(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);

  return sub_2440D1490();
}

uint64_t sub_24401D640()
{
  v2 = *(type metadata accessor for IdentityView_Previews.ContainerView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_243F5F610;

  return sub_24401BE14(v0 + v3);
}

uint64_t sub_24401D70C()
{
  type metadata accessor for IdentityView(0);
  type metadata accessor for IdentityViewModel();
  sub_2440154D0(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);
  v0 = *sub_2440D1490();
  (*(v0 + 328))(1);
}

uint64_t sub_24401D820()
{
  sub_24401B0B0();
  sub_2440D2F50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  return sub_2440D2830();
}

uint64_t sub_24401D968()
{
  type metadata accessor for IdentityView(0);
  type metadata accessor for FineRotationManager(0);
  sub_2440154D0(&qword_27EDC0188, type metadata accessor for FineRotationManager);
  v0 = *sub_2440D1490();
  (*(v0 + 264))();

  type metadata accessor for IdentityViewModel();
  sub_2440154D0(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);
  v1 = *sub_2440D1490();
  (*(v1 + 1496))();
}

unint64_t sub_24401DB24()
{
  result = qword_27EDC3740;
  if (!qword_27EDC3740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3730);
    sub_2440154D0(&qword_27EDC3748, type metadata accessor for IdentityScannerView);
    sub_243F5DD50(&qword_27EDC1600, &qword_27EDC1608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3740);
  }

  return result;
}

unint64_t sub_24401DC0C()
{
  result = qword_27EDC3750;
  if (!qword_27EDC3750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3720);
    sub_243F5DD50(&qword_27EDC3758, &qword_27EDC36D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3750);
  }

  return result;
}

unint64_t sub_24401DCBC()
{
  result = qword_27EDC37A8;
  if (!qword_27EDC37A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3648);
    sub_243F5DD50(&qword_27EDC37A0, &qword_27EDC3798);
    sub_2440154D0(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC37A8);
  }

  return result;
}

uint64_t sub_24401DDBC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for IdentityView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_24401DE30()
{
  result = qword_27EDC37D0;
  if (!qword_27EDC37D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3708);
    sub_24401DEE8();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC37D0);
  }

  return result;
}

unint64_t sub_24401DEE8()
{
  result = qword_27EDC37D8;
  if (!qword_27EDC37D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3700);
    sub_24401DFA0();
    sub_243F5DD50(&qword_27EDC1600, &qword_27EDC1608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC37D8);
  }

  return result;
}

unint64_t sub_24401DFA0()
{
  result = qword_27EDC37E0;
  if (!qword_27EDC37E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC36F8);
    sub_24401E058();
    sub_243F5DD50(&qword_27EDC0720, &qword_27EDC0728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC37E0);
  }

  return result;
}

unint64_t sub_24401E058()
{
  result = qword_27EDC37E8;
  if (!qword_27EDC37E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC36F0);
    sub_24401E0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC37E8);
  }

  return result;
}

unint64_t sub_24401E0E4()
{
  result = qword_27EDC37F0;
  if (!qword_27EDC37F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC36E8);
    sub_24401E170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC37F0);
  }

  return result;
}

unint64_t sub_24401E170()
{
  result = qword_27EDC37F8;
  if (!qword_27EDC37F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC36E0);
    sub_2440154D0(&qword_27EDC3800, type metadata accessor for ParticlesView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC37F8);
  }

  return result;
}

uint64_t sub_24401E22C()
{
  v1 = (type metadata accessor for IdentityView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  sub_2440191EC();
  sub_2440191EC();

  v3 = v0 + v2 + v1[10];
  v4 = sub_2440D1F00();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);

  return swift_deallocObject();
}

uint64_t sub_24401E3A0()
{
  v2 = *(type metadata accessor for IdentityView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_243F5DE2C;

  return sub_24401A848(v4, v5, v6, v0 + v3);
}

unint64_t sub_24401E468()
{
  result = qword_27EDC3850;
  if (!qword_27EDC3850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3848);
    sub_24401E520();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3850);
  }

  return result;
}

unint64_t sub_24401E520()
{
  result = qword_27EDC3858;
  if (!qword_27EDC3858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3858);
  }

  return result;
}

unint64_t sub_24401E574()
{
  result = qword_27EDC3878;
  if (!qword_27EDC3878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3818);
    sub_24401E600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3878);
  }

  return result;
}

unint64_t sub_24401E600()
{
  result = qword_27EDC3880;
  if (!qword_27EDC3880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3868);
    sub_24401E6B8();
    sub_243F5DD50(&qword_27EDC0D38, &qword_27EDC0D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3880);
  }

  return result;
}

unint64_t sub_24401E6B8()
{
  result = qword_27EDC3888;
  if (!qword_27EDC3888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3860);
    sub_24401E744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3888);
  }

  return result;
}

unint64_t sub_24401E744()
{
  result = qword_27EDC3890;
  if (!qword_27EDC3890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3898);
    sub_24401E468();
    sub_2440154D0(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3890);
  }

  return result;
}

uint64_t sub_24401E800(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_24401E860(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_24401E8E0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_24401EC44(a1);
  (*(*(*(v2 + qword_27EDC6528) - 8) + 8))(a1);
  return v5;
}

id sub_24401E9D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_243F4DFA8();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5FAB0(v4);
  }

  else
  {
    v8 = sub_2440D11C0();
    v9 = sub_2440D3490();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_243F48000, v8, v9, "RegHostingController deinit", v10, 2u);
      MEMORY[0x245D58570](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  v11 = type metadata accessor for RegHostingController();
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

id sub_24401EC44(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v7 - v1);
  v3 = sub_2440D1C40();
  result = [v3 view];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24401EE58(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
  v7 = objc_allocWithZone(MEMORY[0x277CF0178]);
  v8 = v6;
  result = [v7 init];
  if (result)
  {
    v10 = [objc_opt_self() currentDevice];
    v11 = v8;
    [v11 setIsEphemeral_];
    [v11 setAuthenticationType_];
    [v11 setNeedsNewAppleID_];
    [v11 setNeedsCredentialRecovery_];
    [v11 setShouldPromptForPasswordOnly_];
    v12 = a1;
    [v11 setPresentingViewController_];

    sub_2440579C8(0, 0xD00000000000002CLL);
    v13 = sub_2440D2F80();

    [v11 setTitle_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2440D5CF0;
    v15 = MEMORY[0x277D837D0];
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_243F644C8();
    *(v14 + 32) = a2;
    *(v14 + 40) = a3;
    sub_244057E7C(0, v14, 0xD00000000000002DLL);

    v16 = sub_2440D2F80();

    [v11 setReason_];

    sub_2440579C8(0, 0xD00000000000001FLL);
    v17 = sub_2440D2F80();

    [v11 setDefaultButtonString_];

    [v11 setServiceType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38C0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2440D5CF0;
    v19 = sub_2440D10E0();
    *(v18 + 56) = v15;
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    v21 = sub_2440D3210();

    [v11 setServiceIdentifiers_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24401F184(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = aBlock - v9;
  v11 = sub_243F4DFA8();
  sub_243F4DE64(v11, v10);
  v12 = sub_2440D11E0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_243F5FAB0(v10);
  }

  else
  {
    v14 = sub_2440D11C0();
    v15 = sub_2440D3490();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_243F48000, v14, v15, "authenticate", v16, 2u);
      MEMORY[0x245D58570](v16, -1, -1);
    }

    (*(v13 + 8))(v10, v12);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_24401FA14;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24401FA1C;
  aBlock[3] = &block_descriptor_20;
  v18 = _Block_copy(aBlock);

  [a4 authenticateWithContext:a3 completion:v18];
  _Block_release(v18);
}

void sub_24401F3CC(uint64_t a1, void *a2, void (*a3)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v61 - v10;
  if (a2)
  {
    v12 = a2;
    v13 = sub_243F4DFA8();
    sub_243F4DE64(v13, v11);
    v14 = sub_2440D11E0();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v11, 1, v14) == 1)
    {
      sub_243F5FAB0(v11);
    }

    else
    {
      v37 = sub_2440D11C0();
      v38 = sub_2440D3490();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v62 = a3;
        v63 = a2;
        v64 = v61;
        *v39 = 136315138;
        v40 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38F0);
        v41 = sub_2440D3040();
        v43 = sub_243F4E6F8(v41, v42, &v64);

        *(v39 + 4) = v43;
        _os_log_impl(&dword_243F48000, v37, v38, "Authentication failed with error: %s", v39, 0xCu);
        v44 = v61;
        __swift_destroy_boxed_opaque_existential_0(v61);
        a3 = v62;
        MEMORY[0x245D58570](v44, -1, -1);
        MEMORY[0x245D58570](v39, -1, -1);
      }

      (*(v15 + 8))(v11, v14);
    }

    v45 = a2;
    v46 = sub_2440D0540();

    v47 = [v46 ak_isUserCancelError];
    if (v47)
    {
      sub_24401FB6C();
      v48 = swift_allocError();
      *v49 = 0;

      a2 = v48;
    }

    v64 = a2;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 1;
    v50 = a2;
    a3(&v64);

    v51 = a2;
    goto LABEL_23;
  }

  if (a1)
  {
    v16 = sub_2440D2FB0();
    if (*(a1 + 16))
    {
      v18 = sub_243FB03FC(v16, v17);
      v20 = v19;

      if (v20)
      {
        v64 = *(*(a1 + 56) + 8 * v18);
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC38D8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC38E8);
        if (swift_dynamicCast())
        {
          v21 = v63;
          v22 = sub_2440D10E0();
          if (v21[2])
          {
            v24 = sub_243FB03FC(v22, v23);
            v26 = v25;

            if (v26)
            {
              v27 = (v21[7] + 16 * v24);
              v28 = *v27;
              v29 = v27[1];

              v30 = sub_2440D2FB0();
              if (*(a1 + 16))
              {
                v32 = sub_243FB03FC(v30, v31);
                v34 = v33;

                if (v34)
                {
                  v63 = *(*(a1 + 56) + 8 * v32);
                  swift_unknownObjectRetain();
                  if (swift_dynamicCast())
                  {
                    v35 = v64;
                    v36 = v65;
                    v64 = v28;
                    v65 = v29;
                    v66 = v35;
                    v67 = v36;
                    v68 = 0;
                    a3(&v64);

                    return;
                  }
                }
              }

              else
              {
              }
            }
          }

          else
          {
          }

          v54 = sub_243F4DFA8();
          sub_243F4DE64(v54, v9);
          v55 = sub_2440D11E0();
          v56 = *(v55 - 8);
          if ((*(v56 + 48))(v9, 1, v55) == 1)
          {
            sub_243F5FAB0(v9);
          }

          else
          {
            v57 = sub_2440D11C0();
            v58 = sub_2440D3490();
            if (os_log_type_enabled(v57, v58))
            {
              v59 = swift_slowAlloc();
              *v59 = 0;
              _os_log_impl(&dword_243F48000, v57, v58, "Authentication fields are missing", v59, 2u);
              MEMORY[0x245D58570](v59, -1, -1);
            }

            (*(v56 + 8))(v9, v55);
          }

          sub_24401FB6C();
          v52 = swift_allocError();
          *v60 = 1;
          v64 = v52;
          v65 = 0;
          v66 = 0;
          v67 = 0;
          goto LABEL_22;
        }
      }
    }

    else
    {
    }
  }

  sub_24401FB6C();
  v52 = swift_allocError();
  *v53 = 2;
  v64 = v52;
  v65 = 0;
  v66 = 0;
  v67 = 0;
LABEL_22:
  v68 = 1;
  a3(&v64);
  v51 = v52;
LABEL_23:
}

uint64_t sub_24401F9DC()
{

  return swift_deallocObject();
}

uint64_t sub_24401FA1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC38D8);
    v4 = sub_2440D2EB0();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24401FAE8()
{
  result = qword_27EDC38D0;
  if (!qword_27EDC38D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC38D0);
  }

  return result;
}

unint64_t sub_24401FB6C()
{
  result = qword_27EDC38E0;
  if (!qword_27EDC38E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC38E0);
  }

  return result;
}

uint64_t sub_24401FBD4()
{
  sub_2440D1B70();
  v0 = *sub_244056A6C();
  return sub_2440D2300();
}

uint64_t sub_24401FC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *sub_244056A6C();
  sub_2440D04A0();

  sub_24401FD68(a5);

  sub_2440D2FF0();

  sub_243F4EF64();
  return sub_2440D2310();
}

uint64_t sub_24401FD68(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_24401FEEC(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x277D837D0];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_24401FEEC((v9 > 1), v8 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = sub_243F644C8();
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v8 + 1;
      sub_243F9C80C(&v11, v2 + 40 * v8 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_24401FE64(uint64_t a1, uint64_t a2)
{
  v4 = *sub_244056A6C();
  v5 = v4;

  return MEMORY[0x2821336E0](a1, a2, v4);
}

double sub_24401FEB8()
{
  sub_2440D1650();
  v1 = v0;
  sub_2440D1640();
  v3 = v1 + v2;
  sub_2440D1640();
  return v3 + v4;
}

void *sub_24401FEEC(void *a1, int64_t a2, char a3)
{
  result = sub_24401FF0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24401FF0C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3960);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_244020054@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3968);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3970);
  MEMORY[0x28223BE20](v9);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3978);
  MEMORY[0x28223BE20](v12);
  v14 = v29 - v13;
  if (*(v1 + 16) == 2)
  {
    *v14 = sub_2440D1C20();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC39A0);
    sub_244020474(v1, &v14[*(v15 + 44)]);
    sub_244020BA4(v1, &v30);
    v16 = swift_allocObject();
    v17 = v31;
    *(v16 + 1) = v30;
    *(v16 + 2) = v17;
    v18 = v33;
    *(v16 + 3) = v32;
    *(v16 + 4) = v18;
    v19 = &v14[*(v12 + 36)];
    *v19 = sub_244020BE4;
    v19[1] = v16;
    v19[2] = 0;
    v19[3] = 0;
    sub_243F5F574(v14, v11, &qword_27EDC3978);
    swift_storeEnumTagMultiPayload();
    sub_244020A28();
    sub_244020B18();
    sub_2440D1D20();
    v20 = v14;
    v21 = &qword_27EDC3978;
  }

  else
  {
    sub_243F5D774(v1 + 24, &v30);
    v22 = swift_allocObject();
    sub_243F9C80C(&v30, v22 + 16);
    sub_243FC005C(1162760004, 0xE400000000000000, sub_2440209D4, v22, &v30);
    v37 = v30;
    v34 = v30;
    v35 = v31;
    v29[0] = *(&v31 + 1);
    v36 = v32;
    sub_24401FBC0();
    v23 = sub_24401FBD4();
    v29[1] = v9;
    v29[2] = a1;
    v25 = v24;
    v27 = v26;
    sub_243FC0408();
    sub_2440D2430();
    sub_243F62C68(v23, v25, v27 & 1);

    sub_243FAFBC8(&v37);

    sub_2440D1800();
    sub_243F5EED4(v6, &qword_27EDC3968);
    sub_243F5F574(v8, v11, &qword_27EDC3968);
    swift_storeEnumTagMultiPayload();
    sub_244020A28();
    sub_244020B18();
    sub_2440D1D20();
    v20 = v8;
    v21 = &qword_27EDC3968;
  }

  return sub_243F5EED4(v20, v21);
}

uint64_t sub_244020474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v43 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3968);
  v3 = MEMORY[0x28223BE20](v42);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v41 = &v37 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC39C8);
  v7 = MEMORY[0x28223BE20](v40);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v37 - v10;
  sub_244020BA4(a1, &v56);
  v11 = swift_allocObject();
  v12 = v57;
  *(v11 + 16) = v56;
  *(v11 + 32) = v12;
  v13 = v59;
  *(v11 + 48) = v58;
  *(v11 + 64) = v13;
  *(v11 + 80) = 1;
  sub_243FC005C(0xD000000000000015, 0x80000002440EC9E0, sub_2440211B4, v11, v54);
  v14 = sub_2440D20D0();
  sub_244071180();
  sub_2440D13D0();
  LOBYTE(v44) = 0;
  v47 = v54[0];
  v48 = v54[1];
  *&v49 = v55;
  BYTE8(v49) = v14;
  *&v50 = v15;
  *(&v50 + 1) = v16;
  *&v51 = v17;
  *(&v51 + 1) = v18;
  v52 = 0;
  sub_24401FBC0();
  v19 = sub_24401FBD4();
  v21 = v20;
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC39D0);
  sub_2440210D8();
  sub_2440D2430();
  sub_243F62C68(v19, v21, v23 & 1);

  v58 = v49;
  v59 = v50;
  v60 = v51;
  v61 = v52;
  v56 = v47;
  v57 = v48;
  sub_243F5EED4(&v56, &qword_27EDC39D0);
  v24 = v38;
  sub_2440D1800();
  sub_243F5EED4(v9, &qword_27EDC39C8);
  sub_244020BA4(v39, &v47);
  v25 = swift_allocObject();
  v26 = v48;
  *(v25 + 16) = v47;
  *(v25 + 32) = v26;
  v27 = v50;
  *(v25 + 48) = v49;
  *(v25 + 64) = v27;
  *(v25 + 80) = 0;
  sub_243FC005C(0xD00000000000001CLL, 0x80000002440ECA30, sub_2440211B4, v25, &v47);
  v53 = v47;
  v44 = v47;
  v45 = v48;
  v46 = v49;
  sub_24401FBC0();
  v28 = sub_24401FBD4();
  v30 = v29;
  v32 = v31;
  sub_243FC0408();
  sub_2440D2430();
  sub_243F62C68(v28, v30, v32 & 1);

  sub_243FAFBC8(&v53);

  v33 = v41;
  sub_2440D1800();
  sub_243F5EED4(v5, &qword_27EDC3968);
  sub_243F5F574(v24, v9, &qword_27EDC39C8);
  sub_243F5F574(v33, v5, &qword_27EDC3968);
  v34 = v43;
  sub_243F5F574(v9, v43, &qword_27EDC39C8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC39E0);
  sub_243F5F574(v5, v34 + *(v35 + 48), &qword_27EDC3968);
  sub_243F5EED4(v33, &qword_27EDC3968);
  sub_243F5EED4(v24, &qword_27EDC39C8);
  sub_243F5EED4(v5, &qword_27EDC3968);
  return sub_243F5EED4(v9, &qword_27EDC39C8);
}

uint64_t sub_24402099C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2440209D4()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

unint64_t sub_244020A28()
{
  result = qword_27EDC3980;
  if (!qword_27EDC3980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3978);
    sub_244020AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3980);
  }

  return result;
}

unint64_t sub_244020AB4()
{
  result = qword_27EDC3988;
  if (!qword_27EDC3988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3988);
  }

  return result;
}

unint64_t sub_244020B18()
{
  result = qword_27EDC3998;
  if (!qword_27EDC3998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3968);
    sub_243FC0408();
    sub_2440150CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3998);
  }

  return result;
}

uint64_t sub_244020C40(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  result = sub_2440D2820();
  if ((v7 & 1) == 0)
  {
    sub_2440D2830();
    v5 = a1[6];
    v6 = a1[7];
    __swift_project_boxed_opaque_existential_1(a1 + 3, v5);
    return (*(v6 + 16))(a2 & 1, v5, v6);
  }

  return result;
}

uint64_t sub_244020D18@<X0>(char a1@<W1>, __int128 *a2@<X2>, uint64_t a3@<X8>)
{
  sub_2440D2810();
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = a1;
  return sub_243F9C80C(a2, a3 + 24);
}

unint64_t sub_244020DB0()
{
  result = qword_27EDC39A8;
  if (!qword_27EDC39A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC39A8);
  }

  return result;
}

uint64_t sub_244020E20@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = &type metadata for ConfirmationButtons_Previews.ButtonsHandler;
  *(a1 + 56) = &off_2857793C8;
  result = sub_2440D2810();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_244020E88(uint64_t a1)
{
  v2 = sub_24402107C();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_244020ED4(uint64_t a1)
{
  v2 = sub_24402107C();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_244020F20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_244020F68(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_244020FEC()
{
  result = qword_27EDC39B0;
  if (!qword_27EDC39B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC39B8);
    sub_244020A28();
    sub_244020B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC39B0);
  }

  return result;
}

unint64_t sub_24402107C()
{
  result = qword_27EDC39C0;
  if (!qword_27EDC39C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC39C0);
  }

  return result;
}

unint64_t sub_2440210D8()
{
  result = qword_27EDC39D8;
  if (!qword_27EDC39D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC39D0);
    sub_243FC0408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC39D8);
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 40);

  return swift_deallocObject();
}

uint64_t type metadata accessor for ParticlesView()
{
  result = qword_27EDCF050;
  if (!qword_27EDCF050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_244021204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  sub_2440D2810();
  *(a6 + 24) = v18;
  *(a6 + 32) = v19;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  v14 = type metadata accessor for ParticlesView();
  v15 = v14[6];
  v16 = sub_2440D1670();
  result = (*(*(v16 - 8) + 32))(a6 + v15, a4, v16);
  *(a6 + v14[7]) = a7;
  *(a6 + v14[8]) = a5 & 1;
  return result;
}

id sub_2440212EC()
{
  v0 = type metadata accessor for ParticlesView();
  v46 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8);
  v48 = v1;
  v49 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_2440D05F0();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v45 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  v12 = sub_243F4DF28();
  sub_243F4DE64(v12, v11);
  v13 = sub_2440D11E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(v11, 1, v13);
  v44 = v9;
  if (v16 == 1)
  {
    sub_243F5FAB0(v11);
  }

  else
  {
    v17 = sub_2440D11C0();
    v18 = sub_2440D3490();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_243F48000, v17, v18, "Making ParticlesView", v19, 2u);
      MEMORY[0x245D58570](v19, -1, -1);
    }

    (*(v14 + 8))(v11, v13);
  }

  v20 = *sub_244056A6C();
  v21 = sub_2440D2F80();
  v22 = sub_2440D2F80();
  v23 = [v20 URLForResource:v21 withExtension:v22];

  if (v23)
  {
    v24 = v50;
    sub_2440D05C0();

    v25 = [objc_allocWithZone(sub_2440D12A0()) init];
    v27 = v51;
    v26 = v52;
    v28 = v45;
    (*(v51 + 16))(v45, v24, v52);
    v29 = v49;
    sub_244022548(v47, v49);
    v30 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v31 = (v3 + *(v46 + 80) + v30) & ~*(v46 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v25;
    (*(v27 + 32))(v32 + v30, v28, v26);
    sub_244022730(v29, v32 + v31);
    v33 = v25;
    sub_2440D1270();

    v34 = [objc_allocWithZone(MEMORY[0x277D78160]) init];
    [v34 setScene_];
    v35 = objc_opt_self();
    v36 = v34;
    v37 = [v35 clearColor];
    [v36 setBackgroundColor_];

    (*(v27 + 8))(v24, v26);
    return v36;
  }

  else
  {
    v39 = v44;
    sub_243F4DE64(v12, v44);
    if (v15(v39, 1, v13) == 1)
    {
      sub_243F5FAB0(v39);
    }

    else
    {
      v40 = sub_2440D11C0();
      v41 = sub_2440D3470();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_243F48000, v40, v41, "Could not find bundle resource particles.vfx - particles will not be displayed", v42, 2u);
        MEMORY[0x245D58570](v42, -1, -1);
      }

      (*(v14 + 8))(v39, v13);
    }

    return [objc_allocWithZone(MEMORY[0x277D78160]) init];
  }
}

void sub_2440218B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v11 = sub_2440D1290();
  v5 = v11;
  sub_2440D12B0();
  v6 = MEMORY[0x277D83A90];
  v10 = MEMORY[0x277D83A90];
  v9[0] = 1028443341;
  sub_2440D12C0();
  __swift_destroy_boxed_opaque_existential_0(v9);
  v10 = v6;
  v9[0] = 1034147594;
  sub_2440D12C0();
  __swift_destroy_boxed_opaque_existential_0(v9);
  v10 = v6;
  v9[0] = 1072064102;
  sub_2440D12C0();
  __swift_destroy_boxed_opaque_existential_0(v9);
  v7 = type metadata accessor for ParticlesView();
  v8 = 1.0;
  if (*(a3 + *(v7 + 32)))
  {
    v8 = 2.0;
  }

  v10 = v6;
  *v9 = v8;
  sub_2440D12C0();
  __swift_destroy_boxed_opaque_existential_0(v9);
  v10 = v6;
  v9[0] = 1045220557;
  sub_2440D12C0();
  __swift_destroy_boxed_opaque_existential_0(v9);
  v10 = v6;
  v9[0] = 1045220557;
  sub_2440D12C0();

  __swift_destroy_boxed_opaque_existential_0(v9);
  sub_244021C94();
}

uint64_t sub_244021C94()
{
  v1 = type metadata accessor for ParticlesView();
  sub_2440D1650();
  v3 = v2;
  v4 = *(v0 + *(v1 + 28));
  sub_2440D1640();
  v6 = v4 + v5;
  v7 = sub_24401FEB8();
  v8 = v6 / v3;
  v9 = (v7 - v6) / v3;
  v10 = sub_244070850();
  v11 = v4;
  if (v4 >= *v10)
  {
    v11 = *sub_24407085C();
  }

  v12 = v4 + v4;
  LODWORD(v12) = 1066192077;
  LODWORD(v13) = vdup_lane_s32(*&v12, 0).u32[0];
  *&v12 = v8;
  HIDWORD(v13) = LODWORD(v12);
  v24 = v13;
  *&v13 = 0.0 - v9;
  LODWORD(v14) = 0;
  LODWORD(v15) = 0;
  HIDWORD(v15) = v13;
  v16 = 0.0 - (v7 - (v4 + v4 - v11)) / v3;
  *(&v14 + 1) = v16;
  v25 = v15;
  v26 = v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC39F8);
  v31 = v17;
  v28 = v24;
  sub_2440D12C0();
  __swift_destroy_boxed_opaque_existential_0(&v28);
  v31 = v17;
  v28 = v25;
  sub_2440D12C0();
  __swift_destroy_boxed_opaque_existential_0(&v28);
  v31 = v17;
  v28 = v26;
  sub_2440D12C0();
  __swift_destroy_boxed_opaque_existential_0(&v28);
  v18 = v0[4];
  LOBYTE(v28) = *(v0 + 24);
  v29 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC39F0);
  sub_2440D2820();
  if (v27 > 3u)
  {
    v22 = 0;
  }

  else
  {
    v19 = v0[1];
    v20 = *(v0 + 16);
    v28 = *v0;
    v29 = v19;
    v30 = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC39E8);
    MEMORY[0x245D56840](&v27, v21);
    v22 = v27;
  }

  v31 = MEMORY[0x277D83B88];
  v28 = v22;
  sub_2440D12C0();
  return __swift_destroy_boxed_opaque_existential_0(&v28);
}

void sub_244021F78(void *a1)
{
  v1 = [a1 scene];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = sub_2440D1280();

  if (v3 >> 62)
  {
    if (sub_2440D38E0() >= 1)
    {
      goto LABEL_4;
    }

LABEL_10:

    return;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D57760](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  sub_244021C94();
}

uint64_t sub_244022088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_244022ED8(&qword_27EDC3A38);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_244022108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_244022ED8(&qword_27EDC3A38);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_244022188()
{
  sub_244022ED8(&qword_27EDC3A38);
  sub_2440D1CE0();
  __break(1u);
}

uint64_t sub_2440221CC()
{
  v1 = *v0;
  sub_2440D3B20();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x245D57A30](v2);
  return sub_2440D3B50();
}

uint64_t sub_24402221C()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x245D57A30](v1);
}

uint64_t sub_244022254()
{
  v1 = *v0;
  sub_2440D3B20();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x245D57A30](v2);
  return sub_2440D3B50();
}

void *sub_2440222A0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_2440222C0(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

unint64_t sub_2440222D8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_244022A20(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_244022310()
{
  v1 = *v0;
  v2 = 0x676E6974696177;
  v3 = 0x726F727265;
  v4 = 0x73736563637573;
  if (v1 != 3)
  {
    v4 = 0x6E6564646968;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7964616572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2440223A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2440D2970();
  v4 = type metadata accessor for ParticlesView();
  v5 = v4[6];
  v6 = sub_2440D1670();
  (*(*(v6 - 8) + 16))(a2 + v5, a1, v6);
  result = sub_2440D2810();
  *(a2 + 24) = 1;
  *(a2 + 32) = v8;
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + v4[7]) = 0x4069000000000000;
  *(a2 + v4[8]) = 0;
  return result;
}

uint64_t sub_2440224B0(uint64_t a1)
{
  v2 = sub_244022E84();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_2440224FC(uint64_t a1)
{
  v2 = sub_244022E84();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_244022548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticlesView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2440225AC()
{
  v1 = sub_2440D05F0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for ParticlesView() - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  v7 = v5[8];
  v8 = sub_2440D1670();
  (*(*(v8 - 8) + 8))(v0 + v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_244022730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticlesView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_244022794()
{
  v1 = *(sub_2440D05F0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for ParticlesView() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_2440218B0(v5, v0 + v2, v6);
}

id sub_244022864(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_243F4DF28();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5FAB0(v4);
  }

  else
  {
    v8 = sub_2440D11C0();
    v9 = sub_2440D3460();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_243F48000, v8, v9, "dismantle ParticlesView", v10, 2u);
      MEMORY[0x245D58570](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  v11 = [a1 scene];
  if (v11)
  {
    v12 = v11;
    sub_2440D1260();
  }

  return [a1 setScene_];
}

unint64_t sub_244022A20(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_244022A68()
{
  result = qword_27EDC3A00;
  if (!qword_27EDC3A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3A00);
  }

  return result;
}

unint64_t sub_244022AC4()
{
  result = qword_27EDC3A08;
  if (!qword_27EDC3A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3A08);
  }

  return result;
}

uint64_t sub_244022B48(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2440D1670();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_244022C08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2440D1670();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_244022CAC()
{
  sub_244022D98(319, &qword_27EDC3A10, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_244022D98(319, &qword_27EDC3A18, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2440D1670();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_244022D98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ParticlesState);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_244022E20()
{
  result = qword_27EDC3A20;
  if (!qword_27EDC3A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3A20);
  }

  return result;
}

unint64_t sub_244022E84()
{
  result = qword_27EDC3A30;
  if (!qword_27EDC3A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3A30);
  }

  return result;
}

uint64_t sub_244022ED8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ParticlesView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_244022F1C()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_dismissalExpected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_244022F60(char a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_dismissalExpected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_244022FE0(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  swift_unknownObjectWeakAssign();
  v15 = sub_243F4E07C();
  sub_243F4DE64(v15, v14);
  v16 = sub_2440D11E0();
  v17 = *(v16 - 8);
  v36 = *(v17 + 48);
  if (v36(v14, 1, v16) == 1)
  {
    sub_243F5EED4(v14, &qword_27EDC0A50);
  }

  else
  {
    v34 = v16;
    v35 = a3;
    v18 = a2;
    v19 = v17;
    v20 = sub_243F4E2F4();
    v21 = sub_243F4E2FC();
    v33 = v15;
    v22 = v20 & 1;
    v17 = v19;
    a2 = v18;
    v16 = v34;
    a3 = v35;
    sub_243F4E308(v22, v5, 0xD000000000000026, 0x80000002440ECB60, v21, v23);
    v15 = v33;

    (*(v17 + 8))(v14, v16);
  }

  v24 = sub_244023314(a2);
  if (v24)
  {
    v25 = v24;
    v26 = [a3 _endpoint];
    v27 = (v5 + OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_context);
    v28 = *(v5 + OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_context);
    *v27 = v25;
    v27[1] = v26;
    v27[2] = a4;
    swift_unknownObjectRetain();
    return sub_244026738(v28);
  }

  else
  {
    sub_243F4DE64(v15, v12);
    if (v36(v12, 1, v16) == 1)
    {
      return sub_243F5EED4(v12, &qword_27EDC0A50);
    }

    else
    {
      v30 = sub_2440D11C0();
      v31 = sub_2440D3470();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_243F48000, v30, v31, "Cannot convert userInfo", v32, 2u);
        MEMORY[0x245D58570](v32, -1, -1);
      }

      return (*(v17 + 8))(v12, v16);
    }
  }
}

unint64_t sub_244023314(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3B68);
    v2 = sub_2440D3910();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_243F73C3C(*(a1 + 48) + 40 * v12, v27);
        sub_243F4F028(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_243F73C3C(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_243F4F028(v25 + 8, v20);
        sub_243F5EED4(v24, &unk_27EDC3B70);
        v21 = v18;
        sub_243F734CC(v20, v22);
        v13 = v21;
        sub_243F734CC(v22, v23);
        sub_243F734CC(v23, &v21);
        result = sub_243FB03FC(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_243F734CC(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_243F734CC(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_243F5EED4(v24, &unk_27EDC3B70);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id BaseRemoteSceneController.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &ObjectType - v3;
  v5 = sub_243F4E07C();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = v1;
    v9 = sub_2440D11C0();
    v10 = sub_2440D3460();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3A70);
      v13 = sub_2440D3040();
      v15 = sub_243F4E6F8(v13, v14, &v19);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_243F48000, v9, v10, "%s: destroyed", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x245D58570](v12, -1, -1);
      MEMORY[0x245D58570](v11, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  v16 = type metadata accessor for BaseRemoteSceneController();
  v20.receiver = v1;
  v20.super_class = v16;
  return objc_msgSendSuper2(&v20, sel_dealloc);
}

uint64_t sub_2440238D8(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_243F4E07C();
  sub_243F4DE64(v7, v6);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_243F5EED4(v6, &qword_27EDC0A50);
  }

  else
  {
    v10 = sub_243F4E2F4();
    v11 = sub_243F4E2FC();
    sub_243F4E308(v10 & 1, v2, 0xD000000000000012, 0x80000002440ECB90, v11, v12);

    (*(v9 + 8))(v6, v8);
  }

  v13 = type metadata accessor for BaseRemoteSceneController();
  v15.receiver = v2;
  v15.super_class = v13;
  objc_msgSendSuper2(&v15, sel_viewWillAppear_, a1 & 1);
  sub_243FAFFB0();

  BrightnessManager.increaseBrightnessIfNeeded()();
}

uint64_t sub_244023AD4(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v10 = sub_243F4E07C();
  sub_243F4DE64(v10, v9);
  v11 = sub_2440D11E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) == 1)
  {
    sub_243F5EED4(v9, &qword_27EDC0A50);
  }

  else
  {
    v39 = v3;
    v38 = "viewWillAppear(_:)";
    v3 = v10;
    v14 = v11;
    v15 = v7;
    v16 = v12;
    v17 = v2;
    v18 = sub_243F4E2F4();
    v19 = sub_243F4E2FC();
    v20 = v18 & 1;
    v2 = v17;
    v12 = v16;
    v7 = v15;
    v11 = v14;
    v10 = v3;
    LOBYTE(v3) = v39;
    sub_243F4E308(v20, v2, 0xD000000000000011, v38 | 0x8000000000000000, v19, v21);

    (*(v12 + 8))(v9, v11);
  }

  v22 = type metadata accessor for BaseRemoteSceneController();
  v42.receiver = v2;
  v42.super_class = v22;
  objc_msgSendSuper2(&v42, sel_viewDidAppear_, v3 & 1);
  sub_243F4DE64(v10, v7);
  if (v13(v7, 1, v11) == 1)
  {
    sub_243F5EED4(v7, &qword_27EDC0A50);
  }

  else
  {
    v23 = v2;
    v24 = sub_2440D11C0();
    v25 = sub_2440D3490();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = v2;
      v28 = swift_slowAlloc();
      v41 = v28;
      *v26 = 136315394;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3A70);
      v29 = sub_2440D3040();
      v31 = sub_243F4E6F8(v29, v30, &v41);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2048;
      v32 = [objc_opt_self() sharedApplication];
      v33 = [v32 applicationState];

      *(v26 + 14) = v33;
      _os_log_impl(&dword_243F48000, v24, v25, "%s - appState: %ld", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v34 = v28;
      v2 = v27;
      MEMORY[0x245D58570](v34, -1, -1);
      MEMORY[0x245D58570](v26, -1, -1);
    }

    (*(v12 + 8))(v7, v11);
  }

  v35 = *&v2[OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_walletSuppressor + 24];
  v36 = *&v2[OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_walletSuppressor + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_walletSuppressor], v35);
  return (*(v36 + 8))(v35, v36);
}

id sub_244023EFC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &ObjectType - v6;
  v8 = sub_243F4E07C();
  sub_243F4DE64(v8, v7);
  v9 = sub_2440D11E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    sub_243F5EED4(v7, &qword_27EDC0A50);
  }

  else
  {
    v12 = sub_243F4E2F4();
    v13 = sub_243F4E2FC();
    sub_243F4E308(v12 & 1, v1, 0x4C64694477656976, 0xED0000292864616FLL, v13, v14);

    (*(v10 + 8))(v7, v9);
  }

  v15 = type metadata accessor for BaseRemoteSceneController();
  v34.receiver = v1;
  v34.super_class = v15;
  v16 = objc_msgSendSuper2(&v34, sel_viewDidLoad);
  v17 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x178))(v16);
  v18 = v1 + OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_context;
  v19 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_context);
  if (v19)
  {
    v21 = *(v18 + 1);
    v20 = *(v18 + 2);
    v22 = *((*v17 & *v1) + 0x148);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v22(v19, v21, v20);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243F4DE64(v8, v5);
    if (v11(v5, 1, v9) == 1)
    {
      sub_243F5EED4(v5, &qword_27EDC0A50);
    }

    else
    {
      v24 = v1;
      v25 = sub_2440D11C0();
      v26 = sub_2440D3460();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v33 = v28;
        *v27 = 136315138;
        ObjectType = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3A70);
        v29 = sub_2440D3040();
        v31 = sub_243F4E6F8(v29, v30, &v33);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_243F48000, v25, v26, "%s: no context", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x245D58570](v28, -1, -1);
        MEMORY[0x245D58570](v27, -1, -1);
      }

      (*(v10 + 8))(v5, v9);
    }

    return [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_244024350(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_243F4E07C();
  sub_243F4DE64(v7, v6);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_243F5EED4(v6, &qword_27EDC0A50);
  }

  else
  {
    v10 = sub_243F4E2F4();
    v11 = sub_243F4E2FC();
    sub_243F4E308(v10 & 1, v2, 0xD000000000000014, 0x80000002440ECBD0, v11, v12);

    (*(v9 + 8))(v6, v8);
  }

  v13 = type metadata accessor for BaseRemoteSceneController();
  v15.receiver = v2;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, sel_viewDidDisappear_, a1 & 1);
}

void sub_2440245DC()
{
  v1 = v0;
  sub_2440D1180();
  v2 = sub_2440D1160();
  (*((*MEMORY[0x277D85000] & *v0) + 0x138))(v2);
  v3 = sub_243FA9620();
  swift_beginAccess();
  v4 = *(**v3 + 456);

  v4(v5);

  v6 = v1 + OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_context;
  v7 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_context);
  if (v7)
  {
    v8 = *(v6 + 2);
    sub_244026A70(v7);
    swift_unknownObjectRetain();
    sub_244026738(v7);
    aBlock[4] = sub_244024834;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243FDB508;
    aBlock[3] = &block_descriptor_21;
    v9 = _Block_copy(aBlock);
    [v8 invalidateRemoteUI_];
    swift_unknownObjectRelease();
    _Block_release(v9);
  }
}

void sub_2440247AC()
{
  sub_243FAFFB0();

  BrightnessManager.resetBrightnessToSystemDefault()();

  v0 = [objc_opt_self() sharedApplication];
  [v0 setIdleTimerDisabled_];
}

uint64_t sub_244024838(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_243F4E07C();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  v9 = a1;
  v10 = sub_2440D11C0();
  v11 = sub_2440D3490();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    if (a1)
    {
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    *(v12 + 4) = v15;
    *v13 = v16;
    _os_log_impl(&dword_243F48000, v10, v11, "could not invalidate remote ui - %@", v12, 0xCu);
    sub_243F5EED4(v13, &qword_27EDC0418);
    MEMORY[0x245D58570](v13, -1, -1);
    MEMORY[0x245D58570](v12, -1, -1);
  }

  return (*(v7 + 8))(v4, v6);
}

uint64_t sub_244024A54()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_243F4E07C();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0xD000000000000013, 0x80000002440ECBF0, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  sub_244035690(*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_suppressor));
  v11 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_walletSuppressor + 24);
  v12 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_walletSuppressor + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_walletSuppressor), v11);
  v13 = (*(v12 + 16))(v11, v12);
  return (*((*MEMORY[0x277D85000] & *v1) + 0x180))(v13);
}

void sub_244024C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v54 - v11;
  v13 = sub_243F4E07C();
  sub_243F4DE64(v13, v12);
  v14 = sub_2440D11E0();
  v15 = *(v14 - 8);
  v55 = *(v15 + 48);
  v56 = v15 + 48;
  v16 = v55(v12, 1, v14);
  v54 = v15;
  if (v16 == 1)
  {
    v17 = v14;
    sub_243F5EED4(v12, &qword_27EDC0A50);
  }

  else
  {
    v18 = sub_243F4E2F4();
    v19 = sub_243F4E2FC();
    sub_243F4E308(v18 & 1, v4, 0xD000000000000010, 0x80000002440ECC10, v19, v20);

    v17 = v14;
    (*(v15 + 8))(v12, v14);
  }

  v21 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v4) + 0x168))(0);
  v22 = [v4 view];
  if (!v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v22;
  [v22 frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v58.origin.x = v25;
  v58.origin.y = v27;
  v58.size.width = v29;
  v58.size.height = v31;
  Width = CGRectGetWidth(v58);
  v33 = [v4 view];
  if (!v33)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v34 = v33;
  [v33 frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v59.origin.x = v36;
  v59.origin.y = v38;
  v59.size.width = v40;
  v59.size.height = v42;
  Height = CGRectGetHeight(v59);
  if (Height >= Width)
  {
LABEL_14:
    v53 = [objc_allocWithZone(MEMORY[0x277CCAEA0]) init];
    [v53 _setEndpoint_];
    (*((*v21 & *v4) + 0x170))(v57, a2, a3, v53);

    return;
  }

  v44 = Height;
  v45 = sub_243F4DF28();
  sub_243F4DE64(v45, v10);
  if (v55(v10, 1, v17) == 1)
  {
    sub_243F5EED4(v10, &qword_27EDC0A50);
  }

  else
  {
    v46 = sub_2440D11C0();
    v47 = sub_2440D3460();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v56 = a3;
      v49 = v48;
      *v48 = 134218240;
      *(v48 + 4) = v44;
      *(v48 + 12) = 2048;
      *(v48 + 14) = Width;
      _os_log_impl(&dword_243F48000, v46, v47, "Correcting oriented frame: w=%f, h=%f", v48, 0x16u);
      v50 = v49;
      a3 = v56;
      MEMORY[0x245D58570](v50, -1, -1);
    }

    (*(v54 + 8))(v10, v17);
  }

  v51 = [v4 view];
  if (v51)
  {
    v52 = v51;
    [v51 setFrame_];

    goto LABEL_14;
  }

LABEL_17:
  __break(1u);
}

id sub_2440250F0(unsigned __int8 a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_243F4E07C();
  sub_243F4DE64(v7, v6);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_243F5EED4(v6, &qword_27EDC0A50);
  }

  else
  {
    v10 = sub_2440D11C0();
    v11 = sub_2440D3490();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v12 = 136446210;
      v20 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3A90);
      v13 = sub_2440D3040();
      v15 = sub_243F4E6F8(v13, v14, &v21);

      *(v12 + 4) = v15;
      _os_log_impl(&dword_243F48000, v10, v11, "Interruption: %{public}s", v12, 0xCu);
      v16 = v19;
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x245D58570](v16, -1, -1);
      MEMORY[0x245D58570](v12, -1, -1);
    }

    (*(v9 + 8))(v6, v8);
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return [v2 dismissViewControllerAnimated:1 completion:0];
    }

    goto LABEL_11;
  }

  if (a1 - 1 < 3)
  {
LABEL_11:
    *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_showStatusBar) = 0;
    return [v2 setNeedsStatusBarAppearanceUpdate];
  }

  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_showStatusBar) = 1;
  return [v2 setNeedsStatusBarAppearanceUpdate];
}

void sub_24402537C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_243F4E07C();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
    if ((sub_243FC0F94() & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    (*((*MEMORY[0x277D85000] & *v1) + 0x168))(1);
    return;
  }

  v11 = sub_243F4E2F4();
  v12 = sub_243F4E2FC();
  sub_243F4E308(v11 & 1, v1, 0xD000000000000018, 0x80000002440ECC30, v12, v13);

  (*(v7 + 8))(v4, v6);
  if (sub_243FC0F94())
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = [objc_allocWithZone(MEMORY[0x277D759A8]) initWithTarget:v1 action:sel_handlePanWithSender_];
  [v8 setEdges_];
  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 addGestureRecognizer_];
  }

  else
  {
    __break(1u);
  }
}

id sub_2440255B0(void *a1)
{
  v2 = v1;
  v4 = sub_2440D2C80();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2440D2CA0();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = sub_243F4E07C();
  sub_243F4DE64(v13, v12);
  v14 = sub_2440D11E0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v12, 1, v14) == 1)
  {
    sub_243F5EED4(v12, &qword_27EDC0A50);
  }

  else
  {
    v38 = "temGestures";
    aBlock = 0;
    v49 = 0xE000000000000000;
    v40 = v13;
    sub_2440D3830();

    aBlock = 0x73207265646E6573;
    v49 = 0xEF203D2065746174;
    v47 = [a1 state];
    v17 = sub_2440D39C0();
    v39 = v14;
    v18 = v16;
    v19 = a1;
    MEMORY[0x245D57000](v17);

    v20 = v15;
    v21 = v10;
    v22 = v2;
    v23 = aBlock;
    v24 = v49;
    v25 = sub_243F4E2F4();
    v26 = v23;
    a1 = v19;
    v16 = v18;
    v14 = v39;
    sub_243F4E308(v25 & 1, v22, 0xD000000000000012, v38 | 0x8000000000000000, v26, v24);
    v13 = v40;
    v2 = v22;
    v10 = v21;
    v15 = v20;

    (*(v20 + 8))(v12, v14);
  }

  result = [a1 state];
  if (result == 3 && (*(v2 + OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_homeAffordanceOn) & 1) == 0)
  {
    sub_243F4DE64(v13, v10);
    if (v16(v10, 1, v14) == 1)
    {
      sub_243F5EED4(v10, &qword_27EDC0A50);
    }

    else
    {
      v28 = sub_2440D11C0();
      v29 = sub_2440D3460();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_243F48000, v28, v29, "Bottom pan detected, enabling home indicator for 8 seconds", v30, 2u);
        MEMORY[0x245D58570](v30, -1, -1);
      }

      (*(v15 + 8))(v10, v14);
    }

    (*((*MEMORY[0x277D85000] & *v2) + 0x168))(1);
    sub_243F5DB84();
    v31 = sub_2440D3530();
    v32 = swift_allocObject();
    *(v32 + 16) = v2;
    v52 = sub_244026BFC;
    v53 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v49 = 1107296256;
    v50 = sub_243F5F604;
    v51 = &block_descriptor_29_0;
    v33 = _Block_copy(&aBlock);
    v34 = v2;

    v35 = v41;
    sub_2440D2C90();
    aBlock = MEMORY[0x277D84F90];
    sub_243F91D78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
    sub_243F73DE0();
    v36 = v43;
    v37 = v46;
    sub_2440D3710();
    MEMORY[0x245D57440](0, v35, v36, v33);
    _Block_release(v33);

    (*(v45 + 8))(v36, v37);
    return (*(v42 + 8))(v35, v44);
  }

  return result;
}

void *sub_244025C08(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &aBlock - v5;
  v7 = sub_243F4E07C();
  sub_243F4DE64(v7, v6);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_243F5EED4(v6, &qword_27EDC0A50);
  }

  else
  {
    aBlock = 0;
    v23 = 0xE000000000000000;
    if (a1)
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (a1)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    MEMORY[0x245D57000](v10, v11);

    v12 = aBlock;
    v13 = v23;
    v14 = sub_243F4E2F4();
    sub_243F4E308(v14 & 1, v2, 0xD000000000000018, 0x80000002440ECC80, v12, v13);

    (*(v9 + 8))(v6, v8);
  }

  v15 = a1 & 1;
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_homeAffordanceOn) = v15;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = [result _FBSScene];

    v19 = swift_allocObject();
    *(v19 + 16) = v15;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_244026AE4;
    *(v20 + 24) = v19;
    v26 = sub_244026AFC;
    v27 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_2440260D0;
    v25 = &block_descriptor_6_0;
    v21 = _Block_copy(&aBlock);

    [v18 updateClientSettingsWithBlock_];

    _Block_release(v21);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_244025F18(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_243F4E07C();
  sub_243F4DE64(v7, v6);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_243F5EED4(v6, &qword_27EDC0A50);
  }

  else
  {
    v10 = sub_2440D11C0();
    v11 = sub_2440D3490();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = a2 & 1;
      _os_log_impl(&dword_243F48000, v10, v11, "mutableSettings.allowsMenuButtonDismissal = %{BOOL}d", v12, 8u);
      MEMORY[0x245D58570](v12, -1, -1);
    }

    (*(v9 + 8))(v6, v8);
  }

  return [a1 setAllowsMenuButtonDismissal_];
}

void sub_2440260D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_24402611C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_243F4E07C();
  sub_243F4DE64(v3, v2);
  v4 = sub_2440D11E0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    return sub_243F5EED4(v2, &qword_27EDC0A50);
  }

  v7 = sub_2440D11C0();
  v8 = sub_2440D3460();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_243F48000, v7, v8, "UI not configured", v9, 2u);
    MEMORY[0x245D58570](v9, -1, -1);
  }

  return (*(v5 + 8))(v2, v4);
}

id BaseRemoteSceneController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2440D2F80();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id BaseRemoteSceneController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_suppressor;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3A40);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2440D8A70;
  v9 = type metadata accessor for ProxCardSuppressor();
  v10 = ProxCardSuppressor.__allocating_init()();
  *(v8 + 56) = v9;
  *(v8 + 64) = &protocol witness table for ProxCardSuppressor;
  *(v8 + 32) = v10;
  v11 = type metadata accessor for NameDropSuppressor();
  v12 = sub_243FC5554();
  *(v8 + 96) = v11;
  *(v8 + 104) = &protocol witness table for NameDropSuppressor;
  *(v8 + 72) = v12;
  v13 = type metadata accessor for AXSecurePayFeatureSuppressor();
  v14 = sub_243FC5554();
  *(v8 + 136) = v13;
  *(v8 + 144) = &protocol witness table for AXSecurePayFeatureSuppressor;
  *(v8 + 112) = v14;
  *&v4[v7] = v8;
  v15 = &v4[OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_walletSuppressor];
  v16 = type metadata accessor for WalletSuppressor();
  v17 = WalletSuppressor.__allocating_init()();
  v15[3] = v16;
  v15[4] = &protocol witness table for WalletSuppressor;
  *v15 = v17;
  v4[OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_dismissalExpected] = 0;
  *&v4[OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_hideMenuIndicatorTimer] = 0;
  v4[OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_showStatusBar] = 0;
  v18 = &v4[OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_context];
  v18[1] = 0;
  v18[2] = 0;
  *v18 = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_homeAffordanceOn] = 0;
  if (a2)
  {
    v19 = sub_2440D2F80();
  }

  else
  {
    v19 = 0;
  }

  v22.receiver = v4;
  v22.super_class = type metadata accessor for BaseRemoteSceneController();
  v20 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, v19, a3);

  return v20;
}

id BaseRemoteSceneController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BaseRemoteSceneController.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_suppressor;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3A40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2440D8A70;
  v6 = type metadata accessor for ProxCardSuppressor();
  v7 = ProxCardSuppressor.__allocating_init()();
  *(v5 + 56) = v6;
  *(v5 + 64) = &protocol witness table for ProxCardSuppressor;
  *(v5 + 32) = v7;
  v8 = type metadata accessor for NameDropSuppressor();
  v9 = sub_243FC5554();
  *(v5 + 96) = v8;
  *(v5 + 104) = &protocol witness table for NameDropSuppressor;
  *(v5 + 72) = v9;
  v10 = type metadata accessor for AXSecurePayFeatureSuppressor();
  v11 = sub_243FC5554();
  *(v5 + 136) = v10;
  *(v5 + 144) = &protocol witness table for AXSecurePayFeatureSuppressor;
  *(v5 + 112) = v11;
  *&v2[v4] = v5;
  v12 = &v2[OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_walletSuppressor];
  v13 = type metadata accessor for WalletSuppressor();
  v14 = WalletSuppressor.__allocating_init()();
  v12[3] = v13;
  v12[4] = &protocol witness table for WalletSuppressor;
  *v12 = v14;
  v2[OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_dismissalExpected] = 0;
  *&v2[OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_hideMenuIndicatorTimer] = 0;
  v2[OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_showStatusBar] = 0;
  v15 = &v2[OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_context];
  v15[1] = 0;
  v15[2] = 0;
  *v15 = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_homeAffordanceOn] = 0;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for BaseRemoteSceneController();
  v16 = objc_msgSendSuper2(&v18, sel_initWithCoder_, a1);

  if (v16)
  {
  }

  return v16;
}

uint64_t sub_244026738(uint64_t result)
{
  if (result)
  {

    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2440267A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &aBlock[-1] - v3;
  v5 = sub_243F4E07C();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0xD00000000000001DLL, 0x80000002440ECE60, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  if (([v1 isViewLoaded] & 1) == 0)
  {
    (*((*MEMORY[0x277D85000] & *v1) + 0x138))();
  }

  v11 = OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_dismissalExpected;
  swift_beginAccess();
  *(v1 + v11) = 1;
  v12 = (v1 + OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_context);
  v13 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_context);
  if (v13)
  {
    v14 = v12[2];
    sub_244026A70(v13);
    swift_unknownObjectRetain();
    sub_244026738(v13);
    aBlock[4] = sub_244026E6C;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243FDB508;
    aBlock[3] = &block_descriptor_41_0;
    v15 = _Block_copy(aBlock);
    [v14 invalidateRemoteUI_];
    swift_unknownObjectRelease();
    _Block_release(v15);
    v16 = *v12;
  }

  else
  {
    v16 = 0;
  }

  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
  return sub_244026738(v16);
}

uint64_t sub_244026A70(uint64_t result)
{
  if (result)
  {

    swift_unknownObjectRetain();

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_244026BC4()
{

  return swift_deallocObject();
}

void sub_244026BFC()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_244026D48;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_243F81670;
  v7[3] = &block_descriptor_35;
  v4 = _Block_copy(v7);

  v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:8.0];
  _Block_release(v4);
  v6 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_hideMenuIndicatorTimer);
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_hideMenuIndicatorTimer) = v5;
}

uint64_t sub_244026D10()
{
  MEMORY[0x245D58620](v0 + 16);

  return swift_deallocObject();
}

void sub_244026D48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x168))(0);
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_hideMenuIndicatorTimer];
    *&v2[OBJC_IVAR____TtC19ContactlessReaderUI25BaseRemoteSceneController_hideMenuIndicatorTimer] = 0;
  }
}

uint64_t sub_244026E10()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_244026E80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2440D1AF0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3B88);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for RegSheet();
  sub_243F5F574(v1 + *(v10 + 20), v9, &qword_27EDC3B88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2440D1630();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2440D3480();
    v13 = sub_2440D2070();
    sub_2440D11B0();

    sub_2440D1AE0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t type metadata accessor for RegSheet()
{
  result = qword_27EDCF2F0;
  if (!qword_27EDCF2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2440270F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = type metadata accessor for RegSheet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = type metadata accessor for RegSheet;
  sub_2440300A4(v1, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RegSheet);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v20[1] = v7;
  sub_244027460(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = *sub_243FFAF58();

  v9 = sub_2440D20B0();
  v27 = sub_2440274C4;
  v28 = v7;
  v29 = v8;
  v30 = v9;
  v10 = *v2;
  v22 = *(v2 + 8);
  v23 = v10;
  v21 = *(v2 + 16);
  v20[3] = type metadata accessor for RegistrationViewModel();
  v20[2] = sub_24403005C(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
  v11 = *sub_2440D1490();
  v12 = (*(v11 + 432))();

  v26 = v12 & 1;
  sub_2440300A4(v2, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  v13 = swift_allocObject();
  sub_244027460(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3B90);
  sub_24402CBB4();
  v14 = v24;
  sub_2440D25D0();

  sub_2440300A4(v2, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  v15 = swift_allocObject();
  sub_244027460(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v6);
  v16 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3BB0) + 36));
  *v16 = sub_24402CDD0;
  v16[1] = v15;
  v16[2] = 0;
  v16[3] = 0;
  v17 = sub_2440D1490();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3BB8);
  v19 = (v14 + *(result + 36));
  *v19 = 0;
  v19[1] = 0;
  v19[2] = sub_24402CE30;
  v19[3] = v17;
  return result;
}

uint64_t sub_244027460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2440274C4()
{
  type metadata accessor for RegSheet();
  sub_2440D1650();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3C38);
  sub_24402E540();
  return sub_2440D1820();
}

uint64_t sub_244027594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v92 = a2;
  v110 = a3;
  v111 = a1;
  v99 = type metadata accessor for RegSheet();
  v108 = *(v99 - 1);
  MEMORY[0x28223BE20](v99);
  v114 = v8;
  v109 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440D1720();
  v88 = *(v9 - 8);
  v89 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v87 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v86 = &v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3CB8);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v83 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3CA8);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v83 = &v83 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3C90);
  MEMORY[0x28223BE20](v85);
  v21 = &v83 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3C80);
  v23 = *(v22 - 8);
  v90 = v22;
  v91 = v23;
  MEMORY[0x28223BE20](v22);
  v84 = &v83 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3D80);
  OpaqueTypeConformance2 = *(v25 - 8);
  v94 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v83 - v26;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3C70);
  MEMORY[0x28223BE20](v96);
  v95 = &v83 - v28;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3C60);
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v97 = &v83 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3C50);
  v101 = *(v30 - 8);
  v102 = v30;
  MEMORY[0x28223BE20](v30);
  v112 = &v83 - v31;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3C48);
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v113 = &v83 - v32;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3D88);
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v103 = &v83 - v33;
  sub_2440D2090();
  v117 = a1;
  v118 = a4;
  v119 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3D90);
  sub_243F5DD50(&qword_27EDC3D98, &qword_27EDC3D90);
  sub_2440D13E0();
  v34 = *(v14 + 44);
  v35 = v27;
  *&v16[v34] = 0x4000000000000000;
  sub_2440D2AE0();
  sub_2440D18E0();
  v36 = v83;
  sub_243F681C8(v16, v83, &qword_27EDC3CB8);
  v37 = (v36 + *(v18 + 44));
  v38 = v140;
  v37[4] = v139;
  v37[5] = v38;
  v37[6] = v141;
  v39 = v136;
  *v37 = v135;
  v37[1] = v39;
  v40 = v138;
  v37[2] = v137;
  v37[3] = v40;
  v41 = v86;
  sub_2440D1710();
  v42 = v88;
  v43 = v89;
  (*(v88 + 16))(v87, v41, v89);
  sub_24403005C(&qword_27EDC0C08, MEMORY[0x277CDF858]);
  v44 = v43;
  v45 = sub_2440D1610();
  (*(v42 + 8))(v41, v44);
  sub_243F681C8(v36, v21, &qword_27EDC3CA8);
  v46 = v85;
  *&v21[*(v85 + 36)] = v45;
  v47 = sub_24402E89C();
  v48 = v84;
  sub_2440D2520();
  sub_243F5EED4(v21, &qword_27EDC3C90);
  sub_2440D1C30();
  v49 = v111;
  v115 = v111;
  v116 = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3C88);
  *&v130 = v46;
  *(&v130 + 1) = v47;
  swift_getOpaqueTypeConformance2();
  sub_24402EAC4();
  v50 = v90;
  sub_2440D23B0();
  (*(v91 + 8))(v48, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2440D66C0;
  LOBYTE(v42) = sub_2440D20C0();
  *(inited + 32) = v42;
  v52 = sub_2440D20D0();
  *(inited + 33) = v52;
  v53 = sub_2440D20F0();
  sub_2440D20F0();
  if (sub_2440D20F0() != v42)
  {
    v53 = sub_2440D20F0();
  }

  sub_2440D20F0();
  if (sub_2440D20F0() != v52)
  {
    v53 = sub_2440D20F0();
  }

  v54 = sub_2440D1860();
  v55 = v95;
  (*(OpaqueTypeConformance2 + 32))(v95, v35, v94);
  v56 = v96;
  v57 = v55 + *(v96 + 36);
  *v57 = v54;
  *(v57 + 8) = v53;
  v58 = v49;
  v59 = v49 + *(v99 + 9);
  v60 = *v59;
  v61 = *(v59 + 8);
  LOBYTE(v130) = v60;
  *(&v130 + 1) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  v62 = sub_24402E76C();
  v63 = v97;
  sub_2440D24F0();
  v64 = sub_243F5EED4(v55, &qword_27EDC3C70);
  MEMORY[0x28223BE20](v64);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3C68);
  *&v130 = v56;
  *(&v130 + 1) = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3D28);
  v66 = sub_24402EDE0();
  *&v130 = v65;
  *(&v130 + 1) = v66;
  v92 = swift_getOpaqueTypeConformance2();
  v67 = v100;
  sub_2440D25B0();
  (*(v98 + 8))(v63, v67);
  v68 = *v58;
  v97 = *(v58 + 8);
  v98 = v68;
  LODWORD(v96) = *(v58 + 16);
  v95 = type metadata accessor for RegistrationViewModel();
  v91 = sub_24403005C(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
  sub_2440D14A0();
  swift_getKeyPath();
  sub_2440D1740();

  v89 = v125;
  LODWORD(v90) = v126;
  v69 = v109;
  v99 = type metadata accessor for RegSheet;
  sub_2440300A4(v58, v109, type metadata accessor for RegSheet);
  v70 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v108 = *(v108 + 80);
  v71 = swift_allocObject();
  sub_244027460(v69, v71 + v70);
  sub_2440300A4(v58, v69, type metadata accessor for RegSheet);
  v72 = swift_allocObject();
  sub_244027460(v69, v72 + v70);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3C58);
  *&v130 = v67;
  *(&v130 + 1) = v94;
  *&v131 = OpaqueTypeConformance2;
  *(&v131 + 1) = v92;
  v100 = swift_getOpaqueTypeConformance2();
  v82 = sub_24402EED4();
  v73 = v112;
  v74 = v102;
  sub_2440D2560();

  (*(v101 + 8))(v73, v74);
  sub_2440D14A0();
  swift_getKeyPath();
  sub_2440D1740();

  v122 = v127;
  v123 = v128;
  v124 = v129;
  v120 = v125;
  v121 = v126;
  *&v130 = v74;
  *(&v130 + 1) = v88;
  *&v131 = v100;
  *(&v131 + 1) = v82;
  swift_getOpaqueTypeConformance2();
  sub_24402F098();
  v75 = v103;
  v76 = v106;
  v77 = v113;
  sub_2440D2540();
  v132 = v122;
  v133 = v123;
  v134 = v124;
  v130 = v120;
  v131 = v121;
  sub_243F5EED4(&v130, &qword_27EDC3DA8);
  (*(v104 + 8))(v77, v76);
  sub_2440300A4(v111, v69, v99);
  v78 = swift_allocObject();
  sub_244027460(v69, v78 + v70);
  v79 = v110;
  (*(v105 + 32))(v110, v75, v107);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3C38);
  v81 = (v79 + *(result + 36));
  *v81 = sub_24402F3F8;
  v81[1] = v78;
  v81[2] = 0;
  v81[3] = 0;
  return result;
}

uint64_t sub_2440284F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E78);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v46 - v13;
  type metadata accessor for RegistrationViewModel();
  sub_24403005C(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
  sub_2440D14A0();
  swift_getKeyPath();
  sub_2440D1740();

  sub_24406D8A0(v46[0], v46[1], v47, v48, a3, a4);
  *v14 = *(a1 + *(type metadata accessor for RegSheet() + 48));
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E80);
  sub_2440288D4(a1, &v14[*(v15 + 44)]);
  v16 = sub_2440D20A0();
  sub_244070F28();
  swift_beginAccess();
  sub_2440D13D0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E88) + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = sub_2440D20D0();
  sub_2440D13D0();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E90) + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = *sub_243FFAF58();

  v37 = sub_2440D20B0();
  v38 = &v14[*(v9 + 44)];
  *v38 = v36;
  v38[8] = v37;
  v40 = v48[0];
  v39 = v48[1];
  v41 = v49;
  v42 = v50;
  v43 = v51;
  sub_243F5F574(v14, v12, &qword_27EDC3E78);
  *a2 = v40;
  *(a2 + 8) = v39;
  *(a2 + 16) = v41;
  *(a2 + 24) = v42;
  *(a2 + 32) = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E98);
  sub_243F5F574(v12, a2 + *(v44 + 48), &qword_27EDC3E78);

  sub_243F5EED4(v14, &qword_27EDC3E78);
  sub_243F5EED4(v12, &qword_27EDC3E78);
}