uint64_t sub_22984CF70()
{
  v1 = *(v0 + 3480);
  v2 = *(v0 + 3472);

  sub_22985B114(v0 + 2304);
  sub_22985B114(v0 + 2304);
  v3 = *(v0 + 3216);
  v4 = *(v0 + 3208);
  v5 = *(v0 + 3200);
  v6 = *(v0 + 3192);
  v7 = *(v0 + 3184);
  v8 = *(v0 + 3176);
  v9 = *(v0 + 3168);
  v10 = *(v0 + 3160);
  v11 = *(v0 + 3152);
  v12 = *(v0 + 3136);
  v15 = *(v0 + 3128);
  v16 = *(v0 + 3104);
  v17 = *(v0 + 3096);
  v18 = *(v0 + 3064);
  v19 = *(v0 + 3560);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22984D0C8()
{
  v1 = *(v0 + 3216);
  v2 = *(v0 + 3208);
  v3 = *(v0 + 3200);
  v4 = *(v0 + 3192);
  v5 = *(v0 + 3184);
  v6 = *(v0 + 3176);
  v7 = *(v0 + 3168);
  v8 = *(v0 + 3160);
  v9 = *(v0 + 3152);
  v10 = *(v0 + 3136);
  v13 = *(v0 + 3128);
  v14 = *(v0 + 3104);
  v15 = *(v0 + 3096);
  v16 = *(v0 + 3064);
  v17 = *(v0 + 3296);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22984D200()
{
  sub_22985B114((v0 + 288));
  sub_22985B114((v0 + 288));
  v1 = v0[402];
  v2 = v0[401];
  v3 = v0[400];
  v4 = v0[399];
  v5 = v0[398];
  v6 = v0[397];
  v7 = v0[396];
  v8 = v0[395];
  v9 = v0[394];
  v10 = v0[392];
  v13 = v0[391];
  v14 = v0[388];
  v15 = v0[387];
  v16 = v0[383];
  v17 = v0[430];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22984D340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_22984D364, 0, 0);
}

uint64_t sub_22984D364()
{
  v1 = *(v0 + 80);
  v2 = *(type metadata accessor for HomePassState(0) + 48);
  *(v0 + 136) = v2;
  v3 = v1 + v2;
  if (*(v1 + v2) != 1 || (v4 = type metadata accessor for HomePassData(0), *(v0 + 96) = v4, v5 = *(v3 + v4[17]), *(v0 + 146) = v5, (v5 & 1) == 0) && *(v3 + v4[18]) == 2 || *(v3 + v4[23]) != 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_12;
  }

  v6 = *(v0 + 88);
  v7 = *(v3 + v4[10]);
  if (!v6)
  {
    if (v7 == 5)
    {
      v18 = *(v1 + 13);
      v19 = 1;
    }

    else
    {
      if (*(v3 + v4[11]) != 1)
      {
        v18 = 0;
        v85 = 0;
        if (*(v1 + 24))
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }

      v18 = 0;
      v19 = *(v1 + 12);
    }

    v85 = v19;
    if (*(v1 + 24))
    {
LABEL_27:
      if (v18)
      {
        v36 = 256;
      }

      else
      {
        v36 = 0;
      }

      v83 = v36 | v18;
      goto LABEL_59;
    }

LABEL_33:
    v83 = (*(v1 + 16) << 6) & 0x100 | (*(v1 + 16) >> 1) & 1;
LABEL_59:
    v86 = *(v0 + 146);
    v47 = *(v0 + 96);
    v48 = *(v0 + 80) + *(v0 + 136);
    v49 = (v48 + *(v47 + 32));
    v51 = v49[2];
    v50 = v49[3];
    v52 = *v49;
    v53 = v49[1];
    v54 = objc_allocWithZone(MEMORY[0x277D38320]);
    v55 = sub_22A4DB61C();
    v56 = sub_22A4DB61C();
    v89 = [v54 initWithReaderGroupIdentifier:v55 readerGroupPublicKey:v56];

    v57 = v49[4];
    v58 = v49[5];
    v59 = objc_allocWithZone(MEMORY[0x277D37D20]);
    v60 = sub_22A4DB61C();
    v61 = sub_22A4DB61C();
    v62 = [v59 initWithReaderGroupIdentifier:v60 readerGroupPublicKey:v61];

    v63 = *(v48 + *(v47 + 72));
    if (v86 == 1)
    {
      v81 = v62;
      if (v63 == 2)
      {
        v11 = 0;
        v12 = 0;
        v10 = v89;
        v64 = v89;
      }

      else
      {
        v10 = v89;
        v12 = 2;
        v64 = v62;
        v11 = v62;
      }
    }

    else
    {
      if (v63 == 2)
      {
        sub_22962F2A8();
        swift_allocError();
        *v65 = 0xD000000000000047;
        *(v65 + 8) = 0x800000022A598F20;
        *(v65 + 16) = 0;
        swift_willThrow();

        v16 = *(v0 + 8);
        goto LABEL_13;
      }

      v11 = 0;
      v12 = 1;
      v64 = v62;
      v10 = v62;
      v81 = v62;
    }

    v66 = *(v0 + 96);
    v87 = *(v0 + 88);
    v67 = *(v0 + 80);
    v68 = v67 + *(v0 + 136);
    if (*(v68 + v66[12]))
    {
      v13 = 7;
    }

    else
    {
      v13 = 1;
    }

    v80 = *(v67 + 9);
    v69 = v64;
    v70 = objc_opt_self();
    v71 = v68 + v66[5];
    v72 = sub_22A4DB77C();
    v73 = v68 + v66[7];
    v74 = sub_22A4DB77C();
    v75 = [v70 passSerialNumberWithHomeUUID:v72 userUUID:v74];

    v8 = sub_22A4DD5EC();
    v9 = v76;

    if (v80 == 2 || v87 == 0)
    {
      v78 = 0;
    }

    else
    {
      v78 = 0x1000000;
    }

    v14 = v85 | (v83 << 8) | v78;
LABEL_12:
    v15 = *(v0 + 72);
    *v15 = v8;
    *(v15 + 8) = v9;
    *(v15 + 16) = v10;
    *(v15 + 24) = v11;
    *(v15 + 32) = v12;
    *(v15 + 40) = v13;
    *(v15 + 48) = v14;
    v16 = *(v0 + 8);
LABEL_13:

    return v16();
  }

  if (v7 == 5)
  {
    if (*(v1 + 13))
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  *(v0 + 140) = v20;
  v21 = *(v1 + 9);
  if (v21 != 2)
  {
    v35 = v20 | v21 & 1;
LABEL_58:
    v83 = v35;
    v85 = 1;
    goto LABEL_59;
  }

  v84 = v4;
  v22 = v6;
  v23 = [v22 secureElementPass];
  if (!v23)
  {

LABEL_57:
    v35 = 2;
    goto LABEL_58;
  }

  v24 = v23;
  v25 = [v23 paymentApplications];

  if (!v25)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v26, v27, v28);
  }

  sub_229562F68(0, &qword_281401930, 0x277D37FE0);
  sub_2296562D4();
  v29 = sub_22A4DDB6C();

  v82 = v22;
  if ((v29 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_22A4DDBAC();
    v30 = *(v0 + 16);
    v31 = *(v0 + 24);
    v32 = *(v0 + 32);
    v33 = *(v0 + 40);
    v34 = *(v0 + 48);
  }

  else
  {
    v37 = -1 << *(v29 + 32);
    v31 = v29 + 56;
    v32 = ~v37;
    v38 = -v37;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v34 = v39 & *(v29 + 56);

    v33 = 0;
  }

  v79 = v32;
  v40 = (v32 + 64) >> 6;
  v88 = v30;
  while ((v30 & 0x8000000000000000) == 0)
  {
    v41 = v33;
    v42 = v34;
    if (!v34)
    {
      while (1)
      {
        v33 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v33 >= v40)
        {
          goto LABEL_50;
        }

        v42 = *(v31 + 8 * v33);
        ++v41;
        if (v42)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_77:
      swift_once();
      goto LABEL_53;
    }

LABEL_44:
    v34 = (v42 - 1) & v42;
    v43 = *(*(v30 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v42)))));
    if (!v43)
    {
      goto LABEL_50;
    }

LABEL_48:
    v45 = [v43 supportsUWB];

    v30 = v88;
    if (v45)
    {

      sub_22953EE84();

      goto LABEL_57;
    }
  }

  v44 = sub_22A4DE12C();
  if (v44)
  {
    *(v0 + 64) = v44;
    swift_dynamicCast();
    v43 = *(v0 + 56);
    if (v43)
    {
      goto LABEL_48;
    }
  }

LABEL_50:
  sub_22953EE84();

  v46 = *(v3 + v84[18]);
  if (v46 == 2 || (v46 & 1) == 0)
  {

    goto LABEL_57;
  }

  if (qword_281402F18 != -1)
  {
    goto LABEL_77;
  }

LABEL_53:
  v27 = static PassLibrary.shared;
  *(v0 + 104) = static PassLibrary.shared;
  v26 = sub_22984DAB0;
  v28 = 0;

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_22984DAB0()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_22984DBA4;

  return v8(v0 + 18, &unk_22A585D50, v4, &type metadata for ExpressSettings);
}

uint64_t sub_22984DBA4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = sub_22984E004;
  }

  else
  {
    v7 = *(v2 + 104);
    v6 = *(v2 + 112);

    v5 = sub_22984DCC8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22984DCEC()
{
  v44 = *(v0 + 140);
  v45 = *(v0 + 147);

  v47 = *(v0 + 146);
  v1 = *(v0 + 96);
  v2 = *(v0 + 80) + *(v0 + 136);
  v3 = (v2 + *(v1 + 32));
  v5 = v3[2];
  v4 = v3[3];
  v6 = *v3;
  v7 = v3[1];
  v8 = objc_allocWithZone(MEMORY[0x277D38320]);
  v9 = sub_22A4DB61C();
  v10 = sub_22A4DB61C();
  v49 = [v8 initWithReaderGroupIdentifier:v9 readerGroupPublicKey:v10];

  v11 = v3[4];
  v12 = v3[5];
  v13 = objc_allocWithZone(MEMORY[0x277D37D20]);
  v14 = sub_22A4DB61C();
  v15 = sub_22A4DB61C();
  v16 = [v13 initWithReaderGroupIdentifier:v14 readerGroupPublicKey:v15];

  v17 = *(v2 + *(v1 + 72));
  if (v47 == 1)
  {
    if (v17 == 2)
    {
      v48 = 0;
      v18 = v49;
      v19 = v49;
      v42 = v49;
      v43 = 0;
    }

    else
    {
      v18 = v49;
      v42 = v49;
      v43 = v16;
      v48 = 2;
      v19 = v16;
    }
  }

  else
  {
    if (v17 == 2)
    {
      sub_22962F2A8();
      swift_allocError();
      *v20 = 0xD000000000000047;
      *(v20 + 8) = 0x800000022A598F20;
      *(v20 + 16) = 0;
      swift_willThrow();

      v21 = *(v0 + 8);
      goto LABEL_17;
    }

    v42 = v16;
    v43 = 0;
    v48 = 1;
    v19 = v16;
    v18 = v49;
  }

  v50 = v44 | v45;
  v23 = *(v0 + 88);
  v22 = *(v0 + 96);
  v24 = *(v0 + 80);
  v25 = v24 + *(v0 + 136);
  v26 = 7;
  if (!*(v25 + v22[12]))
  {
    v26 = 1;
  }

  v46 = v26;
  v27 = *(v24 + 9);
  v28 = v19;
  v29 = objc_opt_self();
  v30 = v25 + v22[5];
  v31 = sub_22A4DB77C();
  v32 = v25 + v22[7];
  v33 = sub_22A4DB77C();
  v34 = [v29 passSerialNumberWithHomeUUID:v31 userUUID:v33];

  v35 = sub_22A4DD5EC();
  v37 = v36;

  if (v27 == 2 || v23 == 0)
  {
    v39 = 0;
  }

  else
  {
    v39 = 0x1000000;
  }

  v40 = *(v0 + 72);
  *v40 = v35;
  *(v40 + 8) = v37;
  *(v40 + 16) = v42;
  *(v40 + 24) = v43;
  *(v40 + 32) = v48;
  *(v40 + 40) = v46;
  *(v40 + 48) = v39 & 0xFF0000FF | (v50 << 8) | 1;
  v21 = *(v0 + 8);
LABEL_17:

  return v21();
}

uint64_t sub_22984E004()
{
  v1 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_22984E06C, 0, 0);
}

uint64_t sub_22984E06C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22984E0D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 56) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22984E0F8, 0, 0);
}

uint64_t sub_22984E0F8()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  v3 = v1 + *(type metadata accessor for HomePassState(0) + 48);
  v4 = type metadata accessor for HomePassData(0);
  v5 = sub_22956F33C(&v3[*(v4 + 20)], v2);
  v6 = *(v0 + 16);
  if ((v5 & 1) != 0 && v6[24] == 1)
  {
    sub_2297B8424();
    swift_allocError();
    *v7 = 0;
    v7[1] = 0;
LABEL_10:
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }

  if (v6[8] == 1)
  {
    sub_2297B8424();
    swift_allocError();
    *v8 = xmmword_22A578AE0;
    goto LABEL_10;
  }

  if ((v6[10] & 1) == 0)
  {
    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CD06D8] code:8 userInfo:0];
    goto LABEL_10;
  }

  if (v3[*(v4 + 48)] == 1)
  {
    sub_2297B8424();
    swift_allocError();
    *v9 = xmmword_22A585970;
    goto LABEL_10;
  }

  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v12 = swift_task_alloc();
  *(v0 + 40) = v12;
  *v12 = v0;
  v12[1] = sub_22984E338;
  v14 = *(v0 + 24);
  v13 = *(v0 + 32);
  v15 = *(v0 + 56);

  return sub_229866AD0(v14, v13, v15);
}

uint64_t sub_22984E338(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v6 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 57) = a2;

  return MEMORY[0x2822009F8](sub_22984E43C, 0, 0);
}

uint64_t sub_22984E43C()
{
  v1 = *(v0 + 48);
  if (*(v0 + 57))
  {
    if (!v1)
    {
      goto LABEL_6;
    }

    sub_22962F2A8();
    swift_allocError();
    *v2 = 0xD000000000000030;
    *(v2 + 8) = 0x800000022A598EE0;
    *(v2 + 16) = 0;
  }

  else
  {
    [objc_opt_self() homekitErrorWithPassLibraryErrorCode_];
  }

  swift_willThrow();
LABEL_6:
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22984E520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 456) = a1;
  v10 = swift_task_alloc();
  *(v5 + 464) = v10;
  *v10 = v5;
  v10[1] = sub_22984E5E0;

  return sub_22984ED3C(v5 + 16, a2, a4, a5, a3);
}

uint64_t sub_22984E5E0()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  v64 = *(*v1 + 16);
  v63 = *(*v1 + 24);
  v62 = *(*v1 + 32);
  v61 = *(*v1 + 40);
  v60 = *(*v1 + 48);
  v59 = *(*v1 + 56);
  v58 = *(*v1 + 64);
  v57 = *(*v1 + 72);
  v56 = *(*v1 + 80);
  v55 = *(*v1 + 88);
  v54 = *(*v1 + 96);
  v52 = *(*v1 + 104);
  v51 = *(*v1 + 112);
  v50 = *(*v1 + 120);
  v49 = *(*v1 + 128);
  v48 = *(*v1 + 136);
  v47 = *(*v1 + 144);
  v46 = *(*v1 + 152);
  v45 = *(*v1 + 160);
  v53 = *(*v1 + 168);
  v42 = *(*v1 + 184);
  v40 = *(*v1 + 192);
  v38 = *(*v1 + 200);
  v36 = *(*v1 + 208);
  v34 = *(*v1 + 216);
  v30 = *(*v1 + 224);
  v28 = *(*v1 + 232);
  v26 = *(*v1 + 240);
  v44 = *(*v1 + 248);
  v43 = *(*v1 + 256);
  v41 = *(*v1 + 264);
  v39 = *(*v1 + 272);
  v37 = *(*v1 + 280);
  v35 = *(*v1 + 288);
  v33 = *(*v1 + 296);
  v31 = *(*v1 + 305);
  v32 = *(*v1 + 304);
  v29 = *(*v1 + 312);
  v27 = *(*v1 + 320);
  v25 = *(*v1 + 328);
  v24 = *(*v1 + 336);
  v23 = *(*v1 + 344);
  v22 = *(*v1 + 352);
  v21 = *(*v1 + 360);
  v20 = *(*v1 + 368);
  v19 = *(*v1 + 376);
  v18 = *(*v1 + 384);
  v5 = *(*v1 + 392);
  v16 = *(*v1 + 401);
  v17 = *(*v1 + 400);
  v15 = *(*v1 + 402);
  v6 = *(*v1 + 408);
  v7 = *(*v1 + 416);
  v8 = *(*v1 + 424);
  v9 = *(*v1 + 432);
  v10 = *(*v1 + 440);
  v11 = *(*v1 + 448);

  if (!v0)
  {
    v12 = *(v2 + 456);
    *v12 = v64;
    *(v12 + 8) = v63;
    *(v12 + 16) = v62;
    *(v12 + 24) = v61;
    *(v12 + 32) = v60;
    *(v12 + 40) = v59;
    *(v12 + 48) = v58;
    *(v12 + 56) = v57;
    *(v12 + 64) = v56;
    *(v12 + 72) = v55;
    *(v12 + 80) = v54;
    *(v12 + 88) = v52;
    *(v12 + 96) = v51;
    *(v12 + 104) = v50;
    *(v12 + 112) = v49;
    *(v12 + 120) = v48;
    *(v12 + 128) = v47;
    *(v12 + 136) = v46;
    *(v12 + 144) = v45;
    *(v12 + 168) = v42;
    *(v12 + 176) = v40;
    *(v12 + 184) = v38;
    *(v12 + 192) = v36;
    *(v12 + 200) = v34;
    *(v12 + 208) = v30;
    *(v12 + 216) = v28;
    *(v12 + 224) = v26;
    *(v12 + 152) = v53;
    *(v12 + 232) = v44;
    *(v12 + 240) = v43;
    *(v12 + 248) = v41;
    *(v12 + 256) = v39;
    *(v12 + 264) = v37;
    *(v12 + 272) = v35;
    *(v12 + 280) = v33;
    *(v12 + 288) = v32;
    *(v12 + 289) = v31;
    *(v12 + 296) = v29;
    *(v12 + 304) = v27;
    *(v12 + 312) = v25;
    *(v12 + 320) = v24;
    *(v12 + 328) = v23;
    *(v12 + 336) = v22;
    *(v12 + 344) = v21;
    *(v12 + 352) = v20;
    *(v12 + 360) = v19;
    *(v12 + 368) = v18;
    *(v12 + 376) = v5;
    *(v12 + 384) = v17;
    *(v12 + 385) = v16;
    *(v12 + 386) = v15;
    *(v12 + 392) = v6;
    *(v12 + 400) = v7;
    *(v12 + 408) = v8;
    *(v12 + 416) = v9;
    *(v12 + 424) = v10;
    *(v12 + 432) = v11;
  }

  v13 = *(v4 + 8);

  return v13();
}

uint64_t sub_22984ED3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[176] = a5;
  v5[175] = a4;
  v5[174] = a3;
  v5[173] = a2;
  v5[172] = a1;
  v6 = sub_22A4DB49C();
  v5[177] = v6;
  v7 = *(v6 - 8);
  v5[178] = v7;
  v8 = *(v7 + 64) + 15;
  v5[179] = swift_task_alloc();
  v9 = sub_22A4DB57C();
  v5[180] = v9;
  v10 = *(v9 - 8);
  v5[181] = v10;
  v11 = *(v10 + 64) + 15;
  v5[182] = swift_task_alloc();
  v5[183] = swift_task_alloc();
  v5[184] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22984EE80, 0, 0);
}

