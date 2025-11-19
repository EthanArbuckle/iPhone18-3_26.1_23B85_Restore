uint64_t sub_22964B6C4()
{
  v2 = *(*v1 + 464);
  v5 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_22964E5A0;
  }

  else
  {
    v3 = sub_22964B7D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22964B7D8()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  v6 = [*(v0 + 448) uuid];
  sub_22A4DB79C();

  v7 = *(v2 + 48);
  *(v0 + 60) = v7;
  v8 = type metadata accessor for HomePassData(0);
  *(v0 + 480) = v8;
  v9 = *(v8 + 20);
  *(v0 + 108) = v9;
  v10 = *(v4 + 40);
  *(v0 + 488) = v10;
  *(v0 + 496) = (v4 + 40) & 0xFFFFFFFFFFFFLL | 0xEFDA000000000000;
  v10(v1 + v9 + v7, v3, v5);
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 448);
  v12 = static PassUpdater.shared;
  *(v0 + 504) = static PassUpdater.shared;
  v13 = v11;

  return MEMORY[0x2822009F8](sub_22964B910, v12, 0);
}

uint64_t sub_22964B910()
{
  v1 = v0[63];
  v2 = v0[56];
  v3 = v0[28];
  v4 = *(v1 + 112);
  v5 = swift_task_alloc();
  v0[64] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = *(MEMORY[0x277D0EF78] + 4);
  v10 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v7 = swift_task_alloc();
  v0[65] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[66] = v8;
  *v7 = v0;
  v7[1] = sub_22964BA24;

  return v10(v0 + 2, &unk_22A57B7F8, v5, v8);
}

uint64_t sub_22964BA24()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v9 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v4 = *(v2 + 504);
    v5 = sub_22964BD14;
  }

  else
  {
    v7 = *(v2 + 504);
    v6 = *(v2 + 512);

    v5 = sub_22964BB48;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22964BB48()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = swift_task_alloc();
  *(v0 + 544) = v3;
  *v3 = v0;
  v3[1] = sub_22964BBF4;
  v4 = *(v0 + 224);

  return sub_229633730(v4);
}

uint64_t sub_22964BBF4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 544);
  v7 = *v2;
  *(v3 + 552) = a1;
  *(v3 + 560) = v1;

  if (v1)
  {

    v5 = sub_22964E820;
  }

  else
  {
    v5 = sub_22964C014;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22964BD14()
{
  v1 = *(v0 + 512);

  return MEMORY[0x2822009F8](sub_22964BD88, 0, 0);
}

uint64_t sub_22964BD88()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v0[24];
  v4 = v0[25];
  sub_229656184(v0[28]);
  sub_2295F2274(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = v0[52];
    v7 = v0[24];
    v8 = v0[25];
    v5 = sub_22A4DB77C();
    (*(v8 + 8))(v6, v7);
  }

  v10 = v0[55];
  v9 = v0[56];
  v11 = v0[54];
  [v9 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v11, &unk_27D87D2A0, &unk_22A578BD0);
  v43 = v0[67];
  v13 = v0[53];
  v12 = v0[54];
  v15 = v0[51];
  v14 = v0[52];
  v17 = v0[49];
  v16 = v0[50];
  v19 = v0[47];
  v18 = v0[48];
  v21 = v0[45];
  v20 = v0[46];
  v24 = v0[44];
  v25 = v0[43];
  v26 = v0[42];
  v27 = v0[41];
  v28 = v0[40];
  v29 = v0[39];
  v30 = v0[38];
  v31 = v0[37];
  v32 = v0[36];
  v33 = v0[35];
  v34 = v0[34];
  v35 = v0[33];
  v36 = v0[32];
  v37 = v0[31];
  v38 = v0[30];
  v39 = v0[29];
  v40 = v0[28];
  v41 = v0[26];
  v42 = v0[23];

  v22 = v0[1];

  return v22();
}

uint64_t sub_22964C014()
{
  v1 = *(v0 + 552);
  if (!v1 || (objc_opt_self(), v2 = swift_dynamicCastObjCClass(), (*(v0 + 568) = v2) == 0))
  {
    v7 = &selRef_runTransformWithError_;
    v9 = (v0 + 200);
    v8 = *(v0 + 200);
    v10 = *(v0 + 432);
    v11 = *(v0 + 408);
    v12 = *(v0 + 224);
    v13 = *(v0 + 192);
    v87 = (v0 + 192);

    sub_2296561E0();
    swift_allocError();
    *v14 = 0xD000000000000023;
    v14[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v12);
    sub_2295F2274(v10, v11);
    if ((*(v8 + 48))(v11, 1, v13) != 1)
    {
      v16 = (v0 + 408);
LABEL_20:
      v46 = *v16;
      v47 = *v9;
      v48 = *v87;
      v15 = sub_22A4DB77C();
      (*(v47 + 8))(v46, v48);
      goto LABEL_21;
    }

    v15 = 0;
LABEL_21:
    v50 = *(v0 + 440);
    v49 = *(v0 + 448);
    v51 = *(v0 + 432);
    [v49 v7[59]];

    sub_22953EAE4(v51, &unk_27D87D2A0, &unk_22A578BD0);
    v53 = *(v0 + 424);
    v52 = *(v0 + 432);
    v55 = *(v0 + 408);
    v54 = *(v0 + 416);
    v57 = *(v0 + 392);
    v56 = *(v0 + 400);
    v59 = *(v0 + 376);
    v58 = *(v0 + 384);
    v61 = *(v0 + 360);
    v60 = *(v0 + 368);
    v64 = *(v0 + 352);
    v65 = *(v0 + 344);
    v66 = *(v0 + 336);
    v67 = *(v0 + 328);
    v68 = *(v0 + 320);
    v69 = *(v0 + 312);
    v70 = *(v0 + 304);
    v71 = *(v0 + 296);
    v72 = *(v0 + 288);
    v73 = *(v0 + 280);
    v74 = *(v0 + 272);
    v75 = *(v0 + 264);
    v76 = *(v0 + 256);
    v77 = *(v0 + 248);
    v79 = *(v0 + 240);
    v81 = *(v0 + 232);
    v83 = *(v0 + 224);
    v86 = *(v0 + 208);
    v89 = *(v0 + 184);

    v62 = *(v0 + 8);

    return v62();
  }

  v3 = [*(v0 + 448) clientWalletKeyUUID];
  if (v3)
  {
    v4 = *(v0 + 392);
    v5 = v3;
    sub_22A4DB79C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v9 = (v0 + 200);
  v17 = *(v0 + 200);
  v19 = *(v0 + 392);
  v18 = *(v0 + 400);
  v20 = *(v0 + 192);
  (*(v0 + 456))(v19, v6, 1, v20);
  sub_229564B0C(v19, v18);
  v21 = *(v17 + 48);
  *(v0 + 576) = v21;
  *(v0 + 584) = (v17 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v21(v18, 1, v20) == 1)
  {
    v87 = (v0 + 192);
    v22 = *(v0 + 432);
    v23 = *(v0 + 400);
    v24 = *(v0 + 376);
    v25 = *(v0 + 224);
    v84 = *(v0 + 192);

    sub_2296561E0();
    swift_allocError();
    *v26 = 0xD00000000000001ELL;
    v26[1] = 0x800000022A58E630;
    swift_willThrow();

    sub_22953EAE4(v23, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v25);
    sub_2295F2274(v22, v24);
    if (v21(v24, 1, v84) != 1)
    {
      v16 = (v0 + 376);
LABEL_19:
      v7 = &selRef_runTransformWithError_;
      goto LABEL_20;
    }

LABEL_14:
    v15 = 0;
    v7 = &selRef_runTransformWithError_;
    goto LABEL_21;
  }

  v27 = *(v0 + 448);
  [v27 saveClientWalletKeyUUIDToLocalStore_];
  v28 = [v27 clientWalletKeyUUID];
  if (v28)
  {
    v29 = *(v0 + 456);
    v90 = *(v0 + 448);
    v85 = *(v0 + 432);
    v78 = *(v0 + 400);
    v88 = v21;
    v30 = *(v0 + 384);
    v82 = *(v0 + 368);
    v80 = *(v0 + 224);
    v32 = *(v0 + 192);
    v31 = *(v0 + 200);
    v33 = v28;
    sub_22A4DB79C();

    v29(v30, 0, 1, v32);
    sub_22953EAE4(v30, &unk_27D87D2A0, &unk_22A578BD0);

    sub_2296561E0();
    swift_allocError();
    *v34 = 0xD00000000000002ALL;
    v34[1] = 0x800000022A58E650;
    swift_willThrow();

    sub_22953EAE4(v78, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v80);
    sub_2295F2274(v85, v82);
    if (v88(v82, 1, v32) != 1)
    {
      v87 = (v0 + 192);
      v16 = (v0 + 368);
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v35 = *(v0 + 496);
  v91 = *(v0 + 504);
  v36 = *(v0 + 108);
  v38 = *(v0 + 480);
  v37 = *(v0 + 488);
  v39 = *(v0 + 448);
  v40 = *(v0 + 384);
  v41 = *(v0 + 192);
  v42 = *(v0 + 224) + *(v0 + 60);
  v43 = *(v0 + 208);
  (*(v0 + 456))(v40, 1, 1, v41);
  sub_22953EAE4(v40, &unk_27D87D2A0, &unk_22A578BD0);
  v44 = [v39 uuid];
  sub_22A4DB79C();

  v37(v42 + v36, v43, v41);
  v45 = *(v38 + 68);
  *(v0 + 156) = v45;
  *(v42 + v45) = 0;

  return MEMORY[0x2822009F8](sub_22964C6FC, v91, 0);
}

uint64_t sub_22964C6FC()
{
  v1 = v0[63];
  v2 = v0[56];
  v3 = v0[28];
  v4 = *(v1 + 112);
  v5 = swift_task_alloc();
  v0[74] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = *(MEMORY[0x277D0EF78] + 4);
  v10 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v7 = swift_task_alloc();
  v0[75] = v7;
  *v7 = v0;
  v7[1] = sub_22964C7F8;
  v8 = v0[66];

  return v10(v0 + 8, &unk_22A57B800, v5, v8);
}

uint64_t sub_22964C7F8()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v9 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v4 = *(v2 + 504);
    v5 = sub_22964CAEC;
  }

  else
  {
    v6 = *(v2 + 592);
    v7 = *(v2 + 504);

    v5 = sub_22964C920;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22964C920()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  v3 = swift_task_alloc();
  *(v0 + 616) = v3;
  *v3 = v0;
  v3[1] = sub_22964C9CC;
  v4 = *(v0 + 224);

  return sub_229633730(v4);
}

uint64_t sub_22964C9CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 616);
  v7 = *v2;
  *(v3 + 624) = a1;
  *(v3 + 632) = v1;

  if (v1)
  {

    v5 = sub_22964EAAC;
  }

  else
  {
    v5 = sub_22964CE10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22964CAEC()
{
  v1 = *(v0 + 592);

  return MEMORY[0x2822009F8](sub_22964CB60, 0, 0);
}

uint64_t sub_22964CB60()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 432);
  v4 = *(v0 + 400);
  v5 = *(v0 + 360);
  v6 = *(v0 + 224);
  v7 = *(v0 + 192);

  sub_22953EAE4(v4, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v6);
  sub_2295F2274(v3, v5);
  if (v2(v5, 1, v7) == 1)
  {
    v8 = 0;
  }

  else
  {
    v9 = *(v0 + 360);
    v10 = *(v0 + 192);
    v11 = *(v0 + 200);
    v8 = sub_22A4DB77C();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(v0 + 440);
  v12 = *(v0 + 448);
  v14 = *(v0 + 432);
  [v12 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v14, &unk_27D87D2A0, &unk_22A578BD0);
  v46 = *(v0 + 608);
  v16 = *(v0 + 424);
  v15 = *(v0 + 432);
  v18 = *(v0 + 408);
  v17 = *(v0 + 416);
  v20 = *(v0 + 392);
  v19 = *(v0 + 400);
  v22 = *(v0 + 376);
  v21 = *(v0 + 384);
  v24 = *(v0 + 360);
  v23 = *(v0 + 368);
  v27 = *(v0 + 352);
  v28 = *(v0 + 344);
  v29 = *(v0 + 336);
  v30 = *(v0 + 328);
  v31 = *(v0 + 320);
  v32 = *(v0 + 312);
  v33 = *(v0 + 304);
  v34 = *(v0 + 296);
  v35 = *(v0 + 288);
  v36 = *(v0 + 280);
  v37 = *(v0 + 272);
  v38 = *(v0 + 264);
  v39 = *(v0 + 256);
  v40 = *(v0 + 248);
  v41 = *(v0 + 240);
  v42 = *(v0 + 232);
  v43 = *(v0 + 224);
  v44 = *(v0 + 208);
  v45 = *(v0 + 184);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_22964CE10()
{
  v1 = v0;
  v2 = *(v0 + 624);
  if (!v2 || (objc_opt_self(), v115 = v2, !swift_dynamicCastObjCClass()))
  {
    v12 = (v0 + 192);
    v13 = *(v0 + 576);
    v116 = *(v0 + 584);
    v119 = *(v0 + 192);
    v14 = *(v0 + 552);
    v15 = *(v0 + 432);
    v16 = *(v1 + 400);
    v17 = *(v1 + 352);
    v18 = *(v1 + 224);

    sub_2296561E0();
    swift_allocError();
    *v19 = 0xD00000000000002DLL;
    v19[1] = 0x800000022A58E680;
    swift_willThrow();

    sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v18);
    sub_2295F2274(v15, v17);
    if (v13(v17, 1, v119) == 1)
    {
      goto LABEL_15;
    }

    v20 = (v1 + 352);
    v120 = (v1 + 200);
LABEL_17:
    v46 = *v20;
    v47 = *v120;
    v48 = *v12;
    v45 = sub_22A4DB77C();
    (*(v47 + 8))(v46, v48);
    goto LABEL_18;
  }

  v3 = *(v0 + 568);
  v4 = *(v0 + 448);
  v5 = *(v0 + 552);
  v6 = sub_22A4DBCDC();
  v7 = [objc_allocWithZone(HMDHomeWalletKey) initWithPKPass:v3 flow:v6];
  *(v0 + 640) = v7;

  v8 = [v4 clientWalletKeyUUID];
  if (v8)
  {
    v9 = *(v0 + 344);
    v10 = v8;
    sub_22A4DB79C();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v121 = *(v0 + 576);
  v124 = *(v0 + 584);
  v21 = *(v0 + 456);
  v12 = (v0 + 192);
  v22 = *(v0 + 192);
  v24 = *(v0 + 336);
  v23 = *(v0 + 344);
  v104 = *(v0 + 184);
  v109 = *(v0 + 176);
  v25 = *(v0 + 200) + 56;
  v21(v23, v11, 1, v22);
  v102 = v7;
  v26 = [v7 uuid];
  sub_22A4DB79C();

  *(v0 + 648) = v25 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v21(v24, 0, 1, v22);
  v27 = *(v109 + 48);
  sub_2295F2274(v23, v104);
  sub_2295F2274(v24, v104 + v27);
  v28 = v121(v104, 1, v22);
  v29 = *(v0 + 576);
  v30 = *(v0 + 584);
  v120 = (v0 + 200);
  v31 = *(v0 + 192);
  if (v28 == 1)
  {
    v32 = *(v0 + 344);
    sub_22953EAE4(*(v0 + 336), &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v32, &unk_27D87D2A0, &unk_22A578BD0);
    if (v29(v104 + v27, 1, v31) == 1)
    {
      sub_22953EAE4(*(v0 + 184), &unk_27D87D2A0, &unk_22A578BD0);
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  sub_2295F2274(*(v0 + 184), *(v0 + 328));
  v33 = v29(v104 + v27, 1, v31);
  v34 = *(v0 + 336);
  v125 = *(v0 + 344);
  v35 = *(v0 + 328);
  if (v33 == 1)
  {
    v36 = *v120;
    v37 = *v12;
    sub_22953EAE4(v34, &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v125, &unk_27D87D2A0, &unk_22A578BD0);
    (*(v36 + 8))(v35, v37);
LABEL_13:
    sub_22953EAE4(*(v0 + 184), &qword_27D87DBA0, &qword_22A57A158);
LABEL_14:
    v110 = *(v1 + 584);
    v105 = *(v1 + 576);
    v38 = *(v1 + 552);
    v39 = *(v1 + 432);
    v40 = *(v1 + 400);
    v41 = *(v1 + 312);
    v42 = *(v1 + 224);
    v43 = *(v1 + 192);

    sub_2296561E0();
    swift_allocError();
    *v44 = 0xD00000000000003ELL;
    v44[1] = 0x800000022A58E790;
    swift_willThrow();

    sub_22953EAE4(v40, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v42);
    sub_2295F2274(v39, v41);
    if (v105(v41, 1, v43) == 1)
    {
      goto LABEL_15;
    }

    v20 = (v1 + 312);
    goto LABEL_17;
  }

  v64 = *(v0 + 200);
  v65 = *(v1 + 208);
  v66 = *(v1 + 192);
  v112 = *(v1 + 184);
  (*(v64 + 32))(v65, v104 + v27, v66);
  sub_2295B2378();
  v107 = sub_22A4DD58C();
  v67 = *(v64 + 8);
  v67(v65, v66);
  sub_22953EAE4(v34, &unk_27D87D2A0, &unk_22A578BD0);
  sub_22953EAE4(v125, &unk_27D87D2A0, &unk_22A578BD0);
  v67(v35, v66);
  sub_22953EAE4(v112, &unk_27D87D2A0, &unk_22A578BD0);
  if ((v107 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_22:
  v68 = [*(v1 + 448) clientWalletKeyUUID];
  if (v68)
  {
    v123 = *(v1 + 156);
    v126 = *(v1 + 504);
    v69 = *(v1 + 108);
    v70 = *(v1 + 488);
    v113 = *(v1 + 480);
    v118 = *(v1 + 496);
    v71 = *(v1 + 448);
    v72 = *(v1 + 456);
    v73 = *(v1 + 320);
    v74 = *(v1 + 208);
    v75 = *(v1 + 224) + *(v1 + 60);
    v76 = *(v1 + 192);
    v77 = v68;
    sub_22A4DB79C();

    v72(v73, 0, 1, v76);
    sub_22953EAE4(v73, &unk_27D87D2A0, &unk_22A578BD0);
    v78 = [v71 uuid];
    sub_22A4DB79C();

    v70(v75 + v69, v74, v76);
    *(v75 + v123) = 0;
    *(v75 + *(v113 + 72)) = 2;

    return MEMORY[0x2822009F8](sub_22964D7C0, v126, 0);
  }

  v114 = *(v1 + 584);
  v108 = *(v1 + 576);
  v79 = *(v1 + 552);
  v80 = *(v1 + 448);
  v81 = *(v1 + 400);
  v82 = *(v1 + 320);
  v83 = *(v1 + 304);
  v98 = *(v1 + 224);
  v100 = *(v1 + 432);
  v84 = *(v1 + 192);
  (*(v1 + 456))(v82, 1, 1, v84);
  sub_22953EAE4(v82, &unk_27D87D2A0, &unk_22A578BD0);

  sub_2296561E0();
  swift_allocError();
  *v85 = 0xD00000000000001ELL;
  v85[1] = 0x800000022A58E630;
  swift_willThrow();

  sub_22953EAE4(v81, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v98);
  sub_2295F2274(v100, v83);
  if (v108(v83, 1, v84) != 1)
  {
    v20 = (v1 + 304);
    goto LABEL_17;
  }

LABEL_15:
  v45 = 0;
LABEL_18:
  v50 = *(v1 + 440);
  v49 = *(v1 + 448);
  v51 = *(v1 + 432);
  [v49 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v51, &unk_27D87D2A0, &unk_22A578BD0);
  v53 = *(v1 + 424);
  v52 = *(v1 + 432);
  v55 = *(v1 + 408);
  v54 = *(v1 + 416);
  v57 = *(v1 + 392);
  v56 = *(v1 + 400);
  v58 = *(v1 + 376);
  v59 = *(v1 + 384);
  v60 = *(v1 + 360);
  v61 = *(v1 + 368);
  v86 = *(v1 + 352);
  v87 = *(v1 + 344);
  v88 = *(v1 + 336);
  v89 = *(v1 + 328);
  v90 = *(v1 + 320);
  v91 = *(v1 + 312);
  v92 = *(v1 + 304);
  v93 = *(v1 + 296);
  v94 = *(v1 + 288);
  v95 = *(v1 + 280);
  v96 = *(v1 + 272);
  v97 = *(v1 + 264);
  v99 = *(v1 + 256);
  v101 = *(v1 + 248);
  v103 = *(v1 + 240);
  v106 = *(v1 + 232);
  v111 = *(v1 + 224);
  v117 = *(v1 + 208);
  v122 = *(v1 + 184);

  v62 = *(v1 + 8);

  return v62();
}

uint64_t sub_22964D7C0()
{
  v1 = v0[63];
  v2 = v0[56];
  v3 = v0[28];
  v4 = *(v1 + 112);
  v5 = swift_task_alloc();
  v0[82] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = *(MEMORY[0x277D0EF78] + 4);
  v10 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v7 = swift_task_alloc();
  v0[83] = v7;
  *v7 = v0;
  v7[1] = sub_22964D8BC;
  v8 = v0[66];

  return v10(v0 + 14, &unk_22A57B808, v5, v8);
}

uint64_t sub_22964D8BC()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v9 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v4 = *(v2 + 504);
    v5 = sub_22964DBB0;
  }

  else
  {
    v6 = *(v2 + 656);
    v7 = *(v2 + 504);

    v5 = sub_22964D9E4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22964D9E4()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  v3 = swift_task_alloc();
  *(v0 + 680) = v3;
  *v3 = v0;
  v3[1] = sub_22964DA98;
  v4 = *(v0 + 224);

  return sub_229633730(v4);
}

uint64_t sub_22964DA98(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 680);
  v7 = *v2;
  *(v3 + 688) = a1;
  *(v3 + 696) = v1;

  if (v1)
  {
    v5 = sub_22964ED5C;
  }

  else
  {
    v5 = sub_22964DEE4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22964DBB0()
{
  v1 = *(v0 + 656);

  return MEMORY[0x2822009F8](sub_22964DC24, 0, 0);
}

uint64_t sub_22964DC24()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 552);
  v5 = *(v0 + 432);
  v6 = *(v0 + 400);
  v7 = *(v0 + 296);
  v8 = *(v0 + 224);
  v9 = *(v0 + 192);

  sub_22953EAE4(v6, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v8);
  sub_2295F2274(v5, v7);
  if (v3(v7, 1, v9) == 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = *(v0 + 296);
    v12 = *(v0 + 192);
    v13 = *(v0 + 200);
    v10 = sub_22A4DB77C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(v0 + 440);
  v14 = *(v0 + 448);
  v16 = *(v0 + 432);
  [v14 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
  v48 = *(v0 + 672);
  v18 = *(v0 + 424);
  v17 = *(v0 + 432);
  v20 = *(v0 + 408);
  v19 = *(v0 + 416);
  v22 = *(v0 + 392);
  v21 = *(v0 + 400);
  v24 = *(v0 + 376);
  v23 = *(v0 + 384);
  v26 = *(v0 + 360);
  v25 = *(v0 + 368);
  v29 = *(v0 + 352);
  v30 = *(v0 + 344);
  v31 = *(v0 + 336);
  v32 = *(v0 + 328);
  v33 = *(v0 + 320);
  v34 = *(v0 + 312);
  v35 = *(v0 + 304);
  v36 = *(v0 + 296);
  v37 = *(v0 + 288);
  v38 = *(v0 + 280);
  v39 = *(v0 + 272);
  v40 = *(v0 + 264);
  v41 = *(v0 + 256);
  v42 = *(v0 + 248);
  v43 = *(v0 + 240);
  v44 = *(v0 + 232);
  v45 = *(v0 + 224);
  v46 = *(v0 + 208);
  v47 = *(v0 + 184);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_22964DEE4()
{
  v1 = *(v0 + 688);
  if (v1)
  {
    v2 = *(v0 + 640);
    v3 = *(v0 + 624);
    v95 = *(v0 + 576);
    v99 = *(v0 + 584);
    v4 = *(v0 + 552);
    v91 = *(v0 + 432);
    v5 = *(v0 + 400);
    v6 = *(v0 + 280);
    v7 = *(v0 + 224);
    v8 = *(v0 + 192);
    sub_2296561E0();
    swift_allocError();
    *v9 = 0xD000000000000014;
    v9[1] = 0x800000022A58E730;
    swift_willThrow();

    sub_22953EAE4(v5, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v7);
    sub_2295F2274(v91, v6);
    if (v95(v6, 1, v8) != 1)
    {
      v10 = (v0 + 280);
LABEL_10:
      v26 = *v10;
      v27 = *(v0 + 192);
      v28 = *(v0 + 200);
      v23 = sub_22A4DB77C();
      (*(v28 + 8))(v26, v27);
      goto LABEL_11;
    }
  }

  else
  {
    v11 = [*(v0 + 448) clientWalletKeyUUID];
    v12 = *(v0 + 648);
    v13 = *(v0 + 640);
    v14 = *(v0 + 624);
    v96 = *(v0 + 576);
    v100 = *(v0 + 584);
    v85 = *(v0 + 552);
    v15 = *(v0 + 456);
    v16 = *(v0 + 400);
    v17 = *(v0 + 288);
    v18 = *(v0 + 224);
    v88 = v18;
    v92 = *(v0 + 432);
    v19 = *(v0 + 192);
    if (!v11)
    {
      v24 = *(v0 + 272);
      v15(v17, 1, 1, *(v0 + 192));
      sub_22953EAE4(v17, &unk_27D87D2A0, &unk_22A578BD0);

      sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
      sub_229656184(v88);
      sub_2295F2274(v92, v24);
      if (v96(v24, 1, v19) == 1)
      {
        v25 = 0;
      }

      else
      {
        v44 = *(v0 + 272);
        v45 = *(v0 + 192);
        v46 = *(v0 + 200);
        v25 = sub_22A4DB77C();
        (*(v46 + 8))(v44, v45);
      }

      v48 = *(v0 + 440);
      v47 = *(v0 + 448);
      v50 = *(v0 + 424);
      v49 = *(v0 + 432);
      v51 = *(v0 + 408);
      v52 = *(v0 + 416);
      v53 = *(v0 + 392);
      v54 = *(v0 + 400);
      v55 = *(v0 + 376);
      v56 = *(v0 + 368);
      v58 = *(v0 + 360);
      v60 = *(v0 + 352);
      v62 = *(v0 + 344);
      v64 = *(v0 + 336);
      v66 = *(v0 + 328);
      v68 = *(v0 + 320);
      v70 = *(v0 + 312);
      v72 = *(v0 + 304);
      v74 = *(v0 + 296);
      v76 = *(v0 + 288);
      v78 = *(v0 + 280);
      v80 = *(v0 + 272);
      v82 = *(v0 + 264);
      v84 = *(v0 + 256);
      v87 = *(v0 + 248);
      v90 = *(v0 + 240);
      v94 = *(v0 + 232);
      v103 = *(v0 + 208);
      v98 = *(v0 + 224);
      v102 = *(v0 + 184);
      [v47 saveClientWalletKeyUUIDToLocalStore_];

      sub_22953EAE4(v49, &unk_27D87D2A0, &unk_22A578BD0);

      v42 = *(v0 + 8);
      goto LABEL_12;
    }

    v20 = *(v0 + 264);
    v21 = v11;
    sub_22A4DB79C();

    v15(v17, 0, 1, v19);
    sub_22953EAE4(v17, &unk_27D87D2A0, &unk_22A578BD0);
    sub_2296561E0();
    swift_allocError();
    *v22 = 0xD00000000000001FLL;
    v22[1] = 0x800000022A58E750;
    swift_willThrow();

    sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v88);
    sub_2295F2274(v92, v20);
    if (v96(v20, 1, v19) != 1)
    {
      v10 = (v0 + 264);
      goto LABEL_10;
    }
  }

  v23 = 0;
LABEL_11:
  v30 = *(v0 + 440);
  v29 = *(v0 + 448);
  v31 = *(v0 + 432);
  [v29 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v31, &unk_27D87D2A0, &unk_22A578BD0);
  v33 = *(v0 + 424);
  v32 = *(v0 + 432);
  v35 = *(v0 + 408);
  v34 = *(v0 + 416);
  v37 = *(v0 + 392);
  v36 = *(v0 + 400);
  v39 = *(v0 + 376);
  v38 = *(v0 + 384);
  v41 = *(v0 + 360);
  v40 = *(v0 + 368);
  v57 = *(v0 + 352);
  v59 = *(v0 + 344);
  v61 = *(v0 + 336);
  v63 = *(v0 + 328);
  v65 = *(v0 + 320);
  v67 = *(v0 + 312);
  v69 = *(v0 + 304);
  v71 = *(v0 + 296);
  v73 = *(v0 + 288);
  v75 = *(v0 + 280);
  v77 = *(v0 + 272);
  v79 = *(v0 + 264);
  v81 = *(v0 + 256);
  v83 = *(v0 + 248);
  v86 = *(v0 + 240);
  v89 = *(v0 + 232);
  v93 = *(v0 + 224);
  v97 = *(v0 + 208);
  v101 = *(v0 + 184);

  v42 = *(v0 + 8);
LABEL_12:

  return v42();
}

uint64_t sub_22964E5A0()
{
  v1 = v0[32];
  v2 = v0[24];
  v3 = v0[25];
  sub_2295F2274(v0[54], v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = v0[32];
    v6 = v0[24];
    v7 = v0[25];
    v4 = sub_22A4DB77C();
    (*(v7 + 8))(v5, v6);
  }

  v9 = v0[55];
  v8 = v0[56];
  v10 = v0[54];
  [v8 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v10, &unk_27D87D2A0, &unk_22A578BD0);
  v42 = v0[59];
  v12 = v0[53];
  v11 = v0[54];
  v14 = v0[51];
  v13 = v0[52];
  v16 = v0[49];
  v15 = v0[50];
  v18 = v0[47];
  v17 = v0[48];
  v20 = v0[45];
  v19 = v0[46];
  v23 = v0[44];
  v24 = v0[43];
  v25 = v0[42];
  v26 = v0[41];
  v27 = v0[40];
  v28 = v0[39];
  v29 = v0[38];
  v30 = v0[37];
  v31 = v0[36];
  v32 = v0[35];
  v33 = v0[34];
  v34 = v0[33];
  v35 = v0[32];
  v36 = v0[31];
  v37 = v0[30];
  v38 = v0[29];
  v39 = v0[28];
  v40 = v0[26];
  v41 = v0[23];

  v21 = v0[1];

  return v21();
}

uint64_t sub_22964E820()
{
  v1 = v0[54];
  v2 = v0[31];
  v3 = v0[24];
  v4 = v0[25];
  sub_229656184(v0[28]);
  sub_2295F2274(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = v0[31];
    v7 = v0[24];
    v8 = v0[25];
    v5 = sub_22A4DB77C();
    (*(v8 + 8))(v6, v7);
  }

  v10 = v0[55];
  v9 = v0[56];
  v11 = v0[54];
  [v9 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v11, &unk_27D87D2A0, &unk_22A578BD0);
  v43 = v0[70];
  v13 = v0[53];
  v12 = v0[54];
  v15 = v0[51];
  v14 = v0[52];
  v17 = v0[49];
  v16 = v0[50];
  v19 = v0[47];
  v18 = v0[48];
  v21 = v0[45];
  v20 = v0[46];
  v24 = v0[44];
  v25 = v0[43];
  v26 = v0[42];
  v27 = v0[41];
  v28 = v0[40];
  v29 = v0[39];
  v30 = v0[38];
  v31 = v0[37];
  v32 = v0[36];
  v33 = v0[35];
  v34 = v0[34];
  v35 = v0[33];
  v36 = v0[32];
  v37 = v0[31];
  v38 = v0[30];
  v39 = v0[29];
  v40 = v0[28];
  v41 = v0[26];
  v42 = v0[23];

  v22 = v0[1];

  return v22();
}

uint64_t sub_22964EAAC()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 432);
  v4 = *(v0 + 400);
  v5 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 192);

  sub_22953EAE4(v4, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v6);
  sub_2295F2274(v3, v5);
  if (v2(v5, 1, v7) == 1)
  {
    v8 = 0;
  }

  else
  {
    v9 = *(v0 + 240);
    v10 = *(v0 + 192);
    v11 = *(v0 + 200);
    v8 = sub_22A4DB77C();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(v0 + 440);
  v12 = *(v0 + 448);
  v14 = *(v0 + 432);
  [v12 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v14, &unk_27D87D2A0, &unk_22A578BD0);
  v46 = *(v0 + 632);
  v16 = *(v0 + 424);
  v15 = *(v0 + 432);
  v18 = *(v0 + 408);
  v17 = *(v0 + 416);
  v20 = *(v0 + 392);
  v19 = *(v0 + 400);
  v22 = *(v0 + 376);
  v21 = *(v0 + 384);
  v24 = *(v0 + 360);
  v23 = *(v0 + 368);
  v27 = *(v0 + 352);
  v28 = *(v0 + 344);
  v29 = *(v0 + 336);
  v30 = *(v0 + 328);
  v31 = *(v0 + 320);
  v32 = *(v0 + 312);
  v33 = *(v0 + 304);
  v34 = *(v0 + 296);
  v35 = *(v0 + 288);
  v36 = *(v0 + 280);
  v37 = *(v0 + 272);
  v38 = *(v0 + 264);
  v39 = *(v0 + 256);
  v40 = *(v0 + 248);
  v41 = *(v0 + 240);
  v42 = *(v0 + 232);
  v43 = *(v0 + 224);
  v44 = *(v0 + 208);
  v45 = *(v0 + 184);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_22964ED5C()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 552);
  v5 = *(v0 + 432);
  v6 = *(v0 + 400);
  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  v9 = *(v0 + 192);

  sub_22953EAE4(v6, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v8);
  sub_2295F2274(v5, v7);
  if (v3(v7, 1, v9) == 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = *(v0 + 232);
    v12 = *(v0 + 192);
    v13 = *(v0 + 200);
    v10 = sub_22A4DB77C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(v0 + 440);
  v14 = *(v0 + 448);
  v16 = *(v0 + 432);
  [v14 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
  v48 = *(v0 + 696);
  v18 = *(v0 + 424);
  v17 = *(v0 + 432);
  v20 = *(v0 + 408);
  v19 = *(v0 + 416);
  v22 = *(v0 + 392);
  v21 = *(v0 + 400);
  v24 = *(v0 + 376);
  v23 = *(v0 + 384);
  v26 = *(v0 + 360);
  v25 = *(v0 + 368);
  v29 = *(v0 + 352);
  v30 = *(v0 + 344);
  v31 = *(v0 + 336);
  v32 = *(v0 + 328);
  v33 = *(v0 + 320);
  v34 = *(v0 + 312);
  v35 = *(v0 + 304);
  v36 = *(v0 + 296);
  v37 = *(v0 + 288);
  v38 = *(v0 + 280);
  v39 = *(v0 + 272);
  v40 = *(v0 + 264);
  v41 = *(v0 + 256);
  v42 = *(v0 + 248);
  v43 = *(v0 + 240);
  v44 = *(v0 + 232);
  v45 = *(v0 + 224);
  v46 = *(v0 + 208);
  v47 = *(v0 + 184);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_22964F018()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA0, &qword_22A57A158);
  v0[28] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v3 = sub_22A4DB7DC();
  v0[31] = v3;
  v4 = *(v3 - 8);
  v0[32] = v4;
  v5 = *(v4 + 64) + 15;
  v0[33] = swift_task_alloc();
  v6 = type metadata accessor for HomePassState(0);
  v0[34] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v0[35] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0) - 8) + 64) + 15;
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  v0[49] = swift_task_alloc();
  v0[50] = swift_task_alloc();
  v0[51] = swift_task_alloc();
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v0[59] = swift_task_alloc();
  v0[60] = swift_task_alloc();
  v0[61] = swift_task_alloc();
  v0[62] = swift_task_alloc();
  v0[63] = swift_task_alloc();
  v0[64] = swift_task_alloc();
  v0[65] = swift_task_alloc();
  v0[66] = swift_task_alloc();
  v0[67] = swift_task_alloc();
  v0[68] = swift_task_alloc();
  v0[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22964F310, 0, 0);
}

uint64_t sub_22964F310()
{
  v1 = [objc_opt_self() driver];
  v2 = [v1 homeManager];
  v0[70] = v2;

  v3 = [v2 homes];
  if (v3)
  {
    v4 = v3;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v5 = sub_22A4DD83C();
  }

  else
  {
    v5 = 0;
  }

  v0[27] = v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F0, &qword_22A5787B0);
  sub_22A4DBD4C();

  v18 = v0[26];
  if (v18 >> 62)
  {
    if (v18 < 0)
    {
      v32 = v0[26];
    }

    result = sub_22A4DE0EC();
    if (result)
    {
      goto LABEL_10;
    }

LABEL_22:

    sub_2296561E0();
    swift_allocError();
    *v33 = 0xD000000000000013;
    v33[1] = 0x800000022A58E770;
    swift_willThrow();

    v6 = v0[69];
    v7 = v0[68];
    v8 = v0[67];
    v9 = v0[66];
    v10 = v0[65];
    v12 = v0[63];
    v11 = v0[64];
    v13 = v0[61];
    v14 = v0[62];
    v15 = v0[60];
    v35 = v0[59];
    v36 = v0[58];
    v37 = v0[57];
    v38 = v0[56];
    v39 = v0[55];
    v40 = v0[54];
    v41 = v0[53];
    v42 = v0[52];
    v43 = v0[51];
    v44 = v0[50];
    v45 = v0[49];
    v46 = v0[48];
    v47 = v0[47];
    v48 = v0[46];
    v49 = v0[45];
    v50 = v0[44];
    v51 = v0[43];
    v52 = v0[42];
    v53 = v0[41];
    v54 = v0[40];
    v55 = v0[39];
    v56 = v0[38];
    v57 = v0[37];
    v58 = v0[36];
    v59 = v0[35];
    v60 = v0[33];
    v61 = v0[30];
    v62 = v0[29];

    v16 = v0[1];

    return v16();
  }

  result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x22AAD13F0](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v18 + 32);
  }

  v20 = v19;
  v0[71] = v19;

  v21 = v20;
  v22 = [v21 clientWalletKeyUUID];
  if (v22)
  {
    v23 = v0[68];
    v24 = v22;
    sub_22A4DB79C();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v0[69];
  v27 = v0[68];
  v28 = v0[31];
  v29 = *(v0[32] + 56);
  v0[72] = v29;
  v29(v27, v25, 1, v28);
  sub_229564B0C(v27, v26);
  [v21 saveClientWalletKeyUUIDToLocalStore_];
  v30 = swift_task_alloc();
  v0[73] = v30;
  *v30 = v0;
  v30[1] = sub_22964F828;
  v31 = v0[35];

  return sub_229633120(v31);
}

