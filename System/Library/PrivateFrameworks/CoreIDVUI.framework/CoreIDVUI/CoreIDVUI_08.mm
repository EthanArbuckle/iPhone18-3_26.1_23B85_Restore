uint64_t sub_24583CC8C()
{
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[53];
  v4 = v0[51];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[17] = *(v2 + 216);
  *(v2 + 216) = 0x8000000000000000;
  sub_24584033C(v3, v1, isUniquelyReferenced_nonNull_native, v0 + 17);
  if (v4)
  {

    *(v2 + 216) = v0[17];
  }

  else
  {

    *(v2 + 216) = v0[17];
    swift_endAccess();

    v7 = v0[52];

    v8 = v7;
    v9 = swift_task_alloc();
    v0[56] = v9;
    *v9 = v0;
    v9[1] = sub_24583CE24;

    return sub_24583E6D4(v7);
  }
}

uint64_t sub_24583CE24(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 456) = v1;

  if (v1)
  {
    v5 = sub_24583DF68;
  }

  else
  {
    *(v4 + 464) = a1;
    v5 = sub_24583CF68;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24583CF68()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 400);

  v3 = *(v0 + 456);
  v4 = *(v0 + 464);
  *(v0 + 400) = v4;
  v5 = v1;
  v6 = sub_24590CAB4();

  if (v6 >> 62)
  {
    v7 = sub_245911424();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = *(v0 + 304);
    v9 = sub_24590CAB4();
    v10 = sub_24583EB10(v9, v8);
    *(v0 + 408) = v3;
    if (v3)
    {
      v11 = *(v0 + 320);
      v13 = *(v0 + 208);
      v12 = *(v0 + 216);
      v14 = *(v0 + 200);

      swift_setDeallocating();
      sub_2457B2F00(v11 + 32);

      (*(v13 + 8))(v12, v14);

      v15 = *(v0 + 8);

      return v15();
    }

    v22 = v10;

    sub_24590CAE4();
    sub_24590CAC4();

    sub_24590CAA4();
    v23 = objc_allocWithZone(sub_24590CAF4());
    *(v0 + 416) = sub_24590CAD4();
    v24 = sub_24590CAB4();
    if (v24 >> 62)
    {
      v70 = v24;
      v25 = sub_245911424();
      v24 = v70;
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = MEMORY[0x277D84F90];
    v75 = v22;
    if (v25)
    {
      v27 = v24;
      *(v0 + 120) = MEMORY[0x277D84F90];
      v20 = sub_24577CCB4(0, v25 & ~(v25 >> 63), 0);
      if (v25 < 0)
      {
        __break(1u);
        goto LABEL_55;
      }

      v29 = 0;
      v76 = v0;
      v30 = *(v0 + 120);
      v31 = v27;
      v32 = v27 & 0xC000000000000001;
      v33 = v27;
      v34 = v25;
      do
      {
        if (v32)
        {
          v35 = MEMORY[0x245D76B30](v29, v31);
        }

        else
        {
          v35 = *(v31 + 8 * v29 + 32);
        }

        v36 = v35;
        sub_24590C3B4();
        v37 = sub_245910A84();
        v39 = v38;

        *(v76 + 120) = v30;
        v41 = *(v30 + 16);
        v40 = *(v30 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_24577CCB4((v40 > 1), v41 + 1, 1);
          v30 = *(v76 + 120);
        }

        ++v29;
        *(v30 + 16) = v41 + 1;
        v42 = v30 + 16 * v41;
        *(v42 + 32) = v37;
        *(v42 + 40) = v39;
        v31 = v33;
      }

      while (v34 != v29);

      v26 = MEMORY[0x277D84F90];
      v0 = v76;
    }

    else
    {

      v30 = MEMORY[0x277D84F90];
    }

    *(v0 + 424) = v30;
    if (v75 >> 62)
    {
      v53 = sub_245911424();
      if (v53)
      {
LABEL_30:
        *(v0 + 128) = v26;
        v20 = sub_24577CCB4(0, v53 & ~(v53 >> 63), 0);
        if ((v53 & 0x8000000000000000) == 0)
        {
          v54 = *(v0 + 128);
          if ((v75 & 0xC000000000000001) != 0)
          {
            v55 = 0;
            do
            {
              MEMORY[0x245D76B30](v55, v75);
              sub_24590C3B4();
              v56 = sub_245910A84();
              v58 = v57;

              swift_unknownObjectRelease();
              *(v0 + 128) = v54;
              v60 = *(v54 + 16);
              v59 = *(v54 + 24);
              if (v60 >= v59 >> 1)
              {
                sub_24577CCB4((v59 > 1), v60 + 1, 1);
                v54 = *(v0 + 128);
              }

              ++v55;
              *(v54 + 16) = v60 + 1;
              v61 = v54 + 16 * v60;
              *(v61 + 32) = v56;
              *(v61 + 40) = v58;
            }

            while (v53 != v55);
          }

          else
          {
            v62 = 32;
            do
            {
              v63 = *(v75 + v62);
              sub_24590C3B4();
              v64 = sub_245910A84();
              v66 = v65;

              *(v0 + 128) = v54;
              v68 = *(v54 + 16);
              v67 = *(v54 + 24);
              if (v68 >= v67 >> 1)
              {
                sub_24577CCB4((v67 > 1), v68 + 1, 1);
                v54 = *(v0 + 128);
              }

              *(v54 + 16) = v68 + 1;
              v69 = v54 + 16 * v68;
              *(v69 + 32) = v64;
              *(v69 + 40) = v66;
              v62 += 8;
              --v53;
            }

            while (v53);
          }

          goto LABEL_46;
        }

LABEL_55:
        __break(1u);
        return MEMORY[0x2822009F8](v20, v21, v28);
      }
    }

    else
    {
      v53 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
        goto LABEL_30;
      }
    }

    v54 = MEMORY[0x277D84F90];
LABEL_46:
    *(v0 + 432) = v54;
    Strong = swift_weakLoadStrong();
    *(v0 + 440) = Strong;
    if (Strong)
    {
      v21 = Strong;
      v20 = sub_24583CC8C;
LABEL_48:
      v28 = 0;

      return MEMORY[0x2822009F8](v20, v21, v28);
    }

    v72 = *(v0 + 416);

    v73 = v72;
    v74 = swift_task_alloc();
    *(v0 + 448) = v74;
    *v74 = v0;
    v74[1] = sub_24583CE24;

    return sub_24583E6D4(v72);
  }

  v17 = swift_weakLoadStrong();
  *(v0 + 472) = v17;
  if (v17)
  {
    v18 = v17;
    sub_24590C4A4();
    *(v0 + 520) = v19;
    v20 = sub_24583D6B4;
    v21 = v18;
    goto LABEL_48;
  }

  sub_24590C714();
  v43 = sub_24590F344();
  v44 = sub_245910F54();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_245767000, v43, v44, "PassportNFCReader finished full NFC read", v45, 2u);
    MEMORY[0x245D77B40](v45, -1, -1);
  }

  v46 = *(v0 + 524);
  v47 = *(v0 + 288);
  v48 = *(v0 + 272);
  v49 = *(v0 + 256);

  v47(v48, v49);
  v50 = swift_task_alloc();
  *(v0 + 480) = v50;
  *v50 = v0;
  v50[1] = sub_24583D874;
  v51 = *(v0 + 392);
  v52 = *(v0 + 320);

  return sub_24583EEAC(v52, v51, v46 & 1);
}

uint64_t sub_24583D6B4()
{
  *(*(v0 + 472) + 156) = *(v0 + 520);

  return MEMORY[0x2822009F8](sub_24583D724, 0, 0);
}

uint64_t sub_24583D724()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "PassportNFCReader finished full NFC read", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = *(v0 + 524);
  v5 = *(v0 + 288);
  v6 = *(v0 + 272);
  v7 = *(v0 + 256);

  v5(v6, v7);
  v8 = swift_task_alloc();
  *(v0 + 480) = v8;
  *v8 = v0;
  v8[1] = sub_24583D874;
  v9 = *(v0 + 392);
  v10 = *(v0 + 320);

  return sub_24583EEAC(v10, v9, v4 & 1);
}

uint64_t sub_24583D874()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_24583E078;
  }

  else
  {
    v2 = sub_24583D988;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24583D988()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 496) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24583DBF0, Strong, 0);
  }

  else
  {
    v2 = *(*(v0 + 160) + *(v0 + 296));
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *(v0 + 232);
      v6 = *(v4 + 16);
      v5 = v4 + 16;
      v7 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
      v17 = *(v5 + 56);
      v18 = v6;
      v8 = (*(v0 + 176) + 8);

      do
      {
        v9 = *(v0 + 240);
        v10 = *(v0 + 224);
        v11 = *(v0 + 184);
        v12 = *(v0 + 168);
        v18(v9, v7, v10);
        *(v0 + 512) = 4;
        *(v0 + 516) = 0;
        sub_245910D74();
        (*v8)(v11, v12);
        (*(v5 - 8))(v9, v10);
        v7 += v17;
        --v3;
      }

      while (v3);
    }

    else
    {
    }

    v13 = *(v0 + 400);
    v14 = *(v0 + 320);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    swift_setDeallocating();

    sub_2457B2F00(v14 + 32);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_24583DBF0()
{
  *(*(v0 + 496) + 160) = 1;

  return MEMORY[0x2822009F8](sub_24583DC60, 0, 0);
}

uint64_t sub_24583DC60()
{
  v1 = *(*(v0 + 160) + *(v0 + 296));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 232);
    v5 = *(v3 + 16);
    v4 = v3 + 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v16 = *(v4 + 56);
    v17 = v5;
    v7 = (*(v0 + 176) + 8);

    do
    {
      v8 = *(v0 + 240);
      v9 = *(v0 + 224);
      v10 = *(v0 + 184);
      v11 = *(v0 + 168);
      v17(v8, v6, v9);
      *(v0 + 512) = 4;
      *(v0 + 516) = 0;
      sub_245910D74();
      (*v7)(v10, v11);
      (*(v4 - 8))(v8, v9);
      v6 += v16;
      --v2;
    }

    while (v2);
  }

  else
  {
  }

  v12 = *(v0 + 400);
  v13 = *(v0 + 320);
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

  swift_setDeallocating();

  sub_2457B2F00(v13 + 32);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_24583DE68()
{
  v1 = v0[40];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];

  swift_setDeallocating();
  sub_2457B2F00(v1 + 32);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24583DF68()
{
  v1 = v0[52];
  v2 = v0[50];
  v3 = v0[40];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];

  swift_setDeallocating();
  sub_2457B2F00(v3 + 32);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24583E078()
{
  v1 = v0[50];
  v2 = v0[40];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];

  swift_setDeallocating();

  sub_2457B2F00(v2 + 32);

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24583E224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24583E244, 0, 0);
}

uint64_t sub_24583E244()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24583E2FC, Strong, 0);
  }

  else
  {
    **(v0 + 16) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24583E2FC()
{
  sub_245838A54();

  return MEMORY[0x2822009F8](sub_24583E36C, 0, 0);
}

uint64_t sub_24583E404(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24583E458(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24583E4B0(unsigned __int8 *a1, float a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A7F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D20);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - v11;
  result = *(v2 + OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_streamContinuations);
  v14 = *(result + 16);
  if (v14)
  {
    v22 = *a1;
    v16 = *(v10 + 16);
    v15 = v10 + 16;
    v17 = result + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v20 = *(v15 + 56);
    v21 = v16;
    v18 = (v15 - 8);
    v19[1] = result;

    do
    {
      v21(v12, v17, v9);
      v23 = v22;
      v24 = a2;
      sub_245910D74();
      (*(v6 + 8))(v8, v5);
      (*v18)(v12, v9);
      v17 += v20;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_24583E6D4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24583E770, 0, 0);
}

uint64_t sub_24583E770()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_245910D64();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  v5[5] = v3;
  v6 = v3;
  v7 = v2;
  v8 = sub_24586D540(0, 0, v1, &unk_24591AFE8, v5);
  v0[6] = v8;
  v7[OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_isGetPendingCommandsRunning] = 1;
  *&v7[OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_getPendingCommandsTask] = v8;

  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = sub_24590CAF4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
  *v9 = v0;
  v9[1] = sub_24583E91C;
  v12 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 2, v8, v10, v11, v12);
}

uint64_t sub_24583E91C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_24583EAA4;
  }

  else
  {
    v2 = sub_24583EA30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24583EA30()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24583EAA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24583EB10(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v30 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_24590EA74();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24590EA84();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v11 = v22)
  {
    v23 = v6;
    v24 = v8;
    v25 = v13;
    v26 = v10;
    v27 = v11;
    v13 = 0;
    v10 = a1 & 0xC000000000000001;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v10)
      {
        v11 = MEMORY[0x245D76B30](v13, a1);
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v11 = *(a1 + 8 * v13 + 32);
      }

      v15 = v11;
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      sub_24583FD34(v13, v11, v30, v4, a1, &v31, ObjectType);
      if (v3)
      {

        (*(v28 + 104))(v24, *MEMORY[0x277CFFA70], v23);
        v16 = v3;
        sub_2458CC8AC(MEMORY[0x277D84F90]);
        v17 = v25;
        sub_24590EA94();
        sub_2458410FC(&qword_27EE2BC40, 255, MEMORY[0x277CFFE30]);
        v18 = v27;
        swift_allocError();
        v19 = v26;
        (*(v26 + 16))(v20, v17, v18);
        swift_willThrow();

        return (*(v19 + 8))(v17, v18);
      }

      ++v13;
      if (v6 == i)
      {
        return v31;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v22 = v11;
    i = sub_245911424();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_24583EEAC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 216) = a3;
  *(v4 + 40) = a1;
  v5 = sub_24590EA74();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  v6 = sub_24590EA84();
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 - 8);
  *(v4 + 104) = swift_task_alloc();
  v7 = sub_24590F354();
  *(v4 + 112) = v7;
  *(v4 + 120) = *(v7 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24583F044, 0, 0);
}

uint64_t sub_24583F044()
{
  v1 = (v0[7] + OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_passportInformation);
  v2 = v1[2];
  v3 = v1[3];
  v20 = *v1;
  v21 = v1[1];

  MEMORY[0x245D76160](v2, v3);
  v4 = v1[4];
  v5 = v1[5];

  MEMORY[0x245D76160](v4, v5);

  v0[19] = v20;
  v0[20] = v21;
  Strong = swift_weakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24583F338, Strong, 0);
  }

  else
  {
    v7 = v0[17];
    v8 = v0[15];
    v19 = v0[14];
    v10 = v0[12];
    v9 = v0[13];
    v12 = v0[10];
    v11 = v0[11];
    v14 = v0[8];
    v13 = v0[9];

    (*(v13 + 104))(v12, *MEMORY[0x277CFF9A8], v14);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA94();
    sub_2458410FC(&qword_27EE2BC40, 255, MEMORY[0x277CFFE30]);
    v15 = swift_allocError();
    (*(v10 + 16))(v16, v9, v11);
    sub_24590C714();
    sub_24590C724();
    (*(v8 + 8))(v7, v19);
    (*(v10 + 8))(v9, v11);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_24583F338()
{
  v1 = *(v0 + 168);
  swift_beginAccess();
  *(v0 + 176) = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_24583F3C4, 0, 0);
}

uint64_t sub_24583F3C4()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_proofingFlowManager);
  v2 = *(v1 + 312);
  if (v2)
  {
    v3 = v2;
    v4 = sub_24590D7F4();

    v5 = (v4 == 2) | v4;
    v6 = *(v1 + 312);
    if (v6)
    {
      v7 = v6;
      v8 = sub_24590D7E4();

      if (v8 != 2 && (v8 & 1) == 0)
      {

        sub_24590C714();
        v9 = sub_24590F344();
        v10 = sub_245910F84();
        v11 = os_log_type_enabled(v9, v10);
        v12 = *(v0 + 144);
        v13 = *(v0 + 112);
        v14 = *(v0 + 120);
        if (v11)
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_245767000, v9, v10, "isDeviceCrossCheckEnabled is false skipping prepareForDeviceCrossCheck", v15, 2u);
          MEMORY[0x245D77B40](v15, -1, -1);
        }

        (*(v14 + 8))(v12, v13);
        v23 = sub_245847650();
        if (qword_27EE286A0 != -1)
        {
          swift_once();
        }

        sub_24578789C(v23, 0, 0xF000000000000000);

        sub_245771C44(0, 0xF000000000000000);

        v24 = *(v0 + 8);

        return v24();
      }
    }
  }

  else
  {
    v5 = 1;
  }

  v16 = *(v0 + 216);
  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *v17 = v0;
  v17[1] = sub_24583F73C;
  v18 = *(v0 + 176);
  v19 = *(v0 + 152);
  v20 = *(v0 + 160);
  v21 = *(v0 + 48);

  return sub_245843658(v18, v19, v20, v21, v16 & 1, v5 & 1);
}

uint64_t sub_24583F73C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {

    *(v6 + 200) = a2;
    *(v6 + 208) = a1;

    return MEMORY[0x2822009F8](sub_24583F91C, 0, 0);
  }
}

uint64_t sub_24583F91C()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = sub_245847650();
  if (v3)
  {
    sub_24590C714();
    v5 = sub_24590F344();
    v6 = sub_245910F64();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_245767000, v5, v6, "Unable to get data for ODI ignoring error", v7, 2u);
      MEMORY[0x245D77B40](v7, -1, -1);
    }

    v9 = v0[15];
    v8 = v0[16];
    v10 = v0[14];

    (*(v9 + 8))(v8, v10);
    v11 = sub_2458B8388(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = v4;
  }

  if (qword_27EE286A0 != -1)
  {
    swift_once();
  }

  sub_24578789C(v11, v1, v2);

  sub_245771C44(v1, v2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24583FAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24583FB10, 0, 0);
}

uint64_t sub_24583FB10()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_24583FBB4;
  v2 = *(v0 + 32);

  return sub_245880A8C(v2);
}

uint64_t sub_24583FBB4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_24583FD0C;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_24583FCDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24583FCDC()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = *(v0 + 56);
  *(v1 + OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_isGetPendingCommandsRunning) = 0;
  return (*(v0 + 8))();
}

uint64_t sub_24583FD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7)
{
  v59 = a3;
  v57 = a7;
  v58 = a6;
  v54 = a5;
  v55 = a4;
  v56 = a1;
  v61 = sub_24590EA74();
  v8 = *(v61 - 1);
  MEMORY[0x28223BE20](v61);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A7F0);
  v52 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D20);
  v53 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v16 = sub_24590C3B4();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  v20 = (v18 & 0x2000000000000000) == 0;
  v21 = a2;
  if (v20)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19 || (sub_24590C3B4(), v22 = sub_24590C0B4(), v23 >> 60 == 15))
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_2459114D4();

    v63 = 0xD000000000000017;
    v64 = 0x8000000245929730;
    v24 = sub_24590C3A4();
    MEMORY[0x245D76160](v24);

    (*(v8 + 104))(v10, *MEMORY[0x277CFF920], v61);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2458410FC(&qword_27EE2BC40, 255, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    return swift_willThrow();
  }

  v26 = v22;
  v27 = v23;
  sub_24590C3A4();
  v28 = v60;
  v29 = sub_24590C6D4();
  if (!v28)
  {
    v48 = v30;
    v49 = v29;
    v50 = v26;
    v51 = v27;

    sub_24590C3A4();
    sub_245839698(&v63);

    v33 = v63;
    if (v63 == 14)
    {
LABEL_16:
      sub_24590C3A4();
      sub_24590C3C4();
      v44 = v48;
      v43 = v49;
      sub_24590C0D4();
      v45 = objc_allocWithZone(sub_24590C3D4());
      sub_24590C394();
      v46 = v58;
      MEMORY[0x245D76260]();
      if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_245910C74();
      }

      sub_245910CA4();
      sub_24578FC28(v43, v44);
      v31 = v50;
      v32 = v51;
      return sub_245771C44(v31, v32);
    }

    v34 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
    }

    else if (!(v54 >> 62))
    {
      v35 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_12;
    }

    v35 = sub_245911424();