uint64_t sub_22984EE80()
{
  static PassFileUtilities.createPassDirectory()(v0[184]);
  v1 = v0[184];
  v2 = v0[180];
  v3 = v0[176];
  v4 = v0[175];
  v5 = v0[174];
  sub_22A4DE1FC();

  v0[185] = sub_22985C0F4(&qword_27D87E238, MEMORY[0x277CC9260]);
  v6 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v6);

  sub_22A4DBD0C();

  sub_2297189F4(v5, v4, v3, (v0 + 2));
  v7 = v0[184];
  v45 = v0[183];
  v8 = v0[179];
  v9 = v0[178];
  v0[186] = v0[2];
  *(v0 + 187) = *(v0 + 3);
  v0[189] = v0[5];
  v10 = v0[9];
  v0[192] = v0[8];
  v0[193] = v10;
  v11 = v0[11];
  v0[194] = v0[10];
  v0[195] = v11;
  v0[198] = v0[14];
  *(v0 + 199) = *(v0 + 15);
  v0[201] = v0[17];
  v0[204] = v0[20];
  *(v0 + 205) = *(v0 + 21);
  v12 = v0[24];
  v0[207] = v0[23];
  v0[208] = v12;
  v0[209] = v0[25];
  v0[212] = v0[28];
  *(v0 + 213) = *(v0 + 29);
  *(v0 + 1920) = *(v0 + 248);
  *(v0 + 215) = *(v0 + 16);
  v13 = v0[35];
  v0[217] = v0[34];
  v0[218] = v13;
  v14 = v0[37];
  v0[219] = v0[36];
  v0[220] = v14;
  *(v0 + 1928) = *(v0 + 304);
  *(v0 + 1936) = *(v0 + 305);
  v15 = v0[40];
  v0[221] = v0[39];
  v0[222] = v15;
  v0[223] = v0[41];
  v16 = v0[45];
  v0[226] = v0[44];
  v0[227] = v16;
  v0[228] = v0[46];
  *(v0 + 1944) = *(v0 + 376);
  v17 = v0[49];
  v0[229] = v0[48];
  v0[230] = v17;
  *(v0 + 1952) = *(v0 + 400);
  *(v0 + 1960) = *(v0 + 401);
  *(v0 + 1922) = *(v0 + 402);
  v18 = v0[52];
  v0[231] = v0[51];
  v0[232] = v18;
  v19 = v0[54];
  v0[233] = v0[53];
  v0[234] = v19;
  v20 = v0[56];
  v0[235] = v0[55];
  v21 = v0[177];
  *(v0 + 95) = *(v0 + 3);
  *(v0 + 98) = *(v0 + 6);
  *(v0 + 101) = *(v0 + 9);
  *(v0 + 105) = *(v0 + 13);
  *(v0 + 112) = *(v0 + 21);
  v0[236] = v20;
  sub_22A4DE1FC();
  v0[167] = 0;
  v0[168] = 0xE000000000000000;
  MEMORY[0x22AAD08C0](0xD000000000000013, 0x800000022A598E80);
  memcpy(v0 + 57, v0 + 2, 0x1B8uLL);
  sub_22A4DE31C();
  v22 = v0[167];
  v23 = v0[168];
  sub_22A4DBD0C();

  v0[169] = sub_22A4DD5EC();
  v0[170] = v24;
  (*(v9 + 104))(v8, *MEMORY[0x277CC91D8], v21);
  sub_22962F254();
  sub_22A4DB56C();
  (*(v9 + 8))(v8, v21);

  v25 = sub_22A4DB11C();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_22A4DB10C();
  memcpy(v0 + 112, v0 + 2, 0x1B8uLL);
  sub_22985B640();
  v28 = sub_22A4DB0FC();
  v29 = v0[183];
  v30 = v28;
  v32 = v31;

  sub_22A4DB64C();
  v33 = v0[180];
  v34 = v0[184];
  v35 = v0[183];
  v36 = v0[176];
  v37 = v0[174];
  sub_2295798D4(v30, v32);
  sub_22A4DE1FC();

  v38 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v38);

  sub_22A4DBD0C();

  v0[171] = v36;
  v39 = swift_task_alloc();
  v0[237] = v39;
  *(v39 + 16) = v34;
  *(v39 + 24) = v37;
  v40 = *(MEMORY[0x277D0F008] + 4);
  v41 = swift_task_alloc();
  v0[238] = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B70, &qword_22A585D48);
  v43 = sub_229590C00(&qword_27D881B78, &qword_27D881B70, &qword_22A585D48);
  *v41 = v0;
  v41[1] = sub_22984F644;

  return MEMORY[0x282167808](&unk_22A585D40, v39, v42, v43);
}

uint64_t sub_22984F644()
{
  v2 = *v1;
  v3 = *(*v1 + 1904);
  v4 = *v1;
  *(v2 + 1912) = v0;

  v5 = *(v2 + 1896);
  if (v0)
  {
    sub_2296EBFB4(v2 + 16);

    v6 = sub_22984FC90;
  }

  else
  {

    v6 = sub_22984F78C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22984F78C()
{
  v1 = *(v0 + 1912);
  v2 = *(v0 + 1472);
  static PassFileUtilities.zipPassDirectory(passDirectoryURL:)(*(v0 + 1456));
  if (v1)
  {
    v3 = *(v0 + 1480);
    v4 = *(v0 + 1472);
    v5 = *(v0 + 1440);
    v6 = *(*(v0 + 1448) + 8);
    v6(*(v0 + 1464), v5);
    sub_2296EBFB4(v0 + 16);
    sub_229862908(v4, 1);
    sub_22A4DE1FC();

    v7 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v7);

    sub_22A4DBD0C();

    v6(v4, v5);
    v8 = *(v0 + 1472);
    v9 = *(v0 + 1464);
    v10 = *(v0 + 1456);
    v11 = *(v0 + 1432);
  }

  else
  {
    v56 = *(v0 + 1880);
    v57 = *(v0 + 1888);
    v54 = *(v0 + 1848);
    v55 = *(v0 + 1864);
    v52 = *(v0 + 1832);
    v53 = *(v0 + 1840);
    v50 = *(v0 + 1816);
    v51 = *(v0 + 1824);
    v48 = *(v0 + 1784);
    v49 = *(v0 + 1800);
    v47 = *(v0 + 1768);
    v45 = *(v0 + 1752);
    v46 = *(v0 + 1760);
    v43 = *(v0 + 1720);
    v44 = *(v0 + 1736);
    v41 = *(v0 + 1704);
    v42 = *(v0 + 1712);
    v39 = *(v0 + 1672);
    v40 = *(v0 + 1688);
    v38 = *(v0 + 1656);
    v37 = *(v0 + 1632);
    v35 = *(v0 + 1600);
    v36 = *(v0 + 1616);
    v33 = *(v0 + 1568);
    v34 = *(v0 + 1584);
    v31 = *(v0 + 1536);
    v32 = *(v0 + 1552);
    v29 = *(v0 + 1504);
    v30 = *(v0 + 1520);
    v28 = *(v0 + 1488);
    v13 = *(v0 + 1480);
    v14 = *(v0 + 1472);
    v15 = *(v0 + 1464);
    v16 = *(v0 + 1456);
    v17 = *(v0 + 1448);
    v18 = *(v0 + 1440);
    v27 = *(v0 + 1432);
    v25 = *(v0 + 1384);
    v19 = *(v0 + 1376);
    v26 = *(v0 + 1640);
    sub_22A4DE1FC();

    v20 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v20);

    sub_22A4DBD0C();

    v21 = *(v17 + 8);
    v21(v15, v18);
    (*(v17 + 32))(v25, v16, v18);
    sub_229862908(v14, 1);
    sub_22A4DE1FC();

    v22 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v22);

    sub_22A4DBD0C();

    v21(v14, v18);
    v23 = *(v0 + 1920);
    LOBYTE(v17) = *(v0 + 1928);
    LOBYTE(v18) = *(v0 + 1936);
    LOBYTE(v15) = *(v0 + 1944);
    LOBYTE(v21) = *(v0 + 1952);
    LOBYTE(v13) = *(v0 + 1960);
    LOBYTE(v16) = *(v0 + 1922);

    *v19 = v28;
    *(v19 + 16) = v29;
    *(v19 + 32) = v30;
    *(v19 + 48) = v31;
    *(v19 + 64) = v32;
    *(v19 + 80) = v33;
    *(v19 + 96) = v34;
    *(v19 + 112) = v35;
    *(v19 + 128) = v36;
    *(v19 + 144) = v37;
    *(v19 + 152) = v26;
    *(v19 + 168) = v38;
    *(v19 + 184) = v39;
    *(v19 + 200) = v40;
    *(v19 + 216) = v41;
    *(v19 + 224) = v42;
    *(v19 + 232) = v23;
    *(v19 + 240) = v43;
    *(v19 + 256) = v44;
    *(v19 + 272) = v45;
    *(v19 + 280) = v46;
    *(v19 + 288) = v17;
    *(v19 + 289) = v18;
    *(v19 + 296) = v47;
    *(v19 + 312) = v48;
    *(v19 + 328) = v49;
    *(v19 + 344) = v50;
    *(v19 + 352) = v51;
    *(v19 + 360) = v15;
    *(v19 + 368) = v52;
    *(v19 + 376) = v53;
    *(v19 + 384) = v21;
    *(v19 + 385) = v13;
    *(v19 + 386) = v16;
    *(v19 + 392) = v54;
    *(v19 + 408) = v55;
    *(v19 + 424) = v56;
    *(v19 + 432) = v57;
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22984FC90()
{
  v1 = v0[185];
  v2 = v0[184];
  v3 = v0[180];
  v4 = *(v0[181] + 8);
  v4(v0[183], v3);
  sub_229862908(v2, 1);
  sub_22A4DE1FC();

  v5 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v5);

  sub_22A4DBD0C();

  v4(v2, v3);
  v6 = v0[239];
  v7 = v0[184];
  v8 = v0[183];
  v9 = v0[182];
  v10 = v0[179];

  v11 = v0[1];

  return v11();
}

uint64_t PassUpdater.removeOrphanedPassesWith(flow:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22984FE08, v1, 0);
}

uint64_t sub_22984FE08()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_22984FEF4;

  return v8();
}

uint64_t sub_22984FEF4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_229850018;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = *(v2 + 32);

    v5 = sub_22985CC00;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229850018()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_22985007C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_229850098, a2, 0);
}

uint64_t sub_229850098()
{
  v1 = v0[3];
  v2 = *MEMORY[0x277D0F1A8];
  v3 = sub_22A4DD5EC();
  v5 = v4;
  v0[4] = v4;
  v6 = sub_22A4DBCEC();
  v8 = v7;
  v0[5] = v7;
  v9 = *(MEMORY[0x277D0EFF8] + 4);
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_2298501A8;
  v11 = v0[2];

  return MEMORY[0x2821677F0](v10, v1, v3, v5, v6, v8, &unk_22A585F50, v11);
}

uint64_t sub_2298501A8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = v2[2];
    v5 = sub_2298502D8;
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];

    v5 = sub_22985CC00;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2298502D8()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_2298504D0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;

  return MEMORY[0x2822009F8](sub_229850560, a3, 0);
}

uint64_t sub_229850560()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_22985064C;

  return v8();
}

uint64_t sub_22985064C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_2298507F8;
  }

  else
  {
    v6 = *(v2 + 40);
    v7 = *(v2 + 24);

    v5 = sub_229850774;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229850774()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  (*(v2 + 16))(v2, 0);
  _Block_release(*(v0 + 32));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2298507F8()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);

  v5 = sub_22A4DB3DC();

  (*(v3 + 16))(v3, v5);
  _Block_release(*(v0 + 32));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2298508C8()
{
  sub_22A4DBD0C();
  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v1 = static PassLibrary.shared;
  *(v0 + 88) = static PassLibrary.shared;

  return MEMORY[0x2822009F8](sub_229850980, v1, 0);
}

uint64_t sub_229850980()
{
  v1 = *(v0[11] + 112);
  v2 = *(MEMORY[0x277D0EF78] + 4);
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B58, &qword_22A585D30);
  v0[13] = v4;
  *v3 = v0;
  v3[1] = sub_229850A68;

  return v6(v0 + 5, &unk_22A586688, 0, v4);
}

uint64_t sub_229850A68()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_229851048;
  }

  else
  {
    v6 = sub_229850B94;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_229850B94()
{
  v1 = v0[10];
  v0[15] = v0[5];
  return MEMORY[0x2822009F8](sub_229850BB8, v1, 0);
}

uint64_t sub_229850BB8()
{
  v35 = v0;
  v1 = [objc_opt_self() driver];
  v2 = [v1 homeManager];
  v0[16] = v2;

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

  v6 = v0[14];
  v0[8] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F0, &qword_22A5787B0);
  sub_22A4DBD4C();
  if (v6)
  {
    v7 = v0[15];

    v33 = 0;
    v34 = 0xE000000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000002DLL, 0x800000022A599250);
    swift_getErrorValue();
    v8 = v0[2];
    v9 = v0[3];
    sub_22A4DE5EC();
    sub_22A4DBD3C();

    swift_willThrow();
    v10 = v0[1];

    return v10();
  }

  else
  {

    v12 = v0[7];
    if (v12 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v14 = 0;
      v15 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x22AAD13F0](v14, v12);
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v17 = *(v12 + 8 * v14 + 32);
        }

        v18 = v17;
        v19 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v32 = v17;
        sub_2298513E8(&v32, &v33);

        v20 = v34;
        if (v34)
        {
          v21 = v33;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_22958A53C(0, *(v15 + 2) + 1, 1, v15);
          }

          v23 = *(v15 + 2);
          v22 = *(v15 + 3);
          if (v23 >= v22 >> 1)
          {
            v15 = sub_22958A53C((v22 > 1), v23 + 1, 1, v15);
          }

          *(v15 + 2) = v23 + 1;
          v16 = &v15[16 * v23];
          *(v16 + 4) = v21;
          *(v16 + 5) = v20;
        }

        ++v14;
        if (v19 == i)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v15 = MEMORY[0x277D84F90];
LABEL_27:
    v24 = v0[15];
    v25 = v0[10];

    v26 = sub_229672204(v15);
    v0[17] = v26;

    v0[9] = v24;
    v27 = swift_task_alloc();
    v0[18] = v27;
    *(v27 + 16) = v26;
    *(v27 + 24) = v25;
    v28 = *(MEMORY[0x277D0F008] + 4);
    v29 = swift_task_alloc();
    v0[19] = v29;
    v30 = sub_229590C00(&unk_281401C90, &qword_27D881B58, &qword_22A585D30);
    *v29 = v0;
    v29[1] = sub_229851140;
    v31 = v0[13];

    return MEMORY[0x282167808](&unk_22A585F60, v27, v31, v30);
  }
}

uint64_t sub_229851064()
{
  v1 = v0[14];
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD00000000000002DLL, 0x800000022A599250);
  swift_getErrorValue();
  v2 = v0[2];
  v3 = v0[3];
  sub_22A4DE5EC();
  sub_22A4DBD3C();

  swift_willThrow();
  v4 = v0[1];

  return v4();
}

uint64_t sub_229851140()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v11 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = sub_2298512E8;
  }

  else
  {
    v6 = v2[17];
    v7 = v2[18];
    v8 = v2[15];
    v9 = v2[10];

    v5 = sub_229851284;
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229851284()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2298512E8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);

  v4 = *(v0 + 160);
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD00000000000002DLL, 0x800000022A599250);
  swift_getErrorValue();
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  sub_22A4DE5EC();
  sub_22A4DBD3C();

  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2298513E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - v6;
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v34 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  v19 = *a1;
  v20 = [v19 uuid];
  sub_22A4DB79C();

  (*(v9 + 32))(v7, v16, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_22A4DBD4C();
  result = sub_22953EAE4(v7, &unk_27D87D2A0, &unk_22A578BD0);
  if (!v2)
  {
    v22 = [v19 currentUser];
    if (v22)
    {
      v23 = v22;
      v35 = objc_opt_self();
      v24 = sub_22A4DB77C();
      v25 = [v23 uuid];
      sub_22A4DB79C();

      v26 = sub_22A4DB77C();
      v27 = *(v9 + 8);
      v27(v13, v8);
      v28 = v24;
      v29 = [v35 passSerialNumberWithHomeUUID:v24 userUUID:v26];

      v30 = sub_22A4DD5EC();
      v32 = v31;

      result = (v27)(v18, v8);
    }

    else
    {
      result = (*(v9 + 8))(v18, v8);
      v30 = 0;
      v32 = 0;
    }

    v33 = v36;
    *v36 = v30;
    v33[1] = v32;
  }

  return result;
}

uint64_t sub_229851738(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B40, &qword_22A585CD8) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a1;
  v3[7] = v7;
  v3[8] = v8;

  return MEMORY[0x2822009F8](sub_2298517E0, a3, 0);
}

uint64_t sub_2298517E0()
{
  v1 = *(v0 + 40);
  v2 = [*(v0 + 64) serialNumber];
  v3 = sub_22A4DD5EC();
  v5 = v4;

  LOBYTE(v1) = sub_22956EE20(v3, v5, v1);

  if (v1)
  {
    v6 = *(v0 + 56);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 64);
    sub_22A4DE1FC();

    v10 = [v9 description];
    v11 = sub_22A4DD5EC();
    v13 = v12;

    MEMORY[0x22AAD08C0](v11, v13);

    MEMORY[0x22AAD08C0](0xD000000000000010, 0x800000022A5992D0);
    v14 = [v9 serialNumber];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    sub_22A4DBD0C();

    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v18 = static PassLibrary.shared;
    *(v0 + 72) = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_229851A18, v18, 0);
  }
}

uint64_t sub_229851A18()
{
  v1 = v0[8];
  v2 = *(v0[9] + 112);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_229851B00;

  return v7();
}

uint64_t sub_229851B00()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_229851D34;
  }

  else
  {
    v7 = *(v2 + 72);
    v6 = *(v2 + 80);

    v5 = sub_229851C24;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229851C40()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  v3 = [*(v0 + 64) serialNumber];
  v4 = sub_22A4DD5EC();
  v6 = v5;

  swift_beginAccess();
  sub_2297FD6F8(v4, v6, v1);
  sub_22953EAE4(v1, &qword_27D881B40, &qword_22A585CD8);
  swift_endAccess();

  v7 = *(v0 + 56);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_229851D34()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t PassUpdater.setExpressSettingsFor(passSerialNumber:enableNFCExpress:enableUWB:authData:flow:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 89) = a4;
  *(v8 + 88) = a3;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x2822009F8](sub_229851DD4, v7, 0);
}

uint64_t sub_229851DD4()
{
  v1 = *(v0 + 48);
  v11 = *(v0 + 32);
  v2 = *(v0 + 89);
  v3 = *(v0 + 88);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(*(v0 + 56) + 112);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v3;
  *(v7 + 25) = v2;
  *(v7 + 32) = v11;
  *(v7 + 48) = v5;
  *(v7 + 56) = v4;
  v8 = *(MEMORY[0x277D0EF78] + 4);
  v12 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_229851EF4;

  return v12();
}

uint64_t sub_229851EF4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_229566EFC;
  }

  else
  {
    v7 = *(v2 + 56);
    v6 = *(v2 + 64);

    v5 = sub_229566EE4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229852018(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 105) = a4;
  *(v8 + 104) = a3;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x2822009F8](sub_229852048, 0, 0);
}

uint64_t sub_229852048()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v18 = *(v0 + 32);
  v3 = *(v0 + 105);
  v4 = *(v0 + 104);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *(v6 + 16) = v4;
  *(v6 + 17) = v3;
  *(v6 + 24) = v18;
  *(v6 + 40) = v2;
  *(v6 + 48) = v1;
  v7 = *MEMORY[0x277D0F1A8];
  v8 = sub_22A4DD5EC();
  v10 = v9;
  *(v0 + 72) = v9;
  v11 = sub_22A4DBCEC();
  v13 = v12;
  *(v0 + 80) = v12;
  v14 = *(MEMORY[0x277D0EFF8] + 4);
  v15 = swift_task_alloc();
  *(v0 + 88) = v15;
  *v15 = v0;
  v15[1] = sub_2298521A0;
  v16 = *(v0 + 16);

  return MEMORY[0x2821677F0](v16, v5, v8, v10, v11, v13, &unk_22A585F28, v6);
}

uint64_t sub_2298521A0()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2298522F4, 0, 0);
  }

  else
  {
    v5 = v3[9];
    v4 = v3[10];
    v6 = v3[8];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_2298522F4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t sub_22985236C(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 163) = a3;
  *(v7 + 162) = a2;
  return MEMORY[0x2822009F8](sub_229852398, 0, 0);
}

uint64_t sub_229852398()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 163);
  v4 = *(v0 + 162);
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD00000000000002CLL, 0x800000022A5991A0);
  if (v4)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x22AAD08C0](v5, v6);

  MEMORY[0x22AAD08C0](0x656C62616E65202CLL, 0xED0000203A425755);
  if (v3)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x22AAD08C0](v7, v8);

  MEMORY[0x22AAD08C0](0x614468747561202CLL, 0xEB000000003A6174);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  sub_2295AEF1C(v2, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3F0, &unk_22A578570);
  v9 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v9);

  sub_22A4DBD0C();

  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v10 = static PassLibrary.shared;
  *(v0 + 72) = static PassLibrary.shared;
  if (qword_281402FC0 != -1)
  {
    v12 = v10;
    swift_once();
    v10 = v12;
  }

  v11 = unk_281405100;
  *(v0 + 80) = qword_2814050F8;
  *(v0 + 88) = v11;

  return MEMORY[0x2822009F8](sub_2298525E8, v10, 0);
}

