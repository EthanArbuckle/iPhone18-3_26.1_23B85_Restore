uint64_t sub_245872728()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_2458728CC;
  }

  else
  {
    v2 = sub_245872838;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245872838()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2458728CC()
{
  v1 = *(v0 + 216);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_245872958(uint64_t a1, uint64_t a2)
{
  v3[43] = a2;
  v3[44] = v2;
  v3[42] = a1;
  v4 = sub_24590EA74();
  v3[45] = v4;
  v3[46] = *(v4 - 8);
  v3[47] = swift_task_alloc();
  v5 = sub_24590F354();
  v3[48] = v5;
  v3[49] = *(v5 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245872A9C, 0, 0);
}

uint64_t sub_245872A9C()
{
  v67 = v0;
  v1 = *(v0 + 352);
  v2 = *(v1 + 168);
  *(v0 + 432) = v2;
  if (v2)
  {
    v3 = *(v0 + 344);
    if (v3)
    {
      v4 = v2;
      sub_24590C714();

      v5 = sub_24590F344();
      v6 = sub_245910F54();

      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 424);
      v10 = *(v0 + 384);
      v9 = *(v0 + 392);
      if (v7)
      {
        v11 = *(v0 + 336);
        v64 = v4;
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v66[0] = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_2458CC378(v11, v3, v66);
        _os_log_impl(&dword_245767000, v5, v6, "This is the auth code proofing flow with passcode: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x245D77B40](v13, -1, -1);
        v14 = v12;
        v4 = v64;
        MEMORY[0x245D77B40](v14, -1, -1);
      }

      (*(v9 + 8))(v8, v10);
      v15 = *(v0 + 352);
      v16 = *(v15 + 112);
      v17 = sub_2459109C4();
      *(v0 + 440) = v17;
      v18 = *(v15 + 144);
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 328;
      *(v0 + 88) = sub_2458733C4;
      v19 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ACE8);
      *(v0 + 208) = MEMORY[0x277D85DD0];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_2458935E8;
      *(v0 + 232) = &block_descriptor_357;
      *(v0 + 240) = v19;
      [v16 proofIdentityWithConfiguration:v4 authCode:v17 proofingOptions:v18 completionHandler:v0 + 208];
      v20 = v0 + 80;
      goto LABEL_24;
    }

    v34 = *(v1 + 120);
    v35 = v2;

    sub_2458ADF14();
    v37 = v36;

    v38 = swift_task_alloc();
    *(v38 + 16) = v37;
    *(v38 + 24) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE297A0);
    sub_245911044();

    v39 = *(v0 + 304);
    *(v0 + 456) = v39;
    if (v39)
    {
      v65 = v35;
      v40 = *(v0 + 352);
      v41 = *(v40 + 112);
      v42 = *(v40 + 144);
      v43 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessVideoUploadsManager;
      v44 = *(v40 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessVideoUploadsManager);
      if (v44)
      {
        v63 = *(v40 + 112);
        v45 = *(v44 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_queue);

        v46 = v45;
        sub_245911044();

        v44 = *(v0 + 496);
        v47 = *(v40 + v43);
        if (v47)
        {
          v48 = *(v47 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_queue);

          v49 = v48;
          sub_245911044();

          v50 = *(v0 + 320);
        }

        else
        {
          v50 = 0;
        }

        v41 = v63;
      }

      else
      {
        v50 = 0;
      }

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 312;
      *(v0 + 24) = sub_245873674;
      v62 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ACE8);
      *(v0 + 144) = MEMORY[0x277D85DD0];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_2458935E8;
      *(v0 + 168) = &block_descriptor_352;
      *(v0 + 176) = v62;
      [v41 proofIdentityWithConfiguration:v65 documents:v39 proofingOptions:v42 shouldScheduleUploads:v44 totalUploadAssetsFileSizeInBytes:v50 completionHandler:v0 + 144];
      v20 = v0 + 16;
LABEL_24:

      return MEMORY[0x282200938](v20);
    }

    sub_24590C714();
    v53 = sub_24590F344();
    v54 = sub_245910F54();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_245767000, v53, v54, "proofIdentity skipped due to missing scanned images", v55, 2u);
      MEMORY[0x245D77B40](v55, -1, -1);
    }

    v56 = *(v0 + 416);
    v58 = *(v0 + 384);
    v57 = *(v0 + 392);
    v60 = *(v0 + 368);
    v59 = *(v0 + 376);
    v61 = *(v0 + 360);

    (*(v57 + 8))(v56, v58);
    (*(v60 + 104))(v59, *MEMORY[0x277CFFA40], v61);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v21 = swift_allocError();
    sub_24590EA94();
    swift_willThrow();
  }

  else
  {
    (*(*(v0 + 368) + 104))(*(v0 + 376), *MEMORY[0x277CFFBE8], *(v0 + 360));
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v21 = swift_allocError();
    sub_24590EA94();
    swift_willThrow();
  }

  sub_24590C714();
  v22 = v21;
  v23 = sub_24590F344();
  v24 = sub_245910F64();

  v25 = os_log_type_enabled(v23, v24);
  v27 = *(v0 + 392);
  v26 = *(v0 + 400);
  v28 = *(v0 + 384);
  if (v25)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v66[0] = v30;
    *v29 = 136446210;
    swift_getErrorValue();
    v31 = sub_2459117D4();
    v33 = sub_2458CC378(v31, v32, v66);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_245767000, v23, v24, "Error! Proofing not complete %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x245D77B40](v30, -1, -1);
    MEMORY[0x245D77B40](v29, -1, -1);

    (*(v27 + 8))(v26, v28);
  }

  else
  {

    (*(v27 + 8))(v26, v28);
  }

  swift_willThrow();

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_2458733C4()
{
  v1 = *(*v0 + 112);
  *(*v0 + 448) = v1;
  if (v1)
  {
    v2 = sub_245873B00;
  }

  else
  {
    v2 = sub_2458734D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2458734D4()
{
  v1 = *(v0 + 328);

  v2 = sub_24590DA44();
  if (v2)
  {
    v3 = v2;
    sub_24590C714();
    v4 = sub_24590F344();
    v5 = sub_245910F54();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_245767000, v4, v5, "Received new proofing views", v6, 2u);
      MEMORY[0x245D77B40](v6, -1, -1);
    }

    v7 = *(v0 + 432);
    v8 = *(v0 + 408);
    v9 = *(v0 + 384);
    v10 = *(v0 + 392);
    v11 = *(v0 + 352);

    (*(v10 + 8))(v8, v9);
    *(*(v11 + 152) + 24) = v3;

    sub_2458AD408();
  }

  else
  {
    v12 = *(v0 + 432);

    v1 = v12;
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_245873674()
{
  v1 = *(*v0 + 48);
  *(*v0 + 464) = v1;
  if (v1)
  {
    v2 = sub_245873D10;
  }

  else
  {
    v2 = sub_245873784;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245873784()
{
  v1 = v0[39];
  v0[59] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_24587382C;

  return sub_245870A70(v2);
}

uint64_t sub_24587382C()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = sub_245873F20;
  }

  else
  {
    v3 = sub_245873960;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_245873960()
{
  v1 = *(v0 + 472);
  v2 = sub_24590DA44();
  if (v2)
  {
    v3 = v2;
    sub_24590C714();
    v4 = sub_24590F344();
    v5 = sub_245910F54();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_245767000, v4, v5, "Received new proofing views", v6, 2u);
      MEMORY[0x245D77B40](v6, -1, -1);
    }

    v7 = *(v0 + 432);
    v8 = *(v0 + 408);
    v9 = *(v0 + 384);
    v10 = *(v0 + 392);
    v11 = *(v0 + 352);

    (*(v10 + 8))(v8, v9);
    *(*(v11 + 152) + 24) = v3;

    sub_2458AD408();
  }

  else
  {
    v12 = *(v0 + 432);

    v1 = v12;
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_245873B00()
{
  v21 = v0;
  v1 = v0[55];
  v2 = v0[54];
  swift_willThrow();

  v3 = v0[56];
  sub_24590C714();
  v4 = v3;
  v5 = sub_24590F344();
  v6 = sub_245910F64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[49];
    v19 = v0[50];
    v8 = v0[48];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = sub_2459117D4();
    v13 = sub_2458CC378(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_245767000, v5, v6, "Error! Proofing not complete %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D77B40](v10, -1, -1);
    MEMORY[0x245D77B40](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = v0[49];
    v14 = v0[50];
    v16 = v0[48];

    (*(v15 + 8))(v14, v16);
  }

  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_245873D10()
{
  v21 = v0;
  v1 = v0[57];
  v2 = v0[54];
  swift_willThrow();

  v3 = v0[58];
  sub_24590C714();
  v4 = v3;
  v5 = sub_24590F344();
  v6 = sub_245910F64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[49];
    v19 = v0[50];
    v8 = v0[48];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = sub_2459117D4();
    v13 = sub_2458CC378(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_245767000, v5, v6, "Error! Proofing not complete %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D77B40](v10, -1, -1);
    MEMORY[0x245D77B40](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = v0[49];
    v14 = v0[50];
    v16 = v0[48];

    (*(v15 + 8))(v14, v16);
  }

  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_245873F20()
{
  v21 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 432);

  v3 = *(v0 + 488);
  sub_24590C714();
  v4 = v3;
  v5 = sub_24590F344();
  v6 = sub_245910F64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 392);
    v19 = *(v0 + 400);
    v8 = *(v0 + 384);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = sub_2459117D4();
    v13 = sub_2458CC378(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_245767000, v5, v6, "Error! Proofing not complete %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D77B40](v10, -1, -1);
    MEMORY[0x245D77B40](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v0 + 392);
    v14 = *(v0 + 400);
    v16 = *(v0 + 384);

    (*(v15 + 8))(v14, v16);
  }

  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

void sub_245874134(unint64_t a1)
{
  if (a1)
  {
    v2 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_cardArtData;
    swift_beginAccess();
    if (!*(*(v16 + v2) + 16))
    {
      if (a1 >> 62)
      {
        goto LABEL_22;
      }

      for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_245911424())
      {
        for (j = 0; ; ++j)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x245D76B30](j, a1);
          }

          else
          {
            if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v5 = *(a1 + 8 * j + 32);
          }

          v6 = v5;
          v7 = j + 1;
          if (__OFADD__(j, 1))
          {
            break;
          }

          v8 = sub_24590D574();
          if (v8)
          {
            v17 = sub_24586AA40(v8);
            v10 = v9;
            v12 = v11;
            v14 = v13;

            sub_24578FB6C(v12, v14);
            sub_245771C44(v12, v14);
            if (v10)
            {

              sub_24578FB6C(v12, v14);

              if (v14 >> 60 != 15)
              {
                swift_beginAccess();
                sub_24578FB6C(v12, v14);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v18 = *(v16 + v2);
                sub_2458B7974(v12, v14, v17, v10, isUniquelyReferenced_nonNull_native);

                *(v16 + v2) = v18;
                swift_endAccess();

                sub_245771C44(v12, v14);
                sub_245771C44(v12, v14);

                return;
              }

              swift_bridgeObjectRelease_n();
            }

            else
            {
            }

            sub_245771C44(v12, v14);
          }

          if (v7 == i)
          {
            return;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        ;
      }
    }
  }
}

uint64_t sub_245874374()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v5 = sub_24590F354();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = *(v1 + 168);
  if (v12)
  {
    v13 = v12;
    sub_24590C714();
    v14 = v13;
    v15 = sub_24590F344();
    v16 = sub_245910F54();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v32 = v5;
      v18 = v17;
      v19 = swift_slowAlloc();
      v33 = v1;
      v34 = v19;
      v20 = v19;
      *v18 = 136315138;
      sub_24590DDB4();
      v21 = sub_24590CDA4();
      v23 = sub_2458CC378(v21, v22, &v34);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_245767000, v15, v16, "clearDataAfterTerminalProofingState from UI, documentType: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      v24 = v20;
      v1 = v33;
      MEMORY[0x245D77B40](v24, -1, -1);
      MEMORY[0x245D77B40](v18, -1, -1);

      (*(v6 + 8))(v11, v32);
    }

    else
    {

      (*(v6 + 8))(v11, v5);
    }

    v29 = sub_245910D64();
    (*(*(v29 - 8) + 56))(v4, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v1;
    v30[5] = v14;

    sub_2458B90EC(0, 0, v4, &unk_24591C020, v30);
  }

  else
  {
    sub_24590C714();
    v25 = sub_24590F344();
    v26 = sub_245910F54();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_245767000, v25, v26, "the proofing configuration is empty, unable to call proofing completion", v27, 2u);
      MEMORY[0x245D77B40](v27, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_2458746E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = sub_24590F354();
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2458747B4, 0, 0);
}

uint64_t sub_2458747B4()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = *(v1 + 112);
  v4 = *(v1 + 144);
  v0[2] = v0;
  v0[3] = sub_2458748E0;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FF0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579D0B4;
  v0[13] = &block_descriptor_348;
  v0[14] = v5;
  [v3 clearDataAfterTerminalProofingStateWithConfiguration:v2 proofingOptions:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2458748E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_245874B00;
  }

  else
  {
    v2 = sub_2458749F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2458749F0()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "Proofing data cleared successfully after proofing completion", v7, 2u);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  (*(v6 + 8))(v4, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_245874B00()
{
  v20 = v0;
  v1 = *(v0 + 224);
  swift_willThrow();
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 224);
    v6 = *(v0 + 200);
    v18 = *(v0 + 208);
    v7 = *(v0 + 192);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_2459117D4();
    v12 = sub_2458CC378(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_245767000, v3, v4, "received an error while clearing data after proofing completion %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    v15 = *(v0 + 192);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_245874CE8(uint64_t a1)
{
  v2[51] = a1;
  v2[52] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  v2[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AD00);
  v2[54] = swift_task_alloc();
  v3 = sub_24590E6E4();
  v2[55] = v3;
  v2[56] = *(v3 - 8);
  v2[57] = swift_task_alloc();
  v4 = sub_24590EA74();
  v2[58] = v4;
  v2[59] = *(v4 - 8);
  v2[60] = swift_task_alloc();
  v5 = sub_24590F354();
  v2[61] = v5;
  v2[62] = *(v5 - 8);
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245874F3C, 0, 0);
}

uint64_t sub_245874F3C()
{
  v50 = v0;
  v1 = v0[51];
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v49 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2458CC378(0xD00000000000001DLL, 0x800000024592C120, &v49);
    *(v5 + 12) = 2080;
    sub_24590DE74();
    if (v7)
    {
      v8 = sub_245910A84();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    v15 = v0[72];
    v16 = v0[61];
    v17 = v0[62];
    v18 = sub_2458CC378(v8, v10, &v49);

    *(v5 + 14) = v18;
    _os_log_impl(&dword_245767000, v3, v4, "%s enter, configState = %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D77B40](v6, -1, -1);
    MEMORY[0x245D77B40](v5, -1, -1);

    v14 = *(v17 + 8);
    v14(v15, v16);
  }

  else
  {
    v11 = v0[72];
    v12 = v0[61];
    v13 = v0[62];

    v14 = *(v13 + 8);
    v14(v11, v12);
  }

  v0[73] = v14;
  v19 = v0[51];
  v20 = v0[52];

  sub_2458AD408();

  sub_24578AD00(0, 0);

  sub_24590C954();
  sub_24590C944();
  __swift_project_boxed_opaque_existential_1(v0 + 34, v0[37]);
  sub_24590D6E4();
  __swift_destroy_boxed_opaque_existential_1((v0 + 34));
  v21 = *(v20 + 168);
  *(v20 + 168) = v19;
  v22 = v19;

  sub_24590C714();
  v23 = v22;
  v24 = sub_24590F344();
  v25 = sub_245910F54();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[71];
  v28 = v0[61];
  if (v26)
  {
    v29 = swift_slowAlloc();
    v48 = v14;
    v49 = swift_slowAlloc();
    v30 = v49;
    *v29 = 136315138;
    sub_24590DDB4();
    v31 = sub_24590CDA4();
    v33 = sub_2458CC378(v31, v32, &v49);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_245767000, v24, v25, "prepareForProofingDisplay from UI documentType: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x245D77B40](v30, -1, -1);
    MEMORY[0x245D77B40](v29, -1, -1);

    v48(v27, v28);
  }

  else
  {

    v14(v27, v28);
  }

  v34 = sub_24590DE74();
  if (v35)
  {
    v36 = sub_245910A84();
    v38 = v37;

    v34 = v36;
  }

  else
  {
    v38 = 0;
  }

  v39 = v0[52];
  *(v39 + 280) = v34;
  *(v39 + 288) = v38;

  v40 = sub_24590DE84();
  if (v41)
  {
    v42 = sub_245910A84();
    v44 = v43;

    v40 = v42;
  }

  else
  {
    v44 = 0;
  }

  v45 = v0[52];
  *(v45 + 296) = v40;
  *(v45 + 304) = v44;

  v46 = swift_task_alloc();
  v0[74] = v46;
  *v46 = v0;
  v46[1] = sub_2458753BC;

  return sub_245881A1C();
}

uint64_t sub_2458753BC()
{

  return MEMORY[0x2822009F8](sub_2458754B8, 0, 0);
}

uint64_t sub_2458754B8()
{
  v1 = *(**(v0[52] + 160) + 120);

  v3 = v1(v2);

  if (v3 == 2)
  {
    (*(v0[59] + 104))(v0[60], *MEMORY[0x277CFFA68], v0[58]);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
    sub_24587755C();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[51];
    v7 = *(v0[52] + 112);
    v0[75] = v7;
    v0[2] = v0;
    v0[7] = v0 + 79;
    v0[3] = sub_245875830;
    v8 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29388);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_2457B99C0;
    v0[21] = &block_descriptor_407;
    v0[22] = v8;
    [v7 isWatchPairedWithConfiguration:v6 completionHandler:v0 + 18];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_245875830()
{

  return MEMORY[0x2822009F8](sub_245875910, 0, 0);
}

uint64_t sub_245875910()
{
  v38 = v0;
  v1 = *(v0 + 632);
  sub_24590C714();
  v2 = sub_24590F344();
  v3 = sub_245910F44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_245767000, v2, v3, "prepareForProofingDisplay: isWatchPaired = %{BOOL}d", v4, 8u);
    MEMORY[0x245D77B40](v4, -1, -1);
  }

  v5 = *(v0 + 584);
  v6 = *(v0 + 560);
  v7 = *(v0 + 488);
  v8 = *(v0 + 496);

  *(v0 + 608) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v6, v7);
  v9 = sub_24590DDC4();
  LOBYTE(v7) = v10;
  v11 = sub_24590DE44();
  if ((v7 & 1) != 0 || v9 != 2)
  {
    if (v11)
    {
      sub_24590C714();
      v13 = sub_24590F344();
      v14 = sub_245910F54();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_245767000, v13, v14, "Watch is paired but it is unsupported. Continue with proofing only on the phone", v15, 2u);
        MEMORY[0x245D77B40](v15, -1, -1);
      }

      v16 = *(v0 + 584);
      v17 = *(v0 + 552);
      v18 = *(v0 + 488);

      v16(v17, v18);
      v19 = 1;
    }

    else if (v1)
    {
      v19 = 3;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    if (v11)
    {
      (*(*(v0 + 472) + 104))(*(v0 + 480), *MEMORY[0x277CFFA78], *(v0 + 464));
      sub_2458CC8AC(MEMORY[0x277D84F90]);
      sub_24590EA84();
      sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
      v12 = swift_allocError();
LABEL_20:
      sub_24590EA94();
      swift_willThrow();
      sub_24590C714();
      v23 = v12;
      v24 = sub_24590F344();
      v25 = sub_245910F64();

      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 584);
      v28 = *(v0 + 504);
      v29 = *(v0 + 488);
      if (v26)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v37 = v31;
        *v30 = 136446210;
        swift_getErrorValue();
        v32 = sub_2459117D4();
        v34 = sub_2458CC378(v32, v33, &v37);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_245767000, v24, v25, "Received an error from start proofing: %{public}s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x245D77B40](v31, -1, -1);
        MEMORY[0x245D77B40](v30, -1, -1);

        v27(v28, v29);
      }

      else
      {

        v27(v28, v29);
      }

      swift_willThrow();
      sub_24587755C();

      v35 = *(v0 + 8);

      return v35();
    }

    if ((v1 & 1) == 0)
    {
      (*(*(v0 + 472) + 104))(*(v0 + 480), *MEMORY[0x277CFFA80], *(v0 + 464));
      sub_2458CC8AC(MEMORY[0x277D84F90]);
      sub_24590EA84();
      sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
      v12 = swift_allocError();
      goto LABEL_20;
    }

    v19 = 2;
  }

  v20 = *(v0 + 600);
  v21 = *(v0 + 408);
  *(*(v0 + 416) + 144) = v19;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 392;
  *(v0 + 88) = sub_245875FF4;
  v22 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ACE8);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_2458935E8;
  *(v0 + 232) = &block_descriptor_410;
  *(v0 + 240) = v22;
  [v20 prepareForProofingDisplayWithConfiguration:v21 proofingOptions:v19 completionHandler:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_245875FF4()
{
  v1 = *(*v0 + 112);
  *(*v0 + 616) = v1;
  if (v1)
  {
    v2 = sub_2458772D4;
  }

  else
  {
    v2 = sub_245876104;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245876104()
{
  v143 = v0;
  v1 = v0;
  v2 = v0[49];
  v3 = sub_24590DA44();
  if (!v3)
  {
    (*(v0[59] + 104))(v0[60], *MEMORY[0x277CFFAC8], v0[58]);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v12 = swift_allocError();
LABEL_5:
    v13 = v12;
    sub_24590EA94();
    swift_willThrow();

    sub_24590C714();
    v65 = v13;
    v66 = sub_24590F344();
    v67 = sub_245910F64();

    v68 = os_log_type_enabled(v66, v67);
    v69 = v1[73];
    v70 = v1[63];
    v71 = v1[61];
    if (v68)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v142[0] = v73;
      *v72 = 136446210;
      swift_getErrorValue();
      v74 = sub_2459117D4();
      v76 = v1;
      v77 = sub_2458CC378(v74, v75, v142);

      *(v72 + 4) = v77;
      v1 = v76;
      _os_log_impl(&dword_245767000, v66, v67, "Received an error from start proofing: %{public}s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x245D77B40](v73, -1, -1);
      MEMORY[0x245D77B40](v72, -1, -1);

      v69(v70, v71);
    }

    else
    {

      v69(v70, v71);
    }

    swift_willThrow();
    sub_24587755C();

    v78 = v1[1];
LABEL_24:

    return v78();
  }

  v4 = v3;
  v5 = v0[55];
  v6 = v0[56];
  v7 = v1[54];
  sub_245881410(v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v9 = v1[59];
    v8 = v1[60];
    v10 = v1[58];
    v11 = v1[54];

    sub_245778F94(v11, &qword_27EE2AD00);
    (*(v9 + 104))(v8, *MEMORY[0x277CFFAF8], v10);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v12 = swift_allocError();
    goto LABEL_5;
  }

  v14 = v1[52];
  (*(v1[56] + 32))(v1[57], v1[54], v1[55]);
  v15 = sub_24590DA44();
  sub_245874134(v15);

  v16 = sub_24590DAD4();
  v17 = v14 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_waitingForWiFiAlertDataThresholdInBytes;
  *v17 = v16;
  v17[8] = v18 & 1;
  v19 = sub_24590DA24();
  v20 = v14 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_lowDataModeAlertDataThresholdInBytes;
  *v20 = v19;
  v20[8] = v21 & 1;
  v22 = sub_24590DA64();
  v23 = (v14 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_learnMoreURL);
  *v23 = v22;
  v23[1] = v24;

  v14[29] = sub_24590E6B4();

  v14[33] = sub_24590E6C4();

  v14[34] = sub_24590E6D4();

  v25 = sub_24590DAA4();
  v26 = v14[32];
  v14[32] = v25;

  v14[40] = sub_24590DA84();

  v27 = sub_24590DA94();
  v28 = *(v14 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfig);
  *(v14 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfig) = v27;

  v29 = sub_24590DA94();
  v30 = v29;
  if (v29)
  {
  }

  v31 = v1[52];
  *(v31 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp) = v30 != 0;
  v32 = sub_24590DAC4();
  v137 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_shouldPreFetchLivenessConfig;
  v138 = v31;
  *(v31 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_shouldPreFetchLivenessConfig) = v32 & 1;
  v33 = sub_24590DA94();
  if (v33 && (v34 = v33, v35 = sub_24590D424(), v34, v35))
  {
    v36 = sub_24590DB34();
  }

  else
  {
    v36 = 1;
  }

  v37 = v1[52];
  *(v37 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_selfieImageIsRequired) = v36 & 1;
  *(v37 + 328) = sub_24590DA34();

  v38 = sub_24590DAF4();
  v39 = *(v37 + 312);
  *(v37 + 312) = v38;

  v40 = sub_24590DAB4();
  if (v40)
  {
    v41 = v40;
    sub_24590C714();
    v42 = sub_24590F344();
    v43 = sub_245910F54();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_245767000, v42, v43, "Saving IQSettings from Liveness Step Up workflow", v44, 2u);
      MEMORY[0x245D77B40](v44, -1, -1);
    }

    v45 = v1[73];
    v46 = v1[68];
    v47 = v1[61];

    v45(v46, v47);

    v48 = v41;
    sub_245784414(v41, 0, 0);
  }

  v49 = v1[51];
  sub_24590C714();
  v50 = v49;
  v51 = sub_24590F344();
  v52 = sub_245910F54();

  v53 = os_log_type_enabled(v51, v52);
  v54 = v1[73];
  v55 = v1[67];
  v56 = v1[61];
  if (v53)
  {
    v139 = v4;
    v57 = swift_slowAlloc();
    v134 = v1;
    v58 = swift_slowAlloc();
    v142[0] = v58;
    *v57 = 136315138;
    sub_24590DDB4();
    v59 = sub_24590CDA4();
    v61 = sub_2458CC378(v59, v60, v142);

    *(v57 + 4) = v61;
    _os_log_impl(&dword_245767000, v51, v52, "documentType before update %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    v62 = v58;
    v1 = v134;
    MEMORY[0x245D77B40](v62, -1, -1);
    v63 = v57;
    v4 = v139;
    MEMORY[0x245D77B40](v63, -1, -1);

    v54(v55, v56);
  }

  else
  {

    v54(v55, v56);
  }

  v64 = sub_24590DA54();
  sub_24587954C(v64);
  v80 = v1[51];
  sub_24590C714();
  v81 = v80;
  v82 = sub_24590F344();
  v83 = sub_245910F54();

  v84 = os_log_type_enabled(v82, v83);
  v85 = v1[73];
  v86 = v1[66];
  v87 = v1[61];
  v140 = v4;
  if (v84)
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v142[0] = v89;
    *v88 = 136315138;
    sub_24590DDB4();
    v90 = sub_24590CDA4();
    v132 = v85;
    v92 = v1;
    v93 = sub_2458CC378(v90, v91, v142);

    *(v88 + 4) = v93;
    v1 = v92;
    _os_log_impl(&dword_245767000, v82, v83, "documentType after update %s", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v89);
    MEMORY[0x245D77B40](v89, -1, -1);
    MEMORY[0x245D77B40](v88, -1, -1);

    v132(v86, v87);
  }

  else
  {

    v85(v86, v87);
  }

  sub_24590E6C4();
  sub_24590E6D4();
  v94 = v1[52];
  v95 = v1;
  sub_24590E684();

  sub_24590DDB4();
  *(v94 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_textReplacementHelper) = sub_24590E674();

  *(*(v94 + 152) + 24) = v140;

  v96 = sub_24590DAE4();
  if (v96)
  {
    v97 = v96;
    v141 = v1 + 39;
    sub_24590C714();
    v98 = v97;
    v99 = sub_24590F344();
    v100 = sub_245910F54();

    v101 = os_log_type_enabled(v99, v100);
    v102 = v1[73];
    v103 = v1[65];
    v104 = v1[61];
    if (v101)
    {
      v135 = v1;
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v142[0] = v106;
      *v105 = 136315138;
      v107 = sub_24590D264();
      v131 = v104;
      v109 = sub_2458CC378(v107, v108, v142);

      *(v105 + 4) = v109;
      _os_log_impl(&dword_245767000, v99, v100, "received doc scan config. IIN = %s", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v106);
      MEMORY[0x245D77B40](v106, -1, -1);
      v95 = v135;
      MEMORY[0x245D77B40](v105, -1, -1);

      v111 = v131;
      v110 = v103;
    }

    else
    {

      v110 = v103;
      v111 = v104;
    }

    v102(v110, v111);
    v112 = v95[56];
    v133 = v95[55];
    v136 = v95[57];
    v113 = *(v95[52] + 152);
    v114 = *(v113 + 40);
    *(v113 + 40) = v98;
    v115 = v98;

    sub_24590D264();
    swift_beginAccess();
    v116 = sub_24590D174();

    sub_24590CFD4();
    v116(v141, 0);
    swift_endAccess();

    v1 = v95;

    (*(v112 + 8))(v136, v133);
  }

  else
  {
    (*(v1[56] + 8))(v1[57], v1[55]);
  }

  v117 = v1[52];
  v118 = v1[53];
  v119 = v1[51];
  v120 = sub_245910D64();
  (*(*(v120 - 8) + 56))(v118, 1, 1, v120);
  v121 = swift_allocObject();
  v121[2] = 0;
  v121[3] = 0;
  v121[4] = v117;
  v121[5] = v119;
  v122 = v119;

  sub_2458B90EC(0, 0, v118, &unk_24591C060, v121);

  v123 = *(v138 + v137);
  if (v123 == 2 || (v123 & 1) == 0)
  {
    sub_24587755C();

    v78 = v1[1];
    goto LABEL_24;
  }

  sub_24590C714();
  v124 = sub_24590F344();
  v125 = sub_245910F54();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    *v126 = 0;
    _os_log_impl(&dword_245767000, v124, v125, "Instructed to pre fetch liveness config", v126, 2u);
    MEMORY[0x245D77B40](v126, -1, -1);
  }

  v127 = v1[73];
  v128 = v1[64];
  v129 = v1[61];

  v127(v128, v129);
  sub_24587E49C();
  v130 = swift_task_alloc();
  v1[78] = v130;
  *v130 = v1;
  v130[1] = sub_245877098;

  return sub_245882938();
}

uint64_t sub_245877098(void *a1)
{

  sub_2457CBA4C(a1);

  return MEMORY[0x2822009F8](sub_2458771A8, 0, 0);
}

uint64_t sub_2458771A8()
{
  sub_24587755C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458772D4()
{
  v19 = v0;
  swift_willThrow();
  v1 = v0[77];
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  if (os_log_type_enabled(v3, v4))
  {
    v17 = v0[73];
    v5 = v0[63];
    v6 = v0[61];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = sub_2459117D4();
    v11 = sub_2458CC378(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_245767000, v3, v4, "Received an error from start proofing: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);

    v17(v5, v6);
  }

  else
  {
    v12 = v0[73];
    v13 = v0[63];
    v14 = v0[61];

    v12(v13, v14);
  }

  swift_willThrow();
  sub_24587755C();

  v15 = v0[1];

  return v15();
}

uint64_t sub_24587755C()
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
    *(v6 + 4) = sub_2458CC378(0xD00000000000001DLL, 0x800000024592C120, &v10);
    _os_log_impl(&dword_245767000, v4, v5, "%s exit", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2458776F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_24590CDC4();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2458777C0, 0, 0);
}

uint64_t sub_2458777C0()
{
  if ((*(v0[2] + 144) & 3) == 2)
  {
    v1 = swift_task_alloc();
    v0[9] = v1;
    *v1 = v0;
    v1[1] = sub_245877A10;

    return sub_245879960();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_2458778D0;
    v4 = v0[3];

    return sub_24587AEB0(v4);
  }
}

uint64_t sub_2458778D0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_245877A10;

  return sub_245879960();
}

uint64_t sub_245877A10()
{

  return MEMORY[0x2822009F8](sub_245877B0C, 0, 0);
}

uint64_t sub_245877B0C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  sub_24590DDB4();
  sub_24590CDD4();
  (*(v4 + 104))(v2, *MEMORY[0x277CFF440], v3);
  v5 = sub_24590CDB4();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_245877CB0;
    v8 = v0[3];

    return sub_24587B5A4(v8);
  }

  else
  {
    v10 = *(v0[2] + 144);
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_245877E4C;
    v12 = v0[3];

    return sub_24587BC98(v12, v10);
  }
}