LABEL_12:
    v36 = *(v55 + OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_streamContinuations);
    v37 = *(v36 + 16);
    if (v37)
    {
      v56 = 0;
      v57 = v21;
      v38 = v34 / v35;
      v39 = *(v53 + 16);
      v40 = v36 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v60 = *(v53 + 72);
      v61 = v39;
      LODWORD(v59) = v33;
      v41 = (v52 + 8);
      v42 = (v53 + 8);
      v55 = v36;

      do
      {
        v61(v15, v40, v13);
        LOBYTE(v63) = v59;
        *(&v63 + 1) = v38;
        sub_245910D74();
        (*v41)(v12, v62);
        (*v42)(v15, v13);
        v40 += v60;
        --v37;
      }

      while (v37);
    }

    goto LABEL_16;
  }

  v31 = v26;
  v32 = v27;
  return sub_245771C44(v31, v32);
}

uint64_t sub_24584033C(void *a1, void *a2, char a3, void *a4)
{
  LOBYTE(v4) = a3;
  v6 = a1[2];

  v43 = v6;
  if (v6 && a2[2])
  {
    v8 = a1[4];
    v7 = a1[5];
    v9 = a2[4];
    v10 = a2[5];
    v11 = *a4;

    v12 = sub_24588C5BC(v8, v7);
    v14 = v11[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    LOBYTE(v6) = v13;
    if (v11[3] < v17)
    {
      sub_24580C624(v17, v4 & 1);
      v12 = sub_24588C5BC(v8, v7);
      if ((v6 & 1) == (v18 & 1))
      {
        goto LABEL_8;
      }

LABEL_6:
      v12 = sub_245911774();
      __break(1u);
    }

    if ((v4 & 1) == 0)
    {
      goto LABEL_28;
    }

    while (1)
    {
LABEL_8:
      v19 = *a4;
      if (v6)
      {
        v6 = v12;

        v20 = (v19[7] + 16 * v6);
        *v20 = v9;
        v20[1] = v10;

        goto LABEL_12;
      }

      v19[(v12 >> 6) + 8] |= 1 << v12;
      v21 = (v19[6] + 16 * v12);
      *v21 = v8;
      v21[1] = v7;
      v22 = (v19[7] + 16 * v12);
      *v22 = v9;
      v22[1] = v10;
      v23 = v19[2];
      v16 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (!v16)
      {
        break;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      v41 = v12;
      sub_24580D364();
      v12 = v41;
    }

    v19[2] = v24;
LABEL_12:
    if (v43 != 1)
    {
      v4 = a1 + 7;
      v9 = a2 + 7;
      for (i = 1; i != v43; ++i)
      {
        v28 = a2[2];
        if (i == v28)
        {
          break;
        }

        if (i >= v28)
        {
          goto LABEL_26;
        }

        v8 = *(v4 - 1);
        v7 = *v4;
        v29 = *(v9 - 1);
        v10 = *v9;
        v30 = *a4;

        v12 = sub_24588C5BC(v8, v7);
        v32 = v30[2];
        v33 = (v31 & 1) == 0;
        v16 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v16)
        {
          goto LABEL_25;
        }

        LOBYTE(v6) = v31;
        if (v30[3] < v34)
        {
          sub_24580C624(v34, 1);
          v12 = sub_24588C5BC(v8, v7);
          if ((v6 & 1) != (v35 & 1))
          {
            goto LABEL_6;
          }
        }

        v36 = *a4;
        if (v6)
        {
          v6 = v12;

          v27 = (v36[7] + 16 * v6);
          *v27 = v29;
          v27[1] = v10;
        }

        else
        {
          v36[(v12 >> 6) + 8] |= 1 << v12;
          v37 = (v36[6] + 16 * v12);
          *v37 = v8;
          v37[1] = v7;
          v38 = (v36[7] + 16 * v12);
          *v38 = v29;
          v38[1] = v10;
          v39 = v36[2];
          v16 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v36[2] = v40;
        }

        v4 += 2;
        v9 += 2;
      }
    }
  }
}

void sub_245840644(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v76 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A7F0);
  v79 = *(v5 - 8);
  v80 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v76 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D20);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v83 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v82 = &v76 - v13;
  MEMORY[0x28223BE20](v12);
  v84 = (&v76 - v14);
  v15 = sub_24590F354();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v19 = a1;
  v20 = sub_24590F344();
  v21 = sub_245910F54();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v77 = v15;
    v23 = v22;
    v24 = swift_slowAlloc();
    v78 = v9;
    v25 = v4;
    v26 = v7;
    v27 = a1;
    v28 = v24;
    *v23 = 138412290;
    v29 = v27;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&dword_245767000, v20, v21, "PassportNFCReader Session ended unexpectedly: %@", v23, 0xCu);
    sub_245778F94(v28, &qword_27EE297C0);
    v7 = v26;
    v4 = v25;
    v9 = v78;
    MEMORY[0x245D77B40](v28, -1, -1);
    v31 = v23;
    v15 = v77;
    MEMORY[0x245D77B40](v31, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  v32 = sub_24590BF94();
  v33 = sub_245910B34();
  v35 = v34;
  v36 = [v32 domain];
  v37 = sub_245910A04();
  v39 = v38;

  if (v37 == v33 && v39 == v35)
  {

    v40 = v81;
  }

  else
  {
    v41 = sub_245911714();

    v40 = v81;
    if ((v41 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v42 = [v32 code];
  if ((v42 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v42))
  {
LABEL_29:
    __break(1u);
    return;
  }

  if (v42 == 47)
  {
    v54 = *&v40[OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_streamContinuations];
    v55 = *(v54 + 16);
    if (v40[OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_isGetPendingCommandsRunning] != 1)
    {
      if (v55)
      {
        v82 = v4;
        v78 = v32;
        v66 = v9[2];
        v65 = v9 + 2;
        v84 = v66;
        v67 = v54 + ((*(v65 + 64) + 32) & ~*(v65 + 64));
        v68 = v65[7];
        v69 = (v79 + 8);
        v70 = (v65 - 1);
        v79 = v54;

        v71 = v80;
        v72 = v83;
        do
        {
          v84(v72, v67, v8);
          v85 = 7;
          v86 = 0;
          sub_245910D74();
          v72 = v83;
          (*v69)(v7, v71);
          (*v70)(v72, v8);
          v67 += v68;
          --v55;
        }

        while (v55);

        v40 = v81;
        v4 = v82;
        v32 = v78;
      }

      v73 = sub_245910D64();
      (*(*(v73 - 8) + 56))(v4, 1, 1, v73);
      v74 = swift_allocObject();
      v74[2] = 0;
      v74[3] = 0;
      v74[4] = v40;
      v75 = v40;
      sub_2458B93DC(0, 0, v4, &unk_24591AF90, v74);

      goto LABEL_25;
    }

    if (v55)
    {
      v78 = v32;
      v57 = v9[2];
      v56 = v9 + 2;
      v84 = v57;
      v58 = v54 + ((*(v56 + 64) + 32) & ~*(v56 + 64));
      v59 = v56[7];
      v60 = (v79 + 8);
      v61 = (v56 - 1);
      v79 = v54;

      v62 = v7;
      v63 = v80;
      v64 = v82;
      do
      {
        v84(v64, v58, v8);
        v85 = 9;
        v86 = 0;
        sub_245910D74();
        v64 = v82;
        (*v60)(v62, v63);
        (*v61)(v64, v8);
        v58 += v59;
        --v55;
      }

      while (v55);
      goto LABEL_19;
    }
  }

  else if (v42 == 5)
  {
    v43 = *&v40[OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_streamContinuations];
    v44 = *(v43 + 2);
    if (v44)
    {
      v78 = v32;
      v46 = v9[2];
      v45 = v9 + 2;
      v82 = v43;
      v83 = v46;
      v47 = &v43[(*(v45 + 64) + 32) & ~*(v45 + 64)];
      v48 = v45[7];
      v49 = (v79 + 8);
      v50 = (v45 - 1);

      v51 = v7;
      v52 = v80;
      v53 = v84;
      do
      {
        (v83)(v53, v47, v8);
        v85 = 5;
        v86 = 0;
        sub_245910D74();
        v53 = v84;
        (*v49)(v51, v52);
        (*v50)(v53, v8);
        v47 += v48;
        --v44;
      }

      while (v44);
LABEL_19:

      v40 = v81;
      v32 = v78;
    }
  }

LABEL_25:
  if (*&v40[OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_getPendingCommandsTask])
  {
    sub_24590CAF4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
    sub_245910DD4();
  }

  v40[OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_isGetPendingCommandsRunning] = 0;
}

uint64_t sub_245840E38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_24583E224(a1, v4, v5, v6);
}

uint64_t sub_245840EEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2457AA49C;

  return sub_24583A468(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_245840FCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24584103C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457AA49C;

  return sub_24583FAEC(a1, v4, v5, v7, v6);
}

uint64_t sub_2458410FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_245841144(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2A830);

  return sub_245837C2C(a1, a2);
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_245841200(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_245910BE4();
  }

  __break(1u);
  return result;
}

uint64_t sub_24584124C(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  *&v40 = a1;
  *(&v40 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A880);
  if (swift_dynamicCast())
  {
    sub_245771B9C(__src, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    sub_24590BEE4();
    __src[0] = v40;
    __swift_destroy_boxed_opaque_existential_1(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_245778F94(__src, &qword_27EE2A888);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_245911534();
  }

  sub_2458481D0(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2458495BC(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_245848298(sub_24584C820);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_24590C114();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2458487F0(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_245910B44();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_245910B84();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_245911534();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_2458487F0(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_245910B54();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_24590C124();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_24590C124();
    sub_245771C44(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_245771C44(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_24578FB80(*&__src[0], *(&__src[0] + 1));

  sub_24578FC28(v32, *(&v32 + 1));
  return v32;
}

void sub_24584176C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29868);
  v16[3] = v8;
  v16[4] = sub_245778BD8(&qword_27EE2A860, &qword_27EE29868);
  v9 = swift_allocObject();
  v16[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_1(v16, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_24584863C((v10[1] + v11), (v10[1] + v11 + v14), &v15);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }
}

uint64_t sub_2458418C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_245841920(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_2458419B4;
}

void sub_2458419B4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *PassportReaderManager.__allocating_init(_:readerSession:rndifd:kifd:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2A810);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;

  v7 = swift_allocObject();
  v7[2] = &unk_2858834A0;
  v7[5] = 0;
  swift_unknownObjectWeakInit();
  v7[6] = MEMORY[0x277D84F98];
  v8 = a1;
  v9 = a2;
  sub_24590EAA4();
  v10 = sub_24590EAB4();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  sub_24590C704();
  swift_allocObject();
  v11 = sub_24590C6E4();

  v7[3] = v11;
  return v7;
}

void *PassportReaderManager.init(_:readerSession:rndifd:kifd:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2A810);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;

  v3[2] = &unk_285883510;
  v3[5] = 0;
  swift_unknownObjectWeakInit();
  v3[6] = MEMORY[0x277D84F98];
  v9 = a1;
  v10 = a2;
  sub_24590EAA4();
  v11 = sub_24590EAB4();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  sub_24590C704();
  swift_allocObject();
  v12 = sub_24590C6E4();

  v3[3] = v12;
  return v3;
}

uint64_t sub_245841D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[135] = v8;
  v9[134] = a8;
  v9[133] = a7;
  v9[132] = a6;
  v9[131] = a5;
  v9[130] = a4;
  v9[129] = a3;
  v9[128] = a2;
  v9[127] = a1;
  v10 = sub_24590C364();
  v9[136] = v10;
  v9[137] = *(v10 - 8);
  v9[138] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245841DE8, 0, 0);
}

uint64_t sub_245841DE8()
{
  v20 = v0;
  v1 = v0[135];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    v19[0] = 10;
    (*(v2 + 8))(v19, ObjectType, v2, 1.0);
    swift_unknownObjectRelease();
  }

  v4 = v0[135];
  sub_24590C354();
  sub_24590CD74();
  v0[139] = sub_24590CD54();
  v5 = *(v4 + 24);
  v0[140] = v5;
  v6 = sub_24590CD64();
  v8 = v7;
  sub_24590CD44();
  v9 = sub_24590C6D4();
  sub_24578FC28(v9, v10);

  sub_24578FC28(v6, v8);
  v11 = swift_task_alloc();
  v0[141] = v11;
  *v11 = v0;
  v11[1] = sub_24584201C;
  v12 = v0[133];
  v13 = v0[132];
  v14 = v0[131];
  v15 = v0[130];
  v16 = v0[129];
  v17 = v0[128];

  return MEMORY[0x282150A80](v17, v16, v15, v14, v13, v12, v5);
}

uint64_t sub_24584201C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1136) = a1;
  *(v3 + 1144) = v1;

  if (v1)
  {
    v4 = sub_245843274;
  }

  else
  {
    v4 = sub_245842134;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_245842134()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0[135] + 40);
    ObjectType = swift_getObjectType();
    v7 = 13;
    (*(v1 + 8))(&v7, ObjectType, v1, 0.0);
    swift_unknownObjectRelease();
  }

  v0[144] = sub_2458494E0(&unk_285883580);
  v0[145] = v3;
  v5 = *MEMORY[0x277CFF3D0] + MEMORY[0x277CFF3D0];
  v4 = swift_task_alloc();
  v0[146] = v4;
  *v4 = v0;
  v4[1] = sub_245842284;

  __asm { BR              X8 }
}