uint64_t sub_2298525E8()
{
  v9 = *(v0 + 80);
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(*(v0 + 72) + 112);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v10 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E2C0, &qword_22A585A30);
  *v6 = v0;
  v6[1] = sub_229852700;

  return v10(v0 + 32, &unk_22A585F38, v4, v7);
}

uint64_t sub_229852700()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_2298529F4;
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 72);

    v5 = sub_229852828;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22985284C()
{
  v1 = v0[15];
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    v0[16] = v2;
    if (v2)
    {
      v3 = v0[9];
      v4 = v1;

      return MEMORY[0x2822009F8](sub_229852A58, v3, 0);
    }

    sub_22962F2A8();
    swift_allocError();
    *v8 = 0xD000000000000023;
    *(v8 + 8) = 0x800000022A599200;
    *(v8 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v6 = v0[7];
    v5 = v0[8];
    sub_22A4DE1FC();

    MEMORY[0x22AAD08C0](v6, v5);
    sub_22962F2A8();
    swift_allocError();
    *v7 = 0xD000000000000028;
    *(v7 + 8) = 0x800000022A5991D0;
    *(v7 + 16) = 0;
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_2298529F4()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

uint64_t sub_229852A58()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 72);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 163);
  v6 = *(v0 + 162);
  v7 = *(v2 + 112);
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  *(v8 + 32) = v6;
  *(v8 + 33) = v5;
  *(v8 + 40) = v4;
  *(v8 + 48) = v3;
  v9 = *(MEMORY[0x277D0EF78] + 4);
  v12 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v10 = swift_task_alloc();
  *(v0 + 144) = v10;
  *v10 = v0;
  v10[1] = sub_229852B74;

  return v12(v0 + 160, &unk_22A585F40, v8, &type metadata for ExpressSettings);
}

uint64_t sub_229852B74()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_229852D20;
  }

  else
  {
    v6 = *(v2 + 136);
    v7 = *(v2 + 72);

    v5 = sub_229852C9C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229852CB8()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229852D20()
{
  v1 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_229852D88, 0, 0);
}

uint64_t sub_229852D88()
{
  v1 = v0[15];

  v2 = v0[19];
  v3 = v0[1];

  return v3();
}

uint64_t sub_229852FB0(int a1, char a2, char a3, void *a4, void *a5, void *aBlock, uint64_t a7)
{
  *(v7 + 16) = a5;
  *(v7 + 24) = a7;
  *(v7 + 97) = a3;
  *(v7 + 96) = a2;
  *(v7 + 32) = _Block_copy(aBlock);
  *(v7 + 40) = sub_22A4DD5EC();
  *(v7 + 48) = v11;
  if (a4)
  {
    v12 = a4;
    v13 = a5;

    a4 = sub_22A4DB62C();
    v15 = v14;
  }

  else
  {
    v16 = a5;

    v15 = 0xF000000000000000;
  }

  *(v7 + 56) = a4;
  *(v7 + 64) = v15;

  return MEMORY[0x2822009F8](sub_229853090, a7, 0);
}

uint64_t sub_229853090()
{
  v11 = *(v0 + 56);
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 97);
  v5 = *(v0 + 96);
  v6 = *(*(v0 + 24) + 112);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  *(v7 + 25) = v4;
  *(v7 + 32) = v11;
  *(v7 + 48) = v2;
  *(v7 + 56) = v1;
  v8 = *(MEMORY[0x277D0EF78] + 4);
  v12 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_2298531B0;

  return v12();
}

uint64_t sub_2298531B0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[3];
    v5 = sub_229853380;
  }

  else
  {
    v6 = v2[9];
    v7 = v2[6];
    v8 = v2[3];

    v5 = sub_2298532E4;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2298532E4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  sub_229590D18(v1, v2);
  (*(v4 + 16))(v4, 0);
  _Block_release(*(v0 + 32));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_229853380()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);

  sub_229590D18(v5, v3);

  v9 = sub_22A4DB3DC();

  (*(v6 + 16))(v6, v9);
  _Block_release(*(v0 + 32));
  v10 = *(v0 + 8);

  return v10();
}

uint64_t PassUpdater.removeOrphanedHomeKeyMiscInfoIncluding(homeUUID:withFlow:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22985347C, v1, 0);
}

uint64_t sub_22985347C()
{
  v1 = v0[2];
  v2 = *(v0[3] + 112);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_229853564;

  return v7();
}

void sub_229853564()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 24);
    v5 = *(v2 + 32);

    MEMORY[0x2822009F8](sub_229580884, v6, 0);
  }
}

uint64_t sub_2298536A0(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v3 = sub_22A4DDE6C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = sub_22A4DB7DC();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229853800, 0, 0);
}

uint64_t sub_229853800()
{
  v1 = [objc_opt_self() driver];
  v2 = [v1 homeManager];
  v0[15] = v2;

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

  v0[3] = v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F0, &qword_22A5787B0);
  sub_22A4DBD4C();

  v6 = v0[2];
  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v6 = v20)
  {
    v8 = 0;
    v9 = v0[12];
    v45 = v6 & 0xFFFFFFFFFFFFFF8;
    v46 = v6 & 0xC000000000000001;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v46)
      {
        v11 = v6;
        v6 = MEMORY[0x22AAD13F0](v8);
      }

      else
      {
        if (v8 >= *(v45 + 16))
        {
          goto LABEL_19;
        }

        v11 = v6;
        v6 = *(v6 + 8 * v8 + 32);
      }

      v12 = v6;
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v0[13];
      v15 = [v6 uuid];
      sub_22A4DB79C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_22958B1F0(0, v10[2] + 1, 1, v10);
      }

      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        v10 = sub_22958B1F0(v16 > 1, v17 + 1, 1, v10);
      }

      v18 = v0[13];
      v19 = v0[11];
      v10[2] = v17 + 1;
      (*(v9 + 32))(v10 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17, v18, v19);
      ++v8;
      v6 = v11;
      if (v13 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v20 = v6;
    i = sub_22A4DE0EC();
  }

  v10 = MEMORY[0x277D84F90];
LABEL_22:
  v21 = v0[11];
  v22 = v0[12];
  v23 = v0[10];
  v24 = v0[6];

  v25 = [objc_opt_self() sharedInstance];
  v26 = [v25 newManagedObjectContext];
  v0[16] = v26;

  sub_229564F88(v24, v23, &unk_27D87D2A0, &unk_22A578BD0);
  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {
    sub_22953EAE4(v0[10], &unk_27D87D2A0, &unk_22A578BD0);
  }

  else
  {
    (*(v0[12] + 32))(v0[14], v0[10], v0[11]);
    v27 = v26;
    v28 = sub_22A4DB77C();
    HMDWorkingContextNameForHomeUUID(v28);
    v30 = v29;

    if (!v30)
    {
      sub_22A4DD5EC();
      v30 = sub_22A4DD5AC();
    }

    v31 = v0[14];
    v32 = v0[11];
    v33 = v0[12];
    [v27 setName_];

    (*(v33 + 8))(v31, v32);
  }

  v34 = v26;
  v35 = HMDCoreDataTransactionAuthorAsString(6);
  if (!v35)
  {
    sub_22A4DD5EC();
    v35 = sub_22A4DD5AC();
  }

  v37 = v0[8];
  v36 = v0[9];
  v38 = v0[7];
  [v34 setTransactionAuthor_];

  v39 = swift_allocObject();
  v0[17] = v39;
  *(v39 + 16) = v10;
  *(v39 + 24) = v34;
  (*(v37 + 104))(v36, *MEMORY[0x277CBE110], v38);
  v40 = *(MEMORY[0x277CBE118] + 4);
  v34;
  v41 = swift_task_alloc();
  v0[18] = v41;
  *v41 = v0;
  v41[1] = sub_229853EEC;
  v42 = v0[9];

  return MEMORY[0x28210EE50]();
}

uint64_t sub_229853EEC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 152) = v0;

  v6 = (v4 + 8);
  v7 = v2[17];
  v8 = v2[9];
  v9 = v2[7];
  if (v0)
  {
    (*v6)(v2[9], v2[7]);

    v10 = sub_229854138;
  }

  else
  {
    v11 = v2[17];

    (*v6)(v8, v9);
    v10 = sub_2298540A4;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2298540A4()
{
  v1 = *(v0 + 128);

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_229854138()
{
  v1 = *(v0 + 128);

  *(v0 + 32) = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_229562F68(0, &qword_281401778, 0x277CCA9B8);
  result = swift_dynamicCast();
  if (result)
  {
    v3 = *(v0 + 40);
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000048, 0x800000022A599110);
    v4 = [v3 description];
    v5 = sub_22A4DD5EC();
    v7 = v6;

    MEMORY[0x22AAD08C0](v5, v7);

    sub_22A4DBD3C();

    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);

    v12 = *(v0 + 8);

    return v12();
  }

  return result;
}

void sub_2298542E8(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_22A4DD5AC();
  v6 = [v4 initWithEntityName_];

  sub_229562F68(0, &qword_27D881B80, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22A576180;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D2F8, &unk_22A585F10);
  *(v7 + 64) = sub_229590C00(&qword_27D881B88, &qword_27D87D2F8, &unk_22A585F10);
  *(v7 + 32) = a1;

  v8 = sub_22A4DDC3C();
  [v6 setPredicate_];

  v9 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  *&v20 = 0;
  v10 = [a2 executeRequest:v9 error:&v20];
  v11 = v20;
  if (v10)
  {
    v12 = v10;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    v14 = v11;
    if (v13)
    {
      if ([v13 result])
      {
        sub_22A4DE01C();
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0u;
        v19 = 0u;
      }

      v20 = v18;
      v21 = v19;
      if (*(&v19 + 1))
      {
        swift_dynamicCast();
LABEL_11:
        *&v20 = 0x20646574656C6544;
        *(&v20 + 1) = 0xE800000000000000;
        v16 = sub_22A4DE5CC();
        MEMORY[0x22AAD08C0](v16);

        sub_22A4DBD0C();

        goto LABEL_12;
      }
    }

    else
    {

      v20 = 0u;
      v21 = 0u;
    }

    sub_22953EAE4(&v20, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_11;
  }

  v15 = v20;
  sub_22A4DB3EC();

  swift_willThrow();
LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2298547DC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[2] = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v4[3] = v9;
  v4[4] = _Block_copy(a3);
  if (a1)
  {
    sub_22A4DB79C();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_22A4DB7DC();
  (*(*(v11 - 8) + 56))(v9, v10, 1, v11);

  return MEMORY[0x2822009F8](sub_229854904, a4, 0);
}

uint64_t sub_229854904()
{
  v1 = v0[3];
  v2 = *(v0[2] + 112);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2298549EC;

  return v7();
}

void sub_2298549EC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 16);

    MEMORY[0x2822009F8](sub_229854B2C, v6, 0);
  }
}

uint64_t sub_229854B2C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  sub_22953EAE4(v1, &unk_27D87D2A0, &unk_22A578BD0);
  v2[2](v2);
  _Block_release(v2);

  v4 = v0[1];

  return v4();
}

uint64_t PassUpdater.pass(passTypeIdentifier:withSerialNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[3] = a3;
  return MEMORY[0x2822009F8](sub_229854BEC, v4, 0);
}

uint64_t sub_229854BEC()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = *(v0[5] + 112);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E2C0, &qword_22A585A30);
  *v6 = v0;
  v6[1] = sub_229854CF0;

  return v9(v0 + 2, &unk_22A585A28, v4, v7);
}

uint64_t sub_229854CF0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_229854E14;
  }

  else
  {
    v7 = *(v2 + 40);
    v6 = *(v2 + 48);

    v5 = sub_229633B28;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229854E14()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_229854E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_229854E9C, 0, 0);
}

uint64_t sub_229854E9C()
{
  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v1 = static PassLibrary.shared;
  v0[6] = static PassLibrary.shared;
  if (qword_281402FC0 != -1)
  {
    v3 = v1;
    swift_once();
    v1 = v3;
  }

  v2 = unk_281405100;
  v0[7] = qword_2814050F8;
  v0[8] = v2;

  return MEMORY[0x2822009F8](sub_229854F80, v1, 0);
}

uint64_t sub_229854F80()
{
  v9 = *(v0 + 56);
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v3 = *(*(v0 + 48) + 112);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v10 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E2C0, &qword_22A585A30);
  *v6 = v0;
  v6[1] = sub_229855098;

  return v10(v0 + 16, &unk_22A585F00, v4, v7);
}

uint64_t sub_229855098()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_229855208;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 48);

    v5 = sub_2298551C0;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229855208()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_229855400(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_22A4DD5EC();
  v4[6] = v6;

  return MEMORY[0x2822009F8](sub_229855490, a4, 0);
}

uint64_t sub_229855490()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = *(v0[3] + 112);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E2C0, &qword_22A585A30);
  *v6 = v0;
  v6[1] = sub_229855594;

  return v9(v0 + 2, &unk_22A585DF0, v4, v7);
}

uint64_t sub_229855594()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = v2[3];
    v5 = sub_22985574C;
  }

  else
  {
    v6 = v2[6];
    v7 = v2[7];
    v8 = v2[3];

    v5 = sub_2298556C4;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2298556C4()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = v0[2];
  (v2)[2](v2, v3, 0);
  _Block_release(v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22985574C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];

  v6 = sub_22A4DB3DC();

  (v4)[2](v4, 0, v6);
  _Block_release(v4);
  v7 = v0[1];

  return v7();
}

uint64_t PassUpdater.uniqueIDOfPass(passTypeIdentifier:withSerialNumber:withFlow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2297AF1DC;

  return sub_22985A6EC(a1, a2, a3, a4);
}

uint64_t sub_229855A7C(int a1, int a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v7 = sub_22A4DD5EC();
  v9 = v8;
  v5[5] = v8;
  v10 = sub_22A4DD5EC();
  v12 = v11;
  v5[6] = v11;
  v13 = a3;

  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_229855B9C;

  return sub_22985A6EC(v7, v9, v10, v12);
}

uint64_t sub_229855B9C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  if (v2)
  {
    v10 = sub_22A4DB3DC();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    v13 = sub_22A4DD5AC();

    v12 = v13;
    v11 = 0;
    v10 = v13;
  }

  v14 = *(v3 + 32);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t PassUpdater.passWithExpressConfiguration(serialNumber:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_229855DAC, v2, 0);
}

uint64_t sub_229855DAC()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = *(v0[6] + 112);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B30, &qword_22A585A60);
  *v6 = v0;
  v6[1] = sub_229855EB0;

  return v9(v0 + 2, &unk_22A585A58, v4, v7);
}

uint64_t sub_229855EB0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_22973B168;
  }

  else
  {
    v7 = *(v2 + 48);
    v6 = *(v2 + 56);

    v5 = sub_229855FD4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229855FD4()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return (*(v0 + 8))(*(v0 + 16), v1 | *(v0 + 24));
}

uint64_t sub_229856008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_22985602C, 0, 0);
}

uint64_t sub_22985602C()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[3] = v1;
  v16 = sub_229562F68(0, &unk_281401BC8, 0x277D37FC0);
  sub_22A4DBD4C();

  v3 = v0[2];
  v0[7] = v3;
  if (qword_281402FC0 != -1)
  {
    swift_once();
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = sub_22A4DD5AC();
  v7 = sub_22A4DD5AC();
  v8 = [v3 passWithPassTypeIdentifier:v6 serialNumber:{v7, v16}];
  v0[8] = v8;

  if (v8)
  {
    v9 = qword_281402F18;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = static PassLibrary.shared;
    v0[9] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_2298562E4, v11, 0);
  }

  else
  {
    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[4];
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000003CLL, 0x800000022A598FC0);
    MEMORY[0x22AAD08C0](v13, v12);
    sub_22A4DBD0C();

    *v14 = 0;
    *(v14 + 8) = 0;
    *(v0[4] + 9) = 0;
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2298562E4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_2298563D4;

  return v8(v0 + 13, &unk_22A585EF0, v4, &type metadata for ExpressSettings);
}

uint64_t sub_2298563D4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_2298565B8;
  }

  else
  {
    v7 = *(v2 + 72);
    v6 = *(v2 + 80);

    v5 = sub_2298564F8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2298564F8()
{
  v0[106] = v0[104];
  v0[107] = v0[105];
  return MEMORY[0x2822009F8](sub_229856524, 0, 0);
}

uint64_t sub_229856524()
{
  v1 = *(v0 + 107);
  v2 = *(v0 + 106);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 32);

  *v5 = v3;
  *(v5 + 8) = v2;
  *(*(v0 + 32) + 9) = v1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2298565B8()
{
  v1 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_229856620, 0, 0);
}

uint64_t sub_229856620()
{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[12];
  v4 = v0[1];

  return v4();
}

uint64_t sub_229856818(int a1, void *aBlock, uint64_t a3)
{
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v3[6] = sub_22A4DD5EC();
  v3[7] = v5;

  return MEMORY[0x2822009F8](sub_2298568A8, a3, 0);
}

uint64_t sub_2298568A8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = *(v0[4] + 112);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[9] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B30, &qword_22A585A60);
  *v6 = v0;
  v6[1] = sub_2298569AC;

  return v9(v0 + 2, &unk_22A585DA8, v4, v7);
}

uint64_t sub_2298569AC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[4];
    v5 = sub_229856B70;
  }

  else
  {
    v6 = v2[7];
    v7 = v2[8];
    v8 = v2[4];

    v5 = sub_229856ADC;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229856ADC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 16);
  v3 = *(v0 + 40);
  (v3)[2](v3, v2, *(v0 + 24), *(v0 + 25), 0);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_229856B70()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[4];

  v5 = sub_22A4DB3DC();

  v6 = v0[5];
  (v6)[2](v6, 0, 0, 0, v5);

  _Block_release(v6);
  v7 = v0[1];

  return v7();
}

id PassUpdater.init()()
{
  swift_defaultActor_initialize();
  sub_22A4DBA2C();
  v1 = sub_22A4DBA1C();
  v2 = MEMORY[0x277D84F98];
  v0[14] = v1;
  v0[15] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PassUpdater();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_229856C98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 49);
  v10 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_229586D38;

  return sub_2298474FC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_229856D7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 25);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v10 = *(v1 + 48);
  v9 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_229586D38;

  return sub_229852018(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_229856E5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_2298536A0(a1, v4);
}

uint64_t sub_229856EFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_229854E78(a1, v5, v4);
}

uint64_t PassUpdater.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PassUpdater.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_229857084()
{
  result = sub_22A4DD5EC();
  qword_2814050F8 = result;
  unk_281405100 = v1;
  return result;
}

uint64_t sub_2298570B4(uint64_t a1, uint64_t a2)
{
  v2[33] = a2;
  v4 = sub_22A4DB7DC();
  v2[34] = v4;
  v5 = *(v4 - 8);
  v2[35] = v5;
  v6 = *(v5 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v7 = type metadata accessor for HomePassData(0);
  v2[41] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v9 = type metadata accessor for HomePassState(0);
  v2[43] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229857208, a2, 0);
}