uint64_t sub_245877CB0()
{

  return MEMORY[0x2822009F8](sub_245877DAC, 0, 0);
}

uint64_t sub_245877DAC()
{
  v1 = *(v0[2] + 144);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_245877E4C;
  v3 = v0[3];

  return sub_24587BC98(v3, v1);
}

uint64_t sub_245877E4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_245877F78(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_24590F354();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  sub_24590C714();

  v16 = sub_24590F344();
  v17 = sub_245910F54();

  v18 = os_log_type_enabled(v16, v17);
  v48 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v47 = v7;
    v20 = v19;
    v21 = swift_slowAlloc();
    v46 = v13;
    v22 = v10;
    v23 = v6;
    v24 = v21;
    v49 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_2458CC378(a1, a2, &v49);
    _os_log_impl(&dword_245767000, v16, v17, "IdentityProofingFlowManager got message key: %s. Notifying UI to display workflow error", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v25 = v24;
    v6 = v23;
    v10 = v22;
    v13 = v46;
    MEMORY[0x245D77B40](v25, -1, -1);
    v26 = v20;
    v7 = v47;
    MEMORY[0x245D77B40](v26, -1, -1);
  }

  v27 = *(v7 + 8);
  v27(v15, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    sub_24590C714();
    v30 = v29;
    v31 = sub_24590F344();
    v32 = sub_245910F54();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v47 = v7;
      v34 = v33;
      v35 = swift_slowAlloc();
      v46 = a2;
      v36 = v6;
      v37 = v35;
      *v34 = 138412290;
      *(v34 + 4) = v30;
      *v35 = v29;
      v38 = v30;
      _os_log_impl(&dword_245767000, v31, v32, "IdentityProofingFlowManager presenting on %@", v34, 0xCu);
      sub_245778F94(v37, &qword_27EE297C0);
      v39 = v37;
      v6 = v36;
      a2 = v46;
      MEMORY[0x245D77B40](v39, -1, -1);
      MEMORY[0x245D77B40](v34, -1, -1);
    }

    v27(v13, v6);
    sub_2458783C8(v30, v48, a2);
    swift_unknownObjectWeakAssign();
    v40 = *(v3 + 192);
    if (v40)
    {
      v41 = *(v3 + 184);

      sub_245877F78(v41, v40);

      *(v3 + 184) = 0;
      *(v3 + 192) = 0;
    }

    else
    {
    }

    *(v3 + 184) = 0;
    *(v3 + 192) = 0;
  }

  else
  {
    sub_24590C714();
    v42 = sub_24590F344();
    v43 = sub_245910F54();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_245767000, v42, v43, "IdentityProofingFlowManager failed to present, workflow controller is nil; saving message", v44, 2u);
      MEMORY[0x245D77B40](v44, -1, -1);
    }

    v27(v10, v6);
    *(v3 + 184) = v48;
    *(v3 + 192) = a2;
  }
}

