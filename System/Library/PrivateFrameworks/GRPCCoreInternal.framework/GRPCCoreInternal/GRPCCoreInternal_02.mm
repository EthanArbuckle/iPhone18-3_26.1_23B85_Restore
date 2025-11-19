uint64_t sub_24DC51650()
{
  v1 = *v0;
  v2 = *(*v0 + 584);
  v6 = *v0;

  v3 = *(v1 + 280);
  v4 = *(v1 + 296);

  return MEMORY[0x2822009F8](sub_24DC51784, 0, 0);
}

uint64_t sub_24DC51784()
{
  v69 = v0;
  v1 = *(v0 + 528);
  type metadata accessor for StreamingClientResponse.Contents();
  sub_24DC2E0D8();
  v2 = sub_24DCB5904();
  *(v0 + 592) = v2;
  v3 = *(v2 - 8);
  *(v0 + 600) = v3;
  (*(v3 + 16))(v0 + 200, v0 + 144, v2);
  if (*(v0 + 248))
  {
    v4 = *(v0 + 576);
    v5 = *(v0 + 552);
    v6 = *(v0 + 512);
    v7 = *(v0 + 360);
    v8 = *(v0 + 328);
    v9 = *(v0 + 200);
    v10 = *(v0 + 224);
    *(v0 + 632) = *(v0 + 216);
    *(v0 + 640) = v10;
    v11 = *(v0 + 232);
    *(v0 + 648) = v11;
    v12 = *v8;
    sub_24DCB5164();
    v13 = *(v7 + *(v4 + 84) + 24);
    v67 = v9;
    Status.Code.init(_:)(&v67);
    LOBYTE(v13) = sub_24DC529CC(v66, v13);
    v14 = (*(v5 + 24))(v6, v5);
    if (v13)
    {
      if (v14)
      {
        sub_24DC93278();
      }

      v15 = *(v0 + 528);
      v65 = *(v0 + 424);
      v16 = *(v0 + 320);
      v17 = type metadata accessor for StreamingClientResponse();
      (*(*(v17 - 8) + 16))(v16, v0 + 144, v17);
      v68 = v10;
      v18 = sub_24DC7F274();
      v20 = v19;
      v22 = v21;
      v23 = *(v0 + 256);
      v24 = *(v0 + 272);

      MEMORY[0x2530363B0](v11);
      *(v16 + 56) = v18;
      *(v16 + 64) = v20;
      *(v16 + 72) = v22;
      *(v16 + 73) = HIBYTE(v22) & 1;
      type metadata accessor for _HedgingAttemptTaskResult.AttemptResult();
      goto LABEL_19;
    }

    if (v14)
    {
      sub_24DC93230();
    }

    v36 = *(v0 + 568);
    v37 = *(v0 + 544);
    v38 = *(v0 + 424);
    v39 = *(v0 + 392);
    v40 = swift_task_alloc();
    v41 = *(v0 + 528);
    v42 = *(v0 + 552);
    *(v40 + 16) = *(v0 + 512);
    *(v40 + 32) = v41;
    *(v40 + 48) = v37;
    *(v40 + 56) = v38;
    *(v40 + 64) = v42;
    *(v40 + 80) = v36;
    sub_24DC4E648(sub_24DC562B0);

    if (*(v0 + 193) != 1)
    {
      v52 = *(v0 + 528);
      v53 = *(v0 + 424);
      v54 = *(v0 + 320);
      v55 = *(v0 + 256);
      v56 = *(v0 + 272);

      MEMORY[0x2530363B0](v11);
      v57 = type metadata accessor for StreamingClientResponse();
      (*(*(v57 - 8) + 16))(v54, v0 + 144, v57);
      *(v54 + 56) = 0;
      *(v54 + 64) = 0;
      *(v54 + 72) = 256;
      type metadata accessor for _HedgingAttemptTaskResult.AttemptResult();
LABEL_19:
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    }

    *(v0 + 304) = *(v0 + 376);
    v43 = swift_task_alloc();
    *(v0 + 656) = v43;
    *v43 = v0;
    v43[1] = sub_24DC52270;
    v44 = *(v0 + 400);
    v35 = v0 + 304;
  }

  else
  {
    v25 = *(v0 + 360);
    if ((*(*(v0 + 552) + 24))(*(v0 + 512)))
    {
      sub_24DC93230();
    }

    v26 = *(v0 + 568);
    v27 = *(v0 + 544);
    v28 = *(v0 + 424);
    v29 = *(v0 + 392);
    v30 = swift_task_alloc();
    v31 = *(v0 + 528);
    v32 = *(v0 + 552);
    *(v30 + 16) = *(v0 + 512);
    *(v30 + 32) = v31;
    *(v30 + 48) = v27;
    *(v30 + 56) = v28;
    *(v30 + 64) = v32;
    *(v30 + 80) = v26;
    sub_24DC4E648(sub_24DC57B58);

    if (*(v0 + 194) != 1)
    {
      v46 = *(v0 + 528);
      v47 = *(v0 + 424);
      v48 = *(v0 + 320);
      v49 = *(v0 + 256);
      v50 = *(v0 + 272);

      v51 = type metadata accessor for StreamingClientResponse();
      (*(*(v51 - 8) + 16))(v48, v0 + 144, v51);
      *(v48 + 56) = 0;
      *(v48 + 64) = 0;
      *(v48 + 72) = 256;
      type metadata accessor for _HedgingAttemptTaskResult.AttemptResult();
      swift_storeEnumTagMultiPayload();
      (*(v3 + 8))(v0 + 200, v2);
LABEL_20:
      v58 = *(v0 + 528);
      v59 = *(v0 + 496);
      v60 = *(v0 + 504);
      v62 = *(v0 + 464);
      v61 = *(v0 + 472);
      v63 = type metadata accessor for StreamingClientResponse();
      (*(*(v63 - 8) + 8))(v0 + 144, v63);

      v64 = *(v0 + 8);

      return v64();
    }

    *(v0 + 312) = *(v0 + 376);
    v33 = swift_task_alloc();
    *(v0 + 608) = v33;
    *v33 = v0;
    v33[1] = sub_24DC51DA8;
    v34 = *(v0 + 400);
    v35 = v0 + 312;
  }

  return sub_24DC5D9C0(v35);
}

uint64_t sub_24DC51DA8()
{
  v2 = *(*v1 + 608);
  v4 = *v1;

  if (v0)
  {
    MEMORY[0x2530363B0](v0);
  }

  return MEMORY[0x2822009F8](sub_24DC51EC0, 0, 0);
}

uint64_t sub_24DC51EC0()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 544);
  v3 = *(v0 + 424);
  v4 = *(v0 + 400);
  v11 = *(v0 + 528);
  v12 = *(v0 + 512);
  v13 = *(v0 + 552);
  v14 = *(v0 + 408);
  sub_24DC5E3E8();
  v5 = swift_task_alloc();
  *(v0 + 616) = v5;
  *(v5 + 16) = v12;
  *(v5 + 32) = v11;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v13;
  *(v5 + 80) = v1;
  *(v5 + 88) = v14;
  *(v5 + 104) = v0 + 144;
  v6 = swift_task_alloc();
  *(v0 + 624) = v6;
  *v6 = v0;
  v6[1] = sub_24DC51FF8;
  v7 = *(v0 + 464);
  v8 = *(v0 + 440);
  v9 = *(v0 + 424);

  return sub_24DC8C5F4(v7, dword_24DCB9F00, v5, v9, v8);
}

uint64_t sub_24DC51FF8()
{
  v1 = *(*v0 + 624);
  v2 = *(*v0 + 616);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24DC52110, 0, 0);
}

uint64_t sub_24DC52110()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[66];
  v5 = v0[57];
  v4 = v0[58];
  v6 = v0[56];
  v7 = v0[53];
  v8 = v0[40];
  v9 = v0[32];
  v10 = v0[34];

  (*(v5 + 32))(v8, v4, v6);
  type metadata accessor for _HedgingAttemptTaskResult.AttemptResult();
  swift_storeEnumTagMultiPayload();
  (*(v1 + 8))(v0 + 25, v2);
  v11 = v0[66];
  v12 = v0[62];
  v13 = v0[63];
  v15 = v0[58];
  v14 = v0[59];
  v16 = type metadata accessor for StreamingClientResponse();
  (*(*(v16 - 8) + 8))(v0 + 18, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_24DC52270()
{
  v2 = *(*v1 + 656);
  v5 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v3 = sub_24DC5272C;
  }

  else
  {
    v3 = sub_24DC52384;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DC52384()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 544);
  v3 = *(v0 + 424);
  v4 = *(v0 + 400);
  v11 = *(v0 + 528);
  v12 = *(v0 + 512);
  v13 = *(v0 + 552);
  v14 = *(v0 + 408);
  sub_24DC5E3E8();
  v5 = swift_task_alloc();
  *(v0 + 672) = v5;
  *(v5 + 16) = v12;
  *(v5 + 32) = v11;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v13;
  *(v5 + 80) = v1;
  *(v5 + 88) = v14;
  *(v5 + 104) = v0 + 144;
  v6 = swift_task_alloc();
  *(v0 + 680) = v6;
  *v6 = v0;
  v6[1] = sub_24DC524BC;
  v7 = *(v0 + 464);
  v8 = *(v0 + 440);
  v9 = *(v0 + 424);

  return sub_24DC8C5F4(v7, dword_24DCB9EF0, v5, v9, v8);
}

uint64_t sub_24DC524BC()
{
  v1 = *(*v0 + 680);
  v2 = *(*v0 + 672);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24DC525D4, 0, 0);
}

uint64_t sub_24DC525D4()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[66];
  v6 = v0[57];
  v5 = v0[58];
  v7 = v0[56];
  v8 = v0[53];
  v9 = v0[40];

  MEMORY[0x2530363B0](v1);
  v10 = v0[32];
  v11 = v0[34];

  (*(v6 + 32))(v9, v5, v7);
  type metadata accessor for _HedgingAttemptTaskResult.AttemptResult();
  swift_storeEnumTagMultiPayload();
  v12 = v0[66];
  v13 = v0[62];
  v14 = v0[63];
  v16 = v0[58];
  v15 = v0[59];
  v17 = type metadata accessor for StreamingClientResponse();
  (*(*(v17 - 8) + 8))(v0 + 18, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_24DC52748()
{
  v1 = *(v0 + 16);
  if ((v1 & 1) == 0)
  {
    *(v0 + 16) = 1;
  }

  return v1 ^ 1u;
}

uint64_t sub_24DC52760(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = v12;
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24DC52874;

  return v10(a1, a4);
}

uint64_t sub_24DC52874()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC529A8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_24DC529CC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = *(a2 + 40), sub_24DC3DF2C(), v4 = sub_24DCB4D24(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    sub_24DC3DF80();
    do
    {
      v10 = *(*(a2 + 48) + v6);
      v8 = sub_24DCB4DA4();
      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_24DC52AB8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = v12;
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24DC52BCC;

  return v10(a1, a4);
}

uint64_t sub_24DC52BCC()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC57B50, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

_OWORD *sub_24DC52D20(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[3];
  v8 = *(*v1 + 96);
  v9 = *(*v1 + 80);
  v6 = *(*v1 + 128);
  v7 = *(*v1 + 112);

  v10[0] = v2;
  v10[1] = 1;
  v11 = 0;
  LODWORD(v12[0]) = 0;
  memset(v12 + 8, 0, 17);
  v4 = _s15HedgingExecutorV5StateVMa();
  (*(*(v4 - 8) + 32))(v12 + 8, v10, v4);
  v1[1] = v12[0];
  *(v1 + 25) = *(v12 + 9);
  return v1;
}

uint64_t sub_24DC52E0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];

  return v1;
}

uint64_t sub_24DC52E40()
{
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 112);
  v6 = *(*v0 + 128);
  _s15HedgingExecutorV5StateVMa();
  v1 = *(sub_24DCB4C14() + 16);
  sub_24DCB5404();
  return v0;
}

uint64_t sub_24DC52EC8()
{
  sub_24DC52E40();

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_24DC52F34@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CancellableTaskHandle();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t (*sub_24DC52FF0(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 84);
  return result;
}

uint64_t sub_24DC53014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a6;
  v6[6] = v12;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v7 = sub_24DCB55C4();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC530E4, 0, 0);
}

uint64_t sub_24DC530E4()
{
  v1 = v0[9];
  v2 = sub_24DCB59A4();
  v4 = v3;
  sub_24DCB5854();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_24DC531BC;
  v6 = v0[9];
  v8 = v0[3];
  v7 = v0[4];

  return sub_24DC539F0(v8, v7, v2, v4, 0);
}