uint64_t sub_229857208()
{
  v1 = objc_opt_self();
  v2 = [v1 createNIST256KeyPair];
  if (v2)
  {
    v3 = v2;
    v4 = sub_22A4DB62C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  *(v0 + 120) = v4;
  *(v0 + 128) = v6;
  v7 = MEMORY[0x277CC9318];
  v58 = MEMORY[0x277CC9318];
  sub_22A4DBD4C();
  sub_229590D18(*(v0 + 120), *(v0 + 128));
  v8 = *(v0 + 112);
  *(v0 + 360) = *(v0 + 104);
  *(v0 + 368) = v8;
  v9 = sub_22A4DB61C();
  v10 = [v1 publicKeyExternalRepresentationFromKeyPairExternalRepresentation_];

  if (v10)
  {
    v11 = sub_22A4DB62C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  *(v0 + 152) = v11;
  *(v0 + 160) = v13;
  sub_22A4DBD4C();
  sub_229590D18(*(v0 + 152), *(v0 + 160));
  v65 = *(v0 + 136);
  v66 = *(v0 + 144);
  *(v0 + 376) = v65;
  *(v0 + 384) = v66;
  v14 = sub_22A4DB61C();
  v15 = [v1 publicKeyFromKeyPairExternalRepresentation_];

  if (v15)
  {
    v16 = sub_22A4DB62C();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xF000000000000000;
  }

  *(v0 + 184) = v16;
  *(v0 + 192) = v18;
  sub_22A4DBD4C();
  sub_229590D18(*(v0 + 184), *(v0 + 192));
  v19 = *(v0 + 176);
  *(v0 + 392) = *(v0 + 168);
  *(v0 + 400) = v19;
  v20 = sub_22A4DB61C();
  v21 = [v1 privateKeyFromKeyPairExternalRepresentation_];

  if (v21)
  {
    v22 = sub_22A4DB62C();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xF000000000000000;
  }

  *(v0 + 216) = v22;
  *(v0 + 224) = v24;
  sub_22A4DBD4C();
  v59 = *(v0 + 320);
  v60 = *(v0 + 312);
  v61 = *(v0 + 304);
  v62 = *(v0 + 296);
  v63 = *(v0 + 272);
  v64 = *(v0 + 280);
  sub_229590D18(*(v0 + 216), *(v0 + 224));
  v25 = *(v0 + 208);
  *(v0 + 408) = *(v0 + 200);
  *(v0 + 416) = v25;
  v26 = objc_opt_self();
  v27 = sub_22A4DB61C();
  v28 = [v26 identifierForKey_];

  v29 = sub_22A4DB62C();
  v31 = v30;

  *(v0 + 424) = v29;
  *(v0 + 432) = v31;
  v32 = sub_22A4DB61C();
  v33 = [v1 identifier16BytesForKey_];

  v34 = sub_22A4DB62C();
  v36 = v35;

  *(v0 + 440) = v34;
  *(v0 + 448) = v36;
  sub_22A4DB7CC();
  sub_22A4DB7CC();
  sub_22A4DB7CC();
  sub_22956C148(v65, v66);
  sub_22956C148(v29, v31);
  sub_22956C148(v34, v36);
  sub_22A4DB7CC();
  sub_22A4DB76C();
  v37 = *(v64 + 8);
  *(v0 + 456) = v37;
  *(v0 + 464) = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v62, v63);
  v38 = sub_2295ACB54(4);
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = MEMORY[0x22AAD0860](v38, v40, v42, v44);
  v47 = v46;

  *(v0 + 472) = v45;
  *(v0 + 480) = v47;
  *(v0 + 488) = productClass();
  v48 = [objc_opt_self() createGroupResolvingKey];
  if (v48)
  {
    v49 = v48;
    v50 = sub_22A4DB62C();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0xF000000000000000;
  }

  *(v0 + 248) = v50;
  *(v0 + 256) = v52;
  sub_22A4DBD4C();
  sub_229590D18(*(v0 + 248), *(v0 + 256));
  *(v0 + 496) = *(v0 + 232);
  v53 = [objc_opt_self() systemStore];
  *(v0 + 512) = [v53 getPreferredHH2ControllerKey];

  if (qword_281402D28 != -1)
  {
    swift_once();
  }

  v54 = *(v0 + 288);
  sub_22A4DB7CC();
  v55 = swift_task_alloc();
  *(v0 + 520) = v55;
  *v55 = v0;
  v55[1] = sub_229857A24;
  v56 = *(v0 + 288);

  return ACWGKeyManager.getIssuerKeyPairExternalRepresentationFromKeychain(forHomeUUID:)(v0 + 64, v56);
}

uint64_t sub_229857A24()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 520);
  v5 = *v1;
  *(v3 + 528) = v0;
  *(v3 + 536) = *(v3 + 64);
  v6 = *(v2 + 88);

  if (v0)
  {
    v26 = *(v3 + 512);
    v27 = *(v3 + 496);
    v7 = *(v3 + 480);
    v8 = *(v3 + 456);
    v9 = *(v3 + 464);
    v11 = *(v3 + 440);
    v10 = *(v3 + 448);
    v13 = *(v3 + 424);
    v12 = *(v3 + 432);
    v15 = *(v3 + 376);
    v14 = *(v3 + 384);
    v30 = *(v3 + 320);
    v28 = *(v3 + 504);
    v29 = *(v3 + 312);
    v24 = *(v3 + 288);
    v25 = *(v3 + 304);
    v18 = v3 + 264;
    v17 = *(v3 + 264);
    v16 = *(v18 + 8);

    sub_2295798D4(v15, v14);
    sub_2295798D4(v13, v12);
    sub_2295798D4(v11, v10);

    sub_2295798D4(v27, v28);
    v8(v24, v16);
    v8(v25, v16);
    v8(v29, v16);
    v8(v30, v16);
    v19 = sub_2298581B4;
    v20 = v17;
  }

  else
  {
    v21 = *(v3 + 464);
    v22 = *(v3 + 264);
    (*(v3 + 456))(*(v3 + 288), *(v3 + 272));

    v19 = sub_229857C44;
    v20 = v22;
  }

  return MEMORY[0x2822009F8](v19, v20, 0);
}

uint64_t sub_229857C44()
{
  v30 = *(v0 + 544);
  v28 = *(v0 + 512);
  v29 = *(v0 + 536);
  v26 = *(v0 + 496);
  v27 = *(v0 + 504);
  v24 = *(v0 + 480);
  v25 = *(v0 + 488);
  v22 = *(v0 + 448);
  v23 = *(v0 + 472);
  v21 = *(v0 + 440);
  v1 = *(v0 + 352);
  v31 = *(v0 + 344);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  v6 = *(v0 + 304);
  v20 = *(v0 + 376);
  v19 = *(v0 + 424);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  *v2 = 1;
  v9 = *(v8 + 32);
  v9(&v2[v3[5]], v4, v7);
  v9(&v2[v3[6]], v5, v7);
  v9(&v2[v3[7]], v6, v7);
  v10 = &v2[v3[8]];
  *v10 = v20;
  *(v10 + 1) = v19;
  *(v10 + 4) = v21;
  *(v10 + 5) = v22;
  v11 = &v2[v3[9]];
  *v11 = v23;
  v11[1] = v24;
  *&v2[v3[10]] = v25;
  v2[v3[11]] = 1;
  v2[v3[12]] = 0;
  *&v2[v3[13]] = 0;
  *&v2[v3[14]] = xmmword_22A57B6B0;
  v12 = &v2[v3[15]];
  *v12 = v26;
  v12[1] = v27;
  *&v2[v3[16]] = MEMORY[0x277D84F90];
  v2[v3[17]] = 1;
  v2[v3[18]] = 1;
  v2[v3[19]] = 1;
  *&v2[v3[20]] = v28;
  v13 = &v2[v3[21]];
  *v13 = v29;
  v13[1] = v30;
  v14 = &v2[v3[22]];
  *v14 = 0;
  v14[1] = 0;
  v2[v3[23]] = 1;
  *v1 = MEMORY[0x277D84FA0];
  *(v1 + 8) = 512;
  *(v1 + 10) = 16843009;
  *(v1 + 16) = 6;
  *(v1 + 24) = 0;
  sub_22985B584(v2, v1 + *(v31 + 48), type metadata accessor for HomePassData);
  v15 = swift_task_alloc();
  *(v0 + 552) = v15;
  *v15 = v0;
  v15[1] = sub_229857EE0;
  v16 = *(v0 + 352);
  v17 = *(v0 + 264);

  return sub_229848F10(v0 + 16, 0, v16, 0);
}

uint64_t sub_229857EE0()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;
  *(*v1 + 560) = v0;
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];

  v8 = v2[33];
  if (v0)
  {
    v9 = sub_2298582D4;
  }

  else
  {

    v9 = sub_229858068;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_229858068()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[53];
  v5 = v0[51];
  v4 = v0[52];
  v6 = v0[49];
  v7 = v0[50];
  v8 = v0[47];
  v12 = v0[48];
  v13 = v0[54];
  v9 = v0[44];
  v14 = v0[42];
  v15 = v0[40];
  v16 = v0[39];
  v17 = v0[38];
  v18 = v0[37];
  v19 = v0[36];
  sub_2295798D4(v0[45], v0[46]);
  sub_2295798D4(v5, v4);
  sub_2295798D4(v6, v7);
  sub_2295798D4(v2, v1);
  sub_2295798D4(v3, v13);
  sub_2295798D4(v8, v12);
  sub_22985C628(v9, type metadata accessor for HomePassState);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2298581B4()
{
  v1 = v0[55];
  v20 = v0[56];
  v3 = v0[53];
  v2 = v0[54];
  v5 = v0[51];
  v4 = v0[52];
  v7 = v0[49];
  v6 = v0[50];
  v8 = v0[47];
  v9 = v0[48];
  sub_2295798D4(v0[45], v0[46]);
  sub_2295798D4(v5, v4);
  sub_2295798D4(v7, v6);
  sub_2295798D4(v8, v9);
  sub_2295798D4(v3, v2);
  sub_2295798D4(v1, v20);
  v10 = v0[66];
  v11 = v0[44];
  v12 = v0[42];
  v14 = v0[39];
  v13 = v0[40];
  v16 = v0[37];
  v15 = v0[38];
  v17 = v0[36];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2298582D4()
{
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[53];
  v5 = v0[51];
  v4 = v0[52];
  v7 = v0[49];
  v6 = v0[50];
  v8 = v0[47];
  v9 = v0[48];
  v20 = v0[54];
  v21 = v0[44];
  sub_2295798D4(v0[45], v0[46]);
  sub_2295798D4(v5, v4);
  sub_2295798D4(v7, v6);
  sub_2295798D4(v1, v2);
  sub_2295798D4(v3, v20);
  sub_2295798D4(v8, v9);
  sub_22985C628(v21, type metadata accessor for HomePassState);
  v10 = v0[70];
  v11 = v0[44];
  v12 = v0[42];
  v14 = v0[39];
  v13 = v0[40];
  v16 = v0[37];
  v15 = v0[38];
  v17 = v0[36];

  v18 = v0[1];

  return v18();
}

uint64_t sub_229858430()
{
  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v1 = static PassLibrary.shared;
  *(v0 + 40) = static PassLibrary.shared;

  return MEMORY[0x2822009F8](sub_2298584CC, v1, 0);
}

uint64_t sub_2298584CC()
{
  v1 = *(v0[5] + 112);
  v2 = *(MEMORY[0x277D0EF78] + 4);
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B58, &qword_22A585D30);
  v0[7] = v4;
  *v3 = v0;
  v3[1] = sub_2298585B4;

  return v6(v0 + 2, &unk_22A586688, 0, v4);
}

uint64_t sub_2298585B4()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_229858930;
  }

  else
  {
    v6 = sub_2298586E0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2298586E0()
{
  v1 = v0[4];
  v0[9] = v0[2];
  return MEMORY[0x2822009F8](sub_229858704, v1, 0);
}

uint64_t sub_229858704()
{
  v0[3] = v0[9];
  v1 = *(MEMORY[0x277D0F008] + 4);
  v2 = swift_task_alloc();
  v0[10] = v2;
  v3 = sub_229590C00(&unk_281401C90, &qword_27D881B58, &qword_22A585D30);
  *v2 = v0;
  v2[1] = sub_2298587F4;
  v4 = v0[7];
  v5 = v0[4];

  return MEMORY[0x282167808](&unk_22A585FD0, v5, v4, v3);
}

uint64_t sub_2298587F4()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x2822009F8](sub_229858948, v4, 0);
  }

  else
  {
    v5 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_229858948()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2298589AC(uint64_t *a1, uint64_t a2)
{
  v2[5] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B40, &qword_22A585CD8) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *a1;
  v2[6] = v6;
  v2[7] = v7;

  return MEMORY[0x2822009F8](sub_229858A54, a2, 0);
}

uint64_t sub_229858A54()
{
  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v1 = static PassLibrary.shared;
  *(v0 + 64) = static PassLibrary.shared;

  return MEMORY[0x2822009F8](sub_229858AF0, v1, 0);
}

uint64_t sub_229858AF0()
{
  v1 = v0[7];
  v2 = *(v0[8] + 112);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_229858BD8;

  return v7();
}

uint64_t sub_229858BD8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_229858E0C;
  }

  else
  {
    v7 = *(v2 + 64);
    v6 = *(v2 + 72);

    v5 = sub_229858CFC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229858D18()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v3 = [*(v0 + 56) serialNumber];
  v4 = sub_22A4DD5EC();
  v6 = v5;

  swift_beginAccess();
  sub_2297FD6F8(v4, v6, v1);
  sub_22953EAE4(v1, &qword_27D881B40, &qword_22A585CD8);
  swift_endAccess();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_229858E0C()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_229858E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_229858EA0, a4, 0);
}

uint64_t sub_229858EA0()
{
  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v1 = static PassLibrary.shared;
  *(v0 + 56) = static PassLibrary.shared;

  return MEMORY[0x2822009F8](sub_229858F3C, v1, 0);
}

uint64_t sub_229858F3C()
{
  v1 = *(v0[7] + 112);
  v2 = *(MEMORY[0x277D0EF78] + 4);
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B58, &qword_22A585D30);
  v0[9] = v4;
  *v3 = v0;
  v3[1] = sub_229859024;

  return v6(v0 + 2, &unk_22A586688, 0, v4);
}

uint64_t sub_229859024()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_2298593D4;
  }

  else
  {
    v6 = sub_229859150;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_229859150()
{
  v1 = v0[6];
  v0[11] = v0[2];
  return MEMORY[0x2822009F8](sub_229859174, v1, 0);
}

uint64_t sub_229859174()
{
  v1 = *(v0 + 32);
  *(v0 + 24) = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x277D0F008] + 4);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  v6 = sub_229590C00(&unk_281401C90, &qword_27D881B58, &qword_22A585D30);
  *v5 = v0;
  v5[1] = sub_22985928C;
  v7 = *(v0 + 72);

  return MEMORY[0x282167808](&unk_22A585FB0, v2, v7, v6);
}

uint64_t sub_22985928C()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[6];

    return MEMORY[0x2822009F8](sub_2298593EC, v4, 0);
  }

  else
  {
    v5 = v3[11];
    v6 = v3[12];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_2298593EC()
{
  v1 = v0[11];
  v2 = v0[12];

  v3 = v0[14];
  v4 = v0[1];

  return v4();
}

uint64_t sub_229859458(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B40, &qword_22A585CD8) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a1;
  v4[8] = v8;
  v4[9] = v9;

  return MEMORY[0x2822009F8](sub_229859504, a4, 0);
}

uint64_t sub_229859504()
{
  v1 = v0[9];
  v2 = sub_22A4DD5AC();
  v3 = [v1 fieldForKey_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = [v3 value];

  if (!v7)
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v9 = v0[5];
  v8 = v0[6];
  v10 = sub_22A4DD5EC();
  v12 = v11;

  if (v10 == v9 && v12 == v8)
  {

    goto LABEL_12;
  }

  v14 = v0[5];
  v15 = v0[6];
  v16 = sub_22A4DE60C();

  if (v16)
  {
LABEL_12:
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v5 = static PassLibrary.shared;
    v0[10] = static PassLibrary.shared;
    v4 = sub_2298596B8;
    v6 = 0;

    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v17 = v0[8];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2298596B8()
{
  v1 = v0[9];
  v2 = *(v0[10] + 112);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_2298597A0;

  return v7();
}

uint64_t sub_2298597A0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_2298599D4;
  }

  else
  {
    v7 = *(v2 + 80);
    v6 = *(v2 + 88);

    v5 = sub_2298598C4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2298598E0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = [*(v0 + 72) serialNumber];
  v4 = sub_22A4DD5EC();
  v6 = v5;

  swift_beginAccess();
  sub_2297FD6F8(v4, v6, v1);
  sub_22953EAE4(v1, &qword_27D881B40, &qword_22A585CD8);
  swift_endAccess();

  v7 = *(v0 + 64);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2298599D4()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_229859A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a2;
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v4;
  v7[1] = sub_229859B00;

  return sub_229848F10((v4 + 2), a3, a4, 0);
}

uint64_t sub_229859B00()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(v2 + 88) = *(*v1 + 16);
  v5 = *(v2 + 40);
  *(v2 + 96) = *(v2 + 24);
  *(v2 + 112) = v5;
  *(v2 + 57) = *(v2 + 56);

  if (v0)
  {
    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 72);

    return MEMORY[0x2822009F8](sub_229859C6C, v8, 0);
  }
}

uint64_t sub_229859C6C()
{
  v1 = *(v0 + 57);
  v2 = *(v0 + 64);
  v4 = *(v0 + 96);
  v3 = *(v0 + 112);
  *v2 = *(v0 + 88);
  *(v2 + 8) = v4;
  *(v2 + 24) = v3;
  *(v2 + 40) = v1;
  return (*(v0 + 8))();
}

uint64_t PassUpdaterOperationResult.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6465646461;
    }

    if (a1 == 1)
    {
      return 0x64657461647075;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x6465766F6D6572;
      case 3:
        return 0x726F727265;
      case 4:
        return 1884254062;
    }
  }

  result = sub_22A4DE64C();
  __break(1u);
  return result;
}

unint64_t sub_229859D8C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22985AE94(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_229859DC0()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x6465646461;
    }

    if (v1 != 1)
    {
LABEL_14:
      v4 = *v0;
      result = sub_22A4DE64C();
      __break(1u);
      return result;
    }

    v3 = 0x657461647075;
  }

  else
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x726F727265;
      }

      if (v1 == 4)
      {
        return 1884254062;
      }

      goto LABEL_14;
    }

    v3 = 0x65766F6D6572;
  }

  return v3 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
}

uint64_t sub_229859E88(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_229586D38;

  return v7();
}

uint64_t sub_229859F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_229564F88(a3, v25 - v11, &unk_27D87D8F0, &qword_22A578D70);
  v13 = sub_22A4DD9DC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_22953EAE4(v12, &unk_27D87D8F0, &qword_22A578D70);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_22A4DD9CC();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_22A4DD8CC();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_22A4DD67C() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_22953EAE4(a3, &unk_27D87D8F0, &qword_22A578D70);

    return v23;
  }

LABEL_8:
  sub_22953EAE4(a3, &unk_27D87D8F0, &qword_22A578D70);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_22985A26C(const void *a1)
{
  v2 = sub_22A4DD63C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_22A4DB0DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v17[3] = &type metadata for PassJSON;
  v17[4] = sub_22985B5EC();
  v17[5] = sub_22985B640();
  v17[0] = swift_allocObject();
  memcpy((v17[0] + 16), a1, 0x1B8uLL);
  v6 = sub_22A4DB11C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_2296EBF7C(a1, &v16);
  sub_22A4DB10C();
  sub_22A4DB0CC();
  sub_22A4DB0EC();
  __swift_project_boxed_opaque_existential_0(v17, &type metadata for PassJSON);
  v9 = sub_22A4DB0FC();
  v11 = v10;
  sub_22A4DD62C();
  v12 = sub_22A4DD60C();
  v14 = v13;
  sub_2295798D4(v9, v11);

  if (!v14)
  {
    v12 = 0xD000000000000016;
  }

  __swift_destroy_boxed_opaque_existential_0(v17);
  return v12;
}

uint64_t sub_22985A474(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = 0;
    v7 = result + 56;
    v8 = MEMORY[0x277D84F90];
    v29 = result + 56;
    do
    {
      v30 = v8;
      v9 = (v7 + 32 * v6);
      v10 = v6;
      while (1)
      {
        if (v10 >= v3)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          return result;
        }

        if (__OFADD__(v10, 1))
        {
          goto LABEL_25;
        }

        v31 = v10 + 1;
        v12 = *(v9 - 3);
        v11 = *(v9 - 2);
        v13 = a2;
        v14 = a3;
        v15 = *(v9 - 1);
        v16 = *v9;
        v17 = swift_allocObject();
        *(v17 + 16) = v15;
        *(v17 + 24) = v16;
        a3 = v14;
        a2 = v13;
        if (v12 == v13 && v11 == a3)
        {
          break;
        }

        if (sub_22A4DE60C())
        {
          goto LABEL_14;
        }

        ++v10;
        v9 += 4;
        if (v31 == v3)
        {
          v8 = v30;
          goto LABEL_19;
        }
      }

      v12 = v13;
LABEL_14:
      v19 = swift_allocObject();
      *(v19 + 16) = &unk_22A586010;
      *(v19 + 24) = v17;
      v20 = v19;

      v8 = v30;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22958B990(0, v30[2] + 1, 1, v30);
        v8 = result;
      }

      v6 = v31;
      v22 = v8[2];
      v21 = v8[3];
      if (v22 >= v21 >> 1)
      {
        result = sub_22958B990((v21 > 1), v22 + 1, 1, v8);
        v8 = result;
      }

      v8[2] = v22 + 1;
      v23 = &v8[4 * v22];
      v23[4] = v12;
      v23[5] = v11;
      v23[6] = &unk_22A586018;
      v23[7] = v20;
      v7 = v29;
    }

    while (v31 != v3);
LABEL_19:
    if (!v8[2])
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_22:

      return 0;
    }
  }

  v24 = v8[4];
  v25 = v8[5];
  v26 = v8[6];
  v27 = v8[7];

  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v27;
  return v24;
}

uint64_t sub_22985A6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return MEMORY[0x2822009F8](sub_22985A714, v4, 0);
}

uint64_t sub_22985A714()
{
  v1 = v0[12];
  v2 = v0[11];
  v3 = *(v0[13] + 112);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[15] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E2C0, &qword_22A585A30);
  *v6 = v0;
  v6[1] = sub_22985A818;

  return v9(v0 + 2, &unk_22A585EF8, v4, v7);
}