uint64_t sub_245842284(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[147] = a1;
  v5[148] = a2;
  v5[149] = v2;

  sub_24578FC28(v4[144], v4[145]);
  if (v2)
  {
    v6 = sub_24584330C;
  }

  else
  {
    v6 = sub_2458423DC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2458423DC()
{
  v1 = v0[149];
  v2 = sub_24584BE98();
  if (!v1)
  {
    v7 = v2;
    v8 = v0[134];
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = v8 + 32;
      v12 = MEMORY[0x277D84F90];
      do
      {
        v15 = *(v11 + v10);
        v16 = *(v7 + 2);
        v17 = (v7 + 32);
        do
        {
          if (!v16)
          {
            goto LABEL_10;
          }

          v18 = *v17++;
          --v16;
        }

        while (v15 != v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24577CD34(0, *(v12 + 16) + 1, 1);
        }

        v14 = *(v12 + 16);
        v13 = *(v12 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_24577CD34((v13 > 1), v14 + 1, 1);
        }

        *(v12 + 16) = v14 + 1;
        *(v12 + v14 + 32) = v15;
LABEL_10:
        ++v10;
      }

      while (v10 != v9);
    }

    else
    {

      v12 = MEMORY[0x277D84F90];
    }

    v0[150] = v12;
    v0[151] = sub_2458494E0(&unk_2858835A8);
    v0[152] = v19;
    v21 = *MEMORY[0x277CFF3D0] + MEMORY[0x277CFF3D0];
    v20 = swift_task_alloc();
    v0[153] = v20;
    *v20 = v0;
    v20[1] = sub_245842678;

    __asm { BR              X8 }
  }

  v3 = v0[148];
  v4 = v0[147];
  (*(v0[137] + 8))(v0[138], v0[136]);

  sub_24578FC28(v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_245842678(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  *(*v3 + 1232) = v2;

  if (v2)
  {
    sub_24578FC28(*(v6 + 1208), *(v6 + 1216));

    v7 = sub_2458433B0;
  }

  else
  {
    v8 = *(v6 + 1216);
    v9 = *(v6 + 1208);
    sub_24578FC28(a1, a2);
    sub_24578FC28(v9, v8);
    v7 = sub_2458427D4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2458427D4()
{
  v1 = *(v0 + 1200);
  sub_24584C448((v0 + 16));
  v2 = *(v1 + 16);
  v3 = (v1 + 32);
  while (v2)
  {
    v4 = *v3++;
    --v2;
    if ((v4 & 1) == 0)
    {
      v5 = type metadata accessor for DataGroup1();
      v6 = swift_allocObject();
      *(v0 + 1240) = v6;
      *(v6 + 16) = 49;
      *(v6 + 24) = 0xE100000000000000;
      *(v6 + 32) = sub_2458494E0(&unk_2858835D0);
      *(v6 + 40) = v7;
      *(v6 + 48) = 3229508;
      *(v6 + 56) = 0xE300000000000000;
      v8 = *(v0 + 192);
      *(v6 + 224) = *(v0 + 176);
      *(v6 + 240) = v8;
      v9 = *(v0 + 224);
      *(v6 + 256) = *(v0 + 208);
      *(v6 + 272) = v9;
      v10 = *(v0 + 128);
      *(v6 + 160) = *(v0 + 112);
      *(v6 + 176) = v10;
      v11 = *(v0 + 160);
      *(v6 + 192) = *(v0 + 144);
      *(v6 + 208) = v11;
      v12 = *(v0 + 64);
      *(v6 + 96) = *(v0 + 48);
      *(v6 + 112) = v12;
      v13 = *(v0 + 96);
      *(v6 + 128) = *(v0 + 80);
      *(v6 + 144) = v13;
      v14 = *(v0 + 32);
      *(v6 + 64) = *(v0 + 16);
      *(v6 + 80) = v14;
      *(v0 + 976) = v5;
      *(v0 + 984) = &off_285886600;
      *(v0 + 952) = v6;

      v15 = swift_task_alloc();
      *(v0 + 1248) = v15;
      *v15 = v0;
      v15[1] = sub_245842B90;
      v16 = *(v0 + 1136);
      v17 = v0 + 952;
LABEL_9:

      return sub_245845A8C(v17, v16, 0, 1);
    }
  }

  v18 = *(v0 + 96);
  *(v0 + 304) = *(v0 + 80);
  *(v0 + 320) = v18;
  v19 = *(v0 + 64);
  *(v0 + 272) = *(v0 + 48);
  *(v0 + 288) = v19;
  v20 = *(v0 + 160);
  *(v0 + 368) = *(v0 + 144);
  *(v0 + 384) = v20;
  v21 = *(v0 + 128);
  *(v0 + 336) = *(v0 + 112);
  *(v0 + 352) = v21;
  v22 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v22;
  v23 = *(v0 + 192);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v23;
  v24 = *(v0 + 32);
  *(v0 + 240) = *(v0 + 16);
  *(v0 + 256) = v24;
  v25 = *(v0 + 1200);
  v26 = (v25 + 32);
  v27 = *(v25 + 16);
  while (v27)
  {
    v28 = *v26++;
    --v27;
    if (v28)
    {

      v29 = type metadata accessor for DataGroup2();
      swift_allocObject();
      v30 = sub_2457DF13C();
      *(v0 + 1264) = v30;
      *(v0 + 936) = v29;
      *(v0 + 944) = &off_285886738;
      *(v0 + 912) = v30;

      v31 = swift_task_alloc();
      *(v0 + 1272) = v31;
      *v31 = v0;
      v31[1] = sub_245842FB4;
      v16 = *(v0 + 1136);
      v17 = v0 + 912;
      goto LABEL_9;
    }
  }

  v33 = *(v0 + 1184);
  v34 = *(v0 + 1176);
  v35 = *(v0 + 1104);
  v36 = *(v0 + 1096);
  v51 = *(v0 + 1088);
  v37 = *(v0 + 1016);
  v38 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v39 = sub_2459109C4();
  [v38 setDateFormat_];

  sub_24578FC28(v34, v33);
  (*(v36 + 8))(v35, v51);
  *(v37 + 240) = v38;
  v40 = *(v0 + 256);
  *v37 = *(v0 + 240);
  *(v37 + 16) = v40;
  v41 = *(v0 + 272);
  v42 = *(v0 + 288);
  v43 = *(v0 + 320);
  *(v37 + 64) = *(v0 + 304);
  *(v37 + 80) = v43;
  *(v37 + 32) = v41;
  *(v37 + 48) = v42;
  v44 = *(v0 + 336);
  v45 = *(v0 + 352);
  v46 = *(v0 + 384);
  *(v37 + 128) = *(v0 + 368);
  *(v37 + 144) = v46;
  *(v37 + 96) = v44;
  *(v37 + 112) = v45;
  v47 = *(v0 + 400);
  v48 = *(v0 + 416);
  v49 = *(v0 + 448);
  *(v37 + 192) = *(v0 + 432);
  *(v37 + 208) = v49;
  *(v37 + 160) = v47;
  *(v37 + 176) = v48;
  *(v37 + 224) = xmmword_2459169A0;

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_245842B90()
{
  v2 = *v1;
  *(*v1 + 1256) = v0;

  if (v0)
  {

    v3 = sub_245843470;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 952);
    v3 = sub_245842CB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_245842CB4()
{
  v1 = *(v0 + 1240);
  v2 = v1[5];
  *(v0 + 464) = v1[4];
  *(v0 + 480) = v2;
  v3 = v1[9];
  v5 = v1[6];
  v4 = v1[7];
  *(v0 + 528) = v1[8];
  *(v0 + 544) = v3;
  *(v0 + 496) = v5;
  *(v0 + 512) = v4;
  v6 = v1[13];
  v8 = v1[10];
  v7 = v1[11];
  *(v0 + 592) = v1[12];
  *(v0 + 608) = v6;
  *(v0 + 560) = v8;
  *(v0 + 576) = v7;
  v9 = v1[17];
  v11 = v1[14];
  v10 = v1[15];
  *(v0 + 656) = v1[16];
  *(v0 + 672) = v9;
  *(v0 + 624) = v11;
  *(v0 + 640) = v10;
  sub_245778F2C(v0 + 464, v0 + 688, &qword_27EE29860);

  v12 = *(v0 + 544);
  *(v0 + 304) = *(v0 + 528);
  *(v0 + 320) = v12;
  v13 = *(v0 + 512);
  *(v0 + 272) = *(v0 + 496);
  *(v0 + 288) = v13;
  v14 = *(v0 + 608);
  *(v0 + 368) = *(v0 + 592);
  *(v0 + 384) = v14;
  v15 = *(v0 + 576);
  *(v0 + 336) = *(v0 + 560);
  *(v0 + 352) = v15;
  v16 = *(v0 + 672);
  *(v0 + 432) = *(v0 + 656);
  *(v0 + 448) = v16;
  v17 = *(v0 + 640);
  *(v0 + 400) = *(v0 + 624);
  *(v0 + 416) = v17;
  v18 = *(v0 + 480);
  *(v0 + 240) = *(v0 + 464);
  *(v0 + 256) = v18;
  v19 = *(v0 + 1200);
  v20 = (v19 + 32);
  for (i = *(v19 + 16); i; --i)
  {
    v22 = *v20++;
    if (v22)
    {

      v23 = type metadata accessor for DataGroup2();
      swift_allocObject();
      v24 = sub_2457DF13C();
      *(v0 + 1264) = v24;
      *(v0 + 936) = v23;
      *(v0 + 944) = &off_285886738;
      *(v0 + 912) = v24;

      v25 = swift_task_alloc();
      *(v0 + 1272) = v25;
      *v25 = v0;
      v25[1] = sub_245842FB4;
      v26 = *(v0 + 1136);

      return sub_245845A8C(v0 + 912, v26, 0, 1);
    }
  }

  v28 = *(v0 + 1184);
  v29 = *(v0 + 1176);
  v30 = *(v0 + 1104);
  v31 = *(v0 + 1096);
  v46 = *(v0 + 1088);
  v32 = *(v0 + 1016);
  v33 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v34 = sub_2459109C4();
  [v33 setDateFormat_];

  sub_24578FC28(v29, v28);
  (*(v31 + 8))(v30, v46);
  *(v32 + 240) = v33;
  v35 = *(v0 + 256);
  *v32 = *(v0 + 240);
  *(v32 + 16) = v35;
  v36 = *(v0 + 272);
  v37 = *(v0 + 288);
  v38 = *(v0 + 320);
  *(v32 + 64) = *(v0 + 304);
  *(v32 + 80) = v38;
  *(v32 + 32) = v36;
  *(v32 + 48) = v37;
  v39 = *(v0 + 336);
  v40 = *(v0 + 352);
  v41 = *(v0 + 384);
  *(v32 + 128) = *(v0 + 368);
  *(v32 + 144) = v41;
  *(v32 + 96) = v39;
  *(v32 + 112) = v40;
  v42 = *(v0 + 400);
  v43 = *(v0 + 416);
  v44 = *(v0 + 448);
  *(v32 + 192) = *(v0 + 432);
  *(v32 + 208) = v44;
  *(v32 + 160) = v42;
  *(v32 + 176) = v43;
  *(v32 + 224) = xmmword_2459169A0;

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_245842FB4()
{
  v2 = *v1;
  *(*v1 + 1280) = v0;

  if (v0)
  {
    sub_245778F94(v2 + 240, &qword_27EE29860);
    v3 = sub_24584354C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 912);
    v3 = sub_2458430E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2458430E8()
{
  v1 = *(v0 + 1264);
  v22 = *(v1 + 72);
  v23 = *(v1 + 64);
  sub_24578FB6C(v23, v22);

  v2 = *(v0 + 1184);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1104);
  v5 = *(v0 + 1096);
  v21 = *(v0 + 1088);
  v6 = *(v0 + 1016);
  v7 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v8 = sub_2459109C4();
  [v7 setDateFormat_];

  sub_24578FC28(v3, v2);
  (*(v5 + 8))(v4, v21);
  *(v6 + 240) = v7;
  v9 = *(v0 + 256);
  *v6 = *(v0 + 240);
  *(v6 + 16) = v9;
  v10 = *(v0 + 272);
  v11 = *(v0 + 288);
  v12 = *(v0 + 320);
  *(v6 + 64) = *(v0 + 304);
  *(v6 + 80) = v12;
  *(v6 + 32) = v10;
  *(v6 + 48) = v11;
  v13 = *(v0 + 336);
  v14 = *(v0 + 352);
  v15 = *(v0 + 384);
  *(v6 + 128) = *(v0 + 368);
  *(v6 + 144) = v15;
  *(v6 + 96) = v13;
  *(v6 + 112) = v14;
  v16 = *(v0 + 400);
  v17 = *(v0 + 416);
  v18 = *(v0 + 448);
  *(v6 + 192) = *(v0 + 432);
  *(v6 + 208) = v18;
  *(v6 + 160) = v16;
  *(v6 + 176) = v17;
  *(v6 + 224) = v23;
  *(v6 + 232) = v22;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_245843274()
{
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[136];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24584330C()
{
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[136];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2458433B0()
{
  v1 = v0[148];
  v2 = v0[147];
  v3 = v0[138];
  v4 = v0[137];
  v5 = v0[136];

  sub_24578FC28(v2, v1);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_245843470()
{
  v1 = v0[148];
  v2 = v0[147];
  v3 = v0[138];
  v4 = v0[137];
  v5 = v0[136];

  sub_24578FC28(v2, v1);

  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 119));

  v6 = v0[1];

  return v6();
}

uint64_t sub_24584354C()
{
  v1 = v0[148];
  v2 = v0[147];
  v3 = v0[138];
  v4 = v0[137];
  v5 = v0[136];

  sub_24578FC28(v2, v1);

  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 114));

  v6 = v0[1];

  return v6();
}

BOOL sub_245843628(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_245843658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 792) = v6;
  *(v7 + 1145) = a6;
  *(v7 + 1144) = a5;
  *(v7 + 784) = a4;
  *(v7 + 776) = a3;
  *(v7 + 768) = a2;
  *(v7 + 760) = a1;
  v8 = sub_24590EA74();
  *(v7 + 800) = v8;
  *(v7 + 808) = *(v8 - 8);
  *(v7 + 816) = swift_task_alloc();
  v9 = sub_2459108D4();
  *(v7 + 824) = v9;
  *(v7 + 832) = *(v9 - 8);
  *(v7 + 840) = swift_task_alloc();
  v10 = sub_2459108C4();
  *(v7 + 848) = v10;
  *(v7 + 856) = *(v10 - 8);
  *(v7 + 864) = swift_task_alloc();
  v11 = sub_24590C364();
  *(v7 + 872) = v11;
  *(v7 + 880) = *(v11 - 8);
  *(v7 + 888) = swift_task_alloc();
  v12 = sub_24590F354();
  *(v7 + 896) = v12;
  *(v7 + 904) = *(v12 - 8);
  *(v7 + 912) = swift_task_alloc();
  *(v7 + 920) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2458438AC, 0, 0);
}

uint64_t sub_2458438AC()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F84();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "PrepareForDeviceCrosscheck", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = *(v0 + 920);
  v5 = *(v0 + 904);
  v6 = *(v0 + 896);
  v7 = *(v0 + 840);
  v49 = *(v0 + 832);
  v8 = *(v0 + 824);
  v9 = *(v0 + 776);
  v10 = *(v0 + 768);

  (*(v5 + 8))(v4, v6);
  sub_24590C354();

  v11 = sub_24584124C(v10, v9);
  v13 = v12;
  *(v0 + 928) = v11;
  *(v0 + 936) = v12;
  sub_24584C7D8(&qword_27EE2A868, MEMORY[0x277CC5598]);
  sub_2459108A4();
  sub_24578FB80(v11, v13);
  sub_245848DF8(v11, v13);
  sub_24578FC28(v11, v13);
  sub_245910894();
  (*(v49 + 8))(v7, v8);
  sub_24584C7D8(&qword_27EE2A870, MEMORY[0x277CC5578]);
  v14 = sub_2459108B4();
  v16 = v15;
  *(v0 + 944) = sub_24590C134();
  *(v0 + 952) = v17;
  sub_24578FC28(v14, v16);
  *(v0 + 960) = sub_24590C334();
  sub_24590C704();
  swift_allocObject();

  *(v0 + 968) = sub_24590C6F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A878);
  inited = swift_initStackObject();
  *(v0 + 976) = inited;
  *(inited + 16) = xmmword_2459169B0;
  v19 = type metadata accessor for EFSOD(0);
  v20 = swift_allocObject();
  *(v20 + 2) = sub_2458494E0(&unk_285883450);
  *(v20 + 3) = v21;
  *(v20 + 4) = 0x444F532E4645;
  *(v20 + 5) = 0xE600000000000000;
  *(v20 + 6) = 6582131;
  *(v20 + 7) = 0xE300000000000000;
  v22 = OBJC_IVAR____TtC9CoreIDVUI5EFSOD_sodData;
  v23 = type metadata accessor for SOD(0);
  (*(*(v23 - 8) + 56))(&v20[v22], 1, 1, v23);
  *(inited + 56) = v19;
  *(inited + 64) = &off_2858867F0;
  *(inited + 32) = v20;
  v24 = type metadata accessor for DataGroup1();
  v25 = swift_allocObject();
  *(v25 + 16) = 49;
  *(v25 + 24) = 0xE100000000000000;
  *(v25 + 32) = sub_2458494E0(&unk_285883478);
  *(v25 + 40) = v26;
  *(v25 + 48) = 3229508;
  *(v25 + 56) = 0xE300000000000000;
  sub_24584C448((v0 + 240));
  v27 = *(v0 + 416);
  *(v25 + 224) = *(v0 + 400);
  *(v25 + 240) = v27;
  v28 = *(v0 + 448);
  *(v25 + 256) = *(v0 + 432);
  *(v25 + 272) = v28;
  v29 = *(v0 + 352);
  *(v25 + 160) = *(v0 + 336);
  *(v25 + 176) = v29;
  v30 = *(v0 + 384);
  *(v25 + 192) = *(v0 + 368);
  *(v25 + 208) = v30;
  v31 = *(v0 + 288);
  *(v25 + 96) = *(v0 + 272);
  *(v25 + 112) = v31;
  v32 = *(v0 + 320);
  *(v25 + 128) = *(v0 + 304);
  *(v25 + 144) = v32;
  v33 = *(v0 + 256);
  *(v25 + 64) = *(v0 + 240);
  *(v25 + 80) = v33;
  *(inited + 96) = v24;
  *(inited + 104) = &off_285886600;
  *(inited + 72) = v25;
  v34 = type metadata accessor for DataGroup2();
  swift_allocObject();
  v35 = sub_2457DF13C();
  *(inited + 136) = v34;
  *(inited + 144) = &off_285886738;
  *(inited + 112) = v35;
  *(v0 + 992) = 0;
  *(v0 + 984) = MEMORY[0x277D84F98];
  sub_2457ACB24(*(v0 + 976) + 32, v0 + 616);
  v36 = *(v0 + 640);
  v37 = *(v0 + 648);
  __swift_project_boxed_opaque_existential_1((v0 + 616), v36);
  v38 = (*(v37 + 8))(v36, v37);
  v40 = v39;
  *(v0 + 1000) = v38;
  *(v0 + 1008) = v39;
  v41 = *(v0 + 640);
  v42 = *(v0 + 648);
  __swift_project_boxed_opaque_existential_1((v0 + 616), v41);
  v43 = (*(v42 + 16))(v41, v42);
  v45 = v44;
  *(v0 + 1016) = v44;
  v50 = (*MEMORY[0x277CFF3D8] + MEMORY[0x277CFF3D8]);
  v46 = swift_task_alloc();
  *(v0 + 1024) = v46;
  *v46 = v0;
  v46[1] = sub_245843F1C;
  v47 = *(v0 + 960);

  return v50(v38, v40, v43, v45, v47, 0);
}

uint64_t sub_245843F1C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[129] = a1;
  v5[130] = a2;
  v5[131] = v2;

  v6 = v4[126];
  v7 = v4[125];

  if (v2)
  {

    sub_24578FC28(v7, v6);
    v8 = sub_2458456E8;
  }

  else
  {
    sub_24578FC28(v7, v6);
    v8 = sub_2458440BC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2458440BC()
{
  v1 = v0[130];
  v2 = v0[129];
  v3 = v0[123];
  v4 = v0[80];
  v5 = v0[81];
  __swift_project_boxed_opaque_existential_1(v0 + 77, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v8 = v7;
  sub_24578FB80(v2, v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[93] = v3;
  v10 = sub_24588C5BC(v6, v8);
  v12 = *(v3 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v1) = v11;
  v2 = (v0 + 93);
  if (*(v0[123] + 24) >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_26:
    v70 = v10;
    sub_24580CA60();
    v10 = v70;
    goto LABEL_8;
  }

  sub_24580B5F4(v15, isUniquelyReferenced_nonNull_native);
  v10 = sub_24588C5BC(v6, v8);
  if ((v1 & 1) != (v16 & 1))
  {

    return sub_245911774();
  }

LABEL_8:
  v18 = *(v0 + 129);
  if (v1)
  {
    v19 = v10;
    v79 = *(v0 + 129);

    v20 = *v2;
    v21 = (*(*v2 + 56) + 16 * v19);
    v22 = *v21;
    v23 = v21[1];
    *v21 = v79;
    sub_24578FC28(v22, v23);
    sub_24578FC28(v79, *(&v79 + 1));
  }

  else
  {
    v20 = *v2;
    *(*v2 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    v24 = (v20[6] + 16 * v10);
    *v24 = v6;
    v24[1] = v8;
    *(v20[7] + 16 * v10) = v18;
    result = sub_24578FC28(v18, *(&v18 + 1));
    v25 = v20[2];
    v14 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v14)
    {
      __break(1u);
      return result;
    }

    v20[2] = v26;
  }

  v0[132] = v20;
  v27 = v0[124];
  __swift_destroy_boxed_opaque_existential_1((v0 + 77));
  if (v27 == 2)
  {
    v0[133] = 0;
    v28 = v0[132];
    sub_2457ACB24(v0[122] + 32, (v0 + 82));
    v29 = v0[85];
    v30 = v0[86];
    __swift_project_boxed_opaque_existential_1(v0 + 82, v29);
    v31 = (*(v30 + 16))(v29, v30);
    if (*(v28 + 16))
    {
      v33 = sub_24588C5BC(v31, v32);
      v35 = v34;

      if (v35)
      {
        v36 = (*(v0[132] + 56) + 16 * v33);
        v37 = *v36;
        v0[134] = *v36;
        v38 = v36[1];
        v0[135] = v38;
        v39 = v0[85];
        v40 = v0[86];
        __swift_project_boxed_opaque_existential_1(v0 + 82, v39);
        v41 = *(v40 + 8);
        sub_24578FB80(v37, v38);
        v0[136] = v41(v39, v40);
        v0[137] = v42;
        v43 = v0[85];
        v44 = v0[86];
        __swift_project_boxed_opaque_existential_1(v0 + 82, v43);
        (*(v44 + 16))(v43, v44);
        v0[138] = v45;
        sub_24578FB80(v37, v38);
        v80 = *MEMORY[0x277CFF3D0] + MEMORY[0x277CFF3D0];
        v46 = swift_task_alloc();
        v0[139] = v46;
        *v46 = v0;
        v46[1] = sub_2458448D4;

        __asm { BR              X8 }
      }
    }

    else
    {
    }

    v60 = v0[102];
    v61 = v0[101];
    v62 = v0[100];

    (*(v61 + 104))(v60, *MEMORY[0x277CFF978], v62);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v63 = swift_allocError();
    sub_24590EA94();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1((v0 + 82));
    v64 = v0[118];
    v71 = v0[119];
    v72 = v0[116];
    v65 = v0[114];
    v66 = v0[113];
    v78 = v0[111];
    v67 = v0[110];
    v77 = v0[109];
    v75 = v0[112];
    v76 = v0[108];
    v68 = v0[107];
    v73 = v0[117];
    v74 = v0[106];
    sub_24590C714();
    sub_24590C724();

    sub_24578FC28(v64, v71);

    sub_24578FC28(v72, v73);
    (*(v66 + 8))(v65, v75);
    (*(v68 + 8))(v76, v74);
    (*(v67 + 8))(v78, v77);

    v69 = v0[1];

    return v69(0, 0xF000000000000000);
  }

  else
  {
    v47 = v0[124];
    v0[124] = v47 + 1;
    v0[123] = v20;
    sub_2457ACB24(v0[122] + 40 * v47 + 72, (v0 + 77));
    v48 = v0[80];
    v49 = v0[81];
    __swift_project_boxed_opaque_existential_1(v0 + 77, v48);
    v50 = (*(v49 + 8))(v48, v49);
    v52 = v51;
    v0[125] = v50;
    v0[126] = v51;
    v53 = v0[80];
    v54 = v0[81];
    __swift_project_boxed_opaque_existential_1(v0 + 77, v53);
    v55 = (*(v54 + 16))(v53, v54);
    v57 = v56;
    v0[127] = v56;
    v81 = (*MEMORY[0x277CFF3D8] + MEMORY[0x277CFF3D8]);
    v58 = swift_task_alloc();
    v0[128] = v58;
    *v58 = v0;
    v58[1] = sub_245843F1C;
    v59 = v0[120];

    return v81(v50, v52, v55, v57, v59, 0);
  }
}

uint64_t sub_2458448D4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[140] = a1;
  v5[141] = a2;
  v5[142] = v2;

  v6 = v4[137];
  v7 = v4[136];
  v8 = v4[135];
  v9 = v4[134];
  if (v2)
  {

    sub_24578FC28(v9, v8);

    sub_24578FC28(v7, v6);
    v10 = sub_2458458B4;
  }

  else
  {
    sub_24578FC28(v4[134], v4[135]);

    sub_24578FC28(v7, v6);
    v10 = sub_245844ABC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

unint64_t sub_245844ABC()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 792);
  v4 = *(v0 + 680);
  v5 = *(v0 + 688);
  __swift_project_boxed_opaque_existential_1((v0 + 656), v4);
  v6 = (*(v5 + 24))(v4, v5);
  v8 = v7;
  swift_beginAccess();
  sub_24578FB80(v2, v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 48);
  *(v0 + 752) = v10;
  *(v3 + 48) = 0x8000000000000000;
  result = sub_24588C5BC(v6, v8);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v1) = v12;
  v2 = (v0 + 752);
  if (*(v10 + 24) >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v24 = result;
    sub_24580CA60();
    result = v24;
    v18 = *(v0 + 1120);
    if (v1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_24580B5F4(v16, isUniquelyReferenced_nonNull_native);
  result = sub_24588C5BC(v6, v8);
  if ((v1 & 1) != (v17 & 1))
  {

    return sub_245911774();
  }

LABEL_8:
  v18 = *(v0 + 1120);
  if (v1)
  {
LABEL_9:
    v19 = result;
    v109 = v18;

    v20 = *v2;
    v21 = (v20[7] + 16 * v19);
    v22 = *v21;
    v23 = v21[1];
    *v21 = v109;
    sub_24578FC28(v22, v23);
    goto LABEL_14;
  }

LABEL_12:
  v20 = *v2;
  v20[(result >> 6) + 8] |= 1 << result;
  v25 = (v20[6] + 16 * result);
  *v25 = v6;
  v25[1] = v8;
  *(v20[7] + 16 * result) = v18;
  v26 = v20[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
    __break(1u);
    return result;
  }

  v20[2] = v27;
LABEL_14:
  v28 = *(v0 + 1128);
  v29 = *(v0 + 1120);
  v30 = *(v0 + 1080);
  v31 = *(v0 + 1072);
  v32 = *(v0 + 1064);
  *(*(v0 + 792) + 48) = v20;
  swift_endAccess();
  sub_24578FC28(v31, v30);
  sub_24578FC28(v29, v28);
  __swift_destroy_boxed_opaque_existential_1(v0 + 656);
  if (v32 != 2)
  {
    v43 = *(v0 + 1064);
    *(v0 + 1064) = v43 + 1;
    v44 = *(v0 + 1056);
    sub_2457ACB24(*(v0 + 976) + 40 * v43 + 72, v0 + 656);
    v45 = *(v0 + 680);
    v46 = *(v0 + 688);
    __swift_project_boxed_opaque_existential_1((v0 + 656), v45);
    v47 = (*(v46 + 16))(v45, v46);
    if (*(v44 + 16))
    {
      v49 = sub_24588C5BC(v47, v48);
      v51 = v50;

      if (v51)
      {
        v52 = (*(*(v0 + 1056) + 56) + 16 * v49);
        v53 = *v52;
        *(v0 + 1072) = *v52;
        v54 = v52[1];
        *(v0 + 1080) = v54;
        v55 = *(v0 + 680);
        v56 = *(v0 + 688);
        __swift_project_boxed_opaque_existential_1((v0 + 656), v55);
        v57 = *(v56 + 8);
        sub_24578FB80(v53, v54);
        *(v0 + 1088) = v57(v55, v56);
        *(v0 + 1096) = v58;
        v59 = *(v0 + 680);
        v60 = *(v0 + 688);
        __swift_project_boxed_opaque_existential_1((v0 + 656), v59);
        (*(v60 + 16))(v59, v60);
        *(v0 + 1104) = v61;
        sub_24578FB80(v53, v54);
        v111 = *MEMORY[0x277CFF3D0] + MEMORY[0x277CFF3D0];
        v62 = swift_task_alloc();
        *(v0 + 1112) = v62;
        *v62 = v0;
        v62[1] = sub_2458448D4;

        __asm { BR              X8 }
      }
    }

    else
    {
    }

    v63 = *(v0 + 816);
    v64 = *(v0 + 808);
    v65 = *(v0 + 800);

    (*(v64 + 104))(v63, *MEMORY[0x277CFF978], v65);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v66 = swift_allocError();
    sub_24590EA94();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v0 + 656);
    v67 = *(v0 + 944);
    v91 = *(v0 + 952);
    v92 = *(v0 + 928);
    v68 = *(v0 + 912);
    v69 = *(v0 + 904);
    v107 = *(v0 + 888);
    v70 = *(v0 + 880);
    v104 = *(v0 + 872);
    v98 = *(v0 + 896);
    v101 = *(v0 + 864);
    v71 = *(v0 + 856);
    v93 = *(v0 + 936);
    v95 = *(v0 + 848);
    sub_24590C714();
    sub_24590C724();

    sub_24578FC28(v67, v91);

    sub_24578FC28(v92, v93);
    (*(v69 + 8))(v68, v98);
    (*(v71 + 8))(v101, v95);
    (*(v70 + 8))(v107, v104);

    v84 = 0;
    v86 = 0xF000000000000000;
    goto LABEL_29;
  }

  v33 = *(v0 + 1136);
  v34 = *(v0 + 1145);

  swift_beginAccess();

  sub_245845EAC(v35, v34);

  if (!v33)
  {
LABEL_18:

    sub_24584AF68(v42, (v0 + 16));

    v80 = sub_24584B524(v79);
    v82 = v81;

    v84 = sub_24584B8F4(v0 + 16);
    v86 = v85;
    v87 = *(v0 + 952);
    v88 = *(v0 + 944);
    v108 = *(v0 + 888);
    v89 = *(v0 + 880);
    v106 = *(v0 + 872);
    v100 = *(v0 + 936);
    v103 = *(v0 + 864);
    v90 = *(v0 + 856);
    v94 = *(v0 + 928);
    v97 = *(v0 + 848);

    sub_24578FC28(v88, v87);
    sub_24578FC28(v80, v82);
    sub_2457DD420(v0 + 16);
    sub_24578FC28(v94, v100);
    (*(v90 + 8))(v103, v97);
    (*(v89 + 8))(v108, v106);

LABEL_29:

    v83 = *(v0 + 8);

    return v83(v84, v86);
  }

  sub_24579D5E0(0, &qword_27EE2B020);
  v36 = sub_24590D894();
  v37 = MEMORY[0x245D76600](v36);

  if (v37)
  {
    v38 = *(v0 + 912);
    v39 = *(v0 + 904);
    v110 = *(v0 + 896);
    (*(*(v0 + 808) + 104))(*(v0 + 816), *MEMORY[0x277CFF960], *(v0 + 800));
    v40 = v33;
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v41 = swift_allocError();
    sub_24590EA94();
    sub_24590C714();
    sub_24590C724();

    (*(v39 + 8))(v38, v110);
    goto LABEL_18;
  }

  v72 = *(v0 + 952);
  v73 = *(v0 + 944);
  v74 = *(v0 + 936);
  v75 = *(v0 + 928);
  v76 = *(v0 + 880);
  v102 = *(v0 + 872);
  v105 = *(v0 + 888);
  v77 = *(v0 + 856);
  v96 = *(v0 + 848);
  v99 = *(v0 + 864);
  swift_willThrow();

  sub_24578FC28(v73, v72);
  sub_24578FC28(v75, v74);
  (*(v77 + 8))(v99, v96);
  (*(v76 + 8))(v105, v102);

  v78 = *(v0 + 8);

  return v78();
}

uint64_t sub_2458456E8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 77));
  v1 = v0[131];
  v2 = v0[118];
  v9 = v0[119];
  v10 = v0[116];
  v3 = v0[114];
  v4 = v0[113];
  v16 = v0[111];
  v5 = v0[110];
  v15 = v0[109];
  v13 = v0[112];
  v14 = v0[108];
  v6 = v0[107];
  v11 = v0[117];
  v12 = v0[106];
  sub_24590C714();
  sub_24590C724();

  sub_24578FC28(v2, v9);

  sub_24578FC28(v10, v11);
  (*(v4 + 8))(v3, v13);
  (*(v6 + 8))(v14, v12);
  (*(v5 + 8))(v16, v15);

  v7 = v0[1];

  return v7(0, 0xF000000000000000);
}

uint64_t sub_2458458B4()
{
  sub_24578FC28(v0[134], v0[135]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 82));
  v1 = v0[142];
  v2 = v0[118];
  v9 = v0[119];
  v10 = v0[116];
  v3 = v0[114];
  v4 = v0[113];
  v16 = v0[111];
  v5 = v0[110];
  v15 = v0[109];
  v13 = v0[112];
  v14 = v0[108];
  v6 = v0[107];
  v11 = v0[117];
  v12 = v0[106];
  sub_24590C714();
  sub_24590C724();

  sub_24578FC28(v2, v9);

  sub_24578FC28(v10, v11);
  (*(v4 + 8))(v3, v13);
  (*(v6 + 8))(v14, v12);
  (*(v5 + 8))(v16, v15);

  v7 = v0[1];

  return v7(0, 0xF000000000000000);
}

uint64_t sub_245845A8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 104) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x2822009F8](sub_245845AB4, 0, 0);
}