uint64_t sub_22964F828()
{
  v2 = *(*v1 + 584);
  v5 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = sub_229653AA4;
  }

  else
  {
    v3 = sub_22964F93C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22964F93C()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 248);
  v6 = [*(v0 + 568) uuid];
  sub_22A4DB79C();

  v7 = *(v2 + 48);
  *(v0 + 60) = v7;
  v8 = type metadata accessor for HomePassData(0);
  *(v0 + 600) = v8;
  v9 = *(v8 + 20);
  *(v0 + 108) = v9;
  v10 = *(v4 + 40);
  *(v0 + 608) = v10;
  *(v0 + 616) = (v4 + 40) & 0xFFFFFFFFFFFFLL | 0xEFDA000000000000;
  v10(v1 + v9 + v7, v3, v5);
  *(v1 + 9) = 1;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 568);
  v12 = static PassUpdater.shared;
  *(v0 + 624) = static PassUpdater.shared;
  v13 = v11;

  return MEMORY[0x2822009F8](sub_22964FA80, v12, 0);
}

uint64_t sub_22964FA80()
{
  v1 = v0[78];
  v2 = v0[71];
  v3 = v0[35];
  v4 = *(v1 + 112);
  v5 = swift_task_alloc();
  v0[79] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = *(MEMORY[0x277D0EF78] + 4);
  v10 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v7 = swift_task_alloc();
  v0[80] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[81] = v8;
  *v7 = v0;
  v7[1] = sub_22964FB94;

  return v10(v0 + 2, &unk_22A57B7D0, v5, v8);
}

uint64_t sub_22964FB94()
{
  v2 = *v1;
  v3 = *(*v1 + 640);
  v9 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v4 = *(v2 + 624);
    v5 = sub_22964FE88;
  }

  else
  {
    v6 = *(v2 + 632);
    v7 = *(v2 + 624);

    v5 = sub_22964FCBC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22964FCBC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = swift_task_alloc();
  *(v0 + 664) = v3;
  *v3 = v0;
  v3[1] = sub_22964FD68;
  v4 = *(v0 + 280);

  return sub_229633730(v4);
}