uint64_t sub_2458783C8(void *a1, uint64_t a2, unint64_t a3)
{
  v153 = a2;
  v144 = a1;
  v5 = sub_2459107E4();
  v150 = *(v5 - 8);
  v151 = v5;
  MEMORY[0x28223BE20](v5);
  v148 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_245910814();
  v147 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v146 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24590F354();
  v9 = *(v8 - 8);
  v154 = v8;
  v155 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v139 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v139 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v152 = &v139 - v20;
  MEMORY[0x28223BE20](v19);
  v145 = &v139 - v21;
  v22 = sub_24590E544();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v139 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v139 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = v3;
  v36 = *(v3 + 232);
  if (!v36 || !*(v36 + 16))
  {
    goto LABEL_18;
  }

  v143 = &v139 - v34;
  v142 = v33;

  v37 = sub_24588C5BC(v153, a3);
  if ((v38 & 1) == 0)
  {

LABEL_18:
    sub_24590C714();

    v77 = sub_24590F344();
    v78 = sub_245910F54();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      aBlock = v80;
      *v79 = 136315138;
      *(v79 + 4) = sub_2458CC378(v153, a3, &aBlock);
      _os_log_impl(&dword_245767000, v77, v78, "IdentityProofingFlowManager unable to show '%s'; key is not in the config.", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x245D77B40](v80, -1, -1);
      MEMORY[0x245D77B40](v79, -1, -1);
    }

    return (*(v155 + 8))(v12, v154);
  }

  v39 = *(v36 + 56);
  v141 = v23;
  v40 = v39 + *(v23 + 72) * v37;
  v140 = *(v23 + 16);
  v140(v143, v40, v142);

  v41 = sub_24590E504();
  if (v42)
  {
    v139 = sub_24586C880(v41, v42);
    v44 = v43;

    if (v44)
    {
      v45 = sub_24590E534();
      if (v45)
      {
        if (v45[2])
        {
          v46 = v45[4];
          v47 = v45[5];
          swift_bridgeObjectRetain_n();

          sub_24586C880(v46, v47);
          v49 = v48;
          swift_bridgeObjectRelease_n();
          if (v49)
          {
            v50 = sub_24590E514();
            if (v50)
            {
              if (v50[2])
              {
                v51 = v50[4];
                v52 = v50[5];
                swift_bridgeObjectRetain_n();

                sub_24586C880(v51, v52);
                v54 = v53;
                swift_bridgeObjectRelease_n();
                if (v54)
                {
                  v55 = sub_2459109C4();

                  v56 = sub_2459109C4();

                  v57 = [objc_opt_self() alertControllerWithTitle:v55 message:v56 preferredStyle:1];

                  v58 = sub_24590E4F4();
                  v60 = &unk_245916000;
                  v61 = v144;
                  if (!v59)
                  {
                    goto LABEL_55;
                  }

                  v62 = v58;
                  v63 = v59;
                  v64 = sub_24590E514();
                  if (v64)
                  {
                    v65 = *(v64 + 16);
                    if (v65)
                    {
                      v66 = (v64 + 16 + 16 * v65);
                      v67 = *v66;
                      v68 = v66[1];
                      swift_bridgeObjectRetain_n();

                      sub_24586C880(v67, v68);
                      v70 = v69;
                      swift_bridgeObjectRelease_n();
                      if (v70)
                      {
                        v71 = swift_allocObject();
                        v71[2] = v35;
                        v71[3] = v62;
                        v71[4] = v63;
                        v71[5] = v61;

                        v72 = v61;
                        v73 = sub_2459109C4();

                        v160 = sub_245892AD4;
                        v161 = v71;
                        aBlock = MEMORY[0x277D85DD0];
                        v60 = &unk_245916000;
                        v157 = 1107296256;
                        v158 = sub_245823208;
                        v159 = &block_descriptor_331;
                        v74 = _Block_copy(&aBlock);

                        v75 = v35;
                        v76 = [objc_opt_self() actionWithTitle:v73 style:0 handler:v74];
                        _Block_release(v74);

                        [v57 addAction_];
                        v35 = v75;
                      }

                      else
                      {

                        v60 = &unk_245916000;
                      }

LABEL_55:
                      v121 = swift_allocObject();
                      *(v121 + 16) = v35;
                      *(v121 + 24) = v61;

                      v122 = v61;
                      v123 = sub_2459109C4();

                      v160 = sub_245892AB4;
                      v161 = v121;
                      aBlock = MEMORY[0x277D85DD0];
                      v124 = v60[270];
                      v157 = v124;
                      v158 = sub_245823208;
                      v159 = &block_descriptor_319;
                      v125 = _Block_copy(&aBlock);

                      v126 = [objc_opt_self() actionWithTitle:v123 style:0 handler:v125];
                      _Block_release(v125);

                      [v57 addAction_];
                      [v57 setPreferredAction_];
                      v127 = v145;
                      sub_24590C714();
                      v128 = sub_24590F344();
                      v129 = sub_245910F54();
                      if (os_log_type_enabled(v128, v129))
                      {
                        v130 = swift_slowAlloc();
                        *v130 = 0;
                        _os_log_impl(&dword_245767000, v128, v129, "IdentityProofingFlowManager displaying workflow blocked alert", v130, 2u);
                        MEMORY[0x245D77B40](v130, -1, -1);
                      }

                      (*(v155 + 8))(v127, v154);
                      sub_24579D5E0(0, &qword_27EE2ABC0);
                      v131 = sub_245911034();
                      v132 = swift_allocObject();
                      *(v132 + 16) = v122;
                      *(v132 + 24) = v57;
                      v160 = sub_245892ABC;
                      v161 = v132;
                      aBlock = MEMORY[0x277D85DD0];
                      v157 = v124;
                      v158 = sub_2458935A8;
                      v159 = &block_descriptor_325;
                      v133 = _Block_copy(&aBlock);
                      v134 = v122;
                      v135 = v57;

                      v136 = v146;
                      sub_245910804();
                      aBlock = MEMORY[0x277D84F90];
                      sub_245892EA0(&qword_27EE2A980, MEMORY[0x277D85198]);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
                      sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18);
                      v137 = v148;
                      v138 = v151;
                      sub_2459113A4();
                      MEMORY[0x245D76690](0, v136, v137, v133);
                      _Block_release(v133);

                      (*(v150 + 8))(v137, v138);
                      (*(v147 + 8))(v136, v149);
                      return (*(v141 + 8))(v143, v142);
                    }
                  }

                  goto LABEL_55;
                }
              }

              else
              {
              }
            }

            v109 = v152;
            sub_24590C714();
            v110 = v143;
            v111 = v142;
            v140(v32, v143, v142);

            v112 = sub_24590F344();
            v113 = sub_245910F54();

            if (!os_log_type_enabled(v112, v113))
            {

              v118 = *(v141 + 8);
              v118(v32, v111);
              (*(v155 + 8))(v109, v154);
              return (v118)(v110, v111);
            }

            v114 = 7104878;
            v115 = swift_slowAlloc();
            v151 = swift_slowAlloc();
            aBlock = v151;
            *v115 = 136315394;
            *(v115 + 4) = sub_2458CC378(v153, a3, &aBlock);
            *(v115 + 12) = 2080;
            v116 = sub_24590E514();
            if (v116)
            {
              if (v116[2])
              {
                v114 = v116[4];
                v117 = v116[5];
              }

              else
              {
                v117 = 0xE300000000000000;
              }
            }

            else
            {
              v114 = 7104878;
              v117 = 0xE300000000000000;
            }

            v105 = *(v141 + 8);
            v107 = v142;
            v105(v32, v142);
            v119 = sub_2458CC378(v114, v117, &aBlock);

            *(v115 + 14) = v119;
            _os_log_impl(&dword_245767000, v112, v113, "IdentityProofingFlowManager unable to show '%s'; invalid action: %s", v115, 0x16u);
            v120 = v151;
            swift_arrayDestroy();
            MEMORY[0x245D77B40](v120, -1, -1);
            MEMORY[0x245D77B40](v115, -1, -1);

            (*(v155 + 8))(v109, v154);
            return (v105)(v143, v107);
          }
        }

        else
        {
        }
      }

      sub_24590C714();
      v95 = v143;
      v96 = v142;
      v140(v29, v143, v142);

      v97 = sub_24590F344();
      v98 = sub_245910F54();

      if (!os_log_type_enabled(v97, v98))
      {

        v104 = *(v141 + 8);
        v104(v29, v96);
        (*(v155 + 8))(v18, v154);
        return (v104)(v95, v96);
      }

      v99 = 7104878;
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      aBlock = v101;
      *v100 = 136315394;
      *(v100 + 4) = sub_2458CC378(v153, a3, &aBlock);
      *(v100 + 12) = 2080;
      v102 = sub_24590E534();
      if (v102)
      {
        if (v102[2])
        {
          v99 = v102[4];
          v103 = v102[5];
        }

        else
        {
          v103 = 0xE300000000000000;
        }
      }

      else
      {
        v103 = 0xE300000000000000;
      }

      v105 = *(v141 + 8);
      v106 = v29;
      v107 = v142;
      v105(v106, v142);
      v108 = sub_2458CC378(v99, v103, &aBlock);

      *(v100 + 14) = v108;
      _os_log_impl(&dword_245767000, v97, v98, "IdentityProofingFlowManager unable to show '%s'; invalid message: %s", v100, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D77B40](v101, -1, -1);
      MEMORY[0x245D77B40](v100, -1, -1);

      (*(v155 + 8))(v18, v154);
      return (v105)(v143, v107);
    }
  }

  sub_24590C714();
  v82 = v143;
  v83 = v142;
  v140(v26, v143, v142);

  v84 = sub_24590F344();
  v85 = sub_245910F54();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    aBlock = v152;
    *v86 = 136315394;
    *(v86 + 4) = sub_2458CC378(v153, a3, &aBlock);
    *(v86 + 12) = 2080;
    v87 = sub_24590E504();
    if (v88)
    {
      v89 = v87;
    }

    else
    {
      v89 = 7104878;
    }

    if (v88)
    {
      v90 = v88;
    }

    else
    {
      v90 = 0xE300000000000000;
    }

    v91 = *(v141 + 8);
    v91(v26, v83);
    v92 = sub_2458CC378(v89, v90, &aBlock);

    *(v86 + 14) = v92;
    _os_log_impl(&dword_245767000, v84, v85, "IdentityProofingFlowManager unable to show '%s'; invalid title: %s", v86, 0x16u);
    v93 = v152;
    swift_arrayDestroy();
    MEMORY[0x245D77B40](v93, -1, -1);
    MEMORY[0x245D77B40](v86, -1, -1);

    (*(v155 + 8))(v15, v154);
    return (v91)(v143, v83);
  }

  else
  {

    v94 = *(v141 + 8);
    v94(v26, v83);
    (*(v155 + 8))(v15, v154);
    return (v94)(v82, v83);
  }
}

uint64_t sub_24587954C(uint64_t a1)
{
  v4 = sub_24590EA74();
  MEMORY[0x28223BE20](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 168);
  if (v8)
  {
    v43 = v2;
    v9 = v8;
    v35 = a1;
    v10 = v9;
    v11 = sub_24590DE74();
    v41 = v12;
    v42 = v11;
    v13 = sub_24590DE84();
    v39 = v14;
    v40 = v13;
    v38 = sub_24590DDC4();
    v36 = v15;
    v37 = sub_24590DDA4();
    v34 = v16;
    v17 = sub_24590DE14();
    v33[9] = v18;
    v33[10] = v17;
    v19 = sub_24590DDD4();
    v33[7] = v20;
    v33[8] = v19;
    v33[6] = sub_24590DD94();
    v21 = sub_24590DE04();
    v33[4] = v22;
    v33[5] = v21;
    v23 = sub_24590DE34();
    v33[2] = v24;
    v33[3] = v23;
    v33[1] = sub_24590DDE4();
    sub_24590DE54();
    sub_24590DE44();
    sub_24590DE24();
    sub_24590DDF4();
    v25 = objc_allocWithZone(sub_24590DE94());
    v26 = sub_24590DE64();
    v27 = *(v1 + 168);
    *(v1 + 168) = v26;
    v28 = v26;

    v42 = v1;

    sub_24590DE74();
    if (v29)
    {
      v41 = sub_245910A84();
    }

    else
    {
      v41 = 0;
    }

    sub_24590DE84();
    if (v31)
    {
      sub_245910A84();
    }

    sub_24590E684();
    sub_24590DDB4();

    v32 = sub_24590E674();
    *(v42 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_textReplacementHelper) = v32;
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CFFBE8]);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    return swift_willThrow();
  }
}

uint64_t sub_245879960()
{
  v1[6] = v0;
  v2 = sub_24590F354();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[13] = v3;
  *v3 = v1;
  v3[1] = sub_245879A70;

  return sub_245882278();
}

uint64_t sub_245879A70(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[14] = a2;
  v5[15] = v2;

  if (v2)
  {
    v6 = sub_24587A3DC;
  }

  else
  {
    v5[16] = a1;
    v6 = sub_245879B98;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_245879B98()
{
  v1 = sub_24590DC84();
  v2 = sub_24590DC84();
  v3 = v0[14];
  if (v1 == v2)
  {

    sub_24590C714();
    v4 = sub_24590F344();
    v5 = sub_245910F54();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[10];
    v8 = v0[7];
    v9 = v0[8];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245767000, v4, v5, "proofing status unavailable. This is an unexpected daemon state.", v10, 2u);
      MEMORY[0x245D77B40](v10, -1, -1);
    }

    (*(v9 + 8))(v7, v8);
    goto LABEL_35;
  }

  if (v3 >> 62)
  {
LABEL_40:
    v39 = v3;
    v11 = sub_245911424();
    v3 = v39;
    v12 = v0[14];
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_41:

    sub_24590C714();
    v40 = sub_24590F344();
    v41 = sub_245910F54();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_245767000, v40, v41, "Proofing session doesn't exist. Start fetching image quality settings", v42, 2u);
      MEMORY[0x245D77B40](v42, -1, -1);
    }

    v43 = v0[11];
    v44 = v0[7];
    v45 = v0[8];

    (*(v45 + 8))(v43, v44);
    v28 = swift_task_alloc();
    v0[20] = v28;
    *v28 = v0;
    v29 = sub_24587A270;
LABEL_44:
    v28[1] = v29;

    return sub_24587A5D0();
  }

  v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v12 = v0[14];
  if (!v11)
  {
    goto LABEL_41;
  }

LABEL_7:
  v13 = *(v0[6] + 168);
  v0[17] = v13;
  v48 = v3 & 0xFFFFFFFFFFFFFF8;
  v49 = v3 & 0xC000000000000001;
  v47 = v12 + 32;
  v3 = v13;
  v46 = v3;
  v14 = 0;
  while (1)
  {
    if (v49)
    {
      v3 = MEMORY[0x245D76B30](v14, v0[14]);
    }

    else
    {
      if (v14 >= *(v48 + 16))
      {
        goto LABEL_39;
      }

      v3 = *(v47 + 8 * v14);
    }

    v15 = v3;
    v0[18] = v3;
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v17 = sub_24590DE74();
    v19 = v18;
    if (!v13)
    {
      if (!v18)
      {
        goto LABEL_28;
      }

LABEL_9:

      goto LABEL_10;
    }

    v20 = v17;
    v21 = sub_24590DE74();
    if (!v19)
    {
      if (!v22)
      {
        goto LABEL_28;
      }

      goto LABEL_9;
    }

    if (!v22)
    {
      goto LABEL_9;
    }

    if (v20 == v21 && v19 == v22)
    {
      break;
    }

    v23 = sub_245911714();

    if (v23)
    {
      goto LABEL_28;
    }

LABEL_10:
    ++v14;
    if (v16 == v11)
    {

      v24 = 0;
      goto LABEL_31;
    }
  }

LABEL_28:

  v24 = v15;
  sub_24590DDA4();
  v26 = v25;

  if ((v26 & 1) == 0)
  {
    v27 = sub_24590DC74();
    if (v27 == sub_24590DC74())
    {
      v28 = swift_task_alloc();
      v0[19] = v28;
      *v28 = v0;
      v29 = sub_24587A0E4;
      goto LABEL_44;
    }
  }

LABEL_31:
  sub_24590C714();
  v30 = sub_24590F344();
  v31 = sub_245910F54();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[12];
  v34 = v0[7];
  v35 = v0[8];
  if (v32)
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_245767000, v30, v31, "Stored Proofing Session exists. Do not fetch image quality settings", v36, 2u);
    MEMORY[0x245D77B40](v36, -1, -1);
  }

  else
  {
  }

  (*(v35 + 8))(v33, v34);
LABEL_35:

  v37 = v0[1];

  return v37();
}

uint64_t sub_24587A0E4()
{

  return MEMORY[0x2822009F8](sub_24587A1E0, 0, 0);
}

uint64_t sub_24587A1E0()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24587A270()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24587A3DC()
{
  v20 = v0;
  v1 = *(v0 + 120);
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 64);
    v18 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_2459117D4();
    v12 = sub_2458CC378(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_245767000, v3, v4, "Received an error while checking for proofing flow availability %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = *(v0 + 56);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24587A5D0()
{
  v1[23] = v0;
  v2 = sub_24590F354();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v3 = sub_24590EA74();
  v1[27] = v3;
  v1[28] = *(v3 - 8);
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24587A6EC, 0, 0);
}