uint64_t sub_24DC531BC()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_24DC533B4;
  }

  else
  {
    v6 = sub_24DC5332C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24DC5332C()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  **(v0 + 16) = 0;
  type metadata accessor for _HedgingAttemptTaskResult();
  swift_storeEnumTagMultiPayload();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24DC533B4()
{
  MEMORY[0x2530363B0](*(v0 + 88));
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  **(v0 + 16) = 1;
  type metadata accessor for _HedgingAttemptTaskResult();
  swift_storeEnumTagMultiPayload();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24DC53464()
{
  sub_24DCB58A4();
  sub_24DC459B0(v2, *v0);
  return sub_24DCB58F4();
}

uint64_t sub_24DC534BC(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = *(v3 + 48);
  v12 = *(v3 + 56);
  v16 = *(v3 + 80);
  v17 = *(v3 + 64);
  v13 = *(v3 + 96);
  v14 = swift_task_alloc();
  *(v4 + 16) = v14;
  *v14 = v4;
  v14[1] = sub_24DC334F4;

  return sub_24DC4FA30(a1, a2, a3, v8, v9, v10, v11, v12);
}

uint64_t sub_24DC53608(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[7];
  v7 = v1[11];
  v6 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24DC334F4;

  return sub_24DC53014(a1, v7, v6, v8, v9, v4);
}

uint64_t sub_24DC536D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F008, &qword_24DCB9C18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DC53740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CancellableTaskHandle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DC537A4(uint64_t a1)
{
  v2 = type metadata accessor for CancellableTaskHandle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24DC53800(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC538F8;

  return v7(a1);
}

uint64_t sub_24DC538F8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24DC539F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24DCB55B4();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24DC53AF0, 0, 0);
}

uint64_t sub_24DC53AF0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_24DCB55C4();
  v7 = sub_24DC5593C(&qword_27F19F040, MEMORY[0x277D85928]);
  sub_24DCB5834();
  sub_24DC5593C(&qword_27F19F048, MEMORY[0x277D858F8]);
  sub_24DCB55D4();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_24DC53C80;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_24DC53C80()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC53E3C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_24DC53E3C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

void sub_24DC53ECC(void *a1)
{
  v2 = a1[2];
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    sub_24DC54D54(319, &qword_27F19F010, MEMORY[0x277D858F8]);
    if (v4 <= 0x3F)
    {
      sub_24DC547E8();
      if (v5 <= 0x3F)
      {
        v6 = a1[5];
        swift_checkMetadataState();
        if (v7 <= 0x3F)
        {
          v8 = a1[6];
          swift_checkMetadataState();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24DC53FD0(_DWORD *a1, unsigned int a2, void *a3)
{
  v54 = a3[2];
  v6 = *(v54 - 8);
  v53 = v6;
  v7 = *(v6 + 84);
  v8 = *(sub_24DCB55B4() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  v13 = a3[6];
  v14 = *(a3[5] - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = *(v13 - 8);
  if (v12 <= v16)
  {
    v18 = *(v14 + 84);
  }

  else
  {
    v18 = v12;
  }

  v19 = *(v13 - 8);
  v20 = *(v17 + 84);
  v21 = *(v6 + 64);
  v22 = *(v8 + 80);
  v23 = *(v8 + 64);
  v24 = *(v14 + 80);
  v25 = *(v14 + 64);
  v26 = *(v17 + 80);
  v27 = *(v17 + 64);
  if (v18 <= v20)
  {
    v28 = *(v17 + 84);
  }

  else
  {
    v28 = v18;
  }

  if (v28 <= 0x7FFFFFFF)
  {
    v29 = 0x7FFFFFFF;
  }

  else
  {
    v29 = v28;
  }

  if (v10)
  {
    v30 = v23;
  }

  else
  {
    v30 = v23 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v31 = v30 + 7;
  v32 = v24 + 8;
  v33 = v25 + v26;
  if (v29 < a2)
  {
    v34 = ((v27 + ((v33 + ((v32 + ((v31 + ((v22 + ((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v22)) & 0xFFFFFFFFFFFFFFF8)) & ~v24)) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v35 = a2 - v29;
    v36 = v34 & 0xFFFFFFF8;
    if ((v34 & 0xFFFFFFF8) != 0)
    {
      v37 = 2;
    }

    else
    {
      v37 = v35 + 1;
    }

    if (v37 >= 0x10000)
    {
      v38 = 4;
    }

    else
    {
      v38 = 2;
    }

    if (v37 < 0x100)
    {
      v38 = 1;
    }

    if (v37 < 2)
    {
      v38 = 0;
    }

    if (v38 > 1)
    {
      if (v38 == 2)
      {
        v39 = *(a1 + v34);
        if (v39)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v39 = *(a1 + v34);
        if (v39)
        {
          goto LABEL_34;
        }
      }
    }

    else if (v38)
    {
      v39 = *(a1 + v34);
      if (v39)
      {
LABEL_34:
        v40 = v39 - 1;
        if (v36)
        {
          v40 = 0;
          v41 = *a1;
        }

        else
        {
          v41 = 0;
        }

        return v29 + (v41 | v40) + 1;
      }
    }
  }

  if (v7 == v29)
  {
    v42 = v54;
    v43 = *(v53 + 48);
    v44 = a1;
    v45 = v7;
LABEL_42:

    return v43(v44, v45, v42);
  }

  v47 = (a1 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v28 & 0x80000000) == 0)
  {
    v48 = *(v47 + 24);
    if (v48 >= 0xFFFFFFFF)
    {
      LODWORD(v48) = -1;
    }

    return (v48 + 1);
  }

  v49 = (v47 + v22 + 32) & ~v22;
  if (v11 == v29)
  {
    if (v10 >= 2)
    {
      v52 = (*(v9 + 48))(v49);
      if (v52 >= 2)
      {
        return v52 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v50 = (v32 + ((v31 + v49) & 0xFFFFFFFFFFFFFFF8)) & ~v24;
  if (v16 != v29)
  {
    v43 = *(*(v13 - 8) + 48);
    v44 = ((v33 + v50) & ~v26);
    v45 = v20;
    v42 = v13;
    goto LABEL_42;
  }

  v51 = *(v15 + 48);

  return v51(v50, v16);
}

void sub_24DC543A8(_DWORD *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[2];
  v9 = *(v8 - 8);
  v47 = v9;
  v10 = *(v9 + 84);
  v11 = 0;
  v12 = *(sub_24DCB55B4() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = a4[5];
  v17 = *(v16 - 8);
  if (v10 <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = v10;
  }

  v19 = *(a4[5] - 8);
  v20 = *(v17 + 84);
  if (v18 <= v20)
  {
    v21 = *(v17 + 84);
  }

  else
  {
    v21 = v18;
  }

  v22 = a4[6];
  v23 = *(v22 - 8);
  v24 = *(v23 + 84);
  v25 = *(v9 + 64);
  v26 = *(v12 + 80);
  v27 = *(v12 + 64);
  v28 = *(v17 + 80);
  v29 = *(v17 + 64);
  v30 = *(v23 + 80);
  if (v21 <= v24)
  {
    v31 = *(v23 + 84);
  }

  else
  {
    v31 = v21;
  }

  if (v31 <= 0x7FFFFFFF)
  {
    v32 = 0x7FFFFFFF;
  }

  else
  {
    v32 = v31;
  }

  if (v14)
  {
    v33 = v27;
  }

  else
  {
    v33 = v27 + 1;
  }

  v34 = v33 + 7;
  v35 = ((*(v23 + 64) + ((v29 + v30 + ((v28 + 8 + ((v34 + ((v26 + ((v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v26)) & 0xFFFFFFFFFFFFFFF8)) & ~v28)) & ~v30) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v32 < a3)
  {
    v36 = a3 - v32;
    if (((*(v23 + 64) + ((v29 + v30 + ((v28 + 8 + ((v34 + ((v26 + ((v25 + 7) & 0xFFFFFFF8) + 32) & ~v26)) & 0xFFFFFFF8)) & ~v28)) & ~v30) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v37 = v36 + 1;
    }

    else
    {
      v37 = 2;
    }

    if (v37 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v37 < 0x100)
    {
      v11 = 1;
    }

    if (v37 < 2)
    {
      v11 = 0;
    }
  }

  if (a2 > v32)
  {
    if (((*(v23 + 64) + ((v29 + v30 + ((v28 + 8 + ((v34 + ((v26 + ((v25 + 7) & 0xFFFFFFF8) + 32) & ~v26)) & 0xFFFFFFF8)) & ~v28)) & ~v30) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v38 = a2 - v32;
    }

    else
    {
      v38 = 1;
    }

    if (((*(v23 + 64) + ((v29 + v30 + ((v28 + 8 + ((v34 + ((v26 + ((v25 + 7) & 0xFFFFFFF8) + 32) & ~v26)) & 0xFFFFFFF8)) & ~v28)) & ~v30) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v39 = ~v32 + a2;
      bzero(a1, v35);
      *a1 = v39;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(a1 + v35) = v38;
      }

      else
      {
        *(a1 + v35) = v38;
      }
    }

    else if (v11)
    {
      *(a1 + v35) = v38;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *(a1 + v35) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v35) = 0;
  }

  else if (v11)
  {
    *(a1 + v35) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v10 == v32)
  {
    v40 = *(v47 + 56);
    v41 = a1;
    v42 = a2;
    v43 = v10;
    v16 = v8;
    goto LABEL_50;
  }

  v44 = ((a1 + v25 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v31 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v44[2] = 0;
      v44[3] = 0;
      *v44 = a2 & 0x7FFFFFFF;
      v44[1] = 0;
    }

    else
    {
      v44[3] = (a2 - 1);
    }

    return;
  }

  v45 = (v44 + v26 + 32) & ~v26;
  if (v15 != v32)
  {
    v41 = (v28 + 8 + ((v34 + v45) & 0xFFFFFFFFFFFFFFF8)) & ~v28;
    if (v20 != v32)
    {
      v40 = *(v23 + 56);
      v41 = (v29 + v30 + v41) & ~v30;
      v42 = a2;
      v43 = v24;
      v16 = v22;

      goto LABEL_70;
    }

    v40 = *(v19 + 56);
    v42 = a2;
    v43 = v20;
LABEL_50:

LABEL_70:
    v40(v41, v42, v43, v16);
    return;
  }

  if (v14 >= 2)
  {
    v46 = *(v13 + 56);

    v46(v45, (a2 + 1));
  }
}

void sub_24DC547E8()
{
  if (!qword_27F19F018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F020, &qword_24DCBCE70);
    v0 = sub_24DCB50A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F19F018);
    }
  }
}

uint64_t sub_24DC548AC(__int128 *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  _s15HedgingExecutorV5StateVMa();
  return sub_24DCB4C04();
}

uint64_t sub_24DC54910()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24DC54960(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24DC549B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24DC549F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24DC54A48(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24DC54A9C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_24DC54B00()
{
  sub_24DC54D54(319, &qword_27F19F028, type metadata accessor for CancellableTaskHandle);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24DC54BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F008, &qword_24DCB9C18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 84));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24DC54C90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F008, &qword_24DCB9C18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 84)) = a2 + 1;
  }

  return result;
}

void sub_24DC54D54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24DCB5414();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24DC54DA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB5904();
  if (v2 <= 0x3F)
  {
    sub_24DC55134();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_24DC54E44(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  v4 = 9;
  if (v3 + 1 > 9)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_27:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_27;
  }

LABEL_16:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_24DC54F6C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 9)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 9;
  }

  v7 = v6 + 1;
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 253) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_42:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v6] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_27;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

void sub_24DC55134()
{
  if (!qword_27F19F030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    v0 = sub_24DCB5904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F19F030);
    }
  }
}

uint64_t sub_24DC551AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for _HedgingAttemptTaskResult.AttemptResult();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for _HedgingAttemptTaskResult.ScheduleEvent();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC55248(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  if (v3 + 1 > 0x4A)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 74;
  }

  v5 = 1;
  if ((v4 + 1) > 1)
  {
    v5 = v4 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_30;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v10 < 2)
    {
LABEL_30:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_30;
  }

LABEL_19:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_24DC55380(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 0x4A)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 74;
  }

  if ((v6 + 1) > 1)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_45:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_45;
          }
        }

LABEL_42:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_31:
      a1[v7] = -a2;
      return;
    }

LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_30;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_31;
  }
}

uint64_t sub_24DC55570(uint64_t a1)
{
  v2 = *(a1 + 24);
  type metadata accessor for StreamingClientResponse();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F038, qword_24DCB9E60);
  result = swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    result = sub_24DCB5904();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC5564C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  v4 = 74;
  if (v3 + 1 > 0x4A)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_27:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_27;
  }

LABEL_16:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_24DC55774(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 0x4A)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 74;
  }

  v7 = v6 + 1;
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 253) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_42:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v6] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_27;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t sub_24DC5593C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24DC55984(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 64);
  v15 = *(v2 + 88);
  v16 = *(v2 + 72);
  v14 = *(v2 + 104);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24DC334F4;

  return sub_24DC4FD24(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_24DC55AA0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[13];

  v3 = v0[14];

  return swift_deallocObject();
}

uint64_t sub_24DC55AE8(uint64_t a1)
{
  v4 = v1[6];
  v5 = v1[9];
  v6 = v1[13];
  v7 = v1[15];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24DC334F4;

  return sub_24DC50968(a1, v8, v9, v6, v10, v7);
}

uint64_t sub_24DC55BB4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v30 = *(v0 + 32);
  v32 = *(v0 + 48);
  v33 = *(v0 + 80);
  v34 = *(v0 + 96);
  v3 = _s15HedgingExecutorVMa();
  v31 = *(*(v3 - 1) + 80);
  v4 = (v31 + 128) & ~v31;
  v5 = *(*(v3 - 1) + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 104);

  v8 = *(v0 + 120);

  v9 = v0 + v4;
  (*(*(v30 - 8) + 8))(v0 + v4);
  v10 = *(v0 + v4 + v3[21] + 24);

  v11 = v3[22];
  v12 = sub_24DCB55B4();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v4 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  v14 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (((v14 + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 119) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v9 + v3[23]);

  (*(*(v1 - 8) + 8))(v9 + v3[24], v1);
  (*(*(v2 - 8) + 8))(v9 + v3[25], v2);
  v19 = *(v0 + v14 + 8);

  v20 = *(v0 + v14 + 24);

  v21 = *(v0 + v14 + 40);

  v22 = *(v0 + v14 + 56);

  v23 = *(v0 + v15 + 8);

  v24 = *(v0 + v15 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + v15 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + v15 + 72));
  v25 = *(v0 + v16);

  v26 = *(v0 + v17);

  v27 = *(v0 + v17 + 8);

  v28 = *(v0 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_24DC55E88(uint64_t a1)
{
  v3 = *(v1 + 64);
  v27 = *(v1 + 72);
  v4 = *(v1 + 96);
  v5 = *(v1 + 48);
  v6 = *(v1 + 80);
  *(v2 + 16) = *(v1 + 32);
  *(v2 + 32) = v5;
  *(v2 + 48) = v3;
  *(v2 + 56) = v6;
  *(v2 + 72) = v4;
  v7 = *(_s15HedgingExecutorVMa() - 8);
  v8 = (*(v7 + 80) + 128) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 71) & 0xFFFFFFFFFFFFFFF8;
  v11 = (((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v1 + 112);
  v26 = *(v1 + 104);
  v23 = *(v1 + v10);
  v24 = *(v1 + 120);
  v14 = *(v1 + v11);
  v15 = *(v1 + v12);
  v16 = *(v1 + v12 + 8);
  v17 = *(v1 + v13);
  v18 = *(v1 + v13 + 8);
  v21 = swift_task_alloc();
  *(v2 + 80) = v21;
  *v21 = v2;
  v21[1] = sub_24DC56054;

  return sub_24DC50DA8(a1, v19, v20, v26, v25, v24, v1 + v8, v1 + v9);
}

uint64_t sub_24DC56054()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24DC561A4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 40);
  v16 = *(v2 + 32);
  v17 = *(v2 + 24);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v10 = *(v2 + 64);
  v9 = *(v2 + 72);
  v11 = *(v2 + 80);
  v15 = *(v2 + 96);
  v12 = *(v2 + 112);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24DC2FD00;

  return sub_24DC510F8(a1, a2, v17, v16, v6, v7, v8, v10);
}

uint64_t sub_24DC562B4(uint64_t a1)
{
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24DC334F4;

  return sub_24DC52AB8(a1, v4, v5, v6);
}

uint64_t sub_24DC5637C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v7 = *(v2 + 16);
  v8 = *(v2 + 32);
  v9 = *(v2 + 48);
  v10 = *(v2 + 64);
  v11 = *(v2 + 80);
  result = _s15HedgingExecutorV5StateVMa();
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    *(a1 + 16) = 1;
  }

  *a2 = v6 ^ 1;
  return result;
}

uint64_t sub_24DC563F4(uint64_t a1)
{
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24DC2FD00;

  return sub_24DC52760(a1, v4, v5, v6);
}

uint64_t sub_24DC564BC()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_24DC564F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24DC334F4;

  return sub_24DC53800(a1, v5);
}

unint64_t sub_24DC565BC()
{
  result = qword_27F19F060;
  if (!qword_27F19F060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F058, &qword_24DCB9F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F060);
  }

  return result;
}

uint64_t sub_24DC56620@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *(v2 + 16);
  v10 = *(v2 + 32);
  v11 = *(v2 + 48);
  v12 = *(v2 + 64);
  v13 = *(v2 + 80);
  result = _s15HedgingExecutorV5StateVMa();
  if ((a1[2] & 1) == 0)
  {
    v7 = *a1;
    v6 = a1[1];
    if (*a1 >= v6)
    {
      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        a1[1] = v8;
        *a2 = v6;
        *(a2 + 8) = v7 >= v8;
        return result;
      }

      __break(1u);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC566C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 64);
  v44 = *(v12 + 72);
  v15 = *(v12 + 96);
  v16 = *(v12 + 48);
  v17 = *(v12 + 80);
  *(v13 + 16) = *(v12 + 32);
  *(v13 + 32) = v16;
  *(v13 + 48) = v14;
  *(v13 + 56) = v17;
  *(v13 + 72) = v15;
  v18 = *(_s15HedgingExecutorVMa() - 8);
  v19 = (*(v18 + 80) + 104) & ~*(v18 + 80);
  v20 = (*(v18 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 39) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 137) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v12 + v20);
  v43 = *v25;
  v41 = v25[2];
  v42 = v25[1];
  v26 = v12 + v21;
  v40 = *v26;
  v39 = *(v26 + 8);
  v38 = *(v26 + 24);
  v27 = *(v12 + ((v22 + 121) & 0xFFFFFFFFFFFFFFF8));
  v28 = *(v12 + v23);
  v29 = *(v12 + v24);
  v30 = *(v12 + v24 + 8);
  v31 = (v12 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8));
  v32 = *v31;
  v33 = v31[1];
  v36 = swift_task_alloc();
  *(v13 + 80) = v36;
  *v36 = v13;
  v36[1] = sub_24DC57B4C;

  return sub_24DC4E710(a1, v34, v35, v12 + v19, v43, v42, v41, v40, a9, a10, a11, a12);
}

uint64_t sub_24DC5691C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24DC334F4;

  return sub_24DC4F6B0(a1, v5, v6, v7, v8, v9, v4);
}

uint64_t sub_24DC569EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 64);
  v44 = *(v12 + 72);
  v15 = *(v12 + 96);
  v16 = *(v12 + 48);
  v17 = *(v12 + 80);
  *(v13 + 16) = *(v12 + 32);
  *(v13 + 32) = v16;
  *(v13 + 48) = v14;
  *(v13 + 56) = v17;
  *(v13 + 72) = v15;
  v18 = *(_s15HedgingExecutorVMa() - 8);
  v19 = (*(v18 + 80) + 104) & ~*(v18 + 80);
  v20 = (*(v18 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 39) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 137) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v12 + v20);
  v43 = *v25;
  v41 = v25[2];
  v42 = v25[1];
  v26 = v12 + v21;
  v40 = *v26;
  v39 = *(v26 + 8);
  v38 = *(v26 + 24);
  v27 = *(v12 + ((v22 + 121) & 0xFFFFFFFFFFFFFFF8));
  v28 = *(v12 + v23);
  v29 = *(v12 + v24);
  v30 = *(v12 + v24 + 8);
  v31 = (v12 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8));
  v32 = *v31;
  v33 = v31[1];
  v36 = swift_task_alloc();
  *(v13 + 80) = v36;
  *v36 = v13;
  v36[1] = sub_24DC57B4C;

  return sub_24DC4F19C(a1, v34, v35, v12 + v19, v43, v42, v41, v40, a9, a10, a11, a12);
}

uint64_t sub_24DC56BE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *(v2 + 16);
  v11 = *(v2 + 32);
  v12 = *(v2 + 48);
  v13 = *(v2 + 64);
  v14 = *(v2 + 80);
  result = _s15HedgingExecutorV5StateVMa();
  if ((a1[2] & 1) != 0 || (v7 = *a1, v6 = a1[1], *a1 < v6))
  {
    v6 = 0;
    v8 = 2;
LABEL_6:
    *a2 = v6;
    *(a2 + 8) = v8;
    return result;
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    a1[1] = v9;
    v8 = v7 >= v9;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_86Tm()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v35 = *(v0 + 32);
  v37 = *(v0 + 48);
  v38 = *(v0 + 80);
  v39 = *(v0 + 96);
  v3 = _s15HedgingExecutorVMa();
  v4 = (*(*(v3 - 1) + 80) + 104) & ~*(*(v3 - 1) + 80);
  v5 = (*(*(v3 - 1) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = v0 + v4;
  (*(*(v35 - 8) + 8))(v8);
  v9 = *(v8 + v3[21] + 24);

  v10 = v3[22];
  v11 = sub_24DCB55B4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v8 + v10, 1, v11))
  {
    (*(v12 + 8))(v8 + v10, v11);
  }

  v13 = *(v8 + v3[23]);

  (*(*(v1 - 8) + 8))(v8 + v3[24], v1);
  (*(*(v2 - 8) + 8))(v8 + v3[25], v2);
  v14 = *(v0 + v5);

  v15 = *(v0 + v5 + 16);

  v16 = *(v0 + v6 + 8);

  v17 = *(v0 + v6 + 24);

  v18 = (v0 + v36);
  if (*(v0 + v36 + 112) != 255)
  {
    v19 = v18[7];
    v20 = v18[8];
    v21 = v18[9];
    v22 = v18[10];
    v23 = v18[11];
    v24 = v18[12];
    v25 = v18[13];
    sub_24DC566BC();
  }

  v26 = (v36 + 137) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v0 + v26);

  v30 = (v0 + v27);
  v31 = *v30;

  v32 = v30[1];

  v33 = *(v0 + v28 + 8);

  return swift_deallocObject();
}

uint64_t sub_24DC56F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 64);
  v44 = *(v12 + 72);
  v15 = *(v12 + 96);
  v16 = *(v12 + 48);
  v17 = *(v12 + 80);
  *(v13 + 16) = *(v12 + 32);
  *(v13 + 32) = v16;
  *(v13 + 48) = v14;
  *(v13 + 56) = v17;
  *(v13 + 72) = v15;
  v18 = *(_s15HedgingExecutorVMa() - 8);
  v19 = (*(v18 + 80) + 104) & ~*(v18 + 80);
  v20 = (*(v18 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 39) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 137) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v12 + v20);
  v43 = *v25;
  v41 = v25[2];
  v42 = v25[1];
  v26 = v12 + v21;
  v40 = *v26;
  v39 = *(v26 + 8);
  v38 = *(v26 + 24);
  v27 = *(v12 + ((v22 + 121) & 0xFFFFFFFFFFFFFFF8));
  v28 = *(v12 + v23);
  v29 = *(v12 + v24);
  v30 = *(v12 + v24 + 8);
  v31 = (v12 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8));
  v32 = *v31;
  v33 = v31[1];
  v36 = swift_task_alloc();
  *(v13 + 80) = v36;
  *v36 = v13;
  v36[1] = sub_24DC57B4C;

  return sub_24DC4F19C(a1, v34, v35, v12 + v19, v43, v42, v41, v40, a9, a10, a11, a12);
}

uint64_t sub_24DC57150()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[13];

  v3 = v0[15];

  v4 = v0[16];

  v5 = v0[17];

  return swift_deallocObject();
}

uint64_t sub_24DC571A8(uint64_t a1)
{
  v16 = *(v1 + 48);
  v17 = *(v1 + 32);
  v14 = *(v1 + 80);
  v15 = *(v1 + 64);
  v5 = *(v1 + 96);
  v4 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v9 = *(v1 + 128);
  v8 = *(v1 + 136);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_24DC334F4;

  return sub_24DC4B89C(a1, v10, v11, v4, v6, v7, v9, v8);
}