void sub_245845AB4()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v0[6] = (*(v3 + 8))(v2, v3);
  v0[7] = v4;
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  (*(v6 + 16))(v5, v6);
  v0[8] = v7;
  v9 = *MEMORY[0x277CFF3D0] + MEMORY[0x277CFF3D0];
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_245845C24;

  __asm { BR              X8 }
}

uint64_t sub_245845C24(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v7 = sub_245845E38;
  }

  else
  {
    v8 = v6[7];
    v9 = v6[6];
    v6[11] = a2;
    v6[12] = a1;

    sub_24578FC28(v9, v8);
    v7 = sub_245845D6C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_245845D6C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[2];
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 32))(v1, v2, v4, v5);
  sub_24578FC28(v1, v2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_245845E38()
{
  v1 = v0[7];
  v2 = v0[6];

  sub_24578FC28(v2, v1);
  v3 = v0[1];

  return v3();
}

void sub_245845EAC(uint64_t a1, int a2)
{
  v50 = a2;
  v3 = sub_24590EA74();
  v57 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24590F354();
  v54 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v53 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29988);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for SOD(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v56 = v3, v17 = sub_24588C5BC(6582131, 0xE300000000000000), v3 = v56, (v18 & 1) != 0))
  {
    v47 = v6;
    v48 = v16;
    v49 = v5;
    v19 = (*(a1 + 56) + 16 * v17);
    v20 = *v19;
    v21 = v19[1];
    type metadata accessor for EFSOD(0);
    v22 = swift_allocObject();
    sub_24578FB80(v20, v21);
    v22[2] = sub_2458494E0(&unk_285883400);
    v22[3] = v23;
    v22[4] = 0x444F532E4645;
    v22[5] = 0xE600000000000000;
    v22[6] = 6582131;
    v22[7] = 0xE300000000000000;
    v24 = OBJC_IVAR____TtC9CoreIDVUI5EFSOD_sodData;
    (*(v14 + 56))(v22 + OBJC_IVAR____TtC9CoreIDVUI5EFSOD_sodData, 1, 1, v13);
    v25 = v55;
    sub_2457E29F0();
    v55 = v25;
    if (v25)
    {
      sub_24578FC28(v20, v21);
      swift_setDeallocating();
      sub_24578FC28(v22[2], v22[3]);
      sub_245778F94(v22 + OBJC_IVAR____TtC9CoreIDVUI5EFSOD_sodData, &qword_27EE29988);
      swift_deallocClassInstance();
    }

    else
    {
      v45 = v21;
      v46 = v20;
      swift_beginAccess();
      sub_245778F2C(v22 + v24, v12, &qword_27EE29988);
      v26 = v22;
      if ((*(v14 + 48))(v12, 1, v13) == 1)
      {
        sub_245778F94(v12, &qword_27EE29988);
        (*(v57 + 104))(v49, *MEMORY[0x277CFF9D0], v56);
        sub_2458CC8AC(MEMORY[0x277D84F90]);
        sub_24590EA84();
        sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
        swift_allocError();
        sub_24590EA94();
        swift_willThrow();
        sub_24578FC28(v46, v45);
        swift_setDeallocating();
        sub_24578FC28(v22[2], v22[3]);
        sub_245778F94(v22 + OBJC_IVAR____TtC9CoreIDVUI5EFSOD_sodData, &qword_27EE29988);
        swift_deallocClassInstance();
      }

      else
      {
        v27 = v48;
        sub_24584C6B0(v12, v48);
        v28 = v55;
        v29 = sub_24584886C(a1);
        sub_24584965C(v27, v29);
        if (v28)
        {

          swift_setDeallocating();
          sub_24578FC28(v26[2], v26[3]);
          sub_245778F94(v26 + OBJC_IVAR____TtC9CoreIDVUI5EFSOD_sodData, &qword_27EE29988);
          swift_deallocClassInstance();
          sub_24578FC28(v46, v45);
          v30 = v27;
        }

        else
        {

          sub_245849AC4(v27);
          v31 = v46;
          sub_24579D5E0(0, &qword_27EE2B020);
          v32 = sub_24590D974();
          v33 = MEMORY[0x245D76600](v32);

          if (v33)
          {
            v34 = v52;
            sub_24590C714();
            v35 = sub_24590F344();
            v36 = sub_245910F44();
            v37 = os_log_type_enabled(v35, v36);
            v38 = v45;
            if (v37)
            {
              v39 = v31;
              v40 = swift_slowAlloc();
              *v40 = 0;
              _os_log_impl(&dword_245767000, v35, v36, "Skipped passport SO Signer Certificate Issuer Path validation", v40, 2u);
              MEMORY[0x245D77B40](v40, -1, -1);
              sub_24578FC28(v39, v38);
            }

            else
            {
              sub_24578FC28(v31, v45);
            }

            (*(v54 + 8))(v34, v47);
            v30 = v48;
          }

          else
          {
            v41 = *(v13 + 32);
            v42 = v48;
            sub_24584A474(*&v48[v41], *(v51 + 16));
            v43 = v45;

            sub_24578FC28(v31, v43);
            v30 = v42;
          }
        }

        sub_24584C778(v30, type metadata accessor for SOD);
      }
    }
  }

  else
  {
    (*(v57 + 104))(v5, *MEMORY[0x277CFF918], v3);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
  }
}

uint64_t sub_245846BF0()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v4 = sub_24590F344();
  v5 = sub_245910F54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2458CC378(0xD00000000000001BLL, 0x8000000245929C80, &v10);
    _os_log_impl(&dword_245767000, v4, v5, "%s - end", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_245846D88(uint64_t *a1, uint64_t a2)
{
  v4 = sub_24590F354();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v10 = sub_24590EA74();
  v50 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *a1;
  v55 = v51;
  v13 = sub_2459116E4();
  if (*(a2 + 16))
  {
    v49 = v9;
    v15 = sub_24588C5BC(v13, v14);
    v17 = v16;

    if (v17)
    {
      v18 = (*(a2 + 56) + 16 * v15);
      v20 = *v18;
      v19 = v18[1];
      sub_24578FB80(*v18, v19);
      v21 = v54;
      v22 = sub_24590CB24();
      if (!v21)
      {
        v24 = v22;
        v25 = v23;
        v54 = v19;
        type metadata accessor for DataGroupHash(0);
        v26 = sub_24590EBF4();
        sub_24584176C(v26, v27, v28, v29);
        v31 = v30;
        v33 = v32;
        v34 = v24;
        LOBYTE(v24) = sub_2458491C0(v30, v32, v24, v25);
        sub_24578FC28(v31, v33);
        if (v24)
        {
          v35 = v34;
          v36 = v49;
          sub_24590C714();
          v37 = sub_24590F344();
          v38 = sub_245910F54();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = v25;
            v41 = swift_slowAlloc();
            v55 = v41;
            *v39 = 136315394;
            *(v39 + 4) = sub_2458CC378(0xD00000000000001BLL, 0x8000000245929C80, &v55);
            *(v39 + 12) = 2048;
            *(v39 + 14) = v51;
            _os_log_impl(&dword_245767000, v37, v38, "%s hash verified for dgID %ld", v39, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v41);
            MEMORY[0x245D77B40](v41, -1, -1);
            MEMORY[0x245D77B40](v39, -1, -1);
            v42 = v35;
            v43 = v40;
          }

          else
          {
            v42 = v34;
            v43 = v25;
          }

          sub_24578FC28(v42, v43);
          sub_24578FC28(v20, v54);

          return (*(v52 + 8))(v36, v53);
        }

        (*(v50 + 104))(v12, *MEMORY[0x277CFF940], v10);
        sub_2458CC8AC(MEMORY[0x277D84F90]);
        sub_24590EA84();
        sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
        swift_allocError();
        sub_24590EA94();
        swift_willThrow();
        sub_24578FC28(v34, v25);
        v19 = v54;
      }

      return sub_24578FC28(v20, v19);
    }
  }

  else
  {
  }

  sub_24590C714();
  v44 = sub_24590F344();
  v45 = sub_245910F44();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v55 = v47;
    *v46 = 136315394;
    *(v46 + 4) = sub_2458CC378(0xD00000000000001BLL, 0x8000000245929C80, &v55);
    *(v46 + 12) = 2048;
    *(v46 + 14) = v51;
    _os_log_impl(&dword_245767000, v44, v45, "%s skipped checking hash for dgID %ld", v46, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x245D77B40](v47, -1, -1);
    MEMORY[0x245D77B40](v46, -1, -1);
  }

  return (*(v52 + 8))(v7, v53);
}