uint64_t sub_24587A6EC()
{
  v21 = v0;
  v1 = v0[23];
  v2 = *(v1 + 168);
  v0[30] = v2;
  if (v2)
  {
    v3 = *(v1 + 112);
    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_24587AADC;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ACE0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2458935E8;
    v0[13] = &block_descriptor_310;
    v0[14] = v4;
    [v3 fetchImageQualitySettingsWithConfiguration:v2 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    (*(v0[28] + 104))(v0[29], *MEMORY[0x277CFFBE8], v0[27]);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v5 = swift_allocError();
    sub_24590EA94();
    swift_willThrow();
    sub_24590C714();
    v6 = v5;
    v7 = sub_24590F344();
    v8 = sub_245910F64();

    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[25];
    v10 = v0[26];
    v12 = v0[24];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136446210;
      swift_getErrorValue();
      v15 = sub_2459117D4();
      v17 = sub_2458CC378(v15, v16, &v20);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_245767000, v7, v8, "Received error while trying to fetch the image quality model: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x245D77B40](v14, -1, -1);
      MEMORY[0x245D77B40](v13, -1, -1);

      (*(v11 + 8))(v10, v12);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    sub_245784414(0, 0, 0);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_24587AADC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_24587ACA4;
  }

  else
  {
    v2 = sub_24587ABEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24587ABEC()
{
  v1 = v0[30];
  v2 = v0[22];

  v3 = v2;
  sub_245784414(v2, 0, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24587ACA4()
{
  v20 = v0;
  v1 = v0[30];
  swift_willThrow();

  v2 = v0[31];
  sub_24590C714();
  v3 = v2;
  v4 = sub_24590F344();
  v5 = sub_245910F64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[25];
    v18 = v0[26];
    v7 = v0[24];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_2459117D4();
    v12 = sub_2458CC378(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_245767000, v4, v5, "Received error while trying to fetch the image quality model: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = v0[25];
    v13 = v0[26];
    v15 = v0[24];

    (*(v14 + 8))(v13, v15);
  }

  sub_245784414(0, 0, 0);

  v16 = v0[1];

  return v16();
}

uint64_t sub_24587AEB0(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_24590F354();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24587AF88, 0, 0);
}

uint64_t sub_24587AF88()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "Requesting to fetch BiomeFedStatsUI", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[23];
  v8 = v0[24];

  v9 = *(v6 + 8);
  v0[30] = v9;
  v9(v4, v5);
  v10 = *(v8 + 112);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_24587B15C;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ACD8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2457A175C;
  v0[13] = &block_descriptor_307;
  v0[14] = v11;
  [v10 fetchBiomeFedStatsUIWithConfiguration:v7 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24587B15C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_24587B3B0;
  }

  else
  {
    v2 = sub_24587B26C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24587B26C()
{
  v1 = v0[24];
  v2 = *(v1 + 248);
  *(v1 + 248) = v0[21];

  if (*(v1 + 248))
  {
    sub_24590C714();
    v3 = sub_24590F344();
    v4 = sub_245910F54();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[30];
    v7 = v0[28];
    v8 = v0[25];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_245767000, v3, v4, "Successfully received biome-fedstats UI config from the server", v9, 2u);
      MEMORY[0x245D77B40](v9, -1, -1);
    }

    v6(v7, v8);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24587B3B0()
{
  v20 = v0;
  v1 = *(v0 + 248);
  swift_willThrow();
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v17 = *(v0 + 216);
    v18 = *(v0 + 240);
    v6 = *(v0 + 200);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_2459117D4();
    v11 = sub_2458CC378(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_245767000, v3, v4, "Received an error while attempting to fetch the Biome-FedStatsUI -> %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);

    v18(v17, v6);
  }

  else
  {
    v12 = *(v0 + 240);
    v13 = *(v0 + 216);
    v14 = *(v0 + 200);

    v12(v13, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24587B5A4(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_24590F354();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24587B67C, 0, 0);
}

uint64_t sub_24587B67C()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "Requesting to fetch LivenessConsentOptin", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[23];
  v8 = v0[24];

  v9 = *(v6 + 8);
  v0[30] = v9;
  v9(v4, v5);
  v10 = *(v8 + 112);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_24587B850;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ACD8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2457A175C;
  v0[13] = &block_descriptor_304;
  v0[14] = v11;
  [v10 fetchLivenessConsentOptinUIWithConfiguration:v7 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24587B850()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_24587BAA4;
  }

  else
  {
    v2 = sub_24587B960;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24587B960()
{
  v1 = v0[24];
  v2 = *(v1 + 240);
  *(v1 + 240) = v0[21];

  if (*(v1 + 240))
  {
    sub_24590C714();
    v3 = sub_24590F344();
    v4 = sub_245910F54();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[30];
    v7 = v0[28];
    v8 = v0[25];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_245767000, v3, v4, "Successfully received LivenessConsentOptinUI config from the server", v9, 2u);
      MEMORY[0x245D77B40](v9, -1, -1);
    }

    v6(v7, v8);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24587BAA4()
{
  v20 = v0;
  v1 = *(v0 + 248);
  swift_willThrow();
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v17 = *(v0 + 216);
    v18 = *(v0 + 240);
    v6 = *(v0 + 200);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_2459117D4();
    v11 = sub_2458CC378(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_245767000, v3, v4, "Received an error while attempting to fetch the LivenessConsentOptinUI -> %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);

    v18(v17, v6);
  }

  else
  {
    v12 = *(v0 + 240);
    v13 = *(v0 + 216);
    v14 = *(v0 + 200);

    v12(v13, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24587BC98(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = sub_24590F354();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24587BD5C, 0, 0);
}

uint64_t sub_24587BD5C()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "Requesting to fetch analyticsSessionID", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v7 = v0[23];
  v8 = v0[20];
  v12 = v0[21];

  (*(v5 + 8))(v4, v7);
  v9 = *(v6 + 112);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24587BF34;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ACD0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24587C098;
  v0[13] = &block_descriptor_301;
  v0[14] = v10;
  [v9 fetchAnalyticsSessionIDWithConfiguration:v8 proofingOptions:v12 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24587BF34()
{

  return MEMORY[0x2822009F8](sub_24587C014, 0, 0);
}

uint64_t sub_24587C014()
{
  *(*(v0 + 176) + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_analyticsSessionID) = *(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24587C098(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_245910A04();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(*(v3 + 64) + 40);
  *v6 = v4;
  v6[1] = v5;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_24587C110()
{
  v1[24] = v0;
  v2 = sub_24590F354();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24587C1E8, 0, 0);
}

uint64_t sub_24587C1E8()
{

  v1 = sub_2458AE30C();

  if (v1)
  {
    v2 = *(v0[24] + 112);
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_24587C41C;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ACC8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_24587C8C0;
    v0[13] = &block_descriptor_297;
    v0[14] = v3;
    [v2 fetchTermsAndConditionsWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_24590C714();
    v4 = sub_24590F344();
    v5 = sub_245910F54();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[28];
    v8 = v0[25];
    v9 = v0[26];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245767000, v4, v5, "Terms and conditions not a part of pagination. Will not attempt to fetch", v10, 2u);
      MEMORY[0x245D77B40](v10, -1, -1);
    }

    (*(v9 + 8))(v7, v8);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_24587C41C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_24587C6CC;
  }

  else
  {
    v2 = sub_24587C52C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24587C52C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = *(v0[24] + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager__termsAndConditions);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  os_unfair_lock_lock((v3 + 32));
  sub_245893590((v3 + 16));
  os_unfair_lock_unlock((v3 + 32));

  sub_24590C714();
  v5 = sub_24590F344();
  v6 = sub_245910F54();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[29];
  v9 = v0[25];
  v10 = v0[26];
  if (v7)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_245767000, v5, v6, "Successfully stored terms and conditions in memory", v11, 2u);
    MEMORY[0x245D77B40](v11, -1, -1);
  }

  (*(v10 + 8))(v8, v9);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24587C6CC()
{
  v20 = v0;
  v1 = *(v0 + 240);
  swift_willThrow();
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 240);
    v6 = *(v0 + 208);
    v18 = *(v0 + 216);
    v7 = *(v0 + 200);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_2459117D4();
    v12 = sub_2458CC378(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_245767000, v3, v4, "Received an error while fetching terms and conditions %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 208);
    v13 = *(v0 + 216);
    v15 = *(v0 + 200);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24587C8C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = sub_245910A04();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_24587C994(char a1)
{
  *(v2 + 176) = v1;
  *(v2 + 224) = a1;
  v3 = sub_24590F354();
  *(v2 + 184) = v3;
  *(v2 + 192) = *(v3 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24587CA64, 0, 0);
}

uint64_t sub_24587CA64()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 224);
  v3 = *(v1 + 112);
  v4 = *(v1 + 144);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_24587CB94;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FF0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24579D0B4;
  *(v0 + 104) = &block_descriptor_294;
  *(v0 + 112) = v5;
  [v3 triggerAssetsUploadWithProofingOptions:v4 canUploadOnExpensiveNetwork:v2 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24587CB94()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_24587CDB4;
  }

  else
  {
    v2 = sub_24587CCA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24587CCA4()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "Opportunistic file uploads complete", v7, 2u);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  (*(v6 + 8))(v4, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24587CDB4()
{
  v20 = v0;
  v1 = *(v0 + 216);
  swift_willThrow();
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 216);
    v6 = *(v0 + 192);
    v18 = *(v0 + 200);
    v7 = *(v0 + 184);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_2459117D4();
    v12 = sub_2458CC378(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_245767000, v3, v4, "Received an error from opportunistic file upload %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 192);
    v13 = *(v0 + 200);
    v15 = *(v0 + 184);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24587CF9C(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_24590EA74();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = sub_24590EA84();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v6 = sub_24590CDC4();
  v3[30] = v6;
  v3[31] = *(v6 - 8);
  v3[32] = swift_task_alloc();
  v7 = sub_24590F354();
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24587D1C8, 0, 0);
}

uint64_t sub_24587D1C8()
{
  v67 = v0;
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "Preparing for proofing", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[40];
  v5 = v0[33];
  v6 = v0[34];
  v7 = v0[21];

  v8 = *(v6 + 8);
  v0[41] = v8;
  v8(v4, v5);
  v9 = *(v7 + 168);
  v0[42] = v9;
  if (v9)
  {
    v11 = v0[31];
    v10 = v0[32];
    v12 = v0[30];
    v13 = v9;
    sub_24590DDB4();
    sub_24590CDD4();
    v14 = (*(v11 + 88))(v10, v12);
    if (v14 == *MEMORY[0x277CFF440])
    {
      sub_24590C714();
      v15 = sub_24590F344();
      v16 = sub_245910F54();
      v17 = os_log_type_enabled(v15, v16);
      v18 = v0[39];
      v19 = v0[33];
      if (v17)
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v66[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_2458CC378(0xD00000000000002ELL, 0x800000024592BC80, v66);
        _os_log_impl(&dword_245767000, v15, v16, "%s mDL, retrieving documents", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x245D77B40](v21, -1, -1);
        MEMORY[0x245D77B40](v20, -1, -1);
      }

      v8(v18, v19);
      v22 = v0[21];

      sub_2458ADF14();
      v24 = v23;

      v66[0] = v24;
      sub_24588D310(2u);
      v25 = *(v22 + 120);
      v26 = v66[0];
      v27 = swift_task_alloc();
      *(v27 + 16) = v26;
      *(v27 + 24) = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE297A0);
      sub_245911044();

      v28 = v0[18];
      if (v28)
      {
        v29 = v28;
LABEL_15:
        v43 = v29;
        v0[43] = v29;
        v44 = *(v0[21] + 112);
        if (v0[20])
        {
          v45 = sub_2459109C4();
        }

        else
        {
          v45 = 0;
        }

        v0[44] = v45;
        v0[2] = v0;
        v0[3] = sub_24587DD90;
        v56 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FF0);
        v0[10] = MEMORY[0x277D85DD0];
        v0[11] = 1107296256;
        v0[12] = sub_24579D0B4;
        v0[13] = &block_descriptor_291;
        v0[14] = v56;
        [v44 prepareForProofingIdentityWithConfiguration:v13 documents:v43 proofingSessionID:v45 completionHandler:v0 + 10];

        return MEMORY[0x282200938](v0 + 2);
      }

      v52 = v0[38];
      v64 = v0[33];
      v53 = v0[29];
      v54 = v0[25];
      v55 = v0[26];
      (*(v0[23] + 104))(v0[24], *MEMORY[0x277CFFAB0], v0[22]);
      v65 = v13;
      sub_2458CC8AC(MEMORY[0x277D84F90]);
    }

    else
    {
      if (v14 != *MEMORY[0x277CFF448])
      {
        v46 = v0[38];
        v60 = v0[33];
        v61 = v0[31];
        v47 = v0[29];
        v62 = v0[30];
        v63 = v0[32];
        v49 = v0[25];
        v48 = v0[26];
        (*(v0[23] + 104))(v0[24], *MEMORY[0x277CFF980], v0[22]);
        sub_2458CC8AC(MEMORY[0x277D84F90]);
        sub_24590EA94();
        sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
        v50 = swift_allocError();
        (*(v48 + 16))(v51, v47, v49);
        sub_24590C714();
        sub_24590C724();

        v8(v46, v60);
        (*(v48 + 8))(v47, v49);

        (*(v61 + 8))(v63, v62);
LABEL_25:

        v30 = v0[1];
        goto LABEL_26;
      }

      sub_24590DDB4();
      v31 = sub_24590CDE4();
      if (v31 == sub_24590CDE4())
      {
        sub_24590C714();
        v32 = sub_24590F344();
        v33 = sub_245910F54();
        v34 = os_log_type_enabled(v32, v33);
        v35 = v0[37];
        v36 = v0[33];
        if (v34)
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v66[0] = v38;
          *v37 = 136315138;
          *(v37 + 4) = sub_2458CC378(0xD00000000000002ELL, 0x800000024592BC80, v66);
          _os_log_impl(&dword_245767000, v32, v33, "%s passport, inserting documents", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x245D77B40](v38, -1, -1);
          MEMORY[0x245D77B40](v37, -1, -1);
        }

        v8(v35, v36);
        v39 = *(v0[21] + 120);
        v40 = *(v39 + 64);
        v41 = *(v39 + 72);
        objc_allocWithZone(sub_24590C914());

        sub_24578FB6C(v40, v41);
        sub_24590C904();
        v42 = objc_allocWithZone(sub_24590D7A4());
        v29 = sub_24590D784();
        goto LABEL_15;
      }

      v52 = v0[38];
      v64 = v0[33];
      v53 = v0[29];
      v54 = v0[25];
      v55 = v0[26];
      v65 = v13;
      (*(v0[23] + 104))(v0[24], *MEMORY[0x277CFF970], v0[22]);
      sub_2458CC8AC(MEMORY[0x277D84F90]);
    }

    sub_24590EA94();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v57 = swift_allocError();
    (*(v55 + 16))(v58, v53, v54);
    sub_24590C714();
    sub_24590C724();

    v8(v52, v64);
    (*(v55 + 8))(v53, v54);

    goto LABEL_25;
  }

  (*(v0[23] + 104))(v0[24], *MEMORY[0x277CFFBE8], v0[22]);
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v30 = v0[1];
LABEL_26:

  return v30();
}

uint64_t sub_24587DD90()
{
  v1 = *(*v0 + 48);
  *(*v0 + 360) = v1;
  if (v1)
  {
    v2 = sub_24587E054;
  }

  else
  {
    v2 = sub_24587DEA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24587DEA0()
{
  v1 = *(v0 + 344);

  sub_24590C714();
  v2 = sub_24590F344();
  v3 = sub_245910F44();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 336);
  v6 = *(v0 + 344);
  v7 = *(v0 + 328);
  v8 = *(v0 + 288);
  v9 = *(v0 + 264);
  if (v4)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_245767000, v2, v3, "Called daemon to prepare for proofing", v10, 2u);
    MEMORY[0x245D77B40](v10, -1, -1);
  }

  else
  {

    v2 = v5;
  }

  v7(v8, v9);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24587E054()
{
  v46 = v0;
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[38];
  v40 = v0[41];
  v39 = v0[33];
  v43 = v0[27];
  v5 = v0[26];
  v35 = v0[28];
  v36 = v0[25];
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];
  swift_willThrow();

  (*(v6 + 104))(v7, *MEMORY[0x277CFF920], v8);
  v9 = v2;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA94();
  sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  v10 = swift_allocError();
  v11 = *(v5 + 16);
  v11(v12, v35, v36);
  sub_24590C714();
  sub_24590C724();
  v40(v4, v39);

  sub_24590C714();
  v11(v43, v35, v36);
  v13 = sub_24590F344();
  v14 = sub_245910F64();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[41];
  v17 = v0[35];
  v44 = v0[33];
  v19 = v0[26];
  v18 = v0[27];
  v20 = v0[25];
  if (v15)
  {
    v42 = v0[35];
    v21 = swift_slowAlloc();
    v38 = v14;
    v22 = swift_slowAlloc();
    v45 = v22;
    *v21 = 136315138;
    v41 = v16;
    v37 = sub_2459117D4();
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v18, v20);
    v26 = sub_2458CC378(v37, v24, &v45);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_245767000, v13, v38, "Ignoring Error preparing for proofing: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v27 = v22;
    v28 = v25;
    MEMORY[0x245D77B40](v27, -1, -1);
    MEMORY[0x245D77B40](v21, -1, -1);

    v41(v42, v44);
  }

  else
  {

    v28 = *(v19 + 8);
    v28(v18, v20);
    v16(v17, v44);
  }

  v30 = v0[42];
  v29 = v0[43];
  v31 = v0[28];
  v32 = v0[25];
  swift_willThrow();

  v28(v31, v32);

  v33 = v0[1];

  return v33();
}

uint64_t sub_24587E49C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_24590F354();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  sub_24590C714();
  v12 = sub_24590F344();
  v13 = sub_245910F54();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_245767000, v12, v13, "Retrieving new liveness config", v14, 2u);
    MEMORY[0x245D77B40](v14, -1, -1);
  }

  v15 = *(v6 + 8);
  v15(v11, v5);
  v16 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfig);
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfig) = 0;

  v17 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfigFetchError);
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfigFetchError) = 0;

  v18 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfigFetchTask;
  if (*(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfigFetchTask))
  {

    sub_245910DD4();
  }

  sub_24590C714();
  v19 = sub_24590F344();
  v20 = sub_245910F54();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_245767000, v19, v20, "Entering the liveness config fetch lock", v21, 2u);
    MEMORY[0x245D77B40](v21, -1, -1);
  }

  v15(v9, v5);
  v22 = sub_245910D64();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v1;

  *(v1 + v18) = sub_2458B90EC(0, 0, v4, &unk_24591BFC0, v23);
}

uint64_t sub_24587E7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = sub_24590F354();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v6 = sub_24590EA74();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v7 = sub_24590EA84();
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24587E974, 0, 0);
}

uint64_t sub_24587E974()
{
  v1 = *(v0[19] + 112);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24587EA94;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ACC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2458935E8;
  v0[13] = &block_descriptor_287;
  v0[14] = v2;
  [v1 getLivenessConfigWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24587EA94()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_24587EC9C;
  }

  else
  {
    v2 = sub_24587EBA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24587EBA4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfig);
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfig) = v2;
  v4 = v2;

  sub_24590C6C4();
  sub_24587F0A0(v0[19]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24587EC9C()
{
  v45 = v0;
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[26];
  v37 = v0[30];
  v39 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[23];
  v41 = v0[29];
  v7 = v0[21];
  v43 = v0[20];
  swift_willThrow();
  (*(v5 + 104))(v3, *MEMORY[0x277CFF920], v4);
  v8 = v1;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA94();
  sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  v9 = swift_allocError();
  v10 = *(v2 + 16);
  v10(v11, v37, v39);
  sub_24590C714();
  sub_24590C724();
  v12 = *(v7 + 8);
  v12(v6, v43);

  sub_24590C714();
  v10(v41, v37, v39);
  v13 = sub_24590F344();
  v14 = sub_245910F64();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[28];
  v17 = v0[29];
  v18 = v0[27];
  v19 = v0[22];
  v20 = v0[20];
  if (v15)
  {
    v42 = v0[20];
    v21 = swift_slowAlloc();
    v40 = v12;
    v22 = swift_slowAlloc();
    v44 = v22;
    *v21 = 136315138;
    v38 = v19;
    v23 = sub_2459117D4();
    v25 = v24;
    (*(v16 + 8))(v17, v18);
    v26 = sub_2458CC378(v23, v25, &v44);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_245767000, v13, v14, "Attempt to get new liveness config failed with error: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x245D77B40](v22, -1, -1);
    MEMORY[0x245D77B40](v21, -1, -1);

    v40(v38, v42);
  }

  else
  {

    (*(v16 + 8))(v17, v18);
    v12(v19, v20);
  }

  v28 = v0[30];
  v27 = v0[31];
  v29 = v0[27];
  v30 = v0[28];
  v31 = v0[19];
  v32 = swift_allocError();
  (*(v30 + 32))(v33, v28, v29);

  v34 = *(v31 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfigFetchError);
  *(v31 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfigFetchError) = v32;

  sub_24587F0A0(v0[19]);

  v35 = v0[1];

  return v35();
}

uint64_t sub_24587F0A0(uint64_t a1)
{
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v6 = sub_24590F344();
  v7 = sub_245910F54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_245767000, v6, v7, "Signalling the liveness config fetch lock", v8, 2u);
    MEMORY[0x245D77B40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  *(a1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfigFetchTask) = 0;
}

uint64_t sub_24587F1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_24590EA74();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24587F2F0, 0, 0);
}

uint64_t sub_24587F2F0()
{
  v1 = v0[6];
  v2 = *(v1 + 168);
  v0[11] = v2;
  if (v2)
  {
    v3 = v0[10];
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[3];
    v7 = sub_245910D64();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v1;
    v8[5] = v2;
    v8[6] = v6;
    v8[7] = v5;
    v8[8] = v4;
    v9 = v2;

    v10 = v6;

    v11 = sub_24586D278(0, 0, v3, &unk_24591BFA8, v8, MEMORY[0x277CFF5A0]);
    v0[12] = v11;
    *(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_proofingDataTask) = v11;

    v12 = swift_task_alloc();
    v0[13] = v12;
    v13 = sub_24590D804();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
    *v12 = v0;
    v12[1] = sub_24587F628;
    v15 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 2, v11, v13, v14, v15);
  }

  else
  {
    (*(v0[8] + 104))(v0[9], *MEMORY[0x277CFFBE8], v0[7]);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_24587F628()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24587F7D4;
  }

  else
  {
    v2 = sub_24587F73C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24587F73C()
{
  v1 = v0[11];
  v2 = v0[6];

  v3 = *(v2 + 312);
  *(v2 + 312) = v0[2];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24587F7D4()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24587F84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[19] = a1;
  v8[20] = a4;
  v9 = sub_24590F354();
  v8[25] = v9;
  v8[26] = *(v9 - 8);
  v8[27] = swift_task_alloc();
  v10 = sub_24590EA74();
  v8[28] = v10;
  v8[29] = *(v10 - 8);
  v8[30] = swift_task_alloc();
  v11 = sub_24590EA84();
  v8[31] = v11;
  v8[32] = *(v11 - 8);
  v8[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24587F9CC, 0, 0);
}

uint64_t sub_24587F9CC()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = *(v0[20] + 112);
  v4 = sub_2459109C4();
  v0[34] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24587FB1C;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ACB8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2458935E8;
  v0[13] = &block_descriptor_279;
  v0[14] = v5;
  [v3 initiatePartialProofingWithConfiguration:v2 documents:v1 proofingSessionID:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24587FB1C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_24587FCC0;
  }

  else
  {
    v2 = sub_24587FC2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24587FC2C()
{
  v1 = *(v0 + 272);
  **(v0 + 152) = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24587FCC0()
{
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[28];
  v7 = v0[29];
  v16 = v0[27];
  v17 = v0[26];
  v18 = v0[25];
  swift_willThrow();

  (*(v7 + 104))(v6, *MEMORY[0x277CFF920], v8);
  v9 = v2;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA94();
  sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  v10 = swift_allocError();
  v11 = *(v4 + 16);
  v11(v12, v3, v5);
  sub_24590C714();
  sub_24590C724();
  (*(v17 + 8))(v16, v18);

  swift_allocError();
  v11(v13, v3, v5);
  swift_willThrow();

  (*(v4 + 8))(v3, v5);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24587FF2C()
{
  *(v1 + 24) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24587FFC8, 0, 0);
}

uint64_t sub_24587FFC8()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_pendingCommandsStatusTask;
  v3 = v1;
  if (*(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_pendingCommandsStatusTask))
  {
    sub_24590D6A4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
    sub_245910DD4();

    v3 = v0[3];
  }

  v4 = v0[4];
  v5 = sub_245910D64();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;

  v7 = sub_24586D278(0, 0, v4, &unk_24591BF90, v6, MEMORY[0x277CFF590]);
  v0[5] = v7;
  *(v1 + v2) = v7;

  v8 = swift_task_alloc();
  v0[6] = v8;
  v9 = sub_24590D6A4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
  *v8 = v0;
  v8[1] = sub_2458801CC;
  v11 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 2, v7, v9, v10, v11);
}

uint64_t sub_2458801CC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_245880354;
  }

  else
  {
    v2 = sub_2458802E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2458802E0()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_245880354()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458803C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a1;
  v4[20] = a4;
  v5 = sub_24590F354();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = sub_24590EA74();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v7 = sub_24590EA84();
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245880538, 0, 0);
}

uint64_t sub_245880538()
{
  v1 = *(v0[20] + 112);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_245880658;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ACB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2458935E8;
  v0[13] = &block_descriptor_269;
  v0[14] = v2;
  [v1 getPendingCommandsStatusWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_245880658()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_245880810;
  }

  else
  {
    v2 = sub_245880768;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245880768()
{
  v1 = *(v0 + 160);
  **(v0 + 152) = *(v0 + 144);
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_pendingCommandsStatusTask) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_245880810()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[24];
  v15 = v0[28];
  v16 = v0[23];
  v7 = v0[22];
  v17 = v0[21];
  v18 = v0[20];
  swift_willThrow();
  (*(v4 + 104))(v5, *MEMORY[0x277CFF920], v6);
  v8 = v2;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA94();
  sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  v9 = swift_allocError();
  v10 = *(v15 + 16);
  v10(v11, v1, v3);
  sub_24590C714();
  sub_24590C724();
  (*(v7 + 8))(v16, v17);

  swift_allocError();
  v10(v12, v1, v3);
  swift_willThrow();

  (*(v15 + 8))(v1, v3);
  *(v18 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_pendingCommandsStatusTask) = 0;

  v13 = v0[1];

  return v13();
}

uint64_t sub_245880A8C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245880B28, 0, 0);
}