uint64_t sub_24DC572B0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v30 = *(v0 + 32);
  v32 = *(v0 + 48);
  v33 = *(v0 + 80);
  v34 = *(v0 + 96);
  v3 = _s15HedgingExecutorVMa();
  v31 = *(*(v3 - 1) + 80);
  v4 = (v31 + 144) & ~v31;
  v5 = (*(*(v3 - 1) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 104);

  v9 = *(v0 + 120);

  v10 = *(v0 + 128);

  v11 = *(v0 + 136);

  v12 = v0 + v4;
  (*(*(v30 - 8) + 8))(v12);
  v13 = *(v12 + v3[21] + 24);

  v14 = v3[22];
  v15 = sub_24DCB55B4();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v12 + v14, 1, v15))
  {
    (*(v16 + 8))(v12 + v14, v15);
  }

  v17 = *(v12 + v3[23]);

  (*(*(v1 - 8) + 8))(v12 + v3[24], v1);
  (*(*(v2 - 8) + 8))(v12 + v3[25], v2);
  v18 = *(v0 + v5 + 8);

  v19 = *(v0 + v5 + 24);

  v20 = (v0 + v6);
  if (*(v0 + v6 + 112) != 255)
  {
    v21 = v20[7];
    v22 = v20[8];
    v23 = v20[9];
    v24 = v20[10];
    v25 = v20[11];
    v26 = v20[12];
    v27 = v20[13];
    sub_24DC566BC();
  }

  v28 = *(v0 + ((v6 + 121) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_24DC57554(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[7];
  v26 = v1[6];
  v5 = v1[8];
  v27 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v2[2] = v1[4];
  v2[3] = v3;
  v2[4] = v26;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  v2[8] = v7;
  v2[9] = v8;
  v9 = *(_s15HedgingExecutorVMa() - 8);
  v10 = (*(v9 + 64) + ((*(v9 + 80) + 144) & ~*(v9 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = v1[16];
  v25 = v1[13];
  v23 = v1[17];
  v22 = *(v1 + v10);
  v11 = *(v1 + v10 + 16);
  v12 = *(v1 + v10 + 24);
  v13 = (v1 + ((((v10 + 39) & 0xFFFFFFFFFFFFFFF8) + 121) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v20 = swift_task_alloc();
  v2[10] = v20;
  *v20 = v2;
  v20[1] = sub_24DC57B4C;

  return sub_24DC4BF04(a1, v16, v17, v25, v18, v19, v24, v23);
}

void sub_24DC57738(uint64_t a1, char a2)
{
  if (a2)
  {
    JUMPOUT(0x2530363B0);
  }
}

uint64_t sub_24DC57744()
{
  v1 = sub_24DCB55B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 104) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24DC57808(uint64_t a1)
{
  v4 = *(v1 + 72);
  v5 = *(sub_24DCB55B4() - 8);
  v6 = (*(v5 + 80) + 104) & ~*(v5 + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24DC334F4;

  return sub_24DC4AFE8(a1, v7, v8, v1 + v6);
}

uint64_t sub_24DC578F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24DC334F4;

  return sub_24DC4B2A8(v6, v5, a2);
}

uint64_t sub_24DC5798C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 96);

  return swift_deallocObject();
}

uint64_t sub_24DC579CC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 88);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24DC334F4;

  return sub_24DC4C314(a1, v5);
}

uint64_t sub_24DC57A7C()
{
  v2 = v0[3];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[15];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24DC334F4;

  return sub_24DC4BBC4(v6, v7, v3, v4, v8, v5, v9, v2);
}

uint64_t sub_24DC57B60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F068, &qword_24DCBA038);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_24DCB59D4();
  qword_27F1A98B8 = result;
  return result;
}

uint64_t *sub_24DC57BBC()
{
  if (qword_27F1A3180 != -1)
  {
    swift_once();
  }

  return &qword_27F1A98B8;
}

uint64_t sub_24DC57C0C()
{
  if (qword_27F1A3180 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24DC57C68()
{
  if (qword_27F1A3180 != -1)
  {
    swift_once();
  }

  return sub_24DCB59E4();
}

uint64_t ServerContext.RPCCancellationHandle.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ServerCancellationManager();
  result = ServerCancellationManager.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t ServerContext.RPCCancellationHandle.cancelled.getter()
{
  v2 = sub_24DCB5114();
  v1[2] = v2;
  v3 = *(v2 - 8);
  v1[3] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v1[4] = v5;
  v6 = *v0;
  v7 = swift_task_alloc();
  v1[5] = v7;
  *v7 = v1;
  v7[1] = sub_24DC57E24;

  return _s16GRPCCoreInternal25ServerCancellationManagerC26suspendUntilRPCIsCancelledyyYaScEYKF(v5);
}

uint64_t sub_24DC57E24()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC57F5C, 0, 0);
  }

  else
  {
    v5 = *(v2 + 32);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_24DC57F5C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_24DC46150();
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t _s16GRPCCoreInternal26withRPCCancellationHandler9operation11onCancelRPCxxyYaq_YKXE_yyYbctYaq_YKs5ErrorR_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a7;
  v7[9] = v12;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = *(a7 - 8);
  v7[10] = v8;
  v9 = *(v8 + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC58100, 0, 0);
}

uint64_t sub_24DC58100()
{
  if (qword_27F1A3180 != -1)
  {
    swift_once();
  }

  sub_24DCB59E4();
  v1 = *(v0 + 16);
  *(v0 + 104) = v1;
  if (!v1)
  {
    goto LABEL_6;
  }

  *(v0 + 112) = ServerCancellationManager.addRPCCancelledHandler(_:)(*(v0 + 48), *(v0 + 56));
  if (v2)
  {

LABEL_6:
    v11 = (*(v0 + 32) + **(v0 + 32));
    v3 = *(*(v0 + 32) + 4);
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_24DC58488;
    v5 = *(v0 + 88);
    goto LABEL_8;
  }

  v11 = (*(v0 + 32) + **(v0 + 32));
  v6 = *(*(v0 + 32) + 4);
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_24DC582FC;
  v5 = *(v0 + 96);
LABEL_8:
  v8 = *(v0 + 40);
  v9 = *(v0 + 24);

  return v11(v9, v5);
}

uint64_t sub_24DC582FC()
{
  v2 = *(*v1 + 120);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_24DC58650;
  }

  else
  {
    v3 = sub_24DC5840C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DC5840C()
{
  v1 = v0[13];
  ServerCancellationManager.removeRPCCancelledHandler(withID:)(v0[14]);

  v3 = v0[11];
  v2 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24DC58488()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC585CC, 0, 0);
  }

  else
  {
    v6 = *(v2 + 88);
    v5 = *(v2 + 96);

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_24DC585CC()
{
  (*(v0[10] + 32))(v0[9], v0[11], v0[8]);
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24DC58650()
{
  v1 = v0[13];
  v2 = v0[14];
  (*(v0[10] + 32))(v0[9], v0[12], v0[8]);
  ServerCancellationManager.removeRPCCancelledHandler(withID:)(v2);

  v4 = v0[11];
  v3 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t _s16GRPCCoreInternal38withServerContextRPCCancellationHandleyxxAA0dE0V0fG0VYaq_YKXEYaq_YKs5ErrorR_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = *(a5 - 8);
  v7[10] = v8;
  v9 = *(v8 + 64) + 15;
  v7[11] = swift_task_alloc();
  v10 = sub_24DCB5904();
  v7[12] = v10;
  v11 = *(v10 - 8);
  v7[13] = v11;
  v12 = *(v11 + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC5883C, 0, 0);
}

uint64_t sub_24DC5883C()
{
  type metadata accessor for ServerCancellationManager();
  v1 = ServerCancellationManager.__allocating_init()();
  *(v0 + 128) = v1;
  if (qword_27F1A3180 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  *(v0 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v2;
  *(v3 + 40) = v4;
  *(v3 + 56) = v1;
  v5 = *(MEMORY[0x277D85A70] + 4);

  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_24DC589BC;
  v7 = *(v0 + 120);
  v10 = *(v0 + 96);

  return MEMORY[0x282200908](v7, v0 + 16, &unk_24DCB9FE0, v3, 0, 0, 0xD00000000000003ALL, 0x800000024DCC5730);
}

uint64_t sub_24DC589BC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {

    JUMPOUT(0x2530363B0);
  }

  v5 = *(v2 + 136);
  v6 = *(v2 + 16);

  return MEMORY[0x2822009F8](sub_24DC58B08, 0, 0);
}

uint64_t sub_24DC58B08()
{
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[11];
  v4 = v0[3];
  (*(v0[13] + 16))(v0[14], v0[15], v2);
  sub_24DC2F270(v2, v3, v4);
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  if (v1)
  {
    v11 = v0[9];
    v12 = v0[10];
    v13 = v0[7];
    (*(v7 + 8))(v0[15], v9);

    (*(v12 + 32))(v11, v10, v13);
  }

  else
  {
    (*(v7 + 8))(v0[15], v9);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_24DC58C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_24DC58C90, 0, 0);
}

uint64_t sub_24DC58C90()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 56) = v2;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_24DC58D80;
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  v9 = *(v0 + 16);

  return sub_24DC8C5F4(v9, &unk_24DCBA030, v3, v8, v6);
}

uint64_t sub_24DC58D80()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24DC58E94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24DC2FD00;

  return sub_24DC58C64(a1, v7, v9, v8, v4, v5, v6);
}

uint64_t sub_24DC58F68(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a6;
  v8[4] = a8;
  v12 = *(a6 - 8);
  v8[5] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v8[6] = v14;
  v8[2] = a4;
  v18 = (a2 + *a2);
  v15 = a2[1];
  v16 = swift_task_alloc();
  v8[7] = v16;
  *v16 = v8;
  v16[1] = sub_24DC590E0;

  return (v18)(a1, v8 + 2, v14);
}

uint64_t sub_24DC590E0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC59218, 0, 0);
  }

  else
  {
    v5 = *(v2 + 48);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_24DC59218()
{
  (*(v0[5] + 32))(v0[4], v0[6], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24DC592A8(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24DC334F4;

  return sub_24DC58F68(a1, v7, v8, v9, v10, v6, v11, a2);
}

uint64_t sub_24DC593AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for SerializingRPCWriter();
  (*(*(a4 - 8) + 32))(a5 + *(v10 + 68), a1, a4);
  return (*(*(a3 - 8) + 32))(a5, a2, a3);
}

uint64_t sub_24DC59490(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = *(a2 + 24);
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = *(a2 + 16);
  v3[8] = v8;
  v9 = *(v8 - 8);
  v3[9] = v9;
  v10 = *(v9 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC595AC, 0, 0);
}

uint64_t sub_24DC595AC()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  (*(v0[9] + 16))(v0[10], v2, v0[8]);
  v6 = v2 + *(v5 + 68);
  (*(*(v5 + 56) + 16))(v4, v3, *(v5 + 48), *(v5 + 32));
  v7 = *(v0[3] + 40);
  v14 = (*(v7 + 16) + **(v7 + 16));
  v8 = *(*(v7 + 16) + 4);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_24DC59798;
  v10 = v0[10];
  v12 = v0[7];
  v11 = v0[8];

  return v14(v12, v11, v7);
}

uint64_t sub_24DC59798()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *(*v1 + 48);
  v9 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 96) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC599C4, 0, 0);
  }

  else
  {
    v11 = *(v2 + 80);
    v12 = *(v2 + 56);

    v13 = *(v10 + 8);

    return v13();
  }
}

uint64_t sub_24DC599C4()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24DC59A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](sub_24DC59A5C, 0, 0);
}

uint64_t sub_24DC59A5C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = v2[2];
  v18 = *(v0 + 56);
  *(v4 + 16) = v5;
  v6 = v2[3];
  *(v4 + 24) = v6;
  *(v4 + 32) = v2[4];
  *(v4 + 40) = v1;
  v7 = v2[5];
  *(v4 + 48) = v7;
  *(v4 + 56) = v2[6];
  *(v4 + 64) = v2[7];
  *(v4 + 72) = v18;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  v9 = sub_24DC59F28(sub_24DC59E64, v4, v1, v6, v8, v18, MEMORY[0x277D84950], v0 + 16);
  *(v0 + 72) = v9;
  v10 = v9;

  *(v0 + 24) = v10;
  v11 = *(v7 + 24);
  v19 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 80) = v13;
  v14 = sub_24DCB50A4();
  WitnessTable = swift_getWitnessTable();
  *v13 = v0;
  v13[1] = sub_24DC59CC4;
  v16 = *(v0 + 64);

  return v19(v0 + 24, v14, WitnessTable, v5, v7);
}

uint64_t sub_24DC59CC4()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC59E00, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24DC59E00()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24DC59E64(uint64_t a1, void *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = v2[10];
  v13 = v12 + *(type metadata accessor for SerializingRPCWriter() + 68);
  result = (*(v11 + 16))(a1, v7, v10, v8, v11);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_24DC59F28(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_24DCB5414();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_24DCB4F24();
  v70 = sub_24DCB5554();
  v65 = sub_24DCB5564();
  sub_24DCB5534();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_24DCB4F04();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_24DCB5444();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_24DCB5544();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_24DCB5444();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_24DCB5544();
      sub_24DCB5444();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t sub_24DC5A61C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return sub_24DC59490(a1, a2);
}

uint64_t sub_24DC5A6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24DC2FD00;

  return sub_24DC59A34(a1, a4, a2, a3);
}

uint64_t sub_24DC5A77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v29[1] = a6;
  v30 = a2;
  v32 = a8;
  v33 = a3;
  v31 = a1;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v14);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F070, &qword_24DCBBC70);
  v34 = a4;
  v35 = v22;
  v36 = a5;
  v37 = a6;
  v38 = &protocol witness table for <A> [A];
  v39 = a7;
  v23 = type metadata accessor for SerializingRPCWriter();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = v29 - v25;
  (*(v18 + 16))(v21, v30, a5);
  (*(v12 + 16))(v16, v31, a4);
  sub_24DC593AC(v21, v16, a4, a5, v26);
  WitnessTable = swift_getWitnessTable();
  return RPCWriter.init<A>(wrapping:)(v26, v23, WitnessTable, v32);
}

uint64_t sub_24DC5A9CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 32);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC5AA58(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 32);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_24DC5AC34(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 32);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t RPCAsyncSequence.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  (*(v12 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v3);
  v13 = sub_24DCB5254();
  MEMORY[0x28223BE20](v13);
  (*(v6 + 16))(&v17 - v9, &v17 - v9, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a1[3] = AssociatedTypeWitness;
  a1[4] = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(v6 + 32))(boxed_opaque_existential_1, &v17 - v9, AssociatedTypeWitness);
  return (*(v6 + 8))(&v17 - v9, AssociatedTypeWitness);
}

uint64_t sub_24DC5B17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t sub_24DC5B208(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24DC5B26C(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24DC5B2AC(a1, v1);
}

uint64_t sub_24DC5B2AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _s16GRPCCoreInternal16RPCAsyncSequenceV13AsyncIteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = v5;
  v6[6] = a5;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v8 = *(a4 + 24);
  v6[7] = v8;
  v9 = *(v8 - 8);
  v6[8] = v9;
  v10 = *(v9 + 64) + 15;
  v6[9] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v11 = sub_24DCB50D4();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v6[10] = v11;
  v6[11] = v13;

  return MEMORY[0x2822009F8](sub_24DC5B3C4, v11, v13);
}

uint64_t sub_24DC5B3C4()
{
  v1 = v0[5];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_24DC5B488;
  v6 = v0[9];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return MEMORY[0x282200310](v9, v7, v8, v6, v2, v3);
}

uint64_t sub_24DC5B488()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[10];
    v6 = v2[11];

    return MEMORY[0x2822009F8](sub_24DC5B5BC, v5, v6);
  }

  else
  {
    v7 = v2[9];

    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t sub_24DC5B5BC()
{
  (*(v0[8] + 32))(v0[6], v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t RPCAsyncSequence.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v5 = *(a2 + 24);
  v2[3] = v5;
  v6 = *(v5 - 8);
  v2[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v2[5] = v8;
  v9 = swift_task_alloc();
  v2[6] = v9;
  *v9 = v2;
  v9[1] = sub_24DC3FB50;

  return _s16GRPCCoreInternal16RPCAsyncSequenceV13AsyncIteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(a1, 0, 0, a2, v8);
}

uint64_t sub_24DC5B750(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC2FD00;

  return RPCAsyncSequence.AsyncIterator.next()(a1, a2);
}

uint64_t sub_24DC5B7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v10 = *(a5 + 24);
  v5[3] = v10;
  v11 = *(v10 - 8);
  v5[4] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[5] = v13;
  v14 = swift_task_alloc();
  v5[6] = v14;
  *v14 = v5;
  v14[1] = sub_24DC3FF04;

  return _s16GRPCCoreInternal16RPCAsyncSequenceV13AsyncIteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(a1, a2, a3, a5, v13);
}

uint64_t sub_24DC5B938@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  RPCAsyncSequence.makeAsyncIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_24DC5B998()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC5B9EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC5BA2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DC5BA78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t RPCRequestPart<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v12 = (v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v14, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v8, v12, v3);
    MEMORY[0x253035FF0](1);
    sub_24DCB4D34();
    return (*(v4 + 8))(v8, v3);
  }

  else
  {
    v16 = *v12;
    MEMORY[0x253035FF0](0);
    v17[1] = v16;
    sub_24DC4163C();
    sub_24DCB4D34();
  }
}

uint64_t static RPCRequestPart<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30[1] = a5;
  v33 = a1;
  v34 = a2;
  v32 = *(a3 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](a1);
  v30[0] = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RPCRequestPart();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v30 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v31 = *(TupleTypeMetadata2 - 8);
  v17 = *(v31 + 64);
  v18 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v20 = v30 - v19;
  v21 = *(v18 + 48);
  v22 = *(v9 + 16);
  v22(v30 - v19, v33, v8);
  v22(&v20[v21], v34, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v22(v15, v20, v8);
    v28 = *v15;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v35 = *&v20[v21];
      v36 = v28;
      sub_24DC303C8();
      v26 = sub_24DCB4DA4();

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v22(v13, v20, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v32 + 8))(v13, a3);
LABEL_7:
    v26 = 0;
    v9 = v31;
    v8 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v23 = v32;
  v24 = &v20[v21];
  v25 = v30[0];
  (*(v32 + 32))(v30[0], v24, a3);
  v26 = sub_24DCB4DA4();
  v27 = *(v23 + 8);
  v27(v25, a3);
  v27(v13, a3);
LABEL_9:
  (*(v9 + 8))(v20, v8);
  return v26 & 1;
}

uint64_t RPCResponsePart<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v14, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v4 + 32))(v8, v12, v3);
      MEMORY[0x253035FF0](1);
      sub_24DCB4D34();
      return (*(v4 + 8))(v8, v3);
    }

    else
    {
      v18 = *v12;
      v19 = v12[1];
      MEMORY[0x253035FF0](2);
      v21 = v18;
      sub_24DC5C31C();
      sub_24DCB4D34();
      v21 = v19;
      sub_24DC4163C();
      sub_24DCB4D34();
    }
  }

  else
  {
    v17 = *v12;
    MEMORY[0x253035FF0](0);
    v21 = v17;
    sub_24DC4163C();
    sub_24DCB4D34();
  }
}

unint64_t sub_24DC5C31C()
{
  result = qword_27F19F078;
  if (!qword_27F19F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F078);
  }

  return result;
}

uint64_t sub_24DC5C388(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t))
{
  sub_24DCB58A4();
  a3(v7, a1, a2);
  return sub_24DCB58F4();
}

uint64_t sub_24DC5C410(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  sub_24DCB58A4();
  a4(v8, a2, v6);
  return sub_24DCB58F4();
}

uint64_t static RPCResponsePart<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a1;
  v45 = a2;
  v6 = *(a3 - 8);
  v40 = a5;
  v41 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RPCResponsePart();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = (&v38 - v18);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  v21 = *(v43 + 64);
  v22 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v24 = &v38 - v23;
  v25 = (&v38 + *(v22 + 48) - v23);
  v42 = v10;
  v26 = *(v10 + 16);
  v26(&v38 - v23, v44, v9);
  v26(v25, v45, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v26(v19, v24, v9);
    v33 = *v19;
    if (!swift_getEnumCaseMultiPayload())
    {
      v46 = *v25;
      v47 = v33;
      sub_24DC303C8();
      v30 = sub_24DCB4DA4();

      v32 = v42;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v26(v17, v24, v9);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v41;
      v29 = v39;
      (*(v41 + 32))(v39, v25, a3);
      v30 = sub_24DCB4DA4();
      v31 = *(v28 + 8);
      v31(v29, a3);
      v31(v17, a3);
      v32 = v42;
      goto LABEL_15;
    }

    (*(v41 + 8))(v17, a3);
LABEL_14:
    v30 = 0;
    v32 = v43;
    v9 = TupleTypeMetadata2;
    goto LABEL_15;
  }

  v26(v14, v24, v9);
  v35 = *v14;
  v34 = v14[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {

LABEL_13:

    goto LABEL_14;
  }

  v36 = v25[1];
  v46 = *v25;
  v47 = v35;
  sub_24DC43BE8();
  if (sub_24DCB4DA4())
  {
    v46 = v36;
    v47 = v34;
    sub_24DC303C8();
    v30 = sub_24DCB4DA4();
  }

  else
  {

    v30 = 0;
  }

  v32 = v42;
LABEL_15:
  (*(v32 + 8))(v24, v9);
  return v30 & 1;
}

uint64_t sub_24DC5C9BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24DC5CA2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_24DC5CD80();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_24DC5CAB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_24DC5CBC8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
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

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
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

void sub_24DC5CD80()
{
  if (!qword_27F19F080)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F19F080);
    }
  }
}

uint64_t sub_24DC5CDE0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _BroadcastSequenceStorage();
  swift_allocObject();
  sub_24DC5E43C(a2);
}

uint64_t sub_24DC5CE48(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24DC5E43C(a1);
  return v2;
}

uint64_t sub_24DC5CE88(uint64_t a1)
{

  sub_24DC5CEB8();
  return a1;
}

uint64_t sub_24DC5CEB8()
{
  v1 = v0;
  v2 = *&v0->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v0 + 4);
  v3 = *(v2 + 80);
  v4 = type metadata accessor for _BroadcastSequenceStateMachine();
  v5 = sub_24DC60F08(v4);
  os_unfair_lock_unlock(v1 + 4);
  return v5;
}

uint64_t sub_24DC5CF44()
{
  v1 = v0;
  v2 = *v0;
  os_unfair_lock_lock(v1 + 4);
  v3 = *(v2 + 80);
  v8 = *(v1 + 7);
  *v9 = *(v1 + 9);
  *&v9[9] = *(v1 + 81);
  v6 = *(v1 + 3);
  v7 = *(v1 + 5);
  v4 = type metadata accessor for _BroadcastSequenceStateMachine();
  LOBYTE(v2) = sub_24DC630D8(v4);
  os_unfair_lock_unlock(v1 + 4);
  return v2 & 1;
}