uint64_t sub_245847320()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v4 = sub_24590F344();
  v5 = sub_245910F54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2458CC378(0xD000000000000015, 0x8000000245929C30, &v10);
    _os_log_impl(&dword_245767000, v4, v5, "%s - end", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2458474B8()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v4 = sub_24590F344();
  v5 = sub_245910F54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2458CC378(0xD00000000000002DLL, 0x8000000245929B10, &v10);
    _os_log_impl(&dword_245767000, v4, v5, "%s - end", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_245847650()
{
  v96 = sub_24590C7B4();
  v113 = *(v96 - 1);
  v1 = MEMORY[0x28223BE20](v96);
  v98 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v97 = &v82 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v82 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v82 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v82 - v11;
  v13 = sub_24590BE34();
  v95 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29850);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v82 - v17;
  swift_beginAccess();

  sub_24584AF68(v19, v105);

  if (!v0)
  {
    v87 = v15;
    v88 = v13;
    v91 = v10;
    v92 = v7;
    v93 = 0;
    v94 = v12;
    v21 = sub_2457DB178();
    v23 = v106;
    v24 = v107;
    if (v22)
    {
      v25 = v21;
    }

    else
    {
      v25 = 0;
    }

    v26 = 0xE000000000000000;
    if (v22)
    {
      v26 = v22;
    }

    v89 = v26;
    v90 = v25;
    v103 = v106;
    v104 = v107;
    v101 = 15420;
    v102 = 0xE200000000000000;
    v27 = sub_24590C234();
    (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
    sub_245778CE8();

    sub_245911334();
    v29 = v28;
    v31 = v30;
    sub_245778F94(v18, &qword_27EE29850);

    if (v31)
    {
      v85 = 0xE000000000000000;
      v86 = 0;
    }

    else
    {
      v32 = sub_245841200(v29, v23, v24);
      v33 = MEMORY[0x245D76100](v32);
      v35 = v34;

      v103 = v33;
      v104 = v35;
      v101 = 60;
      v102 = 0xE100000000000000;
      v99 = 32;
      v100 = 0xE100000000000000;
      v36 = sub_245911314();
      v38 = v37;

      v103 = v36;
      v104 = v38;
      v39 = v87;
      sub_24590BE24();
      v40 = sub_245911304();
      v85 = v41;
      v86 = v40;
      (*(v95 + 8))(v39, v88);
    }

    v42 = v96;
    v111 = v105[1];
    v112 = v108;
    sub_2457F7AB8(&v112, &v103);
    sub_2457F7AB8(&v111, &v103);
    v83 = sub_2457DB460();
    v95 = v109;
    v87 = v110;
    v88 = v43;

    sub_2457DD420(v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A840);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24591B000;
    v45 = v113;
    v47 = (v113 + 104);
    v46 = *(v113 + 104);
    v48 = v94;
    (v46)(v94, *MEMORY[0x277CFF400], v42);
    v49 = v46;
    v50 = sub_24590C7A4();
    v52 = v51;
    v113 = *(v45 + 8);
    (v113)(v48, v42);
    *(inited + 32) = v50;
    v84 = inited + 32;
    v53 = v89;
    v54 = v90;
    *(inited + 40) = v52;
    *(inited + 48) = v54;
    *(inited + 56) = v53;
    v55 = *MEMORY[0x277CFF408];
    v56 = v91;
    v96 = v49;
    (v49)(v91, v55, v42);
    v57 = sub_24590C7A4();
    v59 = v58;
    (v113)(v56, v42);
    *(inited + 64) = v57;
    *(inited + 72) = v59;
    v60 = v85;
    *(inited + 80) = v86;
    *(inited + 88) = v60;
    v61 = v92;
    (v49)(v92, *MEMORY[0x277CFF3E8], v42);
    v62 = sub_24590C7A4();
    v64 = v63;
    v65 = v113;
    (v113)(v61, v42);
    *(inited + 96) = v62;
    *(inited + 104) = v64;
    *(inited + 112) = v112;
    v66 = v97;
    (v96)(v97, *MEMORY[0x277CFF3F8], v42);
    v67 = sub_24590C7A4();
    v69 = v68;
    v65(v66, v42);
    *(inited + 128) = v67;
    *(inited + 136) = v69;
    *(inited + 144) = v111;
    v70 = *MEMORY[0x277CFF3F0];
    v71 = v98;
    v97 = v47;
    (v96)(v98, v70, v42);
    v72 = sub_24590C7A4();
    v74 = v73;
    v65(v71, v42);
    *(inited + 160) = v72;
    *(inited + 168) = v74;
    v75 = v87;
    v76 = v88;
    *(inited + 176) = v95;
    *(inited + 184) = v75;
    v77 = sub_2458B8388(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A848);
    swift_arrayDestroy();
    v103 = v77;
    if (v76)
    {
      v78 = v94;
      (v96)(v94, *MEMORY[0x277CFF3E0], v42);
      v79 = sub_24590C7A4();
      v81 = v80;
      v65(v78, v42);
      sub_2457A0778(v83, v76, v79, v81);
      return v103;
    }

    else
    {
      return v77;
    }
  }

  return result;
}

uint64_t PassportReaderManager.deinit()
{

  sub_2457B2F00(v0 + 32);

  return v0;
}

uint64_t PassportReaderManager.__deallocating_deinit()
{

  sub_2457B2F00(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_245847E10@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_24590BE84();
    if (v10)
    {
      v11 = sub_24590BEB4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_24590BEA4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_24590BE84();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_24590BEB4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_24590BEA4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_245848040(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_245849108(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_24578FC28(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_245847E10(v13, a3, a4, &v12);
  v10 = v4;
  sub_24578FC28(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_2458481D0@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_245849328(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_24590BED4();
      swift_allocObject();
      v8 = sub_24590BE74();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_24590C104();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_245848298(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_24578FC28(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_24578FC28(v6, v5);
    *v3 = xmmword_24591B010;
    sub_24578FC28(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_24590BE84() && __OFSUB__(v6, sub_24590BEB4()))
      {
LABEL_26:
        __break(1u);
      }

      sub_24590BED4();
      swift_allocObject();
      v13 = sub_24590BE64();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_24584873C(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_24578FC28(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_24591B010;
    sub_24578FC28(0, 0xC000000000000000);
    sub_24590C0A4();
    result = sub_24584873C(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

_BYTE *sub_24584863C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_245849328(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2458493E0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_24584945C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2458486D0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_24584873C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_24590BE84();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_24590BEB4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_24590BEA4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_2458487F0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_245910B94();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x245D761A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_24584886C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_2458489CC(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_245848B20(v8, v4, v2);
  result = MEMORY[0x245D77B40](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_2458489CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v19 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    result = *v15;
    if (*v15 != 6582131 || v15[1] != 0xE300000000000000)
    {
      result = sub_245911714();
      if ((result & 1) == 0)
      {
        *(v19 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v4++, 1))
        {
          __break(1u);
          return sub_245848B98(v19, a2, v4, a3);
        }
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_245848B98(v19, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_245848B20(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_2458489CC(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_245848B98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D90);
  result = sub_245911624();
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
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v36 = (v10 - 1) & v10;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = (*(v4 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(v4 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    sub_245911824();

    sub_24578FB80(v21, v22);
    sub_245910AF4();
    result = sub_245911864();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v18;
    v32[1] = v19;
    v33 = (*(v9 + 56) + v31);
    *v33 = v21;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    v10 = v36;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v36 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_245848DF8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_2459108D4();
      sub_24584C7D8(&qword_27EE2A868, MEMORY[0x277CC5598]);
      return sub_245910884();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_245848FD8(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_245848FD8(v4, v5);
  }

  sub_2459108D4();
  sub_24584C7D8(&qword_27EE2A868, MEMORY[0x277CC5598]);
  return sub_245910884();
}

uint64_t sub_245848FD8(uint64_t a1, uint64_t a2)
{
  result = sub_24590BE84();
  if (!result || (result = sub_24590BEB4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_24590BEA4();
      sub_2459108D4();
      sub_24584C7D8(&qword_27EE2A868, MEMORY[0x277CC5598]);
      return sub_245910884();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2458490B8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_2459114E4();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_245849108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_24590BE84();
  v11 = result;
  if (result)
  {
    result = sub_24590BEB4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_24590BEA4();
  sub_245847E10(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2458491C0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_24578FB80(a3, a4);
          return sub_245848040(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_245849328(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_2458493E0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_24590BED4();
  swift_allocObject();
  result = sub_24590BE74();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24590C104();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_24584945C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_24590BED4();
  swift_allocObject();
  result = sub_24590BE74();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2458494E0(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A890);
  v10 = sub_245778BD8(&qword_27EE2A898, &qword_27EE2A890);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_24584863C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_2458495BC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_24590BED4();
      swift_allocObject();
      sub_24590BE94();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_24590C104();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_24584965C(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v4 = type metadata accessor for DataGroupHash(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24590CB34();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24590F354();
  v39 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  sub_24590C714();
  v16 = sub_24590F344();
  v17 = sub_245910F54();
  v36 = v16;
  v18 = os_log_type_enabled(v16, v17);
  v38 = v11;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v42 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_2458CC378(0xD00000000000001BLL, 0x8000000245929C80, &v42);
    v21 = v17;
    v22 = v36;
    _os_log_impl(&dword_245767000, v36, v21, "%s - begin", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x245D77B40](v20, -1, -1);
    MEMORY[0x245D77B40](v19, -1, -1);

    v23 = *(v39 + 8);
    v23(v15, v38);
  }

  else
  {

    v23 = *(v39 + 8);
    v23(v15, v11);
  }

  v24 = type metadata accessor for LDSSecurityObject(0);
  v25 = v37;
  result = (*(v40 + 16))(v10, v37 + *(v24 + 20), v41);
  v27 = *(v25 + *(v24 + 24));
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = 0;
    while (v29 < *(v27 + 16))
    {
      sub_24584C714(v27 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v29, v7);
      sub_245846D88(v7, a2);
      if (v2)
      {
        sub_24584C778(v7, type metadata accessor for DataGroupHash);
        goto LABEL_13;
      }

      ++v29;
      result = sub_24584C778(v7, type metadata accessor for DataGroupHash);
      if (v28 == v29)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v30 = v35;
    sub_24590C714();
    v31 = sub_24590F344();
    v32 = sub_245910F84();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_245767000, v31, v32, "Successfully verified hashes", v33, 2u);
      MEMORY[0x245D77B40](v33, -1, -1);
    }

    v23(v30, v38);
LABEL_13:
    (*(v40 + 8))(v10, v41);
    return sub_245846BF0();
  }

  return result;
}

uint64_t sub_245849AC4(uint64_t a1)
{
  v58 = a1;
  v59[1] = *MEMORY[0x277D85DE8];
  v1 = sub_24590EA74();
  v53 = *(v1 - 8);
  v54 = v1;
  MEMORY[0x28223BE20](v1);
  v55 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24590EC44();
  v57 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A850);
  MEMORY[0x28223BE20](v56);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29920);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - v10;
  v12 = sub_24590F354();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v48 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  sub_24590C714();
  v18 = sub_24590F344();
  v19 = sub_245910F54();
  v20 = os_log_type_enabled(v18, v19);
  v52 = v12;
  v49 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v46 = v11;
    v22 = v21;
    v23 = swift_slowAlloc();
    v59[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_2458CC378(0xD000000000000015, 0x8000000245929C30, v59);
    _os_log_impl(&dword_245767000, v18, v19, "%s - begin", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x245D77B40](v23, -1, -1);
    v24 = v22;
    v11 = v46;
    MEMORY[0x245D77B40](v24, -1, -1);

    v25 = *(v13 + 8);
    v26 = v17;
    v27 = v52;
  }

  else
  {

    v25 = *(v13 + 8);
    v26 = v17;
    v27 = v12;
  }

  v47 = v25;
  v25(v26, v27);
  v28 = v57;
  if (qword_27EE286C8 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v3, qword_27EE32BD8);
  (*(v28 + 16))(v11, v29, v3);
  (*(v28 + 56))(v11, 0, 1, v3);
  v30 = type metadata accessor for SOD(0);
  v31 = *(v30 + 24);
  v32 = *(v56 + 48);
  sub_245778F2C(v11, v6, &qword_27EE29920);
  sub_245778F2C(v58 + v31, &v6[v32], &qword_27EE29920);
  v33 = *(v28 + 48);
  if (v33(v6, 1, v3) == 1)
  {
    sub_245778F94(v11, &qword_27EE29920);
    if (v33(&v6[v32], 1, v3) == 1)
    {
      sub_245778F94(v6, &qword_27EE29920);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v34 = v51;
  sub_245778F2C(v6, v51, &qword_27EE29920);
  if (v33(&v6[v32], 1, v3) == 1)
  {
    sub_245778F94(v11, &qword_27EE29920);
    (*(v28 + 8))(v34, v3);
LABEL_11:
    sub_245778F94(v6, &qword_27EE2A850);
LABEL_12:
    (*(v53 + 104))(v55, *MEMORY[0x277CFFC10], v54);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
    return sub_245847320();
  }

  v35 = v50;
  (*(v28 + 32))(v50, &v6[v32], v3);
  sub_24584C7D8(&qword_27EE2A858, MEMORY[0x277D6A958]);
  LODWORD(v56) = sub_245910934();
  v36 = *(v28 + 8);
  v36(v35, v3);
  sub_245778F94(v11, &qword_27EE29920);
  v36(v34, v3);
  sub_245778F94(v6, &qword_27EE29920);
  if ((v56 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_14:
  v37 = *(v58 + *(v30 + 20));
  v59[0] = 0;
  if (![v37 verifySignatures_])
  {
    v44 = v59[0];
    v45 = sub_24590BFA4();

    swift_willThrow();
    (*(v53 + 104))(v55, *MEMORY[0x277CFFB98], v54);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    return sub_245847320();
  }

  v38 = v59[0];
  v39 = v48;
  sub_24590C714();
  v40 = sub_24590F344();
  v41 = sub_245910F84();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_245767000, v40, v41, "Successfully verified signature", v42, 2u);
    MEMORY[0x245D77B40](v42, -1, -1);
  }

  v47(v39, v52);
  return sub_245847320();
}

uint64_t sub_24584A474(__SecTrust *a1, const char *a2)
{
  v55 = a2;
  v53 = a1;
  trust[1] = *MEMORY[0x277D85DE8];
  v2 = sub_24590EA74();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24590F354();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  sub_24590C714();
  v12 = sub_24590F344();
  v13 = sub_245910F54();
  v14 = os_log_type_enabled(v12, v13);
  v50 = v6;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v52 = v3;
    v54 = v2;
    v16 = v15;
    v17 = v5;
    v18 = swift_slowAlloc();
    error[0] = v18;
    *v16 = 136315138;
    *(v16 + 4) = sub_2458CC378(0xD00000000000002DLL, 0x8000000245929B10, error);
    _os_log_impl(&dword_245767000, v12, v13, "%s - begin", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v19 = v18;
    v5 = v17;
    MEMORY[0x245D77B40](v19, -1, -1);
    v20 = v16;
    v2 = v54;
    v3 = v52;
    MEMORY[0x245D77B40](v20, -1, -1);
  }

  v21 = *(v7 + 8);
  v21(v11, v6);
  v22 = v56;
  sub_24590D4E4();
  if (!v22)
  {
    v54 = v2;
    trust[0] = 0;
    BasicX509 = SecPolicyCreateBasicX509();
    if (SecTrustCreateWithCertificates(v53, BasicX509, trust) || (v25 = trust[0]) == 0)
    {

      (*(v3 + 104))(v5, *MEMORY[0x277CFFB78], v54);
      sub_2458CC8AC(MEMORY[0x277D84F90]);
      sub_24590EA84();
      sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
      swift_allocError();
      sub_24590EA94();
      swift_willThrow();
    }

    else
    {
      v52 = v3;
      type metadata accessor for SecCertificate(0);
      v26 = v25;
      v27 = sub_245910C34();

      SecTrustSetAnchorCertificates(v26, v27);

      SecTrustSetAnchorCertificatesOnly(v26, 1u);
      error[0] = 0;
      v28 = SecTrustEvaluateWithError(v26, error);
      v29 = error[0];
      if (error[0])
      {
        v56 = BasicX509;
        v30 = v5;
        type metadata accessor for CFError(0);
        sub_24584C7D8(&qword_27EE28D10, type metadata accessor for CFError);
        v31 = swift_allocError();
        *v32 = v29;
        v33 = error[0];
        v34 = v29;

        error[0] = v31;
        v35 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
        swift_willThrowTypedImpl();
        v36 = *MEMORY[0x277CFFA20];
        v37 = *(v52 + 104);
        v55 = 0x80000002459299D0;
        v38 = v31;
      }

      else
      {
        if (v28)
        {
          v39 = v28;
          result = kSecTrustResultInvalid;
          if (!SecTrustGetTrustResult(v26, &result) && (result == kSecTrustResultUnspecified || result == kSecTrustResultProceed))
          {
            sub_24590C714();
            v43 = sub_24590F344();
            v44 = sub_245910F84();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = v26;
              v46 = v39;
              v47 = BasicX509;
              v48 = swift_slowAlloc();
              *v48 = 0;
              _os_log_impl(&dword_245767000, v43, v44, "Successfully verified trust", v48, 2u);
              v49 = v48;
              BasicX509 = v47;
              MEMORY[0x245D77B40](v49, -1, -1);

              sub_2457C5040(v46, 0);
            }

            else
            {
            }

            v21(v51, v50);
          }

          else
          {
            error[0] = 0;
            error[1] = 0xE000000000000000;
            sub_2459114D4();
            MEMORY[0x245D76160](0xD000000000000041, 0x8000000245929BB0);
            v57 = result;
            v40 = sub_2459116E4();
            MEMORY[0x245D76160](v40);

            (*(v52 + 104))(v5, *MEMORY[0x277CFFA20], v54);
            v53 = v26;
            sub_2458CC8AC(MEMORY[0x277D84F90]);
            sub_24590EA84();
            sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
            swift_allocError();
            sub_24590EA94();
            swift_willThrow();
          }

          goto LABEL_15;
        }

        v56 = BasicX509;
        v55 = "error evaluating sec trust";
        LODWORD(v51) = *MEMORY[0x277CFFA20];
        v37 = *(v52 + 104);
        v37(v5);
        sub_2458CC8AC(MEMORY[0x277D84F90]);
        v53 = v26;
        sub_24590EA84();
        sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
        v31 = swift_allocError();
        v30 = v5;
        v26 = v53;
        v55 = 0x80000002459299D0;
        sub_24590EA94();
        swift_willThrow();
        v36 = v51;
        v38 = 0;
      }

      (v37)(v30, v36, v54);
      v41 = v31;
      sub_2458CC8AC(MEMORY[0x277D84F90]);
      sub_24590EA84();
      sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
      swift_allocError();
      sub_24590EA94();
      swift_willThrow();

      sub_2457C5040(v38, v29 != 0);
    }

LABEL_15:

    return sub_2458474B8();
  }

  (*(v3 + 104))(v5, *MEMORY[0x277CFF920], v2);
  v23 = v22;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  return sub_2458474B8();
}

uint64_t sub_24584AF68@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_24590EA74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataGroup1();
  v9 = swift_allocObject();
  *(v9 + 16) = 49;
  *(v9 + 24) = 0xE100000000000000;
  *(v9 + 32) = sub_2458494E0(&unk_285883428);
  *(v9 + 40) = v10;
  *(v9 + 48) = 3229508;
  *(v9 + 56) = 0xE300000000000000;
  sub_24584C448(v83);
  v11 = v83[11];
  *(v9 + 224) = v83[10];
  *(v9 + 240) = v11;
  v12 = v83[13];
  *(v9 + 256) = v83[12];
  *(v9 + 272) = v12;
  v13 = v83[7];
  *(v9 + 160) = v83[6];
  *(v9 + 176) = v13;
  v14 = v83[9];
  *(v9 + 192) = v83[8];
  *(v9 + 208) = v14;
  v15 = v83[3];
  *(v9 + 96) = v83[2];
  *(v9 + 112) = v15;
  v16 = v83[5];
  *(v9 + 128) = v83[4];
  *(v9 + 144) = v16;
  v17 = v83[1];
  *(v9 + 64) = v83[0];
  *(v9 + 80) = v17;
  if (!*(a1 + 16) || (v18 = sub_24588C5BC(49, 0xE100000000000000), (v19 & 1) == 0))
  {
    (*(v6 + 104))(v8, *MEMORY[0x277CFFA10], v5);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
  }

  v84 = a2;
  v20 = (*(a1 + 56) + 16 * v18);
  v22 = *v20;
  v21 = v20[1];
  sub_24578FB80(*v20, v21);
  sub_2457DBDE4();
  if (v2)
  {
LABEL_6:
    sub_24578FC28(v22, v21);
  }

  v23 = *(v9 + 240);
  v24 = *(v9 + 208);
  v65 = *(v9 + 224);
  v66 = v23;
  v25 = *(v9 + 240);
  v26 = *(v9 + 272);
  v67 = *(v9 + 256);
  v68 = v26;
  v27 = *(v9 + 176);
  v28 = *(v9 + 144);
  v61 = *(v9 + 160);
  v62 = v27;
  v29 = *(v9 + 176);
  v30 = *(v9 + 208);
  v63 = *(v9 + 192);
  v64 = v30;
  v31 = *(v9 + 112);
  v32 = *(v9 + 80);
  v57 = *(v9 + 96);
  v58 = v31;
  v33 = *(v9 + 112);
  v34 = *(v9 + 144);
  v59 = *(v9 + 128);
  v60 = v34;
  v35 = *(v9 + 80);
  v55 = *(v9 + 64);
  v56 = v35;
  v79 = v65;
  v80 = v25;
  v36 = *(v9 + 272);
  v81 = v67;
  v82 = v36;
  v75 = v61;
  v76 = v29;
  v77 = v63;
  v78 = v24;
  v71 = v57;
  v72 = v33;
  v73 = v59;
  v74 = v28;
  v69 = v55;
  v70 = v32;
  if (sub_24583521C(&v69) == 1)
  {
    (*(v6 + 104))(v8, *MEMORY[0x277CFF9D8], v5);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
    goto LABEL_6;
  }

  v53[10] = v65;
  v53[11] = v66;
  v53[12] = v67;
  v53[13] = v68;
  v53[6] = v61;
  v53[7] = v62;
  v53[8] = v63;
  v53[9] = v64;
  v53[2] = v57;
  v53[3] = v58;
  v53[4] = v59;
  v53[5] = v60;
  v53[0] = v55;
  v53[1] = v56;
  sub_2457DD3E8(v53, v54);
  sub_24578FC28(v22, v21);
  swift_setDeallocating();
  sub_24578FC28(*(v9 + 32), *(v9 + 40));
  v38 = *(v9 + 240);
  v54[10] = *(v9 + 224);
  v54[11] = v38;
  v39 = *(v9 + 272);
  v54[12] = *(v9 + 256);
  v54[13] = v39;
  v40 = *(v9 + 176);
  v54[6] = *(v9 + 160);
  v54[7] = v40;
  v41 = *(v9 + 208);
  v54[8] = *(v9 + 192);
  v54[9] = v41;
  v42 = *(v9 + 112);
  v54[2] = *(v9 + 96);
  v54[3] = v42;
  v43 = *(v9 + 144);
  v54[4] = *(v9 + 128);
  v54[5] = v43;
  v44 = *(v9 + 80);
  v54[0] = *(v9 + 64);
  v54[1] = v44;
  sub_245778F94(v54, &qword_27EE29860);
  result = swift_deallocClassInstance();
  v45 = v80;
  v46 = v84;
  v84[10] = v79;
  v46[11] = v45;
  v47 = v82;
  v46[12] = v81;
  v46[13] = v47;
  v48 = v76;
  v46[6] = v75;
  v46[7] = v48;
  v49 = v78;
  v46[8] = v77;
  v46[9] = v49;
  v50 = v72;
  v46[2] = v71;
  v46[3] = v50;
  v51 = v74;
  v46[4] = v73;
  v46[5] = v51;
  v52 = v70;
  *v46 = v69;
  v46[1] = v52;
  return result;
}

_BYTE *sub_24584B524(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24590EA74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for DataGroup2();
  swift_initStackObject();
  v8 = sub_2457DF13C();
  v9 = v8;
  if (*(a1 + 16) && (v10 = *(v8 + 32), v11 = *(v8 + 40), , v12 = sub_24588C5BC(v10, v11), v14 = v13, , (v14 & 1) != 0))
  {
    v15 = (*(a1 + 56) + 16 * v12);
    v17 = *v15;
    v16 = v15[1];
    sub_24578FB80(*v15, v16);
    sub_2457DDBF0();
    if (!v2)
    {
      if (*(v9 + 72) >> 60 != 15)
      {
        v7 = *(v9 + 64);
        sub_24578FB80(v7, *(v9 + 72));
        sub_24578FC28(v17, v16);

        return v7;
      }

      (*(v5 + 104))(v7, *MEMORY[0x277CFF9D8], v4);
      sub_2458CC8AC(MEMORY[0x277D84F90]);
      sub_24590EA84();
      sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
      swift_allocError();
      sub_24590EA94();
      swift_willThrow();
    }

    sub_24578FC28(v17, v16);
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CFFA18], v4);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
  }

  return v7;
}

void *sub_24584B8F4(uint64_t a1)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v3 = sub_24590F354();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24590C0D4();
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = sub_24590CB04();
  if (v1)
  {
  }

  else
  {
    v53 = v10;
    v54 = v9;
    v56 = v4;
    v57 = v11;
    v55 = v8;
    v48[1] = sub_24590CB04();
    *&v49 = v7;
    v51 = v13;
    v52 = v6;
    v50 = v3;
    v14 = objc_opt_self();

    v15 = [v14 standardUserDefaults];
    sub_24590D904();
    sub_245910FA4();
    v17 = v16;

    if (v17)
    {
    }

    v18 = v56;
    sub_245910AB4();

    v19 = sub_24590D4D4();

    v20 = v19 + 64;
    v21 = 1 << *(v19 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v19 + 64);
    v24 = (v21 + 63) >> 6;
    v53 = (v18 + 8);

    v25 = 0;
    *&v26 = 136315394;
    v49 = v26;
    v54 = v19 + 64;
    v55 = v19;
    while (v23)
    {
      v27 = v25;
LABEL_17:
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v29 = (v27 << 10) | (16 * v28);
      v30 = *(v19 + 56);
      v31 = (*(v19 + 48) + v29);
      v33 = *v31;
      v32 = v31[1];
      v34 = (v30 + v29);
      v35 = v34[1];
      v56 = *v34;

      sub_24590C714();

      v36 = sub_24590F344();
      v37 = sub_245910F84();

      v57 = v36;
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v58[0] = v51;
        *v38 = v49;
        v39 = sub_2458CC378(v33, v32, v58);

        *(v38 + 4) = v39;
        *(v38 + 12) = 2080;
        v40 = sub_2458CC378(v56, v35, v58);

        *(v38 + 14) = v40;
        v41 = v37;
        v42 = v57;
        _os_log_impl(&dword_245767000, v57, v41, "PassportReaderManager - stored PII Hash for %s is: %s", v38, 0x16u);
        v43 = v51;
        swift_arrayDestroy();
        MEMORY[0x245D77B40](v43, -1, -1);
        MEMORY[0x245D77B40](v38, -1, -1);
      }

      else
      {
      }

      (*v53)(v52, v50);
      v25 = v27;
      v20 = v54;
      v19 = v55;
    }

    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
      }

      if (v27 >= v24)
      {
        break;
      }

      v23 = *(v20 + 8 * v27);
      ++v25;
      if (v23)
      {
        goto LABEL_17;
      }
    }

    v44 = objc_opt_self();
    v45 = sub_2459108E4();

    v58[0] = 0;
    v46 = [v44 dataWithJSONObject:v45 options:0 error:v58];

    v47 = v58[0];
    if (v46)
    {
      v7 = sub_24590C154();
    }

    else
    {
      v7 = v47;
      sub_24590BFA4();

      swift_willThrow();
    }
  }

  return v7;
}

char *sub_24584BE98()
{
  v1 = sub_24590EA74();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24590C144();
  v6 = [objc_opt_self() recordFromData_];

  if (!v6)
  {
    (*(v2 + 104))(v4, *MEMORY[0x277CFFC48], v1);
    v20 = "Unable to find DG1 data in map";
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
    return v20;
  }

  v38 = v0;
  v39 = v4;
  sub_24579D5E0(0, &qword_27EE298C8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = v6;
  v8 = [v40 value];
  v9 = sub_24590C154();
  v11 = v10;

  v12 = sub_24590C144();
  sub_24578FC28(v9, v11);
  v13 = [ObjCClassFromMetadata sequenceOfRecordsFromData_];

  if (!v13)
  {
LABEL_33:
    (*(v2 + 104))(v39, *MEMORY[0x277CFFC48], v1);
    v20 = 0x8000000245929E60;
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24584C7D8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
    v34 = v40;

    return v20;
  }

  sub_24579D5E0(0, &qword_27EE298D0);
  v14 = sub_245910C44();

  v37 = v1;
  if (v14 >> 62)
  {
    goto LABEL_31;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_32:

    v1 = v37;
    goto LABEL_33;
  }

LABEL_5:
  v16 = 0;
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x245D76B30](v16, v14);
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v15 = sub_245911424();
      if (!v15)
      {
        goto LABEL_32;
      }

      goto LABEL_5;
    }

    if ([v17 tag] == 92)
    {
      break;
    }

    ++v16;
    if (v19 == v15)
    {
      goto LABEL_32;
    }
  }

  v21 = v40;

  v22 = [v18 value];
  v23 = sub_24590C154();
  v25 = v24;

  v26 = sub_2457E085C(v23, v25);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = (v26 + 32);
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      v30 = *v28++;
      v29 = v30;
      if (v30 == 97)
      {
        break;
      }

      if (v29 == 117)
      {
        v31 = 1;
LABEL_23:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_24580B044(0, *(v20 + 2) + 1, 1, v20);
        }

        v33 = *(v20 + 2);
        v32 = *(v20 + 3);
        if (v33 >= v32 >> 1)
        {
          v20 = sub_24580B044((v32 > 1), v33 + 1, 1, v20);
        }

        *(v20 + 2) = v33 + 1;
        v20[v33 + 32] = v31;
      }

      if (!--v27)
      {
        goto LABEL_28;
      }
    }

    v31 = 0;
    goto LABEL_23;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_28:

  return v20;
}

double sub_24584C448(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t dispatch thunk of PassportReaderManager.readPassport(docNumber:dob:expiry:dgs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 176) + **(*v8 + 176));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_2457A18F4;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_24584C6B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SOD(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24584C714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataGroupHash(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24584C778(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24584C7D8(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_24584C820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2458486D0(sub_24584C888, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

float PassportReadState.progressWeight.getter()
{
  result = 0.0;
  if ((*v0 - 10) <= 3u)
  {
    return flt_245918B90[(*v0 - 10)];
  }

  return result;
}

unint64_t PassportReadState.titleMessageID.getter()
{
  v1 = *v0;
  if (v1 > 6)
  {
    if (*v0 > 9u)
    {
      return 0xD00000000000002ELL;
    }

    v4 = 0xD000000000000031;
    if (v1 == 8)
    {
      v4 = 0;
    }

    if (v1 == 7)
    {
      return 0xD000000000000030;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (*v0 <= 3u)
    {
      if (v1 < 2)
      {
        return 0xD00000000000002BLL;
      }

      return 0xD00000000000002ELL;
    }

    v3 = 0xD000000000000035;
    if (v1 != 5)
    {
      v3 = 0xD00000000000002BLL;
    }

    if (v1 == 4)
    {
      return 0xD00000000000002BLL;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t PassportReadState.subtitleMessageID.getter()
{
  v1 = *v0;
  if (v1 > 6)
  {
    if (*v0 > 9u)
    {
      return 0xD000000000000031;
    }

    v4 = 0xD000000000000034;
    if (v1 == 8)
    {
      v4 = 0;
    }

    if (v1 == 7)
    {
      return 0xD000000000000033;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (*v0 <= 3u)
    {
      if (v1 < 2)
      {
        return 0xD00000000000002ELL;
      }

      return 0xD000000000000031;
    }

    v3 = 0xD000000000000038;
    if (v1 != 5)
    {
      v3 = 0xD00000000000002ELL;
    }

    if (v1 == 4)
    {
      return 0xD00000000000002ELL;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t PassportReadState.prefix.getter()
{
  result = 0x4554414954494E49;
  switch(*v0)
  {
    case 1:
      result = 0x474E495441434F4CLL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x4343412D44414552;
      break;
    case 4:
    case 0xB:
      result = 0x4D4F432D44414552;
      break;
    case 5:
      result = 0x54554F454D4954;
      break;
    case 6:
      result = 0x534F4C2D50494843;
      break;
    case 7:
      result = 0x542D524544414552;
      break;
    case 8:
      result = 0x4941462D44414552;
      break;
    case 9:
      result = 0x2D474E495353494DLL;
      break;
    case 0xA:
      result = 0x49544E4548545541;
      break;
    case 0xC:
      result = 0x5A49532D44414552;
      break;
    case 0xD:
      result = 0x47442D44414552;
      break;
    default:
      return result;
  }

  return result;
}

CoreIDVUI::PassportReadState_optional __swiftcall PassportReadState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 14;
  if (rawValue < 0xE)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_24584CCC0()
{
  result = qword_27EE2A8A0;
  if (!qword_27EE2A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A8A0);
  }

  return result;
}

unint64_t sub_24584CD20()
{
  result = qword_27EE2A8A8;
  if (!qword_27EE2A8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A8A8);
  }

  return result;
}

uint64_t sub_24584CDA4@<X0>(uint64_t *a1@<X8>)
{
  sub_24590EAC4();
  result = sub_245910BC4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24584CDF0(uint64_t a1, double a2, double a3)
{
  v6 = sub_24590C9E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24590CA04();
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (v14)
  {
    v16 = *(v11 + 16);
    v15 = v11 + 16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v38 = *(v15 + 56);
    v39 = v16;
    v18 = (v7 + 8);
    v19 = (v15 - 8);
    v20 = 0.0;
    v37 = v14;
    do
    {
      v39(v13, v17, v10);
      sub_24590C9F4();
      sub_24590C9C4();
      v42 = v21 * a2;
      sub_24590C9C4();
      v41 = v22 * a3;
      sub_24590C994();
      v24 = v23 * a2;
      sub_24590C994();
      v26 = v25 * a3;
      sub_24590C9D4();
      v40 = v27 * a2;
      sub_24590C9D4();
      v29 = v28 * a3;
      sub_24590C9A4();
      v31 = v30 * a2;
      sub_24590C9A4();
      v33 = v32 * a3;
      v34 = hypot(v42 - v24, v41 - v26);
      v35 = hypot(v40 - v31, v29 - v33);
      (*v18)(v9, v6);
      (*v19)(v13, v10);
      v20 = v20 + (v34 + v35) * 0.5;
      v17 += v38;
      --v14;
    }

    while (v14);
    *&result = v20 / v37;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_24584D098(uint64_t a1, double a2, double a3)
{
  v6 = sub_24590C9E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  *&result = 0.0;
  v14 = *(a1 + 16);
  if (v14 >= 2)
  {
    v15 = *(sub_24590CA04() - 8);
    v16 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);
    v18 = (v7 + 8);
    v19 = 0.0;
    v20 = v14 - 1;
    do
    {
      sub_24590C9F4();
      v16 += v17;
      sub_24590C9F4();
      sub_24590C994();
      v40 = v21 * a2;
      sub_24590C994();
      v23 = v22 * a3;
      sub_24590C9A4();
      v39 = v24 * a2;
      sub_24590C9A4();
      v38 = v25 * a3;
      sub_24590C9C4();
      v27 = v26 * a2;
      sub_24590C9C4();
      v29 = v28 * a3;
      sub_24590C9D4();
      v31 = v30 * a2;
      sub_24590C9D4();
      v33 = v32 * a3;
      v34 = hypot(v40 - v27, v23 - v29);
      v35 = hypot(v39 - v31, v38 - v33);
      v36 = *v18;
      (*v18)(v10, v6);
      v36(v12, v6);
      v19 = v19 + (v34 + v35) * 0.5;
      --v20;
    }

    while (v20);
    *&result = v19 / (v14 - 1);
  }

  return result;
}

uint64_t sub_24584D308()
{
  v0 = sub_24590C234();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2459109B4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE32B38;
  sub_24590C224();
  result = sub_245910A54();
  qword_27EE2A8B8 = result;
  unk_27EE2A8C0 = v4;
  return result;
}

uint64_t sub_24584D444(void *a1)
{
  v2 = v1;
  v4 = sub_24590E544();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  *(v1 + 32) = 0;
  *(v1 + 72) = 1;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 1;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 512;
  *(v1 + 136) = 2;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0;
  *(v1 + 16) = a1;
  sub_24588520C();

  v14 = sub_2457920AC();

  *(v1 + 24) = v14;
  v15 = a1[29];
  if (v15 && *(v15 + 16))
  {

    v16 = sub_24588C5BC(0xD000000000000016, 0x8000000245929F50);
    if (v17)
    {
      (*(v5 + 16))(v13, *(v15 + 56) + *(v5 + 72) * v16, v4);

      (*(v5 + 56))(v13, 0, 1, v4);
      goto LABEL_7;
    }
  }

  (*(v5 + 56))(v13, 1, 1, v4);
LABEL_7:
  sub_2457934F4(v13, v11);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
LABEL_15:
    sub_245793564(v13);
LABEL_16:
    v25 = 0;
    goto LABEL_17;
  }

  (*(v5 + 32))(v7, v11, v4);
  v18 = sub_24590E4E4();
  if (!v18)
  {
LABEL_14:
    (*(v5 + 8))(v7, v4);
    goto LABEL_15;
  }

  if (!*(v18 + 16))
  {

    goto LABEL_14;
  }

  (*(v5 + 8))(v7, v4);
  sub_245793564(v13);

  v19 = sub_24590E634();
  v21 = v20;

  if (v21)
  {
    v61 = v19;
    v62 = v21;
    MEMORY[0x245D76160](46, 0xE100000000000000);
    if (a1[36])
    {
      v22 = sub_245910A84();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0xE000000000000000;
    }

    MEMORY[0x245D76160](v22, v24);
    swift_bridgeObjectRelease_n();

    v49 = v61;
    v50 = v62;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v49 = 0;
    v50 = 0xE000000000000000;
  }

  v51 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_cardArtData;
  swift_beginAccess();
  v52 = *(a1 + v51);
  if (!*(v52 + 16))
  {
    goto LABEL_40;
  }

  v53 = sub_24588C5BC(v49, v50);
  if ((v54 & 1) == 0)
  {

LABEL_40:

    goto LABEL_16;
  }

  v55 = (*(v52 + 56) + 16 * v53);
  v56 = *v55;
  v57 = v55[1];
  sub_24578FB80(*v55, v57);

  v58 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_24578FB80(v56, v57);
  v59 = sub_24590C144();
  v25 = [v58 initWithData_];

  sub_24578FC28(v56, v57);
  sub_24578FC28(v56, v57);
LABEL_17:
  *(v2 + 128) = v25;
  v26 = *(v2 + 24);
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    v29 = sub_24590D5E4();
    v31 = v30;

    v32 = *(v2 + 24);
    *(v2 + 40) = v29;
    *(v2 + 48) = v31;
    if (v32)
    {
      v33 = v32;
      v34 = sub_24590D624();

      if (v34)
      {
        if (v34[2])
        {
          v35 = v34[4];
          v26 = v34[5];

          goto LABEL_25;
        }
      }
    }

    v35 = 0;
    v26 = 0;
  }

  else
  {
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    v36 = v25;
    v35 = 0;
  }

LABEL_25:
  *(v2 + 56) = v35;
  *(v2 + 64) = v26;
  v37 = *(v2 + 24);
  if (v37)
  {
    v38 = v37;
    v39 = sub_24590D584();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  *(v2 + 80) = v39;
  *(v2 + 88) = v41;

  v42 = *(v2 + 24);
  if (v42)
  {
    v43 = v42;
    v44 = sub_24590D5A4();
    v46 = v45;
  }

  else
  {

    v44 = 0;
    v46 = 0;
  }

  *(v2 + 104) = v44;
  *(v2 + 112) = v46;

  v47 = a1[18];

  *(v2 + 137) = (v47 & 3) == 2;
  return v2;
}

uint64_t sub_24584DA1C(char a1, int a2)
{
  v3 = v2;
  v6 = sub_24590F354();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v10 = sub_24590F344();
  v11 = sub_245910F54();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = a1 & 1;
    _os_log_impl(&dword_245767000, v10, v11, "IdentityProofingPendingViewConfiguration updating view for inlineProofing: %{BOOL}d", v12, 8u);
    MEMORY[0x245D77B40](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  if ((a1 & 1) == 0)
  {
    v17 = *(*(v3 + 16) + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp);
    v18 = *(v3 + 137);
    if (v17 == 1)
    {
      if ((v18 & 1) == 0)
      {
        LOBYTE(v18) = 0;
LABEL_16:
        *(v3 + 72) = 1;
        *(v3 + 96) = v18;
        *(v3 + 136) = 0;
        goto LABEL_18;
      }
    }

    else
    {
      if (((v18 | a2) & 1) == 0)
      {
        *(v3 + 72) = 0;
        *(v3 + 96) = 1;
        *(v3 + 136) = 2;
        goto LABEL_18;
      }

      if (!*(v3 + 137))
      {
        goto LABEL_16;
      }
    }

    LOBYTE(v18) = v17 ^ 1;
    goto LABEL_16;
  }

  *(v3 + 72) = 1;
  *(v3 + 96) = 0;
  *(v3 + 136) = 0;
  v13 = *(v3 + 16);
  if (*(v13 + 248) && (*(v3 + 137) & 1) == 0 && (*(v13 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp) & 1) == 0 && (a2 & 1) == 0)
  {
    v14 = *(v3 + 24);
    if (v14)
    {
      v14 = sub_24590D584();
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_21;
  }

LABEL_18:
  if (qword_27EE286E8 != -1)
  {
    swift_once();
  }

  v14 = qword_27EE2A8B8;

LABEL_21:
  *(v3 + 80) = v14;
  *(v3 + 88) = v16;

  *(v3 + 32) = a1 & 1;
  v20 = *(v3 + 144);
  if (v20)
  {

    v20(v21);
    return sub_245771C34(v20);
  }

  return result;
}

uint64_t sub_24584DCC0()
{

  sub_245771C34(*(v0 + 144));
  return v0;
}

uint64_t sub_24584DD18()
{
  sub_24584DCC0();

  return swift_deallocClassInstance();
}

uint64_t sub_24584DD70()
{
  v1 = *(*v0 + 40);

  return v1;
}

uint64_t sub_24584DDA4()
{
  v1 = *(*v0 + 56);

  return v1;
}

uint64_t sub_24584DDE4()
{
  v1 = *(*v0 + 80);

  return v1;
}

uint64_t sub_24584DE24()
{
  v1 = *(*v0 + 104);

  return v1;
}

void *sub_24584DE64()
{
  v1 = *(*v0 + 128);
  v2 = v1;
  return v1;
}

uint64_t sub_24584DEA8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  *(v3 + 144) = a1;
  *(v3 + 152) = a2;
  return sub_245771C34(v4);
}

uint64_t sub_24584DEC0(void (*a1)(void))
{
  result = [v1 navigationController];
  if (result)
  {
    v4 = result;
    v5 = [result viewControllers];

    sub_245790840();
    v6 = sub_245910C44();

    if (v6 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_245911424())
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x245D76B30](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        a1(0);
        if (swift_dynamicCastClass())
        {

          return 1;
        }

        ++v8;
        if (v11 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:

    return 0;
  }

  return result;
}

uint64_t sub_24584E074()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = (v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction);
  v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction);
  *v2 = sub_24584E8BC;
  v2[1] = v1;

  sub_245771C34(v3);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = (v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction);
  v6 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction);
  *v5 = sub_24584E8C4;
  v5[1] = v4;

  sub_245771C34(v6);
}

uint64_t sub_24584E244(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1 & 1);
  sub_24590E3D4();
  v3 = *&v1[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_proofingFlowManager];

  sub_24590E134();
  if ((*(v3 + 144) & 3) == 2)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  sub_24590E484();
}

void sub_24584E3C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (sub_2457C1E4C())
    {
      v2 = *&v1[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_proofingFlowManager];
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v4 = objc_allocWithZone(type metadata accessor for ProvideFeedbackViewController());
      *&v4[OBJC_IVAR____TtC9CoreIDVUI29ProvideFeedbackViewController_proofingManager] = v2;
      v5 = &v4[OBJC_IVAR____TtC9CoreIDVUI29ProvideFeedbackViewController_continuation];
      *v5 = sub_24584E8CC;
      v5[1] = v3;

      v6 = sub_24588ECB0(v4);
      v7 = [v1 navigationController];
      sub_24586D558(v6, v7);
    }

    else
    {
      sub_24590E3B4();
      v8 = OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_proofingFlowManager;

      sub_24590E134();
      if ((*(*&v1[v8] + 144) & 3) == 2)
      {
        v9 = sub_24590E1C4();
      }

      else
      {
        v9 = sub_24590E1B4();
      }

      BYTE2(v15) = 2;
      LOWORD(v15) = 514;
      v13 = v9;
      v14 = v10;
      LOBYTE(v12) = 2;
      sub_24590E484();

      v11 = v1[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_isRetryProvisioningFlow];

      if (v11 == 1)
      {
        sub_245883548(0);

        return;
      }

      v6 = [v1 navigationController];
      sub_24586E734(v6);
    }
  }
}

void sub_24584E624()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationController];
    if (v2 && ((v3 = v2, v4 = [v3 viewControllers], sub_245790840(), v5 = sub_245910C44(), v4, v5 >> 62) ? (v6 = sub_245911424()) : (v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10)), (, v3, v3, v6 == 1) && (*(*&v1[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_proofingFlowManager] + 144) & 3) != 2))
    {

      sub_245883548(0);
    }

    else
    {

      sub_245887AB8(v1, 0x6E61437472656C61, 0xEB000000006C6563, 1, 0, 0);
    }
  }
}

uint64_t sub_24584E798()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_245883548(0);
  }

  return result;
}

uint64_t sub_24584E80C()
{
}

uint64_t sub_24584E8D4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v67 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v64 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v64 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v64 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v64 - v16;
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 88) = 1;
  *(v1 + 112) = 1;
  *(v1 + 136) = 769;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0;
  *(v1 + 16) = a1;
  v18 = *(a1 + 232);
  v68 = a1;
  v69 = v17;
  if (v18)
  {
    if (*(v18 + 16))
    {

      v19 = sub_24588C5BC(0x676150726F727265, 0xEE00797274655265);
      if (v20)
      {
        v21 = v19;
        v22 = *(v18 + 56);
        v23 = sub_24590E544();
        v24 = *(v23 - 8);
        v25 = v24;
        v26 = v22 + *(v24 + 72) * v21;
        v27 = v69;
        (*(v24 + 16))(v69, v26, v23);
        v28 = v27;

        (*(v25 + 56))(v27, 0, 1, v23);
      }

      else
      {

        v23 = sub_24590E544();
        v28 = v69;
        (*(*(v23 - 8) + 56))(v69, 1, 1, v23);
      }
    }

    else
    {
      v23 = sub_24590E544();
      v29 = *(*(v23 - 8) + 56);

      v30 = v69;
      v29(v69, 1, 1, v23);
      v28 = v30;
    }
  }

  else
  {
    v23 = sub_24590E544();
    (*(*(v23 - 8) + 56))(v17, 1, 1, v23);

    v28 = v17;
  }

  sub_2457934F4(v28, v15);
  sub_24590E544();
  v31 = *(v23 - 8);
  v32 = *(v31 + 48);
  if (v32(v15, 1, v23) == 1)
  {
    sub_245793564(v15);
    v66 = 0;
    v33 = 0;
  }

  else
  {
    v34 = sub_24590E504();
    v28 = v69;
    v66 = v34;
    v33 = v35;
    (*(v31 + 8))(v15, v23);
  }

  sub_2457934F4(v28, v12);
  v36 = v32(v12, 1, v23);
  v37 = v67;
  if (v36 == 1)
  {
    sub_245793564(v12);
    v65 = 0;
    v38 = 0;
    goto LABEL_19;
  }

  v39 = sub_24590E534();
  (*(v31 + 8))(v12, v23);
  if (!v39)
  {
    goto LABEL_17;
  }

  if (!v39[2])
  {

LABEL_17:
    v65 = 0;
    v38 = 0;
    goto LABEL_18;
  }

  v38 = v39[5];
  v65 = v39[4];

LABEL_18:
  v28 = v69;
LABEL_19:
  sub_2457934F4(v28, v9);
  if (v32(v9, 1, v23) == 1)
  {
    sub_245793564(v9);
    v64 = 0;
    v40 = 0;
    goto LABEL_27;
  }

  v41 = sub_24590E514();
  (*(v31 + 8))(v9, v23);
  if (!v41)
  {
    goto LABEL_25;
  }

  if (!v41[2])
  {

LABEL_25:
    v64 = 0;
    v40 = 0;
    goto LABEL_26;
  }

  v40 = v41[5];
  v64 = v41[4];

LABEL_26:
  v28 = v69;
LABEL_27:
  sub_2457934F4(v28, v37);
  if (v32(v37, 1, v23) == 1)
  {
    sub_245793564(v37);
    goto LABEL_33;
  }

  v42 = sub_24590E514();
  (*(v31 + 8))(v37, v23);
  if (!v42)
  {
LABEL_33:
    v44 = 0;
    v45 = 0;
    v67 = 0;
    v46 = 0;
    v43 = v68;
    if (v33)
    {
      goto LABEL_34;
    }

    goto LABEL_40;
  }

  v43 = v68;
  if (v42[2] >= 4uLL)
  {
    v46 = v42[11];
    v67 = v42[10];
    v44 = v42[6];
    v45 = v42[7];

    if (v33)
    {
LABEL_34:

      v47 = sub_24586C880(v66, v33);
      v49 = v48;
      swift_bridgeObjectRelease_n();
      *(v2 + 40) = v47;
      *(v2 + 48) = v49;
      if (v38)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    }
  }

  else
  {

    v44 = 0;
    v45 = 0;
    v67 = 0;
    v46 = 0;
    if (v33)
    {
      goto LABEL_34;
    }
  }

LABEL_40:
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  if (v38)
  {
LABEL_35:

    v50 = sub_24586C880(v65, v38);
    v52 = v51;
    swift_bridgeObjectRelease_n();
    *(v2 + 56) = v50;
    *(v2 + 64) = v52;
    if (v40)
    {
      goto LABEL_36;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  if (v40)
  {
LABEL_36:

    v53 = sub_24586C880(v64, v40);
    v55 = v54;
    swift_bridgeObjectRelease_n();
    *(v2 + 72) = v53;
    *(v2 + 80) = v55;
    if (v46)
    {
      goto LABEL_37;
    }

LABEL_43:
    *(v2 + 96) = 0;
    *(v2 + 104) = 0;
    if (v45)
    {
      goto LABEL_38;
    }

LABEL_44:
    v59 = 0;
    v61 = 0;
    goto LABEL_45;
  }

LABEL_42:
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  if (!v46)
  {
    goto LABEL_43;
  }

LABEL_37:

  v56 = sub_24586C880(v67, v46);
  v58 = v57;
  swift_bridgeObjectRelease_n();
  *(v2 + 96) = v56;
  *(v2 + 104) = v58;
  if (!v45)
  {
    goto LABEL_44;
  }

LABEL_38:
  v59 = sub_24586C880(v44, v45);
  v61 = v60;

LABEL_45:
  sub_245793564(v69);
  *(v2 + 120) = v59;
  *(v2 + 128) = v61;
  v62 = *(v43 + 144);

  *(v2 + 138) = (v62 & 3) == 2;
  return v2;
}

uint64_t sub_24584F048()
{

  sub_2457B2F00(v0 + 24);

  sub_245771C34(*(v0 + 144));
  return v0;
}

uint64_t sub_24584F0A0()
{
  sub_24584F048();

  return swift_deallocClassInstance();
}

uint64_t sub_24584F0F8()
{
  v1 = *(*v0 + 72);

  return v1;
}

uint64_t sub_24584F12C()
{
  v1 = *(*v0 + 96);

  return v1;
}

uint64_t sub_24584F160()
{
  v1 = *(*v0 + 120);

  return v1;
}

uint64_t sub_24584F194()
{
  v1 = *v0;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 2;
  }

  v2 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v2) = (*(v2 + 8))(ObjectType, v2);
  swift_unknownObjectRelease();
  if (v2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_24584F26C()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for IdentityProofingRetryProvisioningViewController();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  *(*&v0[OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingRetryProvisioningViewController_viewConfig] + 32) = &off_28588B5F8;
  swift_unknownObjectWeakAssign();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = &v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  v3 = *&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v2 = sub_24584F9BC;
  v2[1] = v1;

  sub_245771C34(v3);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = &v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  v6 = *&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v5 = sub_24584F9C4;
  v5[1] = v4;

  sub_245771C34(v6);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = &v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  v9 = *&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v8 = sub_24584F9CC;
  v8[1] = v7;

  sub_245771C34(v9);
}

void sub_24584F410()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingRetryProvisioningViewController_viewConfig);
    v2 = Strong;

    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v1 + 32);
      ObjectType = swift_getObjectType();
      v5 = (*(v3 + 16))(ObjectType, v3);
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0;
    }

    sub_24586CA74(v5, 2, 0, 0);
  }
}

void sub_24584F4E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingRetryProvisioningViewController_viewConfig);
    v2 = Strong;

    if (swift_unknownObjectWeakLoadStrong() && (v3 = *(v1 + 32), ObjectType = swift_getObjectType(), v5 = (*(v3 + 16))(ObjectType, v3), swift_unknownObjectRelease(), v5))
    {
      sub_245887AB8(v5, 0x6E61437472656C61, 0xEB000000006C6563, 1, 0, 0);
    }

    else
    {
    }
  }
}

uint64_t sub_24584F5E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_24590C094();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(result + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingRetryProvisioningViewController_viewConfig);
    v9 = result;

    if (*(*(v8 + 16) + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_learnMoreURL + 8))
    {

      sub_24590C084();

      if ((*(v4 + 48))(v2, 1, v3) == 1)
      {
        sub_2457B2590(v2);
      }

      else
      {
        (*(v4 + 32))(v6, v2, v3);
        v10 = [objc_opt_self() sharedApplication];
        v11 = sub_24590C034();
        sub_2458B880C(MEMORY[0x277D84F90]);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_2457B25F8();
        v12 = sub_2459108E4();

        [v10 openURL:v11 options:v12 completionHandler:0];

        (*(v4 + 8))(v6, v3);
      }
    }
  }

  return result;
}

id sub_24584F954()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityProofingRetryProvisioningViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24584F9F4()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setContentMode_];
  v5 = [v4 layer];
  [v5 setCornerRadius_];

  [v4 setClipsToBounds_];
  [v4 setAccessibilityIgnoresInvertColors_];

  v6 = [v4 layer];
  sub_24579D5E0(0, &qword_27EE2B020);
  v7 = sub_24590D8B4();
  LOBYTE(v5) = MEMORY[0x245D76600](v7);

  if (v5)
  {
    sub_24590C714();
    v8 = sub_24590F344();
    v9 = sub_245910F54();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245767000, v8, v9, "CALayer internal setting is enabled to allow screen capture on redacted layer", v10, 2u);
      MEMORY[0x245D77B40](v10, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    [v6 setDisableUpdateMask_];
  }

  return v4;
}

id sub_24584FC68(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_24584FCC8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = [objc_opt_self() _preferredFontForTextStyle_maximumContentSizeCategory_];
  [v0 setFont_];

  return v0;
}

id sub_24584FDC4()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell____lazy_storage___imageContainer;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell____lazy_storage___imageContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell____lazy_storage___imageContainer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_24584FE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell____lazy_storage___documentImageView] = 0;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell____lazy_storage___documentTitle] = 0;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell____lazy_storage___imageContainer] = 0;
  if (a3)
  {
    v5 = sub_2459109C4();
  }

  else
  {
    v5 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for IdentityProofingDocumentPreviewTableViewCell();
  v6 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, a1, v5);

  v7 = v6;
  sub_2458500B4();
  sub_24579D5E0(0, &qword_27EE2A9A0);
  sub_2459110A4();
  MEMORY[0x245D76800]();

  swift_unknownObjectRelease();

  return v7;
}

id sub_24584FF9C(void *a1)
{
  *&v1[OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell____lazy_storage___documentImageView] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell____lazy_storage___documentTitle] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell____lazy_storage___imageContainer] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for IdentityProofingDocumentPreviewTableViewCell();
  v3 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);
  if (v3)
  {
    v4 = v3;
    v5 = v3;
    sub_2458500B4();
    sub_24579D5E0(0, &qword_27EE2A9A0);
    sub_2459110A4();
    MEMORY[0x245D76800]();

    swift_unknownObjectRelease();

    return v4;
  }

  else
  {

    return 0;
  }
}