uint64_t sub_245880B28()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_pendingCommandsTask;
  v3 = v1;
  if (*(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_pendingCommandsTask))
  {
    sub_24590CAF4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
    sub_245910DD4();

    v3 = v0[4];
  }

  v4 = v0[5];
  v5 = v0[3];
  v6 = sub_245910D64();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;
  v7[5] = v5;
  v8 = v5;

  v9 = sub_24586D278(0, 0, v4, &unk_24591BF78, v7, MEMORY[0x277CFF420]);
  v0[6] = v9;
  *(v1 + v2) = v9;

  v10 = swift_task_alloc();
  v0[7] = v10;
  v11 = sub_24590CAF4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
  *v10 = v0;
  v10[1] = sub_24583E91C;
  v13 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 2, v9, v11, v12, v13);
}

uint64_t sub_245880D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[19] = a1;
  v6 = sub_24590F354();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v7 = sub_24590EA74();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  v8 = sub_24590EA84();
  v5[28] = v8;
  v5[29] = *(v8 - 8);
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245880EB0, 0, 0);
}

uint64_t sub_245880EB0()
{
  v1 = v0[21];
  v2 = *(v0[20] + 112);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_245880FDC;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ACA8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2458935E8;
  v0[13] = &block_descriptor_259;
  v0[14] = v3;
  [v2 getPendingCommandsWithResponseAPDUs:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_245880FDC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_245881194;
  }

  else
  {
    v2 = sub_2458810EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2458810EC()
{
  v1 = *(v0 + 160);
  **(v0 + 152) = *(v0 + 144);
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_pendingCommandsTask) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_245881194()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[25];
  v15 = v0[24];
  v16 = v0[23];
  v17 = v0[22];
  v18 = v0[20];
  swift_willThrow();
  (*(v5 + 104))(v6, *MEMORY[0x277CFF920], v7);
  v8 = v2;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA94();
  sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  v9 = swift_allocError();
  v10 = *(v4 + 16);
  v10(v11, v1, v3);
  sub_24590C714();
  sub_24590C724();
  (*(v16 + 8))(v15, v17);

  swift_allocError();
  v10(v12, v1, v3);
  swift_willThrow();

  (*(v4 + 8))(v1, v3);
  *(v18 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_pendingCommandsTask) = 0;

  v13 = v0[1];

  return v13();
}

uint64_t sub_245881410@<X0>(uint64_t a1@<X8>)
{
  v21 = sub_24590F354();
  v2 = *(v21 - 8);
  v3 = MEMORY[0x28223BE20](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = sub_24590E6E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24590DA74();
  if (v11 >> 60 == 15)
  {
    v12 = a1;
    sub_24590C714();
    v13 = sub_24590F344();
    v14 = sub_245910F54();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_245767000, v13, v14, "Unable to fetch the attributeConfig, proofing cannot continue", v15, 2u);
      MEMORY[0x245D77B40](v15, -1, -1);
    }

    (*(v2 + 8))(v5, v21);
    v16 = 1;
    a1 = v12;
  }

  else
  {
    v17 = v10;
    v18 = v11;
    sub_24590BDD4();
    swift_allocObject();
    sub_24590BDC4();
    sub_245892EA0(&qword_27EE2ACA0, MEMORY[0x277CFF6F8]);
    sub_24590BDB4();
    sub_245771C44(v17, v18);

    (*(v7 + 32))(a1, v9, v6);
    v16 = 0;
  }

  return (*(v7 + 56))(a1, v16, 1, v6);
}

uint64_t sub_245881858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_245910D34();
  *(v4 + 24) = sub_245910D24();
  v6 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458818F0, v6, v5);
}

uint64_t sub_2458818F0()
{

  sub_2458AD408();

  v1 = sub_2458919E0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_245916860;
    *(v4 + 32) = v1;
    sub_24579D5E0(0, &qword_27EE28F28);
    v5 = v1;
    v6 = sub_245910C34();

    [v3 setViewControllers:v6 animated:0];
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_245881A1C()
{
  v1[25] = v0;
  v2 = sub_24590F354();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245881AE8, 0, 0);
}

uint64_t sub_245881AE8()
{
  v1 = *(v0[25] + 112);
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_245881C08;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AC90);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2458935E8;
  v0[13] = &block_descriptor_250;
  v0[14] = v2;
  [v1 proofingFlowAvailabilityWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_245881C08()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_245882094;
  }

  else
  {
    v2 = sub_245881D18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245881D18()
{
  v22 = v0;
  v1 = *(v0 + 184);

  v2 = sub_2458909C8(v1);
  v3 = *(v0 + 200);

  *(v3 + 216) = sub_24590DDA4();
  *(v3 + 224) = v4 & 1;
  sub_24590C714();
  v5 = v2;
  v6 = sub_24590F344();
  v7 = sub_245910F54();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 232);
  v10 = *(v0 + 208);
  v11 = *(v0 + 216);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136315138;
    v21 = v13;
    *(v0 + 168) = sub_24590DDA4();
    *(v0 + 176) = v14 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AC98);
    v15 = sub_2459112B4();
    v20 = v10;
    v17 = sub_2458CC378(v15, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_245767000, v6, v7, "updateCurrentProofingActionStatus: Setting the CurrentProofingActionStatus to %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245D77B40](v13, -1, -1);
    MEMORY[0x245D77B40](v12, -1, -1);

    (*(v11 + 8))(v9, v20);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_245882094()
{
  v19 = v0;
  swift_willThrow();
  v1 = v0[30];
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v17 = v0[28];
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_2459117D4();
    v11 = sub_2458CC378(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_245767000, v3, v4, "Received an error during proofing view update %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v13 = v0[27];
    v12 = v0[28];
    v14 = v0[26];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_245882298()
{
  v1 = *(v0[19] + 112);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2458823B8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AC90);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2458935E8;
  v0[13] = &block_descriptor_403;
  v0[14] = v2;
  [v1 proofingFlowAvailabilityWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2458823B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_24588254C;
  }

  else
  {
    v2 = sub_2458824C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2458824C8()
{
  v1 = *(v0 + 144);
  v2 = sub_24590D454();
  v3 = sub_24590D464();

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_24588254C()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458825B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x2822009F8](sub_2458825E0, 0, 0);
}

uint64_t sub_2458825E0()
{
  v1 = *(v0[23] + 112);
  v2 = sub_2459109C4();
  v0[24] = v2;
  v3 = sub_2459109C4();
  v0[25] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_245882740;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2ACF8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2458935E8;
  v0[13] = &block_descriptor_399;
  v0[14] = v4;
  [v1 proofingStatusFor:v2 country:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_245882740()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_2458828C0;
  }

  else
  {
    v2 = sub_245882850;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245882850()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2458828C0()
{
  v1 = v0[25];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_245882938()
{
  v1[2] = v0;
  v2 = sub_24590EA74();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_24590F354();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245882A6C, 0, 0);
}

uint64_t sub_245882A6C()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "Waiting for the liveness config fetch lock", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[10];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[2];

  v8 = *(v6 + 8);
  v0[11] = v8;
  v8(v4, v5);
  v9 = *(v7 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfigFetchTask);
  v0[12] = v9;
  if (v9)
  {

    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_245882F70;

    return MEMORY[0x282200460]();
  }

  v11 = v0[2];
  v12 = *(v11 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfigFetchError);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v12 = *(v11 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfig);
    if (v12)
    {
      v16 = v12;
      v17 = sub_24590D434();
      if (v17 && (v17, (v18 = sub_24590D424()) != 0))
      {
        v19 = v0[2];

        if (*(v19 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingInlineStepUp) == 1)
        {
          sub_24590C714();
          v20 = sub_24590F344();
          v21 = sub_245910F54();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 0;
            _os_log_impl(&dword_245767000, v20, v21, "Passive completed, performing inline active step up.", v22, 2u);
            MEMORY[0x245D77B40](v22, -1, -1);
          }

          v23 = v0[11];
          v24 = v0[9];
          v25 = v0[6];

          v23(v24, v25);
          sub_24590D424();
          objc_allocWithZone(sub_24590D444());
        }

        else
        {
          sub_24590C714();
          v26 = sub_24590F344();
          v27 = sub_245910F54();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&dword_245767000, v26, v27, "Performing passive first, will step up inline.", v28, 2u);
            MEMORY[0x245D77B40](v28, -1, -1);
          }

          v29 = v0[11];
          v30 = v0[8];
          v31 = v0[6];
          v32 = v0[2];

          v29(v30, v31);
          *(v32 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_shouldPerformInlineStepUp) = 1;
          sub_24590D434();
          objc_allocWithZone(sub_24590D444());
        }

        v12 = sub_24590D414();

        v14 = 0;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_10;
    }

    (*(v0[4] + 104))(v0[5], *MEMORY[0x277CFFA40], v0[3]);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v12 = swift_allocError();
    sub_24590EA94();
  }

  v14 = 1;
LABEL_10:

  v15 = v0[1];

  return v15(v12, v14);
}

uint64_t sub_245882F70()
{

  return MEMORY[0x2822009F8](sub_245883088, 0, 0);
}

uint64_t sub_245883088()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfigFetchError);
  if (v2)
  {
    v3 = v2;
LABEL_3:
    v4 = 1;
    goto LABEL_4;
  }

  v2 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfig);
  if (!v2)
  {
    (*(v0[4] + 104))(v0[5], *MEMORY[0x277CFFA40], v0[3]);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v2 = swift_allocError();
    sub_24590EA94();
    goto LABEL_3;
  }

  v7 = v2;
  v8 = sub_24590D434();
  if (v8 && (v8, (v9 = sub_24590D424()) != 0))
  {
    v10 = v0[2];

    if (*(v10 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingInlineStepUp) == 1)
    {
      sub_24590C714();
      v11 = sub_24590F344();
      v12 = sub_245910F54();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_245767000, v11, v12, "Passive completed, performing inline active step up.", v13, 2u);
        MEMORY[0x245D77B40](v13, -1, -1);
      }

      v14 = v0[11];
      v15 = v0[9];
      v16 = v0[6];

      v14(v15, v16);
      sub_24590D424();
      objc_allocWithZone(sub_24590D444());
    }

    else
    {
      sub_24590C714();
      v17 = sub_24590F344();
      v18 = sub_245910F54();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_245767000, v17, v18, "Performing passive first, will step up inline.", v19, 2u);
        MEMORY[0x245D77B40](v19, -1, -1);
      }

      v20 = v0[11];
      v21 = v0[8];
      v22 = v0[6];
      v23 = v0[2];

      v20(v21, v22);
      *(v23 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_shouldPerformInlineStepUp) = 1;
      sub_24590D434();
      objc_allocWithZone(sub_24590D444());
    }

    v2 = sub_24590D414();

    v4 = 0;
  }

  else
  {
    v4 = 0;
  }

LABEL_4:

  v5 = v0[1];

  return v5(v2, v4);
}

uint64_t sub_245883448()
{
  v1 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfig);
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;
  v4 = sub_24590D424();
  if (v4 && (v4, (v5 = sub_24590D434()) != 0))
  {
    v6 = v5;

    return 0x7453656E696C6E69;
  }

  else
  {
    v8 = sub_24590D434();
    if (v8)
    {
      v9 = v8;

      return 0x65766973736170;
    }

    else
    {
      v10 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp);

      if (v10)
      {
        return 0x657453636E797361;
      }

      else
      {
        return 0x657669746361;
      }
    }
  }
}

uint64_t sub_245883548(void *a1)
{
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v6 = sub_24590F344();
  v7 = sub_245910F54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_245767000, v6, v7, "Invoked delegate to close the view", v8, 2u);
    MEMORY[0x245D77B40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_2458836B4();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2458CB9D8(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2458836B4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager__termsAndConditions);
  os_unfair_lock_lock((v2 + 32));
  sub_245892420((v2 + 16));
  os_unfair_lock_unlock((v2 + 32));

  sub_2458AD408();

  sub_24578AD00(0, 0);

  v3 = MEMORY[0x277D84F98];
  *(v1 + 264) = MEMORY[0x277D84F98];

  *(v1 + 272) = v3;

  v4 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_cardArtData;
  swift_beginAccess();
  *(v1 + v4) = v3;

  *(v1 + 184) = 0;
  *(v1 + 192) = 0;

  swift_unknownObjectWeakAssign();
  v5 = *(v1 + 192);
  if (v5)
  {
    v6 = *(v1 + 184);

    sub_245877F78(v6, v5);

    *(v1 + 184) = 0;
    *(v1 + 192) = 0;
  }

  *(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessVideoUploadsManager) = 0;

  *(v1 + 216) = 0;
  *(v1 + 224) = 1;
  return result;
}

uint64_t sub_245883814()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_24590F354();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v9 = sub_24590F344();
  v10 = sub_245910F54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_245767000, v9, v10, "notifyActiveConfigurationChange: notify active configurations changed invoked on the caller", v11, 2u);
    MEMORY[0x245D77B40](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = sub_245910D64();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v1;

  sub_2458B90EC(0, 0, v4, &unk_24591BF38, v13);
}

uint64_t sub_245883A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a4;
  v5 = sub_24590F354();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245883B3C, 0, 0);
}

uint64_t sub_245883B3C()
{
  v1 = *(v0[25] + 112);
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_245883C5C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AC90);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2458935E8;
  v0[13] = &block_descriptor_238;
  v0[14] = v2;
  [v1 proofingFlowAvailabilityWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_245883C5C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_245884D6C;
  }

  else
  {
    v2 = sub_245883D6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245883D6C()
{
  v69 = v0;
  v1 = *(v0 + 184);
  *(v0 + 288) = v1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = sub_24590D464();
    sub_2458CBE90(v2);
    swift_unknownObjectRelease();
  }

  sub_24579D5E0(0, &qword_27EE2B020);
  v3 = sub_24590D924();
  v4 = MEMORY[0x245D76600](v3);

  if ((v4 & 1) == 0)
  {

    goto LABEL_12;
  }

  sub_24590C714();
  v5 = sub_24590F344();
  v6 = sub_245910F54();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_245767000, v5, v6, "Internal setting for enableUIUpdateOnStatusChange is enabled. Will update UI when there is a proofing status change", v7, 2u);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  v8 = *(v0 + 272);
  v9 = *(v0 + 208);
  v10 = *(v0 + 216);

  v11 = *(v10 + 8);
  v11(v8, v9);

  v12 = sub_2458909C8(v1);
  *(v0 + 296) = v12;

  sub_24590DDA4();
  if (v13)
  {
    sub_24590C714();
    v14 = sub_24590F344();
    v15 = sub_245910F54();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 264);
    v18 = *(v0 + 208);
    if (v16)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_245767000, v14, v15, "notifyActiveConfigurationChange: the action status doesn't exist. Cannot continue with updating the views", v19, 2u);
      MEMORY[0x245D77B40](v19, -1, -1);
    }

    v11(v17, v18);
    goto LABEL_12;
  }

  sub_24590C714();
  v22 = sub_24590F344();
  v23 = sub_245910F54();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 256);
  v26 = *(v0 + 208);
  if (v24)
  {
    v65 = *(v0 + 208);
    v27 = swift_slowAlloc();
    v66 = v11;
    v28 = swift_slowAlloc();
    v68[0] = v28;
    *v27 = 136315138;
    v29 = sub_24590DC64();
    v64 = v25;
    v31 = sub_2458CC378(v29, v30, v68);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_245767000, v22, v23, "notifyActiveConfigurationChange: The action status is %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v32 = v28;
    v11 = v66;
    MEMORY[0x245D77B40](v32, -1, -1);
    MEMORY[0x245D77B40](v27, -1, -1);

    v33 = v64;
    v34 = v65;
  }

  else
  {

    v33 = v25;
    v34 = v26;
  }

  v11(v33, v34);
  v35 = *(v0 + 200);
  if (*(v35 + 224) != 1)
  {
    v43 = sub_24590DC74();
    if (v43 != sub_24590DC74())
    {
      sub_24590C714();
      v59 = sub_24590F344();
      v60 = sub_245910F54();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_245767000, v59, v60, "notifyActiveConfigurationChange: Updating the UI by fetching the new views based on a different action status", v61, 2u);
        MEMORY[0x245D77B40](v61, -1, -1);
      }

      v62 = *(v0 + 232);
      v63 = *(v0 + 208);

      v11(v62, v63);
      sub_24590DDA4();
      v41 = swift_task_alloc();
      *(v0 + 304) = v41;
      *v41 = v0;
      v42 = sub_245884654;
      goto LABEL_28;
    }

    sub_24590C714();

    v44 = sub_24590F344();
    v45 = sub_245910F54();

    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 240);
    v48 = *(v0 + 208);
    if (v46)
    {
      v67 = v11;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v68[0] = v50;
      *v49 = 136315394;
      v51 = *(v35 + 224);
      *(v0 + 168) = *(v35 + 216);
      *(v0 + 176) = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AC98);
      v52 = sub_2459112B4();
      v54 = v48;
      v55 = sub_2458CC378(v52, v53, v68);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2080;
      v56 = sub_24590DC64();
      v58 = sub_2458CC378(v56, v57, v68);

      *(v49 + 14) = v58;
      _os_log_impl(&dword_245767000, v44, v45, "notifyActiveConfigurationChange: The currentProofingActionStatus %s and the activeConfiguration.actionStatus %s are equal. No need to update the views. ", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D77B40](v50, -1, -1);
      MEMORY[0x245D77B40](v49, -1, -1);

      v67(v47, v54);
    }

    else
    {

      v11(v47, v48);
    }

LABEL_12:

    v20 = *(v0 + 8);

    return v20();
  }

  sub_24590C714();
  v36 = sub_24590F344();
  v37 = sub_245910F54();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_245767000, v36, v37, "notifyActiveConfigurationChange: currentProofingActionStatus is nil", v38, 2u);
    MEMORY[0x245D77B40](v38, -1, -1);
  }

  v39 = *(v0 + 248);
  v40 = *(v0 + 208);

  v11(v39, v40);
  v41 = swift_task_alloc();
  *(v0 + 320) = v41;
  *v41 = v0;
  v42 = sub_245884A3C;
LABEL_28:
  v41[1] = v42;

  return sub_2458911C0(v12);
}