uint64_t sub_24DC5CFF0()
{
  v1 = *(*&v0->_os_unfair_lock_opaque + 80);
  v2 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  v7 = type metadata accessor for _BroadcastSequenceStateMachine.OnInvalidateAllSubscriptions();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  os_unfair_lock_lock(v0 + 4);
  v15 = type metadata accessor for _BroadcastSequenceStateMachine();
  sub_24DC6347C(v15, v14);
  os_unfair_lock_unlock(v0 + 4);
  (*(v8 + 16))(v12, v14, v7);
  if ((*(v3 + 48))(v12, 1, v2) != 1)
  {
    (*(v3 + 32))(v6, v12, v2);
    sub_24DC5EE70(v2);
    (*(v3 + 8))(v6, v2);
  }

  return (*(v8 + 8))(v14, v7);
}

uint64_t sub_24DC5D224@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24DC5CE88(*v1);
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t sub_24DC5D270(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24DC5D290, 0, 0);
}

uint64_t sub_24DC5D290()
{
  v1 = v0[3];
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_24DC5D330;
  v5 = v0[2];

  return sub_24DC5D424(v5, v2);
}

uint64_t sub_24DC5D330()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24DC5D424(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_24DC5D470, 0, 0);
}

uint64_t sub_24DC5D470()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  v6 = *(MEMORY[0x277D85A10] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = *(v2 + 80);
  v9 = sub_24DCB5414();
  *v7 = v0;
  v7[1] = sub_24DC5D590;
  v10 = v0[2];

  return MEMORY[0x282200830](v10, &unk_24DCBA448, v4, sub_24DC6E274, v5, 0, 0, v9);
}

uint64_t sub_24DC5D590()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC5D6D8, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_24DC5D6D8()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_24DC5D744(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DC2FD00;

  return sub_24DC5D270(a1);
}

uint64_t sub_24DC5D7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_24DC5D8B0;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_24DC5D8B0()
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

uint64_t sub_24DC5D9C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DC334F4;

  return sub_24DC5DA58(a1);
}

uint64_t sub_24DC5DA58(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(*v1 + 80);
  v3 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for _BroadcastSequenceStateMachine.OnYield();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC5DBA0, 0, 0);
}

uint64_t sub_24DC5DBA0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  os_unfair_lock_lock(v6 + 4);
  v8 = type metadata accessor for _BroadcastSequenceStateMachine();
  sub_24DC5F340(v7, v8, v1);
  os_unfair_lock_unlock(v6 + 4);
  (*(v4 + 16))(v2, v1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v23 = v0[9];
      sub_24DC6E294();
      swift_allocError();
      *v24 = 1;
      swift_willThrow();
      v25 = v0[10];
      v26 = v0[7];
      (*(v23 + 8))(v0[11], v0[8]);

      v22 = v0[1];
      goto LABEL_11;
    }

    v16 = v0[9];
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v10 = v0[3];
      v11 = *v0[10];
      v12 = swift_task_alloc();
      v0[12] = v12;
      *(v12 + 16) = v10;
      *(v12 + 24) = v11;
      v13 = swift_task_alloc();
      v0[13] = v13;
      *(v13 + 16) = v10;
      *(v13 + 24) = v11;
      v14 = *(MEMORY[0x277D85A10] + 4);
      v15 = swift_task_alloc();
      v0[14] = v15;
      *v15 = v0;
      v15[1] = sub_24DC5DE74;

      return MEMORY[0x282200830]();
    }

    v16 = v0[9];
    v18 = v0[6];
    v17 = v0[7];
    v19 = v0[5];
    (*(v18 + 32))(v17, v0[10], v19);
    sub_24DC5EE70(v19);
    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[10];
  v21 = v0[7];
  (*(v16 + 8))(v0[11], v0[8]);

  v22 = v0[1];
LABEL_11:

  return v22();
}

uint64_t sub_24DC5DE74()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v5 = sub_24DC5E064;
  }

  else
  {
    v5 = sub_24DC5DFC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24DC5DFC8()
{
  v1 = v0[10];
  v2 = v0[7];
  (*(v0[9] + 8))(v0[11], v0[8]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24DC5E064()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[7];
  (*(v0[9] + 8))(v0[11], v0[8]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24DC5E128(uint64_t a1, char a2)
{
  v26 = a1;
  v4 = *(*&v2->_os_unfair_lock_opaque + 80);
  v5 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v25 = &v25 - v8;
  v9 = type metadata accessor for _BroadcastSequenceStateMachine.OnFinish();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  os_unfair_lock_lock(v2 + 4);
  v17 = type metadata accessor for _BroadcastSequenceStateMachine();
  sub_24DC608E8(v26, a2 & 1, v17, v16);
  os_unfair_lock_unlock(v2 + 4);
  (*(v10 + 16))(v14, v16, v9);
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v14, 1, TupleTypeMetadata2) != 1)
  {
    v19 = &v14[*(TupleTypeMetadata2 + 48)];
    v20 = *v19;
    v21 = *(v19 + 1);
    v22 = v19[16];
    v23 = v25;
    (*(v6 + 32))(v25, v14, v5);
    sub_24DC5EE70(v5);
    sub_24DC5F1B0(v20, v21, v22);

    sub_24DC57738(v21, v22);
    (*(v6 + 8))(v23, v5);
  }

  return (*(v10 + 8))(v16, v9);
}

uint64_t sub_24DC5E43C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v7[0] = a1;
  v8 = 0;
  *v9 = 0;
  memset(&v9[8], 0, 73);
  v3 = type metadata accessor for _BroadcastSequenceStateMachine();
  (*(*(v3 - 8) + 32))(&v9[8], v7, v3);
  v4 = *&v9[48];
  *(v1 + 48) = *&v9[32];
  *(v1 + 64) = v4;
  *(v1 + 80) = *&v9[64];
  *(v1 + 96) = v9[80];
  v5 = *&v9[16];
  *(v1 + 16) = *v9;
  *(v1 + 32) = v5;
  return v1;
}

uint64_t sub_24DC5E500@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 72) = 0;
  return result;
}

os_unfair_lock_s *sub_24DC5E50C()
{
  v1 = v0;
  v2 = v0 + 6;
  v3 = *(*&v0->_os_unfair_lock_opaque + 80);
  v4 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v26 = v25 - v7;
  v8 = type metadata accessor for _BroadcastSequenceStateMachine.OnDropResources();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  os_unfair_lock_lock(v0 + 4);
  v27 = type metadata accessor for _BroadcastSequenceStateMachine();
  sub_24DC5E7EC(v27, v15);
  os_unfair_lock_unlock(v0 + 4);
  (*(v9 + 16))(v13, v15, v8);
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v13, 1, TupleTypeMetadata2) != 1)
  {
    v17 = &v13[*(TupleTypeMetadata2 + 48)];
    v25[0] = v8;
    v25[1] = v2;
    v19 = *v17;
    v18 = *(v17 + 1);
    v20 = v17[16];
    v21 = v26;
    (*(v5 + 32))(v26, v13, v4);
    sub_24DC5EE70(v4);
    sub_24DC5F1B0(v19, v18, v20);

    v22 = v20;
    v8 = v25[0];
    sub_24DC57738(v18, v22);
    (*(v5 + 8))(v21, v4);
  }

  (*(v9 + 8))(v15, v8);
  v23 = *(sub_24DCB4C14() + 16);
  sub_24DCB5404();
  return v1;
}

uint64_t sub_24DC5E7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = *(v2 + 72);
  if (v9 > 1)
  {
    v24 = v2[4];
    v23 = v2[5];
    v25 = *(v2 + 48);
    if (v9 == 2)
    {
      v64 = *v2;
      v65 = *(v2 + 1);
      *(&v66 + 1) = v2[5];
      v67[0] = *(v2 + 48);
      *&v67[1] = *(v2 + 49);
      *&v67[16] = v2[8];
      v26 = *(v2 + 3);
      v70 = *(v2 + 2);
      *&v66 = v70;
      v71[0] = v26;
      *(v71 + 9) = *(v2 + 57);
      v27 = *(v2 + 1);
      v68 = *v2;
      v69 = v27;
      *&v78 = v5;
      *(&v78 + 1) = v6;
      *&v79 = v8;
      *(&v79 + 1) = v7;
      *&v80 = v24;
      *(&v80 + 1) = v23;
      v81[0] = v25;
      *&v81[1] = *(v2 + 49);
      *&v81[16] = v2[8];
      v81[24] = 2;
      v28 = *(a1 + 16);
      v29 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming();
      v30 = *(v29 - 8);
      (*(v30 + 16))(&v82, &v78, v29);
      v62 = *(*(a1 - 8) + 8);
      v62(&v68, a1);
      v2[8] = 0;
      *(v2 + 2) = 0u;
      *(v2 + 3) = 0u;
      *v2 = 0u;
      *(v2 + 1) = 0u;
      *(v2 + 72) = 4;
      v31 = v2;
      sub_24DC6B268(1, v29, a2);
      sub_24DC6E294();
      v58 = swift_allocError();
      *v32 = 1;
      v76 = *&v67[16];
      v74 = v66;
      v75 = *v67;
      v72 = v64;
      v73 = v65;
      v33 = *(v30 + 8);

      v33(&v72, v29);
      v77 = 1;
      v34 = *(v2 + 3);
      v84 = *(v2 + 2);
      v85[0] = v34;
      *(v85 + 9) = *(v2 + 57);
      v35 = *(v2 + 1);
      v82 = *v2;
      v83 = v35;
      result = (v62)(&v82, a1);
      *v2 = v64;
      v2[2] = *v67;
      v2[3] = *&v67[8];
      v2[4] = *&v67[16];
      v2[5] = v58;
      *(v2 + 48) = 1;
    }

    else
    {
      if (v9 != 3)
      {
        result = sub_24DCB55E4();
        __break(1u);
        return result;
      }

      *&v68 = *v2;
      *(&v68 + 1) = v6;
      *&v69 = v8;
      *(&v69 + 1) = v7;
      *&v70 = v24;
      *(&v70 + 1) = v23;
      v47 = v25 & 1;
      LOBYTE(v71[0]) = v25 & 1;
      v48 = *(v2 + 3);
      v80 = *(v2 + 2);
      *v81 = v48;
      *&v81[9] = *(v2 + 57);
      v49 = *(v2 + 1);
      v78 = *v2;
      v79 = v49;

      sub_24DC6F0D0(v23, v47);
      v50 = *(*(a1 - 8) + 8);
      v50(&v78, a1);
      v2[8] = 0;
      *(v2 + 2) = 0u;
      *(v2 + 3) = 0u;
      *v2 = 0u;
      *(v2 + 1) = 0u;
      *(v2 + 72) = 4;
      v51 = *(a1 + 16);
      v52 = type metadata accessor for _BroadcastSequenceStateMachine.State.Finished();
      v31 = v2;
      sub_24DC6C74C(1, v52, a2);
      v53 = v70;
      v54 = v71[0];
      LOBYTE(v72) = v71[0];
      v55 = *(v2 + 3);
      v84 = *(v2 + 2);
      v85[0] = v55;
      *(v85 + 9) = *(v2 + 57);
      v56 = *(v2 + 1);
      v82 = *v2;
      v83 = v56;
      result = (v50)(&v82, a1);
      v57 = v69;
      *v2 = v68;
      *(v2 + 1) = v57;
      *(v2 + 2) = v53;
      *(v2 + 48) = v54;
    }

    *(v31 + 72) = 3;
    return result;
  }

  if (*(v2 + 72))
  {
    *&v72 = *v2;
    *(&v72 + 1) = v6;
    *&v73 = v8;
    *(&v73 + 1) = v7;
    v36 = *(v2 + 3);
    v80 = *(v2 + 2);
    *v81 = v36;
    *&v81[9] = *(v2 + 57);
    v37 = *(v2 + 1);
    v78 = *v2;
    v79 = v37;
    v38 = *(*(a1 - 8) + 8);

    v38(&v78, a1);
    v2[8] = 0;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 72) = 4;
    v39 = *(a1 + 16);
    v40 = type metadata accessor for _BroadcastSequenceStateMachine.State.Subscribed();
    sub_24DC664F4(1, v40, a2);
    v41 = v72;
    sub_24DC6E294();
    v42 = swift_allocError();
    *v43 = 1;
    sub_24DC6BA44(v41, *(&v41 + 1), v42, 1, &v68);
    v60 = v69;
    v63 = v68;
    v44 = v70;
    LOBYTE(v39) = v71[0];
    v45 = *(v2 + 3);
    v84 = *(v2 + 2);
    v85[0] = v45;
    *(v85 + 9) = *(v2 + 57);
    v46 = *(v2 + 1);
    v82 = *v2;
    v83 = v46;
    result = (v38)(&v82, a1);
    *v2 = v63;
    *(v2 + 1) = v60;
    *(v2 + 2) = v44;
    *(v2 + 48) = v39;
  }

  else
  {
    v10 = *(v2 + 3);
    v80 = *(v2 + 2);
    *v81 = v10;
    *&v81[9] = *(v2 + 57);
    v11 = *(v2 + 1);
    v78 = *v2;
    v79 = v11;
    v12 = *(*(a1 - 8) + 8);
    v12(&v78, a1);
    v2[8] = 0;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 72) = 4;
    v13 = *(a1 + 16);
    type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations();
    type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(TupleTypeMetadata2 - 8) + 56))(a2, 1, 1, TupleTypeMetadata2);
    sub_24DC6E294();
    v15 = swift_allocError();
    *v16 = 1;
    sub_24DC6F294(v15, 1, &v68);
    v17 = *(v2 + 2);
    v18 = *(v2 + 3);
    v19 = *v2;
    v83 = *(v2 + 1);
    v84 = v17;
    v85[0] = v18;
    *(v85 + 9) = *(v2 + 57);
    v59 = v69;
    v61 = v68;
    v20 = v70;
    v21 = v71[0];
    LOBYTE(v72) = v71[0];
    v82 = v19;
    result = (v12)(&v82, a1);
    *v2 = v61;
    *(v2 + 1) = v59;
    *(v2 + 2) = v20;
    *(v2 + 48) = v21;
  }

  *(v2 + 72) = 3;
  return result;
}

uint64_t sub_24DC5EE70(char *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 2);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v5 = sub_24DCB5104();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v20 - v14);
  (*(v16 + 16))(&v20 - v14, v2, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_12:
    (*(v6 + 32))(v11, v15, v5);
    sub_24DC60100(v2 + *(v3 + 7), v5);
    return (*(v6 + 8))(v11, v5);
  }

  v11 = *v15;
  if (sub_24DCB5034())
  {
    v20 = v7;
    v15 = 0;
    v17 = *(v3 + 7);
    do
    {
      v18 = sub_24DCB5024();
      sub_24DCB4FB4();
      if (v18)
      {
        (*(v6 + 16))(v9, &v11[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15], v5);
        v3 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_24DCB54F4();
        if (v20 != 8)
        {
          __break(1u);
          return result;
        }

        v21 = result;
        (*(v6 + 16))(v9, &v21, v5);
        swift_unknownObjectRelease();
        v3 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_11:
          __break(1u);
          goto LABEL_12;
        }
      }

      sub_24DC60100(v2 + v17, v5);
      (*(v6 + 8))(v9, v5);
      v15 = (v15 + 1);
    }

    while (v3 != sub_24DCB5034());
  }
}

uint64_t sub_24DC5F1B0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F090, &qword_24DCBA478);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = v18 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v7 + 16);
    v13 = v7 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    v15(v11, v16, v6);
    while (1)
    {
      if (a3)
      {
        v18[1] = a2;
        MEMORY[0x2530363C0](a2);
        sub_24DCB50E4();
      }

      else
      {
        sub_24DCB50F4();
      }

      result = (*(v13 - 8))(v11, v6);
      v16 += v17;
      if (!--v12)
      {
        break;
      }

      v14(v11, v16, v6);
    }
  }

  return result;
}

uint64_t sub_24DC5F30C()
{
  sub_24DC5E50C();

  return MEMORY[0x2821FE8D8](v0, 97, 7);
}

uint64_t sub_24DC5F340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v8 = v4[1];
  v7 = v4[2];
  v9 = v4[3];
  v10 = *(v4 + 72);
  if (v10 > 1)
  {
    v49 = a3;
    v25 = v4[4];
    v24 = v4[5];
    v26 = *(v4 + 48);
    if (v10 == 2)
    {
      *&v60[1] = *(v4 + 49);
      v27 = *v4;
      v61[1] = *(v4 + 1);
      v28 = *(v4 + 3);
      v61[2] = *(v4 + 2);
      v62[0] = v28;
      *(v62 + 9) = *(v4 + 57);
      *&v57 = v6;
      *(&v57 + 1) = v8;
      *&v58 = v7;
      *(&v58 + 1) = v9;
      *&v59 = v25;
      *(&v59 + 1) = v24;
      v60[0] = v26;
      *&v60[16] = v4[8];
      v61[0] = v27;
      *&v63 = v6;
      *(&v63 + 1) = v8;
      *&v64 = v7;
      *(&v64 + 1) = v9;
      *&v65 = v25;
      *(&v65 + 1) = v24;
      v66[0] = v26;
      *&v66[1] = *(v4 + 49);
      *&v66[16] = v4[8];
      v66[24] = 2;
      v29 = *(a2 + 16);
      v32 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming();
      (*(*(v32 - 8) + 16))(&v67, &v63, v32);
      v33 = *(*(a2 - 8) + 8);
      v33(v61, a2);
      v4[8] = 0;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 72) = 4;
      sub_24DC66BB8(a1, v32, v49);
      v34 = *(v4 + 3);
      v69 = *(v4 + 2);
      v70[0] = v34;
      *(v70 + 9) = *(v4 + 57);
      v35 = *(v4 + 1);
      v67 = *v4;
      v68 = v35;
      result = v33(&v67, a2);
      v36 = *v60;
      *(v4 + 2) = v59;
      *(v4 + 3) = v36;
      v4[8] = *&v60[16];
      v37 = v58;
      *v4 = v57;
      *(v4 + 1) = v37;
      *(v4 + 72) = 2;
    }

    else if (v10 == 3)
    {

      sub_24DC6F0D0(v24, v26 & 1);

      sub_24DC57738(v24, v26 & 1);
      v47 = *(a2 + 16);
      type metadata accessor for _BroadcastSequenceStateMachine.OnYield();

      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      result = sub_24DCB55E4();
      __break(1u);
    }
  }

  else
  {
    v11 = *v4;
    v64 = *(v4 + 1);
    v12 = *(v4 + 3);
    v65 = *(v4 + 2);
    *v66 = v12;
    *&v66[9] = *(v4 + 57);
    v63 = v11;
    v13 = *(a2 - 8);
    if (v10)
    {
      v38 = *(v13 + 8);

      v38(&v63, a2);
      v4[8] = 0;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 72) = 4;
      v40 = a3;
      v41 = *(a2 + 16);
      v52 = sub_24DC66AB0();
      *&v53 = v9;
      *(&v53 + 1) = MEMORY[0x277D84F90];
      v54 = MEMORY[0x277D84F90];
      *&v55 = v6;
      *(&v55 + 1) = v8;
      v56 = v7;
      v42 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming();
      sub_24DC66BB8(a1, v42, v40);
      v43 = *(v4 + 3);
      v69 = *(v4 + 2);
      v70[0] = v43;
      *(v70 + 9) = *(v4 + 57);
      v44 = *(v4 + 1);
      v67 = *v4;
      v68 = v44;
      result = (v38)(&v67, a2);
      v45 = v55;
      *(v4 + 2) = v54;
      *(v4 + 3) = v45;
      v4[8] = v56;
      v23 = v52;
      v22 = v53;
    }

    else
    {
      v14 = *(v13 + 8);
      v14(&v63);
      v4[8] = 0;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 72) = 4;
      v16 = *(a2 + 16);
      sub_24DC66A1C(v6, v50);
      v17 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming();
      sub_24DC66BB8(a1, v17, a3);
      v18 = *v4;
      v68 = *(v4 + 1);
      v19 = *(v4 + 3);
      v69 = *(v4 + 2);
      v70[0] = v19;
      *(v70 + 9) = *(v4 + 57);
      v67 = v18;
      result = (v14)(&v67, a2);
      v21 = v50[3];
      *(v4 + 2) = v50[2];
      *(v4 + 3) = v21;
      v4[8] = v51;
      v22 = v50[1];
      v23 = v50[0];
    }

    *v4 = v23;
    *(v4 + 1) = v22;
    *(v4 + 72) = 2;
  }

  return result;
}