uint64_t sub_22964FD68(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 664);
  v7 = *v2;
  *(v3 + 672) = a1;
  *(v3 + 680) = v1;

  if (v1)
  {

    v5 = sub_229653D98;
  }

  else
  {
    v5 = sub_2296501FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22964FE88()
{
  v1 = *(v0 + 632);

  return MEMORY[0x2822009F8](sub_22964FEFC, 0, 0);
}

uint64_t sub_22964FEFC()
{
  v1 = v0[69];
  v2 = v0[67];
  v3 = v0[31];
  v4 = v0[32];
  sub_229656184(v0[35]);
  sub_2295F2274(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = v0[67];
    v7 = v0[31];
    v8 = v0[32];
    v5 = sub_22A4DB77C();
    (*(v8 + 8))(v6, v7);
  }

  v9 = v0[71];
  v10 = v0[70];
  v11 = v0[69];
  [v9 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v11, &unk_27D87D2A0, &unk_22A578BD0);
  v52 = v0[82];
  v12 = v0[69];
  v13 = v0[68];
  v14 = v0[67];
  v15 = v0[66];
  v16 = v0[65];
  v18 = v0[63];
  v17 = v0[64];
  v19 = v0[61];
  v20 = v0[62];
  v21 = v0[60];
  v24 = v0[59];
  v25 = v0[58];
  v26 = v0[57];
  v27 = v0[56];
  v28 = v0[55];
  v29 = v0[54];
  v30 = v0[53];
  v31 = v0[52];
  v32 = v0[51];
  v33 = v0[50];
  v34 = v0[49];
  v35 = v0[48];
  v36 = v0[47];
  v37 = v0[46];
  v38 = v0[45];
  v39 = v0[44];
  v40 = v0[43];
  v41 = v0[42];
  v42 = v0[41];
  v43 = v0[40];
  v44 = v0[39];
  v45 = v0[38];
  v46 = v0[37];
  v47 = v0[36];
  v48 = v0[35];
  v49 = v0[33];
  v50 = v0[30];
  v51 = v0[29];

  v22 = v0[1];

  return v22();
}

uint64_t sub_2296501FC()
{
  v1 = *(v0 + 672);
  v2 = &selRef_runTransformWithError_;
  if (!v1 || (objc_opt_self(), v3 = swift_dynamicCastObjCClass(), (*(v0 + 688) = v3) == 0))
  {
    v9 = (v0 + 248);
    v8 = *(v0 + 248);
    v10 = *(v0 + 552);
    v11 = *(v0 + 528);
    v12 = *(v0 + 280);
    v13 = *(v0 + 256);

    sub_2296561E0();
    swift_allocError();
    *v14 = 0xD000000000000023;
    v14[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v12);
    sub_2295F2274(v10, v11);
    if ((*(v13 + 48))(v11, 1, v8) != 1)
    {
      v16 = (v0 + 528);
      v17 = (v0 + 256);
LABEL_20:
      v46 = *v16;
      v47 = *v17;
      v48 = *v9;
      v15 = sub_22A4DB77C();
      (*(v47 + 8))(v46, v48);
      goto LABEL_21;
    }

    v15 = 0;
LABEL_21:
    v49 = *(v0 + 568);
    v50 = *(v0 + 560);
    v51 = *(v0 + 552);
    [v49 v2[59]];

    sub_22953EAE4(v51, &unk_27D87D2A0, &unk_22A578BD0);
    v52 = *(v0 + 552);
    v53 = *(v0 + 544);
    v54 = *(v0 + 536);
    v55 = *(v0 + 528);
    v56 = *(v0 + 520);
    v58 = *(v0 + 504);
    v57 = *(v0 + 512);
    v59 = *(v0 + 488);
    v60 = *(v0 + 496);
    v61 = *(v0 + 480);
    v64 = *(v0 + 472);
    v65 = *(v0 + 464);
    v66 = *(v0 + 456);
    v67 = *(v0 + 448);
    v68 = *(v0 + 440);
    v69 = *(v0 + 432);
    v70 = *(v0 + 424);
    v71 = *(v0 + 416);
    v72 = *(v0 + 408);
    v73 = *(v0 + 400);
    v74 = *(v0 + 392);
    v75 = *(v0 + 384);
    v76 = *(v0 + 376);
    v77 = *(v0 + 368);
    v78 = *(v0 + 360);
    v79 = *(v0 + 352);
    v80 = *(v0 + 344);
    v81 = *(v0 + 336);
    v82 = *(v0 + 328);
    v83 = *(v0 + 320);
    v84 = *(v0 + 312);
    v85 = *(v0 + 304);
    v86 = *(v0 + 296);
    v88 = *(v0 + 288);
    v90 = *(v0 + 280);
    v92 = *(v0 + 264);
    v95 = *(v0 + 240);
    v96 = *(v0 + 232);

    v62 = *(v0 + 8);

    return v62();
  }

  v4 = [*(v0 + 568) clientWalletKeyUUID];
  if (v4)
  {
    v5 = *(v0 + 512);
    v6 = v4;
    sub_22A4DB79C();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = (v0 + 248);
  v18 = *(v0 + 248);
  v20 = *(v0 + 512);
  v19 = *(v0 + 520);
  v21 = *(v0 + 256);
  (*(v0 + 576))(v20, v7, 1, v18);
  sub_229564B0C(v20, v19);
  v22 = *(v21 + 48);
  *(v0 + 696) = v22;
  *(v0 + 704) = (v21 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v22(v19, 1, v18) == 1)
  {
    v23 = *(v0 + 552);
    v24 = *(v0 + 520);
    v25 = *(v0 + 496);
    v26 = *(v0 + 280);
    v93 = *(v0 + 248);

    sub_2296561E0();
    swift_allocError();
    *v27 = 0xD00000000000001ELL;
    v27[1] = 0x800000022A58E630;
    swift_willThrow();

    sub_22953EAE4(v24, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v26);
    sub_2295F2274(v23, v25);
    if (v22(v25, 1, v93) != 1)
    {
      v16 = (v0 + 496);
LABEL_19:
      v2 = &selRef_runTransformWithError_;
      v17 = (v0 + 256);
      goto LABEL_20;
    }

LABEL_14:
    v15 = 0;
    v2 = &selRef_runTransformWithError_;
    goto LABEL_21;
  }

  v28 = *(v0 + 568);
  [v28 saveClientWalletKeyUUIDToLocalStore_];
  v29 = [v28 clientWalletKeyUUID];
  if (v29)
  {
    v30 = *(v0 + 576);
    v97 = *(v0 + 568);
    v31 = *(v0 + 504);
    v91 = *(v0 + 488);
    v94 = *(v0 + 552);
    v87 = *(v0 + 520);
    v89 = *(v0 + 280);
    v33 = *(v0 + 248);
    v32 = *(v0 + 256);
    v34 = v29;
    sub_22A4DB79C();

    v30(v31, 0, 1, v33);
    sub_22953EAE4(v31, &unk_27D87D2A0, &unk_22A578BD0);

    sub_2296561E0();
    swift_allocError();
    *v35 = 0xD00000000000002ALL;
    v35[1] = 0x800000022A58E650;
    swift_willThrow();

    sub_22953EAE4(v87, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v89);
    sub_2295F2274(v94, v91);
    if (v22(v91, 1, v33) != 1)
    {
      v16 = (v0 + 488);
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v98 = *(v0 + 624);
  v36 = *(v0 + 616);
  v37 = *(v0 + 608);
  v38 = *(v0 + 108);
  v39 = *(v0 + 568);
  v40 = *(v0 + 504);
  v41 = *(v0 + 280);
  v42 = *(v0 + 248);
  v43 = v41 + *(v0 + 60);
  v44 = *(v0 + 264);
  (*(v0 + 576))(v40, 1, 1, v42);
  sub_22953EAE4(v40, &unk_27D87D2A0, &unk_22A578BD0);
  v45 = [v39 uuid];
  sub_22A4DB79C();

  v37(v43 + v38, v44, v42);
  *(v41 + 9) = 1;

  return MEMORY[0x2822009F8](sub_229650944, v98, 0);
}

uint64_t sub_229650944()
{
  v1 = v0[78];
  v2 = v0[71];
  v3 = v0[35];
  v4 = *(v1 + 112);
  v5 = swift_task_alloc();
  v0[89] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = *(MEMORY[0x277D0EF78] + 4);
  v10 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v7 = swift_task_alloc();
  v0[90] = v7;
  *v7 = v0;
  v7[1] = sub_229650A40;
  v8 = v0[81];

  return v10(v0 + 8, &unk_22A57B7D8, v5, v8);
}

uint64_t sub_229650A40()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v9 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v4 = *(v2 + 624);
    v5 = sub_229650D34;
  }

  else
  {
    v6 = *(v2 + 712);
    v7 = *(v2 + 624);

    v5 = sub_229650B68;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229650B68()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  v3 = swift_task_alloc();
  *(v0 + 736) = v3;
  *v3 = v0;
  v3[1] = sub_229650C14;
  v4 = *(v0 + 280);

  return sub_229633730(v4);
}

uint64_t sub_229650C14(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 736);
  v7 = *v2;
  *(v3 + 744) = a1;
  *(v3 + 752) = v1;

  if (v1)
  {

    v5 = sub_229654098;
  }

  else
  {
    v5 = sub_2296510CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229650D34()
{
  v1 = *(v0 + 712);

  return MEMORY[0x2822009F8](sub_229650DA8, 0, 0);
}

uint64_t sub_229650DA8()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 552);
  v4 = *(v0 + 520);
  v5 = *(v0 + 480);
  v6 = *(v0 + 280);
  v7 = *(v0 + 248);

  sub_22953EAE4(v4, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v6);
  sub_2295F2274(v3, v5);
  if (v2(v5, 1, v7) == 1)
  {
    v8 = 0;
  }

  else
  {
    v9 = *(v0 + 480);
    v10 = *(v0 + 248);
    v11 = *(v0 + 256);
    v8 = sub_22A4DB77C();
    (*(v11 + 8))(v9, v10);
  }

  v12 = *(v0 + 568);
  v13 = *(v0 + 560);
  v14 = *(v0 + 552);
  [v12 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v14, &unk_27D87D2A0, &unk_22A578BD0);
  v55 = *(v0 + 728);
  v15 = *(v0 + 552);
  v16 = *(v0 + 544);
  v17 = *(v0 + 536);
  v18 = *(v0 + 528);
  v19 = *(v0 + 520);
  v21 = *(v0 + 504);
  v20 = *(v0 + 512);
  v22 = *(v0 + 488);
  v23 = *(v0 + 496);
  v24 = *(v0 + 480);
  v27 = *(v0 + 472);
  v28 = *(v0 + 464);
  v29 = *(v0 + 456);
  v30 = *(v0 + 448);
  v31 = *(v0 + 440);
  v32 = *(v0 + 432);
  v33 = *(v0 + 424);
  v34 = *(v0 + 416);
  v35 = *(v0 + 408);
  v36 = *(v0 + 400);
  v37 = *(v0 + 392);
  v38 = *(v0 + 384);
  v39 = *(v0 + 376);
  v40 = *(v0 + 368);
  v41 = *(v0 + 360);
  v42 = *(v0 + 352);
  v43 = *(v0 + 344);
  v44 = *(v0 + 336);
  v45 = *(v0 + 328);
  v46 = *(v0 + 320);
  v47 = *(v0 + 312);
  v48 = *(v0 + 304);
  v49 = *(v0 + 296);
  v50 = *(v0 + 288);
  v51 = *(v0 + 280);
  v52 = *(v0 + 264);
  v53 = *(v0 + 240);
  v54 = *(v0 + 232);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2296510CC()
{
  v1 = *(v0 + 744);
  if (!v1 || (objc_opt_self(), v127 = v1, !swift_dynamicCastObjCClass()))
  {
    v11 = (v0 + 248);
    v12 = *(v0 + 696);
    v120 = *(v0 + 704);
    v128 = *(v0 + 248);
    v13 = *(v0 + 672);
    v14 = *(v0 + 552);
    v15 = *(v0 + 520);
    v16 = *(v0 + 472);
    v17 = *(v0 + 280);

    sub_2296561E0();
    swift_allocError();
    *v18 = 0xD00000000000002DLL;
    v18[1] = 0x800000022A58E680;
    swift_willThrow();

    sub_22953EAE4(v15, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v17);
    sub_2295F2274(v14, v16);
    if (v12(v16, 1, v128) != 1)
    {
      v19 = (v0 + 472);
      v20 = (v0 + 256);
LABEL_18:
      v48 = *v19;
      v49 = *v20;
      v50 = *v11;
      v47 = sub_22A4DB77C();
      (*(v49 + 8))(v48, v50);
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v2 = *(v0 + 688);
  v3 = *(v0 + 568);
  v4 = *(v0 + 672);
  v5 = sub_22A4DBCDC();
  v6 = [objc_allocWithZone(HMDHomeWalletKey) initWithPKPass:v2 flow:v5];
  *(v0 + 760) = v6;

  v7 = [v3 clientWalletKeyUUID];
  if (v7)
  {
    v8 = *(v0 + 464);
    v9 = v7;
    sub_22A4DB79C();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = (v0 + 248);
  v21 = *(v0 + 248);
  v131 = *(v0 + 704);
  v22 = *(v0 + 576);
  v24 = *(v0 + 456);
  v23 = *(v0 + 464);
  v25 = *(v0 + 240);
  v116 = *(v0 + 224);
  v121 = *(v0 + 696);
  v26 = *(v0 + 256) + 56;
  v22(v23, v10, 1, v21);
  v114 = v6;
  v27 = [v6 uuid];
  sub_22A4DB79C();

  *(v0 + 768) = v26 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v22(v24, 0, 1, v21);
  v28 = *(v116 + 48);
  sub_2295F2274(v23, v25);
  sub_2295F2274(v24, v25 + v28);
  v29 = v121(v25, 1, v21);
  v31 = *(v0 + 696);
  v30 = *(v0 + 704);
  v32 = *(v0 + 248);
  if (v29 == 1)
  {
    v33 = *(v0 + 464);
    sub_22953EAE4(*(v0 + 456), &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v33, &unk_27D87D2A0, &unk_22A578BD0);
    if (v31(v25 + v28, 1, v32) == 1)
    {
      sub_22953EAE4(*(v0 + 240), &unk_27D87D2A0, &unk_22A578BD0);
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  sub_2295F2274(*(v0 + 240), *(v0 + 448));
  v34 = v31(v25 + v28, 1, v32);
  v36 = *(v0 + 456);
  v35 = *(v0 + 464);
  v37 = *(v0 + 448);
  if (v34 == 1)
  {
    v38 = *(v0 + 256);
    v39 = *v11;
    sub_22953EAE4(*(v0 + 456), &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v35, &unk_27D87D2A0, &unk_22A578BD0);
    (*(v38 + 8))(v37, v39);
LABEL_13:
    sub_22953EAE4(*(v0 + 240), &qword_27D87DBA0, &qword_22A57A158);
    goto LABEL_14;
  }

  v66 = *(v0 + 256);
  v67 = *(v0 + 264);
  v68 = *(v0 + 248);
  v132 = *(v0 + 240);
  (*(v66 + 32))(v67, v25 + v28, v68);
  sub_2295B2378();
  v124 = sub_22A4DD58C();
  v69 = *(v66 + 8);
  v69(v67, v68);
  sub_22953EAE4(v36, &unk_27D87D2A0, &unk_22A578BD0);
  sub_22953EAE4(v35, &unk_27D87D2A0, &unk_22A578BD0);
  v69(v37, v68);
  sub_22953EAE4(v132, &unk_27D87D2A0, &unk_22A578BD0);
  if (v124)
  {
LABEL_23:
    *(v0 + 776) = 0x800000022A58E6B0;
    v70 = [*(v0 + 568) clientWalletKeyUUID];
    if (v70)
    {
      v130 = *(v0 + 616);
      v133 = *(v0 + 624);
      v125 = *(v0 + 608);
      v71 = *(v0 + 108);
      v72 = *(v0 + 576);
      v73 = *(v0 + 568);
      v74 = *(v0 + 440);
      v75 = *(v0 + 280);
      v76 = *(v0 + 264);
      v77 = v75 + *(v0 + 60);
      v78 = *(v0 + 248);
      v79 = v70;
      sub_22A4DB79C();

      v72(v74, 0, 1, v78);
      sub_22953EAE4(v74, &unk_27D87D2A0, &unk_22A578BD0);
      v80 = [v73 uuid];
      sub_22A4DB79C();

      v125(v77 + v71, v76, v78);
      *(v75 + 9) = 1;

      return MEMORY[0x2822009F8](sub_229651AE8, v133, 0);
    }

    v119 = *(v0 + 696);
    v126 = *(v0 + 704);
    v81 = *(v0 + 672);
    v82 = *(v0 + 568);
    v111 = *(v0 + 552);
    v83 = *(v0 + 520);
    v84 = *(v0 + 440);
    v85 = *(v0 + 424);
    v86 = *(v0 + 280);
    v87 = *(v0 + 248);
    (*(v0 + 576))(v84, 1, 1, v87);
    sub_22953EAE4(v84, &unk_27D87D2A0, &unk_22A578BD0);

    sub_2296561E0();
    swift_allocError();
    *v88 = 0xD00000000000001ELL;
    v88[1] = 0x800000022A58E630;
    swift_willThrow();

    sub_22953EAE4(v83, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v86);
    sub_2295F2274(v111, v85);
    if (v119(v85, 1, v87) != 1)
    {
      v19 = (v0 + 424);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_14:
  v117 = *(v0 + 696);
  v122 = *(v0 + 704);
  v40 = *(v0 + 672);
  v41 = *(v0 + 552);
  v42 = *(v0 + 520);
  v43 = *(v0 + 432);
  v44 = *(v0 + 280);
  v45 = *(v0 + 248);

  sub_2296561E0();
  swift_allocError();
  *v46 = 0xD00000000000003CLL;
  v46[1] = 0x800000022A58E6B0;
  swift_willThrow();

  sub_22953EAE4(v42, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v44);
  sub_2295F2274(v41, v43);
  if (v117(v43, 1, v45) != 1)
  {
    v19 = (v0 + 432);
LABEL_17:
    v20 = (v0 + 256);
    goto LABEL_18;
  }

LABEL_15:
  v47 = 0;
LABEL_19:
  v51 = *(v0 + 568);
  v52 = *(v0 + 560);
  v53 = *(v0 + 552);
  [v51 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v53, &unk_27D87D2A0, &unk_22A578BD0);
  v54 = *(v0 + 552);
  v55 = *(v0 + 544);
  v56 = *(v0 + 536);
  v57 = *(v0 + 528);
  v58 = *(v0 + 520);
  v59 = *(v0 + 504);
  v60 = *(v0 + 512);
  v61 = *(v0 + 488);
  v62 = *(v0 + 496);
  v63 = *(v0 + 480);
  v89 = *(v0 + 472);
  v90 = *(v0 + 464);
  v91 = *(v0 + 456);
  v92 = *(v0 + 448);
  v93 = *(v0 + 440);
  v94 = *(v0 + 432);
  v95 = *(v0 + 424);
  v96 = *(v0 + 416);
  v97 = *(v0 + 408);
  v98 = *(v0 + 400);
  v99 = *(v0 + 392);
  v100 = *(v0 + 384);
  v101 = *(v0 + 376);
  v102 = *(v0 + 368);
  v103 = *(v0 + 360);
  v104 = *(v0 + 352);
  v105 = *(v0 + 344);
  v106 = *(v0 + 336);
  v107 = *(v0 + 328);
  v108 = *(v0 + 320);
  v109 = *(v0 + 312);
  v110 = *(v0 + 304);
  v112 = *(v0 + 296);
  v113 = *(v0 + 288);
  v115 = *(v0 + 280);
  v118 = *(v0 + 264);
  v123 = *(v0 + 240);
  v129 = *(v0 + 232);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_229651AE8()
{
  v1 = v0[78];
  v2 = v0[71];
  v3 = v0[35];
  v4 = *(v1 + 112);
  v5 = swift_task_alloc();
  v0[98] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = *(MEMORY[0x277D0EF78] + 4);
  v10 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v7 = swift_task_alloc();
  v0[99] = v7;
  *v7 = v0;
  v7[1] = sub_229651BE4;
  v8 = v0[81];

  return v10(v0 + 14, &unk_22A57B7E0, v5, v8);
}

uint64_t sub_229651BE4()
{
  v2 = *v1;
  v3 = *(*v1 + 792);
  v9 = *v1;
  *(*v1 + 800) = v0;

  if (v0)
  {
    v4 = *(v2 + 624);
    v5 = sub_229651ED8;
  }

  else
  {
    v6 = *(v2 + 784);
    v7 = *(v2 + 624);

    v5 = sub_229651D0C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229651D0C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  v3 = swift_task_alloc();
  *(v0 + 808) = v3;
  *v3 = v0;
  v3[1] = sub_229651DB8;
  v4 = *(v0 + 280);

  return sub_229633730(v4);
}

uint64_t sub_229651DB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 808);
  v7 = *v2;
  *(v3 + 816) = a1;
  *(v3 + 824) = v1;

  if (v1)
  {

    v5 = sub_2296543BC;
  }

  else
  {
    v5 = sub_229652280;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229651ED8()
{
  v1 = *(v0 + 784);

  return MEMORY[0x2822009F8](sub_229651F4C, 0, 0);
}

uint64_t sub_229651F4C()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  v4 = *(v0 + 672);
  v5 = *(v0 + 552);
  v6 = *(v0 + 520);
  v7 = *(v0 + 416);
  v8 = *(v0 + 280);
  v9 = *(v0 + 248);

  sub_22953EAE4(v6, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v8);
  sub_2295F2274(v5, v7);
  if (v3(v7, 1, v9) == 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = *(v0 + 416);
    v12 = *(v0 + 248);
    v13 = *(v0 + 256);
    v10 = sub_22A4DB77C();
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(v0 + 568);
  v15 = *(v0 + 560);
  v16 = *(v0 + 552);
  [v14 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
  v57 = *(v0 + 800);
  v17 = *(v0 + 552);
  v18 = *(v0 + 544);
  v19 = *(v0 + 536);
  v20 = *(v0 + 528);
  v21 = *(v0 + 520);
  v23 = *(v0 + 504);
  v22 = *(v0 + 512);
  v24 = *(v0 + 488);
  v25 = *(v0 + 496);
  v26 = *(v0 + 480);
  v29 = *(v0 + 472);
  v30 = *(v0 + 464);
  v31 = *(v0 + 456);
  v32 = *(v0 + 448);
  v33 = *(v0 + 440);
  v34 = *(v0 + 432);
  v35 = *(v0 + 424);
  v36 = *(v0 + 416);
  v37 = *(v0 + 408);
  v38 = *(v0 + 400);
  v39 = *(v0 + 392);
  v40 = *(v0 + 384);
  v41 = *(v0 + 376);
  v42 = *(v0 + 368);
  v43 = *(v0 + 360);
  v44 = *(v0 + 352);
  v45 = *(v0 + 344);
  v46 = *(v0 + 336);
  v47 = *(v0 + 328);
  v48 = *(v0 + 320);
  v49 = *(v0 + 312);
  v50 = *(v0 + 304);
  v51 = *(v0 + 296);
  v52 = *(v0 + 288);
  v53 = *(v0 + 280);
  v54 = *(v0 + 264);
  v55 = *(v0 + 240);
  v56 = *(v0 + 232);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_229652280()
{
  v1 = *(v0 + 816);
  if (v1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v111 = v1;
      v2 = [*(v0 + 568) clientWalletKeyUUID];
      if (v2)
      {
        v3 = *(v0 + 400);
        v4 = v2;
        sub_22A4DB79C();

        v5 = 0;
      }

      else
      {
        v5 = 1;
      }

      v15 = *(v0 + 768);
      v16 = *(v0 + 760);
      v114 = *(v0 + 704);
      v17 = *(v0 + 696);
      v18 = *(v0 + 576);
      v20 = *(v0 + 392);
      v19 = *(v0 + 400);
      v21 = *(v0 + 248);
      v23 = *(v0 + 224);
      v22 = *(v0 + 232);
      v18(v19, v5, 1, v21);
      v24 = [v16 uuid];
      sub_22A4DB79C();

      v18(v20, 0, 1, v21);
      v25 = *(v23 + 48);
      sub_2295F2274(v19, v22);
      sub_2295F2274(v20, v22 + v25);
      v26 = v17(v22, 1, v21);
      v27 = *(v0 + 704);
      v28 = *(v0 + 696);
      v29 = *(v0 + 248);
      if (v26 == 1)
      {
        v30 = *(v0 + 400);
        sub_22953EAE4(*(v0 + 392), &unk_27D87D2A0, &unk_22A578BD0);
        sub_22953EAE4(v30, &unk_27D87D2A0, &unk_22A578BD0);
        if (v28(v22 + v25, 1, v29) == 1)
        {
          sub_22953EAE4(*(v0 + 232), &unk_27D87D2A0, &unk_22A578BD0);
LABEL_22:
          v70 = *(v0 + 624);
          v71 = *(v0 + 616);
          v72 = *(v0 + 608);
          v73 = *(v0 + 108);
          v74 = *(v0 + 600);
          v75 = *(v0 + 264);
          v76 = *(v0 + 248);
          v77 = *(v0 + 280) + *(v0 + 60);
          v78 = [*(v0 + 568) uuid];
          sub_22A4DB79C();

          v72(v77 + v73, v75, v76);
          *(v77 + *(v74 + 68)) = 0;
          *(v77 + *(v74 + 72)) = 2;

          return MEMORY[0x2822009F8](sub_229652A6C, v70, 0);
        }
      }

      else
      {
        sub_2295F2274(*(v0 + 232), *(v0 + 384));
        v31 = v28(v22 + v25, 1, v29);
        v33 = *(v0 + 392);
        v32 = *(v0 + 400);
        v34 = *(v0 + 384);
        if (v31 != 1)
        {
          v65 = *(v0 + 256);
          v66 = *(v0 + 264);
          v67 = *(v0 + 248);
          v115 = *(v0 + 232);
          (*(v65 + 32))(v66, v22 + v25, v67);
          sub_2295B2378();
          v68 = sub_22A4DD58C();
          v69 = *(v65 + 8);
          v69(v66, v67);
          sub_22953EAE4(v33, &unk_27D87D2A0, &unk_22A578BD0);
          sub_22953EAE4(v32, &unk_27D87D2A0, &unk_22A578BD0);
          v69(v34, v67);
          sub_22953EAE4(v115, &unk_27D87D2A0, &unk_22A578BD0);
          if (v68)
          {
            goto LABEL_22;
          }

          goto LABEL_14;
        }

        v36 = *(v0 + 248);
        v35 = *(v0 + 256);
        sub_22953EAE4(*(v0 + 392), &unk_27D87D2A0, &unk_22A578BD0);
        sub_22953EAE4(v32, &unk_27D87D2A0, &unk_22A578BD0);
        (*(v35 + 8))(v34, v36);
      }

      sub_22953EAE4(*(v0 + 232), &qword_27D87DBA0, &qword_22A57A158);
LABEL_14:
      v37 = *(v0 + 776);
      v38 = *(v0 + 760);
      v39 = *(v0 + 744);
      v106 = *(v0 + 696);
      v109 = *(v0 + 704);
      v40 = *(v0 + 672);
      v41 = *(v0 + 552);
      v42 = *(v0 + 520);
      v43 = *(v0 + 376);
      v44 = *(v0 + 280);
      v103 = *(v0 + 248);

      sub_2296561E0();
      swift_allocError();
      *v45 = 0xD00000000000003CLL;
      v45[1] = v37;
      swift_willThrow();

      sub_22953EAE4(v42, &unk_27D87D2A0, &unk_22A578BD0);
      sub_229656184(v44);
      sub_2295F2274(v41, v43);
      if (v106(v43, 1, v103) == 1)
      {
        goto LABEL_15;
      }

      v14 = (v0 + 376);
LABEL_17:
      v47 = *v14;
      v48 = *(v0 + 248);
      v49 = *(v0 + 256);
      v46 = sub_22A4DB77C();
      (*(v49 + 8))(v47, v48);
      goto LABEL_18;
    }
  }

  v6 = *(v0 + 760);
  v7 = *(v0 + 744);
  v108 = *(v0 + 696);
  v112 = *(v0 + 704);
  v8 = *(v0 + 672);
  v9 = *(v0 + 552);
  v10 = *(v0 + 520);
  v11 = *(v0 + 408);
  v12 = *(v0 + 280);
  v105 = *(v0 + 248);

  sub_2296561E0();
  swift_allocError();
  *v13 = 0xD000000000000035;
  v13[1] = 0x800000022A58E6F0;
  swift_willThrow();

  sub_22953EAE4(v10, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v12);
  sub_2295F2274(v9, v11);
  if (v108(v11, 1, v105) != 1)
  {
    v14 = (v0 + 408);
    goto LABEL_17;
  }

LABEL_15:
  v46 = 0;
LABEL_18:
  v50 = *(v0 + 568);
  v51 = *(v0 + 560);
  v52 = *(v0 + 552);
  [v50 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v52, &unk_27D87D2A0, &unk_22A578BD0);
  v53 = *(v0 + 552);
  v54 = *(v0 + 544);
  v55 = *(v0 + 536);
  v56 = *(v0 + 528);
  v57 = *(v0 + 520);
  v58 = *(v0 + 504);
  v59 = *(v0 + 512);
  v60 = *(v0 + 488);
  v61 = *(v0 + 496);
  v62 = *(v0 + 480);
  v79 = *(v0 + 472);
  v80 = *(v0 + 464);
  v81 = *(v0 + 456);
  v82 = *(v0 + 448);
  v83 = *(v0 + 440);
  v84 = *(v0 + 432);
  v85 = *(v0 + 424);
  v86 = *(v0 + 416);
  v87 = *(v0 + 408);
  v88 = *(v0 + 400);
  v89 = *(v0 + 392);
  v90 = *(v0 + 384);
  v91 = *(v0 + 376);
  v92 = *(v0 + 368);
  v93 = *(v0 + 360);
  v94 = *(v0 + 352);
  v95 = *(v0 + 344);
  v96 = *(v0 + 336);
  v97 = *(v0 + 328);
  v98 = *(v0 + 320);
  v99 = *(v0 + 312);
  v100 = *(v0 + 304);
  v101 = *(v0 + 296);
  v102 = *(v0 + 288);
  v104 = *(v0 + 280);
  v107 = *(v0 + 264);
  v110 = *(v0 + 240);
  v113 = *(v0 + 232);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_229652A6C()
{
  v1 = v0[78];
  v2 = v0[71];
  v3 = v0[35];
  v4 = *(v1 + 112);
  v5 = swift_task_alloc();
  v0[104] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = *(MEMORY[0x277D0EF78] + 4);
  v10 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v7 = swift_task_alloc();
  v0[105] = v7;
  *v7 = v0;
  v7[1] = sub_229652B68;
  v8 = v0[81];

  return v10(v0 + 20, &unk_22A57B7E8, v5, v8);
}

uint64_t sub_229652B68()
{
  v2 = *v1;
  v3 = *(*v1 + 840);
  v9 = *v1;
  *(*v1 + 848) = v0;

  if (v0)
  {
    v4 = *(v2 + 624);
    v5 = sub_229652E5C;
  }

  else
  {
    v6 = *(v2 + 832);
    v7 = *(v2 + 624);

    v5 = sub_229652C90;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229652C90()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 176);

  v3 = swift_task_alloc();
  *(v0 + 856) = v3;
  *v3 = v0;
  v3[1] = sub_229652D44;
  v4 = *(v0 + 280);

  return sub_229633730(v4);
}

uint64_t sub_229652D44(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 856);
  v7 = *v2;
  *(v3 + 864) = a1;
  *(v3 + 872) = v1;

  if (v1)
  {
    v5 = sub_2296546F0;
  }

  else
  {
    v5 = sub_229653214;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229652E5C()
{
  v1 = *(v0 + 832);

  return MEMORY[0x2822009F8](sub_229652ED0, 0, 0);
}

uint64_t sub_229652ED0()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 744);
  v57 = *(v0 + 704);
  v3 = *(v0 + 696);
  v4 = *(v0 + 672);
  v5 = *(v0 + 552);
  v6 = *(v0 + 520);
  v7 = *(v0 + 368);
  v8 = *(v0 + 280);
  v9 = *(v0 + 248);

  sub_22953EAE4(v6, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v8);
  sub_2295F2274(v5, v7);
  if (v3(v7, 1, v9) == 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = *(v0 + 368);
    v12 = *(v0 + 248);
    v13 = *(v0 + 256);
    v10 = sub_22A4DB77C();
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(v0 + 568);
  v15 = *(v0 + 560);
  v16 = *(v0 + 552);
  [v14 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
  v58 = *(v0 + 848);
  v17 = *(v0 + 552);
  v18 = *(v0 + 544);
  v19 = *(v0 + 536);
  v20 = *(v0 + 528);
  v21 = *(v0 + 520);
  v23 = *(v0 + 504);
  v22 = *(v0 + 512);
  v24 = *(v0 + 488);
  v25 = *(v0 + 496);
  v26 = *(v0 + 480);
  v29 = *(v0 + 472);
  v30 = *(v0 + 464);
  v31 = *(v0 + 456);
  v32 = *(v0 + 448);
  v33 = *(v0 + 440);
  v34 = *(v0 + 432);
  v35 = *(v0 + 424);
  v36 = *(v0 + 416);
  v37 = *(v0 + 408);
  v38 = *(v0 + 400);
  v39 = *(v0 + 392);
  v40 = *(v0 + 384);
  v41 = *(v0 + 376);
  v42 = *(v0 + 368);
  v43 = *(v0 + 360);
  v44 = *(v0 + 352);
  v45 = *(v0 + 344);
  v46 = *(v0 + 336);
  v47 = *(v0 + 328);
  v48 = *(v0 + 320);
  v49 = *(v0 + 312);
  v50 = *(v0 + 304);
  v51 = *(v0 + 296);
  v52 = *(v0 + 288);
  v53 = *(v0 + 280);
  v54 = *(v0 + 264);
  v55 = *(v0 + 240);
  v56 = *(v0 + 232);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_229653214()
{
  v1 = *(v0 + 864);
  if (v1)
  {
    v2 = *(v0 + 816);
    v3 = *(v0 + 760);
    v4 = *(v0 + 744);
    v133 = *(v0 + 696);
    v138 = *(v0 + 704);
    v5 = *(v0 + 672);
    v6 = *(v0 + 520);
    v7 = *(v0 + 352);
    v8 = *(v0 + 280);
    v125 = *(v0 + 248);
    v129 = *(v0 + 552);
    sub_2296561E0();
    swift_allocError();
    *v9 = 0xD000000000000014;
    v9[1] = 0x800000022A58E730;
    swift_willThrow();

    sub_22953EAE4(v6, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v8);
    sub_2295F2274(v129, v7);
    if (v133(v7, 1, v125) != 1)
    {
      v10 = (v0 + 352);
LABEL_10:
      v31 = *v10;
      v32 = *(v0 + 248);
      v33 = *(v0 + 256);
      v22 = sub_22A4DB77C();
      (*(v33 + 8))(v31, v32);
      goto LABEL_11;
    }
  }

  else
  {
    v11 = [*(v0 + 568) clientWalletKeyUUID];
    if (!v11)
    {
      v23 = *(v0 + 768);
      v24 = *(v0 + 704);
      v25 = *(v0 + 696);
      v26 = *(v0 + 552);
      v27 = *(v0 + 360);
      v28 = *(v0 + 344);
      v29 = *(v0 + 248);
      (*(v0 + 576))(v27, 1, 1, v29);
      sub_22953EAE4(v27, &unk_27D87D2A0, &unk_22A578BD0);
      sub_2295F2274(v26, v28);
      if (v25(v28, 1, v29) == 1)
      {
        v30 = 0;
      }

      else
      {
        v49 = *(v0 + 344);
        v50 = *(v0 + 248);
        v51 = *(v0 + 256);
        v30 = sub_22A4DB77C();
        (*(v51 + 8))(v49, v50);
      }

      v52 = *(v0 + 816);
      v53 = *(v0 + 760);
      v54 = *(v0 + 744);
      v141 = *(v0 + 696);
      v143 = *(v0 + 704);
      v55 = *(v0 + 672);
      v56 = *(v0 + 552);
      v57 = *(v0 + 520);
      v58 = *(v0 + 328);
      v59 = *(v0 + 280);
      v136 = *(v0 + 248);
      [*(v0 + 568) saveClientWalletKeyUUIDToLocalStore_];

      sub_22953EAE4(v57, &unk_27D87D2A0, &unk_22A578BD0);
      sub_229656184(v59);
      sub_2295F2274(v56, v58);
      if (v141(v58, 1, v136) == 1)
      {
        v60 = 0;
      }

      else
      {
        v61 = *(v0 + 328);
        v62 = *(v0 + 248);
        v63 = *(v0 + 256);
        v60 = sub_22A4DB77C();
        (*(v63 + 8))(v61, v62);
      }

      v64 = *(v0 + 568);
      v65 = *(v0 + 560);
      v66 = *(v0 + 552);
      v67 = *(v0 + 544);
      v68 = *(v0 + 536);
      v69 = *(v0 + 528);
      v70 = *(v0 + 520);
      v71 = *(v0 + 512);
      v72 = *(v0 + 504);
      v73 = *(v0 + 496);
      v74 = *(v0 + 488);
      v76 = *(v0 + 480);
      v78 = *(v0 + 472);
      v80 = *(v0 + 464);
      v82 = *(v0 + 456);
      v84 = *(v0 + 448);
      v86 = *(v0 + 440);
      v88 = *(v0 + 432);
      v90 = *(v0 + 424);
      v92 = *(v0 + 416);
      v94 = *(v0 + 408);
      v96 = *(v0 + 400);
      v98 = *(v0 + 392);
      v100 = *(v0 + 384);
      v102 = *(v0 + 376);
      v106 = *(v0 + 368);
      v110 = *(v0 + 360);
      v114 = *(v0 + 352);
      v118 = *(v0 + 344);
      v104 = *(v0 + 336);
      v108 = *(v0 + 328);
      v112 = *(v0 + 320);
      v116 = *(v0 + 312);
      v121 = *(v0 + 304);
      v124 = *(v0 + 296);
      v128 = *(v0 + 288);
      v132 = *(v0 + 280);
      v137 = *(v0 + 264);
      v142 = *(v0 + 240);
      v144 = *(v0 + 232);
      [v64 saveClientWalletKeyUUIDToLocalStore_];

      sub_22953EAE4(v66, &unk_27D87D2A0, &unk_22A578BD0);

      v47 = *(v0 + 8);
      goto LABEL_12;
    }

    v12 = *(v0 + 768);
    v13 = *(v0 + 760);
    v14 = *(v0 + 744);
    v134 = *(v0 + 696);
    v139 = *(v0 + 704);
    v119 = *(v0 + 672);
    v122 = *(v0 + 816);
    v15 = *(v0 + 576);
    v16 = *(v0 + 520);
    v17 = *(v0 + 360);
    v18 = *(v0 + 336);
    v126 = *(v0 + 280);
    v130 = *(v0 + 552);
    v19 = *(v0 + 248);
    v20 = v11;
    sub_22A4DB79C();

    v15(v17, 0, 1, v19);
    sub_22953EAE4(v17, &unk_27D87D2A0, &unk_22A578BD0);
    sub_2296561E0();
    swift_allocError();
    *v21 = 0xD00000000000001FLL;
    v21[1] = 0x800000022A58E750;
    swift_willThrow();

    sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v126);
    sub_2295F2274(v130, v18);
    if (v134(v18, 1, v19) != 1)
    {
      v10 = (v0 + 336);
      goto LABEL_10;
    }
  }

  v22 = 0;
LABEL_11:
  v34 = *(v0 + 568);
  v35 = *(v0 + 560);
  v36 = *(v0 + 552);
  [v34 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v36, &unk_27D87D2A0, &unk_22A578BD0);
  v37 = *(v0 + 552);
  v38 = *(v0 + 544);
  v39 = *(v0 + 536);
  v40 = *(v0 + 528);
  v41 = *(v0 + 520);
  v43 = *(v0 + 504);
  v42 = *(v0 + 512);
  v44 = *(v0 + 488);
  v45 = *(v0 + 496);
  v46 = *(v0 + 480);
  v75 = *(v0 + 472);
  v77 = *(v0 + 464);
  v79 = *(v0 + 456);
  v81 = *(v0 + 448);
  v83 = *(v0 + 440);
  v85 = *(v0 + 432);
  v87 = *(v0 + 424);
  v89 = *(v0 + 416);
  v91 = *(v0 + 408);
  v93 = *(v0 + 400);
  v95 = *(v0 + 392);
  v97 = *(v0 + 384);
  v99 = *(v0 + 376);
  v101 = *(v0 + 368);
  v103 = *(v0 + 360);
  v105 = *(v0 + 352);
  v107 = *(v0 + 344);
  v109 = *(v0 + 336);
  v111 = *(v0 + 328);
  v113 = *(v0 + 320);
  v115 = *(v0 + 312);
  v117 = *(v0 + 304);
  v120 = *(v0 + 296);
  v123 = *(v0 + 288);
  v127 = *(v0 + 280);
  v131 = *(v0 + 264);
  v135 = *(v0 + 240);
  v140 = *(v0 + 232);

  v47 = *(v0 + 8);
LABEL_12:

  return v47();
}

uint64_t sub_229653AA4()
{
  v1 = v0[40];
  v2 = v0[31];
  v3 = v0[32];
  sub_2295F2274(v0[69], v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = v0[40];
    v6 = v0[31];
    v7 = v0[32];
    v4 = sub_22A4DB77C();
    (*(v7 + 8))(v5, v6);
  }

  v8 = v0[71];
  v9 = v0[70];
  v10 = v0[69];
  [v8 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v10, &unk_27D87D2A0, &unk_22A578BD0);
  v51 = v0[74];
  v11 = v0[69];
  v12 = v0[68];
  v13 = v0[67];
  v14 = v0[66];
  v15 = v0[65];
  v17 = v0[63];
  v16 = v0[64];
  v18 = v0[61];
  v19 = v0[62];
  v20 = v0[60];
  v23 = v0[59];
  v24 = v0[58];
  v25 = v0[57];
  v26 = v0[56];
  v27 = v0[55];
  v28 = v0[54];
  v29 = v0[53];
  v30 = v0[52];
  v31 = v0[51];
  v32 = v0[50];
  v33 = v0[49];
  v34 = v0[48];
  v35 = v0[47];
  v36 = v0[46];
  v37 = v0[45];
  v38 = v0[44];
  v39 = v0[43];
  v40 = v0[42];
  v41 = v0[41];
  v42 = v0[40];
  v43 = v0[39];
  v44 = v0[38];
  v45 = v0[37];
  v46 = v0[36];
  v47 = v0[35];
  v48 = v0[33];
  v49 = v0[30];
  v50 = v0[29];

  v21 = v0[1];

  return v21();
}

uint64_t sub_229653D98()
{
  v1 = v0[69];
  v2 = v0[39];
  v3 = v0[31];
  v4 = v0[32];
  sub_229656184(v0[35]);
  sub_2295F2274(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = v0[39];
    v7 = v0[31];
    v8 = v0[32];
    v5 = sub_22A4DB77C();
    (*(v8 + 8))(v6, v7);
  }

  v9 = v0[71];
  v10 = v0[70];
  v11 = v0[69];
  [v9 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v11, &unk_27D87D2A0, &unk_22A578BD0);
  v52 = v0[85];
  v12 = v0[69];
  v13 = v0[68];
  v14 = v0[67];
  v15 = v0[66];
  v16 = v0[65];
  v18 = v0[63];
  v17 = v0[64];
  v19 = v0[61];
  v20 = v0[62];
  v21 = v0[60];
  v24 = v0[59];
  v25 = v0[58];
  v26 = v0[57];
  v27 = v0[56];
  v28 = v0[55];
  v29 = v0[54];
  v30 = v0[53];
  v31 = v0[52];
  v32 = v0[51];
  v33 = v0[50];
  v34 = v0[49];
  v35 = v0[48];
  v36 = v0[47];
  v37 = v0[46];
  v38 = v0[45];
  v39 = v0[44];
  v40 = v0[43];
  v41 = v0[42];
  v42 = v0[41];
  v43 = v0[40];
  v44 = v0[39];
  v45 = v0[38];
  v46 = v0[37];
  v47 = v0[36];
  v48 = v0[35];
  v49 = v0[33];
  v50 = v0[30];
  v51 = v0[29];

  v22 = v0[1];

  return v22();
}

uint64_t sub_229654098()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 552);
  v4 = *(v0 + 520);
  v5 = *(v0 + 304);
  v6 = *(v0 + 280);
  v7 = *(v0 + 248);

  sub_22953EAE4(v4, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v6);
  sub_2295F2274(v3, v5);
  if (v2(v5, 1, v7) == 1)
  {
    v8 = 0;
  }

  else
  {
    v9 = *(v0 + 304);
    v10 = *(v0 + 248);
    v11 = *(v0 + 256);
    v8 = sub_22A4DB77C();
    (*(v11 + 8))(v9, v10);
  }

  v12 = *(v0 + 568);
  v13 = *(v0 + 560);
  v14 = *(v0 + 552);
  [v12 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v14, &unk_27D87D2A0, &unk_22A578BD0);
  v55 = *(v0 + 752);
  v15 = *(v0 + 552);
  v16 = *(v0 + 544);
  v17 = *(v0 + 536);
  v18 = *(v0 + 528);
  v19 = *(v0 + 520);
  v21 = *(v0 + 504);
  v20 = *(v0 + 512);
  v22 = *(v0 + 488);
  v23 = *(v0 + 496);
  v24 = *(v0 + 480);
  v27 = *(v0 + 472);
  v28 = *(v0 + 464);
  v29 = *(v0 + 456);
  v30 = *(v0 + 448);
  v31 = *(v0 + 440);
  v32 = *(v0 + 432);
  v33 = *(v0 + 424);
  v34 = *(v0 + 416);
  v35 = *(v0 + 408);
  v36 = *(v0 + 400);
  v37 = *(v0 + 392);
  v38 = *(v0 + 384);
  v39 = *(v0 + 376);
  v40 = *(v0 + 368);
  v41 = *(v0 + 360);
  v42 = *(v0 + 352);
  v43 = *(v0 + 344);
  v44 = *(v0 + 336);
  v45 = *(v0 + 328);
  v46 = *(v0 + 320);
  v47 = *(v0 + 312);
  v48 = *(v0 + 304);
  v49 = *(v0 + 296);
  v50 = *(v0 + 288);
  v51 = *(v0 + 280);
  v52 = *(v0 + 264);
  v53 = *(v0 + 240);
  v54 = *(v0 + 232);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2296543BC()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  v4 = *(v0 + 672);
  v5 = *(v0 + 552);
  v6 = *(v0 + 520);
  v7 = *(v0 + 296);
  v8 = *(v0 + 280);
  v9 = *(v0 + 248);

  sub_22953EAE4(v6, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v8);
  sub_2295F2274(v5, v7);
  if (v3(v7, 1, v9) == 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = *(v0 + 296);
    v12 = *(v0 + 248);
    v13 = *(v0 + 256);
    v10 = sub_22A4DB77C();
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(v0 + 568);
  v15 = *(v0 + 560);
  v16 = *(v0 + 552);
  [v14 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
  v57 = *(v0 + 824);
  v17 = *(v0 + 552);
  v18 = *(v0 + 544);
  v19 = *(v0 + 536);
  v20 = *(v0 + 528);
  v21 = *(v0 + 520);
  v23 = *(v0 + 504);
  v22 = *(v0 + 512);
  v24 = *(v0 + 488);
  v25 = *(v0 + 496);
  v26 = *(v0 + 480);
  v29 = *(v0 + 472);
  v30 = *(v0 + 464);
  v31 = *(v0 + 456);
  v32 = *(v0 + 448);
  v33 = *(v0 + 440);
  v34 = *(v0 + 432);
  v35 = *(v0 + 424);
  v36 = *(v0 + 416);
  v37 = *(v0 + 408);
  v38 = *(v0 + 400);
  v39 = *(v0 + 392);
  v40 = *(v0 + 384);
  v41 = *(v0 + 376);
  v42 = *(v0 + 368);
  v43 = *(v0 + 360);
  v44 = *(v0 + 352);
  v45 = *(v0 + 344);
  v46 = *(v0 + 336);
  v47 = *(v0 + 328);
  v48 = *(v0 + 320);
  v49 = *(v0 + 312);
  v50 = *(v0 + 304);
  v51 = *(v0 + 296);
  v52 = *(v0 + 288);
  v53 = *(v0 + 280);
  v54 = *(v0 + 264);
  v55 = *(v0 + 240);
  v56 = *(v0 + 232);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2296546F0()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 744);
  v57 = *(v0 + 704);
  v3 = *(v0 + 696);
  v4 = *(v0 + 672);
  v5 = *(v0 + 552);
  v6 = *(v0 + 520);
  v8 = *(v0 + 280);
  v7 = *(v0 + 288);
  v9 = *(v0 + 248);

  sub_22953EAE4(v6, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v8);
  sub_2295F2274(v5, v7);
  if (v3(v7, 1, v9) == 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = *(v0 + 288);
    v12 = *(v0 + 248);
    v13 = *(v0 + 256);
    v10 = sub_22A4DB77C();
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(v0 + 568);
  v15 = *(v0 + 560);
  v16 = *(v0 + 552);
  [v14 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
  v58 = *(v0 + 872);
  v17 = *(v0 + 552);
  v18 = *(v0 + 544);
  v19 = *(v0 + 536);
  v20 = *(v0 + 528);
  v21 = *(v0 + 520);
  v23 = *(v0 + 504);
  v22 = *(v0 + 512);
  v24 = *(v0 + 488);
  v25 = *(v0 + 496);
  v26 = *(v0 + 480);
  v29 = *(v0 + 472);
  v30 = *(v0 + 464);
  v31 = *(v0 + 456);
  v32 = *(v0 + 448);
  v33 = *(v0 + 440);
  v34 = *(v0 + 432);
  v35 = *(v0 + 424);
  v36 = *(v0 + 416);
  v37 = *(v0 + 408);
  v38 = *(v0 + 400);
  v39 = *(v0 + 392);
  v40 = *(v0 + 384);
  v41 = *(v0 + 376);
  v42 = *(v0 + 368);
  v43 = *(v0 + 360);
  v44 = *(v0 + 352);
  v45 = *(v0 + 344);
  v46 = *(v0 + 336);
  v47 = *(v0 + 328);
  v48 = *(v0 + 320);
  v49 = *(v0 + 312);
  v50 = *(v0 + 304);
  v51 = *(v0 + 296);
  v52 = *(v0 + 288);
  v53 = *(v0 + 280);
  v54 = *(v0 + 264);
  v55 = *(v0 + 240);
  v56 = *(v0 + 232);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_229654A30()
{
  v1 = *(*(type metadata accessor for HomePassState(0) - 8) + 64) + 15;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_229654AF4;

  return sub_229633120(v2);
}

uint64_t sub_229654AF4()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_229655F5C;
  }

  else
  {
    v3 = sub_229654C08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229654C08()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 136) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229654CA4, v1, 0);
}

uint64_t sub_229654CA4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[18] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[19] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[20] = v7;
  *v6 = v0;
  v6[1] = sub_229654DB0;

  return v9(v0 + 2, &unk_22A57B790, v4, v7);
}

uint64_t sub_229654DB0()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);
    v5 = sub_2296550A8;
  }

  else
  {
    v7 = *(v2 + 136);
    v6 = *(v2 + 144);

    v5 = sub_229654ED4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229654ED4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *v3 = v0;
  v3[1] = sub_229654F80;
  v4 = *(v0 + 112);

  return sub_229633730(v4);
}

uint64_t sub_229654F80(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v7 = sub_229655FC0;
  }

  else
  {
    *(v4 + 192) = a1;
    v7 = sub_22965517C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2296550A8()
{
  v1 = *(v0 + 144);

  return MEMORY[0x2822009F8](sub_229655110, 0, 0);
}

uint64_t sub_229655110()
{
  sub_229656184(v0[14]);
  v1 = v0[21];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22965517C()
{
  v1 = v0[24];
  if (!v1 || (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) == 0))
  {
    v6 = v0[14];
    sub_2296561E0();
    swift_allocError();
    *v7 = 0xD000000000000023;
    v7[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v6);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = v0[23];
  v5 = v1;
  sub_22964206C(v3, 1, 1);
  if (v4)
  {
    sub_229656184(v0[14]);

LABEL_6:
    v8 = v0[14];

    v9 = v0[1];

    return v9();
  }

  v11 = v0[17];

  return MEMORY[0x2822009F8](sub_2296552E4, v11, 0);
}

uint64_t sub_2296552E4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[25] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_2296553D8;
  v7 = v0[20];

  return v9(v0 + 8, &unk_22A57B7A8, v4, v7);
}

uint64_t sub_2296553D8()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(v2 + 216) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = *(v2 + 136);

    v7 = sub_2296556D4;
  }

  else
  {
    v6 = *(v2 + 136);

    v7 = sub_229655528;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_229655528()
{
  *(v0 + 224) = *(v0 + 64);
  *(v0 + 232) = *(v0 + 72);
  *(v0 + 248) = *(v0 + 88);
  return MEMORY[0x2822009F8](sub_22965555C, 0, 0);
}

uint64_t sub_22965555C()
{
  if (v0[28] == 4)
  {
    v1 = swift_task_alloc();
    v0[32] = v1;
    *v1 = v0;
    v1[1] = sub_229655768;
    v2 = v0[14];

    return sub_229633730(v2);
  }

  else
  {
    v4 = v0[30];
    v5 = v0[31];
    v6 = v0[29];
    v7 = v0[24];
    v8 = v0[14];

    sub_2296561E0();
    swift_allocError();
    *v9 = 0xD000000000000022;
    v9[1] = 0x800000022A58E4E0;
    swift_willThrow();

    sub_229656184(v8);
    v10 = v0[14];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2296556F0()
{
  v1 = *(v0 + 112);

  sub_229656184(v1);
  v2 = *(v0 + 216);
  v3 = *(v0 + 112);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_229655768(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  v7 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {

    v5 = sub_22965602C;
  }

  else
  {
    v5 = sub_229655884;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229655884()
{
  v1 = v0[33];
  if (!v1 || (objc_opt_self(), v2 = swift_dynamicCastObjCClass(), (v0[35] = v2) == 0))
  {
    v10 = v0[30];
    v11 = v0[31];
    v12 = v0[29];
    v13 = v0[24];
    v14 = v0[14];

    sub_2296561E0();
    swift_allocError();
    *v15 = 0xD000000000000016;
    v15[1] = 0x800000022A58E510;
    swift_willThrow();

    sub_229656184(v14);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = v0[34];
  v5 = v1;
  sub_22964206C(v3, 1, 1);
  if (v4)
  {
    v6 = v0[30];
    v7 = v0[31];
    v8 = v0[29];
    v9 = v0[24];
    sub_229656184(v0[14]);

LABEL_6:
    v16 = v0[14];

    v17 = v0[1];

    return v17();
  }

  v19 = v0[24];

  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v20 = static PassLibrary.shared;
  v0[36] = static PassLibrary.shared;

  return MEMORY[0x2822009F8](sub_229655A9C, v20, 0);
}

uint64_t sub_229655A9C()
{
  v1 = *(v0 + 35);
  v2 = *(*(v0 + 36) + 112);
  v3 = swift_task_alloc();
  *(v0 + 37) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 38) = v5;
  *v5 = v0;
  v5[1] = sub_229655B88;

  return v7(v0 + 57, &unk_22A57B7B0, v3, &type metadata for ExpressSettings);
}

uint64_t sub_229655B88()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v9 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = *(v2 + 288);
    v5 = sub_229655E4C;
  }

  else
  {
    v7 = *(v2 + 288);
    v6 = *(v2 + 296);

    v5 = sub_229655CAC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229655CAC()
{
  v0[59] = v0[57];
  v0[60] = v0[58];
  return MEMORY[0x2822009F8](sub_229655CD8, 0, 0);
}

uint64_t sub_229655CD8()
{
  if (*(v0 + 59) == 1)
  {
    v1 = *(v0 + 264);
    v2 = *(v0 + 240);
    v3 = *(v0 + 248);
    v4 = *(v0 + 232);
    v5 = *(v0 + 192);
    v6 = *(v0 + 112);
    if (*(v0 + 60))
    {
      v7 = *(v0 + 232);

      sub_229656184(v6);

      v8 = *(v0 + 8);
      goto LABEL_7;
    }

    v11 = "NFC was not enabled";
  }

  else
  {
    v1 = *(v0 + 264);
    v9 = *(v0 + 240);
    v3 = *(v0 + 248);
    v10 = *(v0 + 232);
    v5 = *(v0 + 192);
    v11 = "pass was not in wallet";
    v6 = *(v0 + 112);
  }

  v12 = v11 | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v13 = 0xD000000000000013;
  v13[1] = v12;
  swift_willThrow();

  sub_229656184(v6);
  v14 = *(v0 + 112);

  v8 = *(v0 + 8);
LABEL_7:

  return v8();
}

uint64_t sub_229655E4C()
{
  v1 = *(v0 + 296);

  return MEMORY[0x2822009F8](sub_229655EB4, 0, 0);
}

uint64_t sub_229655EB4()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[29];
  v5 = v0[24];
  v6 = v0[14];

  sub_229656184(v6);
  v7 = v0[39];
  v8 = v0[14];

  v9 = v0[1];

  return v9();
}

uint64_t sub_229655F5C()
{
  v1 = v0[16];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_229655FC0()
{
  sub_229656184(v0[14]);
  v1 = v0[23];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22965602C()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[24];
  v5 = v0[14];

  sub_229656184(v5);
  v6 = v0[34];
  v7 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2296560D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_229859A44(a1, v4, v5, v6);
}

uint64_t sub_229656184(uint64_t a1)
{
  v2 = type metadata accessor for HomePassState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2296561E0()
{
  result = qword_27D87E2A8;
  if (!qword_27D87E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E2A8);
  }

  return result;
}

uint64_t sub_229656234(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_229868D84(a1, v4);
}

unint64_t sub_2296562D4()
{
  result = qword_27D87E2B8;
  if (!qword_27D87E2B8)
  {
    sub_229562F68(255, &qword_281401930, 0x277D37FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E2B8);
  }

  return result;
}

uint64_t sub_22965633C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229866644(a1, v4, v5, v7, v6);
}

uint64_t sub_229656450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomePassData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2296565A4(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v28 = a6;
  v13 = sub_22A4DB7DC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v18 = &v7[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventName];
  *v18 = 0xD00000000000003ALL;
  *(v18 + 1) = 0x800000022A58ECD0;
  *&v7[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventOptions] = 0;
  swift_unknownObjectWeakAssign();
  *&v7[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_nodeId] = a2;
  *&v7[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_endpointId] = a3;
  *&v7[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_clusterId] = a4;
  *&v7[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_commandId] = a5;
  *&v7[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_source] = v28;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = [a1 uuid];
  sub_22A4DB79C();

  v23 = sub_22A4DB77C();
  (*(v14 + 8))(v17, v13);
  v24 = type metadata accessor for MatterAccessoryInvokeCommandLogEvent();
  v29.receiver = v7;
  v29.super_class = v24;
  v25 = objc_msgSendSuper2(&v29, sel_initWithHomeUUID_, v23);

  return v25;
}

unint64_t sub_229656904()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A577B20;
  *(inited + 32) = 0x644965646F6ELL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  *(inited + 56) = 0x746E696F70646E65;
  *(inited + 64) = 0xEA00000000006449;
  v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_endpointId);
  *(inited + 72) = v2;
  *(inited + 80) = 0x4972657473756C63;
  *(inited + 88) = 0xE900000000000064;
  v3 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_clusterId);
  *(inited + 96) = v3;
  *(inited + 104) = 0x49646E616D6D6F63;
  *(inited + 112) = 0xE900000000000064;
  v4 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_commandId);
  *(inited + 120) = v4;
  *(inited + 128) = 0x656372756F73;
  *(inited + 136) = 0xE600000000000000;
  v5 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_source);
  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v7 = v2;
  v8 = v3;
  v9 = v4;
  *(inited + 144) = [v6 initWithUnsignedInteger_];
  v10 = sub_22956AC48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD90, &qword_22A5779F0);
  swift_arrayDestroy();
  return v10;
}

id sub_229656BD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatterAccessoryInvokeCommandLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_229656CA8()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8AB750);
  __swift_project_value_buffer(v0, qword_27D8AB750);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_229656D24(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 96) = a1;
  *(v2 + 40) = *v1;
  return MEMORY[0x2822009F8](sub_229656D70, v1, 0);
}

uint64_t sub_229656D70()
{
  v23 = v0;
  v1 = *(*(v0 + 32) + 112);
  *(v0 + 48) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v2 backingStore];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 context];
      *(v0 + 56) = v5;

      if (v5)
      {
        v6 = *(v0 + 32);
        v7 = *(v0 + 40);
        v8 = *(v0 + 96);
        v9 = swift_allocObject();
        *(v0 + 64) = v9;
        *(v9 + 16) = v2;
        *(v9 + 24) = v8;
        *(v9 + 32) = v6;
        *(v9 + 40) = v5;
        *(v9 + 48) = v7;
        v10 = v2;

        v11 = v5;

        return MEMORY[0x2822009F8](sub_229657054, 0, 0);
      }
    }
  }

  if (qword_27D87B960 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 32);
  v13 = sub_22A4DD07C();
  __swift_project_value_buffer(v13, qword_27D8AB750);

  v14 = sub_22A4DD05C();
  v15 = sub_22A4DDCEC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 32);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v22[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_2295A3E30(*(v16 + 120), *(v16 + 128), v22);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A58ED80, v22);
    _os_log_impl(&dword_229538000, v14, v15, "%s %s Missing context, failed to save", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v18, -1, -1);
    MEMORY[0x22AAD4E50](v17, -1, -1);
  }

  type metadata accessor for HMError(0);
  *(v0 + 24) = 20;
  sub_22956AD8C(MEMORY[0x277D84F90]);
  sub_22958E108();
  sub_22A4DB3CC();
  v19 = *(v0 + 16);
  swift_willThrow();
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_229657054()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = swift_task_alloc();
  v0[9] = v3;
  v3[2] = v2;
  v3[3] = sub_229657850;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_22965715C;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_229586C80, v3, v6);
}

uint64_t sub_22965715C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_2296572F4;
    v5 = 0;
  }

  else
  {
    v6 = v2[8];
    v7 = v2[9];
    v8 = v2[4];

    v4 = sub_22965728C;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22965728C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296572F4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[4];

  return MEMORY[0x2822009F8](sub_229657368, v3, 0);
}