uint64_t sub_245884654()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_245884820;
  }

  else
  {
    v2 = sub_245884768;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245884768()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_245884820()
{
  v20 = v0;
  v1 = *(v0 + 288);

  v2 = *(v0 + 312);
  sub_24590C714();
  v3 = v2;
  v4 = sub_24590F344();
  v5 = sub_245910F64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 216);
    v18 = *(v0 + 224);
    v7 = *(v0 + 208);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_2459117D4();
    v12 = sub_2458CC378(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_245767000, v4, v5, "notifyActiveConfigurationChange: received an error in checking the proofing status %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v15 = *(v0 + 208);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_245884A3C()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_245884B50;
  }

  else
  {
    v2 = sub_2458935EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245884B50()
{
  v20 = v0;
  v1 = *(v0 + 288);

  v2 = *(v0 + 328);
  sub_24590C714();
  v3 = v2;
  v4 = sub_24590F344();
  v5 = sub_245910F64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 216);
    v18 = *(v0 + 224);
    v7 = *(v0 + 208);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_2459117D4();
    v12 = sub_2458CC378(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_245767000, v4, v5, "notifyActiveConfigurationChange: received an error in checking the proofing status %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v15 = *(v0 + 208);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_245884D6C()
{
  v19 = v0;
  swift_willThrow();
  v1 = v0[35];
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v17 = v0[28];
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_2459117D4();
    v11 = sub_2458CC378(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_245767000, v3, v4, "notifyActiveConfigurationChange: received an error in checking the proofing status %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v13 = v0[27];
    v12 = v0[28];
    v14 = v0[26];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_245884F84(void *a1, uint64_t a2)
{
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 authorizationStatus] == 2)
  {

    sub_24590E434();
    sub_24590E274();
    v8 = *(**(a2 + 160) + 96);

    v8(v9);

    sub_24586F98C();
    sub_24590E484();
  }

  else
  {
    sub_24590C714();
    v11 = sub_24590F344();
    v12 = sub_245910F54();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_245767000, v11, v12, "The notification has not been authorized by the user", v13, 2u);
      MEMORY[0x245D77B40](v13, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

void *sub_24588520C()
{
  v1 = v0[29];
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_textReplacementHelper);
  v3 = v0[33];
  v4 = v0[34];
  v6 = v0[35];
  v5 = v0[36];
  type metadata accessor for IdentityProofingUIConfigFactory();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v1;
  v7[4] = v2;
  v7[5] = v4;
  v7[6] = v6;
  v7[7] = v5;

  return v7;
}

void sub_2458852A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = &v42 - v3;
  v4 = sub_24590EA74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24590F354();
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v17 = sub_24590CDC4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v1[21];
  if (!v21)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CFFBE8], v4);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v26 = swift_allocError();
    sub_24590EA94();
    sub_245883548(v26);
LABEL_20:

    return;
  }

  v42 = v4;
  v43 = v7;
  v44 = v21;
  sub_24590DDB4();
  sub_24590CDD4();
  v22 = (*(v18 + 88))(v20, v17);
  if (v22 == *MEMORY[0x277CFF440])
  {
    v23 = v1;
    v24 = v1[36];
    if (v24)
    {
      v25 = 35;
LABEL_9:
      v27 = v23[v25];

      v28 = sub_245910D64();
      v29 = v45;
      (*(*(v28 - 8) + 56))(v45, 1, 1, v28);
      v30 = swift_allocObject();
      v30[2] = 0;
      v30[3] = 0;
      v31 = v44;
      v30[4] = v23;
      v30[5] = v31;
      v30[6] = v27;
      v30[7] = v24;

      sub_2458B90EC(0, 0, v29, &unk_24591BF28, v30);

      return;
    }

    sub_24590C714();
    v36 = sub_24590F344();
    v37 = sub_245910F54();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_245767000, v36, v37, "State of the document doesn't exist. Cannot invoke provision identity", v38, 2u);
      MEMORY[0x245D77B40](v38, -1, -1);
    }

    (*(v46 + 8))(v16, v47);
    (*(v5 + 104))(v43, *MEMORY[0x277CFF9B8], v42);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v26 = swift_allocError();
LABEL_19:
    sub_24590EA94();
    sub_245883548(v26);

    goto LABEL_20;
  }

  if (v22 == *MEMORY[0x277CFF448])
  {
    v23 = v1;
    v24 = v1[38];
    if (v24)
    {
      v25 = 37;
      goto LABEL_9;
    }

    sub_24590C714();
    v39 = sub_24590F344();
    v40 = sub_245910F54();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_245767000, v39, v40, "Country of the document doesn't exist. Cannot invoke provision identity", v41, 2u);
      MEMORY[0x245D77B40](v41, -1, -1);
    }

    (*(v46 + 8))(v14, v47);
    (*(v5 + 104))(v43, *MEMORY[0x277CFF9F8], v42);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v26 = swift_allocError();
    goto LABEL_19;
  }

  sub_24590C714();
  v32 = sub_24590F344();
  v33 = sub_245910F64();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_245767000, v32, v33, "Unexpected document type. Cannot invoke provision identity", v34, 2u);
    MEMORY[0x245D77B40](v34, -1, -1);
  }

  (*(v46 + 8))(v11, v47);
  v47 = "provisionIdentity()";
  (*(v5 + 104))(v43, *MEMORY[0x277CFF980], v42);
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_245892EA0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  v35 = swift_allocError();
  sub_24590EA94();
  sub_245883548(v35);

  (*(v18 + 8))(v20, v17);
}

uint64_t sub_245885C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  v8 = sub_24590F354();
  v7[26] = v8;
  v7[27] = *(v8 - 8);
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245885CDC, 0, 0);
}

uint64_t sub_245885CDC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = *(v2 + 112);
  v4 = sub_2459109C4();
  v0[30] = v4;
  v5 = *(v2 + 144);
  v0[2] = v0;
  v0[3] = sub_245885E24;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FF0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579D0B4;
  v0[13] = &block_descriptor_231;
  v0[14] = v6;
  [v3 provisionIdentityWithConfiguration:v1 sessionLookupIdentifier:v4 proofingOptions:v5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_245885E24()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_245886048;
  }

  else
  {
    v2 = sub_245885F34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245885F34()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 232);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "Successfully invoked provisionIdentity", v7, 2u);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  (*(v6 + 8))(v4, v5);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_245886048()
{
  v21 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  swift_willThrow();

  sub_24590C714();
  v3 = v2;
  v4 = sub_24590F344();
  v5 = sub_245910F54();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 248);
    v7 = *(v0 + 216);
    v19 = *(v0 + 224);
    v8 = *(v0 + 208);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_2459117D4();
    v13 = sub_2458CC378(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_245767000, v4, v5, "Error received on provisionIdentity invocation %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D77B40](v10, -1, -1);
    MEMORY[0x245D77B40](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v0 + 216);
    v14 = *(v0 + 224);
    v16 = *(v0 + 208);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_245886234@<X0>(char a1@<W0>, unint64_t *a2@<X8>)
{
  v4 = sub_24590E544();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v17 = *(v5 + 56);
  v17(&v43 - v15, 1, 1, v4);
  if (a1 == 1)
  {
    v14 = v11;
    v18 = *(v44 + 232);
    if (v18 && *(v18 + 16))
    {

      v19 = sub_24588C5BC(0x7365527472656C61, 0xEF6B6361426E6163);
      if (v22)
      {
        goto LABEL_6;
      }

LABEL_10:
      v21 = 1;
      goto LABEL_11;
    }

LABEL_12:
    v21 = 1;
    goto LABEL_13;
  }

  if (a1)
  {
    goto LABEL_14;
  }

  v18 = *(v44 + 232);
  if (!v18 || !*(v18 + 16))
  {
    goto LABEL_12;
  }

  v19 = sub_24588C5BC(0xD000000000000010, 0x800000024592B770);
  if ((v20 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  (*(v5 + 16))(v14, *(v18 + 56) + *(v5 + 72) * v19, v4);
  v21 = 0;
LABEL_11:

LABEL_13:
  v17(v14, v21, 1, v4);
  sub_24585EDD4(v14, v16, &qword_27EE28F30);
LABEL_14:
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4))
  {
    v24 = 0;
LABEL_16:
    v25 = 0;
    goto LABEL_19;
  }

  (*(v5 + 16))(v7, v16, v4);
  v26 = sub_24590E504();
  v24 = v27;
  (*(v5 + 8))(v7, v4);
  if (!v24)
  {
    goto LABEL_16;
  }

  v28 = sub_24586C880(v26, v24);
  v25 = v29;
  v24 = v28;

LABEL_19:
  if (v23(v16, 1, v4))
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
LABEL_30:
    result = sub_245778F94(v16, &qword_27EE28F30);
    *a2 = v24;
    a2[1] = v25;
    a2[2] = v32;
    a2[3] = v33;
    a2[4] = v30;
    a2[5] = v31;
    return result;
  }

  v34 = v24;
  (*(v5 + 16))(v7, v16, v4);
  v35 = sub_24590E514();
  (*(v5 + 8))(v7, v4);
  if (!v35)
  {
    v30 = 0;
LABEL_28:
    v31 = 0;
    v32 = 0;
    v33 = 0;
    goto LABEL_29;
  }

  v30 = v35[2];
  if (!v30)
  {

    goto LABEL_28;
  }

  v36 = v35[4];
  v37 = v35[5];

  v32 = sub_24586C880(v36, v37);
  v33 = v38;

  if (!v33)
  {

    v30 = 0;
    v31 = 0;
    v32 = 0;
    goto LABEL_29;
  }

  if (v30 == 1)
  {

    v30 = 0;
    v31 = 0;
LABEL_29:
    v24 = v34;
    goto LABEL_30;
  }

  if (v35[2] >= 2uLL)
  {
    v40 = v35[6];
    v41 = v35[7];

    v30 = sub_24586C880(v40, v41);
    v31 = v42;

    if (!v31)
    {
      v30 = 0;
    }

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_2458866E0(void *a1, void *a2)
{
  v5 = sub_2459107E4();
  v18 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_245910814();
  v8 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24579D5E0(0, &qword_27EE2ABC0);
  v11 = sub_245911034();
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_2458924B8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_217;
  v13 = _Block_copy(aBlock);

  v14 = a1;
  v15 = a2;

  sub_245910804();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_245892EA0(&qword_27EE2A980, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18);
  sub_2459113A4();
  MEMORY[0x245D76690](0, v10, v7, v13);
  _Block_release(v13);

  (*(v18 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v17);
}

void sub_2458869DC(void *a1, void *a2)
{
  v3 = v2;
  v41 = a2;
  v42 = a1;
  v43 = sub_24590E544();
  v4 = *(v43 - 8);
  v5 = MEMORY[0x28223BE20](v43);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = sub_24590F354();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v14 = sub_24590F344();
  v15 = sub_245910F54();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_245767000, v14, v15, "Will show an error alert due to an internal error", v16, 2u);
    MEMORY[0x245D77B40](v16, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v17 = *(v3 + 232);
  if (!v17 || !*(v17 + 16))
  {
    goto LABEL_23;
  }

  v18 = sub_24588C5BC(0xD000000000000018, 0x800000024592B6F0);
  if ((v19 & 1) == 0)
  {

LABEL_23:
    sub_2459115D4();
    __break(1u);
    return;
  }

  v20 = v43;
  (*(v4 + 16))(v7, *(v17 + 56) + *(v4 + 72) * v18, v43);

  (*(v4 + 32))(v9, v7, v20);
  v21 = sub_24590E504();
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  sub_24586C880(v21, v23);

  v24 = sub_24590E534();
  if (v24)
  {
    if (v24[2])
    {
      v25 = v24[4];
      v26 = v24[5];

      sub_24586C880(v25, v26);
    }
  }

  v27 = sub_24590E514();
  if (v27)
  {
    if (v27[2])
    {
      v28 = v27[4];
      v29 = v27[5];

      sub_24586C880(v28, v29);
    }
  }

  v30 = sub_2459109C4();

  v31 = sub_2459109C4();

  v32 = [objc_opt_self() alertControllerWithTitle:v30 message:v31 preferredStyle:1];

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v35 = v41;
  *(v34 + 16) = v33;
  *(v34 + 24) = v35;

  v36 = v35;
  v37 = sub_2459109C4();

  aBlock[4] = sub_2458924E4;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245823208;
  aBlock[3] = &block_descriptor_224;
  v38 = _Block_copy(aBlock);

  v39 = [objc_opt_self() actionWithTitle:v37 style:0 handler:v38];
  _Block_release(v38);

  [v32 addAction_];
  if (v42)
  {
    [v42 presentViewController:v32 animated:1 completion:0];

    (*(v4 + 8))(v9, v43);
  }

  else
  {
    (*(v4 + 8))(v9, v43);
  }
}

void sub_245886FC4(uint64_t a1)
{
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v6 = sub_24590F344();
  v7 = sub_245910F54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_245767000, v6, v7, "Deinitializing the termsAndConditionsViewController object in proofingFlowManager", v8, 2u);
    MEMORY[0x245D77B40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(a1 + 176);
  *(a1 + 176) = 0;
}

BOOL sub_245887110(void *a1)
{
  type metadata accessor for IDScanViewController(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_scanSide;
    if (*(v2 + OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_scanSide))
    {
      v4 = a1;
    }

    else
    {
      v6 = v2;
      v7 = a1;

      v8 = sub_2458AE1C0();

      if (v8)
      {

        return 1;
      }

      if (*(v6 + v3) != 1)
      {

        goto LABEL_10;
      }
    }

    v5 = sub_2458AE1C0();

    if (!v5)
    {
      return 1;
    }
  }

LABEL_10:
  type metadata accessor for IdentityProofingReviewSubmissionViewController();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for IdentityProofingProgressViewController();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for RGBCaptureViewController();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for IdentityProofingFedStatsOptinViewController();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for UsingYourIDViewController();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for IdentityProofingLivenessConsentViewController();
  return swift_dynamicCastClass() != 0;
}

uint64_t sub_245887278()
{
  if (*(v0 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingInlineStepUp))
  {
    return 2;
  }

  if (*(v0 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp))
  {
    return 3;
  }

  v2 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfig;
  v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessConfig);
  if (!v3)
  {
    return 4;
  }

  v4 = v0;
  v5 = v3;
  v6 = sub_24590D434();

  if (v6)
  {
  }

  else
  {
    v11 = *(v4 + v2);
    if (!v11)
    {
      return 4;
    }

    v12 = v11;
    v9 = sub_24590D424();

    if (v9)
    {
      v10 = 0;
      goto LABEL_14;
    }
  }

  v7 = *(v4 + v2);
  if (v7)
  {
    v8 = v7;
    v9 = sub_24590D434();

    if (v9)
    {
      v10 = 1;
LABEL_14:

      return v10;
    }
  }

  return 4;
}

uint64_t sub_245887358(void *a1)
{
  v54 = a1;
  v2 = sub_24590F354();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v52 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  v55 = v1;
  v56 = v4;
  v17 = *(v1 + 232);
  v59 = &v52 - v15;
  if (v17 && *(v17 + 16))
  {

    v18 = sub_24588C5BC(0xD00000000000001FLL, 0x800000024592B510);
    if (v19)
    {
      v20 = v18;
      v21 = *(v17 + 56);
      v22 = sub_24590E544();
      v23 = *(v22 - 8);
      v24 = v23;
      v25 = v21 + *(v23 + 72) * v20;
      v16 = v59;
      (*(v23 + 16))(v59, v25, v22);

      (*(v24 + 56))(v16, 0, 1, v22);
    }

    else
    {

      v22 = sub_24590E544();
      v16 = v59;
      (*(*(v22 - 8) + 56))(v59, 1, 1, v22);
    }
  }

  else
  {
    v22 = sub_24590E544();
    (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  }

  sub_245778F2C(v16, v14, &qword_27EE28F30);
  sub_24590E544();
  v26 = *(v22 - 8);
  v27 = *(v26 + 48);
  if (v27(v14, 1, v22) == 1)
  {
    sub_245778F94(v14, &qword_27EE28F30);
  }

  else
  {
    v28 = sub_24590E504();
    v30 = v29;
    (*(v26 + 8))(v14, v22);
    if (v30)
    {
      v53 = sub_24586C880(v28, v30);
      v32 = v31;

      goto LABEL_12;
    }
  }

  v53 = 0;
  v32 = 0;
LABEL_12:
  sub_245778F2C(v16, v11, &qword_27EE28F30);
  if (v27(v11, 1, v22) == 1)
  {
    sub_245778F94(v11, &qword_27EE28F30);
  }

  else
  {
    v33 = sub_24590E534();
    (*(v26 + 8))(v11, v22);
    if (v33)
    {
      if (v33[2])
      {
        v35 = v33[4];
        v34 = v33[5];

        sub_24586C880(v35, v34);
        v37 = v36;
        v16 = v59;

        goto LABEL_19;
      }
    }
  }

  v37 = 0;
LABEL_19:
  sub_245778F2C(v16, v8, &qword_27EE28F30);
  if (v27(v8, 1, v22) == 1)
  {
    sub_245778F94(v8, &qword_27EE28F30);
  }

  else
  {
    v38 = sub_24590E514();
    (*(v26 + 8))(v8, v22);
    if (!v38)
    {
      if (!v32)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    if (v38[2])
    {
      v39 = v38[4];
      v40 = v38[5];

      sub_24586C880(v39, v40);
      v38 = v41;

      if (!v32)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  v38 = 0;
  if (!v32)
  {
    goto LABEL_31;
  }

LABEL_26:
  if (v37 && v38)
  {
    v42 = sub_2459109C4();

    v43 = sub_2459109C4();

    v44 = [objc_opt_self() alertControllerWithTitle:v42 message:v43 preferredStyle:1];

    v45 = sub_2459109C4();

    v46 = [objc_opt_self() actionWithTitle:v45 style:0 handler:0];

    [v44 addAction_];
    [v54 presentViewController:v44 animated:1 completion:0];

    return sub_245778F94(v59, &qword_27EE28F30);
  }

LABEL_31:

  v47 = v56;
  sub_24590C714();
  v48 = sub_24590F344();
  v49 = sub_245910F54();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_245767000, v48, v49, "Unable to show the cancellation failure alert as the server doesn't have the related fields in the config", v50, 2u);
    MEMORY[0x245D77B40](v50, -1, -1);
  }

  (*(v57 + 8))(v47, v58);
  return sub_245778F94(v59, &qword_27EE28F30);
}

uint64_t sub_245887AB8(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v84 = a5;
  v85 = a6;
  v83 = a4;
  v86 = a1;
  v9 = sub_24590F354();
  v90 = *(v9 - 1);
  v91 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v80 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v80 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v80 - v22;
  v92 = v6;
  v24 = *(v6 + 232);
  v88 = a3;
  v89 = v11;
  v87 = a2;
  if (v24 && *(v24 + 16))
  {

    v25 = sub_24588C5BC(a2, a3);
    if (v26)
    {
      v27 = v25;
      v28 = *(v24 + 56);
      v29 = sub_24590E544();
      v30 = *(v29 - 8);
      (*(v30 + 16))(v23, v28 + *(v30 + 72) * v27, v29);

      (*(v30 + 56))(v23, 0, 1, v29);
      goto LABEL_7;
    }
  }

  v29 = sub_24590E544();
  (*(*(v29 - 8) + 56))(v23, 1, 1, v29);
LABEL_7:
  sub_245778F2C(v23, v21, &qword_27EE28F30);
  sub_24590E544();
  v31 = *(v29 - 8);
  v32 = *(v31 + 48);
  if (v32(v21, 1, v29) == 1)
  {
    sub_245778F94(v21, &qword_27EE28F30);
  }

  else
  {
    v33 = sub_24590E504();
    v35 = v34;
    (*(v31 + 8))(v21, v29);
    if (v35)
    {
      v82 = sub_24586C880(v33, v35);
      v37 = v36;

      goto LABEL_12;
    }
  }

  v82 = 0;
  v37 = 0;
LABEL_12:
  sub_245778F2C(v23, v18, &qword_27EE28F30);
  if (v32(v18, 1, v29) == 1)
  {
    sub_245778F94(v18, &qword_27EE28F30);
  }

  else
  {
    v38 = sub_24590E534();
    (*(v31 + 8))(v18, v29);
    if (v38)
    {
      if (v38[2])
      {
        v80 = v37;
        v39 = v23;
        v40 = v38[4];
        v41 = v38[5];

        v81 = sub_24586C880(v40, v41);
        v43 = v42;
        v23 = v39;
        v37 = v80;

        goto LABEL_19;
      }
    }
  }

  v81 = 0;
  v43 = 0;
LABEL_19:
  sub_245778F2C(v23, v15, &qword_27EE28F30);
  if (v32(v15, 1, v29) == 1)
  {
    sub_245778F94(v15, &qword_27EE28F30);
    v44 = 0;
    v45 = 0;
    if (!v37)
    {
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  v64 = v23;
  v65 = sub_24590E514();
  (*(v31 + 8))(v15, v29);
  if (!v65)
  {
    goto LABEL_33;
  }

  v66 = v65[2];
  if (!v66)
  {

LABEL_33:
    v44 = 0;
    v45 = 0;
    goto LABEL_34;
  }

  v67 = v65[4];
  v68 = v65[5];

  sub_24586C880(v67, v68);
  v45 = v69;

  if (!v45 || v66 == 1)
  {

    v44 = 0;
    goto LABEL_34;
  }

  if (v65[2] >= 2uLL)
  {
    v77 = v65[6];
    v78 = v65[7];

    sub_24586C880(v77, v78);
    v44 = v79;

LABEL_34:
    v23 = v64;
    if (!v37)
    {
      goto LABEL_35;
    }

LABEL_21:
    if (v43 && v45 && v44)
    {
      v46 = sub_2459109C4();

      v47 = sub_2459109C4();

      v90 = [objc_opt_self() alertControllerWithTitle:v46 message:v47 preferredStyle:1];

      v48 = v92;

      v49 = sub_2459109C4();

      v97 = sub_24588C634;
      v98 = v48;
      aBlock = MEMORY[0x277D85DD0];
      v94 = 1107296256;
      v95 = sub_245823208;
      v96 = &block_descriptor_26;
      v50 = _Block_copy(&aBlock);

      v51 = objc_opt_self();
      v91 = [v51 actionWithTitle:v49 style:0 handler:v50];
      _Block_release(v50);

      v52 = swift_allocObject();
      *(v52 + 16) = v48;
      *(v52 + 24) = v83 & 1;
      v53 = v84;
      v54 = v85;
      *(v52 + 32) = v84;
      *(v52 + 40) = v54;
      v55 = v86;
      *(v52 + 48) = v86;

      sub_245771BB4(v53);
      v56 = v55;
      v57 = sub_2459109C4();

      v97 = sub_24588C654;
      v98 = v52;
      aBlock = MEMORY[0x277D85DD0];
      v94 = 1107296256;
      v95 = sub_245823208;
      v96 = &block_descriptor_164;
      v58 = _Block_copy(&aBlock);

      v59 = [v51 actionWithTitle:v57 style:0 handler:v58];
      _Block_release(v58);

      v60 = v90;
      [v90 addAction_];
      [v60 addAction_];
      [v60 setPreferredAction_];
      [v56 presentViewController:v60 animated:1 completion:0];
      v88 = sub_24590E3D4();

      sub_24590E094();
      v89 = v23;
      v61 = *(**(v48 + 160) + 96);

      v61(v62);

      sub_24590E484();

      v63 = v89;
      return sub_245778F94(v63, &qword_27EE28F30);
    }

LABEL_35:

    v71 = v89;
    sub_24590C714();
    v72 = v88;

    v73 = sub_24590F344();
    v74 = sub_245910F54();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock = v76;
      *v75 = 136315138;
      *(v75 + 4) = sub_2458CC378(v87, v72, &aBlock);
      _os_log_impl(&dword_245767000, v73, v74, "Unable to show the %s as the server doesn't have the related fields in the config", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x245D77B40](v76, -1, -1);
      MEMORY[0x245D77B40](v75, -1, -1);
    }

    (*(v90 + 1))(v71, v91);
    v63 = v23;
    return sub_245778F94(v63, &qword_27EE28F30);
  }

  __break(1u);
  return result;
}

uint64_t sub_2458885AC(uint64_t a1, uint64_t a2)
{
  sub_24590E3B4();
  sub_24590E054();

  sub_24590E094();
  v3 = *(**(a2 + 160) + 96);

  v3(v4);

  sub_24590E484();
}

uint64_t sub_2458886F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v41 = a6;
  v42 = a4;
  v43 = a5;
  v50 = a3;
  v7 = sub_2459107E4();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_245910814();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24590F354();
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x28223BE20](v10);
  v37 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v12 - 8);
  v38 = &v37 - v13;
  sub_24590E3B4();
  sub_24590DFE4();

  sub_24590E094();
  v51 = a2;
  v14 = *(**(a2 + 160) + 96);

  v14(v15);

  sub_24590E484();

  if (v50)
  {
    v16 = sub_245910D64();
    v17 = v38;
    (*(*(v16 - 8) + 56))(v38, 1, 1, v16);
    sub_245910D34();
    v18 = v51;

    v19 = v41;
    v20 = sub_245910D24();
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    v21[2] = v20;
    v21[3] = v22;
    v21[4] = v18;
    v21[5] = v19;
    sub_2458B90EC(0, 0, v17, &unk_24591BF10, v21);
  }

  else
  {
    v24 = v51;
    v25 = v37;
    sub_24590C714();
    v26 = sub_24590F344();
    v27 = sub_245910F54();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_245767000, v26, v27, "User has clicked on cancel before a proofing request has been made. Close the view", v28, 2u);
      MEMORY[0x245D77B40](v28, -1, -1);
    }

    (*(v39 + 8))(v25, v40);
    sub_24579D5E0(0, &qword_27EE2ABC0);
    v29 = sub_245911034();
    v30 = swift_allocObject();
    v30[2] = v24;
    v32 = v42;
    v31 = v43;
    v30[3] = v42;
    v30[4] = v31;
    aBlock[4] = sub_24588C668;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2458935A8;
    aBlock[3] = &block_descriptor_170_0;
    v33 = _Block_copy(aBlock);

    sub_245771BB4(v32);

    v34 = v44;
    sub_245910804();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_245892EA0(&qword_27EE2A980, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
    sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18);
    v35 = v46;
    v36 = v49;
    sub_2459113A4();
    MEMORY[0x245D76690](0, v34, v35, v33);
    _Block_release(v33);

    (*(v48 + 8))(v35, v36);
    return (*(v45 + 8))(v34, v47);
  }
}