uint64_t sub_24DC5F824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24DC5F848, 0, 0);
}

uint64_t sub_24DC5F848()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_24DC5F944;
  v6 = v0[2];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0x3A5F28646C656979, 0xE900000000000029, sub_24DC726E8, v3, v7);
}

uint64_t sub_24DC5F944()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC5FA80, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24DC5FA80()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_24DC5FAE4(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3)
{
  v28 = a3;
  v5 = *&a2->_os_unfair_lock_opaque;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F090, &qword_24DCBA478);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = *(v5 + 80);
  v11 = type metadata accessor for _BroadcastSequenceStateMachine.OnWaitToProduceMore();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  os_unfair_lock_lock(a2 + 4);
  v19 = type metadata accessor for _BroadcastSequenceStateMachine();
  sub_24DC5FD9C(a1, v28, v19, v18);
  os_unfair_lock_unlock(a2 + 4);
  (*(v12 + 16))(v16, v18, v11);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F098, &qword_24DCBA480);
  if ((*(*(v20 - 8) + 48))(v16, 1, v20) != 1)
  {
    v21 = &v16[*(v20 + 48)];
    v22 = *v21;
    v23 = v21[8];
    v24 = v27;
    (*(v27 + 32))(v9, v16, v6);
    if (v23)
    {
      v29 = v22;
      sub_24DCB50E4();
    }

    else
    {
      sub_24DCB50F4();
    }

    (*(v24 + 8))(v9, v6);
  }

  return (*(v12 + 8))(v18, v11);
}

uint64_t sub_24DC5FD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *v4;
  v8 = v4[2];
  v10 = v4[4];
  v9 = v4[5];
  v11 = *(v4 + 48);
  v12 = *(v4 + 72);
  if (v12 <= 2)
  {
    if (v12 == 2)
    {
      v27 = *v4;
      v28 = *(v4 + 1);
      *(&v29 + 1) = v4[5];
      v30[0] = *(v4 + 48);
      *&v30[1] = *(v4 + 49);
      *&v30[16] = v4[8];
      v14 = *(v4 + 3);
      v32 = *(v4 + 2);
      *&v29 = v32;
      v33[0] = v14;
      *(v33 + 9) = *(v4 + 57);
      v31[0] = *v4;
      v31[1] = v28;
      v34[0] = v7;
      v34[1] = *(&v27 + 1);
      v34[2] = v8;
      v34[3] = *(&v28 + 1);
      v34[4] = v10;
      v34[5] = v9;
      v35 = v11;
      *v36 = *(v4 + 49);
      *&v36[15] = v4[8];
      v37 = 2;
      v15 = *(a3 + 16);
      v16 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming();
      (*(*(v16 - 8) + 16))(v38, v34, v16);
      v17 = *(*(a3 - 8) + 8);
      v17(v31, a3);
      v4[8] = 0;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 72) = 4;
      sub_24DC6A274(a1, a2, v16, a4);
      v18 = *(v4 + 3);
      v38[2] = *(v4 + 2);
      v39[0] = v18;
      *(v39 + 9) = *(v4 + 57);
      v19 = *(v4 + 1);
      v38[0] = *v4;
      v38[1] = v19;
      result = (v17)(v38, a3);
      *(v4 + 2) = v29;
      *(v4 + 3) = *v30;
      v4[8] = *&v30[16];
      *v4 = v27;
      *(v4 + 1) = v28;
      *(v4 + 72) = 2;
      return result;
    }

    goto LABEL_8;
  }

  if (v12 != 3)
  {
LABEL_8:
    result = sub_24DCB55E4();
    __break(1u);
    return result;
  }

  v21 = *v4;

  sub_24DC6F0D0(v9, v11 & 1);

  sub_24DC57738(v9, v11 & 1);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F098, &qword_24DCBA480);
  v23 = a4 + *(v22 + 48);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F090, &qword_24DCBA478);
  (*(*(v24 - 8) + 16))(a4, a1, v24);
  *v23 = 0;
  *(v23 + 8) = 0;
  v25 = *(*(v22 - 8) + 56);

  return v25(a4, 0, 1, v22);
}

uint64_t sub_24DC60100(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v6);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_24DCB5904();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v20, v10);
    return sub_24DCB50E4();
  }

  else
  {
    (*(v4 + 32))(v8, v20, v3);
    return sub_24DCB50F4();
  }
}

uint64_t sub_24DC6033C(os_unfair_lock_s *a1, uint64_t a2)
{
  v4 = *&a1->_os_unfair_lock_opaque;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F090, &qword_24DCBA478);
  v25[0] = *(v5 - 8);
  v6 = *(v25[0] + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - v7;
  v9 = *(v4 + 80);
  v10 = type metadata accessor for _BroadcastSequenceStateMachine.OnWaitToProduceMore();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - v16;
  os_unfair_lock_lock(a1 + 4);
  v18 = type metadata accessor for _BroadcastSequenceStateMachine();
  sub_24DC605EC(a2, v18, v17);
  os_unfair_lock_unlock(a1 + 4);
  (*(v11 + 16))(v15, v17, v10);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F098, &qword_24DCBA480);
  if ((*(*(v19 - 8) + 48))(v15, 1, v19) != 1)
  {
    v20 = &v15[*(v19 + 48)];
    v21 = *v20;
    v22 = v20[8];
    v23 = v25[0];
    (*(v25[0] + 32))(v8, v15, v5);
    if (v22)
    {
      v25[1] = v21;
      sub_24DCB50E4();
    }

    else
    {
      sub_24DCB50F4();
    }

    (*(v23 + 8))(v8, v5);
  }

  return (*(v11 + 8))(v17, v10);
}

uint64_t sub_24DC605EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = v3[2];
  v8 = v3[4];
  v7 = v3[5];
  v9 = *(v3 + 48);
  v10 = *(v3 + 72);
  if (v10 <= 2)
  {
    if (v10 == 2)
    {
      v23 = *v3;
      v24 = *(v3 + 1);
      *(&v25 + 1) = v3[5];
      v26[0] = *(v3 + 48);
      *&v26[1] = *(v3 + 49);
      *&v26[16] = v3[8];
      v12 = *(v3 + 3);
      v28 = *(v3 + 2);
      *&v25 = v28;
      v29[0] = v12;
      *(v29 + 9) = *(v3 + 57);
      v27[0] = *v3;
      v27[1] = v24;
      v30[0] = v5;
      v30[1] = *(&v23 + 1);
      v30[2] = v6;
      v30[3] = *(&v24 + 1);
      v30[4] = v8;
      v30[5] = v7;
      v31 = v9;
      *v32 = *(v3 + 49);
      *&v32[15] = v3[8];
      v33 = 2;
      v13 = *(a2 + 16);
      v15 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming();
      (*(*(v15 - 8) + 16))(v34, v30, v15);
      v16 = *(*(a2 - 8) + 8);
      v16(v27, a2);
      v3[8] = 0;
      *(v3 + 2) = 0u;
      *(v3 + 3) = 0u;
      *v3 = 0u;
      *(v3 + 1) = 0u;
      *(v3 + 72) = 4;
      sub_24DC6A628(a1, a3);
      v17 = *(v3 + 3);
      v34[2] = *(v3 + 2);
      v35[0] = v17;
      *(v35 + 9) = *(v3 + 57);
      v18 = *(v3 + 1);
      v34[0] = *v3;
      v34[1] = v18;
      result = (v16)(v34, a2);
      *(v3 + 2) = v25;
      *(v3 + 3) = *v26;
      v3[8] = *&v26[16];
      *v3 = v23;
      *(v3 + 1) = v24;
      *(v3 + 72) = 2;
      return result;
    }

    goto LABEL_8;
  }

  if (v10 != 3)
  {
LABEL_8:
    result = sub_24DCB55E4();
    __break(1u);
    return result;
  }

  v20 = *v3;

  sub_24DC6F0D0(v7, v9 & 1);

  sub_24DC57738(v7, v9 & 1);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F098, &qword_24DCBA480);
  v22 = *(*(v21 - 8) + 56);

  return v22(a3, 1, 1, v21);
}

uint64_t sub_24DC608E8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  v10 = v4[1];
  v12 = v4[2];
  v11 = v4[3];
  v13 = *(v4 + 72);
  if (v13 <= 1)
  {
    if (!*(v4 + 72))
    {
      v14 = *(v4 + 3);
      v66 = *(v4 + 2);
      *v67 = v14;
      *&v67[9] = *(v4 + 57);
      v15 = *(v4 + 1);
      v64 = *v4;
      v65 = v15;
      v16 = *(*(a3 - 8) + 8);
      v16(&v64, a3);
      v4[8] = 0;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 72) = 4;
      sub_24DC6F0D0(a1, a2 & 1);
      v17 = *(a3 + 16);
      sub_24DC6F294(a1, a2 & 1, &v60);
      v18 = *(v4 + 2);
      v19 = *(v4 + 3);
      v20 = *v4;
      v75 = *(v4 + 1);
      v76 = v18;
      v77[0] = v19;
      *(v77 + 9) = *(v4 + 57);
      v51 = v61;
      v54 = v60;
      v21 = v62;
      v22 = v63[0];
      LOBYTE(v68) = v63[0];
      v74 = v20;
      v16(&v74, a3);
      *v4 = v54;
      *(v4 + 1) = v51;
      *(v4 + 2) = v21;
      *(v4 + 48) = v22;
      *(v4 + 72) = 3;
      type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations();
      type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      return (*(*(TupleTypeMetadata2 - 8) + 56))(a4, 1, 1, TupleTypeMetadata2);
    }

    *&v68 = *v4;
    *(&v68 + 1) = v10;
    *&v69 = v12;
    *(&v69 + 1) = v11;
    v37 = *(v4 + 3);
    v66 = *(v4 + 2);
    *v67 = v37;
    *&v67[9] = *(v4 + 57);
    v38 = *(v4 + 1);
    v64 = *v4;
    v65 = v38;
    v39 = *(*(a3 - 8) + 8);

    v39(&v64, a3);
    v4[8] = 0;
    *(v4 + 2) = 0u;
    *(v4 + 3) = 0u;
    *v4 = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 72) = 4;
    v40 = *(a3 + 16);
    v41 = type metadata accessor for _BroadcastSequenceStateMachine.State.Subscribed();
    v34 = v4;
    sub_24DC63F14(a1, a2 & 1, v41, a4);
    v42 = v68;
    sub_24DC6F0D0(a1, a2 & 1);
    sub_24DC6BA44(v42, *(&v42 + 1), a1, a2 & 1, &v60);
    v53 = v61;
    v55 = v60;
    v43 = v62;
    v44 = v63[0];
    v45 = *(v4 + 3);
    v76 = *(v4 + 2);
    v77[0] = v45;
    *(v77 + 9) = *(v4 + 57);
    v46 = *(v4 + 1);
    v74 = *v4;
    v75 = v46;
    result = (v39)(&v74, a3);
    *v4 = v55;
    *(v4 + 1) = v53;
    *(v4 + 2) = v43;
    *(v4 + 48) = v44;
    goto LABEL_7;
  }

  v26 = v4[4];
  v25 = v4[5];
  v27 = *(v4 + 48);
  if (v13 == 2)
  {
    v56 = *v4;
    v57 = *(v4 + 1);
    *(&v58 + 1) = v4[5];
    v59[0] = *(v4 + 48);
    *&v59[1] = *(v4 + 49);
    *&v59[16] = v4[8];
    v28 = *(v4 + 3);
    v62 = *(v4 + 2);
    *&v58 = v62;
    v63[0] = v28;
    *(v63 + 9) = *(v4 + 57);
    v29 = *(v4 + 1);
    v60 = *v4;
    v61 = v29;
    *&v64 = v9;
    *(&v64 + 1) = v10;
    *&v65 = v12;
    *(&v65 + 1) = v11;
    *&v66 = v26;
    *(&v66 + 1) = v25;
    v67[0] = v27;
    *&v67[1] = *(v4 + 49);
    *&v67[16] = v4[8];
    v67[24] = 2;
    v30 = *(a3 + 16);
    v31 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming();
    v32 = *(v31 - 8);
    (*(v32 + 16))(&v74, &v64, v31);
    v52 = *(*(a3 - 8) + 8);
    v52(&v60, a3);
    v4[8] = 0;
    *(v4 + 2) = 0u;
    *(v4 + 3) = 0u;
    *v4 = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 72) = 4;
    v33 = a2 & 1;
    v34 = v4;
    sub_24DC6A9B4(a1, v33, v31, a4);
    v70 = v58;
    v71 = *v59;
    v72 = *&v59[16];
    v68 = v56;
    v69 = v57;

    sub_24DC6F0D0(a1, v33);
    (*(v32 + 8))(&v68, v31);
    v73 = v33;
    v35 = *(v4 + 3);
    v76 = *(v4 + 2);
    v77[0] = v35;
    *(v77 + 9) = *(v4 + 57);
    v36 = *(v4 + 1);
    v74 = *v4;
    v75 = v36;
    result = (v52)(&v74, a3);
    *v4 = v56;
    v4[2] = *v59;
    v4[3] = *&v59[8];
    v4[4] = *&v59[16];
    v4[5] = a1;
    *(v4 + 48) = v33;
LABEL_7:
    *(v34 + 72) = 3;
    return result;
  }

  if (v13 == 3)
  {
    v47 = *v4;

    sub_24DC6F0D0(v25, v27 & 1);

    sub_24DC57738(v25, v27 & 1);
    v48 = *(a3 + 16);
    type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations();
    type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations();
    v49 = swift_getTupleTypeMetadata2();
    v50 = *(*(v49 - 8) + 56);

    return v50(a4, 1, 1, v49);
  }

  else
  {
    result = sub_24DCB55E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_24DC60F08(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v2[3];
  v8 = *(v2 + 72);
  if (v8 <= 1)
  {
    if (*(v2 + 72))
    {
      *&v61 = v4;
      *(&v61 + 1) = v5;
      *&v62 = v6;
      *(&v62 + 1) = v7;
      v34 = *(v2 + 3);
      v67 = *(v2 + 2);
      *v68 = v34;
      *&v68[9] = *(v2 + 57);
      v35 = *(v2 + 1);
      v65 = *v2;
      v66 = v35;
      v36 = *(*(a1 - 8) + 8);

      v36(&v65, a1);
      v2[8] = 0;
      *(v2 + 2) = 0u;
      *(v2 + 3) = 0u;
      *v2 = 0u;
      *(v2 + 1) = 0u;
      *(v2 + 72) = 4;
      v37 = *(a1 + 16);
      v38 = *(type metadata accessor for _BroadcastSequenceStateMachine.State.Subscribed() + 16);
      v39 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions();
      v17 = sub_24DC65FB4(v39);
      v19 = *(&v62 + 1);
      v40 = v62;
      v41 = *(v2 + 3);
      v72 = *(v2 + 2);
      v73[0] = v41;
      *(v73 + 9) = *(v2 + 57);
      v42 = *(v2 + 1);
      v70 = *v2;
      v71 = v42;
      v36(&v70, a1);
      *v2 = v61;
      v2[2] = v40;
    }

    else
    {
      v9 = *(v2 + 3);
      v67 = *(v2 + 2);
      *v68 = v9;
      *&v68[9] = *(v2 + 57);
      v10 = *(v2 + 1);
      v65 = *v2;
      v66 = v10;
      v11 = *(*(a1 - 8) + 8);
      v11(&v65, a1);
      v2[8] = 0;
      *(v2 + 2) = 0u;
      *(v2 + 3) = 0u;
      *v2 = 0u;
      *(v2 + 1) = 0u;
      *(v2 + 72) = 4;
      v12 = *(a1 + 16);
      v61 = sub_24DC63E78();
      *&v62 = v13;
      *(&v62 + 1) = v14;
      v15 = *(type metadata accessor for _BroadcastSequenceStateMachine.State.Subscribed() + 16);
      v16 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions();
      v17 = sub_24DC65FB4(v16);
      v19 = *(&v62 + 1);
      v18 = v62;
      v20 = *(v2 + 3);
      v72 = *(v2 + 2);
      v73[0] = v20;
      *(v73 + 9) = *(v2 + 57);
      v21 = *(v2 + 1);
      v70 = *v2;
      v71 = v21;
      v11(&v70, a1);
      *v2 = v61;
      v2[2] = v18;
    }

    v2[3] = v19;
    v43 = 1;
    goto LABEL_10;
  }

  v23 = v2[4];
  v22 = v2[5];
  v24 = *(v2 + 48);
  if (v8 == 2)
  {
    *&v57 = v4;
    *(&v57 + 1) = v5;
    *&v58 = v6;
    *(&v58 + 1) = v2[3];
    *(&v59 + 1) = v2[5];
    v60[0] = *(v2 + 48);
    *&v60[1] = *(v2 + 49);
    *&v60[16] = v2[8];
    v25 = *(v2 + 3);
    v63 = *(v2 + 2);
    *&v59 = v63;
    v64[0] = v25;
    *(v64 + 9) = *(v2 + 57);
    v26 = *(v2 + 1);
    v61 = *v2;
    v62 = v26;
    *&v65 = v4;
    *(&v65 + 1) = v5;
    *&v66 = v6;
    *(&v66 + 1) = v7;
    *&v67 = v23;
    *(&v67 + 1) = v22;
    v68[0] = v24;
    *&v68[1] = *(v2 + 49);
    *&v68[16] = v2[8];
    v68[24] = 2;
    v27 = *(a1 + 16);
    v28 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming();
    (*(*(v28 - 8) + 16))(&v70, &v65, v28);
    v29 = *(*(a1 - 8) + 8);
    v29(&v61, a1);
    v2[8] = 0;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 72) = 4;
    v30 = *(v28 + 16);
    v31 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions();
    v17 = sub_24DC65FB4(v31);
    v32 = *(v2 + 3);
    v72 = *(v2 + 2);
    v73[0] = v32;
    *(v73 + 9) = *(v2 + 57);
    v33 = *(v2 + 1);
    v70 = *v2;
    v71 = v33;
    v29(&v70, a1);
    *(v2 + 2) = v59;
    *(v2 + 3) = *v60;
    v2[8] = *&v60[16];
    *v2 = v57;
    *(v2 + 1) = v58;
    *(v2 + 72) = 2;
    return v17;
  }

  if (v8 == 3)
  {
    *&v61 = v4;
    *(&v61 + 1) = v5;
    *&v62 = v6;
    *(&v62 + 1) = v7;
    *&v63 = v23;
    *(&v63 + 1) = v22;
    v44 = v24 & 1;
    LOBYTE(v64[0]) = v24 & 1;
    v45 = *(v2 + 3);
    v67 = *(v2 + 2);
    *v68 = v45;
    *&v68[9] = *(v2 + 57);
    v46 = *(v2 + 1);
    v65 = *v2;
    v66 = v46;

    sub_24DC6F0D0(v22, v44);
    v47 = *(*(a1 - 8) + 8);
    v47(&v65, a1);
    v2[8] = 0;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 72) = 4;
    v48 = *(a1 + 16);
    v49 = *(type metadata accessor for _BroadcastSequenceStateMachine.State.Finished() + 16);
    v50 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions();
    v17 = sub_24DC65FB4(v50);
    v51 = v63;
    v52 = v64[0];
    v69 = v64[0];
    v53 = *(v2 + 3);
    v72 = *(v2 + 2);
    v73[0] = v53;
    *(v73 + 9) = *(v2 + 57);
    v54 = *(v2 + 1);
    v70 = *v2;
    v71 = v54;
    v47(&v70, a1);
    v55 = v62;
    *v2 = v61;
    *(v2 + 1) = v55;
    *(v2 + 2) = v51;
    *(v2 + 48) = v52;
    v43 = 3;
LABEL_10:
    *(v2 + 72) = v43;
    return v17;
  }

  result = sub_24DCB55E4();
  __break(1u);
  return result;
}