void sub_2458500B4()
{
  [v0 separatorInset];
  [v0 setSeparatorInset_];
  v1 = [v0 contentView];
  v2 = sub_24584FDC4();
  [v1 addSubview_];

  v3 = [v0 contentView];
  v4 = sub_24584FC48();
  [v3 addSubview_];

  v45 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24591B440;
  v6 = OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell____lazy_storage___imageContainer;
  v7 = [*&v0[OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell____lazy_storage___imageContainer] widthAnchor];
  v8 = [v7 constraintEqualToConstant_];

  *(v5 + 32) = v8;
  v9 = [*&v0[v6] topAnchor];
  v10 = [v0 contentView];
  v11 = [v10 &off_278E87950];

  v12 = [v9 constraintEqualToAnchor_];
  *(v5 + 40) = v12;
  v13 = [*&v0[v6] bottomAnchor];
  v14 = [v0 contentView];
  v15 = [v14 &selRef_getGlobalProgenitorKeyAttestation_ + 5];

  v16 = [v13 constraintEqualToAnchor_];
  *(v5 + 48) = v16;
  v17 = [*&v0[v6] leadingAnchor];
  v18 = [v0 contentView];
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v5 + 56) = v20;
  v21 = [*&v0[v6] trailingAnchor];
  v22 = OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell____lazy_storage___documentTitle;
  v23 = [*&v0[OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell____lazy_storage___documentTitle] leadingAnchor];
  v24 = [v21 constraintEqualToAnchor_];

  *(v5 + 64) = v24;
  v25 = [*&v0[v22] trailingAnchor];
  v26 = [v0 contentView];
  v27 = [v26 trailingAnchor];

  v28 = [v25 constraintLessThanOrEqualToAnchor:v27 constant:-16.0];
  *(v5 + 72) = v28;
  v29 = [*&v0[v22] centerYAnchor];
  v30 = [v0 contentView];
  v31 = [v30 centerYAnchor];

  v32 = [v29 constraintEqualToAnchor_];
  *(v5 + 80) = v32;
  v33 = [*&v0[v22] topAnchor];
  v34 = [v0 contentView];
  v35 = [v34 topAnchor];

  v36 = [v33 constraintGreaterThanOrEqualToAnchor:v35 constant:16.0];
  *(v5 + 88) = v36;
  v37 = [*&v0[v22] bottomAnchor];
  v38 = [v0 contentView];
  v39 = [v38 bottomAnchor];

  v40 = [v37 constraintGreaterThanOrEqualToAnchor:v39 constant:16.0];
  *(v5 + 96) = v40;
  v41 = [v0 contentView];
  v42 = [v41 heightAnchor];

  v43 = [v42 constraintGreaterThanOrEqualToConstant_];
  *(v5 + 104) = v43;
  sub_24579D5E0(0, &qword_27EE291F0);
  v44 = sub_245910C34();

  [v45 activateConstraints_];

  sub_2458509F4();
}