uint64_t sub_229657368()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 88);
  v3 = *(v0 + 8);

  return v3();
}

void sub_2296573D0(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v34) = a2;
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v14 = [a1 uuid];
  sub_22A4DB79C();

  v15 = sub_22A4DB77C();
  (*(v9 + 8))(v12, v8);
  v16 = [v13 findHomeWithModelID_];

  v35 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D290, &qword_22A57BB20);
  sub_22A4DBD4C();
  swift_unknownObjectRelease();
  if (!v4)
  {
    v33[1] = a4;
    v17 = v36;
    v18 = [v36 isAllowedToEnableAdaptiveTemperatureAutomations];
    v19 = sub_22A4DD8AC();
    [v17 setIsAllowedToEnableAdaptiveTemperatureAutomations_];

    if (qword_27D87B960 != -1)
    {
      swift_once();
    }

    v20 = sub_22A4DD07C();
    __swift_project_value_buffer(v20, qword_27D8AB750);
    v21 = a3;

    v22 = v18;
    swift_unknownObjectRetain();
    v23 = sub_22A4DD05C();
    v24 = sub_22A4DDCCC();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v34 = v18;
      v26 = v25;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v21;
      v30 = v28;
      v36 = v28;
      *v26 = 136315906;
      *(v26 + 4) = sub_2295A3E30(*(v29 + 120), *(v29 + 128), &v36);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A58ED80, &v36);
      *(v26 + 22) = 2112;
      *(v26 + 24) = v22;
      *v27 = v34;
      *(v26 + 32) = 2112;
      v31 = v22;
      v32 = [v17 isAllowedToEnableAdaptiveTemperatureAutomations];
      *(v26 + 34) = v32;
      v27[1] = v32;
      _os_log_impl(&dword_229538000, v23, v24, "%s %s Saving isAllowedToEnableAdaptiveTemperatureAutomations from %@ to %@", v26, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v27, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);
    }

    sub_2297082C0();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2296577EC()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_229657878(void *a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v2[14] = a1;
  v4 = [a1 logIdentifier];
  v5 = sub_22A4DD5EC();
  v7 = v6;

  MEMORY[0x22AAD08C0](v5, v7);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  v2[15] = 91;
  v2[16] = 0xE100000000000000;
  return v2;
}