uint64_t sub_24DC6141C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = *(*a2 + 80);
  v3[7] = sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v4 = sub_24DCB5904();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext.ReturnAndResumeProducers();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v10 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext();
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC615FC, 0, 0);
}

uint64_t sub_24DC615FC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[11];
  v6 = v0[12];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  os_unfair_lock_lock(v9 + 4);
  v10 = type metadata accessor for _BroadcastSequenceStateMachine();
  sub_24DC61B5C(v8, v10, v1);
  os_unfair_lock_unlock(v9 + 4);
  (*(v4 + 16))(v2, v1, v3);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    v12 = v0[4];
    v11 = v0[5];
    v13 = swift_task_alloc();
    v0[18] = v13;
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    v14 = *(MEMORY[0x277D85A40] + 4);
    v15 = swift_task_alloc();
    v0[19] = v15;
    *v15 = v0;
    v15[1] = sub_24DC618E0;
    v16 = v0[7];
    v17 = v0[3];

    return MEMORY[0x2822008A0](v17, 0, 0, 0xD00000000000001BLL, 0x800000024DCC57C0, sub_24DC726F0, v13, v16);
  }

  else
  {
    v18 = v0[13];
    v20 = v0[10];
    v19 = v0[11];
    v21 = v0[8];
    v22 = v0[9];
    v23 = v0[3];
    (*(v0[12] + 32))(v18, v0[16], v19);
    sub_24DC5F1B0(*(v18 + *(v19 + 28)), *(v18 + *(v19 + 28) + 8), *(v18 + *(v19 + 28) + 16));
    (*(v22 + 16))(v20, v18, v21);
    sub_24DC2F270(v21, (v0 + 2), v23);
    v25 = v0[12];
    v24 = v0[13];
    v26 = v0[11];
    (*(v0[15] + 8))(v0[17], v0[14]);
    (*(v25 + 8))(v24, v26);
    v28 = v0[16];
    v27 = v0[17];
    v29 = v0[13];
    v30 = v0[10];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_24DC618E0()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 144);

  if (v0)
  {
    v6 = sub_24DC61AB8;
  }

  else
  {
    v6 = sub_24DC61A14;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24DC61A14()
{
  (*(v0[15] + 8))(v0[17], v0[14]);
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[13];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24DC61AB8()
{
  (*(v0[15] + 8))(v0[17], v0[14]);
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[13];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24DC61B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v4[3];
  v11 = *(v4 + 72);
  if (v11 <= 1)
  {
    if (v11 == 1)
    {
      *&v50 = v7;
      *(&v50 + 1) = v8;
      *&v51 = v9;
      *(&v51 + 1) = v10;
      v24 = *(v4 + 3);
      v56 = *(v4 + 2);
      *v57 = v24;
      *&v57[9] = *(v4 + 57);
      v25 = *(v4 + 1);
      v54 = *v4;
      v55 = v25;
      v26 = *(*(a2 - 8) + 8);

      v26(&v54, a2);
      v4[8] = 0;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 72) = 4;
      v28 = *(a2 + 16);
      v29 = type metadata accessor for _BroadcastSequenceStateMachine.State.Subscribed();
      sub_24DC64D70(a1, v29, a3);
      v30 = v51;
      v31 = *(v4 + 3);
      v61 = *(v4 + 2);
      v62[0] = v31;
      *(v62 + 9) = *(v4 + 57);
      v32 = *(v4 + 1);
      v59 = *v4;
      v60 = v32;
      result = (v26)(&v59, a2);
      *v4 = v50;
      *(v4 + 1) = v30;
      v33 = 1;
LABEL_8:
      *(v4 + 72) = v33;
      return result;
    }
  }

  else
  {
    v13 = v4[4];
    v12 = v4[5];
    v14 = *(v4 + 48);
    if (v11 == 2)
    {
      *&v46 = v7;
      *(&v46 + 1) = v8;
      *&v47 = v9;
      *(&v47 + 1) = v4[3];
      *(&v48 + 1) = v4[5];
      v49[0] = *(v4 + 48);
      *&v49[1] = *(v4 + 49);
      *&v49[16] = v4[8];
      v15 = *(v4 + 3);
      v52 = *(v4 + 2);
      *&v48 = v52;
      v53[0] = v15;
      *(v53 + 9) = *(v4 + 57);
      v16 = *(v4 + 1);
      v50 = *v4;
      v51 = v16;
      *&v54 = v7;
      *(&v54 + 1) = v8;
      *&v55 = v9;
      *(&v55 + 1) = v10;
      *&v56 = v13;
      *(&v56 + 1) = v12;
      v57[0] = v14;
      *&v57[1] = *(v4 + 49);
      *&v57[16] = v4[8];
      v57[24] = 2;
      v17 = *(a2 + 16);
      v19 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming();
      (*(*(v19 - 8) + 16))(&v59, &v54, v19);
      v20 = *(*(a2 - 8) + 8);
      v20(&v50, a2);
      v4[8] = 0;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 72) = 4;
      sub_24DC68510(a1, v19, a3);
      v21 = *(v4 + 3);
      v61 = *(v4 + 2);
      v62[0] = v21;
      *(v62 + 9) = *(v4 + 57);
      v22 = *(v4 + 1);
      v59 = *v4;
      v60 = v22;
      result = (v20)(&v59, a2);
      *(v4 + 2) = v48;
      *(v4 + 3) = *v49;
      v4[8] = *&v49[16];
      *v4 = v46;
      *(v4 + 1) = v47;
      *(v4 + 72) = 2;
      return result;
    }

    if (v11 == 3)
    {
      *&v50 = v7;
      *(&v50 + 1) = v8;
      *&v51 = v9;
      *(&v51 + 1) = v10;
      *&v52 = v13;
      *(&v52 + 1) = v12;
      v35 = v14 & 1;
      LOBYTE(v53[0]) = v14 & 1;
      v36 = *(v4 + 3);
      v56 = *(v4 + 2);
      *v57 = v36;
      *&v57[9] = *(v4 + 57);
      v37 = *(v4 + 1);
      v54 = *v4;
      v55 = v37;

      sub_24DC6F0D0(v12, v35);
      v38 = *(*(a2 - 8) + 8);
      v38(&v54, a2);
      v4[8] = 0;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 72) = 4;
      v39 = *(a2 + 16);
      v40 = type metadata accessor for _BroadcastSequenceStateMachine.State.Finished();
      sub_24DC6BB70(a1, v40, a3);
      v41 = v52;
      v42 = v53[0];
      v58 = v53[0];
      v43 = *(v4 + 3);
      v61 = *(v4 + 2);
      v62[0] = v43;
      *(v62 + 9) = *(v4 + 57);
      v44 = *(v4 + 1);
      v59 = *v4;
      v60 = v44;
      result = (v38)(&v59, a2);
      v45 = v51;
      *v4 = v50;
      *(v4 + 1) = v45;
      *(v4 + 2) = v41;
      *(v4 + 48) = v42;
      v33 = 3;
      goto LABEL_8;
    }
  }

  result = sub_24DCB55E4();
  __break(1u);
  return result;
}

uint64_t sub_24DC61F98(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3)
{
  v33 = a1;
  v34 = a3;
  v4 = *(*&a2->_os_unfair_lock_opaque + 80);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v5 = sub_24DCB5904();
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = &v31 - v7;
  v8 = sub_24DCB5104();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for _BroadcastSequenceStateMachine.OnSetContinuation();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  os_unfair_lock_lock(a2 + 4);
  v20 = type metadata accessor for _BroadcastSequenceStateMachine();
  sub_24DC62398(v33, v34, v20, v19);
  os_unfair_lock_unlock(a2 + 4);
  (*(v13 + 16))(v17, v19, v12);
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations();
  sub_24DCB5414();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  if ((*(*(TupleTypeMetadata3 - 8) + 48))(v17, 1, TupleTypeMetadata3) != 1)
  {
    v33 = v5;
    v34 = v12;
    v22 = *(TupleTypeMetadata3 + 48);
    v23 = &v17[*(TupleTypeMetadata3 + 64)];
    v24 = *v23;
    v25 = *(v23 + 1);
    v26 = v23[16];
    (*(v35 + 32))(v11, v17, v8);
    v27 = &v17[v22];
    v29 = v32;
    v28 = v33;
    (*(v36 + 32))(v32, v27, v33);
    sub_24DC60100(v29, v8);
    if (v24)
    {

      sub_24DC6F0D0(v25, v26 & 1);
      sub_24DC5F1B0(v24, v25, v26 & 1);

      sub_24DC57738(v25, v26 & 1);
      sub_24DC726F8(v24, v25, v26);
    }

    (*(v36 + 8))(v29, v28);
    (*(v35 + 8))(v11, v8);
    v12 = v34;
  }

  return (*(v13 + 8))(v19, v12);
}

uint64_t sub_24DC62398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v43 = a1;
  v8 = v4[1];
  v60 = *v4;
  v61 = v8;
  v9 = v4[3];
  v62 = v4[2];
  *v63 = v9;
  v10 = *(v4 + 57);
  *&v63[9] = v10;
  if (HIBYTE(v10) <= 1u)
  {
    if (HIBYTE(v10) == 1)
    {
      v48 = v60;
      v49 = v61;
      v24 = v4[3];
      v54 = v4[2];
      v55[0] = v24;
      *(v55 + 9) = *(v4 + 57);
      v25 = v4[1];
      v52 = *v4;
      v53 = v25;
      v26 = *(*(a3 - 8) + 8);

      v26(&v52, a3);
      *(v4 + 8) = 0;
      v4[2] = 0u;
      v4[3] = 0u;
      *v4 = 0u;
      v4[1] = 0u;
      *(v4 + 72) = 4;
      v27 = *(a3 + 16);
      v28 = type metadata accessor for _BroadcastSequenceStateMachine.State.Subscribed();
      sub_24DC6586C(v43, a2, v28, a4);
      v43 = v48;
      v29 = v49;
      v30 = v4[3];
      v58 = v4[2];
      v59[0] = v30;
      *(v59 + 9) = *(v4 + 57);
      v31 = v4[1];
      v56 = *v4;
      v57 = v31;
      result = (v26)(&v56, a3);
      *v4 = v48;
      v4[1] = v29;
      *(v4 + 72) = 1;
      return result;
    }
  }

  else
  {
    v11 = v62;
    if (HIBYTE(v10) == 2)
    {
      *&v47[1] = *(v4 + 49);
      v12 = v4[1];
      v13 = v4[3];
      v50 = v4[2];
      v51[0] = v13;
      *(v51 + 9) = *(v4 + 57);
      v14 = v4[1];
      v48 = *v4;
      v49 = v14;
      v15 = v4[3];
      v54 = v50;
      v55[0] = v15;
      *(v55 + 9) = *(v4 + 57);
      v44 = v60;
      v45 = v61;
      v46 = v62;
      v47[0] = v63[0];
      *&v47[16] = *(v4 + 8);
      v52 = v48;
      v53 = v12;
      v16 = *(a3 + 16);
      v17 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming();
      (*(*(v17 - 8) + 16))(&v56, &v52, v17);
      v18 = *(*(a3 - 8) + 8);
      v18(&v48, a3);
      *(v4 + 8) = 0;
      v4[2] = 0u;
      v4[3] = 0u;
      *v4 = 0u;
      v4[1] = 0u;
      *(v4 + 72) = 4;
      sub_24DC69A54(v43, a2, v17, a4);
      v19 = v4[3];
      v58 = v4[2];
      v59[0] = v19;
      *(v59 + 9) = *(v4 + 57);
      v20 = v4[1];
      v56 = *v4;
      v57 = v20;
      result = (v18)(&v56, a3);
      v22 = *v47;
      v4[2] = v46;
      v4[3] = v22;
      *(v4 + 8) = *&v47[16];
      v23 = v45;
      *v4 = v44;
      v4[1] = v23;
      *(v4 + 72) = 2;
      return result;
    }

    v40 = v63[0];
    v41 = v62;
    v42 = v60;
    if (HIBYTE(v10) == 3)
    {
      v32 = *(a3 + 16);
      sub_24DCB5414();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
      v33 = sub_24DCB5104();
      sub_24DCB5904();
      type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations();
      sub_24DCB5414();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v39 = *(TupleTypeMetadata3 + 48);
      v35 = a4 + *(TupleTypeMetadata3 + 64);
      v36 = (*(*(v33 - 8) + 16))(a4, v43, v33);
      *&v43 = &v39;
      *&v52 = *(&v62 + 1);
      LOBYTE(v33) = v40 & 1;
      BYTE8(v52) = v40 & 1;
      MEMORY[0x28223BE20](v36);
      v37 = type metadata accessor for _BroadcastSequenceStateMachine.State();
      (*(*(v37 - 8) + 16))(&v56, &v60, v37);
      sub_24DC6F0D0(*(&v11 + 1), v33);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A0, &qword_24DCBA488);
      sub_24DC64B5C(sub_24DC6F3B4, v38, a4 + v39);

      sub_24DC57738(*(&v11 + 1), v33);
      sub_24DC57738(*(&v11 + 1), v33);
      *v35 = 0;
      *(v35 + 8) = 0;
      *(v35 + 16) = 0;
      return (*(*(TupleTypeMetadata3 - 8) + 56))(a4, 0, 1, TupleTypeMetadata3);
    }
  }

  result = sub_24DCB55E4();
  __break(1u);
  return result;
}

uint64_t sub_24DC6291C(os_unfair_lock_s *a1, uint64_t a2)
{
  v30 = a2;
  v3 = *(*&a1->_os_unfair_lock_opaque + 80);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v4 = sub_24DCB5904();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - v6;
  v7 = sub_24DCB5104();
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for _BroadcastSequenceStateMachine.OnCancelSubscription();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  os_unfair_lock_lock(a1 + 4);
  v19 = type metadata accessor for _BroadcastSequenceStateMachine();
  sub_24DC62C9C(v30, v19, v18);
  os_unfair_lock_unlock(a1 + 4);
  (*(v12 + 16))(v16, v18, v11);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) != 1)
  {
    v21 = *(TupleTypeMetadata2 + 48);
    v22 = v27;
    (*(v27 + 32))(v10, v16, v7);
    v23 = v29;
    v24 = &v16[v21];
    v25 = v28;
    (*(v29 + 32))(v28, v24, v4);
    sub_24DC60100(v25, v7);
    (*(v23 + 8))(v25, v4);
    (*(v22 + 8))(v10, v7);
  }

  return (*(v12 + 8))(v18, v11);
}

uint64_t sub_24DC62C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v4[3];
  v11 = *(v4 + 72);
  if (v11 <= 1)
  {
    if (v11 == 1)
    {
      *&v50 = v7;
      *(&v50 + 1) = v8;
      *&v51 = v9;
      *(&v51 + 1) = v10;
      v24 = *(v4 + 3);
      v56 = *(v4 + 2);
      *v57 = v24;
      *&v57[9] = *(v4 + 57);
      v25 = *(v4 + 1);
      v54 = *v4;
      v55 = v25;
      v26 = *(*(a2 - 8) + 8);

      v26(&v54, a2);
      v4[8] = 0;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 72) = 4;
      v28 = *(a2 + 16);
      v29 = type metadata accessor for _BroadcastSequenceStateMachine.State.Subscribed();
      sub_24DC65220(a1, v29, a3);
      v30 = v51;
      v31 = *(v4 + 3);
      v61 = *(v4 + 2);
      v62[0] = v31;
      *(v62 + 9) = *(v4 + 57);
      v32 = *(v4 + 1);
      v59 = *v4;
      v60 = v32;
      result = (v26)(&v59, a2);
      *v4 = v50;
      *(v4 + 1) = v30;
      v33 = 1;
LABEL_8:
      *(v4 + 72) = v33;
      return result;
    }
  }

  else
  {
    v13 = v4[4];
    v12 = v4[5];
    v14 = *(v4 + 48);
    if (v11 == 2)
    {
      *&v46 = v7;
      *(&v46 + 1) = v8;
      *&v47 = v9;
      *(&v47 + 1) = v4[3];
      *(&v48 + 1) = v4[5];
      v49[0] = *(v4 + 48);
      *&v49[1] = *(v4 + 49);
      *&v49[16] = v4[8];
      v15 = *(v4 + 3);
      v52 = *(v4 + 2);
      *&v48 = v52;
      v53[0] = v15;
      *(v53 + 9) = *(v4 + 57);
      v16 = *(v4 + 1);
      v50 = *v4;
      v51 = v16;
      *&v54 = v7;
      *(&v54 + 1) = v8;
      *&v55 = v9;
      *(&v55 + 1) = v10;
      *&v56 = v13;
      *(&v56 + 1) = v12;
      v57[0] = v14;
      *&v57[1] = *(v4 + 49);
      *&v57[16] = v4[8];
      v57[24] = 2;
      v17 = *(a2 + 16);
      v19 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming();
      (*(*(v19 - 8) + 16))(&v59, &v54, v19);
      v20 = *(*(a2 - 8) + 8);
      v20(&v50, a2);
      v4[8] = 0;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 72) = 4;
      sub_24DC69EB8(a1, v19, a3);
      v21 = *(v4 + 3);
      v61 = *(v4 + 2);
      v62[0] = v21;
      *(v62 + 9) = *(v4 + 57);
      v22 = *(v4 + 1);
      v59 = *v4;
      v60 = v22;
      result = (v20)(&v59, a2);
      *(v4 + 2) = v48;
      *(v4 + 3) = *v49;
      v4[8] = *&v49[16];
      *v4 = v46;
      *(v4 + 1) = v47;
      *(v4 + 72) = 2;
      return result;
    }

    if (v11 == 3)
    {
      *&v50 = v7;
      *(&v50 + 1) = v8;
      *&v51 = v9;
      *(&v51 + 1) = v10;
      *&v52 = v13;
      *(&v52 + 1) = v12;
      v35 = v14 & 1;
      LOBYTE(v53[0]) = v14 & 1;
      v36 = *(v4 + 3);
      v56 = *(v4 + 2);
      *v57 = v36;
      *&v57[9] = *(v4 + 57);
      v37 = *(v4 + 1);
      v54 = *v4;
      v55 = v37;

      sub_24DC6F0D0(v12, v35);
      v38 = *(*(a2 - 8) + 8);
      v38(&v54, a2);
      v4[8] = 0;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 72) = 4;
      v39 = *(a2 + 16);
      v40 = type metadata accessor for _BroadcastSequenceStateMachine.State.Finished();
      sub_24DC6CB60(a1, v40, a3);
      v41 = v52;
      v42 = v53[0];
      v58 = v53[0];
      v43 = *(v4 + 3);
      v61 = *(v4 + 2);
      v62[0] = v43;
      *(v62 + 9) = *(v4 + 57);
      v44 = *(v4 + 1);
      v59 = *v4;
      v60 = v44;
      result = (v38)(&v59, a2);
      v45 = v51;
      *v4 = v50;
      *(v4 + 1) = v45;
      *(v4 + 2) = v41;
      *(v4 + 48) = v42;
      v33 = 3;
      goto LABEL_8;
    }
  }

  result = sub_24DCB55E4();
  __break(1u);
  return result;
}