void sub_245850694(void *a1)
{
  v3 = sub_24584F9D4();
  v4 = OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell____lazy_storage___documentImageView;
  v5 = [*(v1 + OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell____lazy_storage___documentImageView) constraints];
  if (!v5)
  {
    sub_24579D5E0(0, &qword_27EE291F0);
    sub_245910C44();
    v5 = sub_245910C34();
  }

  [v3 removeConstraints_];

  [*(v1 + v4) removeFromSuperview];
  [*(v1 + v4) setImage_];
  if (a1)
  {
    v6 = a1;
    [v6 size];
    v8 = v7;
    [v6 size];
    v10 = v9 > v8;
    if (v9 > v8)
    {
      v11 = 31.0;
    }

    else
    {
      v11 = 40.0;
    }

    if (v10)
    {
      v12 = 40.0;
    }

    else
    {
      v12 = 26.0;
    }

    v13 = sub_24584FDC4();
    [v13 addSubview_];

    v14 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_245917DC0;
    v16 = [*(v1 + v4) centerXAnchor];
    v17 = OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell____lazy_storage___imageContainer;
    v18 = [*(v1 + OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell____lazy_storage___imageContainer) centerXAnchor];
    v19 = [v16 constraintEqualToAnchor_];

    *(v15 + 32) = v19;
    v20 = [*(v1 + v4) centerYAnchor];
    v21 = [*(v1 + v17) centerYAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    *(v15 + 40) = v22;
    v23 = [*(v1 + v4) heightAnchor];
    v24 = [v23 constraintEqualToConstant_];

    *(v15 + 48) = v24;
    v25 = [*(v1 + v4) widthAnchor];
    v26 = [v25 constraintEqualToConstant_];

    *(v15 + 56) = v26;
    sub_24579D5E0(0, &qword_27EE291F0);
    v27 = sub_245910C34();

    [v14 activateConstraints_];
  }
}

void sub_2458509F4()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 1)
  {
    v3 = &selRef_systemGray6Color;
  }

  else
  {
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceStyle];

    if (v5 != 2)
    {
      return;
    }

    v3 = &selRef_systemGray5Color;
  }

  v6 = [objc_opt_self() *v3];
  [v0 setBackgroundColor_];
}

id sub_245850B4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityProofingDocumentPreviewTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_245850C10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_245850C58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_245850CA8()
{
  result = sub_24590D5F4();
  if (result)
  {
    v1 = result[2];
    if ((v1 - 1) < 2)
    {
      v2 = result[4];
      v3 = result[5];
LABEL_6:

      v4 = sub_24586C880(v2, v3);

      return v4;
    }

    if (v1 == 3)
    {
      v2 = result[6];
      v3 = result[7];
      goto LABEL_6;
    }

    return 0;
  }

  return result;
}

uint64_t sub_245850D4C(uint64_t a1)
{
  v2 = sub_24590F354();
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24590E544();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_24590D5F4();
  v13 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfig);
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v13;
  v15 = sub_24590D434();

  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = *(a1 + 232);
  if (!v16)
  {
    goto LABEL_11;
  }

  if (*(v16 + 16))
  {

    v17 = sub_24588C5BC(0xD000000000000015, 0x800000024592A1F0);
    if (v18)
    {
      (*(v6 + 16))(v11, *(v16 + 56) + *(v6 + 72) * v17, v5);

      (*(v6 + 56))(v11, 0, 1, v5);
      goto LABEL_9;
    }
  }

  (*(v6 + 56))(v11, 1, 1, v5);
LABEL_9:
  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_245793564(v11);
    goto LABEL_11;
  }

  (*(v6 + 16))(v8, v11, v5);
  sub_245793564(v11);
  v24 = sub_24590E534();
  (*(v6 + 8))(v8, v5);
  if (!v24)
  {
LABEL_11:
    if (!v12)
    {
      return 0;
    }

    goto LABEL_12;
  }

  sub_24590C714();
  v25 = sub_24590F344();
  v26 = sub_245910F54();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_245767000, v25, v26, "selecting unorderdUI messages for Passive Liveness", v27, 2u);
    MEMORY[0x245D77B40](v27, -1, -1);
  }

  (*(v29 + 8))(v4, v2);
  v12 = v24;
LABEL_12:
  v19 = v12[2];
  switch(v19)
  {
    case 1:
      v20 = v12[4];
      v21 = v12[5];
      goto LABEL_18;
    case 2:
      v20 = v12[6];
      v21 = v12[7];
      goto LABEL_18;
    case 3:
      v20 = v12[8];
      v21 = v12[9];
LABEL_18:

      v22 = sub_24586C880(v20, v21);

      return v22;
  }

  return 0;
}

uint64_t sub_245851188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = sub_24586C880(v3, v5);

  return v6;
}

uint64_t sub_2458511EC()
{
  v0 = sub_24590C234();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2459109B4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE32B38;
  sub_24590C224();
  return sub_245910A54();
}