id sub_229657924()
{
  result = [objc_allocWithZone(HMDRegistry) init];
  qword_281401C50 = result;
  return result;
}

unint64_t type metadata accessor for HMDRegistry()
{
  result = qword_27D87E310;
  if (!qword_27D87E310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87E310);
  }

  return result;
}

id sub_229657BA8()
{
  if (qword_281401E88 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281401E90);
  if (off_281401E98)
  {
    v0 = off_281401E98;
  }

  else
  {
    v0 = sub_22989D2C4(0x65446E6F6D656144, 0xED0000746C756166);
    off_281401E98 = v0;
  }

  os_unfair_lock_unlock(&dword_281401E90);
  os_unfair_lock_lock(v0 + 4);
  v1 = *(v0 + 3);
  v2 = v1;
  os_unfair_lock_unlock(v0 + 4);
  if (!v1)
  {
    v3 = *(v0 + 11);
    v4 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v3);
    v2 = (*(v4 + 16))(v0, v3, v4);
  }

  return v2;
}

id sub_229657CC8()
{
  if (qword_281401E88 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281401E90);
  if (off_281401E98)
  {
    v0 = off_281401E98;
  }

  else
  {
    v0 = sub_22989D2C4(0x65446E6F6D656144, 0xED0000746C756166);
    off_281401E98 = v0;
  }

  os_unfair_lock_unlock(&dword_281401E90);
  os_unfair_lock_lock(v0 + 4);
  v1 = *(v0 + 4);
  v2 = v1;
  os_unfair_lock_unlock(v0 + 4);
  if (!v1)
  {
    v3 = *(v0 + 11);
    v4 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v3);
    v2 = (*(v4 + 24))(v0, v3, v4);
  }

  return v2;
}

id sub_229657DE8()
{
  if (qword_281401E88 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281401E90);
  if (off_281401E98)
  {
    v0 = off_281401E98;
  }

  else
  {
    v0 = sub_22989D2C4(0x65446E6F6D656144, 0xED0000746C756166);
    off_281401E98 = v0;
  }

  os_unfair_lock_unlock(&dword_281401E90);
  os_unfair_lock_lock(v0 + 4);
  v1 = *(v0 + 5);
  v2 = v1;
  os_unfair_lock_unlock(v0 + 4);
  if (!v1)
  {
    v3 = *(v0 + 11);
    v4 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v3);
    v2 = (*(v4 + 32))(v0, v3, v4);
  }

  return v2;
}

id sub_229657F08()
{
  if (qword_281401E88 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281401E90);
  if (off_281401E98)
  {
    v0 = off_281401E98;
  }

  else
  {
    v0 = sub_22989D2C4(0x65446E6F6D656144, 0xED0000746C756166);
    off_281401E98 = v0;
  }

  os_unfair_lock_unlock(&dword_281401E90);
  os_unfair_lock_lock(v0 + 4);
  v1 = *(v0 + 6);
  v2 = v1;
  os_unfair_lock_unlock(v0 + 4);
  if (!v1)
  {
    v3 = *(v0 + 11);
    v4 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v3);
    v2 = (*(v4 + 40))(v0, v3, v4);
  }

  return v2;
}

uint64_t sub_229658028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[0] = a3;
  v27[1] = a1;
  v4 = sub_22A4DB91C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DB83C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22A4DB8CC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277CC9830], v9);
  sub_22A4DB84C();
  (*(v10 + 8))(v13, v9);
  (*(v5 + 16))(v8, a2, v4);
  sub_22A4DB8AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E318, "\nT\b");
  v19 = sub_22A4DB8BC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22A5779B0;
  v24 = v23 + v22;
  v25 = *(v20 + 104);
  v25(v24, *MEMORY[0x277CC99B8], v19);
  v25(v24 + v21, *MEMORY[0x277CC9980], v19);
  v25(v24 + 2 * v21, *MEMORY[0x277CC99A0], v19);
  v25(v24 + 3 * v21, *MEMORY[0x277CC99A8], v19);
  sub_22965BCF4(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22A4DB86C();

  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_2296583D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22A4DB30C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  sub_229658028(a1, a2, &v43 - v17);
  result = sub_22A4DB2EC();
  if (v20)
  {
    v21 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_22A4DD06C();
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_229538000, v22, v23, "Missing weekday field from received date input", v24, 2u);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v18, v11);
    return 0;
  }

  else if (__OFADD__(result, 5))
  {
    __break(1u);
  }

  else
  {
    v44 = HMDaysOfTheWeekForWeekday();
    v43 = HMDaysOfTheWeekForWeekday();
    v25 = [v3 startTime];
    sub_22A4DB2AC();

    v26 = sub_22A4DB29C();
    v27 = *(v12 + 8);
    v27(v16, v11);
    v28 = HMSecondsFromDateComponent();

    v29 = [v28 unsignedLongLongValue];
    v30 = [v3 endTime];
    sub_22A4DB2AC();

    v31 = sub_22A4DB29C();
    v27(v16, v11);
    v32 = HMSecondsFromDateComponent();

    v33 = [v32 unsignedLongLongValue];
    v34 = sub_22A4DB29C();
    v35 = HMSecondsFromDateComponent();

    v36 = [v35 unsignedLongLongValue];
    v37 = v44;
    if (v33 >= v29 || ((v37 & ~[v3 daysOfTheWeek]) != 0 || v36 < v29) && ((v38 = objc_msgSend(v3, sel_daysOfTheWeek), (v43 & ~v38) == 0) ? (v39 = v36 >= v33) : (v39 = 1), v39))
    {
      v40 = [v3 daysOfTheWeek];
      v27(v18, v11);
      return (v37 & ~v40) == 0 && v36 >= v29 && v36 < v33;
    }

    else
    {
      v27(v18, v11);
      return 1;
    }
  }

  return result;
}

uint64_t sub_22965882C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v227 = a2;
  v223 = a1;
  v172 = a3;
  v204 = sub_22A4DD07C();
  v203 = *(v204 - 1);
  v3 = *(v203 + 64);
  MEMORY[0x28223BE20](v204);
  v224 = (v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v222 = sub_22A4DB87C();
  v197 = *(v222 - 8);
  v5 = *(v197 + 64);
  MEMORY[0x28223BE20](v222);
  v221 = v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_22A4DB88C();
  v196 = *(v220 - 8);
  v7 = *(v196 + 64);
  MEMORY[0x28223BE20](v220);
  v219 = v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_22A4DB85C();
  v195 = *(v218 - 8);
  v9 = *(v195 + 64);
  MEMORY[0x28223BE20](v218);
  v217 = v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v180 = v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v179 = v164 - v15;
  v228 = sub_22A4DB74C();
  v209 = *(v228 - 8);
  v16 = *(v209 + 64);
  v17 = MEMORY[0x28223BE20](v228);
  v178 = v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v177 = v164 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v176 = v164 - v22;
  MEMORY[0x28223BE20](v21);
  v175 = v164 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E338, &qword_22A57BB48);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v216 = v164 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E340, &qword_22A57BB50);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v215 = v164 - v29;
  v30 = sub_22A4DB30C();
  v205 = *(v30 - 8);
  v31 = *(v205 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v202 = v164 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v208 = v164 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v214 = v164 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v206 = v164 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v200 = v164 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v201 = v164 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v46 = v164 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = v164 - v47;
  v49 = sub_22A4DB91C();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = v164 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22A4DB83C();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  v58 = v164 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_22A4DB8CC();
  v173 = *(v226 - 8);
  v59 = *(v173 + 64);
  MEMORY[0x28223BE20](v226);
  v61 = v164 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v55 + 104))(v58, *MEMORY[0x277CC9830], v54);
  sub_22A4DB84C();
  v62 = v58;
  v63 = v30;
  v64 = v207;
  (*(v55 + 8))(v62, v54);
  v199 = v50;
  v65 = *(v50 + 16);
  v212 = v50 + 16;
  v213 = v49;
  v211 = v65;
  v65(v53, v227, v49);
  v225 = v61;
  sub_22A4DB8AC();
  v66 = [v64 startTime];
  sub_22A4DB2AC();

  v174 = sub_22A4DB2BC();
  LOBYTE(v66) = v67;
  v68 = (v205 + 8);
  v69 = v48;
  v70 = *(v205 + 8);
  v70(v69, v63);
  v210 = v70;
  if (v66)
  {
    goto LABEL_5;
  }

  v71 = [v64 startTime];
  sub_22A4DB2AC();

  v171 = sub_22A4DB2CC();
  LOBYTE(v71) = v72;
  v70(v46, v63);
  if (v71)
  {
    goto LABEL_5;
  }

  v73 = [v64 endTime];
  v74 = v201;
  sub_22A4DB2AC();

  v170 = sub_22A4DB2BC();
  LOBYTE(v73) = v75;
  v70(v74, v63);
  if (v73 & 1) != 0 || (v76 = [v64 endTime], v77 = v200, sub_22A4DB2AC(), v76, v169 = sub_22A4DB2CC(), LOBYTE(v76) = v78, v70(v77, v63), (v76))
  {
LABEL_5:
    v79 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    v80 = v224;
    sub_22A4DD06C();
    v81 = v64;
    v82 = sub_22A4DD05C();
    v83 = sub_22A4DDCEC();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      LODWORD(v223) = v83;
      v85 = v84;
      v227 = swift_slowAlloc();
      v229 = v227;
      *v85 = 136315394;
      v86 = [v81 startTime];
      v87 = v202;
      sub_22A4DB2AC();

      sub_22965C8C0(&qword_27D87E348, MEMORY[0x277CC8990]);
      v88 = sub_22A4DE5CC();
      v89 = v63;
      v91 = v90;
      v92 = v210;
      v210(v87, v89);
      v93 = sub_2295A3E30(v88, v91, &v229);

      *(v85 + 4) = v93;
      *(v85 + 12) = 2080;
      v94 = [v81 endTime];
      sub_22A4DB2AC();

      v95 = sub_22A4DE5CC();
      v97 = v96;
      v92(v87, v89);
      v98 = sub_2295A3E30(v95, v97, &v229);

      *(v85 + 14) = v98;
      _os_log_impl(&dword_229538000, v82, v223, "Missing hour or minute in %s %s", v85, 0x16u);
      v99 = v227;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v99, -1, -1);
      MEMORY[0x22AAD4E50](v85, -1, -1);

      (*(v203 + 8))(v224, v204);
    }

    else
    {

      (*(v203 + 8))(v80, v204);
    }

    (*(v173 + 8))(v225, v226);
    return (*(v209 + 56))(v172, 1, 1, v228);
  }

  else
  {
    v168 = sub_229659FF8();
    [v64 daysOfTheWeek];
    v101 = HMDaysOfTheWeekToDateComponents();
    v102 = sub_22A4DD83C();

    v103 = *(v102 + 16);
    v207 = v68;
    if (v103)
    {
      v104 = v205 + 16;
      v224 = *(v205 + 16);
      v105 = (*(v205 + 80) + 32) & ~*(v205 + 80);
      v205 = v102;
      v106 = v102 + v105;
      v107 = *(v104 + 56);
      v108 = MEMORY[0x277D84F90];
      do
      {
        v109 = v206;
        (v224)(v206, v106, v63);
        v110 = sub_22A4DB2EC();
        v112 = v111;
        v70(v109, v63);
        if ((v112 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v108 = sub_22958A310(0, *(v108 + 2) + 1, 1, v108);
          }

          v114 = *(v108 + 2);
          v113 = *(v108 + 3);
          if (v114 >= v113 >> 1)
          {
            v108 = sub_22958A310((v113 > 1), v114 + 1, 1, v108);
          }

          *(v108 + 2) = v114 + 1;
          *&v108[8 * v114 + 32] = v110;
          v70 = v210;
        }

        v106 += v107;
        --v103;
      }

      while (v103);
    }

    else
    {

      v108 = MEMORY[0x277D84F90];
    }

    v115 = *(v108 + 2);
    v164[0] = v108;
    if (v115)
    {
      v167 = v63;
      v116 = (v108 + 32);
      v206 = *(v173 + 16);
      v205 = v173 + 56;
      v204 = (v199 + 56);
      LODWORD(v203) = *MEMORY[0x277CC9878];
      v202 = (v195 + 104);
      LODWORD(v201) = *MEMORY[0x277CC9900];
      v200 = (v196 + 104);
      LODWORD(v199) = *MEMORY[0x277CC98E8];
      v198 = (v197 + 104);
      v197 += 8;
      v196 += 8;
      v195 += 8;
      v194 = (v209 + 48);
      v193 = (v209 + 32);
      v165 = (v209 + 16);
      v164[1] = v209 + 8;
      v224 = MEMORY[0x277D84F90];
      v166 = v173 + 16;
      do
      {
        v192 = v115;
        v119 = *v116;
        v191 = v116 + 1;
        v120 = v215;
        v121 = v226;
        (v206)(v215, v225, v226);
        v189 = *v205;
        v189(v120, 0, 1, v121);
        v122 = v216;
        v123 = v213;
        v211(v216, v227, v213);
        v188 = *v204;
        v188(v122, 0, 1, v123);
        v190 = v119;
        sub_22A4DB2FC();
        v124 = v217;
        v125 = v218;
        v187 = *v202;
        v187(v217, v203, v218);
        v127 = v219;
        v126 = v220;
        v186 = *v200;
        v186(v219, v201, v220);
        v129 = v221;
        v128 = v222;
        v185 = *v198;
        v185(v221, v199, v222);
        v130 = v179;
        sub_22A4DB89C();
        v184 = *v197;
        v184(v129, v128);
        v183 = *v196;
        v183(v127, v126);
        v182 = *v195;
        v182(v124, v125);
        v131 = v228;
        v181 = *v194;
        if (v181(v130, 1, v228) == 1)
        {
          sub_2296224D4(v130);
        }

        else
        {
          v132 = *v193;
          v133 = v175;
          (*v193)(v175, v130, v131);
          (*v165)(v176, v133, v131);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v224 = sub_22958A2E8(0, v224[2] + 1, 1, v224);
          }

          v135 = v224[2];
          v134 = v224[3];
          if (v135 >= v134 >> 1)
          {
            v224 = sub_22958A2E8(v134 > 1, v135 + 1, 1, v224);
          }

          v136 = v209;
          v137 = v228;
          (*(v209 + 8))(v175, v228);
          v138 = v224;
          v224[2] = v135 + 1;
          v132(&v138[((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v135], v176, v137);
        }

        v139 = v215;
        v140 = v226;
        (v206)(v215, v225, v226);
        v189(v139, 0, 1, v140);
        v141 = v216;
        v142 = v213;
        v211(v216, v227, v213);
        v188(v141, 0, 1, v142);
        v143 = v208;
        sub_22A4DB2FC();
        v144 = v217;
        v145 = v218;
        v187(v217, v203, v218);
        v146 = v219;
        v147 = v220;
        v186(v219, v201, v220);
        v149 = v221;
        v148 = v222;
        v185(v221, v199, v222);
        v150 = v180;
        sub_22A4DB89C();
        v184(v149, v148);
        v183(v146, v147);
        v182(v144, v145);
        v151 = v228;
        if (v181(v150, 1, v228) == 1)
        {
          v117 = v167;
          v118 = v210;
          v210(v143, v167);
          v118(v214, v117);
          sub_2296224D4(v150);
        }

        else
        {
          v152 = *v193;
          v153 = v177;
          (*v193)(v177, v150, v151);
          (*v165)(v178, v153, v151);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v155 = v210;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v224 = sub_22958A2E8(0, v224[2] + 1, 1, v224);
          }

          v156 = v208;
          v158 = v224[2];
          v157 = v224[3];
          if (v158 >= v157 >> 1)
          {
            v224 = sub_22958A2E8(v157 > 1, v158 + 1, 1, v224);
          }

          v159 = v209;
          v160 = v228;
          (*(v209 + 8))(v177, v228);
          v161 = v156;
          v162 = v167;
          v155(v161, v167);
          v155(v214, v162);
          v163 = v224;
          v224[2] = v158 + 1;
          v152(&v163[((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v158], v178, v160);
        }

        v115 = v192 - 1;
        v116 = v191;
      }

      while (v192 != 1);
    }

    else
    {
      v224 = MEMORY[0x277D84F90];
    }

    sub_22965A19C(v224, v172);

    return (*(v173 + 8))(v225, v226);
  }
}

BOOL sub_229659FF8()
{
  v1 = v0;
  v2 = sub_22A4DB30C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 startTime];
  sub_22A4DB2AC();

  v8 = sub_22A4DB29C();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v10 = HMSecondsFromDateComponent();

  v11 = [v10 unsignedLongLongValue];
  v12 = [v1 endTime];
  sub_22A4DB2AC();

  v13 = sub_22A4DB29C();
  v9(v6, v2);
  v14 = HMSecondsFromDateComponent();

  v15 = [v14 unsignedLongLongValue];
  return v15 < v11;
}