uint64_t sub_24DC630D8(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 72);
  if (v5 <= 1)
  {
    if (*(v1 + 72))
    {
      v28 = *v1;
      v29 = v2;
      (*(*(a1 - 8) + 16))(v27, v1, a1);
      v7 = *(a1 + 16);
      v8 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions();
      (*(*(v8 - 8) + 8))(&v28, v8);
      v27[0] = v4;
      type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID();
      v9 = sub_24DCB50A4();
      (*(*(v9 - 8) + 8))(v27, v9);
    }

    v10 = 1;
    return v10 & 1;
  }

  v12 = v1[3];
  v11 = v1[4];
  if (v5 == 2)
  {
    v34 = *(v1 + 48);
    *v35 = *(v1 + 49);
    *&v35[15] = v1[8];
    v13 = v1[5];
    v28 = v3;
    v29 = v2;
    v30 = v4;
    v31 = v12;
    v32 = v11;
    v33 = v13;
    v14 = *(a1 - 8);
    (*(v14 + 16))(v27, v1, a1);
    v16 = *(a1 + 16);
    v17 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming();
    v10 = sub_24DC6B850(v17, v18);
    (*(v14 + 8))(v1, a1);
    return v10 & 1;
  }

  if (v5 == 3)
  {
    v36 = v1[5];
    v37 = *(v1 + 48);
    v28 = v3;
    v29 = v2;
    v30 = v4;
    v31 = v12;
    v32 = v11;
    v33 = v36;
    v34 = v37;
    (*(*(a1 - 8) + 16))(v27, v1, a1);
    v20 = *(a1 + 16);
    v21 = type metadata accessor for _BroadcastSequenceStateMachine.State.Finished();
    v10 = sub_24DC6CAA8(v21, v22);
    v38[0] = v3;
    v38[1] = v2;
    v23 = type metadata accessor for _BroadcastSequenceStateMachine.Elements();
    (*(*(v23 - 8) + 8))(v38, v23);
    v27[0] = v4;
    v27[1] = v12;
    v24 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions();
    (*(*(v24 - 8) + 8))(v27, v24);
    v39 = v11;
    type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID();
    v25 = sub_24DCB50A4();
    (*(*(v25 - 8) + 8))(&v39, v25);
    v40 = v36;
    v41 = v37;
    sub_24DC3DFD4(&v40, &qword_27F19F0A0, &qword_24DCBA488);
    return v10 & 1;
  }

  result = sub_24DCB55E4();
  __break(1u);
  return result;
}

uint64_t sub_24DC6347C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = *(v2 + 72);
  if (v9 > 1)
  {
    v15 = v2[4];
    v14 = v2[5];
    v16 = *(v2 + 48);
    if (v9 == 2)
    {
      v43 = *v2;
      v44 = *(v2 + 1);
      *(&v45 + 1) = v2[5];
      v46[0] = *(v2 + 48);
      *&v46[1] = *(v2 + 49);
      *&v46[16] = v2[8];
      v17 = *(v2 + 3);
      v49 = *(v2 + 2);
      *&v45 = v49;
      v50[0] = v17;
      *(v50 + 9) = *(v2 + 57);
      v18 = *(v2 + 1);
      v47 = *v2;
      v48 = v18;
      *&v51 = v5;
      *(&v51 + 1) = v6;
      *&v52 = v8;
      *(&v52 + 1) = v7;
      *&v53 = v15;
      *(&v53 + 1) = v14;
      v54[0] = v16;
      *&v54[1] = *(v2 + 49);
      *&v54[16] = v2[8];
      v54[24] = 2;
      v19 = *(a1 + 16);
      v20 = type metadata accessor for _BroadcastSequenceStateMachine.State.Streaming();
      (*(*(v20 - 8) + 16))(&v56, &v51, v20);
      v21 = *(*(a1 - 8) + 8);
      v21(&v47, a1);
      v2[8] = 0;
      *(v2 + 2) = 0u;
      *(v2 + 3) = 0u;
      *v2 = 0u;
      *(v2 + 1) = 0u;
      *(v2 + 72) = 4;
      sub_24DC6AF98(v20, a2);
      v22 = *(v2 + 3);
      v58 = *(v2 + 2);
      v59[0] = v22;
      *(v59 + 9) = *(v2 + 57);
      v23 = *(v2 + 1);
      v56 = *v2;
      v57 = v23;
      result = (v21)(&v56, a1);
      *(v2 + 2) = v45;
      *(v2 + 3) = *v46;
      v2[8] = *&v46[16];
      *v2 = v43;
      *(v2 + 1) = v44;
      *(v2 + 72) = 2;
    }

    else if (v9 == 3)
    {
      *&v47 = *v2;
      *(&v47 + 1) = v6;
      *&v48 = v8;
      *(&v48 + 1) = v7;
      *&v49 = v15;
      *(&v49 + 1) = v14;
      v32 = v16 & 1;
      LOBYTE(v50[0]) = v16 & 1;
      v33 = *(v2 + 3);
      v53 = *(v2 + 2);
      *v54 = v33;
      *&v54[9] = *(v2 + 57);
      v34 = *(v2 + 1);
      v51 = *v2;
      v52 = v34;

      sub_24DC6F0D0(v14, v32);
      v35 = *(*(a1 - 8) + 8);
      v35(&v51, a1);
      v2[8] = 0;
      *(v2 + 2) = 0u;
      *(v2 + 3) = 0u;
      *v2 = 0u;
      *(v2 + 1) = 0u;
      *(v2 + 72) = 4;
      v36 = *(a1 + 16);
      v37 = type metadata accessor for _BroadcastSequenceStateMachine.State.Finished();
      sub_24DC6C47C(v37, a2);
      v38 = v49;
      v39 = v50[0];
      v55 = v50[0];
      v40 = *(v2 + 3);
      v58 = *(v2 + 2);
      v59[0] = v40;
      *(v59 + 9) = *(v2 + 57);
      v41 = *(v2 + 1);
      v56 = *v2;
      v57 = v41;
      result = (v35)(&v56, a1);
      v42 = v48;
      *v2 = v47;
      *(v2 + 1) = v42;
      *(v2 + 2) = v38;
      *(v2 + 48) = v39;
      *(v2 + 72) = 3;
    }

    else
    {
      result = sub_24DCB55E4();
      __break(1u);
    }
  }

  else if (*(v2 + 72))
  {
    *&v47 = *v2;
    *(&v47 + 1) = v6;
    *&v48 = v8;
    *(&v48 + 1) = v7;
    v24 = *(v2 + 3);
    v53 = *(v2 + 2);
    *v54 = v24;
    *&v54[9] = *(v2 + 57);
    v25 = *(v2 + 1);
    v51 = *v2;
    v52 = v25;
    v26 = *(*(a1 - 8) + 8);

    v26(&v51, a1);
    v2[8] = 0;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 72) = 4;
    v27 = *(a1 + 16);
    v28 = type metadata accessor for _BroadcastSequenceStateMachine.State.Subscribed();
    sub_24DC66140(v28, a2);
    v29 = v48;
    v30 = *(v2 + 3);
    v58 = *(v2 + 2);
    v59[0] = v30;
    *(v59 + 9) = *(v2 + 57);
    v31 = *(v2 + 1);
    v56 = *v2;
    v57 = v31;
    result = (v26)(&v56, a1);
    *v2 = v47;
    *(v2 + 1) = v29;
    *(v2 + 72) = 1;
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }

  return result;
}

uint64_t sub_24DC638F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB5104();
  v5 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t sub_24DC639AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB5104();
  v5 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

uint64_t sub_24DC63A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = *(a1 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v6 = sub_24DCB5904();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t sub_24DC63B0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = *(a2 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v6 = sub_24DCB5904();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2 + v4, a1, v6);
}

uint64_t (*sub_24DC63BB4(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_24DC63BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB5104();
  v6 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations() + 28);
  v8 = sub_24DCB5904();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_24DC63D0C(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void sub_24DC63D70(uint64_t a1, char a2)
{
  sub_24DC57738(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2 & 1;
}

uint64_t sub_24DC63DE4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_24DC63E24(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_24DC63E78()
{
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber();
  v0 = sub_24DCB4FF4();
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID();
  sub_24DCB4FF4();
  return v0;
}

uint64_t sub_24DC63F14@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v26 = a1;
  v5 = *(a3 + 16);
  v6 = sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v25[1] = v6;
  v7 = sub_24DCB5904();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v25 - v9;
  sub_24DCB5104();
  v11 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (v25 - v17);
  v19 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions();
  sub_24DC641FC(v19, v18);
  type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations();
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = a4;
  v22 = a4 + *(TupleTypeMetadata2 + 48);
  (*(v12 + 16))(v16, v18, v11);
  v33 = v26;
  v34 = v27 & 1;
  v32 = v5;
  v28 = v5;
  v29 = sub_24DC6F44C;
  v30 = &v31;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A0, &qword_24DCBA488);
  sub_24DC64B5C(sub_24DC6F450, v23, v10);
  sub_24DC63BD8(v16, v10, v21);
  (*(v12 + 8))(v18, v11);
  *v22 = MEMORY[0x277D84F90];
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  return (*(*(TupleTypeMetadata2 - 8) + 56))(v21, 0, 1, TupleTypeMetadata2);
}

uint64_t sub_24DC641FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v3 = *(a1 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v4 = sub_24DCB5104();
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v61 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v49 - v8;
  v69 = sub_24DCB5414();
  v54 = *(v69 - 8);
  v9 = *(v54 + 64);
  v10 = MEMORY[0x28223BE20](v69);
  v63 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  v52 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany();
  v67 = *(v52 - 8);
  v14 = *(v67 + 64);
  MEMORY[0x28223BE20](v52);
  v16 = (&v49 - v15);
  v17 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber();
  v70 = *(v17 - 8);
  v18 = *(v70 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v19);
  v62 = &v49 - v23;
  v50 = v24;
  MEMORY[0x28223BE20](v22);
  v26 = &v49 - v25;
  v51 = v2;
  v27 = *v2;
  v28 = sub_24DC6DD9C();
  v68 = v4;
  if (v28 == 1)
  {
    v66 = v16;
    v30 = v55;
    v74 = v27;
    MEMORY[0x28223BE20](1);
    *(&v49 - 2) = v31;
    sub_24DCB50A4();

    swift_getWitnessTable();
    sub_24DCB53A4();

    if ((v72 & 1) == 0)
    {
      sub_24DCB5064();
      (*(v54 + 16))(v13, &v26[*(v17 + 32)], v69);
      v32 = v68;
      result = (*(v30 + 48))(v13, 1, v68);
      v34 = v66;
      v33 = v67;
      if (result != 1)
      {
        (*(v70 + 8))(v26, v17);
        (*(v30 + 32))(v34, v13, v32);
        v35 = v52;
        swift_storeEnumTagMultiPayload();
        return (*(v33 + 32))(v53, v34, v35);
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  if (!v28)
  {
    *v53 = sub_24DCB4FF4();

    return swift_storeEnumTagMultiPayload();
  }

  v71 = sub_24DCB4C94();
  v59 = sub_24DCB50A4();
  sub_24DCB4FC4();
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID();
  v74 = sub_24DCB4C94();
  v58 = sub_24DCB50A4();
  sub_24DCB4FC4();

  if (sub_24DCB5034())
  {
    v49 = v3;
    v36 = 0;
    v66 = (v70 + 32);
    v67 = v70 + 16;
    v65 = (v54 + 16);
    v37 = v55;
    v64 = (v55 + 48);
    v57 = (v55 + 32);
    v55 += 8;
    v56 = (v37 + 16);
    v38 = (v70 + 8);
    v54 += 8;
    v39 = v62;
    v40 = v63;
    v41 = v68;
    while (1)
    {
      v44 = sub_24DCB5024();
      sub_24DCB4FB4();
      if (v44)
      {
        result = (*(v70 + 16))(v39, v27 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v36, v17);
      }

      else
      {
        result = sub_24DCB54F4();
        if (v50 != 8)
        {
          goto LABEL_25;
        }

        v73 = result;
        (*v67)(v39, &v73, v17);
        result = swift_unknownObjectRelease();
      }

      v45 = v69;
      v46 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      (*v66)(v21, v39, v17);
      (*v65)(v40, v21 + *(v17 + 32), v45);
      if ((*v64)(v40, 1, v41) == 1)
      {
        (*v38)(v21, v17);
        (*v54)(v40, v45);
      }

      else
      {
        v42 = v60;
        (*v57)(v60, v40, v41);
        (*v56)(v61, v42, v41);
        v40 = v63;
        sub_24DCB5054();
        v73 = *v21;
        sub_24DCB5054();
        v43 = v42;
        v39 = v62;
        (*v55)(v43, v41);
        (*v38)(v21, v17);
      }

      ++v36;
      if (v46 == sub_24DCB5034())
      {

        v48 = v53;
        v3 = v49;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v48 = v53;
LABEL_22:
  MEMORY[0x28223BE20](v47);
  *(&v49 - 2) = v3;
  *(&v49 - 1) = &v74;
  sub_24DCB50A4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24DCB53E4();
  *v48 = v71;
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_24DC64B5C@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v15, a2[3]);
  }

  else
  {
    (*(v7 + 32))(v11, v15, v6);
    a1(v11);
    (*(v7 + 8))(v11, v6);
    v18 = a2[3];
  }

  v19 = a2[4];
  sub_24DCB5904();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24DC64D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v8 = sub_24DCB5904();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v18 - v10);
  v12 = *(v4 + 16);
  v18[0] = a1;
  v18[1] = v12;
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID();
  sub_24DCB50A4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24DCB53C4();
  if (v19)
  {
    v13 = 1;
  }

  else
  {
    sub_24DCB5064();
    sub_24DC6E294();
    v14 = swift_allocError();
    *v15 = 0;
    *v11 = v14;
    swift_storeEnumTagMultiPayload();
    sub_24DC65144(v11, MEMORY[0x277D84F90], 0, 0, a3);
    v13 = 0;
  }

  v16 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext.ReturnAndResumeProducers();
  return (*(*(v16 - 8) + 56))(a3, v13, 1, v16);
}

uint64_t sub_24DC64F78(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24DC6E6D8(v3);
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
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

size_t sub_24DC65000@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24DC6E6EC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A8, &qword_24DCBA490) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_24DC6F798(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24DC65144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v10 = sub_24DCB5904();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for _BroadcastSequenceStateMachine.OnNext.ReturnAndResumeProducers();
  v12 = a5 + *(result + 28);
  *v12 = a2;
  *(v12 + 8) = a3;
  *(v12 + 16) = a4 & 1;
  return result;
}

uint64_t sub_24DC65220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v4 = *(a2 + 16);
  v5 = sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v28 = v5;
  v6 = sub_24DCB5104();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = sub_24DCB5414();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions();
  sub_24DC655E0(v18, a1, v19);
  (*(v12 + 16))(v16, v18, v11);
  if ((*(v7 + 48))(v16, 1, v6) == 1)
  {
    v20 = *(v12 + 8);
    v20(v18, v11);
    v20(v16, v11);
    sub_24DCB5904();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v29, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    (*(v7 + 32))(v10, v16, v6);
    v28 = sub_24DCB5904();
    v23 = swift_getTupleTypeMetadata2();
    v24 = *(v23 + 48);
    v25 = v29;
    (*(v7 + 16))(v29, v10, v6);
    sub_24DCB5114();
    sub_24DC46150();
    v26 = swift_allocError();
    sub_24DCB4CA4();
    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v18, v11);
    *(v25 + v24) = v26;
    swift_storeEnumTagMultiPayload();
    return (*(*(v23 - 8) + 56))(v25, 0, 1, v23);
  }
}

uint64_t sub_24DC655E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v6 = *(a3 + 16);
  v7 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v21 = *v4;
  v19 = v6;
  v20 = a2;
  sub_24DCB50A4();

  swift_getWitnessTable();
  sub_24DCB53A4();

  v12 = v22;
  if (v22)
  {
    sub_24DCB5414();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    v13 = sub_24DCB5104();
    (*(*(v13 - 8) + 56))(v18, 1, 1, v13);
  }

  else
  {
    sub_24DCB50C4();
    v14 = *(v7 + 32);
    sub_24DCB5414();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    sub_24DCB5104();
    v15 = sub_24DCB5414();
    (*(*(v15 - 8) + 32))(v18, &v11[v14], v15);
    sub_24DCB5064();
    (*(v8 + 8))(v11, v7);
  }

  return v12 ^ 1u;
}

uint64_t sub_24DC6586C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 16);
  v9 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext.ReturnAndResumeProducers();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v38 - v16;
  sub_24DC64D70(a2, a3, &v38 - v16);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    v18 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions();
    v19 = sub_24DC65CCC(a1, a2, v18);
    sub_24DCB5414();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    v20 = sub_24DCB5104();
    sub_24DCB5904();
    type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations();
    sub_24DCB5414();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v22 = TupleTypeMetadata3;
    if (v19)
    {
      v23 = *(*(TupleTypeMetadata3 - 8) + 56);
      v24 = a4;
      v25 = 1;
    }

    else
    {
      v35 = *(TupleTypeMetadata3 + 48);
      v36 = a4 + *(TupleTypeMetadata3 + 64);
      (*(*(v20 - 8) + 16))(a4, a1, v20);
      sub_24DCB5114();
      sub_24DC46150();
      v37 = swift_allocError();
      sub_24DCB4CA4();
      *(a4 + v35) = v37;
      swift_storeEnumTagMultiPayload();
      *v36 = 0;
      *(v36 + 8) = 0;
      *(v36 + 16) = 0;
      v23 = *(*(v22 - 8) + 56);
      v24 = a4;
      v25 = 0;
    }

    return v23(v24, v25, 1, v22);
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_24DCB5414();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    v26 = sub_24DCB5104();
    v27 = sub_24DCB5904();
    type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations();
    sub_24DCB5414();
    v28 = swift_getTupleTypeMetadata3();
    v29 = *(v28 + 48);
    v30 = a4 + *(v28 + 64);
    (*(*(v26 - 8) + 16))(a4, a1, v26);
    (*(*(v27 - 8) + 32))(a4 + v29, v13, v27);
    v31 = &v13[*(v9 + 28)];
    v32 = *v31;
    v33 = *(v31 + 1);
    LOBYTE(v31) = v31[16];
    *v30 = v32;
    *(v30 + 8) = v33;
    *(v30 + 16) = v31;
    return (*(*(v28 - 8) + 56))(a4, 0, 1, v28);
  }
}

uint64_t sub_24DC65CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v6 = *(a3 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v7 = sub_24DCB5104();
  v8 = sub_24DCB5414();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v23 = *v4;
  v21 = v6;
  v22 = a2;
  v13 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber();
  sub_24DCB50A4();

  swift_getWitnessTable();
  sub_24DCB53A4();

  v14 = v25;
  if ((v25 & 1) == 0)
  {
    v15 = v24;
    v16 = *(v7 - 8);
    (*(v16 + 16))(v12, v20, v7);
    (*(v16 + 56))(v12, 0, 1, v7);
    sub_24DCB4FE4();
    v17 = *v4;
    sub_24DC6E700(v15, v17);
    (*(v9 + 40))(v17 + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80)) + *(*(v13 - 8) + 72) * v15 + *(v13 + 32), v12, v8);
  }

  return v14 ^ 1u;
}

uint64_t sub_24DC65F84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions();

  return sub_24DC65FB4(v2);
}

uint64_t sub_24DC65FB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v3 = sub_24DCB5104();
  v4 = sub_24DCB5414();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  v13 = *(v1 + 8);
  if (__OFADD__(v13, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = v13 + 1;
    (*(*(v3 - 8) + 56))(v7, 1, 1, v3);
    sub_24DC6DA54(v13, 0, v7, v12);
    sub_24DCB50A4();
    sub_24DCB5054();
    return v13;
  }

  return result;
}

uint64_t sub_24DC66140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v4 = sub_24DCB5904();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v21 - v6);
  sub_24DCB5104();
  v8 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (v21 - v14);
  v16 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions();
  sub_24DC641FC(v16, v15);
  (*(v9 + 16))(v13, v15, v8);
  sub_24DC6E294();
  v17 = swift_allocError();
  *v18 = 0;
  *v7 = v17;
  swift_storeEnumTagMultiPayload();
  sub_24DC63BD8(v13, v7, a2);
  v21[1] = sub_24DC663FC(v16);
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID();
  sub_24DCB50A4();
  swift_getWitnessTable();
  sub_24DCB5044();
  (*(v9 + 8))(v15, v8);
  v19 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations();
  return (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
}

uint64_t sub_24DC663FC(uint64_t a1)
{
  v8[5] = *v1;
  v8[2] = *(a1 + 16);
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber();
  v2 = sub_24DCB50A4();
  v3 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID();

  WitnessTable = swift_getWitnessTable();
  v6 = sub_24DC69634(sub_24DC72794, v8, v2, v3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);

  sub_24DCB5094();
  return v6;
}