id sub_2458515A0()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController____lazy_storage___tableView;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController____lazy_storage___tableView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController____lazy_storage___tableView);
  }

  else
  {
    v4 = sub_245851600();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_245851600()
{
  type metadata accessor for SelfSizingTableView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = v0;
  [v1 setAllowsSelection_];
  v2 = [v1 layer];

  [v2 setCornerRadius_];
  [v1 setRowHeight_];
  [v1 setScrollEnabled_];
  [v1 setEstimatedRowHeight_];

  return v1;
}

char *sub_2458516F0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_tableViewCellIdentifier];
  *v6 = 0xD000000000000024;
  *(v6 + 1) = 0x800000024592A3F0;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_documentsToBeReviewed] = 0;
  v7 = OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_documentsRepository;
  if (qword_27EE286A0 != -1)
  {
    swift_once();
  }

  *&v2[v7] = qword_27EE32B48;
  v8 = OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_context;
  v9 = objc_allocWithZone(MEMORY[0x277CD4790]);

  *&v2[v8] = [v9 init];
  v10 = OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_eligibilityHelper;
  type metadata accessor for IdentityProofingEligibilityHelper();
  v11 = swift_allocObject();
  v12 = sub_24590C8C4();
  swift_allocObject();
  *(v11 + 16) = sub_24590C8B4();
  *&v2[v10] = v11;
  v2[OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_hasAttemptedToShowLivenessAlert] = 0;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_proofingRequestTimeout] = 0x403E000000000000;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController____lazy_storage___tableView] = 0;

  v13 = a1;
  v14 = sub_24590D5F4();

  if (v14)
  {
    v14 = *(v14 + 16);
  }

  v15 = &v3[OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_viewConfiguration];
  *v15 = a2;
  v15[1] = v13;
  v15[2] = v14;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_proofingFlowManager] = a2;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_analyticsReporter] = *(a2 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_analyticsReporter);
  v16 = objc_allocWithZone(MEMORY[0x277CFEE60]);

  v17 = v13;

  v18 = [v16 init];
  v41 = sub_24579D5E0(0, &qword_27EE2A978);
  v42 = &off_285884710;
  *&v40 = v18;
  v19 = swift_allocObject();
  swift_allocObject();
  *(v19 + 16) = sub_24590C8B4();
  v20 = sub_24590CD84();
  v21 = [objc_allocWithZone(v20) init];
  v38 = v20;
  v39 = MEMORY[0x277CFF438];
  *&v37 = v21;
  swift_allocObject();
  v22 = sub_24590C8B4();
  v35 = v12;
  v36 = MEMORY[0x277CFF418];
  *&v34 = v22;
  v23 = [objc_allocWithZone(sub_24590D674()) init];
  v24 = &v3[OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_biometricBindingEnrollmentProvider];
  *v24 = v19;
  sub_245771B9C(&v40, (v24 + 1));
  v24[6] = sub_2457A1D5C;
  v24[7] = 0;
  sub_245771B9C(&v37, (v24 + 8));
  sub_245771B9C(&v34, (v24 + 13));
  v24[18] = v23;
  v25 = sub_24588E13C(a2, v17, v14, v3);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v27 = &v25[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  v28 = *&v25[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v27 = sub_245855BDC;
  v27[1] = v26;
  v29 = v25;
  sub_245771C34(v28);
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  v31 = &v29[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  v32 = *&v29[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v31 = sub_245855C00;
  v31[1] = v30;
  sub_245771C34(v32);

  return v29;
}

uint64_t sub_245851AFC(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for IdentityProofingReviewSubmissionViewController();
  v15.receiver = v2;
  v15.super_class = v7;
  objc_msgSendSuper2(&v15, sel_viewDidAppear_, a1 & 1);
  v8 = OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_proofingFlowManager;
  if ((*(*&v2[OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_proofingFlowManager] + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp) & 1) == 0)
  {
    v9 = sub_245910D64();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_245910D34();
    v10 = v2;
    v11 = sub_245910D24();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v10;
    sub_2458B90EC(0, 0, v6, &unk_24591B5E8, v12);
  }

  sub_24590E3D4();
  sub_24590E164();
  (*(**&v2[OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_eligibilityHelper] + 96))();
  if ((*(*&v2[v8] + 144) & 3) == 2)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  sub_24590E484();
}

uint64_t sub_245851D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_245910D34();
  v4[3] = sub_245910D24();
  v6 = sub_245910CD4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_245851E04, v6, v5);
}

uint64_t sub_245851E04()
{
  v0[6] = *(v0[2] + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_proofingFlowManager);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_245851EB0;

  return sub_24587C110();
}

uint64_t sub_245851EB0()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_2457EF078, v3, v2);
}

id sub_2458520C0()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for IdentityProofingReviewSubmissionViewController();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = v0;
    sub_245852D78();
    v5 = sub_2458515A0();
    sub_2458A6BA0(v5, 0, 1, 0, 1);

    v6 = OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController____lazy_storage___tableView;
    [*&v0[OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController____lazy_storage___tableView] setSeparatorInset_];
    v7 = *&v0[v6];
    type metadata accessor for IdentityProofingDocumentPreviewTableViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = v7;
    v10 = sub_2459109C4();
    [v9 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v10];

    [*&v4[v6] setDelegate_];
    [*&v4[v6] setDataSource_];
    sub_245852C14();

    sub_24586EFCC(1);

    sub_24579D5E0(0, &qword_27EE2A9A0);
    sub_2459110A4();
    MEMORY[0x245D76610]();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_245852368()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v5 = sub_24590F354();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v9 = sub_24590F344();
  v10 = sub_245910F54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_245767000, v9, v10, "Continue button clicked on document submission screen", v11, 2u);
    MEMORY[0x245D77B40](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  sub_24590E3B4();
  sub_24590E164();
  (*(**&v1[OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_eligibilityHelper] + 96))();
  v12 = OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_proofingFlowManager;
  if ((*(*&v1[OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_proofingFlowManager] + 144) & 3) == 2)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  sub_24590E484();

  if (*(*&v1[v12] + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp) == 1)
  {
    v13 = sub_2458A1B04();
    sub_2458B4FCC(1);

    v14 = [v1 navigationController];
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    v16 = v1;
    v17 = sub_245856140;
LABEL_10:
    sub_24586CA74(v14, 2, v17, v15);

    goto LABEL_11;
  }

  if ((*(*&v1[OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_viewConfiguration] + 144) & 3) == 2)
  {
    v18 = sub_2458A1B04();
    sub_2458B4FCC(1);

    v14 = [v1 navigationController];
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    v19 = v1;
    v17 = sub_2457CBB50;
    goto LABEL_10;
  }

  v20 = sub_2458AE30C();

  if (!v20 && (v1[OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_hasAttemptedToShowLivenessAlert] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_hasAttemptedToShowLivenessAlert] = 1;
    v26 = *&v1[v12];
    v27 = v1;

    sub_24588F21C(v27, v26, v27);

    return;
  }

  v21 = sub_245910D64();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  sub_245910D34();
  v22 = v1;
  v23 = sub_245910D24();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v22;
  sub_2458B90EC(0, 0, v4, &unk_24591B5D0, v24);
LABEL_11:
}

uint64_t sub_245852864(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_245910D64();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_245910D34();
  v6 = a1;
  v7 = sub_245910D24();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_2458B90EC(0, 0, v4, &unk_24591B5D8, v8);
}

uint64_t sub_24585298C()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v6 = sub_24590F344();
  v7 = sub_245910F54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_245767000, v6, v7, "Cancel button clicked on document submission screen", v8, 2u);
    MEMORY[0x245D77B40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_proofingFlowManager;

  sub_245887AB8(v1, 0xD000000000000012, 0x8000000245926590, 0, 0, 0);

  sub_24590E3B4();
  sub_24590E164();
  (*(**&v1[OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_eligibilityHelper] + 96))();
  if ((*(*&v1[v9] + 144) & 3) == 2)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  sub_24590E484();
}

void sub_245852C14()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 1)
  {
    v3 = &selRef_systemGray6Color;
  }

  else
  {
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceStyle];

    if (v5 != 2)
    {
      return;
    }

    v3 = &selRef_systemGray5Color;
  }

  v6 = sub_2458515A0();
  v7 = [objc_opt_self() *v3];
  [v6 setBackgroundColor_];
}

uint64_t sub_245852D78()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v71 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v70 = &v69 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v69 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v69 - v11;
  sub_24590C714();
  v13 = sub_24590F344();
  v14 = sub_245910F54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_245767000, v13, v14, "fetching the documents from the documents repository", v15, 2u);
    MEMORY[0x245D77B40](v15, -1, -1);
  }

  v75 = *(v3 + 8);
  v76 = v3 + 8;
  v16 = v75(v12, v2);
  v17 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_documentsRepository);
  v18 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_queue;
  MEMORY[0x28223BE20](v16);
  *(&v69 - 16) = 0;
  *(&v69 - 1) = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE297A8);
  v20 = sub_245911044();
  v21 = v77;
  v72 = v2;
  v73 = v19;
  v74 = v18;
  if (!v77)
  {
    v30 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v69 = v1;
  v22 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_viewConfiguration + 8);

  v23 = v22;
  v24 = sub_24590D5F4();
  if (!v24)
  {
    goto LABEL_10;
  }

  if (!v24[2])
  {

LABEL_10:

    v27 = 0;
    v29 = 0xE000000000000000;
    goto LABEL_11;
  }

  v25 = v24[4];
  v26 = v24[5];

  v27 = sub_24586C880(v25, v26);
  v29 = v28;

  if (v29)
  {
LABEL_11:
    v31 = v21;
    v30 = sub_24580B138(0, 1, 1, MEMORY[0x277D84F90]);
    v33 = *(v30 + 2);
    v32 = *(v30 + 3);
    if (v33 >= v32 >> 1)
    {
      v30 = sub_24580B138((v32 > 1), v33 + 1, 1, v30);
    }

    *(v30 + 2) = v33 + 1;
    v34 = &v30[24 * v33];
    *(v34 + 4) = v27;
    *(v34 + 5) = v29;
    *(v34 + 6) = v21;
    sub_24590C714();
    v35 = sub_24590F344();
    v36 = sub_245910F54();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_245767000, v35, v36, "Retrieved the front of the document from the document repository", v37, 2u);
      MEMORY[0x245D77B40](v37, -1, -1);
    }

    else
    {
    }

    v2 = v72;
    v20 = v75(v10, v72);
    goto LABEL_17;
  }

  v30 = MEMORY[0x277D84F90];
LABEL_17:
  v1 = v69;
LABEL_18:
  MEMORY[0x28223BE20](v20);
  *(&v69 - 16) = 1;
  *(&v69 - 1) = v17;
  v38 = sub_245911044();
  v39 = v77;
  if (v77)
  {
    v40 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_viewConfiguration + 8);

    v41 = v40;
    v42 = sub_245850CA8();
    v44 = v43;

    if (v44)
    {
      v45 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_24580B138(0, *(v30 + 2) + 1, 1, v30);
      }

      v47 = *(v30 + 2);
      v46 = *(v30 + 3);
      if (v47 >= v46 >> 1)
      {
        v30 = sub_24580B138((v46 > 1), v47 + 1, 1, v30);
      }

      *(v30 + 2) = v47 + 1;
      v48 = &v30[24 * v47];
      *(v48 + 4) = v42;
      *(v48 + 5) = v44;
      *(v48 + 6) = v39;
      v49 = v70;
      sub_24590C714();
      v50 = sub_24590F344();
      v51 = sub_245910F54();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_245767000, v50, v51, "Retrieved the back of the document from the document repository", v52, 2u);
        MEMORY[0x245D77B40](v52, -1, -1);
      }

      else
      {
      }

      v2 = v72;
      v38 = v75(v49, v72);
    }

    else
    {
    }
  }

  MEMORY[0x28223BE20](v38);
  *(&v69 - 16) = 2;
  *(&v69 - 1) = v17;
  sub_245911044();
  v53 = v77;
  if (v77)
  {
    v54 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_viewConfiguration);
    v55 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_viewConfiguration + 8);

    v56 = v55;
    v57 = sub_245850D4C(v54);
    v59 = v58;

    if (v59)
    {
      v60 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_24580B138(0, *(v30 + 2) + 1, 1, v30);
      }

      v62 = *(v30 + 2);
      v61 = *(v30 + 3);
      if (v62 >= v61 >> 1)
      {
        v30 = sub_24580B138((v61 > 1), v62 + 1, 1, v30);
      }

      *(v30 + 2) = v62 + 1;
      v63 = &v30[24 * v62];
      *(v63 + 4) = v57;
      *(v63 + 5) = v59;
      *(v63 + 6) = v53;
      v64 = v71;
      sub_24590C714();
      v65 = sub_24590F344();
      v66 = sub_245910F54();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_245767000, v65, v66, "Retrieved the selfie from the document repository", v67, 2u);
        MEMORY[0x245D77B40](v67, -1, -1);
      }

      else
      {
      }

      v75(v64, v2);
    }

    else
    {
    }
  }

  *(v1 + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_documentsToBeReviewed) = v30;
}

uint64_t sub_24585354C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_245910D34();
  v4[3] = sub_245910D24();
  v6 = sub_245910CD4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_2458535E4, v6, v5);
}

uint64_t sub_2458535E4()
{
  v1 = sub_2458A1B04();
  sub_2458B4FCC(1);

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_24585368C;

  return sub_2458537AC();
}

uint64_t sub_24585368C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_2457B3D20, v3, v2);
}

uint64_t sub_2458537AC()
{
  v1[9] = v0;
  v2 = sub_2459107E4();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = sub_245910814();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = sub_24590F354();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  sub_245910D34();
  v1[20] = sub_245910D24();
  v6 = sub_245910CD4();
  v1[21] = v6;
  v1[22] = v5;

  return MEMORY[0x2822009F8](sub_245853964, v6, v5);
}

uint64_t sub_245853964()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F44();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "Biometric binding enrollment started", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[17];

  v7 = *(v6 + 8);
  v0[23] = v7;
  v7(v4, v5);
  v8 = sub_2457AF7E0();
  sub_245854074(0, v8);
  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_245853ABC;

  return sub_2457A1DB0();
}

uint64_t sub_245853ABC()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_245853E5C;
  }

  else
  {
    v5 = sub_245853BF8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_245853BF8()
{

  v1 = sub_2457AF7E0();
  sub_245854074(1, v1);

  v2 = sub_2458AE30C();

  if (v2)
  {
    v4 = v0[14];
    v3 = v0[15];
    v5 = v0[12];
    v15 = v0[13];
    v6 = v0[10];
    v7 = v0[11];
    v8 = v0[9];
    sub_24579D5E0(0, &qword_27EE2ABC0);
    v14 = sub_245911034();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v0[6] = sub_245855D54;
    v0[7] = v9;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2458935A8;
    v0[5] = &block_descriptor_131;
    v10 = _Block_copy(v0 + 2);
    v11 = v8;
    sub_245910804();
    v0[8] = MEMORY[0x277D84F90];
    sub_245780A50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
    sub_245780AA8();
    sub_2459113A4();
    MEMORY[0x245D76690](0, v3, v5, v10);
    _Block_release(v10);

    (*(v7 + 8))(v5, v6);
    (*(v4 + 8))(v3, v15);
  }

  else
  {
    sub_245854278();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_245853E5C()
{
  v1 = v0[25];

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_245767000, v3, v4, "Biometric enrollment failed: %@", v6, 0xCu);
    sub_24579D578(v7);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  v10 = v0[25];
  v11 = v0[23];
  v12 = v0[18];
  v13 = v0[16];
  v14 = v0[9];

  v11(v12, v13);

  v15 = [v14 navigationController];
  v16 = v10;
  sub_2458866E0(v15, v10);

  v17 = sub_2457AF7E0();
  sub_245854074(2, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_245854074(char a1, char a2)
{
  sub_2458555B0(a1, a2);
  sub_24590E164();
  (*(**(v2 + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_eligibilityHelper) + 96))();
  if ((*(*(v2 + OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_proofingFlowManager) + 144) & 3) == 2)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  sub_24590E484();
}

uint64_t sub_2458541B8(void *a1)
{

  v2 = [a1 navigationController];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_24586CA74(v2, 2, sub_245856134, v3);
}

uint64_t sub_245854278()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v1 - 8);
  v33 = &v28 - v2;
  v3 = sub_24590F354();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2459107E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245910814();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24579D5E0(0, &qword_27EE2ABC0);
  v13 = sub_245911034();
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  aBlock[4] = sub_2457CB8DC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_23;
  v15 = _Block_copy(aBlock);
  v30 = v0;

  sub_245910804();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_245780A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_245780AA8();
  sub_2459113A4();
  MEMORY[0x245D76690](0, v12, v8, v15);
  _Block_release(v15);

  (*(v6 + 8))(v8, v5);
  v16 = v29;
  (*(v10 + 8))(v12, v9);
  sub_24590C714();
  v17 = sub_24590F344();
  v18 = sub_245910F54();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_2458CC378(0xD000000000000099, 0x800000024592A420, aBlock);
    _os_log_impl(&dword_245767000, v17, v18, "proofIdentity - %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x245D77B40](v20, -1, -1);
    MEMORY[0x245D77B40](v19, -1, -1);
  }

  (*(v31 + 8))(v16, v32);
  v21 = sub_245910D64();
  v22 = v33;
  (*(*(v21 - 8) + 56))(v33, 1, 1, v21);
  sub_245910D34();
  v23 = v30;
  v24 = sub_245910D24();
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = v23;
  sub_2458B90EC(0, 0, v22, &unk_24591B5C0, v25);
}

uint64_t sub_245854778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_2459107E4();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = sub_245910814();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v7 = sub_24590F354();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_245910D34();
  v4[24] = sub_245910D24();
  v9 = sub_245910CD4();
  v4[25] = v9;
  v4[26] = v8;

  return MEMORY[0x2822009F8](sub_245854930, v9, v8);
}

uint64_t sub_245854930()
{
  v1 = v0[13];
  v2 = OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_proofingFlowManager;
  v0[27] = OBJC_IVAR____TtC9CoreIDVUI46IdentityProofingReviewSubmissionViewController_proofingFlowManager;
  v0[28] = *(v1 + v2);

  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_2458549E8;

  return sub_245872958(0, 0);
}

uint64_t sub_2458549E8()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_245854DB8;
  }

  else
  {

    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_245854B04;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_245854B04()
{

  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "Proofing request successful from review submission", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v17 = v0[19];
  v18 = v0[18];
  v7 = v0[16];
  v19 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];

  (*(v5 + 8))(v4, v6);
  sub_24579D5E0(0, &qword_27EE2ABC0);
  v11 = sub_245911034();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v0[6] = sub_245855D44;
  v0[7] = v12;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2458935A8;
  v0[5] = &block_descriptor_121;
  v13 = _Block_copy(v0 + 2);
  v14 = v10;
  sub_245910804();
  v0[12] = MEMORY[0x277D84F90];
  sub_245780A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_245780AA8();
  sub_2459113A4();
  MEMORY[0x245D76690](0, v17, v7, v13);
  _Block_release(v13);

  (*(v8 + 8))(v7, v9);
  (*(v18 + 8))(v17, v19);

  v15 = v0[1];

  return v15();
}

uint64_t sub_245854DB8()
{
  v23 = v0;
  v1 = v0[30];

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F54();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[21];
    v5 = v0[22];
    v7 = v0[20];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_2459117D4();
    v12 = sub_2458CC378(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_245767000, v3, v4, "Error occured during inline proofing, %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = v0[21];
    v13 = v0[22];
    v15 = v0[20];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[30];
  v17 = v0[13];

  v18 = [v17 navigationController];
  v19 = v16;
  sub_2458866E0(v18, v16);

  v20 = v0[1];

  return v20();
}

uint64_t sub_24585501C(void *a1)
{
  v2 = sub_2458A1B04();
  sub_2458B4FCC(0);

  v3 = [a1 navigationController];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_24586CA74(v3, 2, sub_245855D4C, v4);
}

void sub_2458550F4()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_2458A1B04();

    sub_2458B4FCC(0);

    v7 = sub_2458AE30C();

    if (v7)
    {
      sub_24590C714();
      v8 = sub_24590F344();
      v9 = sub_245910F54();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_245767000, v8, v9, "pagination has terms and conditions", v10, 2u);
        MEMORY[0x245D77B40](v10, -1, -1);
      }

      (*(v1 + 8))(v3, v0);
      while (1)
      {
        v12 = v5;
        v13 = [v12 navigationController];
        v14 = [v13 topViewController];

        if (v14)
        {
          sub_24579D5E0(0, &qword_27EE28F28);
          v15 = v12;
          v16 = sub_245911294();

          if (v16)
          {
            break;
          }
        }

        v11 = [v12 navigationController];
      }
    }
  }
}