uint64_t sub_22965A19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22A4DB74C();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_22965C8C0(&unk_27D87EBD0, MEMORY[0x277CC9578]);
        v21 = sub_22A4DD52C();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_22965A44C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_22A4DB74C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  if ((sub_2296583D0(a1, a2) & 1) == 0)
  {
    sub_22965A63C(a1, a2, v7);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v15, v7, v8);
      sub_22A4DB6DC();
      v16 = sub_22A4DB6CC();
      v17 = *(v9 + 8);
      v17(v13, v8);
      v17(v15, v8);
      return v16 & 1;
    }

    sub_2296224D4(v7);
  }

  v16 = 0;
  return v16 & 1;
}

uint64_t sub_22965A63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v193 = a2;
  v191 = a1;
  v153 = a3;
  v194 = sub_22A4DD07C();
  v175 = *(v194 - 8);
  v3 = *(v175 + 64);
  MEMORY[0x28223BE20](v194);
  v198 = &v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_22A4DB88C();
  v163 = *(v184 - 8);
  v5 = *(v163 + 64);
  MEMORY[0x28223BE20](v184);
  v183 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_22A4DB87C();
  v172 = *(v182 - 8);
  v7 = *(v172 + 64);
  MEMORY[0x28223BE20](v182);
  v181 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_22A4DB85C();
  v161 = *(v180 - 8);
  v9 = *(v161 + 64);
  MEMORY[0x28223BE20](v180);
  v179 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v199 = &v151 - v13;
  v196 = sub_22A4DB74C();
  v159 = *(v196 - 8);
  v14 = *(v159 + 64);
  v15 = MEMORY[0x28223BE20](v196);
  v178 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v177 = &v151 - v18;
  MEMORY[0x28223BE20](v17);
  v152 = &v151 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E338, &qword_22A57BB48);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v190 = &v151 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E340, &qword_22A57BB50);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v189 = &v151 - v25;
  v26 = sub_22A4DB30C();
  v195 = *(v26 - 8);
  v27 = v195[8];
  v28 = MEMORY[0x28223BE20](v26);
  v173 = &v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v157 = &v151 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v151 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v200 = &v151 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v174 = &v151 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v151 - v39;
  v41 = sub_22A4DB91C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v151 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22A4DB83C();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v50 = &v151 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_22A4DB8CC();
  v154 = *(v158 - 8);
  v51 = *(v154 + 64);
  MEMORY[0x28223BE20](v158);
  v53 = &v151 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v47 + 104))(v50, *MEMORY[0x277CC9830], v46);
  sub_22A4DB84C();
  v54 = v46;
  v55 = v26;
  (*(v47 + 8))(v50, v54);
  v56 = v193;
  v57 = v197;
  v171 = v42;
  v58 = *(v42 + 16);
  v187 = v42 + 16;
  v188 = v41;
  v186 = v58;
  v58(v45, v193, v41);
  v201 = v53;
  sub_22A4DB8AC();
  v59 = [v57 endTime];
  sub_22A4DB2AC();

  v185 = sub_22A4DB2BC();
  LOBYTE(v59) = v60;
  v61 = v195;
  v62 = v195[1];
  v192 = v195 + 1;
  v202 = v62;
  v62(v40, v55);
  if (v59 & 1) != 0 || (v63 = [v57 endTime], v64 = v174, sub_22A4DB2AC(), v63, v176 = sub_22A4DB2CC(), LOBYTE(v63) = v65, v202(v64, v55), (v63))
  {
    v66 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    v67 = v198;
    sub_22A4DD06C();
    v68 = v57;
    v69 = sub_22A4DD05C();
    v70 = sub_22A4DDCEC();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      LODWORD(v199) = v70;
      v72 = v71;
      v200 = swift_slowAlloc();
      v203 = v200;
      *v72 = 136315394;
      v73 = [v68 startTime];
      v74 = v173;
      sub_22A4DB2AC();

      sub_22965C8C0(&qword_27D87E348, MEMORY[0x277CC8990]);
      v75 = sub_22A4DE5CC();
      v77 = v76;
      v78 = v202;
      v202(v74, v55);
      v79 = sub_2295A3E30(v75, v77, &v203);

      *(v72 + 4) = v79;
      *(v72 + 12) = 2080;
      v80 = [v68 endTime];
      sub_22A4DB2AC();

      v81 = sub_22A4DE5CC();
      v83 = v82;
      v78(v74, v55);
      v84 = sub_2295A3E30(v81, v83, &v203);

      *(v72 + 14) = v84;
      _os_log_impl(&dword_229538000, v69, v199, "Missing hour or minute in %s %s", v72, 0x16u);
      v85 = v200;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v85, -1, -1);
      MEMORY[0x22AAD4E50](v72, -1, -1);

      (*(v175 + 8))(v198, v194);
    }

    else
    {

      (*(v175 + 8))(v67, v194);
    }

    (*(v154 + 8))(v201, v158);
    return (*(v159 + 56))(v153, 1, 1, v196);
  }

  sub_229658028(v191, v56, v200);
  LODWORD(v175) = sub_229659FF8();
  [v57 daysOfTheWeek];
  v87 = HMDaysOfTheWeekToDateComponents();
  v88 = sub_22A4DD83C();

  v89 = *(v88 + 16);
  v194 = v55;
  if (v89)
  {
    v90 = v61[2];
    v197 = v88;
    v198 = v90;
    v91 = v88 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v92 = v61[9];
    v93 = MEMORY[0x277D84F90];
    (v90)(v34, v91, v55);
    while (1)
    {
      v94 = sub_22A4DB2EC();
      v96 = v95;
      v202(v34, v55);
      if ((v96 & 1) == 0)
      {
        v97 = v93;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_22958A310(0, *(v93 + 2) + 1, 1, v93);
        }

        v99 = *(v97 + 2);
        v98 = *(v97 + 3);
        v93 = v97;
        if (v99 >= v98 >> 1)
        {
          v93 = sub_22958A310((v98 > 1), v99 + 1, 1, v97);
        }

        *(v93 + 2) = v99 + 1;
        *&v93[8 * v99 + 32] = v94;
        v55 = v194;
      }

      v91 += v92;
      if (!--v89)
      {
        break;
      }

      (v198)(v34, v91, v55);
    }

    v100 = v93;
  }

  else
  {

    v100 = MEMORY[0x277D84F90];
  }

  v101 = v172;
  v102 = *(v100 + 2);
  v103 = v158;
  v104 = v157;
  v151 = v100;
  if (v102)
  {
    v105 = v100 + 32;
    v173 = *(v154 + 16);
    v174 = (v154 + 16);
    v172 = v154 + 56;
    v171 += 7;
    v156 = (v159 + 16);
    v170 = (v159 + 32);
    v169 = *MEMORY[0x277CC9878];
    v168 = (v161 + 104);
    v167 = *MEMORY[0x277CC98F0];
    v166 = (v101 + 104);
    v165 = *MEMORY[0x277CC9900];
    v164 = (v163 + 104);
    v163 += 8;
    v162 = (v101 + 8);
    v161 += 8;
    v160 = (v159 + 48);
    v155 = v159 + 8;
    v195 = MEMORY[0x277D84F90];
    while (1)
    {
      v106 = *v105;
      v105 += 8;
      v107 = v189;
      (v173)(v189, v201, v103);
      (*v172)(v107, 0, 1, v103);
      v108 = v190;
      v109 = v188;
      v186(v190, v193, v188);
      (*v171)(v108, 0, 1, v109);
      sub_22A4DB2FC();
      v110 = sub_22A4DB2EC();
      v112 = v111;
      v113 = sub_22A4DB2EC();
      if (v112)
      {
        if ((v114 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else if ((v114 & 1) != 0 || v110 != v113)
      {
        goto LABEL_45;
      }

      v115 = sub_22A4DB2BC();
      v117 = v116;
      v118 = sub_22A4DB2BC();
      if (v117)
      {
        if ((v119 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else if ((v119 & 1) != 0 || v115 != v118)
      {
        goto LABEL_45;
      }

      v120 = sub_22A4DB2CC();
      v122 = v121;
      v123 = sub_22A4DB2CC();
      if (v122)
      {
        if ((v124 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else if ((v124 & 1) != 0 || v120 != v123)
      {
        goto LABEL_45;
      }

      v125 = sub_22A4DB2DC();
      if ((v126 & 1) == 0 && !v125)
      {
        v127 = v196;
        (*v156)(v152, v191, v196);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v195 = sub_22958A2E8(0, v195[2] + 1, 1, v195);
        }

        v129 = v195[2];
        v128 = v195[3];
        if (v129 >= v128 >> 1)
        {
          v195 = sub_22958A2E8(v128 > 1, v129 + 1, 1, v195);
        }

        v202(v104, v194);
        v130 = v195;
        v195[2] = v129 + 1;
        (*(v159 + 32))(v130 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v129, v152, v127);
        goto LABEL_22;
      }

LABEL_45:
      v197 = v102;
      v198 = v105;
      v131 = v103;
      v132 = v199;
      v133 = v179;
      v134 = v180;
      (*v168)(v179, v169, v180);
      v135 = v181;
      v136 = v104;
      v137 = v182;
      (*v166)(v181, v167, v182);
      v139 = v183;
      v138 = v184;
      (*v164)(v183, v165, v184);
      sub_22A4DB89C();
      (*v163)(v139, v138);
      (*v162)(v135, v137);
      (*v161)(v133, v134);
      v140 = v196;
      if ((*v160)(v132, 1, v196) == 1)
      {
        v202(v136, v194);
        sub_2296224D4(v199);
        v104 = v136;
        v103 = v131;
        v102 = v197;
        v105 = v198;
      }

      else
      {
        v141 = *v170;
        v142 = v177;
        (*v170)(v177, v199, v140);
        (*v156)(v178, v142, v140);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v195 = sub_22958A2E8(0, v195[2] + 1, 1, v195);
        }

        v102 = v197;
        v144 = v195[2];
        v143 = v195[3];
        if (v144 >= v143 >> 1)
        {
          v195 = sub_22958A2E8(v143 > 1, v144 + 1, 1, v195);
        }

        v145 = v159;
        v146 = v196;
        (*(v159 + 8))(v177, v196);
        v147 = v157;
        v202(v157, v194);
        v148 = v195;
        v195[2] = v144 + 1;
        v149 = v148 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
        v150 = *(v145 + 72);
        v104 = v147;
        v141(&v149[v150 * v144], v178, v146);
        v103 = v158;
        v105 = v198;
      }

LABEL_22:
      if (!--v102)
      {
        goto LABEL_52;
      }
    }
  }

  v195 = MEMORY[0x277D84F90];
LABEL_52:

  sub_22965BA44(v195, v153);

  v202(v200, v194);
  return (*(v154 + 8))(v201, v103);
}

uint64_t sub_22965BA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22A4DB74C();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_22965C8C0(&unk_27D87EBD0, MEMORY[0x277CC9578]);
        v21 = sub_22A4DD52C();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_22965BCF4(uint64_t a1)
{
  v2 = sub_22A4DB8BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E320, &qword_22A57BB40);
    v10 = sub_22A4DE1CC();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_22965C8C0(&qword_27D87E328, MEMORY[0x277CC99D0]);
      v18 = sub_22A4DD4EC();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_22965C8C0(&qword_27D87E330, MEMORY[0x277CC99D0]);
          v25 = sub_22A4DD58C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22965C038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CED8, &qword_22A57C0E0);
    v3 = sub_22A4DE1CC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_22A4DE77C();

      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_22A4DE60C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_22965C1A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CFC0, &qword_22A577DD8);
    v3 = sub_22A4DE1CC();
    v4 = 0;
    v5 = v3 + 56;
    v21 = v1;
    v22 = a1 + 32;
    while (2)
    {
      v6 = *(v22 + v4);
      v7 = *(v3 + 40);
      sub_22A4DE77C();
      sub_2295C50B0(v6);
      sub_22A4DD6BC();

      result = sub_22A4DE7BC();
      v9 = ~(-1 << *(v3 + 32));
      for (i = result & v9; ; i = (i + 1) & v9)
      {
        v11 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v11) == 0)
        {
          break;
        }

        v12 = sub_2295C50B0(*(*(v3 + 48) + i));
        v14 = v13;
        if (v12 == sub_2295C50B0(v6) && v14 == v15)
        {

          goto LABEL_4;
        }

        v17 = sub_22A4DE60C();

        if (v17)
        {
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v11;
      *(*(v3 + 48) + i) = v6;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v21)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_22965C354(uint64_t a1)
{
  v2 = type metadata accessor for HomeDeviceEntity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CFA8, &qword_22A577DC0);
    v11 = sub_22A4DE1CC();
    v12 = 0;
    v13 = v11 + 56;
    v27 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v28 = v10;
    v14 = *(v3 + 72);
    while (2)
    {
      sub_22959E67C(v27 + v14 * v12, v9);
      v16 = *(v11 + 40);
      sub_22A4DE77C();
      sub_22A4DB7DC();
      sub_22965C8C0(&qword_281403880, MEMORY[0x277CC95F0]);
      sub_22A4DD4FC();
      v17 = sub_22A4DE7BC();
      v18 = ~(-1 << *(v11 + 32));
      for (i = v17 & v18; ; i = (i + 1) & v18)
      {
        v20 = *(v13 + 8 * (i >> 6));
        if (((1 << i) & v20) == 0)
        {
          break;
        }

        sub_22959E67C(*(v11 + 48) + i * v14, v7);
        v21 = sub_22A4DB78C();
        sub_22959E6E0(v7);
        if (v21)
        {
          sub_22959E6E0(v9);
          v15 = v28;
          goto LABEL_4;
        }
      }

      *(v13 + 8 * (i >> 6)) = (1 << i) | v20;
      result = sub_22959E73C(v9, *(v11 + 48) + i * v14);
      v23 = *(v11 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      v15 = v28;
      if (!v24)
      {
        *(v11 + 16) = v25;
LABEL_4:
        if (++v12 == v15)
        {
          return v11;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_22965C5D4(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_22A4DE0EC();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = sub_22A4DE1CC();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_22A4DE0EC();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x277D84FA0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v48 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v44 = v5;
    while (1)
    {
      v15 = MEMORY[0x22AAD13F0](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = *(v7 + 40);
      v19 = sub_22A4DDECC();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = *(v13 + 8 * (v21 >> 6));
      v24 = 1 << v21;
      if (((1 << v21) & v23) != 0)
      {
        v25 = ~v20;
        sub_229562F68(0, a4, a5);
        while (1)
        {
          v26 = *(*(v7 + 48) + 8 * v21);
          v27 = sub_22A4DDEDC();

          if (v27)
          {
            break;
          }

          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = *(v13 + 8 * (v21 >> 6));
          v24 = 1 << v21;
          if (((1 << v21) & v23) == 0)
          {
            v9 = v48;
            v5 = v44;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v48;
        v5 = v44;
        if (v14 == v48)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v22) = v24 | v23;
        *(*(v7 + 48) + 8 * v21) = v17;
        v28 = *(v7 + 16);
        v16 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v29;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v30 = 0;
    v45 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v30 != v45)
    {
      v31 = *(v7 + 40);
      v32 = *(v5 + 32 + 8 * v30);
      v33 = sub_22A4DDECC();
      v34 = -1 << *(v7 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      v37 = *(v13 + 8 * (v35 >> 6));
      v38 = 1 << v35;
      if (((1 << v35) & v37) != 0)
      {
        v39 = ~v34;
        sub_229562F68(0, a4, a5);
        while (1)
        {
          v40 = *(*(v7 + 48) + 8 * v35);
          v41 = sub_22A4DDEDC();

          if (v41)
          {
            break;
          }

          v35 = (v35 + 1) & v39;
          v36 = v35 >> 6;
          v37 = *(v13 + 8 * (v35 >> 6));
          v38 = 1 << v35;
          if (((1 << v35) & v37) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v36) = v38 | v37;
        *(*(v7 + 48) + 8 * v35) = v32;
        v42 = *(v7 + 16);
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v43;
      }

      if (++v30 == v48)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_22965C8C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22965C908()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_281401F78);
  __swift_project_value_buffer(v0, qword_281401F78);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_22965C980()
{
  *(v1 + 96) = v0;
  v2 = swift_task_alloc();
  *(v1 + 104) = v2;
  *v2 = v1;
  v2[1] = sub_22965CA1C;

  return sub_22965CD60(v1 + 56, 1);
}

uint64_t sub_22965CA1C()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_229669DB0;
  }

  else
  {
    v4 = sub_22965CB44;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22965CB44()
{
  sub_229557188((v0 + 56), v0 + 16);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  v3 = (*(v2 + 24))(v1, v2);
  v4 = sub_229668C28(v3);
  *(v0 + 120) = v4;

  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_22965CC34;
  v6 = *(v0 + 96);

  return sub_22965D440(v4);
}

uint64_t sub_22965CC34()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_229669DD8, v3, 0);
}

uint64_t sub_22965CD60(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_22965CD84, v2, 0);
}

void sub_22965CD84()
{
  v1 = objc_allocWithZone(MEMORY[0x277D289D8]);
  v2 = sub_22A4DD5AC();
  v3 = [v1 initWithType_];

  if (v3)
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = sub_229562F68(0, &qword_281401C08, 0x277D289D8);
    v5[3] = v6;
    v5[4] = &off_283CE22F8;
    *v5 = v3;
    [v3 returnTypes_];
    v10 = off_283CE2308 + *off_283CE2308;
    v7 = *(off_283CE2308 + 1);
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_22965CF38;
    v9 = v0[7];

    (v10)(v6, &off_283CE22F8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22965CF38(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_22965D050, v3, 0);
}

uint64_t sub_22965D050()
{
  v32 = v0;
  v1 = v0[11];
  if (v1)
  {
    if (v1 == 2)
    {
      if (qword_281401F70 != -1)
      {
        swift_once();
      }

      v2 = sub_22A4DD07C();
      __swift_project_value_buffer(v2, qword_281401F78);
      v3 = sub_22A4DD05C();
      v4 = sub_22A4DDCCC();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_229538000, v3, v4, "Query returned no metadata file", v5, 2u);
        MEMORY[0x22AAD4E50](v5, -1, -1);
      }

      v6 = 1;
    }

    else
    {
      if (qword_281401F70 != -1)
      {
        swift_once();
      }

      v15 = sub_22A4DD07C();
      __swift_project_value_buffer(v15, qword_281401F78);
      v16 = sub_22A4DD05C();
      v17 = sub_22A4DDCCC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = v0[11];
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v31 = v20;
        *v19 = 134218242;
        *(v19 + 4) = v18;
        *(v19 + 12) = 2082;
        v21 = MEMORY[0x22AAD2B80](v18);
        if (v21)
        {
          v22 = v21;
          v23 = sub_22A4DD5EC();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0xE000000000000000;
        }

        v27 = sub_2295A3E30(v23, v25, &v31);

        *(v19 + 14) = v27;
        _os_log_impl(&dword_229538000, v16, v17, "Query failed with result %ld (%{public}s)", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x22AAD4E50](v20, -1, -1);
        MEMORY[0x22AAD4E50](v19, -1, -1);
      }

      v6 = 2;
    }

    v28 = v0[7];
    sub_2296691E4();
    swift_allocError();
    *v29 = v6;
    *(v29 + 8) = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v28);
    v26 = v0[1];
  }

  else
  {
    if (qword_281401F70 != -1)
    {
      swift_once();
    }

    v7 = v0[7];
    v8 = sub_22A4DD07C();
    __swift_project_value_buffer(v8, qword_281401F78);
    sub_22957F1C4(v7, (v0 + 2));
    v9 = sub_22A4DD05C();
    v10 = sub_22A4DDCCC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      v12 = v0[5];
      v13 = v0[6];
      __swift_project_boxed_opaque_existential_0(v0 + 2, v12);
      v14 = *((*(v13 + 24))(v12, v13) + 16);

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      *(v11 + 4) = v14;
      _os_log_impl(&dword_229538000, v9, v10, "Query returned %ld result(s)", v11, 0xCu);
      MEMORY[0x22AAD4E50](v11, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    v26 = v0[1];
  }

  return v26();
}

uint64_t sub_22965D440(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x2822009F8](sub_22965D460, v1, 0);
}

uint64_t sub_22965D460()
{
  v37 = v0;
  v1 = v0[36];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      sub_22957F1C4(v3, (v0 + 2));
      v5 = v0[5];
      v6 = v0[6];
      __swift_project_boxed_opaque_existential_0(v0 + 2, v5);
      if ((*(v6 + 32))(v5, v6))
      {
        sub_229557188(v0 + 1, (v0 + 7));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22958383C(0, *(v4 + 16) + 1, 1);
          v4 = v36;
        }

        v9 = *(v4 + 16);
        v8 = *(v4 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_22958383C((v8 > 1), v9 + 1, 1);
        }

        v10 = v0[10];
        v11 = v0[11];
        v12 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 7), v10);
        v13 = *(v10 - 8);
        v14 = *(v13 + 64) + 15;
        v15 = swift_task_alloc();
        (*(v13 + 16))(v15, v12, v10);
        sub_229668B90(v9, v15, &v36, v10, v11);
        __swift_destroy_boxed_opaque_existential_0(v0 + 7);

        v4 = v36;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v0[38] = v4;
  v16 = *(v4 + 16);
  v0[39] = v16;
  if (v16)
  {
    v0[40] = 0;
    sub_22957F1C4(v4 + 32, (v0 + 12));
    if (qword_281401F70 != -1)
    {
      swift_once();
    }

    v17 = sub_22A4DD07C();
    v0[41] = __swift_project_value_buffer(v17, qword_281401F78);
    sub_22957F1C4((v0 + 12), (v0 + 17));
    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCCC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = v21;
      *v20 = 136315138;
      v22 = v0[20];
      v23 = v0[21];
      __swift_project_boxed_opaque_existential_0(v0 + 17, v22);
      v0[35] = sub_2297B96F4(v22, v23);
      v24 = sub_22A4DE5CC();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_0(v0 + 17);
      v27 = sub_2295A3E30(v24, v26, &v36);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_229538000, v18, v19, "Purging asset with version %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AAD4E50](v21, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    }

    v30 = v0[15];
    v31 = v0[16];
    __swift_project_boxed_opaque_existential_0(v0 + 12, v30);
    v32 = *(v31 + 48);
    v35 = (v32 + *v32);
    v33 = v32[1];
    v34 = swift_task_alloc();
    v0[42] = v34;
    *v34 = v0;
    v34[1] = sub_22965D904;

    return v35(v30, v31);
  }

  else
  {

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_22965D904(uint64_t a1)
{
  v2 = *(*v1 + 336);
  v3 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 344) = a1;

  return MEMORY[0x2822009F8](sub_22965DA1C, v3, 0);
}

uint64_t sub_22965DA1C()
{
  v52 = v0;
  v1 = v0[41];
  v2 = (v0 + 12);
  if (v0[43])
  {
    sub_22957F1C4(v2, (v0 + 22));
    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCCC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[43];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v0[32] = v7;
      *v6 = 136446722;
      v8 = v0[25];
      v9 = v0[26];
      __swift_project_boxed_opaque_existential_0(v0 + 22, v8);
      v0[33] = sub_2297B96F4(v8, v9);
      v10 = sub_22A4DE5CC();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_0(v0 + 22);
      v13 = sub_2295A3E30(v10, v12, v0 + 32);

      *(v6 + 4) = v13;
      *(v6 + 12) = 2048;
      *(v6 + 14) = v5;
      *(v6 + 22) = 2082;
      v14 = MEMORY[0x22AAD2B70](v5);
      if (v14)
      {
        v15 = v14;
        v16 = sub_22A4DD5EC();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0xE000000000000000;
      }

      v27 = sub_2295A3E30(v16, v18, v0 + 32);

      *(v6 + 24) = v27;
      _os_log_impl(&dword_229538000, v3, v4, "Asset %{public}s purge failed with error %ld (%{public}s)", v6, 0x20u);
      swift_arrayDestroy();
      goto LABEL_12;
    }

    v26 = v0 + 22;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v26);
    goto LABEL_13;
  }

  sub_22957F1C4(v2, (v0 + 27));
  v3 = sub_22A4DD05C();
  v19 = sub_22A4DDCCC();
  if (!os_log_type_enabled(v3, v19))
  {

    v26 = v0 + 27;
    goto LABEL_9;
  }

  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v51 = v7;
  *v6 = 136446210;
  v20 = v0[30];
  v21 = v0[31];
  __swift_project_boxed_opaque_existential_0(v0 + 27, v20);
  v0[34] = sub_2297B96F4(v20, v21);
  v22 = sub_22A4DE5CC();
  v24 = v23;
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v25 = sub_2295A3E30(v22, v24, &v51);

  *(v6 + 4) = v25;
  _os_log_impl(&dword_229538000, v3, v19, "Asset %{public}s purged", v6, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v7);
LABEL_12:
  MEMORY[0x22AAD4E50](v7, -1, -1);
  MEMORY[0x22AAD4E50](v6, -1, -1);

LABEL_13:
  v28 = v0[39];
  v29 = v0[40] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  if (v29 == v28)
  {
    v30 = v0[38];

    v31 = v0[1];

    return v31();
  }

  else
  {
    v33 = v0[40];
    v0[40] = v33 + 1;
    sub_22957F1C4(v0[38] + 40 * v33 + 72, (v0 + 12));
    if (qword_281401F70 != -1)
    {
      swift_once();
    }

    v34 = sub_22A4DD07C();
    v0[41] = __swift_project_value_buffer(v34, qword_281401F78);
    sub_22957F1C4((v0 + 12), (v0 + 17));
    v35 = sub_22A4DD05C();
    v36 = sub_22A4DDCCC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51 = v38;
      *v37 = 136315138;
      v39 = v0[20];
      v40 = v0[21];
      __swift_project_boxed_opaque_existential_0(v0 + 17, v39);
      v0[35] = sub_2297B96F4(v39, v40);
      v41 = sub_22A4DE5CC();
      v43 = v42;
      __swift_destroy_boxed_opaque_existential_0(v0 + 17);
      v44 = sub_2295A3E30(v41, v43, &v51);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_229538000, v35, v36, "Purging asset with version %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AAD4E50](v38, -1, -1);
      MEMORY[0x22AAD4E50](v37, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    }

    v45 = v0[15];
    v46 = v0[16];
    __swift_project_boxed_opaque_existential_0(v0 + 12, v45);
    v47 = *(v46 + 48);
    v50 = (v47 + *v47);
    v48 = v47[1];
    v49 = swift_task_alloc();
    v0[42] = v49;
    *v49 = v0;
    v49[1] = sub_22965D904;

    return v50(v45, v46);
  }
}

uint64_t sub_22965E178(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22965E220;

  return sub_22965C980();
}

uint64_t sub_22965E220()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22965E35C()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22965E420, v0, 0);
}

uint64_t sub_22965E420()
{
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_281401F78);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Starting", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  sub_22965E620();
  v8 = sub_22A4DD9DC();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v10 = sub_229669498(&qword_281402628, v9, type metadata accessor for MobileAssetManager);
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v10;
  v11[4] = v7;
  v11[5] = v6;
  swift_retain_n();
  sub_22957F3C0(0, 0, v5, &unk_22A57BCA8, v11);

  v12 = v0[1];

  return v12();
}

void sub_22965E620()
{
  v1 = *(v0 + 160);
  [v1 setRepeats_];
  [v1 setInterval_];
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = sub_2296695F4;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_229666FBC;
  v4[3] = &block_descriptor_11;
  v3 = _Block_copy(v4);

  [v1 scheduleWithBlock_];
  _Block_release(v3);
}

uint64_t sub_22965E724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = sub_22A4DE2EC();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22965E7E8, a4, 0);
}