uint64_t sub_24DC664F4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v30 = a3;
  v3 = *(a2 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v28 = sub_24DCB5904();
  v4 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v6 = (&v27 - v5);
  v7 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  sub_24DCB5104();
  v12 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = (&v27 - v18);
  v20 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions();
  sub_24DC641FC(v20, v19);
  (*(v13 + 16))(v17, v19, v12);
  sub_24DC6E294();
  v21 = swift_allocError();
  *v22 = v29 & 1;
  *v6 = v21;
  swift_storeEnumTagMultiPayload();
  sub_24DC63BD8(v17, v6, v11);
  (*(v13 + 8))(v19, v12);
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = v30;
  v25 = v30 + *(TupleTypeMetadata2 + 48);
  (*(v8 + 32))(v30, v11, v7);
  *v25 = MEMORY[0x277D84F90];
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  return (*(*(TupleTypeMetadata2 - 8) + 56))(v24, 0, 1, TupleTypeMetadata2);
}

uint64_t sub_24DC66828()
{
  v1 = *v0;
  v2 = v0[1];
}

uint64_t sub_24DC66850(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_24DC66898(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_24DC668CC(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_24DC66948()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
}

uint64_t sub_24DC66970(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_24DC669D0(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_24DC66A1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24DC66AB0();
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber();
  v5 = sub_24DCB4FF4();
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID();
  result = sub_24DCB4FF4();
  *a2 = v4;
  a2[1] = 0;
  v7 = MEMORY[0x277D84F90];
  a2[2] = a1;
  a2[3] = v7;
  a2[4] = v7;
  a2[5] = 0;
  a2[6] = v5;
  a2[7] = 0;
  a2[8] = result;
  return result;
}

uint64_t sub_24DC66AB0()
{
  v0 = type metadata accessor for _BroadcastSequenceStateMachine.Elements._IdentifiableElement();
  v5 = sub_24DCB4FF4();
  v1 = sub_24DCB50A4();
  WitnessTable = swift_getWitnessTable();
  v3 = sub_24DC6F10C(&v5, v0, v1, WitnessTable);

  return v3;
}

uint64_t sub_24DC66B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_24DC66AB0();
  *a5 = result;
  a5[1] = 0;
  v11 = MEMORY[0x277D84F90];
  a5[2] = a4;
  a5[3] = v11;
  a5[4] = v11;
  a5[5] = 0;
  a5[6] = a1;
  a5[7] = a2;
  a5[8] = a3;
  return result;
}

uint64_t sub_24DC66BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v76 = a3;
  v6 = *(a2 + 16);
  v7 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations();
  v75 = *(v7 - 8);
  v8 = *(v75 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v70 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v65 - v11;
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB5104();
  type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany();
  v12 = sub_24DCB5414();
  v71 = *(v12 - 8);
  v13 = *(v71 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v65 - v14);
  v16 = sub_24DCB5414();
  v72 = *(v16 - 8);
  v73 = v16;
  v17 = *(v72 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v65 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v68 = &v65 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v67 = &v65 - v27;
  v69 = *(v6 - 8);
  v28 = *(v69 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for _BroadcastSequenceStateMachine.Elements();
  v74 = a1;
  sub_24DC673C0(a1, v31);
  v32 = *v4;
  if (sub_24DC6756C(*v4) < v4[2] || (v34 = sub_24DC6D47C(v32, v33, v6, MEMORY[0x277CFB940], MEMORY[0x277D83CD0]), (v36 & 1) != 0))
  {
    v37 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions();
    v38 = sub_24DC67854(v37, v15);
    MEMORY[0x28223BE20](v38);
    v39 = v74;
    *(&v65 - 2) = v6;
    *(&v65 - 1) = v39;
    sub_24DC67F68(sub_24DC6F58C, (&v65 - 4), MEMORY[0x277D84A98], v7, v40, v23);
    (*(v71 + 8))(v15, v12);
    v41 = v72;
    v42 = v23;
    v43 = v73;
    (*(v72 + 32))(v20, v42, v73);
    v44 = v75;
    if ((*(v75 + 48))(v20, 1, v7) == 1)
    {
      (*(v41 + 8))(v20, v43);
LABEL_5:
      type metadata accessor for _BroadcastSequenceStateMachine.OnYield();
      return swift_storeEnumTagMultiPayload();
    }

    v45 = *(v44 + 32);
    v46 = v70;
    v45(v70, v20, v7);
LABEL_7:
    v45(v76, v46, v7);
    type metadata accessor for _BroadcastSequenceStateMachine.OnYield();
    return swift_storeEnumTagMultiPayload();
  }

  v48 = v4[6];
  v70 = (v4 + 6);
  v49 = sub_24DC67624(v34, v48, v35, v6);
  v65 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID();
  v50 = sub_24DCB5034();
  if (v50)
  {
    v51 = v50;
    type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber();
    if (sub_24DCB5034() != v51)
    {
      sub_24DC67794(v31, v30);
      (*(v69 + 8))(v30, v6);
      v55 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions();
      sub_24DC68254(v49, v55);
      v77 = v49;
      sub_24DCB50A4();
      swift_getWitnessTable();
      sub_24DCB5044();
      goto LABEL_5;
    }

    v52 = v4[5];
    v53 = v52 + 1;
    if (!__OFADD__(v52, 1))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  result = sub_24DC6D664(v48, v54, v6, type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber, MEMORY[0x277D83940]);
  if ((result & 1) == 0)
  {
    sub_24DC67794(v31, v30);
    (*(v69 + 8))(v30, v6);
    v56 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions();
    v57 = sub_24DC67854(v56, v15);
    MEMORY[0x28223BE20](v57);
    v58 = v74;
    *(&v65 - 2) = v6;
    *(&v65 - 1) = v58;
    v59 = v67;
    sub_24DC67F68(sub_24DC72748, (&v65 - 4), MEMORY[0x277D84A98], v7, v60, v67);
    (*(v71 + 8))(v15, v12);
    v62 = v72;
    v61 = v73;
    v63 = v68;
    (*(v72 + 32))(v68, v59, v73);
    v64 = v75;
    if ((*(v75 + 48))(v63, 1, v7) == 1)
    {
      (*(v62 + 8))(v63, v61);
      goto LABEL_5;
    }

    v45 = *(v64 + 32);
    v46 = v66;
    v45(v66, v63, v7);
    goto LABEL_7;
  }

  v52 = v4[5];
  v53 = v52 + 1;
  if (!__OFADD__(v52, 1))
  {
LABEL_16:
    v4[5] = v53;
    *v76 = v52;
    type metadata accessor for _BroadcastSequenceStateMachine.OnYield();

    return swift_storeEnumTagMultiPayload();
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC673C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _BroadcastSequenceStateMachine.Elements._IdentifiableElement();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  result = (*(v5 + 16))(v8, a1, v4);
  v15 = *(v2 + 8);
  if (__OFADD__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 8) = v15 + 1;
    (*(v5 + 32))(v13, v8, v4);
    *&v13[*(v9 + 28)] = v15;
    sub_24DCB4C74();
    sub_24DCB4C44();
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_24DC6756C(uint64_t a1)
{
  v2 = type metadata accessor for _BroadcastSequenceStateMachine.Elements._IdentifiableElement();
  sub_24DC6EDBC(sub_24DC6EDB0, 0, a1, MEMORY[0x277CFB918], v2, MEMORY[0x277D84A98], MEMORY[0x277D83B88], MEMORY[0x277D84AC0], v4);
  return v5;
}

uint64_t sub_24DC67624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[6] = a4;
  v11[7] = a1;
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber();
  v5 = sub_24DCB50A4();

  swift_getWitnessTable();
  v11[9] = sub_24DCB5524();
  v11[2] = a4;
  v6 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_24DC69634(sub_24DC31B54, v11, v5, v6, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

  return v9;
}

uint64_t sub_24DC67794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for _BroadcastSequenceStateMachine.Elements._IdentifiableElement();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_24DCB4C74();
  sub_24DCB4C24();
  return (*(*(v3 - 8) + 32))(a2, v7, v3);
}

uint64_t sub_24DC67854@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v5 = sub_24DCB5104();
  v57 = sub_24DCB5414();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v57);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v47 - v12;
  v14 = *(v5 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v56 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v55 = &v47 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  v58 = v2;
  v22 = *v2;
  v23 = sub_24DC6DD9C();
  v59 = v5;
  if (v23 == 1)
  {
    v57 = v14;
    v63 = v22;
    MEMORY[0x28223BE20](1);
    *(&v47 - 2) = v4;
    v27 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber();
    sub_24DCB50A4();

    swift_getWitnessTable();
    sub_24DCB53A4();

    if ((v61 & 1) == 0)
    {
      v28 = v60;
      v29 = v58;
      sub_24DCB4FE4();
      v30 = *v29;
      sub_24DC6E700(v28, v30);
      v31 = v30 + ((*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80)) + *(*(v27 - 8) + 72) * v28;
      sub_24DC6DB6C(v27, v13);
      v32 = v57;
      v33 = v59;
      result = (*(v57 + 48))(v13, 1, v59);
      if (result != 1)
      {
        v34 = *(v32 + 32);
        v34(v21, v13, v33);
        v34(a2, v21, v33);
        v35 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany();
        swift_storeEnumTagMultiPayload();
        return (*(*(v35 - 8) + 56))(a2, 0, 1, v35);
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (v23)
  {
    v48 = a2;
    v63 = sub_24DCB4C94();
    v54 = sub_24DCB50A4();
    sub_24DCB4FC4();
    v62 = v22;
    v47 = v4;
    v36 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber();
    v37 = sub_24DCB50A4();
    swift_getWitnessTable();
    result = sub_24DCB5354();
    v38 = v60;
    v39 = v61;
    if (v60 == v61)
    {
LABEL_10:
      v40 = v48;
      *v48 = v63;
      v41 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany();
      swift_storeEnumTagMultiPayload();
      return (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    }

    if (v61 < v60)
    {
      __break(1u);
    }

    else if (v60 < v61)
    {
      v51 = (v14 + 16);
      v52 = (v14 + 32);
      v49 = (v6 + 8);
      v50 = (v14 + 8);
      v53 = v37;
      do
      {
        v43 = v58;
        sub_24DCB4FE4();
        v44 = *v43;
        sub_24DC6E700(v38, v44);
        v45 = v44 + ((*(*(v36 - 8) + 80) + 32) & ~*(*(v36 - 8) + 80)) + *(*(v36 - 8) + 72) * v38;
        sub_24DC6DB6C(v36, v10);
        v46 = v59;
        if ((*(v14 + 48))(v10, 1, v59) == 1)
        {
          (*v49)(v10, v57);
        }

        else
        {
          v42 = v55;
          (*v52)(v55, v10, v46);
          (*v51)(v56, v42, v46);
          sub_24DCB5054();
          (*v50)(v42, v46);
        }

        ++v38;
      }

      while (v39 != v38);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_21;
  }

  v24 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany();
  v25 = *(*(v24 - 8) + 56);

  return v25(a2, 1, 1, v24);
}

uint64_t sub_24DC67F68@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t sub_24DC68210()
{
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber();

  return sub_24DCB5034();
}

uint64_t sub_24DC68254(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber();
  sub_24DCB50A4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_24DCB53E4();
}

uint64_t sub_24DC68308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v8 = sub_24DCB5904();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  sub_24DCB5104();
  v12 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  (*(v16 + 16))(&v19 - v14, a1);
  v17 = *(a3 - 8);
  (*(v17 + 16))(v11, a2, a3);
  (*(v17 + 56))(v11, 0, 1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_24DC63BD8(v15, v11, a4);
}

uint64_t sub_24DC68510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a1;
  v67 = a3;
  v4 = *(a2 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v63 = sub_24DCB5904();
  v5 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v64 = (&v60 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A8, &qword_24DCBA490);
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v72 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F090, &qword_24DCBA478);
  v73 = *(v12 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - v14;
  v16 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext.ReturnAndResumeProducers();
  v17 = *(v16 - 8);
  v68 = v16;
  v69 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v62 = &v60 - v19;
  v20 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext();
  v21 = sub_24DCB5414();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v60 - v27;
  v75 = v4;
  v76 = v3;
  v29 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions();
  sub_24DC69398(v70, sub_24DC6F720, v74, v29, v20, v28);
  v65 = v22;
  v66 = v21;
  (*(v22 + 16))(v26, v28, v21);
  v30 = (*(*(v20 - 8) + 48))(v26, 1, v20);
  if (v30 == 1)
  {
    v31 = v68;
    v32 = v69;
    v77 = *(v3 + 64);
    MEMORY[0x28223BE20](v30);
    v33 = v70;
    *(&v60 - 2) = v4;
    *(&v60 - 1) = v33;
    type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID();
    sub_24DCB50A4();

    swift_getWitnessTable();
    sub_24DCB53A4();

    if (v79)
    {
      v34 = v64;
      (*(*(v4 - 8) + 56))(v64, 1, 1, v4);
    }

    else
    {
      sub_24DCB5064();
      sub_24DC6E294();
      v38 = swift_allocError();
      *v39 = 0;
      v34 = v64;
      *v64 = v38;
    }

    v40 = v67;
    swift_storeEnumTagMultiPayload();
    (*(v65 + 8))(v28, v66);
    sub_24DC65144(v34, MEMORY[0x277D84F90], 0, 0, v40);
    return (*(v32 + 56))(v40, 0, 1, v31);
  }

  else
  {
    v36 = v68;
    v35 = v69;
    if ((*(v69 + 48))(v26, 1, v68) == 1)
    {
      (*(v65 + 8))(v28, v66);
      return (*(v35 + 56))(v67, 1, 1, v36);
    }

    else
    {
      (*(v35 + 32))(v62, v26, v36);
      v41 = v3;
      v42 = *(v3 + 24);
      v43 = *(v42 + 16);
      v44 = MEMORY[0x277D84F90];
      if (v43)
      {
        v64 = v28;
        v70 = v3;
        v78 = MEMORY[0x277D84F90];
        sub_24DC6EEC0(0, v43, 0);
        v45 = v78;
        v46 = *(v61 + 80);
        v63 = v42;
        v47 = v42 + ((v46 + 32) & ~v46);
        v48 = *(v61 + 72);
        v49 = (v73 + 32);
        do
        {
          v50 = v71;
          sub_24DC6F728(v47, v71);
          v51 = v72;
          sub_24DC6F798(v50, v72);
          v52 = *v49;
          (*v49)(v15, v51, v12);
          v78 = v45;
          v54 = *(v45 + 16);
          v53 = *(v45 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_24DC6EEC0(v53 > 1, v54 + 1, 1);
            v45 = v78;
          }

          *(v45 + 16) = v54 + 1;
          v52((v45 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v54), v15, v12);
          v47 += v48;
          --v43;
        }

        while (v43);
        (*(v65 + 8))(v64, v66);
        v55 = v67;
        v36 = v68;
        v41 = v70;
        v44 = MEMORY[0x277D84F90];
      }

      else
      {
        (*(v65 + 8))(v28, v66);
        v45 = MEMORY[0x277D84F90];
        v55 = v67;
      }

      v56 = v62;
      v57 = &v62[*(v36 + 28)];
      v58 = *v57;

      sub_24DC57738(*(v57 + 1), v57[16]);
      *v57 = v45;
      *(v57 + 1) = 0;
      v57[16] = 0;

      *(v41 + 24) = v44;
      v59 = v69;
      (*(v69 + 16))(v55, v56, v36);
      (*(v59 + 56))(v55, 0, 1, v36);
      return (*(v59 + 8))(v56, v36);
    }
  }
}

uint64_t sub_24DC68D04(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v7 = sub_24DCB5904();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v29 - v10);
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _BroadcastSequenceStateMachine.Elements.ElementLookup();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v29 - v18;
  v20 = *a2;
  v21 = type metadata accessor for _BroadcastSequenceStateMachine.Elements();
  sub_24DC69024(v20, v21, v19);
  v22 = (*(v12 + 48))(v19, 2, a4);
  if (v22)
  {
    v23 = v22;
    if (v22 == 1)
    {
      v24 = 0;
LABEL_8:
      v28 = type metadata accessor for _BroadcastSequenceStateMachine.OnNext.ReturnAndResumeProducers();
      (*(*(v28 - 8) + 56))(a1, v23, 1, v28);
      return v24;
    }

    sub_24DC6E294();
    v26 = swift_allocError();
    *v27 = 0;
    *v11 = v26;
    v24 = 1;
    swift_storeEnumTagMultiPayload();
LABEL_7:
    sub_24DC65144(v11, MEMORY[0x277D84F90], 0, 0, a1);
    v23 = 0;
    goto LABEL_8;
  }

  result = (*(v12 + 32))(v15, v19, a4);
  if (!__OFADD__(*a2, 1))
  {
    ++*a2;
    (*(v12 + 16))(v11, v15, a4);
    (*(v12 + 56))(v11, 0, 1, a4);
    swift_storeEnumTagMultiPayload();
    (*(v12 + 8))(v15, a4);
    v24 = 0;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC69024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for _BroadcastSequenceStateMachine.Elements._IdentifiableElement();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = type metadata accessor for _BroadcastSequenceStateMachine.Elements.ElementLookup();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v15 = *v3;
  v14 = v3[1];
  v17 = sub_24DC6D47C(*v3, v16, v5, MEMORY[0x277CFB940], MEMORY[0x277D83CD0]);
  if (v18 & 1) != 0 || (v19 = v17, v20 = sub_24DC6D47C(v15, v18, v5, MEMORY[0x277CFB928], MEMORY[0x277D835F0]), (v21))
  {
    type metadata accessor for _BroadcastSequenceStateMachine.Elements.ID();
    v29 = v14;
    v30 = a1;
    swift_getWitnessTable();
    if (sub_24DCB4D84())
    {
      v22 = v28;
      v23 = 1;
    }

    else
    {
      v22 = v28;
      v23 = 2;
    }

    return (*(*(v5 - 8) + 56))(v22, v23, 2, v5);
  }

  else
  {
    if (v19 <= a1)
    {
      v25 = v20;
      type metadata accessor for _BroadcastSequenceStateMachine.Elements.ID();
      v29 = v25;
      v30 = a1;
      swift_getWitnessTable();
      if (sub_24DCB4D74())
      {
        (*(*(v5 - 8) + 56))(v13, 1, 2, v5);
      }

      else
      {
        result = a1 - v19;
        if (__OFSUB__(a1, v19))
        {
          __break(1u);
          return result;
        }

        sub_24DCB4C84();
        v26 = *(v5 - 8);
        (*(v26 + 32))(v13, v9, v5);
        (*(v26 + 56))(v13, 0, 2, v5);
      }
    }

    else
    {
      (*(*(v5 - 8) + 56))(v13, 2, 2, v5);
    }

    return (*(v27 + 32))(v28, v13, v10);
  }
}

uint64_t sub_24DC69398@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *, unint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v26[1] = a3;
  v27 = a2;
  v28 = a6;
  v10 = *(a4 + 16);
  v11 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v26[0] = v26 - v15;
  v16 = *(a5 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v7;
  v29 = v10;
  v30 = a5;
  v31 = a1;
  sub_24DCB50A4();

  swift_getWitnessTable();
  sub_24DCB53A4();

  if (v34)
  {
    v20 = 1;
    v21 = v28;
  }

  else
  {
    v22 = v33;
    sub_24DCB4FE4();
    v23 = *v7;
    sub_24DC6E700(v22, *v7);
    if (v27(v19, v23 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22 + 8))
    {
      v24 = v26[0];
      sub_24DCB5064();
      (*(v12 + 8))(v24, v11);
    }

    v21 = v28;
    (*(v16 + 32))(v28, v19, a5);
    v20 = 0;
  }

  return (*(v16 + 56))(v21, v20, 1, a5);
}

uint64_t sub_24DC69634(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_24DCB5374();
  if (!v26)
  {
    return sub_24DCB4FF4();
  }

  v48 = v26;
  v52 = sub_24DCB5554();
  v39 = sub_24DCB5564();
  sub_24DCB5534();
  result = sub_24DCB5364();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_24DCB53D4();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_24DCB5544();
      result = sub_24DCB5394();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}