uint64_t sub_245888D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = sub_2459107E4();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v7 = sub_245910814();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = sub_245910D34();
  v5[25] = sub_245910D24();
  v8 = swift_task_alloc();
  v5[26] = v8;
  *v8 = v5;
  v8[1] = sub_245888EB4;

  return sub_245891A80();
}

uint64_t sub_245888EB4(char a1)
{
  *(*v1 + 216) = a1;

  v3 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245888FF8, v3, v2);
}

uint64_t sub_245888FF8()
{
  v1 = v0;
  v2 = *(v0 + 216);

  sub_24579D5E0(0, &qword_27EE2ABC0);
  v3 = sub_245911034();
  v4 = v1[23];
  v18 = v1[22];
  v16 = v3;
  v17 = v1[21];
  v5 = v1[18];
  v14 = v1[19];
  v15 = v1[20];
  if (v2)
  {
    v1[13] = v1[16];
    v6 = v1 + 15;
    v1[12] = sub_2458935B0;
    v1[8] = MEMORY[0x277D85DD0];
    v1[9] = 1107296256;
    v1[10] = sub_2458935A8;
    v1[11] = &block_descriptor_184;
    v7 = _Block_copy(v1 + 8);
  }

  else
  {
    v9 = v1[16];
    v8 = v1[17];
    v10 = swift_allocObject();
    v1[7] = v10;
    v6 = v1 + 14;
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v1[6] = sub_2458923CC;
    v1[2] = MEMORY[0x277D85DD0];
    v1[3] = 1107296256;
    v1[4] = sub_2458935A8;
    v1[5] = &block_descriptor_180;
    v7 = _Block_copy(v1 + 2);

    v11 = v8;
  }

  sub_245910804();
  *v6 = MEMORY[0x277D84F90];
  sub_245892EA0(&qword_27EE2A980, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18);
  sub_2459113A4();
  MEMORY[0x245D76690](0, v4, v15, v7);
  _Block_release(v7);

  (*(v14 + 8))(v15, v5);
  (*(v18 + 8))(v4, v17);

  v12 = v1[1];

  return v12();
}

uint64_t sub_2458892EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_245910D34();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  return sub_2458092C8(sub_245892AE0, v10);
}

uint64_t sub_245889374(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  sub_24586CD30(a2, a3);
  v11 = sub_245910D64();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_245910D34();

  v12 = a4;
  v13 = sub_245910D24();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a1;
  v14[5] = v12;
  sub_2458B90EC(0, 0, v10, &unk_24591C008, v14);
}

uint64_t sub_2458894CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_245910D34();
  v6[2] = a2;
  v6[3] = a3;
  return sub_2458092C8(sub_245892BC0, v6);
}

uint64_t sub_245889548(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_245910D64();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_245910D34();

  v8 = a2;
  v9 = sub_245910D24();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  v10[5] = v8;
  sub_2458B90EC(0, 0, v6, &unk_24591C010, v10);
}

uint64_t sub_24588968C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2459107E4();
  v21 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_245910814();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24579D5E0(0, &qword_27EE2ABC0);
  v15 = sub_245911034();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  aBlock[4] = sub_245892F3C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_390;
  v17 = _Block_copy(aBlock);

  v18 = a3;

  sub_245910804();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_245892EA0(&qword_27EE2A980, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18);
  sub_2459113A4();
  MEMORY[0x245D76690](0, v14, v11, v17);
  _Block_release(v17);

  (*(v21 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v20);
}

void sub_24588998C(char a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v43 = a4;
  v7 = sub_24590F354();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  if (a2)
  {
    v14 = sub_24590BF94();
    sub_24590C714();
    v15 = v14;
    v16 = sub_24590F344();
    v17 = sub_245910F64();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v42 = a3;
      v40 = v19;
      v44 = v19;
      *v18 = 136446210;
      v20 = v15;
      v21 = [v20 description];
      v41 = v7;
      v22 = v21;
      v23 = v8;
      v24 = sub_245910A04();
      v26 = v25;

      v27 = sub_2458CC378(v24, v26, &v44);

      *(v18 + 4) = v27;
      _os_log_impl(&dword_245767000, v16, v17, "Failed to repair cloud sync state with error %{public}s", v18, 0xCu);
      v28 = v40;
      __swift_destroy_boxed_opaque_existential_1(v40);
      a3 = v42;
      MEMORY[0x245D77B40](v28, -1, -1);
      MEMORY[0x245D77B40](v18, -1, -1);

      (*(v23 + 8))(v13, v41);
    }

    else
    {

      (*(v8 + 8))(v13, v7);
    }

    v38 = v15;
    a3(v15);
  }

  else
  {
    sub_24590C714();
    v29 = sub_24590F344();
    v30 = sub_245910F54();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44 = v32;
      *v31 = 136446210;
      v33 = (a1 & 1) == 0;
      if (a1)
      {
        v34 = 1702195828;
      }

      else
      {
        v34 = 0x65736C6166;
      }

      v35 = v8;
      if (v33)
      {
        v36 = 0xE500000000000000;
      }

      else
      {
        v36 = 0xE400000000000000;
      }

      v37 = sub_2458CC378(v34, v36, &v44);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_245767000, v29, v30, "Repaired iCloud account: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x245D77B40](v32, -1, -1);
      MEMORY[0x245D77B40](v31, -1, -1);

      (*(v35 + 8))(v11, v7);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    a3(0);
  }
}

void sub_245889D3C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_245889DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_245910D34();
  v5[5] = sub_245910D24();
  v6 = swift_task_alloc();
  v5[6] = v6;
  *v6 = v5;
  v6[1] = sub_245889E7C;

  return sub_245891A80();
}

uint64_t sub_245889E7C(char a1)
{
  *(*v1 + 56) = a1;

  v3 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245889FC0, v3, v2);
}

uint64_t sub_245889FC0()
{
  v1 = *(v0 + 56);

  if (v1)
  {
    sub_245883548(0);
  }

  else
  {
    sub_245887358(*(v0 + 24));
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24588A040@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_24588A080(a1);
  *a2 = result;
  return result;
}

uint64_t sub_24588A080(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A800);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v50 - v7;
  v9 = sub_24590F354();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  if (a1)
  {
    v52 = v15;
    v54 = v1;
    v18 = a1;
    sub_24590C714();
    v19 = a1;
    v20 = sub_24590F344();
    v21 = sub_245910F54();

    v22 = os_log_type_enabled(v20, v21);
    v53 = v6;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v51 = v9;
      v24 = v23;
      v50 = swift_slowAlloc();
      v55 = v50;
      *v24 = 136315138;
      swift_getErrorValue();
      v25 = sub_2459117D4();
      v27 = a1;
      v28 = v8;
      v29 = v13;
      v30 = v10;
      v31 = sub_2458CC378(v25, v26, &v55);

      *(v24 + 4) = v31;
      v10 = v30;
      v13 = v29;
      v8 = v28;
      a1 = v27;
      _os_log_impl(&dword_245767000, v20, v21, "Received an error from proofing %s", v24, 0xCu);
      v32 = v50;
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x245D77B40](v32, -1, -1);
      v33 = v24;
      v9 = v51;
      MEMORY[0x245D77B40](v33, -1, -1);
    }

    v34 = *(v10 + 8);
    v34(v17, v9);
    swift_getErrorValue();
    sub_2459117E4();
    v35 = sub_24590EA74();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v8, 1, v35) != 1)
    {
      v43 = v53;
      sub_245778F2C(v8, v53, &qword_27EE2A800);
      v44 = (*(v36 + 88))(v43, v35);
      if (v44 == *MEMORY[0x277CFFAE0] || v44 == *MEMORY[0x277CFFA90])
      {
        goto LABEL_19;
      }

      if (v44 == *MEMORY[0x277CFFB28])
      {
        v45 = v52;
        sub_24590C714();
        v46 = sub_24590F344();
        v47 = sub_245910F54();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_245767000, v46, v47, "Received a provisioning identity failure error", v48, 2u);
          v49 = v48;
          v45 = v52;
          MEMORY[0x245D77B40](v49, -1, -1);
        }

        v34(v45, v9);
        v40 = sub_24588A998();
        goto LABEL_8;
      }

      if (v44 == *MEMORY[0x277CFF930])
      {
LABEL_19:
        sub_245778F94(v8, &qword_27EE2A800);
        v41 = sub_24588A62C();

        return v41;
      }

      (*(v36 + 8))(v53, v35);
    }

    sub_24590C714();
    v37 = sub_24590F344();
    v38 = sub_245910F54();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_245767000, v37, v38, "No specific error Received from proofing. Showing generic error", v39, 2u);
      MEMORY[0x245D77B40](v39, -1, -1);
    }

    v34(v13, v9);
    v40 = sub_24588A62C();
LABEL_8:
    v41 = v40;

    sub_245778F94(v8, &qword_27EE2A800);
    return v41;
  }

  return sub_24588A62C();
}

uint64_t sub_24588A62C()
{
  v1 = v0;
  v2 = sub_24590E544();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = *(v0 + 232);
  if (v12 && *(v12 + 16))
  {

    v13 = sub_24588C5BC(0xD000000000000010, 0x800000024592B610);
    if (v14)
    {
      v15 = *(v3 + 16);
      v15(v9, *(v12 + 56) + *(v3 + 72) * v13, v2);

      (*(v3 + 32))(v11, v9, v2);
      v16 = sub_2457C1E4C();
      v15(v6, v11, v2);

      v16 &= 1u;
      v18 = sub_24586BBB4(v17, v6, v16);
      v19 = objc_allocWithZone(type metadata accessor for IdentityProofingErrorViewController());
      *&v19[OBJC_IVAR____TtC9CoreIDVUI35IdentityProofingErrorViewController_configuration] = v18;
      *&v19[OBJC_IVAR____TtC9CoreIDVUI35IdentityProofingErrorViewController_proofingFlowManager] = v1;
      swift_retain_n();

      v20 = sub_24588DB98(v18, v19, type metadata accessor for IdentityProofingErrorViewConfiguration, &off_28588A038);
      *(*&v20[OBJC_IVAR____TtC9CoreIDVUI35IdentityProofingErrorViewController_configuration] + 24) = &off_28588B5F8;
      swift_unknownObjectWeakAssign();
      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v16;
      *(v22 + 32) = v20;
      v23 = &v20[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
      v24 = *&v20[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
      *v23 = sub_245892440;
      v23[1] = v22;
      v25 = v20;

      sub_245771C34(v24);

      sub_245874374();

      (*(v3 + 8))(v11, v2);
      return v25;
    }
  }

  result = sub_2459115D4();
  __break(1u);
  return result;
}

uint64_t sub_24588A998()
{
  v1 = v0;
  v2 = sub_24590E544();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(v0 + 232);
  if (v12 && *(v12 + 16))
  {

    v13 = sub_24588C5BC(0x676150726F727265, 0xEF64656C69614665);
    if (v14)
    {
      v15 = *(v3 + 16);
      v15(v9, *(v12 + 56) + *(v3 + 72) * v13, v2);

      (*(v3 + 32))(v11, v9, v2);
      v15(v6, v11, v2);

      v17 = sub_24586BBB4(v16, v6, 0);
      v18 = objc_allocWithZone(type metadata accessor for IdentityProofingErrorViewController());
      *&v18[OBJC_IVAR____TtC9CoreIDVUI35IdentityProofingErrorViewController_configuration] = v17;
      *&v18[OBJC_IVAR____TtC9CoreIDVUI35IdentityProofingErrorViewController_proofingFlowManager] = v1;
      swift_retain_n();

      v19 = sub_24588DB98(v17, v18, type metadata accessor for IdentityProofingErrorViewConfiguration, &off_28588A038);
      *(*&v19[OBJC_IVAR____TtC9CoreIDVUI35IdentityProofingErrorViewController_configuration] + 24) = &off_28588B5F8;
      swift_unknownObjectWeakAssign();
      v20 = swift_allocObject();
      swift_weakInit();
      v21 = &v19[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
      v22 = *&v19[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
      *v21 = sub_245892438;
      v21[1] = v20;
      v23 = v19;

      sub_245771C34(v22);

      sub_245874374();

      (*(v3 + 8))(v11, v2);
      return v23;
    }
  }

  result = sub_2459115D4();
  __break(1u);
  return result;
}

uint64_t sub_24588ACD8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_245883548(a3);
  }

  return result;
}

void sub_24588AD38(uint64_t a1, char a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      v7 = objc_allocWithZone(type metadata accessor for ProvideFeedbackViewController());
      *&v7[OBJC_IVAR____TtC9CoreIDVUI29ProvideFeedbackViewController_proofingManager] = v6;
      v8 = &v7[OBJC_IVAR____TtC9CoreIDVUI29ProvideFeedbackViewController_continuation];
      *v8 = sub_245892450;
      v8[1] = v6;
      swift_retain_n();
      v9 = sub_24588ECB0(v7);
      v10 = [a3 navigationController];
      sub_24586D558(v9, v10);
    }

    else
    {
      sub_245883548(0);
    }
  }
}

uint64_t sub_24588AE34()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_245883548(0);
  }

  return result;
}

char *sub_24588AE90@<X0>(void *a1@<X1>, char **a2@<X8>)
{
  result = sub_24588AED0(a1);
  *a2 = result;
  return result;
}