uint64_t sub_22965E7E8()
{
  v12 = v0;
  sub_229668B04(0x2EuLL);
  v0[6] = sub_22A4DE85C();
  v0[7] = v1;
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v2 = sub_22A4DD07C();
  v0[8] = __swift_project_value_buffer(v2, qword_281401F78);
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_22A4DE82C();
    v9 = sub_2295A3E30(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_229538000, v3, v4, "Delaying startup check for %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AAD4E50](v6, -1, -1);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }

  return MEMORY[0x2822009F8](sub_22965E9C4, 0, 0);
}

uint64_t sub_22965E9C4()
{
  v1 = v0[5];
  sub_22A4DE2DC();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_22965EA84;
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];

  return sub_2297858E8(v4, v3, 0, 0, 1);
}

uint64_t sub_22965EA84()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 80) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_22965ED18;
    v8 = 0;
  }

  else
  {
    v8 = *(v2 + 16);
    v7 = sub_22965EC04;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_22965EC04()
{
  v1 = v0[8];
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Checking for mobile asset updates", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_22965EE9C;
  v6 = v0[2];

  return sub_22965F140(0, 0, 1);
}

uint64_t sub_22965ED34()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_229538000, v4, v5, "sleep failed, skipping check as we'll try again later: %@", v8, 0xCu);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[5];

  v13 = v0[1];

  return v13();
}

uint64_t sub_22965EE9C()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x2822009F8](sub_22965EFD8, v4, 0);
  }

  else
  {
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_22965EFD8()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_229538000, v4, v5, "Checking for mobile asset updates failed, will try again later: %@", v8, 0xCu);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[5];

  v13 = v0[1];

  return v13();
}

uint64_t sub_22965F140(char a1, char a2, char a3)
{
  *(v4 + 416) = v3;
  *(v4 + 387) = a3;
  *(v4 + 386) = a2;
  *(v4 + 385) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  *(v4 + 424) = swift_task_alloc();
  v6 = sub_22A4DB74C();
  *(v4 + 432) = v6;
  v7 = *(v6 - 8);
  *(v4 + 440) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20) - 8) + 64) + 15;
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 480) = swift_task_alloc();
  updated = _s21MobileAssetUpdateInfoVMa();
  *(v4 + 488) = updated;
  v11 = *(*(updated - 8) + 64) + 15;
  *(v4 + 496) = swift_task_alloc();
  *(v4 + 504) = swift_task_alloc();
  *(v4 + 512) = swift_task_alloc();
  *(v4 + 520) = swift_task_alloc();
  *(v4 + 528) = swift_task_alloc();
  *(v4 + 536) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22965F30C, v3, 0);
}

uint64_t sub_22965F30C()
{
  v1 = v0[52];
  if (*(v1 + 176))
  {
    if (qword_281401F70 != -1)
    {
      swift_once();
    }

    v2 = sub_22A4DD07C();
    __swift_project_value_buffer(v2, qword_281401F78);
    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCCC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_229538000, v3, v4, "Ignoring update check while already updating", v5, 2u);
      MEMORY[0x22AAD4E50](v5, -1, -1);
    }

    sub_2296691E4();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 1;
    swift_willThrow();
    v7 = v0[67];
    v8 = v0[66];
    v9 = v0[65];
    v11 = v0[63];
    v10 = v0[64];
    v12 = v0[62];
    v14 = v0[59];
    v13 = v0[60];
    v15 = v0[57];
    v16 = v0[58];
    v19 = v0[56];
    v20 = v0[53];

    v17 = v0[1];

    return v17();
  }

  else
  {
    *(v1 + 176) = 1;
    v0[68] = *(v1 + 168);

    return MEMORY[0x2822009F8](sub_22965F560, 0, 0);
  }
}

uint64_t sub_22965F560()
{
  v1 = v0[68];
  v2 = v0[52];
  v3 = swift_task_alloc();
  v0[69] = v3;
  v3[2] = v1;
  v3[3] = sub_229669158;
  v3[4] = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[70] = v5;
  *v5 = v0;
  v5[1] = sub_22965F66C;
  v6 = v0[66];
  v7 = v0[61];

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_229669174, v3, v7);
}

uint64_t sub_22965F66C()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v9 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v4 = sub_22965FD3C;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 552);
    v7 = *(v2 + 416);

    v4 = sub_22965F7A0;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22965F7A0()
{
  v57 = v0;
  sub_229669368(*(v0 + 528), *(v0 + 536));
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 536);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  v4 = sub_22A4DD07C();
  *(v0 + 576) = __swift_project_value_buffer(v4, qword_281401F78);
  sub_229669180(v1, v2);
  sub_229669180(v1, v3);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 520);
  if (v7)
  {
    v9 = *(v0 + 504);
    v10 = *(v0 + 480);
    v12 = *(v0 + 432);
    v11 = *(v0 + 440);
    v13 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = v55;
    *v13 = 136446978;
    sub_229669180(v8, v9);
    sub_2296692F8(v9, v10);
    v14 = (*(v11 + 48))(v10, 1, v12);
    v15 = *(v0 + 480);
    if (v14 == 1)
    {
      sub_22953EAE4(*(v0 + 480), &unk_27D881AA0, &qword_22A57BC20);
      v16 = 0xE700000000000000;
      v17 = 0x3E726576656E3CLL;
    }

    else
    {
      v20 = *(v0 + 432);
      v19 = *(v0 + 440);
      v21 = *(v0 + 480);
      v17 = sub_22A4DB67C();
      v16 = v22;
      (*(v19 + 8))(v15, v20);
    }

    v23 = *(v0 + 512);
    v24 = *(v0 + 488);
    sub_22966908C(*(v0 + 520));
    v25 = sub_2295A3E30(v17, v16, &v56);

    *(v13 + 4) = v25;
    *(v13 + 12) = 2082;
    v26 = v23 + *(v24 + 20);
    if (*(v26 + 8))
    {
      v27 = 0xE600000000000000;
      v28 = 0x3E656E6F6E3CLL;
    }

    else
    {
      *(v0 + 408) = *v26;
      v28 = sub_22A4DE5CC();
      v27 = v29;
    }

    v30 = *(v0 + 387);
    v31 = *(v0 + 385);
    sub_22966908C(*(v0 + 512));
    v32 = sub_2295A3E30(v28, v27, &v56);

    *(v13 + 14) = v32;
    *(v13 + 22) = 1024;
    *(v13 + 24) = v31;
    *(v13 + 28) = 1024;
    *(v13 + 30) = v30;
    _os_log_impl(&dword_229538000, v5, v6, "Starting update with last catalog download %{public}s, current version %{public}s, force %{BOOL}d, and discretionary %{BOOL}d", v13, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v55, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    if (*(v0 + 385))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v18 = *(v0 + 512);

    sub_22966908C(v18);
    sub_22966908C(v8);
    if (*(v0 + 385))
    {
      goto LABEL_19;
    }
  }

  v33 = *(v0 + 496);
  v34 = *(v0 + 472);
  v35 = *(v0 + 432);
  v36 = *(v0 + 440);
  sub_229669180(*(v0 + 536), v33);
  sub_22966901C(v33, v34);
  v37 = (*(v36 + 48))(v34, 1, v35);
  v38 = *(v0 + 496);
  if (v37 == 1)
  {
    sub_22953EAE4(*(v0 + 472), &unk_27D881AA0, &qword_22A57BC20);
    sub_22953EAE4(v38, &unk_27D881AA0, &qword_22A57BC20);
LABEL_19:
    v49 = sub_22A4DD05C();
    v50 = sub_22A4DDCCC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_229538000, v49, v50, "Downloading the asset catalog", v51, 2u);
      MEMORY[0x22AAD4E50](v51, -1, -1);
    }

    v52 = swift_task_alloc();
    *(v0 + 584) = v52;
    *v52 = v0;
    v52[1] = sub_2296604E8;
    v53 = *(v0 + 416);
    v54 = *(v0 + 387);

    return sub_229664AD8(v54);
  }

  v39 = *(v0 + 448);
  v40 = *(v0 + 456);
  v41 = *(v0 + 432);
  v42 = *(v0 + 440);
  (*(v42 + 32))(v40, *(v0 + 472), v41);
  sub_22A4DB71C();
  sub_22A4DB69C();
  v44 = v43;
  v45 = *(v42 + 8);
  v45(v39, v41);
  v45(v40, v41);
  sub_22953EAE4(v38, &unk_27D881AA0, &qword_22A57BC20);
  if (v44 >= 86400.0)
  {
    goto LABEL_19;
  }

  v46 = swift_task_alloc();
  *(v0 + 600) = v46;
  *v46 = v0;
  v46[1] = sub_229660660;
  v47 = *(v0 + 416);

  return sub_22965CD60(v0 + 160, 2);
}

uint64_t sub_22965FD3C()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 416);

  return MEMORY[0x2822009F8](sub_22965FDB4, v2, 0);
}

uint64_t sub_22965FDB4()
{
  v73 = v0;
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 568);
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_281401F78);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 568);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_229538000, v4, v5, "Error retrieving mobile asset update info, updating anyway: %@", v8, 0xCu);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 536);
  v13 = *(v0 + 488);
  v14 = *(v0 + 464);
  v15 = *(v0 + 432);
  v16 = *(*(v0 + 440) + 56);
  v16(v14, 1, 1, v15);
  v16(v12, 1, 1, v15);
  v17 = v12 + *(v13 + 20);
  sub_2296690E8(v14, v12);
  *v17 = 0;
  *(v17 + 8) = 1;
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 536);
  v19 = *(v0 + 520);
  v20 = *(v0 + 512);
  *(v0 + 576) = __swift_project_value_buffer(v2, qword_281401F78);
  sub_229669180(v18, v19);
  sub_229669180(v18, v20);
  v21 = sub_22A4DD05C();
  v22 = sub_22A4DDCCC();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 520);
  if (v23)
  {
    v25 = *(v0 + 504);
    v26 = *(v0 + 480);
    v28 = *(v0 + 432);
    v27 = *(v0 + 440);
    v29 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v72 = v71;
    *v29 = 136446978;
    sub_229669180(v24, v25);
    sub_2296692F8(v25, v26);
    v30 = (*(v27 + 48))(v26, 1, v28);
    v31 = *(v0 + 480);
    if (v30 == 1)
    {
      sub_22953EAE4(*(v0 + 480), &unk_27D881AA0, &qword_22A57BC20);
      v32 = 0xE700000000000000;
      v33 = 0x3E726576656E3CLL;
    }

    else
    {
      v36 = *(v0 + 432);
      v35 = *(v0 + 440);
      v37 = *(v0 + 480);
      v33 = sub_22A4DB67C();
      v32 = v38;
      (*(v35 + 8))(v31, v36);
    }

    v39 = *(v0 + 512);
    v40 = *(v0 + 488);
    sub_22966908C(*(v0 + 520));
    v41 = sub_2295A3E30(v33, v32, &v72);

    *(v29 + 4) = v41;
    *(v29 + 12) = 2082;
    v42 = v39 + *(v40 + 20);
    if (*(v42 + 8))
    {
      v43 = 0xE600000000000000;
      v44 = 0x3E656E6F6E3CLL;
    }

    else
    {
      *(v0 + 408) = *v42;
      v44 = sub_22A4DE5CC();
      v43 = v45;
    }

    v46 = *(v0 + 387);
    v47 = *(v0 + 385);
    sub_22966908C(*(v0 + 512));
    v48 = sub_2295A3E30(v44, v43, &v72);

    *(v29 + 14) = v48;
    *(v29 + 22) = 1024;
    *(v29 + 24) = v47;
    *(v29 + 28) = 1024;
    *(v29 + 30) = v46;
    _os_log_impl(&dword_229538000, v21, v22, "Starting update with last catalog download %{public}s, current version %{public}s, force %{BOOL}d, and discretionary %{BOOL}d", v29, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v71, -1, -1);
    MEMORY[0x22AAD4E50](v29, -1, -1);

    if (*(v0 + 385))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v34 = *(v0 + 512);

    sub_22966908C(v34);
    sub_22966908C(v24);
    if (*(v0 + 385))
    {
      goto LABEL_24;
    }
  }

  v49 = *(v0 + 496);
  v50 = *(v0 + 472);
  v51 = *(v0 + 432);
  v52 = *(v0 + 440);
  sub_229669180(*(v0 + 536), v49);
  sub_22966901C(v49, v50);
  v53 = (*(v52 + 48))(v50, 1, v51);
  v54 = *(v0 + 496);
  if (v53 == 1)
  {
    sub_22953EAE4(*(v0 + 472), &unk_27D881AA0, &qword_22A57BC20);
    sub_22953EAE4(v54, &unk_27D881AA0, &qword_22A57BC20);
LABEL_24:
    v65 = sub_22A4DD05C();
    v66 = sub_22A4DDCCC();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_229538000, v65, v66, "Downloading the asset catalog", v67, 2u);
      MEMORY[0x22AAD4E50](v67, -1, -1);
    }

    v68 = swift_task_alloc();
    *(v0 + 584) = v68;
    *v68 = v0;
    v68[1] = sub_2296604E8;
    v69 = *(v0 + 416);
    v70 = *(v0 + 387);

    return sub_229664AD8(v70);
  }

  v55 = *(v0 + 448);
  v56 = *(v0 + 456);
  v57 = *(v0 + 432);
  v58 = *(v0 + 440);
  (*(v58 + 32))(v56, *(v0 + 472), v57);
  sub_22A4DB71C();
  sub_22A4DB69C();
  v60 = v59;
  v61 = *(v58 + 8);
  v61(v55, v57);
  v61(v56, v57);
  sub_22953EAE4(v54, &unk_27D881AA0, &qword_22A57BC20);
  if (v60 >= 86400.0)
  {
    goto LABEL_24;
  }

  v62 = swift_task_alloc();
  *(v0 + 600) = v62;
  *v62 = v0;
  v62[1] = sub_229660660;
  v63 = *(v0 + 416);

  return sub_22965CD60(v0 + 160, 2);
}

uint64_t sub_2296604E8()
{
  v2 = *(*v1 + 584);
  v3 = *v1;
  v3[74] = v0;

  if (v0)
  {
    v4 = v3[52];

    return MEMORY[0x2822009F8](sub_2296613BC, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[75] = v5;
    *v5 = v3;
    v5[1] = sub_229660660;
    v6 = v3[52];

    return sub_22965CD60((v3 + 20), 2);
  }
}

uint64_t sub_229660660()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v4 = *v1;
  *(*v1 + 608) = v0;

  v5 = *(v2 + 416);
  if (v0)
  {
    v6 = sub_229661664;
  }

  else
  {
    v6 = sub_22966078C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22966078C()
{
  sub_229557188((v0 + 160), v0 + 120);
  v1 = swift_task_alloc();
  *(v0 + 616) = v1;
  *v1 = v0;
  v1[1] = sub_229660834;
  v2 = *(v0 + 416);

  return sub_229665674(v0 + 280, v0 + 120);
}

uint64_t sub_229660834(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 616);
  v6 = *v2;
  *(v4 + 624) = a1;
  *(v4 + 632) = v1;

  v7 = *(v3 + 416);
  if (v1)
  {
    v8 = sub_229661F4C;
  }

  else
  {
    v8 = sub_22966096C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22966096C()
{
  sub_229557188((v0 + 280), v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 640) = v1;
  *v1 = v0;
  v1[1] = sub_229660A14;
  v2 = *(v0 + 416);
  v3 = *(v0 + 387);

  return sub_229665848(v0 + 240, v3);
}

uint64_t sub_229660A14()
{
  v2 = *v1;
  v3 = *(*v1 + 640);
  v9 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v4 = *(v2 + 624);
    v5 = *(v2 + 416);

    v6 = sub_229662070;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 416);
    v6 = sub_229660B3C;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_229660B3C()
{
  v1 = *(v0 + 536) + *(*(v0 + 488) + 20);
  v2 = *v1;
  *(v0 + 656) = *v1;
  LOBYTE(v1) = *(v1 + 8);
  *(v0 + 388) = v1;
  if ((v1 & 1) != 0 || (v4 = *(v0 + 264), v3 = *(v0 + 272), __swift_project_boxed_opaque_existential_0((v0 + 240), v4), v2 < sub_2297B96F4(v4, v3)))
  {
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    __swift_project_boxed_opaque_existential_0((v0 + 240), v6);
    v7 = sub_2297B96F4(v6, v5);
    v8 = swift_task_alloc();
    *(v0 + 664) = v8;
    *v8 = v0;
    v8[1] = sub_229660DD8;
    v9 = *(v0 + 416);

    return sub_229665EC0(v7);
  }

  else
  {
    v11 = *(v0 + 624);
    v12 = *(v0 + 576);

    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCCC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_229538000, v13, v14, "Finished query without any updates", v15, 2u);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    v16 = *(v0 + 536);

    __swift_destroy_boxed_opaque_existential_0((v0 + 120));
    sub_22966908C(v16);
    __swift_destroy_boxed_opaque_existential_0((v0 + 240));
    v17 = *(v0 + 536);
    v18 = *(v0 + 528);
    v19 = *(v0 + 520);
    v21 = *(v0 + 504);
    v20 = *(v0 + 512);
    v22 = *(v0 + 496);
    v24 = *(v0 + 472);
    v23 = *(v0 + 480);
    v26 = *(v0 + 456);
    v25 = *(v0 + 464);
    v28 = *(v0 + 448);
    v29 = *(v0 + 424);
    *(*(v0 + 416) + 176) = 0;

    v27 = *(v0 + 8);

    return v27(0, 0, 0, 1);
  }
}

uint64_t sub_229660DD8()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v9 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v4 = *(v2 + 624);
    v5 = *(v2 + 416);

    v6 = sub_22966219C;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 416);
    v6 = sub_229660F00;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_229660F00()
{
  v50 = v0;
  v1 = *(v0 + 576);
  sub_22957F1C4(v0 + 240, v0 + 320);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDD0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v49 = v5;
    *v4 = 136446210;
    v6 = *(v0 + 344);
    v7 = *(v0 + 352);
    __swift_project_boxed_opaque_existential_0((v0 + 320), v6);
    *(v0 + 400) = sub_2297B96F4(v6, v7);
    v8 = sub_22A4DE5CC();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0((v0 + 320));
    v11 = sub_2295A3E30(v8, v10, &v49);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_229538000, v2, v3, "Notifying of newly installed asset with version %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AAD4E50](v5, -1, -1);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 320));
  }

  v12 = *(v0 + 624);
  v13 = *(v0 + 416);
  v14 = *(v13 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E3C8, &qword_22A57BC58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(v0 + 360) = sub_22A4DD5EC();
  *(v0 + 368) = v16;
  sub_22A4DE18C();
  v17 = *(v0 + 264);
  v18 = *(v0 + 272);
  __swift_project_boxed_opaque_existential_0((v0 + 240), v17);
  sub_2297B96F4(v17, v18);
  v19 = sub_22A4DDBDC();
  *(inited + 96) = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  *(inited + 72) = v19;
  sub_22956B3FC(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &qword_27D87CE08, &qword_22A57BC60);
  v20 = sub_22A4DD47C();

  [v14 postNotificationName:@"HMDMobileAssetManagerFoundUpdateNotification" object:v13 userInfo:v20];

  v21 = *(v0 + 624);
  if (*(v12 + 16))
  {
    v23 = *(v0 + 416);
    v22 = *(v0 + 424);
    v24 = sub_22A4DD9DC();
    (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
    v26 = sub_229669498(&qword_281402628, v25, type metadata accessor for MobileAssetManager);
    v27 = swift_allocObject();
    v27[2] = v23;
    v27[3] = v26;
    v27[4] = v21;
    v27[5] = v23;
    swift_retain_n();
    sub_22957F3C0(0, 0, v22, &unk_22A57BC70, v27);
  }

  else
  {
    v28 = *(v0 + 624);
  }

  v48 = *(v0 + 388);
  v29 = *(v0 + 536);
  v30 = *(v0 + 264);
  v31 = *(v0 + 272);
  __swift_project_boxed_opaque_existential_0((v0 + 240), v30);
  v47 = sub_2297B96F4(v30, v31);
  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  sub_22966908C(v29);
  __swift_destroy_boxed_opaque_existential_0((v0 + 240));
  v32 = *(v0 + 536);
  v33 = *(v0 + 528);
  v34 = *(v0 + 520);
  v36 = *(v0 + 504);
  v35 = *(v0 + 512);
  v37 = *(v0 + 496);
  v38 = *(v0 + 472);
  v39 = *(v0 + 480);
  v41 = *(v0 + 456);
  v40 = *(v0 + 464);
  v44 = *(v0 + 448);
  v45 = *(v0 + 424);
  v46 = *(v0 + 656);
  *(*(v0 + 416) + 176) = 0;

  v42 = *(v0 + 8);

  return v42(v46, v48, v47, 0);
}

uint64_t sub_2296613BC()
{
  v1 = *(v0 + 592);
  if (*(v0 + 386))
  {
    v2 = *(v0 + 576);
    v3 = v1;
    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCCC();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 592);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v7;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_229538000, v4, v5, "Allowing update to continue after error downloading catalog: %@", v8, 0xCu);
      sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v9, -1, -1);
      MEMORY[0x22AAD4E50](v8, -1, -1);
    }

    else
    {
    }

    v27 = swift_task_alloc();
    *(v0 + 600) = v27;
    *v27 = v0;
    v27[1] = sub_229660660;
    v28 = *(v0 + 416);

    return sub_22965CD60(v0 + 160, 2);
  }

  else
  {
    v12 = *(v0 + 536);
    v13 = *(v0 + 416);
    v14 = *(v0 + 592);
    swift_willThrow();
    sub_22966908C(v12);
    *(v13 + 176) = 0;
    v15 = *(v0 + 536);
    v16 = *(v0 + 528);
    v17 = *(v0 + 520);
    v19 = *(v0 + 504);
    v18 = *(v0 + 512);
    v20 = *(v0 + 496);
    v22 = *(v0 + 472);
    v21 = *(v0 + 480);
    v23 = *(v0 + 456);
    v24 = *(v0 + 464);
    v29 = *(v0 + 448);
    v30 = *(v0 + 424);
    v31 = *(v0 + 592);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_229661664()
{
  v1 = *(v0 + 608);
  *(v0 + 392) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  if (!swift_dynamicCast() || (*(v0 + 384) == 1 ? (v3 = *(v0 + 376) == 1) : (v3 = 0), !v3))
  {
    v4 = *(v0 + 416);
    sub_22966908C(*(v0 + 536));

    *(v4 + 176) = 0;
    v36 = *(v0 + 608);
LABEL_7:
    v5 = *(v0 + 536);
    v6 = *(v0 + 528);
    v7 = *(v0 + 520);
    v9 = *(v0 + 504);
    v8 = *(v0 + 512);
    v10 = *(v0 + 496);
    v12 = *(v0 + 472);
    v11 = *(v0 + 480);
    v13 = *(v0 + 456);
    v14 = *(v0 + 464);
    v34 = *(v0 + 448);
    v35 = *(v0 + 424);

    v15 = *(v0 + 8);

    return v15();
  }

  v17 = *(v0 + 536);
  v18 = *(v0 + 488);

  v19 = v17 + *(v18 + 20);
  if ((*(v19 + 8) & 1) != 0 || *v19 < 1)
  {
    v27 = *(v0 + 576);
    v28 = sub_22A4DD05C();
    v29 = sub_22A4DDCCC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_229538000, v28, v29, "There is correctly no catalog", v30, 2u);
      MEMORY[0x22AAD4E50](v30, -1, -1);
    }

    v31 = *(v0 + 536);
    v32 = *(v0 + 416);

    sub_2296691E4();
    swift_allocError();
    *v33 = 1;
    *(v33 + 8) = 1;
    swift_willThrow();
    sub_22966908C(v31);

    *(v32 + 176) = 0;
    goto LABEL_7;
  }

  v20 = *(v0 + 576);
  v21 = sub_22A4DD05C();
  v22 = sub_22A4DDCCC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_229538000, v21, v22, "No catalog detected, attempting to download it", v23, 2u);
    MEMORY[0x22AAD4E50](v23, -1, -1);
  }

  v24 = swift_task_alloc();
  *(v0 + 680) = v24;
  *v24 = v0;
  v24[1] = sub_2296619B8;
  v25 = *(v0 + 416);
  v26 = *(v0 + 387);

  return sub_229664AD8(v26);
}