uint64_t sub_22985A818()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = sub_2296D73D0;
  }

  else
  {
    v7 = *(v2 + 104);
    v6 = *(v2 + 112);

    v5 = sub_22985A93C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22985A93C()
{
  v1 = v0[2];
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v1 = v1;
      v4 = [v3 uniqueID];
      if (v4)
      {
        v5 = v4;
        v6 = sub_22A4DD5EC();
        v8 = v7;

        v9 = v0[1];

        return v9(v6, v8);
      }

      v22 = v0[11];
      v21 = v0[12];
      v24 = v0[9];
      v23 = v0[10];

      sub_22A4DE1FC();
      MEMORY[0x22AAD08C0](0xD000000000000036, 0x800000022A599090);
      MEMORY[0x22AAD08C0](v24, v23);
      MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A599030);
      MEMORY[0x22AAD08C0](v22, v21);
      sub_22A4DBD3C();

      type metadata accessor for HMError(0);
      v0[8] = 2;
      sub_22956AD8C(MEMORY[0x277D84F90]);
      sub_22985C0F4(&qword_27D87D7C0, type metadata accessor for HMError);
      sub_22A4DB3CC();
      v25 = v0[7];
    }

    else
    {
      v17 = v0[11];
      v16 = v0[12];
      v19 = v0[9];
      v18 = v0[10];
      sub_22A4DE1FC();
      MEMORY[0x22AAD08C0](0xD000000000000030, 0x800000022A599050);
      MEMORY[0x22AAD08C0](v19, v18);
      MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A599030);
      MEMORY[0x22AAD08C0](v17, v16);
      sub_22A4DBD3C();

      type metadata accessor for HMError(0);
      v0[6] = 48;
      sub_22956AD8C(MEMORY[0x277D84F90]);
      sub_22985C0F4(&qword_27D87D7C0, type metadata accessor for HMError);
      sub_22A4DB3CC();
      v20 = v0[5];
    }

    swift_willThrow();
  }

  else
  {
    v12 = v0[11];
    v11 = v0[12];
    v14 = v0[9];
    v13 = v0[10];
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000029, 0x800000022A599000);
    MEMORY[0x22AAD08C0](v14, v13);
    MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A599030);
    MEMORY[0x22AAD08C0](v12, v11);
    sub_22A4DBD3C();

    type metadata accessor for HMError(0);
    v0[4] = 2;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22985C0F4(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v15 = v0[3];
    swift_willThrow();
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_22985ADC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_229856008(a1, v5, v4);
}

unint64_t sub_22985AE94(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_22985AEA8()
{
  result = qword_27D881B38;
  if (!qword_27D881B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881B38);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeKitDaemon25UnexpectedUpdatePassErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_22985AF28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22985AF70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22985AFB4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_22985AFDC(uint64_t a1)
{
  result = sub_22962F2A8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22985B004(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_229849378(a1, v4, v5, v6, v7, v8, v9);
}

void sub_22985B144(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t sub_22985B190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for HomePassState(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_229586D38;

  return sub_22984E520(a1, a2, a3, v3 + v9, v3 + v10);
}

uint64_t sub_22985B2B0(uint64_t a1)
{
  v4 = *(v1 + 24);
  v15 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 96);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_229586D38;

  return sub_229862D20(a1, v15, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22985B3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22985B424(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_229867744(a1, v4);
}

uint64_t sub_22985B4C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229867944(a1, v4, v5, v7, v6);
}

uint64_t sub_22985B584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22985B5EC()
{
  result = qword_27D881B60;
  if (!qword_27D881B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881B60);
  }

  return result;
}

unint64_t sub_22985B640()
{
  result = qword_27D881B68;
  if (!qword_27D881B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881B68);
  }

  return result;
}

uint64_t sub_22985B694(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_22962D780(a1, v5, v4);
}

uint64_t sub_22985B73C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_229867C40(a1, v5, v4);
}

uint64_t sub_22985B7E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_229856818(v2, v3, v4);
}

uint64_t sub_22985B89C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_22953E774(a1, v5);
}

uint64_t sub_22985B954()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_229569B30;

  return sub_229855A7C(v2, v3, v4, v5, v6);
}

uint64_t sub_22985BA1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_229586D38;

  return sub_229855400(v2, v3, v5, v4);
}

uint64_t sub_22985BADC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_229586D38;

  return sub_2298547DC(v2, v3, v5, v4);
}

uint64_t sub_22985BB9C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_229586D38;

  return sub_229852FB0(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t objectdestroy_68Tm()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22985BCC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_2298504D0(v2, v3, v4);
}

uint64_t sub_22985BD78()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_229586D38;

  return sub_229847390(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22985BE5C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_229586D38;

  return sub_229846D84(v2, v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_110Tm()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22985BF88()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_229586D38;

  return sub_2298464E4(v2, v3, v5, v4);
}

uint64_t sub_22985C048()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_229845CB0(v2, v3);
}