char *sub_24588AED0(void *a1)
{

  v3 = sub_24586B8EC(v1, a1, 0);
  v4 = objc_allocWithZone(type metadata accessor for IdentityProofingErrorViewController());
  *&v4[OBJC_IVAR____TtC9CoreIDVUI35IdentityProofingErrorViewController_configuration] = v3;
  *&v4[OBJC_IVAR____TtC9CoreIDVUI35IdentityProofingErrorViewController_proofingFlowManager] = v1;
  swift_retain_n();

  v5 = sub_24588DB98(v3, v4, type metadata accessor for IdentityProofingErrorViewConfiguration, &off_28588A038);
  *(*&v5[OBJC_IVAR____TtC9CoreIDVUI35IdentityProofingErrorViewController_configuration] + 24) = &off_28588B5F8;
  swift_unknownObjectWeakAssign();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = &v5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  v8 = *&v5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v7 = sub_2458924A8;
  v7[1] = v6;
  v9 = v5;

  sub_245771C34(v8);

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = &v9[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  v12 = *&v9[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v11 = sub_2458924B0;
  v11[1] = v10;

  sub_245771C34(v12);

  sub_245874374();

  return v9;
}

uint64_t sub_24588B09C()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_24590C094();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_learnMoreURL + 8))
    {

      sub_24590C084();

      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_245778F94(v6, &unk_27EE29470);
      }

      else
      {
        (*(v8 + 32))(v10, v6, v7);
        v17 = [objc_opt_self() sharedApplication];
        v18 = sub_24590C034();
        sub_2458B880C(MEMORY[0x277D84F90]);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_245892EA0(&qword_27EE28988, type metadata accessor for OpenExternalURLOptionsKey);
        v19 = sub_2459108E4();

        [v17 openURL:v18 options:v19 completionHandler:0];

        (*(v8 + 8))(v10, v7);
      }
    }
  }

  else
  {
    sub_24590C714();
    v12 = sub_24590F344();
    v13 = sub_245910F64();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_2458CC378(0xD000000000000027, 0x800000024592B6C0, &v20);
      _os_log_impl(&dword_245767000, v12, v13, "self doesn't exist in %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x245D77B40](v15, -1, -1);
      MEMORY[0x245D77B40](v14, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_24588B4B0()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_245883548(0);
  }

  else
  {
    sub_24590C714();
    v5 = sub_24590F344();
    v6 = sub_245910F64();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2458CC378(0xD000000000000027, 0x800000024592B6C0, &v9);
      _os_log_impl(&dword_245767000, v5, v6, "self doesn't exist in %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x245D77B40](v8, -1, -1);
      MEMORY[0x245D77B40](v7, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }
}

void sub_24588B688(void *a1)
{
  v2 = v1;
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v99 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v99 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v99 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v99 - v20;
  MEMORY[0x28223BE20](v19);
  v24 = &v99 - v23;
  v25 = v2[32];
  if (!v25)
  {
    sub_24590C714();
    v28 = sub_24590F344();
    v29 = sub_245910F64();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v5;
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_245767000, v28, v29, "The featureEnablementConfig is nil. Terminating the proofing flow", v31, 2u);
      v32 = v31;
      v5 = v30;
      MEMORY[0x245D77B40](v32, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    sub_245883548(0);
    return;
  }

  v102 = a1;
  v103 = v22;
  v26 = v25;
  v105 = sub_24590E754();
  if (v105)
  {
    v27 = sub_245887278();
    v104 = v26;
    if (v27 <= 1)
    {
      if (v27)
      {
        if (sub_24590DED4())
        {
          goto LABEL_17;
        }
      }

      else if (sub_24590DEC4())
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v27 != 2)
      {
        if (v27 != 3 || (sub_24590DEB4() & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_17:
        if ((v2[18] & 3) != 2)
        {
          sub_24590C714();

          v70 = sub_24590F344();
          v71 = v2;
          v72 = sub_245910F54();

          if (os_log_type_enabled(v70, v72))
          {
            v73 = v4;
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v106 = v75;
            *v74 = 136315138;
            v76 = v71;
            v77 = sub_245887278();
            v78 = 0xE600000000000000;
            v79 = 0x7453656E696C6E69;
            v80 = 0xEC00000070557065;
            v81 = 0xD000000000000016;
            v82 = 0x800000024592B6A0;
            if (v77 != 3)
            {
              v81 = 0x6E776F6E6B6E75;
              v82 = 0xE700000000000000;
            }

            if (v77 != 2)
            {
              v79 = v81;
              v80 = v82;
            }

            v83 = 0x65766973736170;
            if (v77)
            {
              v78 = 0xE700000000000000;
            }

            else
            {
              v83 = 0x657669746361;
            }

            if (v77 <= 1)
            {
              v84 = v83;
            }

            else
            {
              v84 = v79;
            }

            if (v77 <= 1)
            {
              v85 = v78;
            }

            else
            {
              v85 = v80;
            }

            v86 = sub_2458CC378(v84, v85, &v106);

            *(v74 + 4) = v86;
            _os_log_impl(&dword_245767000, v70, v72, "In the manual review flow showing fed-stats screen in %s flow type", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v75);
            MEMORY[0x245D77B40](v75, -1, -1);
            MEMORY[0x245D77B40](v74, -1, -1);

            (*(v5 + 8))(v24, v73);
          }

          else
          {
            v76 = v71;

            (*(v5 + 8))(v24, v4);
          }

          v91 = v76[31];
          v92 = objc_allocWithZone(type metadata accessor for IdentityProofingFedStatsOptinViewController());
          v93 = v91;

          v95 = sub_2457C1270(v94, v91);

          sub_24586D558(v95, v102);
          return;
        }

        goto LABEL_18;
      }

      if (sub_24590DEA4())
      {
        goto LABEL_17;
      }
    }

LABEL_18:
    sub_24590C714();

    v33 = sub_24590F344();
    v34 = sub_245910F54();

    if (os_log_type_enabled(v33, v34))
    {
      v99 = v5;
      v100 = v4;
      v35 = swift_slowAlloc();
      v36 = v2;
      v37 = swift_slowAlloc();
      v106 = v37;
      *v35 = 136315138;
      v101 = v36;
      v38 = sub_245887278();
      v39 = 0xE600000000000000;
      v40 = 0x7453656E696C6E69;
      v41 = 0xEC00000070557065;
      v42 = 0xD000000000000016;
      v43 = 0x800000024592B6A0;
      if (v38 != 3)
      {
        v42 = 0x6E776F6E6B6E75;
        v43 = 0xE700000000000000;
      }

      if (v38 != 2)
      {
        v40 = v42;
        v41 = v43;
      }

      v44 = 0x65766973736170;
      if (v38)
      {
        v39 = 0xE700000000000000;
      }

      else
      {
        v44 = 0x657669746361;
      }

      if (v38 <= 1)
      {
        v45 = v44;
      }

      else
      {
        v45 = v40;
      }

      if (v38 <= 1)
      {
        v46 = v39;
      }

      else
      {
        v46 = v41;
      }

      v47 = sub_2458CC378(v45, v46, &v106);

      *(v35 + 4) = v47;
      _os_log_impl(&dword_245767000, v33, v34, "In the manual review flow but fed-stats cannot be shown in the %s flow type", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x245D77B40](v37, -1, -1);
      MEMORY[0x245D77B40](v35, -1, -1);

      v5 = v99;
      v4 = v100;
      (*(v99 + 8))(v21, v100);
      v2 = v101;
    }

    else
    {

      (*(v5 + 8))(v21, v4);
    }

    v26 = v104;
  }

  v48 = v2[21];
  if (v48)
  {
    v49 = v5;
    v50 = v4;
    v51 = v48;
    sub_24590DDB4();
    v52 = sub_24590CDE4();
    if (v52 == sub_24590CDE4())
    {
      sub_24590C714();
      v53 = sub_24590F344();
      v54 = sub_245910F64();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_245767000, v53, v54, "The documentType is passport, should not show the consent screen. Terminating the proofing flow", v55, 2u);
        MEMORY[0x245D77B40](v55, -1, -1);
      }

      (*(v49 + 8))(v18, v50);
LABEL_69:
      sub_245883548(0);

      return;
    }

    v61 = sub_24590E764();
    v62 = v49;
    if (!v61)
    {
      sub_24590C714();
      v87 = sub_24590F344();
      v88 = sub_245910F64();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_245767000, v87, v88, "isLivenessConsentEnabled is enabled but the flow item is missing. Terminating the proofing flow", v89, 2u);
        v90 = v89;
        v62 = v49;
        MEMORY[0x245D77B40](v90, -1, -1);
      }

      (*(v62 + 8))(v14, v50);
      goto LABEL_69;
    }

    v63 = v61;
    v64 = sub_245887278();
    v65 = v26;
    if (v64 <= 1)
    {
      if (v64)
      {
        if (sub_24590DED4())
        {
          goto LABEL_76;
        }
      }

      else if (sub_24590DEC4())
      {
        goto LABEL_76;
      }
    }

    else
    {
      if (v64 != 2)
      {
        if (v64 != 3 || (sub_24590DEB4() & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_76;
      }

      if (sub_24590DEA4())
      {
LABEL_76:
        if (qword_27EE286A0 != -1)
        {
          swift_once();
        }

        v96 = qword_27EE32B48;
        v97 = objc_allocWithZone(type metadata accessor for IdentityProofingLivenessConsentViewController());

        v98 = sub_2457D4C7C(v2, v96);
        sub_24586D558(v98, v102);

        return;
      }
    }

LABEL_48:
    sub_24590C714();
    v66 = sub_24590F344();
    v67 = sub_245910F54();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_245767000, v66, v67, "Both liveness and fed-stats will not be shown as they are disabled for the current flow.", v68, 2u);
      v69 = v68;
      v62 = v49;
      MEMORY[0x245D77B40](v69, -1, -1);
    }

    (*(v62 + 8))(v103, v50);
    sub_245883548(0);

    return;
  }

  sub_24590C714();
  v56 = sub_24590F344();
  v57 = sub_245910F64();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = v5;
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_245767000, v56, v57, "The configuration is nil. Cannot check the document type. Terminating the proofing flow", v59, 2u);
    v60 = v59;
    v5 = v58;
    MEMORY[0x245D77B40](v60, -1, -1);
  }

  (*(v5 + 8))(v11, v4);
  sub_245883548(0);
}

void sub_24588C11C(void *a1)
{
  v2 = v1;
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v48 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v48 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  sub_24590C714();
  v17 = sub_24590F344();
  v18 = sub_245910F54();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v49 = v8;
    v20 = v11;
    v21 = v5;
    v22 = v14;
    v23 = v4;
    v24 = a1;
    v25 = v2;
    v26 = v19;
    *v19 = 0;
    _os_log_impl(&dword_245767000, v17, v18, "In the non-manual review UI navigation flow", v19, 2u);
    v27 = v26;
    v2 = v25;
    a1 = v24;
    v4 = v23;
    v14 = v22;
    v5 = v21;
    v11 = v20;
    v8 = v49;
    MEMORY[0x245D77B40](v27, -1, -1);
  }

  v28 = *(v5 + 8);
  v28(v16, v4);
  v29 = *(v2 + 256);
  if (v29)
  {
    v30 = v29;
    v31 = sub_24590E774();
    if (v31)
    {
      v32 = v31;
      v33 = sub_245887278();
      if (v33 <= 1)
      {
        if (v33)
        {
          if ((sub_24590DED4() & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else if ((sub_24590DEC4() & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else if (v33 == 2)
      {
        if ((sub_24590DEA4() & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else if (v33 != 3 || (sub_24590DEB4() & 1) == 0)
      {
LABEL_9:
        sub_24590C714();
        v34 = sub_24590F344();
        v35 = sub_245910F54();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_245767000, v34, v35, "should show for fed-stats returned false. Terminating the proofing flow", v36, 2u);
          MEMORY[0x245D77B40](v36, -1, -1);
        }

        v28(v14, v4);
        sub_245883548(0);

        return;
      }

      v43 = *(v2 + 248);
      v44 = objc_allocWithZone(type metadata accessor for IdentityProofingFedStatsOptinViewController());
      v45 = v43;

      v47 = sub_2457C1270(v46, v43);

      sub_24586D558(v47, a1);
      return;
    }

    sub_24590C714();
    v40 = sub_24590F344();
    v41 = sub_245910F64();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_245767000, v40, v41, "The fed-stats flow item is missing. Terminating the proofing flow", v42, 2u);
      MEMORY[0x245D77B40](v42, -1, -1);
    }

    v28(v11, v4);
    sub_245883548(0);
  }

  else
  {
    sub_24590C714();
    v37 = sub_24590F344();
    v38 = sub_245910F64();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_245767000, v37, v38, "The featureEnablementConfig is nil. Terminating the proofing flow", v39, 2u);
      MEMORY[0x245D77B40](v39, -1, -1);
    }

    v28(v8, v4);
    sub_245883548(0);
  }
}

unint64_t sub_24588C5BC(uint64_t a1, uint64_t a2)
{
  sub_245911824();
  sub_245910AF4();
  v4 = sub_245911864();

  return sub_24588CB58(a1, a2, v4);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24588C668()
{
  v1 = *(v0 + 24);
  result = sub_245883548(0);
  if (v1)
  {
    return v1(result);
  }

  return result;
}

uint64_t sub_24588C6B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457AA49C;

  return sub_245888D34(a1, v4, v5, v7, v6);
}

unint64_t sub_24588C770(uint64_t a1)
{
  v2 = sub_245911464();

  return sub_24588CC10(a1, v2);
}

unint64_t sub_24588C7B4(unsigned int a1)
{
  v3 = MEMORY[0x245D76E40](*(v1 + 40), a1, 4);

  return sub_24588CCD8(a1, v3);
}

unint64_t sub_24588C7FC(uint64_t a1)
{
  sub_245910A04();
  sub_245911824();
  sub_245910AF4();
  v2 = sub_245911864();

  return sub_24588CD44(a1, v2);
}

unint64_t sub_24588C88C(uint64_t a1)
{
  sub_24590E9D4();
  sub_245892EA0(&qword_27EE28EB8, MEMORY[0x277CFF850]);
  v2 = sub_245910904();

  return sub_24588CE48(a1, v2);
}

unint64_t sub_24588C924(uint64_t a1)
{
  sub_245911824();
  type metadata accessor for CFString(0);
  sub_245892EA0(&qword_27EE2ACF0, type metadata accessor for CFString);
  sub_24590EBA4();
  v2 = sub_245911864();

  return sub_24588D008(a1, v2);
}

unint64_t sub_24588C9D8(uint64_t a1)
{
  sub_245911824();
  sub_245911844();
  if (a1)
  {
    type metadata accessor for CFString(0);
    sub_245892EA0(&qword_27EE2ACF0, type metadata accessor for CFString);
    sub_24590EBA4();
  }

  v2 = sub_245911864();

  return sub_24588D114(a1, v2);
}

unint64_t sub_24588CAA8(unsigned __int8 a1)
{
  sub_245911824();
  MEMORY[0x245D76E70](a1);
  v2 = sub_245911864();

  return sub_24588D234(a1, v2);
}

unint64_t sub_24588CB14(uint64_t a1)
{
  v2 = sub_245911814();

  return sub_24588D2A4(a1, v2);
}

unint64_t sub_24588CB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_245911714())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24588CC10(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_245892DFC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245D76AB0](v9, a1);
      sub_2457AF59C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24588CCD8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24588CD44(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_245910A04();
      v8 = v7;
      if (v6 == sub_245910A04() && v8 == v9)
      {
        break;
      }

      v11 = sub_245911714();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24588CE48(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_24590E9D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_245892EA0(&unk_27EE29C00, MEMORY[0x277CFF850]);
      v15 = sub_245910934();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_24588D008(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_245892EA0(&qword_27EE2ACF0, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_24590EB94();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24588D114(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFString(0);
          sub_245892EA0(&qword_27EE2ACF0, type metadata accessor for CFString);
          v10 = v9;
          v11 = sub_24590EB94();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24588D234(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24588D2A4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_24588D310(unsigned __int8 a1)
{
  v3 = *v1;
  sub_245911824();
  MEMORY[0x245D76E70](a1);
  v4 = sub_245911864();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 4;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 4;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2458AF704();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_24588D418(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_24588D418(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2459113C4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_245911824();
        MEMORY[0x245D76E70](v10);
        v11 = sub_245911864() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

id sub_24588D5C0(_OWORD *a1, char *a2)
{
  v22[3] = &type metadata for IdentityProofingAuthCodeRetryViewConfiguration;
  v22[4] = &off_285884C80;
  v4 = swift_allocObject();
  v5 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  v22[0] = v4;
  v12 = a1[5];
  v4[5] = a1[4];
  v4[6] = v12;
  *(v4 + 105) = *(a1 + 89);
  v13 = a1[1];
  v4[1] = *a1;
  v4[2] = v13;
  v15 = a1[2];
  v14 = a1[3];
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v4[3] = v15;
  v4[4] = v14;
  v16 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [objc_opt_self() clearColor];
  [v17 setBackgroundColor_];

  *&a2[v16] = v17;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v22, &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v21.receiver = a2;
  v21.super_class = type metadata accessor for IdentityProofingViewController();
  v19 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v19;
}

id sub_24588D8B4(uint64_t a1, char *a2)
{
  v18[3] = type metadata accessor for IdentityProofingProgressViewConfiguration();
  v18[4] = &off_28588AD08;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  sub_245892D94(a1, boxed_opaque_existential_1, type metadata accessor for IdentityProofingProgressViewConfiguration);
  v5 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v12 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = [objc_opt_self() clearColor];
  [v13 setBackgroundColor_];

  *&a2[v12] = v13;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v18, &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v17.receiver = a2;
  v17.super_class = type metadata accessor for IdentityProofingViewController();
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v15;
}

id sub_24588DB98(uint64_t a1, char *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v7 = a3(0);
  v8 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  v21[3] = v7;
  v21[4] = a4;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v21[0] = a1;
  v15 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v16 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [objc_opt_self() clearColor];
  [v16 setBackgroundColor_];

  *&a2[v15] = v16;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v21, &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v20.receiver = a2;
  v20.super_class = type metadata accessor for IdentityProofingViewController();
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v18;
}

id sub_24588DE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v24[3] = &type metadata for RGBCaptureViewConfiguration;
  v24[4] = &off_285889A70;
  v10 = swift_allocObject();
  v11 = &a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  v24[0] = v10;
  v10[2] = a1;
  v10[3] = a2;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v10[4] = a3;
  v10[5] = a4;
  v18 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v19 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = [objc_opt_self() clearColor];
  [v19 setBackgroundColor_];

  *&a5[v18] = v19;
  *&a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v24, &a5[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v23.receiver = a5;
  v23.super_class = type metadata accessor for IdentityProofingViewController();
  v21 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v21;
}

id sub_24588E13C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = &a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  v18[4] = &off_2858894C8;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  v18[0] = a1;
  v18[1] = a2;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v18[2] = a3;
  v18[3] = &type metadata for IdentityProofingReviewSubmissionViewConfiguration;
  v12 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = [objc_opt_self() clearColor];
  [v13 setBackgroundColor_];

  *&a4[v12] = v13;
  *&a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v18, &a4[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v17.receiver = a4;
  v17.super_class = type metadata accessor for IdentityProofingViewController();
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v15;
}

id sub_24588E3DC(__int128 *a1, char *a2)
{
  v21[3] = &type metadata for IdentityProofingAddedToWalletViewConfiguration;
  v21[4] = &off_285889E98;
  v4 = swift_allocObject();
  v5 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  v21[0] = v4;
  v12 = a1[3];
  v4[3] = a1[2];
  v4[4] = v12;
  *(v4 + 76) = *(a1 + 60);
  v14 = *a1;
  v13 = a1[1];
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v4[1] = v14;
  v4[2] = v13;
  v15 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v16 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [objc_opt_self() clearColor];
  [v16 setBackgroundColor_];

  *&a2[v15] = v16;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v21, &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v20.receiver = a2;
  v20.super_class = type metadata accessor for IdentityProofingViewController();
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v18;
}

id sub_24588E71C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = &a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  v19[3] = a4;
  v19[4] = a5;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v19[0] = a1;
  v19[1] = a2;
  v13 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v14 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = [objc_opt_self() clearColor];
  [v14 setBackgroundColor_];

  *&a3[v13] = v14;
  *&a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v19, &a3[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v18.receiver = a3;
  v18.super_class = type metadata accessor for IdentityProofingViewController();
  v16 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v16;
}

id sub_24588EA00(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v21[3] = a3;
  v21[4] = a4;
  v6 = swift_allocObject();
  v7 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v21[0] = v6;
  v14 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v14;
  *(v6 + 48) = *(a1 + 32);
  v15 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v16 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [objc_opt_self() clearColor];
  [v16 setBackgroundColor_];

  *&a2[v15] = v16;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v21, &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v20.receiver = a2;
  v20.super_class = type metadata accessor for IdentityProofingViewController();
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v18;
}

id sub_24588ECB0(char *a1)
{
  v2 = &a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v16 = &type metadata for ProvideFeedbackViewConfiguration;
  v17 = &off_285885300;
  v9 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [objc_opt_self() clearColor];
  [v10 setBackgroundColor_];

  *&a1[v9] = v10;
  *&a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v15, &a1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v14.receiver = a1;
  v14.super_class = type metadata accessor for IdentityProofingViewController();
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}