uint64_t sub_2296619B8()
{
  v2 = *(*v1 + 680);
  v3 = *v1;
  v3[86] = v0;

  if (v0)
  {
    v4 = v3[52];

    return MEMORY[0x2822009F8](sub_229661D0C, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[87] = v5;
    *v5 = v3;
    v5[1] = sub_229661B30;
    v6 = v3[52];

    return sub_22965CD60((v3 + 25), 2);
  }
}

uint64_t sub_229661B30()
{
  v2 = *v1;
  v3 = *(*v1 + 696);
  v4 = *v1;
  *(*v1 + 704) = v0;

  v5 = *(v2 + 416);
  if (v0)
  {
    v6 = sub_229661E2C;
  }

  else
  {
    v6 = sub_229661C5C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_229661C5C()
{
  sub_229557188((v0 + 200), v0 + 120);

  v1 = swift_task_alloc();
  *(v0 + 616) = v1;
  *v1 = v0;
  v1[1] = sub_229660834;
  v2 = *(v0 + 416);

  return sub_229665674(v0 + 280, v0 + 120);
}

uint64_t sub_229661D0C()
{
  v1 = *(v0 + 416);
  sub_22966908C(*(v0 + 536));

  *(v1 + 176) = 0;
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v6 = *(v0 + 504);
  v5 = *(v0 + 512);
  v7 = *(v0 + 496);
  v9 = *(v0 + 472);
  v8 = *(v0 + 480);
  v10 = *(v0 + 456);
  v11 = *(v0 + 464);
  v14 = *(v0 + 448);
  v15 = *(v0 + 424);
  v16 = *(v0 + 688);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_229661E2C()
{
  v1 = *(v0 + 416);
  sub_22966908C(*(v0 + 536));

  *(v1 + 176) = 0;
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v6 = *(v0 + 504);
  v5 = *(v0 + 512);
  v7 = *(v0 + 496);
  v9 = *(v0 + 472);
  v8 = *(v0 + 480);
  v10 = *(v0 + 456);
  v11 = *(v0 + 464);
  v14 = *(v0 + 448);
  v15 = *(v0 + 424);
  v16 = *(v0 + 704);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_229661F4C()
{
  v1 = v0[67];
  v2 = v0[52];
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  sub_22966908C(v1);
  *(v2 + 176) = 0;
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[65];
  v7 = v0[63];
  v6 = v0[64];
  v8 = v0[62];
  v10 = v0[59];
  v9 = v0[60];
  v11 = v0[57];
  v12 = v0[58];
  v15 = v0[56];
  v16 = v0[53];
  v17 = v0[79];

  v13 = v0[1];

  return v13();
}

uint64_t sub_229662070()
{
  v1 = v0[67];
  v2 = v0[52];
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  sub_22966908C(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 30);
  *(v2 + 176) = 0;
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[65];
  v7 = v0[63];
  v6 = v0[64];
  v8 = v0[62];
  v10 = v0[59];
  v9 = v0[60];
  v11 = v0[57];
  v12 = v0[58];
  v15 = v0[56];
  v16 = v0[53];
  v17 = v0[81];

  v13 = v0[1];

  return v13();
}

uint64_t sub_22966219C()
{
  v1 = v0[67];
  v2 = v0[52];
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  sub_22966908C(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 30);
  *(v2 + 176) = 0;
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[65];
  v7 = v0[63];
  v6 = v0[64];
  v8 = v0[62];
  v10 = v0[59];
  v9 = v0[60];
  v11 = v0[57];
  v12 = v0[58];
  v15 = v0[56];
  v16 = v0[53];
  v17 = v0[84];

  v13 = v0[1];

  return v13();
}

uint64_t sub_229662440(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_229669DAC;

  return sub_22965E35C();
}

uint64_t sub_2296624E8()
{
  v1[2] = v0;
  updated = _s21MobileAssetUpdateInfoVMa();
  v1[3] = updated;
  v3 = *(*(updated - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22966257C, v0, 0);
}

uint64_t sub_22966257C()
{
  *(v0 + 40) = *(*(v0 + 16) + 168);

  return MEMORY[0x2822009F8](sub_2296625F0, 0, 0);
}

uint64_t sub_2296625F0()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = v1;
  v3[3] = sub_229669DBC;
  v3[4] = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2296626F8;
  v7 = v0[3];
  v6 = v0[4];

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_229669DB4, v3, v7);
}

uint64_t sub_2296626F8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2296628C0;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 48);
    v7 = *(v2 + 16);

    v4 = sub_22966282C;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22966282C()
{
  v1 = (v0[4] + *(v0[3] + 20));
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_22966908C(v0[4]);
  if (v3)
  {
    v2 = 0;
  }

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_2296628C0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_229662938, v2, 0);
}

uint64_t sub_229662938()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_229662B14(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_229662BBC;

  return sub_2296624E8();
}

uint64_t sub_229662BBC(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_22A4DB3DC();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_229662D50(char a1, char a2)
{
  *(v3 + 168) = v2;
  v6 = swift_task_alloc();
  *(v3 + 176) = v6;
  *v6 = v3;
  v6[1] = sub_229662DFC;

  return sub_22965F140(a1, a2, 0);
}

uint64_t sub_229662DFC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v10 = *v5;
  v11 = *(*v5 + 176);
  v12 = *v5;
  *(*v5 + 184) = v4;

  if (v4)
  {
    v13 = *(v10 + 168);

    return MEMORY[0x2822009F8](sub_229662F80, v13, 0);
  }

  else
  {
    if ((a4 | a2))
    {
      v14 = 0;
    }

    else
    {
      v14 = a1;
    }

    if (a4)
    {
      v15 = 0;
    }

    else
    {
      v15 = a3;
    }

    v16 = *(v12 + 8);

    return v16(v14, v15);
  }
}

uint64_t sub_229662F80()
{
  v1 = *(v0 + 184);
  *(v0 + 160) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 144);
    if (*(v0 + 152) == 1)
    {
      v4 = objc_opt_self();
      if (v3)
      {
        v5 = [v4 hmErrorWithCode_];
      }

      else
      {
        v5 = [v4 hmErrorWithCode_];
      }

      v5;
    }

    else
    {
      v6 = 0xE90000000000003ELL;
      v7 = 0x6E776F6E6B6E753CLL;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      inited = swift_initStackObject();
      *(inited + 32) = 0xD000000000000010;
      *(inited + 16) = xmmword_22A5761A0;
      v9 = MEMORY[0x277D83B88];
      *(inited + 40) = 0x800000022A58F030;
      *(inited + 48) = v3;
      *(inited + 72) = v9;
      *(inited + 80) = 0x727453726F727245;
      *(inited + 88) = 0xEB00000000676E69;
      v10 = MEMORY[0x22AAD2B60](v3);
      if (v10)
      {
        v11 = v10;
        v12 = sub_22A4DD5EC();
        v14 = v13;

        *(inited + 120) = MEMORY[0x277D837D0];
        if (v14)
        {
          v7 = v12;
          v6 = v14;
        }
      }

      else
      {
        *(inited + 120) = MEMORY[0x277D837D0];
      }

      *(inited + 96) = v7;
      *(inited + 104) = v6;
      v15 = objc_opt_self();
      sub_22956AD8C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDA0, &unk_22A57A930);
      swift_arrayDestroy();
      v16 = sub_22A4DD47C();

      [v15 hmErrorWithCode:78 userInfo:v16];
    }

    swift_willThrow();
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2296633C0(char a1, char a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);

  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_229663484;

  return sub_229662D50(a1, a2);
}

uint64_t sub_229663484(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 32);
  v7 = *(*v3 + 24);
  v8 = *(*v3 + 16);
  v9 = *v3;

  v10 = (v7 + 16);
  v11 = *(v9 + 24);
  if (v2)
  {
    v12 = sub_22A4DB3DC();

    (*v10)(v11, 0, 0, v12);
  }

  else
  {
    (*v10)(*(v9 + 24), a1, a2, 0);
  }

  _Block_release(*(v9 + 24));
  v13 = *(v9 + 8);

  return v13();
}

uint64_t sub_229663624()
{
  *(v1 + 96) = v0;
  v2 = swift_task_alloc();
  *(v1 + 104) = v2;
  *v2 = v1;
  v2[1] = sub_2296636C0;

  return sub_22965CD60(v1 + 56, 2);
}

uint64_t sub_2296636C0()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_229663A64;
  }

  else
  {
    v4 = sub_2296637E8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296637E8()
{
  sub_229557188((v0 + 56), v0 + 16);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  v3 = (*(v2 + 24))(v1, v2);
  v4 = sub_229668C28(v3);
  *(v0 + 120) = v4;

  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_2296638D8;
  v6 = *(v0 + 96);

  return sub_22965D440(v4);
}

uint64_t sub_2296638D8()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_229663A04, v3, 0);
}

uint64_t sub_229663A04()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229663A64()
{
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_281401F78);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_229538000, v4, v5, "Unable to query metadata while purging, aborting: %@", v8, 0xCu);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_229663C28()
{
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_281401F78);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Clearing mobile asset update info", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_2295C9EFC;
  v6 = *(v0 + 16);

  return sub_229667330(sub_229667A60, 0);
}

uint64_t sub_229663F04(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_229663FAC;

  return sub_229663624();
}

uint64_t sub_229663FAC()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 40) = v4;
  *v4 = v3;
  v4[1] = sub_2296640EC;
  v5 = *(v1 + 16);

  return sub_229663C08();
}

uint64_t sub_2296640EC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_22A4DB3DC();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

unint64_t sub_229664274()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - v4;
  updated = _s21MobileAssetUpdateInfoVMa();
  v7 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 168);
  sub_2296D0818(sub_229669000, v1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  v12 = inited;
  *(inited + 32) = 0x20746E65746E6F43;
  *(inited + 16) = xmmword_22A5761A0;
  *(inited + 40) = 0xEF6E6F6973726556;
  v13 = &v9[*(updated + 20)];
  if (v13[8] == 1)
  {
    v14 = (inited + 48);
    *(inited + 72) = MEMORY[0x277D837D0];
  }

  else
  {
    v25[1] = *v13;
    v15 = sub_22A4DE5CC();
    v14 = v12 + 6;
    v12[9] = MEMORY[0x277D837D0];
    if (v16)
    {
      *v14 = v15;
      goto LABEL_6;
    }
  }

  *v14 = 0x3E656E6F6E3CLL;
  v16 = 0xE600000000000000;
LABEL_6:
  v12[7] = v16;
  v12[10] = 0x647055207473614CLL;
  v12[11] = 0xEB00000000657461;
  sub_22966901C(v9, v5);
  v17 = sub_22A4DB74C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v5, 1, v17) == 1)
  {
    sub_22953EAE4(v5, &unk_27D881AA0, &qword_22A57BC20);
    v19 = v12 + 12;
    v12[15] = MEMORY[0x277D837D0];
LABEL_10:
    *v19 = 0x6E776F6E6B6E753CLL;
    v22 = 0xE90000000000003ELL;
    goto LABEL_11;
  }

  v20 = sub_22A4DB67C();
  v22 = v21;
  (*(v18 + 8))(v5, v17);
  v19 = v12 + 12;
  v12[15] = MEMORY[0x277D837D0];
  if (!v22)
  {
    goto LABEL_10;
  }

  *v19 = v20;
LABEL_11:
  v12[13] = v22;
  v23 = sub_22956AD8C(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDA0, &unk_22A57A930);
  swift_arrayDestroy();
  sub_22966908C(v9);
  return v23;
}

void sub_22966478C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = [*(a1 + 168) managedObjectContext];
  v10 = [objc_opt_self() fetchRequest];
  sub_229562F68(0, &unk_281401B28, off_2786663B0);
  v11 = sub_22A4DDE7C();
  if (v2)
  {
    goto LABEL_2;
  }

  v12 = v11;

  if (v12 >> 62)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_5;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x22AAD13F0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v13 = *(v12 + 32);
  }

  v10 = v13;

  v14 = [v10 mobileAssetUpdateInfo];
  if (v14)
  {
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v16 = sub_22A4DD49C();

    sub_2296A9A44(v16, a2);
LABEL_2:

    return;
  }

LABEL_13:
  v17 = sub_22A4DB74C();
  v18 = *(*(v17 - 8) + 56);
  v18(v8, 1, 1, v17);
  v18(a2, 1, 1, v17);
  v19 = a2 + *(_s21MobileAssetUpdateInfoVMa() + 20);
  sub_2296690E8(v8, a2);
  *v19 = 0;
  *(v19 + 8) = 1;
}

uint64_t sub_229664A88()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_229664AD8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 112) = a1;
  v3 = sub_22A4DB74C();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229664BA8, v1, 0);
}

uint64_t sub_229664BA8()
{
  v1 = *(v0 + 112);
  v2 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  *(v0 + 56) = v2;
  [v2 setDiscretionary_];
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_229664C9C;

  return (sub_22981847C)(0xD000000000000024, 0x800000022A58F050, v2);
}

uint64_t sub_229664C9C(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_229664DB4, v3, 0);
}

uint64_t sub_229664DB4()
{
  v32 = v0;
  v1 = v0[9];
  if (v1 == 44)
  {
    if (qword_281401F70 != -1)
    {
      swift_once();
    }

    v5 = sub_22A4DD07C();
    __swift_project_value_buffer(v5, qword_281401F78);
    v6 = sub_22A4DD05C();
    v7 = sub_22A4DDCCC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_229538000, v6, v7, "Unable to download catalog: no catalog found on the server", v8, 2u);
      MEMORY[0x22AAD4E50](v8, -1, -1);
    }

    v9 = v0[5];

    sub_22A4DB71C();
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_2296652E0;
    v4 = v0[5];
    goto LABEL_9;
  }

  if (!v1)
  {
    v2 = v0[6];
    sub_22A4DB71C();
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_229665158;
    v4 = v0[6];
LABEL_9:
    v11 = v0[2];

    return sub_2296663CC(v4);
  }

  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v13 = sub_22A4DD07C();
  __swift_project_value_buffer(v13, qword_281401F78);
  v14 = sub_22A4DD05C();
  v15 = sub_22A4DDCEC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[9];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 134218242;
    *(v17 + 4) = v16;
    *(v17 + 12) = 2082;
    v19 = MEMORY[0x22AAD2B60](v16);
    if (v19)
    {
      v20 = v19;
      v21 = sub_22A4DD5EC();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0xE000000000000000;
    }

    v24 = sub_2295A3E30(v21, v23, &v31);

    *(v17 + 14) = v24;
    _os_log_impl(&dword_229538000, v14, v15, "Unable to download catalog: %ld (%{public}s)", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AAD4E50](v18, -1, -1);
    MEMORY[0x22AAD4E50](v17, -1, -1);
  }

  v25 = v0[9];
  v26 = v0[7];
  sub_2296691E4();
  swift_allocError();
  *v27 = v25;
  *(v27 + 8) = 0;
  swift_willThrow();

  v29 = v0[5];
  v28 = v0[6];

  v30 = v0[1];

  return v30();
}

uint64_t sub_229665158()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 88) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 16);
  if (v0)
  {
    v9 = sub_22966558C;
  }

  else
  {
    v9 = sub_229665514;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_2296652E0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 16);
  if (v0)
  {
    v9 = sub_229665600;
  }

  else
  {
    v9 = sub_229665468;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_229665468()
{
  v1 = v0[7];
  sub_2296691E4();
  swift_allocError();
  *v2 = 44;
  *(v2 + 8) = 0;
  swift_willThrow();

  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_229665514()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22966558C()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_229665600()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_229665674(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_229665694, v2, 0);
}

uint64_t sub_229665694()
{
  v15 = v0;
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = sub_229668C28(v4);

  if (v5[2])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_2295AFE8C(v5);
    }

    v6 = v5[2];
    v14[0] = (v5 + 4);
    v14[1] = v6;
    result = sub_229667CFC(v14);
    v10 = v5[2];
    if (v10)
    {
      sub_22957F1C4((v5 + 4), v0[2]);
      sub_22975E088(v5, (v5 + 4), 1, (2 * v10) | 1);
      v12 = v11;

      v13 = v0[1];

      return v13(v12);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_2296691E4();
    swift_allocError();
    *v8 = 2;
    *(v8 + 8) = 1;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_229665848(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  return MEMORY[0x2822009F8](sub_22966586C, v2, 0);
}

uint64_t sub_22966586C()
{
  v28 = v0;
  v1 = *(v0 + 64);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  if ((*(v3 + 24))(v2, v3))
  {
    if (qword_281401F70 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 64);
    v5 = sub_22A4DD07C();
    *(v0 + 80) = __swift_project_value_buffer(v5, qword_281401F78);
    sub_22957F1C4(v4, v0 + 16);
    v6 = sub_22A4DD05C();
    v7 = sub_22A4DDCCC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v27 = v9;
      *v8 = 136446210;
      v10 = *(v0 + 40);
      v11 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_0((v0 + 16), v10);
      *(v0 + 56) = sub_2297B96F4(v10, v11);
      v12 = sub_22A4DE5CC();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v15 = sub_2295A3E30(v12, v14, &v27);

      *(v8 + 4) = v15;
      _os_log_impl(&dword_229538000, v6, v7, "Downloading asset with content version %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x22AAD4E50](v9, -1, -1);
      MEMORY[0x22AAD4E50](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }

    v18 = *(v0 + 112);
    v19 = *(v0 + 64);
    v20 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
    *(v0 + 88) = v20;
    [v20 setDiscretionary_];
    v22 = v1[3];
    v21 = v1[4];
    __swift_project_boxed_opaque_existential_0(v19, v22);
    v23 = *(v21 + 40);
    v26 = (v23 + *v23);
    v24 = v23[1];
    v25 = swift_task_alloc();
    *(v0 + 96) = v25;
    *v25 = v0;
    v25[1] = sub_229665BD4;

    return v26(v20, v22, v21);
  }

  else
  {
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_229665BD4(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_229665CEC, v3, 0);
}

uint64_t sub_229665CEC()
{
  v19 = v0;
  if (*(v0 + 104))
  {
    v1 = *(v0 + 80);
    v2 = sub_22A4DD05C();
    v3 = sub_22A4DDCEC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 104);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18 = v6;
      *v5 = 134218242;
      *(v5 + 4) = v4;
      *(v5 + 12) = 2082;
      v7 = MEMORY[0x22AAD2B60](v4);
      if (v7)
      {
        v8 = v7;
        v9 = sub_22A4DD5EC();
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0xE000000000000000;
      }

      v13 = sub_2295A3E30(v9, v11, &v18);

      *(v5 + 14) = v13;
      _os_log_impl(&dword_229538000, v2, v3, "Unable to download asset: %ld (%{public}s)", v5, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AAD4E50](v6, -1, -1);
      MEMORY[0x22AAD4E50](v5, -1, -1);
    }

    v14 = *(v0 + 104);
    v15 = *(v0 + 88);
    sub_2296691E4();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = 0;
    swift_willThrow();

    v12 = *(v0 + 8);
  }

  else
  {

    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t sub_229665EC0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_229665EE0, v1, 0);
}

uint64_t sub_229665EE0()
{
  v16 = v0;
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_281401F78);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v0[2] = v4;
    v7 = sub_22A4DE5CC();
    v9 = sub_2295A3E30(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_229538000, v2, v3, "Saving currentVersion: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AAD4E50](v6, -1, -1);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }

  v10 = v0[3];
  v11 = swift_allocObject();
  v0[5] = v11;
  *(v11 + 16) = v10;
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_2296660E8;
  v13 = v0[4];

  return sub_229667330(sub_2296693CC, v11);
}

uint64_t sub_2296660E8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x2822009F8](sub_229580CA4, v4, 0);
  }

  else
  {
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_229666224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_229666244, a5, 0);
}

uint64_t sub_229666244()
{
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_281401F78);

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[2];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_229538000, v3, v4, "Purging %ld obsolete asset(s)", v7, 0xCu);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  else
  {
    v8 = v0[2];
  }

  v9 = swift_task_alloc();
  v0[4] = v9;
  *v9 = v0;
  v9[1] = sub_22958101C;
  v10 = v0[2];
  v11 = v0[3];

  return sub_22965D440(v10);
}

uint64_t sub_2296663CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22A4DB74C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296664A0, v1, 0);
}

uint64_t sub_2296664A0()
{
  v31 = v0;
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = sub_22A4DD07C();
  __swift_project_value_buffer(v5, qword_281401F78);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  v12 = v0[4];
  v11 = v0[5];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v13 = 136446210;
    sub_229669498(&qword_281403890, 255, MEMORY[0x277CC9578]);
    v28 = v8;
    v14 = v6;
    v15 = sub_22A4DE5CC();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_2295A3E30(v18, v17, &v30);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_229538000, v7, v28, "Saving lastCatalogUpdate: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AAD4E50](v29, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[7];
  v21 = v0[4];
  v22 = v0[5];
  v6(v20, v0[2], v21);
  v23 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v0[9] = v24;
  (*(v22 + 32))(v24 + v23, v20, v21);
  v25 = swift_task_alloc();
  v0[10] = v25;
  *v25 = v0;
  v25[1] = sub_22966679C;
  v26 = v0[3];

  return sub_229667330(sub_229669428, v24);
}

uint64_t sub_22966679C()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_2296668F0, v4, 0);
  }

  else
  {
    v6 = v3[8];
    v5 = v3[9];
    v7 = v3[7];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_2296668F0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}