uint64_t sub_22985C0F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22985C158(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v9 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_22985236C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22985C230(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  if (*(v1 + 33))
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v9 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_229867CF4(a1, v4, v5, v7 | v6, v9, v8);
}

uint64_t sub_22985C310(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return sub_2298508AC(a1, v1);
}

uint64_t sub_22985C3AC(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_229851738(a1, v5, v4);
}

uint64_t sub_22985C454(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_229847860(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22985C530(uint64_t a1, unint64_t a2)
{
  if (a2 >= 8)
  {
  }

  return result;
}

uint64_t sub_22985C564(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_2297B4364(a1, v4, v5, v6, v7);
}

uint64_t sub_22985C628(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22985C688(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_229859458(a1, v4, v5, v6);
}

uint64_t sub_22985C738(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return sub_2298589AC(a1, v1);
}

uint64_t sub_22985C7D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_22979D7E4(a1, v5);
}

uint64_t sub_22985C888(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 16))
  {
    return (*a1 + 2147483640);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 7;
  if (v4 >= 9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22985C8DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 7;
    }
  }

  return result;
}

void *sub_22985C938(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22985C990(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22985C9D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22985CA38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 52))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22985CA88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_22985CAE8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_22985CB2C(uint64_t a1)
{
  result = sub_2297B8424();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22985CB54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22985CB9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22985CC1C(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[5];
    v6 = a1[3];
    result = swift_getAssociatedTypeWitness();
    if (v7 <= 0x3F)
    {
      result = sub_22A4DDF9C();
      if (v8 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22985CD08(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = a3[5];
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v12)
  {
    v14 = v12 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v5 - 8);
  if (v14 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  v17 = *(v5 - 8);
  v18 = *(v15 + 84);
  v19 = *(v7 + 64);
  v20 = *(v10 + 80);
  v21 = *(v10 + 64);
  v22 = *(v15 + 80);
  v23 = *(v15 + 64);
  if (v18 <= v16)
  {
    v24 = v16;
  }

  else
  {
    v24 = *(v15 + 84);
  }

  if (v12)
  {
    v25 = v21;
  }

  else
  {
    v25 = v21 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v26 = v20 + 8;
  v27 = v21 + v20;
  if (a2 > v24)
  {
    v28 = ((v25 + v22 + ((v27 + ((v26 + ((((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & ~v20)) & ~v22) + v23;
    v29 = 8 * v28;
    if (v28 <= 3)
    {
      v31 = ((a2 - v24 + ~(-1 << v29)) >> v29) + 1;
      if (HIWORD(v31))
      {
        v30 = *(a1 + v28);
        if (!v30)
        {
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      if (v31 > 0xFF)
      {
        v30 = *(a1 + v28);
        if (!*(a1 + v28))
        {
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      if (v31 < 2)
      {
LABEL_39:
        if (v24)
        {
          goto LABEL_40;
        }

        return 0;
      }
    }

    v30 = *(a1 + v28);
    if (!*(a1 + v28))
    {
      goto LABEL_39;
    }

LABEL_26:
    v32 = (v30 - 1) << v29;
    if (v28 > 3)
    {
      v32 = 0;
    }

    if (v28)
    {
      if (v28 <= 3)
      {
        v33 = v28;
      }

      else
      {
        v33 = 4;
      }

      if (v33 > 2)
      {
        if (v33 == 3)
        {
          v34 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v34 = *a1;
        }
      }

      else if (v33 == 1)
      {
        v34 = *a1;
      }

      else
      {
        v34 = *a1;
      }
    }

    else
    {
      v34 = 0;
    }

    return v24 + (v34 | v32) + 1;
  }

LABEL_40:
  if (v8 == v24)
  {
    v35 = *(v7 + 48);
    v36 = a1;
    v37 = v8;
    v38 = v6;
LABEL_42:

    return v35(v36, v37, v38);
  }

  v40 = ~v20;
  v41 = (v26 + ((((a1 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v40;
  if (v12 != v24)
  {
    v43 = (v27 + v41) & v40;
    if (v14 == v24)
    {
      v44 = (*(v11 + 48))(v43);
      if (v44 >= 2)
      {
        return v44 - 1;
      }

      else
      {
        return 0;
      }
    }

    v35 = *(*(v5 - 8) + 48);
    v36 = ((v43 + v22 + v25) & ~v22);
    v37 = v18;
    v38 = v5;
    goto LABEL_42;
  }

  v42 = *(v11 + 48);

  return v42(v41);
}

void sub_22985D098(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[2];
  v7 = a4[3];
  v9 = *(v8 - 8);
  v44 = v9;
  v10 = *(v9 + 84);
  v11 = a4[5];
  v12 = 0;
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  if (v15)
  {
    v17 = v15 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v7 - 8);
  v20 = *(v19 + 84);
  v21 = *(v9 + 64);
  v22 = *(v13 + 80);
  v23 = *(v13 + 64);
  v24 = *(v19 + 80);
  if (v20 <= v18)
  {
    v25 = v18;
  }

  else
  {
    v25 = *(v19 + 84);
  }

  v26 = v22 + 8;
  v27 = v23 + v22;
  v28 = (v23 + v22 + ((v22 + 8 + ((((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v22)) & ~v22;
  if (!v15)
  {
    ++v23;
  }

  v29 = ((v23 + v24 + v28) & ~v24) + *(*(v7 - 8) + 64);
  if (a3 <= v25)
  {
    goto LABEL_26;
  }

  if (v29 <= 3)
  {
    v30 = ((a3 - v25 + ~(-1 << (8 * v29))) >> (8 * v29)) + 1;
    if (HIWORD(v30))
    {
      v12 = 4;
      if (v25 >= a2)
      {
        goto LABEL_36;
      }

LABEL_27:
      v32 = ~v25 + a2;
      if (v29 >= 4)
      {
        bzero(a1, v29);
        *a1 = v32;
        v33 = 1;
        if (v12 > 1)
        {
          goto LABEL_62;
        }

        goto LABEL_59;
      }

      v33 = (v32 >> (8 * v29)) + 1;
      if (v29)
      {
        v34 = v32 & ~(-1 << (8 * v29));
        bzero(a1, v29);
        if (v29 != 3)
        {
          if (v29 == 2)
          {
            *a1 = v34;
            if (v12 > 1)
            {
LABEL_62:
              if (v12 == 2)
              {
                *&a1[v29] = v33;
              }

              else
              {
                *&a1[v29] = v33;
              }

              return;
            }
          }

          else
          {
            *a1 = v32;
            if (v12 > 1)
            {
              goto LABEL_62;
            }
          }

LABEL_59:
          if (v12)
          {
            a1[v29] = v33;
          }

          return;
        }

        *a1 = v34;
        a1[2] = BYTE2(v34);
      }

      if (v12 > 1)
      {
        goto LABEL_62;
      }

      goto LABEL_59;
    }

    if (v30 < 0x100)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2;
    }

    if (v30 >= 2)
    {
      v12 = v31;
    }

    else
    {
      v12 = 0;
    }

LABEL_26:
    if (v25 >= a2)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  v12 = 1;
  if (v25 < a2)
  {
    goto LABEL_27;
  }

LABEL_36:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v29] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *&a1[v29] = 0;
LABEL_42:
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!v12)
  {
    goto LABEL_42;
  }

  a1[v29] = 0;
  if (!a2)
  {
    return;
  }

LABEL_43:
  if (v10 == v25)
  {
    v35 = *(v44 + 56);
    v36 = a1;
    v37 = a2;
    v38 = v10;
    v39 = v8;
LABEL_45:

    v35(v36, v37, v38, v39);
    return;
  }

  v40 = ~v22;
  v41 = (v26 + (((&a1[v21 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v40;
  if (v15 == v25)
  {
    v42 = *(v14 + 56);
    v43 = a2;
  }

  else
  {
    v41 = (v27 + v41) & v40;
    if (v17 != v25)
    {
      v35 = *(v19 + 56);
      v36 = ((v41 + v24 + v23) & ~v24);
      v37 = a2;
      v38 = v20;
      v39 = v7;
      goto LABEL_45;
    }

    v42 = *(v14 + 56);
    v43 = (a2 + 1);
  }

  v42(v41, v43);
}

uint64_t sub_22985D4CC(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = a1[3];
    v7 = a1[5];
    result = type metadata accessor for TokenBucket();
    if (v8 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = sub_22A4DDF9C();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22985D5BC(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = a3[4];
  v5 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v49 = AssociatedTypeWitness;
  v51 = *(v7 + 84);
  v8 = a3[5];
  v9 = a3[3];
  v48 = swift_getAssociatedTypeWitness();
  v10 = *(v48 - 8);
  v11 = *(v10 + 84);
  v12 = *(v9 - 8);
  v47 = *(v12 + 84);
  if (v47 <= v11)
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v14 = swift_getAssociatedTypeWitness();
  result = a2;
  v16 = *(v14 - 8);
  if (*(v16 + 84) <= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = *(v16 + 84);
  }

  if (v17 <= v51)
  {
    v18 = v51;
  }

  else
  {
    v18 = v17;
  }

  v19 = v11 - 1;
  if (!v11)
  {
    v19 = 0;
  }

  if (v19 > v18)
  {
    v18 = v19;
  }

  v20 = *(v10 + 80);
  v21 = *(v12 + 80);
  v22 = *(v16 + 80);
  v23 = *(v10 + 64);
  v24 = *(v12 + 64);
  if (v11)
  {
    v25 = *(v10 + 64);
  }

  else
  {
    v25 = v23 + 1;
  }

  if (!a2)
  {
    return result;
  }

  v26 = v20 | v21 | v22 | 7;
  v27 = v26 + *(v7 + 64);
  v28 = v24 + v22;
  v29 = ((v24 + v22 + ((v23 + v21 + ((v20 + 16) & ~v20)) & ~v21)) & ~v22) + *(*(v14 - 8) + 64);
  v30 = a1;
  if (a2 > v18)
  {
    v31 = v25 + ((v29 + v20 + (v27 & ~v26)) & ~v20);
    v32 = 8 * v31;
    if (v31 <= 3)
    {
      v34 = ((a2 - v18 + ~(-1 << v32)) >> v32) + 1;
      if (HIWORD(v34))
      {
        v33 = *(a1 + v31);
        if (!v33)
        {
          goto LABEL_40;
        }

        goto LABEL_27;
      }

      if (v34 > 0xFF)
      {
        v33 = *(a1 + v31);
        if (!*(a1 + v31))
        {
          goto LABEL_40;
        }

        goto LABEL_27;
      }

      if (v34 < 2)
      {
LABEL_40:
        if (!v18)
        {
          return 0;
        }

        goto LABEL_41;
      }
    }

    v33 = *(a1 + v31);
    if (!*(a1 + v31))
    {
      goto LABEL_40;
    }

LABEL_27:
    v35 = (v33 - 1) << v32;
    if (v31 > 3)
    {
      v35 = 0;
    }

    if (v31)
    {
      if (v31 <= 3)
      {
        v36 = v31;
      }

      else
      {
        v36 = 4;
      }

      if (v36 > 2)
      {
        if (v36 == 3)
        {
          v37 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v37 = *a1;
        }
      }

      else if (v36 == 1)
      {
        v37 = *a1;
      }

      else
      {
        v37 = *a1;
      }
    }

    else
    {
      v37 = 0;
    }

    return v18 + (v37 | v35) + 1;
  }

LABEL_41:
  if (v51 == v18)
  {
    v38 = v49;
    v39 = *(v7 + 48);
    v40 = v51;
LABEL_43:

    return v39(v30, v40, v38);
  }

  v41 = ~v26;
  v42 = ~v20;
  v43 = (a1 + v27) & v41;
  if (v17 != v18)
  {
    v44 = (*(v10 + 48))((v43 + v20 + v29) & v42, v11, v48);
    if (v44 >= 2)
    {
      return v44 - 1;
    }

    else
    {
      return 0;
    }
  }

  v30 = (v20 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v42;
  if (v11 == v17)
  {
    v39 = *(v10 + 48);
    v40 = v11;
    v38 = v48;
    goto LABEL_43;
  }

  v30 = (v23 + v21 + v30) & ~v21;
  if (v47 == v17)
  {
    v39 = *(v12 + 48);
    v40 = v47;
    v38 = v9;
    goto LABEL_43;
  }

  v45 = *(v16 + 48);
  v46 = (v28 + v30) & ~v22;

  return v45(v46);
}

void sub_22985DA5C(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = a4[4];
  v6 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v56 = AssociatedTypeWitness;
  v57 = *(v8 + 84);
  v9 = a4[5];
  v10 = a4[3];
  v55 = swift_getAssociatedTypeWitness();
  v11 = *(v55 - 8);
  v62 = v11;
  v12 = *(v11 + 84);
  v13 = *(v10 - 8);
  v61 = v13;
  v54 = *(v13 + 84);
  if (v54 <= v12)
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = *(v13 + 84);
  }

  v15 = 0;
  v16 = *(swift_getAssociatedTypeWitness() - 8);
  v17 = v16;
  v18 = *(v8 + 64);
  v19 = v11;
  if (*(v16 + 84) <= v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = *(v16 + 84);
  }

  if (v20 <= v57)
  {
    v21 = v57;
  }

  else
  {
    v21 = v20;
  }

  v22 = v12 - 1;
  if (!v12)
  {
    v22 = 0;
  }

  if (v22 <= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v11 + 80);
  v25 = *(v13 + 80);
  v26 = *(v16 + 80);
  v27 = v24 | v25 | v26 | 7;
  v28 = v27 + v18;
  v29 = (v27 + v18) & ~v27;
  v30 = *(v11 + 64);
  v31 = *(v13 + 64) + v26;
  v32 = ((v31 + ((v30 + v25 + ((v24 + 16) & ~v24)) & ~v25)) & ~v26) + *(v16 + 64);
  if (v12)
  {
    v33 = *(v19 + 64);
  }

  else
  {
    v33 = v30 + 1;
  }

  v34 = ((v32 + v24 + v29) & ~v24) + v33;
  if (a3 > v23)
  {
    if (v34 <= 3)
    {
      v35 = ((a3 - v23 + ~(-1 << (8 * v34))) >> (8 * v34)) + 1;
      if (HIWORD(v35))
      {
        v15 = 4;
      }

      else
      {
        if (v35 < 0x100)
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

        if (v35 >= 2)
        {
          v15 = v36;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  if (v23 < a2)
  {
    v37 = ~v23 + a2;
    if (v34 < 4)
    {
      v38 = (v37 >> (8 * v34)) + 1;
      if (v34)
      {
        v40 = v37 & ~(-1 << (8 * v34));
        bzero(a1, v34);
        if (v34 != 3)
        {
          if (v34 == 2)
          {
            *a1 = v40;
            if (v15 > 1)
            {
LABEL_68:
              if (v15 == 2)
              {
                *&a1[v34] = v38;
              }

              else
              {
                *&a1[v34] = v38;
              }

              return;
            }
          }

          else
          {
            *a1 = v37;
            if (v15 > 1)
            {
              goto LABEL_68;
            }
          }

          goto LABEL_65;
        }

        *a1 = v40;
        a1[2] = BYTE2(v40);
      }

      if (v15 > 1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      bzero(a1, v34);
      *a1 = v37;
      v38 = 1;
      if (v15 > 1)
      {
        goto LABEL_68;
      }
    }

LABEL_65:
    if (v15)
    {
      a1[v34] = v38;
    }

    return;
  }

  v39 = a1;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v34] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *&a1[v34] = 0;
  }

  else if (v15)
  {
    a1[v34] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if (v57 == v23)
  {
    v41 = v56;
    v42 = *(v8 + 56);
    v43 = a2;
    v44 = v57;
LABEL_76:

    v42(v39, v43, v44, v41);
    return;
  }

  v45 = ~v24;
  v46 = &a1[v28] & ~v27;
  if (v20 == v23)
  {
    v39 = (v24 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v45;
    if (v12 == v20)
    {
      v42 = *(v62 + 56);
      v43 = a2;
LABEL_75:
      v44 = v12;
      v41 = v55;
      goto LABEL_76;
    }

    v39 = (v30 + v25 + v39) & ~v25;
    if (v54 == v20)
    {
      v42 = *(v61 + 56);
      v43 = a2;
      v44 = v54;
      v41 = v10;
      goto LABEL_76;
    }

    v52 = *(v17 + 56);
    v53 = (v31 + v39) & ~v26;

    v52(v53, a2);
  }

  else
  {
    v47 = v46 + v24 + v32;
    v48 = (v47 & v45);
    if (v22 >= a2)
    {
      v42 = *(v62 + 56);
      v43 = a2 + 1;
      v39 = v47 & v45;
      goto LABEL_75;
    }

    if (v33 <= 3)
    {
      v49 = ~(-1 << (8 * v33));
    }

    else
    {
      v49 = -1;
    }

    if (v33)
    {
      v50 = v49 & (~v22 + a2);
      if (v33 <= 3)
      {
        v51 = v33;
      }

      else
      {
        v51 = 4;
      }

      bzero(v48, v33);
      if (v51 > 2)
      {
        if (v51 == 3)
        {
          *v48 = v50;
          v48[2] = BYTE2(v50);
        }

        else
        {
          *v48 = v50;
        }
      }

      else if (v51 == 1)
      {
        *v48 = v50;
      }

      else
      {
        *v48 = v50;
      }
    }
  }
}

uint64_t sub_22985E010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  v38 = *(a1 + 24);
  v41 = *(v38 - 8);
  v5 = *(v41 + 64);
  v39 = *(MEMORY[0x28223BE20](a1) + 40);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = AssociatedTypeWitness;
  v37 = sub_22A4DDF9C();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v37);
  v36 = &v35 - v11;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = &v35 - v15;
  v17 = *(a1 + 16);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v14);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 32);
  v23 = swift_getAssociatedTypeWitness();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v35 - v25;
  (*(v18 + 16))(v21, v3, v17);
  sub_22A4DDAFC();
  v27 = *(v3 + *(a1 + 52));
  v28 = *(v3 + *(a1 + 56));
  (*(v12 + 16))(v16, v3 + *(a1 + 60), v35);
  v29 = v36;
  (*(v8 + 16))(v36, v3 + *(a1 + 64), v37);
  v30 = *(a1 + 68);
  v31 = v40;
  v32 = v3 + v30;
  v33 = v38;
  (*(v41 + 16))(v40, v32, v38);
  return sub_22985E384(v26, v27, v28, v16, v29, v31, v17, v33, v42, v22, v39);
}

uint64_t sub_22985E384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v38 = a4;
  v39 = a6;
  v41 = a3;
  v42 = a5;
  v40 = a2;
  v35 = a1;
  v43 = a9;
  v32 = *(a8 - 8);
  v14 = v32;
  v15 = *(v32 + 64);
  v37 = a11;
  MEMORY[0x28223BE20](a1);
  v36 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = AssociatedTypeWitness;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v32 - v20;
  v34 = swift_getAssociatedTypeWitness();
  v22 = *(v34 - 8);
  v23 = v43;
  (*(v22 + 16))(v43, a1, v34);
  v24 = v38;
  (*(v18 + 16))(v21, v38, AssociatedTypeWitness);
  v25 = *(v14 + 16);
  v26 = v36;
  v27 = v39;
  v25(v36, v39, a8);
  v44 = a7;
  v45 = a8;
  v46 = a10;
  v47 = v37;
  v28 = type metadata accessor for AsyncTokenBucketSequence.Iterator();
  sub_2297AE5C8(v40, v41, v21, v26, a8, (v23 + *(v28 + 52)));
  (*(v32 + 8))(v27, a8);
  (*(v18 + 8))(v24, v33);
  (*(v22 + 8))(v35, v34);
  v29 = *(v28 + 56);
  v30 = sub_22A4DDF9C();
  return (*(*(v30 - 8) + 32))(v43 + v29, v42, v30);
}

uint64_t sub_22985E67C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 40);
  v3[6] = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22985E764, 0, 0);
}

uint64_t sub_22985E764()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4] + *(v0[3] + 52);
  v4 = type metadata accessor for TokenBucket();
  if (sub_2297AE858(v4))
  {
    v5 = v0[3];
    v6 = *(v5 + 32);
    v7 = *(v5 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = *(MEMORY[0x277D856D0] + 4);
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_22985EB4C;
    v12 = v0[4];
    v13 = v0[2];

    return MEMORY[0x282200308](v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v15 = v0[3];
    v14 = v0[4];
    sub_2297AEBA8(v4, v0[9]);
    v16 = *(v4 + 44);
    v17 = *(v15 + 56);
    v18 = *(MEMORY[0x277D85A58] + 4);
    v19 = swift_task_alloc();
    v0[10] = v19;
    *v19 = v0;
    v19[1] = sub_22985E920;
    v20 = v0[9];
    v22 = v0[5];
    v21 = v0[6];

    return MEMORY[0x2822008C8](v20, v14 + v17, v21, v22);
  }
}

uint64_t sub_22985E920()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_22985EC64;
  }

  else
  {
    v3 = sub_22985EA34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22985EA34()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[3];
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_22985EB4C;
  v8 = v0[4];
  v9 = v0[2];

  return MEMORY[0x282200308](v9, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_22985EB4C()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 72);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22985EC64()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22985ECE0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229569B30;

  return sub_22985E67C(a1, a2);
}

uint64_t sub_22985ED88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_22985EE5C;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_22985EE5C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_22985EF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22985E010(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

id sub_22985F0CC()
{
  v206 = MEMORY[0x277D84F98];
  v1 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36TemperatureHumidityReadWriteLogEvent_readWriteEvent);
  sub_229890F4C([v1 thSensorSSIDSame], 0xD000000000000010, 0x800000022A5994C0);
  sub_229890F4C([v1 thSensorIPv4AddressSameAsCachedIP], 0xD000000000000021, 0x800000022A5994E0);
  sub_229890F4C([v1 thSensorIPv4NetworkSignatureSame], 0xD000000000000020, 0x800000022A599510);
  sub_229890F4C([v1 thSensorIPv6AddressSameAsCachedIP], 0xD000000000000021, 0x800000022A599540);
  sub_229890F4C([v1 thSensorIPv6NetworkSignatureSame], 0xD000000000000020, 0x800000022A599570);
  sub_229890F4C([v1 thSensorReachableViaIDS], 0xD000000000000017, 0x800000022A5995A0);
  sub_229890F4C([v1 thSensorReachable], 0xD000000000000011, 0x800000022A5995C0);
  sub_229890F4C([v1 thSensorPrimaryInterfaceType], 0xD00000000000001ALL, 0x800000022A5995E0);
  sub_229890F4C([v1 thSensorPrimaryInterfaceName], 0xD00000000000001ALL, 0x800000022A599600);
  sub_229890F4C([v1 thSensorCachedSourceIPType], 0xD000000000000018, 0x800000022A599620);
  sub_229890F4C([v1 thSensorDurationSecondsSinceLastStatusKitAssertion], 0xD00000000000002ALL, 0x800000022A599640);
  v2 = sub_22A4DD5EC();
  v4 = v3;
  [v1 isCurrentDevicePrimaryResident];
  v5 = sub_22A4DD8AC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v5, v2, v4, isUniquelyReferenced_nonNull_native);

  v7 = sub_22A4DD5EC();
  v9 = v8;
  [v1 isCurrentDeviceAvailableResident];
  v10 = sub_22A4DD8AC();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v10, v7, v9, v11);

  v12 = sub_22A4DD5EC();
  v14 = v13;
  [v1 isPrimaryResidentReachable];
  v15 = sub_22A4DD8AC();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v15, v12, v14, v16);

  v17 = sub_22A4DD5EC();
  v19 = v18;
  [v1 isLocal];
  v20 = sub_22A4DD8AC();
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v20, v17, v19, v21);

  v22 = sub_22A4DD5EC();
  v24 = v23;
  [v1 isResidentAvailable];
  v25 = sub_22A4DD8AC();
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v25, v22, v24, v26);

  v27 = v206;
  if ([v1 linkLayerType] != 4 && objc_msgSend(v1, sel_linkType) == 1)
  {
    v28 = [v1 expectedTransport];
    v29 = sub_22A4DD5EC();
    v31 = v30;

    if (v29 != sub_22A4DD5EC() || v31 != v32)
    {
      sub_22A4DE60C();
    }
  }

  v33 = sub_22A4DD5EC();
  v35 = v34;
  v36 = sub_22A4DD8AC();
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v36, v33, v35, v37);

  v38 = sub_22A4DD5EC();
  v40 = v39;
  [v1 triggerSource];
  v41 = sub_22A4DDFDC();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v41, v38, v40, v42);

  v43 = sub_22A4DD5EC();
  v45 = v44;
  [v1 timeIntervalSinceFirstFailure];
  v46 = sub_22A4DDB3C();
  v47 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v46, v43, v45, v47);

  v48 = sub_22A4DD5EC();
  v50 = v49;
  [v1 noSessionDuration];
  v51 = sub_22A4DDB3C();
  v52 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v51, v48, v50, v52);

  v53 = sub_22A4DD5EC();
  v55 = v54;
  [v1 localDurationInMilliseconds];
  v56 = sub_22A4DDBDC();
  v57 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v56, v53, v55, v57);

  v58 = sub_22A4DD5EC();
  v60 = v59;
  [v1 residentFirstDurationInMilliseconds];
  v61 = sub_22A4DDBDC();
  v62 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v61, v58, v60, v62);

  v63 = sub_22A4DD5EC();
  v65 = v64;
  [v1 durationMilliseconds];
  v66 = sub_22A4DDBDC();
  v67 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v66, v63, v65, v67);

  v68 = sub_22A4DD5EC();
  v70 = v69;
  [v1 hasSession];
  v71 = sub_22A4DD8AC();
  v72 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v71, v68, v70, v72);

  v73 = sub_22A4DD5EC();
  v75 = v74;
  [v1 isReachable];
  v76 = sub_22A4DD8AC();
  v77 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v76, v73, v75, v77);

  v78 = sub_22A4DD5EC();
  v80 = v79;
  [v1 recentSessionRetries];
  v81 = sub_22A4DDBDC();
  v82 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v81, v78, v80, v82);

  v83 = sub_22A4DD5EC();
  v85 = v84;
  [v1 topSessionFailureErrorCode];
  v86 = sub_22A4DDBDC();
  v87 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v86, v83, v85, v87);

  v88 = sub_22A4DD5EC();
  sub_229890F4C([v1 topSessionFailureErrorDomain], v88, v89);
  if ([v1 residentFirstError])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_229562F68(0, &qword_281401778, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v90 = sub_22A4DD5EC();
      v92 = v91;
      result = [v205 domain];
      if (!result)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v94 = result;
      v95 = swift_isUniquelyReferenced_nonNull_native();
      sub_2295AAFCC(v94, v90, v92, v95);

      v96 = sub_22A4DD5EC();
      v98 = v97;
      [v205 code];
      v99 = sub_22A4DDBDC();
      v100 = swift_isUniquelyReferenced_nonNull_native();
      sub_2295AAFCC(v99, v96, v98, v100);
    }
  }

  if ([v1 residentFirstUnderlyingError])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_229562F68(0, &qword_281401778, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v101 = sub_22A4DD5EC();
      v103 = v102;
      result = [v205 domain];
      if (!result)
      {
LABEL_46:
        __break(1u);
        return result;
      }

      v104 = result;
      v105 = swift_isUniquelyReferenced_nonNull_native();
      sub_2295AAFCC(v104, v101, v103, v105);

      v106 = sub_22A4DD5EC();
      v108 = v107;
      [v205 code];
      v109 = sub_22A4DDBDC();
      v110 = swift_isUniquelyReferenced_nonNull_native();
      sub_2295AAFCC(v109, v106, v108, v110);
    }
  }

  v111 = sub_22A4DD5EC();
  v113 = v112;
  [v1 isNetworkAvailable];
  v114 = sub_22A4DD8AC();
  v115 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v114, v111, v113, v115);

  v116 = sub_22A4DD5EC();
  v118 = v117;
  [v1 hasSucceededOnce];
  v119 = sub_22A4DD8AC();
  v120 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v119, v116, v118, v120);

  v121 = sub_22A4DD5EC();
  v123 = v122;
  [v1 hasFailedOnce];
  v124 = sub_22A4DD8AC();
  v125 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v124, v121, v123, v125);

  v126 = sub_22A4DD5EC();
  v128 = v127;
  [v1 isSSIDSameAsLastSuccessRequest];
  v129 = sub_22A4DD8AC();
  v130 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v129, v126, v128, v130);

  v131 = sub_22A4DD5EC();
  v133 = v132;
  [v1 isBSSIDSameAsLastSuccessRequest];
  v134 = sub_22A4DD8AC();
  v135 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v134, v131, v133, v135);

  v136 = sub_22A4DD5EC();
  v138 = v137;
  [v1 isPrimaryResidentAvailable];
  v139 = sub_22A4DD8AC();
  v140 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v139, v136, v138, v140);

  v141 = sub_22A4DD5EC();
  sub_229890F4C([v1 wifiAccessPointOUI], v141, v142);
  if (![v1 isCurrentDevicePrimaryResident])
  {
    goto LABEL_23;
  }

  v143 = sub_22A4DD5EC();
  v145 = v144;
  result = [v1 timeIntervalSinceCurrentDeviceAsPrimary];
  if ((*&v146 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v146 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v146 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v147 = sub_22A4DDBDC();
  v148 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v147, v143, v145, v148);

  if (isHomePod())
  {
    v149 = sub_22A4DD5EC();
    v151 = v150;
    [v1 mediaSystemConfiguration];
    v152 = sub_22A4DDFDC();
    v153 = swift_isUniquelyReferenced_nonNull_native();
    sub_2295AAFCC(v152, v149, v151, v153);
  }

LABEL_23:
  if ([v1 hasEnabledResidents])
  {
    v154 = sub_22A4DD5EC();
    v156 = v155;
    result = [v1 timeIntervalSincePrimaryChanged];
    if ((*&v157 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v157 > -9.22337204e18)
      {
        if (v157 < 9.22337204e18)
        {
          v158 = sub_22A4DDBDC();
          v159 = swift_isUniquelyReferenced_nonNull_native();
          sub_2295AAFCC(v158, v154, v156, v159);

          v160 = sub_22A4DD5EC();
          v162 = v161;
          result = [v1 timeIntervalSincePrimaryLost];
          if ((*&v163 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v163 > -9.22337204e18)
            {
              if (v163 < 9.22337204e18)
              {
                v164 = sub_22A4DDBDC();
                v165 = swift_isUniquelyReferenced_nonNull_native();
                sub_2295AAFCC(v164, v160, v162, v165);

                v166 = sub_22A4DD5EC();
                v168 = v167;
                [v1 percentageOfLocalReachableResidents];
                v169 = sub_22A4DDBDC();
                v170 = swift_isUniquelyReferenced_nonNull_native();
                sub_2295AAFCC(v169, v166, v168, v170);

                v171 = sub_22A4DD5EC();
                v173 = v172;
                [v1 percentageOfIDSReachableResidents];
                v174 = sub_22A4DDBDC();
                v175 = swift_isUniquelyReferenced_nonNull_native();
                sub_2295AAFCC(v174, v171, v173, v175);

                goto LABEL_31;
              }

              goto LABEL_44;
            }

LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    goto LABEL_38;
  }

LABEL_31:
  if ([v1 isCurrentDeviceAvailableResident])
  {
    v176 = sub_22A4DD5EC();
    v178 = v177;
    [v1 isThreadNetworkUpInHome];
    v179 = sub_22A4DD8AC();
    v180 = swift_isUniquelyReferenced_nonNull_native();
    sub_2295AAFCC(v179, v176, v178, v180);

    v181 = sub_22A4DD5EC();
    v183 = v182;
    [v1 threadPreferredNetworkExistsInHome];
    v184 = sub_22A4DD8AC();
    v185 = swift_isUniquelyReferenced_nonNull_native();
    sub_2295AAFCC(v184, v181, v183, v185);
  }

  v186 = sub_22A4DD5EC();
  v188 = v187;
  [v1 threadNetworkConnectionState];
  v189 = sub_22A4DDBDC();
  v190 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v189, v186, v188, v190);

  v191 = sub_22A4DD5EC();
  v193 = v192;
  [v1 threadNetworkNodeType];
  v194 = sub_22A4DDBDC();
  v195 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v194, v191, v193, v195);

  if ([v1 isIPAccessoryServer])
  {
    v196 = sub_22A4DD5EC();
    sub_229890F4C([v1 ipSocketIPType], v196, v197);
    v198 = sub_22A4DD5EC();
    sub_229890F4C([v1 ipSocketUpdateType], v198, v199);
    v200 = sub_22A4DD5EC();
    v202 = v201;
    [v1 isSeenOnBonjour];
    v203 = sub_22A4DD8AC();
    v204 = swift_isUniquelyReferenced_nonNull_native();
    sub_2295AAFCC(v203, v200, v202, v204);

    return v206;
  }

  return v27;
}

id sub_22986070C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TemperatureHumidityReadWriteLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2298607E0(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock((a1 + 16));
  v4 = *(a1 + 32);
  v5 = v4;
  os_unfair_lock_unlock((a1 + 16));
  if (!v4)
  {
    v6 = *(a1 + 88);
    v7 = *(a1 + 96);
    __swift_project_boxed_opaque_existential_0((a1 + 64), v6);
    v5 = (*(v7 + 24))(a1, v6, v7);
  }

  os_unfair_lock_lock((a1 + 16));
  v8 = *(a1 + 48);
  v9 = v8;
  os_unfair_lock_unlock((a1 + 16));
  if (!v8)
  {
    v10 = *(a1 + 88);
    v11 = *(a1 + 96);
    __swift_project_boxed_opaque_existential_0((a1 + 64), v10);
    v9 = (*(v11 + 40))(a1, v10, v11);
  }

  v12 = [objc_opt_self() driver];
  v13 = [v12 coreData];

  v14 = [v13 contextWithRootPartition];
  v15 = v5;
  v16 = v9;
  v17 = v14;
  os_unfair_lock_lock(v2 + 4);
  os_unfair_lock_lock((a1 + 16));
  v18 = *(a1 + 24);
  v19 = v18;
  os_unfair_lock_unlock((a1 + 16));
  if (!v18)
  {
    v20 = [objc_allocWithZone(HMDAccountRegistry) initWithAppleAccountManager:v15 remoteAccountManager:v16 context:v17];
    os_unfair_lock_lock((a1 + 16));
    v19 = v20;
    sub_229860E74(a1 + 24);
    *(a1 + 24) = v20;
    os_unfair_lock_unlock((a1 + 16));
  }

  os_unfair_lock_unlock(v2 + 4);
  return v19;
}

id sub_2298609DC(uint64_t a1)
{
  os_unfair_lock_lock(v1 + 4);
  os_unfair_lock_lock((a1 + 16));
  v3 = *(a1 + 40);
  v4 = v3;
  os_unfair_lock_unlock((a1 + 16));
  if (!v3)
  {
    v5 = [objc_allocWithZone(HMDIDSServiceManager) initWithDefaults];
    [v5 configure];
    os_unfair_lock_lock((a1 + 16));
    v6 = *(a1 + 40);
    v4 = v5;

    *(a1 + 40) = v5;
    os_unfair_lock_unlock((a1 + 16));
  }

  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

uint64_t sub_229860A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(os_unfair_lock_s *, uint64_t, uint64_t, id))
{
  v5 = v3;
  os_unfair_lock_lock((a1 + 16));
  v7 = *(a1 + 40);
  v8 = v7;
  os_unfair_lock_unlock((a1 + 16));
  if (!v7)
  {
    v9 = *(a1 + 88);
    v10 = *(a1 + 96);
    __swift_project_boxed_opaque_existential_0((a1 + 64), v9);
    v8 = (*(v10 + 32))(a1, v9, v10);
  }

  KeyPath = swift_getKeyPath();
  v12 = v8;
  os_unfair_lock_lock(v5 + 4);
  v13 = a3(v5 + 4, a1, KeyPath, v12);

  os_unfair_lock_unlock(v5 + 4);

  return v13;
}

id sub_229860C78(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(a2 + 4);
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v9 = *v7;
  v6(v13, 0);
  os_unfair_lock_unlock(a2 + 4);
  if (v8)
  {
    return v9;
  }

  v11 = [objc_allocWithZone(HMDAppleAccountManager) initWithIDSServiceManager_];
  os_unfair_lock_lock(a2 + 4);
  v13[0] = v11;
  v12 = v11;
  swift_setAtWritableKeyPath();
  os_unfair_lock_unlock(a2 + 4);
  return v12;
}

id sub_229860D64(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, void *a4)
{
  os_unfair_lock_lock(a2 + 4);
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v9 = *v7;
  v6(v13, 0);
  os_unfair_lock_unlock(a2 + 4);
  if (v8)
  {
    return v9;
  }

  v11 = [objc_allocWithZone(HMDRemoteAccountManager) initWithIDSService_];
  swift_unknownObjectRelease();
  os_unfair_lock_lock(a2 + 4);
  v13[0] = v11;
  v12 = v11;
  swift_setAtWritableKeyPath();
  os_unfair_lock_unlock(a2 + 4);
  return v12;
}

uint64_t sub_229860E74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881CC0, &qword_22A5864E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_229860F94(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

id sub_2298610C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

id HMDHomeManagerDataSource.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for HMDHomeManagerDataSource()
{
  result = qword_27D881D50;
  if (!qword_27D881D50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D881D50);
  }

  return result;
}

id sub_22986165C()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

id sub_229861694()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t HMDResidentDevice.isDemoDevice.getter()
{
  v1 = [v0 home];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 appleMediaAccessories];

  sub_229562F68(0, &qword_281401920, off_278666038);
  v4 = sub_22A4DD83C();

  if (v4 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v6 = 0;
    v17 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v17)
      {
        v8 = MEMORY[0x22AAD13F0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = [v8 device];
      v12 = [v18 device];
      v13 = v12;
      if (v11)
      {
        if (!v12)
        {
          v13 = v11;
LABEL_18:

LABEL_19:
          goto LABEL_6;
        }

        sub_229562F68(0, &qword_27D87CEF0, off_278666100);
        v14 = sub_22A4DDEDC();

        if ((v14 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v12)
      {
        goto LABEL_18;
      }

      v7 = [v9 isDemoAccessory];

      if (v7)
      {
        v15 = 1;
        goto LABEL_27;
      }

LABEL_6:
      ++v6;
      if (v10 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_26:
  v15 = 0;
LABEL_27:

  return v15;
}

void sub_229861930(uint64_t a1, char a2)
{
  if ([v2 isCurrentDevicePrimaryResident])
  {
    v5 = [v2 actionSetStateObserver];
    if (v5)
    {
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D180, &qword_22A5780B0);
      v7 = sub_22A4DB7DC();
      v8 = *(v7 - 8);
      v9 = *(v8 + 72);
      v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_22A576180;
      (*(v8 + 16))(v11 + v10, a1, v7);
      v12 = sub_22A4DD81C();

      [v6 stateRegistrationsDidChangeForActionSetUUIDs_];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D180, &qword_22A5780B0);
    v13 = sub_22A4DB7DC();
    v14 = *(v13 - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22A576180;
    (*(v14 + 16))(v17 + v16, a1, v13);
    v18 = sub_22A4DD81C();

    [v2 remotelySetNotificationsEnabled:a2 & 1 forActionSetUUIDs:v18];
  }
}

uint64_t sub_229861BCC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_22A4DDF9C();
  if (v3 <= 0x3F)
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

char *sub_229861C78()
{
  v1 = *v0;
  v2 = *(v0 + 14);

  v3 = *(*v0 + 104);
  v4 = *(v1 + 80);
  v5 = sub_22A4DDF9C();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_229861D14()
{
  sub_229861C78();

  return MEMORY[0x282200960](v0);
}

uint64_t static PassFileUtilities.createPassDirectory()@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v47[2] = *MEMORY[0x277D85DE8];
  v1 = sub_22A4DB49C();
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22A4DB57C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v42 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  sub_229862298();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  v24 = [v23 resourceURL];

  if (v24)
  {
    sub_22A4DB51C();

    (*(v6 + 56))(v19, 0, 1, v5);
  }

  else
  {
    (*(v6 + 56))(v19, 1, 1, v5);
  }

  sub_2297193E8(v19, v21);
  sub_229719378(v21, v16);
  if ((*(v6 + 48))(v16, 1, v5) != 1)
  {
    v47[0] = sub_22A4DD5EC();
    v47[1] = v26;
    v28 = v42;
    v27 = v43;
    (*(v42 + 104))(v4, *MEMORY[0x277CC91D8], v43);
    sub_22962F254();
    sub_22A4DB56C();
    (*(v28 + 8))(v4, v27);

    v29 = *(v6 + 8);
    v29(v16, v5);
    v30 = v46;
    (*(v6 + 32))(v46, v10, v5);
    v31 = v44;
    v32 = v45;
    sub_229862600(v45);
    if (v31)
    {
      v33 = v30;
    }

    else
    {
      v44 = v29;
      v34 = [objc_opt_self() defaultManager];
      v35 = sub_22A4DB4EC();
      v36 = sub_22A4DB4EC();
      v47[0] = 0;
      v37 = [v34 copyItemAtURL:v35 toURL:v36 error:v47];

      if (v37)
      {
        v38 = v47[0];
        v44(v46, v5);
        goto LABEL_12;
      }

      v39 = v47[0];
      sub_22A4DB3EC();

      swift_willThrow();
      sub_229862908(v32, 1);
      swift_willThrow();
      v29 = v44;
      v44(v32, v5);
      v33 = v46;
    }

    v29(v33, v5);
    goto LABEL_12;
  }

  sub_2298622E4(v16);
  sub_22962F2A8();
  swift_allocError();
  *v25 = 0xD000000000000029;
  *(v25 + 8) = 0x800000022A599870;
  *(v25 + 16) = 0;
  swift_willThrow();
LABEL_12:
  result = sub_2298622E4(v21);
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_229862298()
{
  result = qword_27D881D60;
  if (!qword_27D881D60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D881D60);
  }

  return result;
}

uint64_t sub_2298622E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PassFileUtilities.writePassJSON(passJSON:to:)(const void *a1)
{
  v3 = sub_22A4DB11C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_22A4DB10C();
  memcpy(__dst, a1, sizeof(__dst));
  sub_22985B640();
  v6 = sub_22A4DB0FC();
  v8 = v7;

  if (!v1)
  {
    sub_22A4DB64C();
    return sub_2295798D4(v6, v8);
  }

  return result;
}

id static PassFileUtilities.zipPassDirectory(passDirectoryURL:)@<X0>(uint64_t a1@<X8>)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22A4DB57C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DD5EC();
  sub_22A4DB50C();

  v7 = [objc_allocWithZone(HMDFileManager) init];
  v8 = sub_22A4DB4EC();
  v9 = sub_22A4DB4EC();
  v15[0] = 0;
  v10 = [v7 zipItemAtURL:v8 toURL:v9 error:v15];

  v11 = v15[0];
  if (v10)
  {
    (*(v3 + 32))(a1, v6, v2);
    result = v11;
  }

  else
  {
    v13 = v15[0];
    sub_22A4DB3EC();

    swift_willThrow();
    result = (*(v3 + 8))(v6, v2);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_229862600@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22A4DB49C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22A4DB57C();
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = HMDCreateHomeKitDaemonCacheDirectory();
  if (v16)
  {
    v25 = v12;
    v17 = v16;
    sub_22A4DD5EC();
    v24[0] = v2;
    v24[1] = a1;

    sub_22A4DB4CC();

    sub_22A4DB7CC();
    v18 = sub_22A4DB76C();
    v20 = v19;
    (*(v8 + 8))(v11, v7);
    v27 = v18;
    v28 = v20;
    v21 = v24[0];
    (*(v3 + 104))(v6, *MEMORY[0x277CC91D8], v24[0]);
    sub_22962F254();
    sub_22A4DB56C();
    (*(v3 + 8))(v6, v21);

    return (*(v26 + 8))(v15, v25);
  }

  else
  {
    sub_22962F2A8();
    swift_allocError();
    *v23 = 0xD00000000000002CLL;
    *(v23 + 8) = 0x800000022A5998C0;
    *(v23 + 16) = 0;
    return swift_willThrow();
  }
}

void sub_229862908(uint64_t a1, char a2)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_self() defaultManager];
  v4 = sub_22A4DB4EC();
  v13[0] = 0;
  v5 = [v3 removeItemAtURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = *MEMORY[0x277D85DE8];

    v8 = v6;
  }

  else
  {
    v9 = v13[0];
    v10 = sub_22A4DB3EC();

    swift_willThrow();
    if (a2)
    {
      v13[0] = 0;
      v13[1] = 0xE000000000000000;
      sub_22A4DE1FC();
      MEMORY[0x22AAD08C0](0xD00000000000001ALL, 0x800000022A5998A0);
      sub_22A4DB57C();
      sub_22962E16C();
      v11 = sub_22A4DE5CC();
      MEMORY[0x22AAD08C0](v11);

      MEMORY[0x22AAD08C0](0x7265206874697720, 0xED0000203A726F72);
      swift_getErrorValue();
      sub_22A4DE5EC();
      sub_22A4DBD0C();
    }

    else
    {
    }

    v12 = *MEMORY[0x277D85DE8];
  }
}

uint64_t *PassLibrary.shared.unsafeMutableAddressor()
{
  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  return &static PassLibrary.shared;
}

void sub_229862B74(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F308, &qword_22A586680);
    sub_22A4DD8EC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F308, &qword_22A586680);
    sub_22A4DD8FC();
  }
}

uint64_t sub_229862C18(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8811F8, &qword_22A5837A0);
  return sub_22A4DD8FC();
}

uint64_t sub_229862C74()
{
  type metadata accessor for PassLibrary();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22A4DBA2C();
  result = sub_22A4DBA1C();
  *(v0 + 112) = result;
  static PassLibrary.shared = v0;
  return result;
}

uint64_t static PassLibrary.shared.getter()
{
  if (qword_281402F18 != -1)
  {
    swift_once();
  }
}

uint64_t sub_229862D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = *MEMORY[0x277D85DE8];
  *(v8 + 2024) = v31;
  *(v8 + 1720) = v30;
  *(v8 + 1704) = v29;
  *(v8 + 1696) = a8;
  *(v8 + 1688) = a7;
  *(v8 + 1680) = a6;
  *(v8 + 1672) = a5;
  *(v8 + 1664) = a4;
  *(v8 + 1656) = a3;
  *(v8 + 1648) = a2;
  *(v8 + 1640) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8811F8, &qword_22A5837A0);
  *(v8 + 1728) = v10;
  v11 = *(v10 - 8);
  *(v8 + 1736) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 1744) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DB0, &qword_22A5866B0);
  *(v8 + 1752) = v13;
  v14 = *(v13 - 8);
  *(v8 + 1760) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 1768) = swift_task_alloc();
  v16 = sub_22A4DB57C();
  *(v8 + 1776) = v16;
  v17 = *(v16 - 8);
  *(v8 + 1784) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 1792) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DB8, &qword_22A5866B8);
  *(v8 + 1800) = v19;
  v20 = *(v19 - 8);
  *(v8 + 1808) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 1816) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DC0, &qword_22A5866C0);
  *(v8 + 1824) = v22;
  v23 = *(v22 - 8);
  *(v8 + 1832) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 1840) = swift_task_alloc();
  v25 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_229862FEC, a6, 0);
}

uint64_t sub_229862FEC()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() sharedInstance];
  v0[194] = v1;
  v9 = sub_229562F68(0, &unk_281401BC8, 0x277D37FC0);
  sub_22A4DBD4C();
  v0[231] = 0;
  v2 = v0[230];
  v3 = v0[229];
  v4 = v0[228];

  v0[232] = v0[201];
  v10 = objc_opt_self();
  v5 = sub_22A4DD5AC();
  v0[233] = v5;
  v0[26] = v0;
  v0[31] = v0 + 193;
  v0[27] = sub_22986336C;
  swift_continuation_init();
  v0[167] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 164);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DC8, &unk_22A5866C8);
  v0[234] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v3 + 32))(boxed_opaque_existential_1, v2, v4);
  v0[160] = MEMORY[0x277D85DD0];
  v0[161] = 1107296256;
  v0[162] = sub_229866440;
  v0[163] = &block_descriptor_30_0;
  [v10 acquireAssertionOfType:1 withReason:v5 completion:v9];
  (*(v3 + 8))(boxed_opaque_existential_1, v4);
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 26);
}

uint64_t sub_22986336C()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 240);
  *(*v0 + 1880) = v3;
  v4 = *(v1 + 1680);
  if (v3)
  {
    v5 = sub_229865F84;
  }

  else
  {
    v5 = sub_2298634B8;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2298634B8()
{
  v68 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1864);
  v2 = *(v0 + 1544);
  *(v0 + 1888) = v2;

  if (!v2)
  {
    v17 = *(v0 + 1856);
    sub_22962F2A8();
    swift_allocError();
    *v18 = 0;
    *(v18 + 8) = 0;
    *(v18 + 16) = 3;
    swift_willThrow();
    goto LABEL_6;
  }

  v3 = *(v0 + 1856);
  v4 = *(v0 + 1672);
  v5 = *(v0 + 1664);
  v6 = *(v0 + 1656);
  v7 = *(v0 + 1648);
  v8 = v2;
  v9 = sub_22A4DD5AC();
  v10 = sub_22A4DD5AC();
  v11 = [v3 passWithPassTypeIdentifier:v9 serialNumber:v10];
  *(v0 + 1896) = v11;

  sub_22A4DE1FC();

  *(v0 + 1528) = v11;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E2C0, &qword_22A585A30);
  v13 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v13);

  sub_22A4DBD0C();

  if (!v12)
  {
    LOBYTE(v27) = 2;
    v28 = 2;
    goto LABEL_34;
  }

  v14 = *(v0 + 1848);
  v15 = v12;
  v16 = sub_2298690C4(v15);
  if (!v14)
  {
    v29 = v16;

    v30 = [v15 secureElementPass];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 paymentApplications];

      if (!v32)
      {
        __break(1u);
        return MEMORY[0x282200938](v33);
      }

      sub_229562F68(0, &qword_281401930, 0x277D37FE0);
      sub_22959E62C(&qword_27D87E2B8, &qword_281401930, 0x277D37FE0);
      v34 = sub_22A4DDB6C();

      if ((v34 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_22A4DE09C();
        sub_22A4DDBAC();
        v34 = *(v0 + 1448);
        v35 = *(v0 + 1456);
        v36 = *(v0 + 1464);
        v37 = *(v0 + 1472);
        v38 = *(v0 + 1480);
      }

      else
      {
        v39 = -1 << *(v34 + 32);
        v35 = v34 + 56;
        v36 = ~v39;
        v40 = -v39;
        if (v40 < 64)
        {
          v41 = ~(-1 << v40);
        }

        else
        {
          v41 = -1;
        }

        v38 = v41 & *(v34 + 56);

        v37 = 0;
      }

      v65 = (v0 + 1624);
      v42 = (v36 + 64) >> 6;
      do
      {
        if (v34 < 0)
        {
          v46 = sub_22A4DE12C();
          if (!v46)
          {
            goto LABEL_31;
          }

          *(v0 + 1632) = v46;
          swift_dynamicCast();
          v27 = *v65;
          if (!*v65)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v44 = v37;
          v45 = v38;
          if (!v38)
          {
            while (1)
            {
              v37 = v44 + 1;
              if (__OFADD__(v44, 1))
              {
                __break(1u);
              }

              if (v37 >= v42)
              {
                break;
              }

              v45 = *(v35 + 8 * v37);
              ++v44;
              if (v45)
              {
                goto LABEL_20;
              }
            }

LABEL_31:
            LOBYTE(v27) = 0;
            goto LABEL_32;
          }

LABEL_20:
          v38 = (v45 - 1) & v45;
          v27 = *(*(v34 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v45)))));
          if (!v27)
          {
            goto LABEL_32;
          }
        }

        v43 = [v27 supportsUWB];
      }

      while (!v43);
      LOBYTE(v27) = 1;
LABEL_32:
      sub_22953EE84();
    }

    else
    {
      LOBYTE(v27) = 2;
    }

    v28 = v29 & 0x101;
LABEL_34:
    *(v0 + 2026) = v28;
    *(v0 + 2033) = v27;
    v66 = *(v0 + 1872);
    v67 = *(v0 + 1856);
    v47 = *(v0 + 1808);
    v63 = *(v0 + 1800);
    v48 = *(v0 + 1704);
    v49 = *(v0 + 1696);
    v50 = *(v0 + 1688);
    v51 = *(v0 + 1672);
    v52 = *(v0 + 1664);
    v64 = *(v0 + 1816);
    sub_22A4DE1FC();

    *(v0 + 2030) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DD0, &qword_22A5866D8);
    v53 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v53);

    sub_22A4DBD0C();

    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000003ALL, 0x800000022A599D70);
    MEMORY[0x22AAD08C0](v52, v51);
    MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A599DB0);
    sub_22A4DB7DC();
    sub_229869950(&qword_281403860, MEMORY[0x277CC95F0]);
    v54 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v54);

    MEMORY[0x22AAD08C0](0xD000000000000010, 0x800000022A599DD0);
    *(v0 + 1520) = v49;
    v62 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DD8, &qword_22A5866E0);
    v55 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v55);

    MEMORY[0x22AAD08C0](0xD000000000000013, 0x800000022A599DF0);
    *(v0 + 1512) = v48;
    v56 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DE0, &qword_22A5866E8);
    v57 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v57);

    sub_22A4DBD0C();

    v58 = sub_22A4DD5AC();
    *(v0 + 1904) = v58;
    v59 = sub_22A4DB77C();
    *(v0 + 1912) = v59;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1488;
    *(v0 + 24) = sub_229863DBC;
    swift_continuation_init();
    *(v0 + 1400) = v63;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1376));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DE8, &unk_22A5866F0);
    sub_22A4DD8DC();
    (*(v47 + 32))(boxed_opaque_existential_1, v64, v63);
    *(v0 + 1344) = MEMORY[0x277D85DD0];
    *(v0 + 1352) = 1107296256;
    *(v0 + 1360) = sub_2298664E8;
    *(v0 + 1368) = &block_descriptor_33_1;
    [v67 configureHomeAuxiliaryCapabilitiesForSerialNumber:v58 homeIdentifier:v59 fromUnifiedAccessDescriptor:v62 andAliroDescriptor:v56 completion:?];
    (*(v47 + 8))(boxed_opaque_existential_1, v63);
    v61 = *MEMORY[0x277D85DE8];
    v33 = v0 + 16;

    return MEMORY[0x282200938](v33);
  }

  v17 = *(v0 + 1856);

  [v8 invalidate];
LABEL_6:

  v19 = *(v0 + 1840);
  v20 = *(v0 + 1816);
  v21 = *(v0 + 1792);
  v22 = *(v0 + 1768);
  v23 = *(v0 + 1744);

  v24 = *(v0 + 8);
  v25 = *MEMORY[0x277D85DE8];

  return v24();
}

uint64_t sub_229863DBC()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1920) = v3;
  v4 = *(v1 + 1680);
  if (v3)
  {
    v5 = sub_22986606C;
  }

  else
  {
    v5 = sub_229863F08;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229863F08()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = v0[239];
  v2 = v0[238];
  v3 = v0[214];
  v4 = v0[186];
  v0[241] = v4;
  v5 = v0[187];
  v0[242] = v5;
  v6 = v0[188];

  sub_22A4DE1FC();

  v7 = sub_229562F68(0, &qword_281401930, 0x277D37FE0);
  v0[243] = v7;
  v8 = MEMORY[0x22AAD0A20](v4, v7);
  MEMORY[0x22AAD08C0](v8);

  MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A599E50);
  v9 = MEMORY[0x22AAD0A20](v5, v7);
  MEMORY[0x22AAD08C0](v9);

  sub_22A4DBD0C();

  v16 = (v3 + *v3);
  v10 = v3[1];
  v11 = swift_task_alloc();
  v0[244] = v11;
  *v11 = v0;
  v11[1] = sub_229864144;
  v12 = v0[224];
  v13 = v0[215];
  v14 = *MEMORY[0x277D85DE8];

  return (v16)(v0 + 89, v12, v4);
}

uint64_t sub_229864144()
{
  v71 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 1952);
  v70 = *v1;
  v3[245] = v0;
  v40 = v2[89];
  v39 = v2[90];
  v38 = v2[91];
  v37 = v2[92];
  v36 = v2[93];
  v35 = v2[94];
  v34 = v2[95];
  v33 = v2[96];
  v32 = v2[97];
  v31 = v2[98];
  v30 = v2[99];
  v29 = v2[100];
  v28 = v2[101];
  v27 = v2[102];
  v26 = v2[103];
  v25 = v2[104];
  v24 = v2[105];
  v23 = v2[106];
  v22 = v2[107];
  v69 = *(v3 + 54);
  v21 = v2[110];
  v5 = v2[111];
  v6 = v2[112];
  v7 = v2[113];
  v8 = v2[114];
  v9 = v2[115];
  v10 = v2[116];
  v11 = v2[117];
  v68 = *(v3 + 944);
  v67 = v2[119];
  v66 = v2[120];
  v65 = v2[121];
  v64 = v2[122];
  v63 = v2[123];
  v62 = v2[124];
  v60 = *(v3 + 1001);
  v61 = *(v3 + 1000);
  v59 = v2[126];
  v58 = v2[127];
  v57 = v2[128];
  v56 = v2[129];
  v55 = v2[130];
  v54 = v2[131];
  v53 = v2[132];
  v52 = v2[133];
  v51 = *(v3 + 1072);
  v50 = v2[135];
  v49 = v2[136];
  v47 = *(v3 + 1097);
  v48 = *(v3 + 1096);
  v46 = *(v3 + 1098);
  v45 = v2[138];
  v44 = v2[139];
  v43 = v2[140];
  v42 = v2[141];
  v41 = v2[142];
  v12 = v2[143];

  if (v0)
  {
    v13 = v3[242];
    v14 = v3[241];
    v15 = v3[210];

    v16 = *MEMORY[0x277D85DE8];
    v17 = sub_229866188;
    v18 = v15;
  }

  else
  {
    v3[34] = v40;
    v3[35] = v39;
    v3[36] = v38;
    v3[37] = v37;
    v3[38] = v36;
    v3[39] = v35;
    v3[40] = v34;
    v3[41] = v33;
    v3[42] = v32;
    v3[43] = v31;
    v3[44] = v30;
    v3[45] = v29;
    v3[46] = v28;
    v3[47] = v27;
    v3[48] = v26;
    v3[49] = v25;
    v3[50] = v24;
    v3[51] = v23;
    v3[52] = v22;
    v3[55] = v21;
    v3[56] = v5;
    v3[57] = v6;
    v3[58] = v7;
    v3[59] = v8;
    v3[60] = v9;
    v3[61] = v10;
    v3[62] = v11;
    *(v3 + 53) = v69;
    v18 = v3[210];
    *(v3 + 504) = v68;
    v3[64] = v67;
    v3[65] = v66;
    v3[66] = v65;
    v3[67] = v64;
    v3[68] = v63;
    v3[69] = v62;
    *(v3 + 560) = v61;
    *(v3 + 561) = v60;
    v3[71] = v59;
    v3[72] = v58;
    v3[73] = v57;
    v3[74] = v56;
    v3[75] = v55;
    v3[76] = v54;
    v3[77] = v53;
    v3[78] = v52;
    *(v3 + 632) = v51;
    v3[80] = v50;
    v3[81] = v49;
    *(v3 + 656) = v48;
    *(v3 + 657) = v47;
    *(v3 + 658) = v46;
    v3[83] = v45;
    v3[84] = v44;
    v3[85] = v43;
    v3[86] = v42;
    v3[87] = v41;
    v3[88] = v12;
    v19 = *MEMORY[0x277D85DE8];
    v17 = sub_2298648B4;
  }

  return MEMORY[0x2822009F8](v17, v18, 0);
}

uint64_t sub_2298648B4()
{
  v1 = v0;
  v26 = *MEMORY[0x277D85DE8];
  v25 = v0[232];
  v2 = v0[224];
  if (v0[237])
  {
    v3 = v0 + 10;
    v4 = v0[222];
    v5 = v0[218];
    v6 = v0[217];
    v7 = v0[216];
    sub_22A4DE1FC();

    sub_229869950(&qword_27D87E238, MEMORY[0x277CC9260]);
    v8 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v8);

    sub_22A4DBD0C();

    v9 = sub_22A4DB4EC();
    v0[247] = v9;
    v0[10] = v0;
    v0[15] = v0 + 254;
    v0[11] = sub_2298653DC;
    swift_continuation_init();
    v0[151] = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 148);
    sub_22A4DD8DC();
    (*(v6 + 32))(boxed_opaque_existential_1, v5, v7);
    v0[144] = MEMORY[0x277D85DD0];
    v0[145] = 1107296256;
    v0[146] = sub_229862C18;
    v0[147] = &block_descriptor_42;
    [v25 replaceUnsignedPassAtURL:v9 withCompletionHandler:?];
    (*(v6 + 8))(boxed_opaque_existential_1, v7);
  }

  else
  {
    v3 = v0 + 18;
    v24 = v0 + 192;
    v11 = v0[223];
    v12 = v1[222];
    v13 = v1[221];
    v14 = v1[220];
    v15 = v1[219];
    sub_22A4DE1FC();

    sub_229869950(&qword_27D87E238, MEMORY[0x277CC9260]);
    v16 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v16);

    sub_22A4DBD0C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D130, &qword_22A578028);
    v17 = *(v11 + 72);
    v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_22A576180;
    (*(v11 + 16))(v19 + v18, v2, v12);
    v20 = sub_22A4DD81C();
    v1[246] = v20;

    v1[18] = v1;
    v1[23] = v24;
    v1[19] = sub_229864DCC;
    swift_continuation_init();
    v1[159] = v15;
    v21 = __swift_allocate_boxed_opaque_existential_1(v1 + 156);
    type metadata accessor for PKPassLibraryAddPassesStatus(0);
    sub_22A4DD8DC();
    (*(v14 + 32))(v21, v13, v15);
    v1[152] = MEMORY[0x277D85DD0];
    v1[153] = 1107296256;
    v1[154] = sub_2298665E8;
    v1[155] = &block_descriptor_37_3;
    [v25 addUnsignedPassesAtURLs:v20 withCompletionHandler:?];
    (*(v14 + 8))(v21, v15);
  }

  v22 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v3);
}

uint64_t sub_229864DCC()
{
  v1 = *(*v0 + 1680);
  v5 = *v0;
  v2 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_229864EEC, v1, 0);
}

uint64_t sub_229864EEC()
{
  v57 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1536);

  if (v1)
  {
    v2 = *(v0 + 1936);
    v3 = *(v0 + 1928);
    v4 = *(v0 + 1792);

    sub_2296EBFB4(v0 + 272);
    sub_22962F2A8();
    swift_allocError();
    *v5 = v1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 2;
    swift_willThrow();
    v6 = [objc_opt_self() defaultManager];
    v7 = sub_22A4DB4EC();
    *(v0 + 1560) = 0;
    v8 = [v6 removeItemAtURL:v7 error:v0 + 1560];

    v9 = *(v0 + 1560);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v32 = v9;
      v33 = sub_22A4DB3EC();

      swift_willThrow();
    }

    v34 = *(v0 + 1888);
    v35 = *(v0 + 1856);
    (*(*(v0 + 1784) + 8))(*(v0 + 1792), *(v0 + 1776));
LABEL_15:
    [v34 invalidate];

    v50 = *(v0 + 1840);
    v51 = *(v0 + 1816);
    v52 = *(v0 + 1792);
    v53 = *(v0 + 1768);
    v54 = *(v0 + 1744);

    v55 = *(v0 + 8);
    v56 = *MEMORY[0x277D85DE8];

    return v55();
  }

  *(v0 + 1984) = 0;
  v11 = *(v0 + 1856);
  v12 = *(v0 + 1672);
  v13 = *(v0 + 1664);
  v14 = *(v0 + 1656);
  v15 = *(v0 + 1648);
  v16 = sub_22A4DD5AC();
  v17 = sub_22A4DD5AC();
  v18 = [v11 passWithPassTypeIdentifier:v16 serialNumber:v17];
  *(v0 + 1992) = v18;

  if (!v18 || (objc_opt_self(), v19 = swift_dynamicCastObjCClass(), (*(v0 + 2000) = v19) == 0))
  {
    v36 = *(v0 + 1936);
    v37 = *(v0 + 1928);
    v38 = *(v0 + 1792);

    sub_2296EBFB4(v0 + 272);
    sub_22962F2A8();
    swift_allocError();
    *v39 = 0xD000000000000026;
    *(v39 + 8) = 0x800000022A599E90;
    *(v39 + 16) = 0;
    swift_willThrow();

    v40 = [objc_opt_self() defaultManager];
    v41 = sub_22A4DB4EC();
    *(v0 + 1568) = 0;
    v42 = [v40 removeItemAtURL:v41 error:v0 + 1568];

    v43 = *(v0 + 1568);
    if (v42)
    {
      v44 = v43;
    }

    else
    {
      v45 = v43;
      v46 = sub_22A4DB3EC();

      swift_willThrow();
    }

    v34 = *(v0 + 1888);
    v35 = *(v0 + 1856);
    v47 = *(v0 + 1792);
    v48 = *(v0 + 1784);
    v49 = *(v0 + 1776);

    (*(v48 + 8))(v47, v49);
    goto LABEL_15;
  }

  v20 = v19;
  v21 = v18;
  sub_22A4DE1FC();

  v22 = [v20 description];
  v23 = sub_22A4DD5EC();
  v25 = v24;

  MEMORY[0x22AAD08C0](v23, v25);

  sub_22A4DBD0C();

  v26 = swift_task_alloc();
  *(v0 + 2008) = v26;
  *v26 = v0;
  v26[1] = sub_2298659A0;
  v27 = *(v0 + 1680);
  v28 = *(v0 + 2026);
  v29 = *(v0 + 2024);
  v30 = *MEMORY[0x277D85DE8];

  return sub_229867F40(v20, v29, v28, 0, 0xF000000000000000);
}

uint64_t sub_2298653DC()
{
  v1 = *(*v0 + 1680);
  v5 = *v0;
  v2 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2298654FC, v1, 0);
}

uint64_t sub_2298654FC()
{
  v53 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2032);

  if (v1)
  {
    *(v0 + 1984) = 1;
    v2 = *(v0 + 1856);
    v3 = *(v0 + 1672);
    v4 = *(v0 + 1664);
    v5 = *(v0 + 1656);
    v6 = *(v0 + 1648);
    v7 = sub_22A4DD5AC();
    v8 = sub_22A4DD5AC();
    v9 = [v2 passWithPassTypeIdentifier:v7 serialNumber:v8];
    *(v0 + 1992) = v9;

    if (v9)
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      *(v0 + 2000) = v10;
      if (v10)
      {
        v11 = v10;
        v12 = v9;
        sub_22A4DE1FC();

        v13 = [v11 description];
        v14 = sub_22A4DD5EC();
        v16 = v15;

        MEMORY[0x22AAD08C0](v14, v16);

        sub_22A4DBD0C();

        v17 = swift_task_alloc();
        *(v0 + 2008) = v17;
        *v17 = v0;
        v17[1] = sub_2298659A0;
        v18 = *(v0 + 1680);
        v19 = *(v0 + 2026);
        v20 = *(v0 + 2024);
        v21 = *MEMORY[0x277D85DE8];

        return sub_229867F40(v11, v20, v19, 0, 0xF000000000000000);
      }
    }

    v32 = *(v0 + 1936);
    v33 = *(v0 + 1928);
    v34 = *(v0 + 1792);

    sub_2296EBFB4(v0 + 272);
    sub_22962F2A8();
    swift_allocError();
    *v35 = 0xD000000000000026;
    *(v35 + 8) = 0x800000022A599E90;
    *(v35 + 16) = 0;
    swift_willThrow();

    v36 = [objc_opt_self() defaultManager];
    v37 = sub_22A4DB4EC();
    *(v0 + 1568) = 0;
    v38 = [v36 removeItemAtURL:v37 error:v0 + 1568];

    v30 = *(v0 + 1568);
    if (!v38)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v23 = *(v0 + 1936);
    v24 = *(v0 + 1928);
    v25 = *(v0 + 1792);

    sub_2296EBFB4(v0 + 272);
    sub_22962F2A8();
    swift_allocError();
    *v26 = xmmword_22A5865C0;
    *(v26 + 16) = 3;
    swift_willThrow();
    v27 = [objc_opt_self() defaultManager];
    v28 = sub_22A4DB4EC();
    *(v0 + 1616) = 0;
    v29 = [v27 removeItemAtURL:v28 error:v0 + 1616];

    v30 = *(v0 + 1616);
    if (!v29)
    {
LABEL_10:
      v39 = v30;
      v40 = sub_22A4DB3EC();

      swift_willThrow();
      goto LABEL_11;
    }
  }

  v31 = v30;
LABEL_11:
  v41 = *(v0 + 1888);
  v42 = *(v0 + 1856);
  v43 = *(v0 + 1792);
  v44 = *(v0 + 1784);
  v45 = *(v0 + 1776);

  (*(v44 + 8))(v43, v45);
  [v41 invalidate];

  v46 = *(v0 + 1840);
  v47 = *(v0 + 1816);
  v48 = *(v0 + 1792);
  v49 = *(v0 + 1768);
  v50 = *(v0 + 1744);

  v51 = *(v0 + 8);
  v52 = *MEMORY[0x277D85DE8];

  return v51();
}

uint64_t sub_2298659A0(__int16 a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 2008);
  v14 = *v2;
  *(v3 + 2028) = a1;
  *(v3 + 2016) = v1;

  if (v1)
  {
    v5 = *(v3 + 1936);
    v6 = *(v3 + 1928);
    v7 = *(v3 + 1680);

    sub_2296EBFB4(v3 + 272);
    v8 = *MEMORY[0x277D85DE8];
    v9 = sub_229866284;
    v10 = v7;
  }

  else
  {
    v10 = *(v3 + 1680);
    v11 = *MEMORY[0x277D85DE8];
    v9 = sub_229865B2C;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

void sub_229865B2C()
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 2000) secureElementPass];
  if (!v1)
  {
    v11 = *(v0 + 1992);

LABEL_26:
    v25 = 2;
    goto LABEL_27;
  }

  v2 = v1;
  v3 = [v1 paymentApplications];

  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = *(v0 + 1944);
  sub_22959E62C(&qword_27D87E2B8, &qword_281401930, 0x277D37FE0);
  v5 = sub_22A4DDB6C();

  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = *(v0 + 1944);
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_22A4DDBAC();
    v5 = *(v0 + 1408);
    v7 = *(v0 + 1416);
    v8 = *(v0 + 1424);
    v9 = *(v0 + 1432);
    v10 = *(v0 + 1440);
  }

  else
  {
    v12 = -1 << *(v5 + 32);
    v7 = v5 + 56;
    v8 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v10 = v14 & *(v5 + 56);

    v9 = 0;
  }

  v15 = (v8 + 64) >> 6;
  do
  {
    if (v5 < 0)
    {
      v20 = sub_22A4DE12C();
      if (!v20)
      {
        goto LABEL_22;
      }

      v21 = *(v0 + 1944);
      *(v0 + 1600) = v20;
      swift_dynamicCast();
      v16 = *(v0 + 1592);
      if (!v16)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = v9;
      v19 = v10;
      if (!v10)
      {
        while (1)
        {
          v9 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
          }

          if (v9 >= v15)
          {
            break;
          }

          v19 = *(v7 + 8 * v9);
          ++v18;
          if (v19)
          {
            goto LABEL_11;
          }
        }

LABEL_22:
        LODWORD(v16) = 0;
        goto LABEL_23;
      }

LABEL_11:
      v10 = (v19 - 1) & v19;
      v16 = *(*(v5 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v19)))));
      if (!v16)
      {
        goto LABEL_23;
      }
    }

    v17 = [v16 supportsUWB];
  }

  while (!v17);
  LODWORD(v16) = 1;
LABEL_23:
  v22 = *(v0 + 1992);
  v23 = *(v0 + 2033);

  sub_22953EE84();

  if (v23 == 2)
  {
    goto LABEL_26;
  }

  v24 = *(v0 + 2033);
  if (v16 == (v24 & 1))
  {
    goto LABEL_26;
  }

  v25 = v16 & (v24 ^ 1);
LABEL_27:
  v26 = *(v0 + 2028);
  v27 = *(v0 + 1792);
  v28 = *(v0 + 1640);
  v29 = *(v0 + 1928);
  *v28 = *(v0 + 1984);
  *(v28 + 8) = v29;
  memcpy((v28 + 24), (v0 + 272), 0x1B8uLL);
  *(v28 + 464) = v26 & 1;
  *(v28 + 465) = HIBYTE(v26) & 1;
  *(v28 + 466) = v25;
  v30 = [objc_opt_self() defaultManager];
  v31 = sub_22A4DB4EC();
  *(v0 + 1584) = 0;
  v32 = [v30 removeItemAtURL:v31 error:v0 + 1584];

  v33 = *(v0 + 1584);
  if (v32)
  {
    v34 = v33;
  }

  else
  {
    v35 = v33;
    v36 = sub_22A4DB3EC();

    swift_willThrow();
  }

  v37 = *(v0 + 1888);
  v38 = *(v0 + 1856);
  v39 = *(v0 + 1840);
  v40 = *(v0 + 1816);
  v41 = *(v0 + 1792);
  v42 = *(v0 + 1784);
  v43 = *(v0 + 1776);
  v44 = *(v0 + 1768);
  v45 = *(v0 + 1744);

  (*(v42 + 8))(v41, v43);
  [v37 invalidate];

  v46 = *(v0 + 8);
  v47 = *MEMORY[0x277D85DE8];

  v46();
}

uint64_t sub_229865F84()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[235];
  v2 = v0[233];
  v3 = v0[232];
  swift_willThrow();

  v4 = v0[235];
  v5 = v0[230];
  v6 = v0[227];
  v7 = v0[224];
  v8 = v0[221];
  v9 = v0[218];

  v10 = v0[1];
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_22986606C()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[240];
  v2 = v0[239];
  v3 = v0[238];
  v4 = v0[237];
  v5 = v0[236];
  v6 = v0[232];
  swift_willThrow();

  [v5 invalidate];
  v7 = v0[240];
  v8 = v0[230];
  v9 = v0[227];
  v10 = v0[224];
  v11 = v0[221];
  v12 = v0[218];

  v13 = v0[1];
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

uint64_t sub_229866188()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1888);
  v2 = *(v0 + 1856);

  [v1 invalidate];
  v3 = *(v0 + 1960);
  v4 = *(v0 + 1840);
  v5 = *(v0 + 1816);
  v6 = *(v0 + 1792);
  v7 = *(v0 + 1768);
  v8 = *(v0 + 1744);

  v9 = *(v0 + 8);
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

uint64_t sub_229866284()
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1992);
  v2 = *(v0 + 1792);

  v3 = [objc_opt_self() defaultManager];
  v4 = sub_22A4DB4EC();
  *(v0 + 1576) = 0;
  v5 = [v3 removeItemAtURL:v4 error:v0 + 1576];

  v6 = *(v0 + 1576);
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v8 = v6;
    v9 = sub_22A4DB3EC();

    swift_willThrow();
  }

  v10 = *(v0 + 1888);
  v11 = *(v0 + 1856);
  v12 = *(v0 + 1792);
  v13 = *(v0 + 1784);
  v14 = *(v0 + 1776);

  (*(v13 + 8))(v12, v14);
  [v10 invalidate];

  v15 = *(v0 + 2016);
  v16 = *(v0 + 1840);
  v17 = *(v0 + 1816);
  v18 = *(v0 + 1792);
  v19 = *(v0 + 1768);
  v20 = *(v0 + 1744);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

void sub_229866440(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DC0, &qword_22A5866C0);
    sub_22A4DD8EC();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DC0, &qword_22A5866C0);
    sub_22A4DD8FC();
  }
}

void sub_2298664E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a5)
  {
    v6 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DB8, &qword_22A5866B8);
    sub_22A4DD8EC();
  }

  else
  {
    sub_229562F68(0, &qword_281401930, 0x277D37FE0);
    sub_22A4DD83C();
    sub_22A4DD83C();
    sub_22A4DD83C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DB8, &qword_22A5866B8);
    sub_22A4DD8FC();
  }
}

uint64_t sub_2298665E8(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DB0, &qword_22A5866B0);
  return sub_22A4DD8FC();
}

uint64_t sub_229866644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](sub_22986666C, 0, 0);
}

uint64_t sub_22986666C()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[3] = v1;
  v13 = sub_229562F68(0, &unk_281401BC8, 0x277D37FC0);
  sub_22A4DBD4C();
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  v7 = v0[2];
  v8 = sub_22A4DD5AC();
  v9 = sub_22A4DD5AC();
  v10 = [v7 passWithPassTypeIdentifier:v8 serialNumber:{v9, v13}];

  *v6 = v10;
  v11 = v0[1];

  return v11();
}

uint64_t sub_22986681C()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[3] = v1;
  v16 = sub_229562F68(0, &unk_281401BC8, 0x277D37FC0);
  sub_22A4DBD4C();

  v2 = v0[2];
  v3 = [v2 passes];
  sub_229562F68(0, &unk_2814017B8, 0x277D37F98);
  v4 = sub_22A4DD83C();

  v19 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v17 = v2;
    v18 = v0;
    v2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AAD13F0](v2, v4);
      }

      else
      {
        if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v4 + 8 * v2 + 32);
      }

      v7 = v6;
      v0 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v8 = [v6 secureElementPass];
      if (v8 && (v9 = v8, v10 = [v8 isHomeKeyPass], v9, (v10 & 1) != 0))
      {
        sub_22A4DE27C();
        v11 = *(v19 + 16);
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      else
      {
      }

      ++v2;
      if (v0 == i)
      {
        v0 = v18;
        v12 = v19;
        v2 = v17;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_19:
  v13 = v0[4];

  *v13 = v12;
  v14 = v0[1];

  return v14();
}