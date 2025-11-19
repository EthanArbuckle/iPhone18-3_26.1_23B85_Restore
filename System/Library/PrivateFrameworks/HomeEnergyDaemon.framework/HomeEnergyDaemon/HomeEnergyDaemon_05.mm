uint64_t sub_22B1A2A40()
{
  v1 = v0[22];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];
  v6 = v0[9];

  v7 = v0[1];
  v8 = v0[26];

  return v7();
}

uint64_t sub_22B1A2AEC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22B35EA1C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_22B35DF1C();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1A2C0C, 0, 0);
}

uint64_t sub_22B1A2C0C()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = [v2 uniqueIdentifier];
  sub_22B35DEFC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA558, &qword_22B364D60);
  v4 = sub_22B35EA4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22B3634B0;
  (*(v5 + 104))(v8 + v7, *MEMORY[0x277D17650], v4);
  v9 = sub_22B316178(v8);
  v0[11] = v9;
  swift_setDeallocating();
  (*(v5 + 8))(v8 + v7, v4);
  swift_deallocClassInstance();
  v10 = [v2 currentUser];
  v11 = [v2 owner];
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      sub_22B1972C4();
      v13 = sub_22B360FBC();

      if ((v13 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_6:
      v14 = MEMORY[0x277D175C0];
      goto LABEL_10;
    }

    v12 = v10;
  }

  else if (!v11)
  {
    goto LABEL_6;
  }

LABEL_9:
  v14 = MEMORY[0x277D175C8];
LABEL_10:
  (*(v0[6] + 104))(v0[7], *v14, v0[5]);
  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  v15[1] = sub_22B1A2EA8;
  v16 = v0[10];
  v17 = v0[7];
  v18 = v0[2];
  v19 = v0[3];

  return sub_22B130DA0(v16, v18, v9, v17);
}

uint64_t sub_22B1A2EA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  v7 = *v2;
  *(*v2 + 104) = v1;

  v8 = v4[10];
  v9 = v4[9];
  v10 = v4[8];
  (*(v4[6] + 8))(v4[7], v4[5]);
  (*(v9 + 8))(v8, v10);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B1A30DC, 0, 0);
  }

  else
  {

    v11 = *(v7 + 8);

    return v11(a1);
  }
}

uint64_t sub_22B1A30DC()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t EKEnergySite.save(reset:tokenUpdate:)(char a1, char a2)
{
  *(v3 + 88) = v2;
  *(v3 + 409) = a2;
  *(v3 + 408) = a1;
  v4 = sub_22B35EDDC();
  *(v3 + 96) = v4;
  v5 = *(v4 - 8);
  *(v3 + 104) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v7 = sub_22B36052C();
  *(v3 + 120) = v7;
  v8 = *(v7 - 8);
  *(v3 + 128) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  v11 = sub_22B35DE9C();
  *(v3 + 160) = v11;
  v12 = *(v11 - 8);
  *(v3 + 168) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  v14 = sub_22B36037C();
  *(v3 + 200) = v14;
  v15 = *(v14 - 8);
  *(v3 + 208) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 216) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8A0, &unk_22B365970) - 8) + 64) + 15;
  *(v3 + 224) = swift_task_alloc();
  v18 = type metadata accessor for CDEnergySite();
  *(v3 + 232) = v18;
  v19 = *(v18 - 8);
  *(v3 + 240) = v19;
  v20 = *(v19 + 64) + 15;
  *(v3 + 248) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1A3418, 0, 0);
}

uint64_t sub_22B1A3418()
{
  if (*(v0 + 408))
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 88);
    v3 = *(v0 + 409);
    v4 = sub_22B35EDCC();
    *(v0 + 64) = xmmword_22B364D70;
    v5 = MEMORY[0x23188EEB0](v4);
    sub_22B1A4FE0(v2, v1, 1, v3, (v0 + 64), (v0 + 80));
    objc_autoreleasePoolPop(v5);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    *(v0 + 304) = v10;
    *(v0 + 312) = v11;
    if (v11 >> 60 == 15)
    {
      v12 = *(v0 + 248);
      v14 = *(v0 + 216);
      v13 = *(v0 + 224);
      v16 = *(v0 + 184);
      v15 = *(v0 + 192);
      v17 = *(v0 + 176);
      v26 = *(v0 + 152);
      v27 = *(v0 + 144);
      v28 = *(v0 + 136);
      v18 = *(v0 + 104);
      v19 = *(v0 + 112);
      v20 = *(v0 + 96);
      sub_22B11EDC0(v10, v11);
      (*(v18 + 8))(v19, v20);

      v21 = *(v0 + 8);

      return v21();
    }

    sub_22B144B30(v10, v11);
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 88);
    v7 = qword_28140BDD0;
    *(v0 + 320) = qword_28140BDD0;
    *(v0 + 328) = sub_22B35F3AC();
    *(v0 + 336) = v23;
    *(v0 + 344) = sub_22B35F04C();
    *(v0 + 352) = v24;
    v9 = sub_22B1A43D4;
  }

  else
  {
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 88);
    v7 = qword_28140BDD0;
    *(v0 + 256) = qword_28140BDD0;
    *(v0 + 264) = sub_22B35F3AC();
    *(v0 + 272) = v8;
    v9 = sub_22B1A373C;
  }

  return MEMORY[0x2822009F8](v9, v7, 0);
}

uint64_t sub_22B1A373C()
{
  v1 = v0[32];
  sub_22B141AE8(v0[33], v0[34], 0, v0[28]);

  return MEMORY[0x2822009F8](sub_22B1A37BC, 0, 0);
}

uint64_t sub_22B1A37BC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  if ((*(*(v0 + 240) + 48))(v2, 1, v1) == 1)
  {
    sub_22B123284(v2, &qword_27D8BA8A0, &unk_22B365970);
LABEL_15:
    v22 = 0;
    goto LABEL_16;
  }

  v3 = *(v0 + 248);
  sub_22B144DC0(v2, v3);
  sub_22B35EAFC();
  v4 = *v3;
  v5 = v3[1];
  v6 = (v3 + *(v1 + 28));
  v7 = *v6;
  v8 = v6[1];
  v9 = v3[2];
  v10 = v3[3];
  v11 = sub_22B35EAEC();
  *(v0 + 280) = v11;
  v12 = v11;
  v13 = sub_22B35F14C();
  if (!v14)
  {
    v61 = *(v0 + 248);

    v21 = v61;
    goto LABEL_14;
  }

  v15 = v14;
  if (v13 == 0x4E454B4F544B43 && v14 == 0xE700000000000000)
  {
    goto LABEL_13;
  }

  v17 = v13;
  if (sub_22B36134C())
  {
    goto LABEL_13;
  }

  v18 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v18 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
LABEL_13:
    v20 = *(v0 + 248);

    v21 = v20;
LABEL_14:
    sub_22B16F530(v21);
    goto LABEL_15;
  }

  v19 = *(v0 + 216);
  sub_22B36034C();
  *(v0 + 288) = 0;
  v62 = *(v0 + 216);
  *(v0 + 410) = sub_22B36035C() & 1;
  v63 = sub_22B35EEBC();
  if (v63)
  {
    if (qword_28140A0B8 != -1)
    {
      swift_once();
    }

    v60 = qword_28140BD08;
    *(v0 + 296) = qword_28140BD08;
    v59 = sub_22B1A3DF4;
    goto LABEL_27;
  }

  if (*(v0 + 410) == 1 && (*(v0 + 409) & 1) == 0)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v64 = *(v0 + 144);
    v65 = *(v0 + 120);
    v66 = *(v0 + 128);
    v67 = __swift_project_value_buffer(v65, qword_28140BD10);
    swift_beginAccess();
    (*(v66 + 16))(v64, v67, v65);
    v68 = sub_22B36050C();
    v69 = sub_22B360D1C();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_22B116000, v68, v69, "Cannot save site with expired token in order to avoid mangling", v70, 2u);
      MEMORY[0x23188F650](v70, -1, -1);
    }

    v71 = *(v0 + 280);
    v72 = *(v0 + 248);
    v74 = *(v0 + 208);
    v73 = *(v0 + 216);
    v75 = *(v0 + 200);
    v76 = *(v0 + 144);
    v77 = *(v0 + 120);
    v78 = *(v0 + 128);

    (*(v78 + 8))(v76, v77);
    sub_22B134CDC();
    swift_allocError();
    *v79 = 23;
    swift_willThrow();

    (*(v74 + 8))(v73, v75);
    sub_22B16F530(v72);
    goto LABEL_18;
  }

  v80 = *(v0 + 280);
  v81 = *(v0 + 248);
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

  sub_22B16F530(v81);
  v22 = *(v0 + 288);
LABEL_16:
  v23 = *(v0 + 112);
  v24 = *(v0 + 88);
  v25 = *(v0 + 409);
  v26 = *(v0 + 408);
  v27 = sub_22B35EDCC();
  *(v0 + 64) = xmmword_22B364D70;
  v28 = MEMORY[0x23188EEB0](v27);
  sub_22B1A4FE0(v24, v23, v26, v25, (v0 + 64), (v0 + 80));
  if (v22)
  {
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    v31 = *(v0 + 96);
    v84 = *(v0 + 80);
    objc_autoreleasePoolPop(v28);
    sub_22B11EDC0(*(v0 + 64), *(v0 + 72));
    (*(v29 + 8))(v30, v31);
LABEL_18:
    v32 = *(v0 + 248);
    v34 = *(v0 + 216);
    v33 = *(v0 + 224);
    v36 = *(v0 + 184);
    v35 = *(v0 + 192);
    v37 = *(v0 + 176);
    v39 = *(v0 + 144);
    v38 = *(v0 + 152);
    v40 = *(v0 + 136);
    v41 = *(v0 + 112);

    v42 = *(v0 + 8);
LABEL_21:

    return v42();
  }

  objc_autoreleasePoolPop(v28);
  v43 = *(v0 + 64);
  v44 = *(v0 + 72);
  *(v0 + 304) = v43;
  *(v0 + 312) = v44;
  if (v44 >> 60 == 15)
  {
    v45 = *(v0 + 248);
    v47 = *(v0 + 216);
    v46 = *(v0 + 224);
    v49 = *(v0 + 184);
    v48 = *(v0 + 192);
    v50 = *(v0 + 176);
    v82 = *(v0 + 152);
    v83 = *(v0 + 144);
    v85 = *(v0 + 136);
    v51 = *(v0 + 104);
    v52 = *(v0 + 112);
    v53 = *(v0 + 96);
    sub_22B11EDC0(v43, v44);
    (*(v51 + 8))(v52, v53);

    v42 = *(v0 + 8);
    goto LABEL_21;
  }

  sub_22B144B30(v43, v44);
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v55 = *(v0 + 88);
  v56 = qword_28140BDD0;
  *(v0 + 320) = qword_28140BDD0;
  *(v0 + 328) = sub_22B35F3AC();
  *(v0 + 336) = v57;
  *(v0 + 344) = sub_22B35F04C();
  *(v0 + 352) = v58;
  v59 = sub_22B1A43D4;
  v60 = v56;
LABEL_27:

  return MEMORY[0x2822009F8](v59, v60, 0);
}

uint64_t sub_22B1A3E1C()
{
  if (*(v0 + 411) != 1)
  {
LABEL_4:
    if (*(v0 + 410) != 1 || (*(v0 + 409) & 1) != 0)
    {
      goto LABEL_14;
    }

LABEL_9:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 144);
    v15 = *(v0 + 120);
    v16 = *(v0 + 128);
    v17 = __swift_project_value_buffer(v15, qword_28140BD10);
    swift_beginAccess();
    (*(v16 + 16))(v14, v17, v15);
    v18 = sub_22B36050C();
    v19 = sub_22B360D1C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22B116000, v18, v19, "Cannot save site with expired token in order to avoid mangling", v20, 2u);
      MEMORY[0x23188F650](v20, -1, -1);
    }

    v21 = *(v0 + 280);
    v22 = *(v0 + 248);
    v24 = *(v0 + 208);
    v23 = *(v0 + 216);
    v25 = *(v0 + 200);
    v26 = *(v0 + 144);
    v27 = *(v0 + 120);
    v28 = *(v0 + 128);

    (*(v28 + 8))(v26, v27);
    sub_22B134CDC();
    swift_allocError();
    *v29 = 23;
    swift_willThrow();

    (*(v24 + 8))(v23, v25);
    sub_22B16F530(v22);
    goto LABEL_16;
  }

  v1 = *(v0 + 216);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  sub_22B36036C();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_22B123284(*(v0 + 152), &qword_27D8BA340, &qword_22B363FB0);
    goto LABEL_4;
  }

  v5 = *(v0 + 410);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  v10 = *(v0 + 160);
  v11 = *(v0 + 409);
  (*(v9 + 32))(v6, *(v0 + 152), v10);
  sub_22B35F62C();
  sub_22B35DDCC();
  sub_22B35DE6C();
  sub_22B1A80C8(&qword_28140B490, MEMORY[0x277CC9578]);
  v12 = sub_22B36074C();
  v13 = *(v9 + 8);
  v13(v8, v10);
  v13(v7, v10);
  v13(v6, v10);
  if ((v12 & ~v5 & 1) == 0 && (v11 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_14:
  v30 = *(v0 + 280);
  v31 = *(v0 + 248);
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

  sub_22B16F530(v31);
  v32 = *(v0 + 288);
  v33 = *(v0 + 112);
  v34 = *(v0 + 88);
  v35 = *(v0 + 409);
  v36 = *(v0 + 408);
  v37 = sub_22B35EDCC();
  *(v0 + 64) = xmmword_22B364D70;
  v38 = MEMORY[0x23188EEB0](v37);
  sub_22B1A4FE0(v34, v33, v36, v35, (v0 + 64), (v0 + 80));
  if (v32)
  {
    v39 = *(v0 + 104);
    v40 = *(v0 + 112);
    v41 = *(v0 + 96);
    v71 = *(v0 + 80);
    objc_autoreleasePoolPop(v38);
    sub_22B11EDC0(*(v0 + 64), *(v0 + 72));
    (*(v39 + 8))(v40, v41);
LABEL_16:
    v42 = *(v0 + 248);
    v44 = *(v0 + 216);
    v43 = *(v0 + 224);
    v46 = *(v0 + 184);
    v45 = *(v0 + 192);
    v47 = *(v0 + 176);
    v49 = *(v0 + 144);
    v48 = *(v0 + 152);
    v50 = *(v0 + 136);
    v51 = *(v0 + 112);

    v52 = *(v0 + 8);
LABEL_17:

    return v52();
  }

  objc_autoreleasePoolPop(v38);
  v54 = *(v0 + 64);
  v55 = *(v0 + 72);
  *(v0 + 304) = v54;
  *(v0 + 312) = v55;
  if (v55 >> 60 == 15)
  {
    v56 = *(v0 + 248);
    v58 = *(v0 + 216);
    v57 = *(v0 + 224);
    v60 = *(v0 + 184);
    v59 = *(v0 + 192);
    v61 = *(v0 + 176);
    v69 = *(v0 + 152);
    v70 = *(v0 + 144);
    v72 = *(v0 + 136);
    v62 = *(v0 + 104);
    v63 = *(v0 + 112);
    v64 = *(v0 + 96);
    sub_22B11EDC0(v54, v55);
    (*(v62 + 8))(v63, v64);

    v52 = *(v0 + 8);
    goto LABEL_17;
  }

  sub_22B144B30(v54, v55);
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v65 = *(v0 + 88);
  v66 = qword_28140BDD0;
  *(v0 + 320) = qword_28140BDD0;
  *(v0 + 328) = sub_22B35F3AC();
  *(v0 + 336) = v67;
  *(v0 + 344) = sub_22B35F04C();
  *(v0 + 352) = v68;

  return MEMORY[0x2822009F8](sub_22B1A43D4, v66, 0);
}

uint64_t sub_22B1A43D4()
{
  v40 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 336);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 328);
    v8 = *(v0 + 336);
    v11 = *(v0 + 128);
    v10 = *(v0 + 136);
    v12 = *(v0 + 120);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 136380675;
    *(v13 + 4) = sub_22B1A7B20(v9, v8, &v39);
    _os_log_impl(&dword_22B116000, v6, v7, "Adding energy site for %{private}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 120);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 320);
  v19 = v18[14];
  *(v0 + 360) = v19;
  v20 = v18[15];
  *(v0 + 368) = v20;
  if (v19)
  {
    v21 = v18[16];
    *(v0 + 376) = v21;
    if (v21)
    {
      sub_22B1231A0(v19, v20);
      v22 = v21;
      v23 = swift_task_alloc();
      *(v0 + 384) = v23;
      *v23 = v0;
      v23[1] = sub_22B1A4720;
      v24 = *(v0 + 344);
      v25 = *(v0 + 352);
      v27 = *(v0 + 328);
      v26 = *(v0 + 336);
      v28 = *(v0 + 304);
      v29 = *(v0 + 312);
      v30 = *(v0 + 409);
      v42 = v19;
      v43 = v20;

      return sub_22B13C304(v27, v26, v28, v29, v24, v25, v22, v30);
    }

    v35 = *(v0 + 352);
    v36 = *(v0 + 336);
    sub_22B134CDC();
    v37 = swift_allocError();
    *v38 = 7;
    swift_willThrow();

    *(v0 + 400) = v37;
    v34 = sub_22B1A4A90;
  }

  else
  {
    v32 = *(v0 + 352);
    v33 = *(v0 + 336);

    v34 = sub_22B1A4974;
  }

  return MEMORY[0x2822009F8](v34, 0, 0);
}

uint64_t sub_22B1A4720()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    v6 = sub_22B1A48DC;
  }

  else
  {
    v6 = sub_22B1A484C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B1A484C()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[44];
  v4 = v0[45];
  v5 = v0[42];

  return MEMORY[0x2822009F8](sub_22B1A4974, 0, 0);
}

uint64_t sub_22B1A48DC()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[44];
  v4 = v0[45];
  v5 = v0[42];

  v0[50] = v0[49];

  return MEMORY[0x2822009F8](sub_22B1A4A90, 0, 0);
}

uint64_t sub_22B1A4974()
{
  sub_22B11EDC0(v0[38], v0[39]);
  v1 = v0[31];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v12 = v0[19];
  v13 = v0[18];
  v14 = v0[17];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[12];
  sub_22B11EDC0(v0[8], v0[9]);
  (*(v7 + 8))(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22B1A4A90()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_22B11EDC0(v0[38], v0[39]);
  sub_22B11EDC0(v0[8], v0[9]);
  (*(v2 + 8))(v1, v3);
  v16 = v0[50];
  v4 = v0[31];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[22];
  v11 = v0[18];
  v10 = v0[19];
  v12 = v0[17];
  v13 = v0[14];

  v14 = v0[1];

  return v14();
}

uint64_t static EKEnergySite.generateSiteID(clientID:)()
{
  v0 = sub_22B35DF1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35F45C();

  sub_22B35F1EC();
  sub_22B35DEAC();
  v5 = sub_22B35DECC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

Swift::Void __swiftcall EKEnergySite.setCKZoneName(ckZoneName:)(Swift::String ckZoneName)
{

  sub_22B35F05C();
}

Swift::Void __swiftcall EKEnergySite.resetMetadata()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA560, &unk_22B366200);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11[-v6];
  sub_22B35F39C();
  sub_22B35F44C();
  sub_22B35F13C();
  sub_22B35F07C();
  sub_22B35F0CC();
  v8 = sub_22B35EC2C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_22B35F17C();
  sub_22B35F25C();
  sub_22B35F27C();
  sub_22B35F29C();
  sub_22B35F15C();
  sub_22B35F09C();
  sub_22B35F0EC();
  sub_22B35F3CC();
  sub_22B35F1DC();
  sub_22B35F1BC();
  v9 = sub_22B35DE9C();
  v10 = *(*(v9 - 8) + 56);
  v10(v3, 1, 1, v9);
  sub_22B35F2DC();
  v10(v3, 1, 1, v9);
  sub_22B35F33C();
  v10(v3, 1, 1, v9);
  sub_22B35F20C();
  sub_22B35F03C();
  v10(v3, 1, 1, v9);
  sub_22B35F31C();
  v10(v3, 1, 1, v9);
  sub_22B35F35C();
  v10(v3, 1, 1, v9);
  sub_22B35F37C();
  v11[12] = 1;
  sub_22B35F2FC();
}

uint64_t sub_22B1A4FE0(void *a1, uint64_t a2, int a3, int a4, uint64_t *a5, void *a6)
{
  v233 = a6;
  v218 = a5;
  v206 = a4;
  v237 = a3;
  v252 = a2;
  v232 = sub_22B3603DC();
  v231 = *(v232 - 8);
  v7 = *(v231 + 64);
  MEMORY[0x28223BE20](v232);
  v230 = &v205[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22B35EDDC();
  v243 = *(v9 - 8);
  v244 = v9;
  v10 = *(v243 + 64);
  MEMORY[0x28223BE20](v9);
  v242 = &v205[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v241 = &v205[-v13];
  v235 = sub_22B36052C();
  v246 = *(v235 - 8);
  v14 = *(v246 + 64);
  MEMORY[0x28223BE20](v235);
  v217 = &v205[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v234 = &v205[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA570, &qword_22B364DA0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v224 = &v205[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v228 = &v205[-v22];
  v23 = sub_22B3603BC();
  v239 = *(v23 - 8);
  v240 = v23;
  v24 = *(v239 + 64);
  MEMORY[0x28223BE20](v23);
  v212 = &v205[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v229 = &v205[-v27];
  MEMORY[0x28223BE20](v28);
  v216 = &v205[-v29];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA560, &unk_22B366200);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v220 = &v205[-v32];
  v221 = sub_22B35EC2C();
  v236 = *(v221 - 8);
  v33 = *(v236 + 64);
  MEMORY[0x28223BE20](v221);
  v208 = &v205[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v35);
  v207 = &v205[-v36];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA578, qword_22B364DA8);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v247 = &v205[-v39];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v227 = &v205[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v43);
  v226 = &v205[-v44];
  MEMORY[0x28223BE20](v45);
  v225 = &v205[-v46];
  MEMORY[0x28223BE20](v47);
  v238 = &v205[-v48];
  MEMORY[0x28223BE20](v49);
  v223 = &v205[-v50];
  MEMORY[0x28223BE20](v51);
  v222 = &v205[-v52];
  MEMORY[0x28223BE20](v53);
  v55 = &v205[-v54];
  MEMORY[0x28223BE20](v56);
  v58 = &v205[-v57];
  MEMORY[0x28223BE20](v59);
  v61 = &v205[-v60];
  v62 = sub_22B35DE9C();
  v250 = *(v62 - 8);
  v63 = *(v250 + 64);
  MEMORY[0x28223BE20](v62);
  v215 = &v205[-((v64 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v65);
  v214 = &v205[-v66];
  MEMORY[0x28223BE20](v67);
  v213 = &v205[-v68];
  MEMORY[0x28223BE20](v69);
  v211 = &v205[-v70];
  MEMORY[0x28223BE20](v71);
  v210 = &v205[-v72];
  MEMORY[0x28223BE20](v73);
  v209 = &v205[-v74];
  MEMORY[0x28223BE20](v75);
  v219 = &v205[-v76];
  MEMORY[0x28223BE20](v77);
  v79 = &v205[-v78];
  MEMORY[0x28223BE20](v80);
  v249 = &v205[-v81];
  MEMORY[0x28223BE20](v82);
  v84 = &v205[-v83];
  v85 = sub_22B35F3DC();
  if (v85)
  {
    v86 = v85;
    [v85 coordinate];

    sub_22B35ED7C();
  }

  v87 = sub_22B35F3DC();
  if (v87)
  {
    v88 = v87;
    [v87 coordinate];

    sub_22B35EDAC();
  }

  sub_22B35F3FC();
  sub_22B35ED8C();
  sub_22B35F41C();
  if (v89)
  {
    sub_22B35ED9C();
  }

  sub_22B35F2AC();
  v90 = v250;
  v91 = *(v250 + 48);
  v248 = v250 + 48;
  v251 = v91;
  if (v91(v61, 1, v62) == 1)
  {
    sub_22B123284(v61, &qword_27D8BA340, &qword_22B363FB0);
    v92 = v247;
  }

  else
  {
    (*(v90 + 32))(v84, v61, v62);
    (*(v90 + 16))(v249, v84, v62);
    v92 = v247;
    sub_22B36039C();
    v93 = sub_22B3603AC();
    (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
    sub_22B35ECFC();
    (*(v90 + 8))(v84, v62);
  }

  sub_22B35F22C();
  if (v251(v58, 1, v62) == 1)
  {
    sub_22B123284(v58, &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v94 = v58;
    v95 = v250;
    (*(v250 + 32))(v79, v94, v62);
    (*(v95 + 16))(v249, v79, v62);
    sub_22B36039C();
    v96 = sub_22B3603AC();
    (*(*(v96 - 8) + 56))(v92, 0, 1, v96);
    sub_22B35ECBC();
    (*(v95 + 8))(v79, v62);
  }

  sub_22B35F0FC();
  v97 = v251(v55, 1, v62);
  v98 = v236;
  if (v97 == 1)
  {
    sub_22B123284(v55, &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v99 = v250;
    v100 = v219;
    (*(v250 + 32))(v219, v55, v62);
    (*(v99 + 16))(v249, v100, v62);
    sub_22B36039C();
    v101 = sub_22B3603AC();
    (*(*(v101 - 8) + 56))(v92, 0, 1, v101);
    sub_22B35EB6C();
    (*(v99 + 8))(v100, v62);
  }

  v102 = sub_22B35F2EC();
  v103 = v246;
  if ((v102 & 0x100000000) == 0)
  {
    LOBYTE(v254) = 0;
    sub_22B35ED1C();
  }

  sub_22B35F0AC();
  LOBYTE(v254) = 0;
  sub_22B35EB3C();
  if (v237)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v104 = v235;
    v105 = __swift_project_value_buffer(v235, qword_28140BD10);
    swift_beginAccess();
    v106 = v234;
    (*(v103 + 16))(v234, v105, v104);
    v107 = a1;
    v108 = sub_22B36050C();
    v109 = sub_22B360D1C();

    v110 = os_log_type_enabled(v108, v109);
    v251 = v107;
    if (v110)
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v254 = v112;
      *v111 = 136315394;
      v113 = sub_22B35F3AC();
      v115 = sub_22B1A7B20(v113, v114, &v254);

      *(v111 + 4) = v115;
      *(v111 + 12) = 2080;
      v116 = v249;
      sub_22B35DE6C();
      sub_22B1A80C8(&qword_28140B488, MEMORY[0x277CC9578]);
      v117 = sub_22B36131C();
      v119 = v118;
      (*(v250 + 8))(v116, v62);
      v120 = sub_22B1A7B20(v117, v119, &v254);

      *(v111 + 14) = v120;
      _os_log_impl(&dword_22B116000, v108, v109, "Setting Tombstone for %s as %s", v111, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v112, -1, -1);
      MEMORY[0x23188F650](v111, -1, -1);

      (*(v246 + 8))(v234, v235);
    }

    else
    {

      (*(v103 + 8))(v106, v104);
    }

    v122 = v243;
    v121 = v244;
    v123 = v245;
    v124 = v242;
    sub_22B35DE6C();
    v132 = v247;
    sub_22B36039C();
    v133 = sub_22B3603AC();
    (*(*(v133 - 8) + 56))(v132, 0, 1, v133);
    sub_22B35EB6C();
    v134 = v224;
    sub_22B35F11C();
    v135 = v239;
    v136 = v240;
    if ((*(v239 + 48))(v134, 1, v240) == 1)
    {
      sub_22B123284(v134, &qword_27D8BA570, &qword_22B364DA0);
    }

    else
    {
      v145 = v123;
      v146 = v212;
      (*(v135 + 32))(v212, v134, v136);
      (*(v135 + 16))(v229, v146, v136);
      sub_22B35EB7C();
      v147 = v146;
      v123 = v145;
      (*(v135 + 8))(v147, v136);
    }

    EKEnergySite.resetMetadata()();
    v148 = v241;
  }

  else
  {
    sub_22B35F12C();
    if (v125)
    {
      sub_22B35EB8C();
    }

    sub_22B35F06C();
    v126 = v222;
    v127 = v220;
    if (v128)
    {
      sub_22B35EB1C();
    }

    sub_22B35F0BC();
    if (v129)
    {
      sub_22B35EB4C();
    }

    sub_22B35F43C();
    if (v130)
    {
      sub_22B35EDBC();
    }

    sub_22B35F16C();
    v131 = v221;
    if ((*(v98 + 48))(v127, 1, v221) == 1)
    {
      sub_22B123284(v127, &qword_27D8BA560, &unk_22B366200);
    }

    else
    {
      v137 = v207;
      (*(v98 + 32))(v207, v127, v131);
      (*(v98 + 16))(v208, v137, v131);
      sub_22B35EC5C();
      v138 = v137;
      v92 = v247;
      (*(v98 + 8))(v138, v131);
    }

    sub_22B35F24C();
    sub_22B35ECCC();
    sub_22B35F26C();
    sub_22B35ECDC();
    sub_22B35F28C();
    sub_22B35ECEC();
    sub_22B35F14C();
    if (v139)
    {
      sub_22B35EC4C();
    }

    sub_22B35F08C();
    if (v140)
    {
      sub_22B35EB2C();
    }

    sub_22B35F0DC();
    if (v141)
    {
      sub_22B35EB5C();
    }

    sub_22B35F3BC();
    if (v142)
    {
      sub_22B35ED6C();
    }

    sub_22B35F1CC();
    if (v143)
    {
      sub_22B35EC8C();
    }

    sub_22B35F1AC();
    if (v144)
    {
      sub_22B35EC7C();
    }

    sub_22B35F2CC();
    if (v251(v126, 1, v62) == 1)
    {
      sub_22B123284(v126, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v149 = v250;
      v150 = v209;
      (*(v250 + 32))(v209, v126, v62);
      (*(v149 + 16))(v249, v150, v62);
      sub_22B36039C();
      v151 = sub_22B3603AC();
      (*(*(v151 - 8) + 56))(v92, 0, 1, v151);
      sub_22B35ED0C();
      (*(v149 + 8))(v150, v62);
    }

    v152 = v223;
    sub_22B35F32C();
    if (v251(v152, 1, v62) == 1)
    {
      sub_22B123284(v152, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v153 = v250;
      v154 = v210;
      (*(v250 + 32))(v210, v152, v62);
      (*(v153 + 16))(v249, v154, v62);
      sub_22B36039C();
      v155 = sub_22B3603AC();
      (*(*(v155 - 8) + 56))(v92, 0, 1, v155);
      sub_22B35ED3C();
      (*(v153 + 8))(v154, v62);
    }

    v156 = v225;
    sub_22B35F1FC();
    v157 = v238;
    if (v251(v238, 1, v62) == 1)
    {
      sub_22B123284(v157, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v158 = v250;
      v159 = v211;
      (*(v250 + 32))(v211, v157, v62);
      (*(v158 + 16))(v249, v159, v62);
      sub_22B36039C();
      v160 = sub_22B3603AC();
      (*(*(v160 - 8) + 56))(v92, 0, 1, v160);
      sub_22B35ECAC();
      (*(v158 + 8))(v159, v62);
    }

    sub_22B35F02C();
    sub_22B35EB0C();
    sub_22B35F30C();
    if (v251(v156, 1, v62) == 1)
    {
      sub_22B123284(v156, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v161 = v250;
      v162 = v213;
      (*(v250 + 32))(v213, v156, v62);
      (*(v161 + 16))(v249, v162, v62);
      sub_22B36039C();
      v163 = sub_22B3603AC();
      (*(*(v163 - 8) + 56))(v92, 0, 1, v163);
      sub_22B35ED2C();
      (*(v161 + 8))(v162, v62);
    }

    v164 = v226;
    sub_22B35F34C();
    if (v251(v164, 1, v62) == 1)
    {
      sub_22B123284(v164, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v165 = v250;
      v166 = v214;
      (*(v250 + 32))(v214, v164, v62);
      (*(v165 + 16))(v249, v166, v62);
      sub_22B36039C();
      v167 = sub_22B3603AC();
      (*(*(v167 - 8) + 56))(v92, 0, 1, v167);
      sub_22B35ED4C();
      (*(v165 + 8))(v166, v62);
    }

    v168 = v227;
    sub_22B35F36C();
    if (v251(v168, 1, v62) == 1)
    {
      sub_22B123284(v168, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v169 = v250;
      v170 = v215;
      (*(v250 + 32))(v215, v168, v62);
      (*(v169 + 16))(v249, v170, v62);
      sub_22B36039C();
      v171 = sub_22B3603AC();
      (*(*(v171 - 8) + 56))(v92, 0, 1, v171);
      sub_22B35ED5C();
      (*(v169 + 8))(v170, v62);
    }

    v122 = v243;
    v121 = v244;
    v124 = v242;
    v172 = v228;
    sub_22B35F38C();
    sub_22B35EC9C();
    sub_22B35F11C();
    v174 = v239;
    v173 = v240;
    if ((*(v239 + 48))(v172, 1, v240) == 1)
    {
      sub_22B123284(v172, &qword_27D8BA570, &qword_22B364DA0);
    }

    else
    {
      v175 = v216;
      (*(v174 + 32))(v216, v172, v173);
      (*(v174 + 16))(v229, v175, v173);
      sub_22B35EB7C();
      (*(v174 + 8))(v175, v173);
    }

    v148 = v241;
    v176 = sub_22B35F18C();
    v123 = v245;
    if (v176)
    {
      sub_22B35EC6C();
    }

    if ((sub_22B35F2EC() & 0x100000000) == 0)
    {
      LOBYTE(v254) = 0;
      sub_22B35ED1C();
    }
  }

  v177 = sub_22B35EEBC();
  v178 = *(v122 + 16);
  if (v177)
  {
    v251 = *(v122 + 16);
    v178(v148, v252, v121);
    v179 = v148;
    v180 = v230;
    sub_22B3603CC();
    sub_22B1A80C8(qword_281408638, MEMORY[0x277D07340]);
    v181 = sub_22B36040C();
    if (v123)
    {

      (*(v231 + 8))(v180, v232);
      (*(v122 + 8))(v179, v121);
      v123 = 0;
    }

    else
    {
      v183 = v182;
      v245 = 0;
      v250 = v181;
      (*(v231 + 8))(v180, v232);
      (*(v122 + 8))(v179, v121);
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v184 = v235;
      v185 = __swift_project_value_buffer(v235, qword_28140BD10);
      swift_beginAccess();
      v186 = v246;
      v187 = v217;
      (*(v246 + 16))(v217, v185, v184);
      v188 = a1;

      v189 = sub_22B36050C();
      v190 = sub_22B360CFC();

      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        v192 = swift_slowAlloc();
        v253 = v192;
        *v191 = 136315650;
        LODWORD(v249) = v190;
        v193 = sub_22B35F3AC();
        v195 = sub_22B1A7B20(v193, v194, &v253);

        *(v191 + 4) = v195;
        *(v191 + 12) = 1024;
        *(v191 + 14) = v206 & 1;
        *(v191 + 18) = 2080;
        v196 = sub_22B1A7B20(v250, v183, &v253);

        *(v191 + 20) = v196;
        _os_log_impl(&dword_22B116000, v189, v249, "Updating site: %s (tokenUpdate: %{BOOL}d with %s", v191, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v192, -1, -1);
        MEMORY[0x23188F650](v191, -1, -1);

        (*(v186 + 8))(v217, v184);
      }

      else
      {

        (*(v186 + 8))(v187, v184);
      }

      v122 = v243;
      v121 = v244;
      v123 = v245;
      v124 = v242;
    }

    v178 = v251;
  }

  v178(v124, v252, v121);
  sub_22B1A80C8(qword_281408638, MEMORY[0x277D07340]);
  v197 = sub_22B36042C();
  if (v123)
  {
    result = (*(v122 + 8))(v124, v121);
    *v233 = v123;
  }

  else
  {
    v200 = v197;
    v201 = v198;
    (*(v122 + 8))(v124, v121);
    v202 = v218;
    v203 = *v218;
    v204 = v218[1];
    *v218 = v200;
    v202[1] = v201;
    return sub_22B11EDC0(v203, v204);
  }

  return result;
}

uint64_t EKEnergySite.createCKZone()()
{
  v1[5] = v0;
  v2 = sub_22B36052C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1A6E70, 0, 0);
}

uint64_t sub_22B1A6E70()
{
  v1 = v0[5];
  v2 = sub_22B35F3AC();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = v0[5];
    v7 = sub_22B35F21C();
    v9 = v8;
    v0[9] = v8;

    sub_22B35F05C();
    if (qword_2814097C0 != -1)
    {
      swift_once();
    }

    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_22B1A7004;

    return sub_22B3357C4(v7, v9);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v12 = 19;
    swift_willThrow();
    v13 = v0[8];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_22B1A7004(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  v4[11] = v1;

  v7 = v4[9];
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B1A7190, 0, 0);
  }

  else
  {
    v8 = v4[8];

    v9 = *(v6 + 8);

    return v9();
  }
}

uint64_t sub_22B1A7190()
{
  v27 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[11];
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[6];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_22B1A7B20(0x4B43657461657263, 0xEE002928656E6F5ALL, &v26);
    *(v13 + 12) = 2112;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_22B116000, v7, v8, "%s error: %@", v13, 0x16u);
    sub_22B123284(v14, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[11];
  sub_22B134CDC();
  swift_allocError();
  *v22 = 19;
  swift_willThrow();

  v23 = v0[8];

  v24 = v0[1];

  return v24();
}

uint64_t EKEnergySite.deleteCKZone()()
{
  v1[5] = v0;
  v2 = sub_22B36052C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1A750C, 0, 0);
}

uint64_t sub_22B1A750C()
{
  v1 = v0[5];
  v2 = sub_22B35F04C();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    if (qword_2814097C0 != -1)
    {
      swift_once();
    }

    v6 = v0[5];
    v7 = sub_22B35F04C();
    v9 = v8;
    v0[9] = v8;
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_22B1A7690;

    return sub_22B336B9C(v7, v9);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v12 = 19;
    swift_willThrow();
    v13 = v0[8];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_22B1A7690()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B1A77D8, 0, 0);
  }

  else
  {
    v5 = v3[8];
    v4 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_22B1A77D8()
{
  v28 = v0;
  v1 = v0[9];

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_22B36050C();
  v9 = sub_22B360D1C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[11];
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_22B1A7B20(0x4B436574656C6564, 0xEE002928656E6F5ALL, &v27);
    *(v14 + 12) = 2112;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&dword_22B116000, v8, v9, "%s error: %@", v14, 0x16u);
    sub_22B123284(v15, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23188F650](v16, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);

    (*(v12 + 8))(v11, v13);
  }

  else
  {
    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[11];
  sub_22B134CDC();
  swift_allocError();
  *v23 = 19;
  swift_willThrow();

  v24 = v0[8];

  v25 = v0[1];

  return v25();
}

uint64_t sub_22B1A7AC4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_22B1A7B20(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_22B1A7B20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22B1A7BEC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22B170C58(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22B1A7BEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22B1A7CF8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22B3611BC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22B1A7CF8(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B1A7D44(a1, a2);
  sub_22B1A7E74(&unk_283EF8090);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22B1A7D44(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22B1A7F60(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22B3611BC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22B36096C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22B1A7F60(v10, 0);
        result = sub_22B36115C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22B1A7E74(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_22B1A7FD4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22B1A7F60(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA568, &qword_22B364D98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22B1A7FD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA568, &qword_22B364D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_22B1A80C8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_22B1A8110(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_22B1A8534();
    v5 = sub_22B3606CC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_22B1A81C0(uint64_t a1)
{
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281408CF0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_28140BC68);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);

  v8 = sub_22B36050C();
  v9 = sub_22B360D2C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v10 = 136315650;
    *(v10 + 4) = sub_22B1A7B20(0xD000000000000011, 0x800000022B36BAE0, aBlock);
    *(v10 + 12) = 2080;
    v11 = sub_22B2546D4(*(a1 + 16));
    v13 = sub_22B1A7B20(v11, v12, aBlock);

    *(v10 + 14) = v13;
    *(v10 + 22) = 2080;
    sub_22B254A74();
    sub_22B1A8534();
    v14 = sub_22B3606FC();
    v16 = v15;

    v17 = sub_22B1A7B20(v14, v16, aBlock);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_22B116000, v8, v9, "%s Sending analytics event for [%s]: %s", v10, 0x20u);
    v18 = v21;
    swift_arrayDestroy();
    MEMORY[0x23188F650](v18, -1, -1);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_22B2546D4(*(a1 + 16));
  v19 = sub_22B36081C();

  aBlock[4] = sub_22B1A8530;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B1A8110;
  aBlock[3] = &block_descriptor_7;
  v20 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v20);
}

unint64_t sub_22B1A8534()
{
  result = qword_281409270;
  if (!qword_281409270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281409270);
  }

  return result;
}

void sub_22B1A8580(uint64_t a1, void *a2)
{
  v3 = sub_22B35DF1C();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v20[6] = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B36052C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35EE6C();
  v22 = sub_22B35EE5C();
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22B3634B0;
  v11 = sub_22B35DEDC();
  *(v10 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v10 + 64) = sub_22B12805C();
  *(v10 + 32) = v11;
  v12 = sub_22B360CCC();
  [v22 setPredicate_];

  v13 = sub_22B360E9C();
  v14 = v13;
  v20[4] = v9;
  v20[5] = v6;
  v20[0] = v3;
  if (v13 >> 62)
  {
    v15 = sub_22B36109C();
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v15; ++i)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x23188EAC0](i, v14);
    }

    else
    {
      v17 = *(v14 + 8 * i + 32);
    }

    v18 = v17;
    [a2 deleteObject_];
  }

LABEL_10:

  sub_22B2A534C(2);
  v19 = v22;
}

uint64_t sub_22B1A8B10()
{
  type metadata accessor for EnergyKitAppTrackerManager();
  v0 = swift_allocObject();
  result = sub_22B17499C();
  qword_27D8BB1B8 = v0;
  return result;
}

uint64_t sub_22B1A8B4C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_22B35DF1C();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v2[12] = *(v4 + 64);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1A8C14, v1, 0);
}

uint64_t sub_22B1A8C14()
{
  v1 = v0[9];
  if (!*(v1 + 120))
  {
    goto LABEL_6;
  }

  aBlock = v0 + 2;
  v2 = *(v1 + 112);

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = sub_22B2A632C();
    v3 = [v4 newBackgroundContext];
    v5 = sub_22B36081C();
    [v3 setTransactionAuthor_];

    [v3 setMergePolicy_];
    [v3 setUndoManager_];
    [v3 setShouldRefreshAfterSave_];
    [v3 setStalenessInterval_];
    [v3 setShouldDeleteInaccessibleFaults_];
  }

  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[11];
  (*(v9 + 16))(v7, v0[8], v8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v10, v7, v8);
  *(v12 + v11) = v3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22B1A8F48;
  *(v13 + 24) = v12;
  v0[6] = sub_22B12819C;
  v0[7] = v13;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22B32556C;
  v0[5] = &block_descriptor_8;
  v14 = _Block_copy(aBlock);
  v15 = v0[7];
  v16 = v3;
  v17 = v2;

  [v16 performBlockAndWait_];
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
LABEL_6:
    v19 = v0[13];

    v20 = v0[1];

    return v20();
  }

  return result;
}

void sub_22B1A8F48()
{
  v1 = *(sub_22B35DF1C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_22B1A8580(v0 + v2, v3);
}

uint64_t sub_22B1A8FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_22B35D8BC();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();
  v8 = sub_22B35DF1C();
  v4[25] = v8;
  v9 = *(v8 - 8);
  v4[26] = v9;
  v10 = *(v9 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v11 = sub_22B36052C();
  v4[30] = v11;
  v12 = *(v11 - 8);
  v4[31] = v12;
  v13 = *(v12 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v14 = sub_22B35EE8C();
  v4[37] = v14;
  v15 = *(v14 - 8);
  v4[38] = v15;
  v16 = *(v15 + 64) + 15;
  v4[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1A91F4, 0, 0);
}

uint64_t sub_22B1A91F4()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  (*(v2 + 104))(v1, *MEMORY[0x277D07390], v3);
  v4 = sub_22B35EE7C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_281408F18 != -1)
    {
      swift_once();
    }

    v0[40] = qword_28140BCA8;
    v5 = swift_task_alloc();
    v0[41] = v5;
    *v5 = v0;
    v5[1] = sub_22B1A93E4;

    return sub_22B242190();
  }

  else
  {
    v7 = v0[39];
    v8 = v0[35];
    v9 = v0[36];
    v11 = v0[33];
    v10 = v0[34];
    v12 = v0[32];
    v14 = v0[28];
    v13 = v0[29];
    v15 = v0[27];
    v16 = v0[24];

    v17 = v0[1];

    return v17(0);
  }
}

uint64_t sub_22B1A93E4()
{
  v1 = *(*v0 + 328);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B1A94E0, 0, 0);
}

uint64_t sub_22B1A94E0()
{
  v1 = v0[40];
  v2 = OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager;
  if ([*(v1 + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager) dataSyncState] == 1)
  {
    if ([*(v1 + v2) hasOptedToHH2])
    {
      v3 = swift_task_alloc();
      v0[42] = v3;
      *v3 = v0;
      v3[1] = sub_22B1A9890;
      v4 = v0[40];

      return sub_22B2430B4();
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v6 = v0 + 35;
    v15 = v0[35];
    v16 = v0[30];
    v17 = v0[31];
    v18 = __swift_project_value_buffer(v16, qword_28140BD10);
    swift_beginAccess();
    (*(v17 + 16))(v15, v18, v16);
    v11 = sub_22B36050C();
    v19 = sub_22B360D1C();
    if (!os_log_type_enabled(v11, v19))
    {
      v13 = 0;
      goto LABEL_16;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22B116000, v11, v19, "HomeKit HH2 not enabled", v14, 2u);
    v13 = 0;
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v6 = v0 + 36;
    v7 = v0[36];
    v8 = v0[30];
    v9 = v0[31];
    v10 = __swift_project_value_buffer(v8, qword_28140BD10);
    swift_beginAccess();
    (*(v9 + 16))(v7, v10, v8);
    v11 = sub_22B36050C();
    v12 = sub_22B360D1C();
    v13 = 2;
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_16;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22B116000, v11, v12, "Data sync state not good", v14, 2u);
  }

  MEMORY[0x23188F650](v14, -1, -1);
LABEL_16:
  v20 = *v6;
  v21 = v0[30];
  v22 = v0[31];

  (*(v22 + 8))(v20, v21);
  sub_22B134CDC();
  swift_allocError();
  *v23 = v13;
  swift_willThrow();
  v24 = v0[39];
  v26 = v0[35];
  v25 = v0[36];
  v28 = v0[33];
  v27 = v0[34];
  v29 = v0[32];
  v31 = v0[28];
  v30 = v0[29];
  v32 = v0[27];
  v34 = v0[24];

  v33 = v0[1];

  return v33();
}

uint64_t sub_22B1A9890(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v7 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {

    v5 = sub_22B1AA5E8;
  }

  else
  {
    v5 = sub_22B1A99AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B1A99AC()
{
  v1 = v0[43];
  if (v1 >> 62)
  {
LABEL_30:
    v2 = sub_22B36109C();
    v3 = v0[43];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v26 = v0[33];
    v27 = v0[30];
    v28 = v0[31];
    v29 = __swift_project_value_buffer(v27, qword_28140BD10);
    swift_beginAccess();
    (*(v28 + 16))(v26, v29, v27);
    v30 = sub_22B36050C();
    v31 = sub_22B360D1C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22B116000, v30, v31, "No matching Home found", v32, 2u);
      MEMORY[0x23188F650](v32, -1, -1);
    }

    v33 = v0[33];
    v34 = v0[30];
    v35 = v0[31];

    (*(v35 + 8))(v33, v34);
    sub_22B134CDC();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
    v37 = v0[39];
    v39 = v0[35];
    v38 = v0[36];
    v41 = v0[33];
    v40 = v0[34];
    v42 = v0[32];
    v44 = v0[28];
    v43 = v0[29];
    v45 = v0[27];
    v63 = v0[24];

    v46 = v0[1];

    return v46();
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v3 = v0[43];
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  v55 = v0 + 17;
  v4 = v0[26];
  v5 = 0;
  sub_22B35F45C();
  v60 = v1 & 0xC000000000000001;
  v53 = v3 + 32;
  v54 = v1 & 0xFFFFFFFFFFFFFF8;
  v61 = v0[44];
  v59 = (v4 + 8);
  v57 = v0;
  v58 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v56 = v2;
  while (1)
  {
    if (v60)
    {
      v7 = MEMORY[0x23188EAC0](v5, v0[43]);
    }

    else
    {
      if (v5 >= *(v54 + 16))
      {
        goto LABEL_29;
      }

      v7 = *(v53 + 8 * v5);
    }

    v0[45] = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v62 = v5 + 1;
    v9 = v0[28];
    v8 = v0[29];
    v10 = v0[25];
    v11 = v0[18];
    v1 = v7;
    v12 = [v7 uniqueIdentifier];
    sub_22B35DEFC();

    sub_22B35DECC();
    v13 = v0;
    v14 = *v59;
    v13[46] = *v59;
    v13[47] = v58;
    v14(v8, v10);
    sub_22B35F1EC();
    sub_22B35DEAC();
    v15 = sub_22B35DECC();
    v17 = v16;
    v14(v9, v10);
    if (v15 == sub_22B35DECC() && v17 == v18)
    {
      break;
    }

    v19 = sub_22B36134C();

    if (v19)
    {
      goto LABEL_15;
    }

    v0 = v57;
    v6 = v1;
LABEL_5:

    ++v5;
    if (v62 == v56)
    {
      v25 = v0[43];
      goto LABEL_18;
    }
  }

LABEL_15:
  v6 = v1;
  v20 = [v1 restrictedGuests];
  sub_22B1972C4();
  v21 = sub_22B360A5C();

  v22 = [v1 currentUser];
  *v55 = v22;
  v23 = swift_task_alloc();
  *(v23 + 16) = v55;
  v1 = v61;
  v24 = sub_22B207D24(sub_22B1ABB4C, v23, v21);

  if (v24)
  {
    v0 = v57;
    goto LABEL_5;
  }

  v48 = v57[43];
  v49 = v57[21];

  v50 = *(v49 + 16);
  v51 = swift_task_alloc();
  v57[48] = v51;
  *v51 = v57;
  v51[1] = sub_22B1A9F30;
  v52 = v57[19];

  return sub_22B1A2AEC(v52, v50);
}

uint64_t sub_22B1A9F30(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 384);
  v7 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v5 = sub_22B1AA4F4;
  }

  else
  {
    v5 = sub_22B1AA044;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B1AA044()
{
  v71 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[26];
  v63 = v0[27];
  v66 = v0[45];
  v5 = v0[24];
  v6 = v0[22];
  v7 = v0[23];
  v8 = v0[19];
  v59 = v0[18];
  v61 = v0[25];
  v9 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v1, v9, v2);
  (*(v7 + 16))(v5, v8, v6);
  (*(v4 + 16))(v63, v59, v61);
  v10 = v66;
  v11 = sub_22B36050C();
  v12 = sub_22B360CFC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[49];
    v56 = v0[46];
    v57 = v0[47];
    v58 = v0[45];
    v62 = v0[31];
    v64 = v0[30];
    v67 = v0[34];
    v14 = v0[27];
    v15 = v0[24];
    v17 = v0[22];
    v16 = v0[23];
    v54 = v0[20];
    v55 = v0[25];
    v18 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v70 = v60;
    *v18 = 134219010;
    *(v18 + 4) = v13;
    *(v18 + 12) = 2080;
    sub_22B1ABB04(&qword_2814091E0, MEMORY[0x277CC88A8]);
    v19 = sub_22B36131C();
    v21 = v20;
    (*(v16 + 8))(v15, v17);
    v22 = sub_22B1A7B20(v19, v21, &v70);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v54;
    *(v18 + 32) = 2080;
    sub_22B1ABB04(&qword_2814091D0, MEMORY[0x277CC95F0]);
    v23 = sub_22B36131C();
    v25 = v24;
    v56(v14, v55);
    v26 = sub_22B1A7B20(v23, v25, &v70);

    *(v18 + 34) = v26;
    *(v18 + 42) = 2080;
    v27 = [v58 name];
    v28 = sub_22B36084C();
    v30 = v29;

    v31 = sub_22B1A7B20(v28, v30, &v70);

    *(v18 + 44) = v31;
    _os_log_impl(&dword_22B116000, v11, v12, "Fetched %ld events between %s with limit %ld for %s at %s", v18, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v60, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v62 + 8))(v67, v64);
  }

  else
  {
    v33 = v0[46];
    v32 = v0[47];
    v34 = v11;
    v35 = v0[45];
    v36 = v0[31];
    v65 = v0[30];
    v68 = v0[34];
    v37 = v0[27];
    v39 = v0[24];
    v38 = v0[25];
    v41 = v0[22];
    v40 = v0[23];

    v33(v37, v38);
    (*(v40 + 8))(v39, v41);
    (*(v36 + 8))(v68, v65);
  }

  v69 = v0[49];
  v42 = v0[39];
  v44 = v0[35];
  v43 = v0[36];
  v46 = v0[33];
  v45 = v0[34];
  v47 = v0[32];
  v49 = v0[28];
  v48 = v0[29];
  v50 = v0[27];
  v51 = v0[24];

  v52 = v0[1];

  return v52(v69);
}

uint64_t sub_22B1AA4F4()
{
  v13 = *(v0 + 400);
  v1 = *(v0 + 312);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);
  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  v9 = *(v0 + 216);
  v10 = *(v0 + 192);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22B1AA5E8()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "No homes found", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[30];

  (*(v9 + 8))(v8, v10);
  sub_22B134CDC();
  swift_allocError();
  *v11 = 0;
  swift_willThrow();
  v12 = v0[39];
  v14 = v0[35];
  v13 = v0[36];
  v16 = v0[33];
  v15 = v0[34];
  v17 = v0[32];
  v19 = v0[28];
  v18 = v0[29];
  v20 = v0[27];
  v23 = v0[24];

  v21 = v0[1];

  return v21();
}

uint64_t sub_22B1AA7FC(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_22B35DF1C();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v5 = *(v4 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v6 = sub_22B36052C();
  v2[21] = v6;
  v7 = *(v6 - 8);
  v2[22] = v7;
  v8 = *(v7 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v9 = sub_22B35EE8C();
  v2[27] = v9;
  v10 = *(v9 - 8);
  v2[28] = v10;
  v11 = *(v10 + 64) + 15;
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1AA9A4, 0, 0);
}

uint64_t sub_22B1AA9A4()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  (*(v2 + 104))(v1, *MEMORY[0x277D07390], v3);
  v4 = sub_22B35EE7C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_281408F18 != -1)
    {
      swift_once();
    }

    v0[30] = qword_28140BCA8;
    v5 = swift_task_alloc();
    v0[31] = v5;
    *v5 = v0;
    v5[1] = sub_22B1AAB54;

    return sub_22B242190();
  }

  else
  {
    v7 = v0[29];
    v8 = v0[25];
    v9 = v0[26];
    v11 = v0[23];
    v10 = v0[24];
    v13 = v0[19];
    v12 = v0[20];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_22B1AAB54()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B1AAC50, 0, 0);
}

uint64_t sub_22B1AAC50()
{
  v1 = v0[30];
  v2 = OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager;
  if ([*(v1 + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager) dataSyncState] == 1)
  {
    if ([*(v1 + v2) hasOptedToHH2])
    {
      v3 = swift_task_alloc();
      v0[32] = v3;
      *v3 = v0;
      v3[1] = sub_22B1AAFCC;
      v4 = v0[30];

      return sub_22B2430B4();
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v7 = v0 + 25;
    v15 = v0[25];
    v16 = v0[21];
    v17 = v0[22];
    v18 = __swift_project_value_buffer(v16, qword_28140BD10);
    swift_beginAccess();
    (*(v17 + 16))(v15, v18, v16);
    v11 = sub_22B36050C();
    v19 = sub_22B360D1C();
    if (!os_log_type_enabled(v11, v19))
    {
      v13 = 0;
      goto LABEL_16;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22B116000, v11, v19, "HomeKit HH2 not enabled", v14, 2u);
    v13 = 0;
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v7 = v0 + 26;
    v6 = v0[26];
    v8 = v0[21];
    v9 = v0[22];
    v10 = __swift_project_value_buffer(v8, qword_28140BD10);
    swift_beginAccess();
    (*(v9 + 16))(v6, v10, v8);
    v11 = sub_22B36050C();
    v12 = sub_22B360D1C();
    v13 = 2;
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_16;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22B116000, v11, v12, "Data sync state not good", v14, 2u);
  }

  MEMORY[0x23188F650](v14, -1, -1);
LABEL_16:
  v20 = *v7;
  v21 = v0[21];
  v22 = v0[22];

  (*(v22 + 8))(v20, v21);
  sub_22B134CDC();
  swift_allocError();
  *v23 = v13;
  swift_willThrow();
  v24 = v0[29];
  v26 = v0[25];
  v25 = v0[26];
  v28 = v0[23];
  v27 = v0[24];
  v30 = v0[19];
  v29 = v0[20];

  v31 = v0[1];

  return v31();
}

uint64_t sub_22B1AAFCC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  v7 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {

    v5 = sub_22B1AB7E4;
  }

  else
  {
    v5 = sub_22B1AB0E8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B1AB0E8()
{
  v1 = v0[33];
  if (v1 >> 62)
  {
LABEL_30:
    v2 = sub_22B36109C();
    v3 = v0[33];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v25 = v0[24];
    v26 = v0[21];
    v27 = v0[22];
    v28 = __swift_project_value_buffer(v26, qword_28140BD10);
    swift_beginAccess();
    (*(v27 + 16))(v25, v28, v26);
    v29 = sub_22B36050C();
    v30 = sub_22B360D1C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22B116000, v29, v30, "No matching Home found", v31, 2u);
      MEMORY[0x23188F650](v31, -1, -1);
    }

    v32 = v0[24];
    v33 = v0[21];
    v34 = v0[22];

    (*(v34 + 8))(v32, v33);
    sub_22B134CDC();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();
    v36 = v0[29];
    v38 = v0[25];
    v37 = v0[26];
    v40 = v0[23];
    v39 = v0[24];
    v42 = v0[19];
    v41 = v0[20];

    v43 = v0[1];

    return v43();
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v3 = v0[33];
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  v51 = v0 + 14;
  v4 = v0[18];
  v5 = 0;
  sub_22B35F45C();
  v55 = v1 & 0xC000000000000001;
  v49 = v3 + 32;
  v50 = v1 & 0xFFFFFFFFFFFFFF8;
  v53 = v0;
  v54 = (v4 + 8);
  v56 = v0[34];
  v52 = v2;
  while (1)
  {
    if (v55)
    {
      v7 = MEMORY[0x23188EAC0](v5, v0[33]);
    }

    else
    {
      if (v5 >= *(v50 + 16))
      {
        goto LABEL_29;
      }

      v7 = *(v49 + 8 * v5);
    }

    v0[35] = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v57 = v5 + 1;
    v9 = v0[19];
    v8 = v0[20];
    v10 = v0[17];
    v11 = v0[15];
    v1 = v7;
    v12 = [v7 uniqueIdentifier];
    sub_22B35DEFC();

    sub_22B35DECC();
    v13 = *v54;
    (*v54)(v8, v10);
    sub_22B35F1EC();
    sub_22B35DEAC();
    v14 = sub_22B35DECC();
    v16 = v15;
    v13(v9, v10);
    if (v14 == sub_22B35DECC() && v16 == v17)
    {
      break;
    }

    v18 = sub_22B36134C();

    if (v18)
    {
      goto LABEL_15;
    }

    v0 = v53;
    v6 = v1;
LABEL_5:

    ++v5;
    if (v57 == v52)
    {
      v24 = v0[33];
      goto LABEL_18;
    }
  }

LABEL_15:
  v6 = v1;
  v19 = [v1 restrictedGuests];
  sub_22B1972C4();
  v20 = sub_22B360A5C();

  v21 = [v1 currentUser];
  *v51 = v21;
  v22 = swift_task_alloc();
  *(v22 + 16) = v51;
  v1 = v56;
  v23 = sub_22B207D24(sub_22B1ABAE4, v22, v20);

  if (v23)
  {
    v0 = v53;
    goto LABEL_5;
  }

  v45 = v53[33];
  v46 = v53[16];

  v47 = *(v46 + 16);
  v48 = swift_task_alloc();
  v53[36] = v48;
  *v48 = v53;
  v48[1] = sub_22B1AB618;

  return sub_22B1A20DC(v47);
}

uint64_t sub_22B1AB618()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_22B1AB9C8;
  }

  else
  {
    v3 = sub_22B1AB72C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B1AB72C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22B1AB7E4()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "No homes found", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[21];

  (*(v9 + 8))(v8, v10);
  sub_22B134CDC();
  swift_allocError();
  *v11 = 0;
  swift_willThrow();
  v12 = v0[29];
  v14 = v0[25];
  v13 = v0[26];
  v16 = v0[23];
  v15 = v0[24];
  v18 = v0[19];
  v17 = v0[20];

  v19 = v0[1];

  return v19();
}

uint64_t sub_22B1AB9C8()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 232);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22B1ABA88()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22B1ABB04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B1ABB68()
{
  type metadata accessor for HomeEnergyAlarmManager();
  v0 = swift_allocObject();
  result = sub_22B1ABBF8();
  qword_28140BD60 = v0;
  return result;
}

uint64_t sub_22B1ABBA4()
{
  v0 = sub_22B35DE9C();
  __swift_allocate_value_buffer(v0, qword_28140BD68);
  __swift_project_value_buffer(v0, qword_28140BD68);
  return sub_22B35DD0C();
}

uint64_t sub_22B1ABBF8()
{
  v22 = sub_22B360D6C();
  v1 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20]();
  v20 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22B360D8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_22B36062C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  v10 = swift_allocObject();
  v21 = v0;
  swift_weakInit();

  v11 = sub_22B32CE54(0, 1, 1, v9);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_22B32CE54((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[32 * v13];
  *(v14 + 4) = 0xD000000000000024;
  *(v14 + 5) = 0x800000022B36B9F0;
  *(v14 + 6) = sub_22B1AD178;
  *(v14 + 7) = v10;
  sub_22B11870C();
  sub_22B36061C();
  (*(v4 + 104))(v7, *MEMORY[0x277D85268], v3);
  v23 = v9;
  sub_22B1AD180(&qword_2814092F0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAA80, &qword_22B3653C0);
  sub_22B1AD1C8();
  sub_22B36104C();
  v15 = sub_22B360DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA580, &unk_22B364F30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22B3634B0;
  *(v16 + 32) = 0x6C7070612E6D6F63;
  *(v16 + 40) = 0xEF6D72616C612E65;
  *(v16 + 48) = v15;
  *(v16 + 56) = v11;

  v17 = v21;
  v18 = *(v21 + 16);
  *(v21 + 16) = v16;

  return v17;
}

uint64_t sub_22B1ABF6C()
{
  v0 = sub_22B36052C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v0, qword_28140BD10);
    swift_beginAccess();
    (*(v1 + 16))(v4, v6, v0);
    v7 = sub_22B36050C();
    v8 = sub_22B360D2C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11[0] = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_22B1A7B20(0xD000000000000024, 0x800000022B36B9F0, v11);
      _os_log_impl(&dword_22B116000, v7, v8, "%{public}s is executing", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x23188F650](v10, -1, -1);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    sub_22B1ACF0C(0xD000000000000024, 0x800000022B36B9F0);
    os_transaction_create();
    sub_22B1AC20C();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22B1AC20C()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v15 - v1;
  v3 = sub_22B36052C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22B116000, v9, v10, "[Alarm] Taking extended lifetime", v11, 2u);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_22B123DF0(0, 0, v2, &unk_22B364F48, v13);
}

uint64_t sub_22B1AC4AC()
{
  if (qword_28140AA30 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B1AC574;

  return sub_22B199D68(1);
}

uint64_t sub_22B1AC574()
{
  v1 = *(*v0 + 16);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B1AC670, 0, 0);
}

uint64_t sub_22B1AC670()
{
  if (qword_28140A0B8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22B14813C;

  return sub_22B2E45F0();
}

uint64_t sub_22B1AC734()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v7 = __swift_project_value_buffer(v2, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v6, v7, v2);
    v8 = sub_22B36050C();
    v9 = sub_22B360D2C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B116000, v8, v9, "Registering for alarm streams", v10, 2u);
      MEMORY[0x23188F650](v10, -1, -1);
    }

    v11 = *(v3 + 8);
    v3 += 8;
    v11(v6, v2);
    v1 = *(v1 + 16);
    v12 = *(v1 + 16);

    if (!v12)
    {
      break;
    }

    v13 = 0;
    v2 = 0;
    v14 = (v1 + 56);
    while (v13 < *(v1 + 16))
    {
      v16 = *(v14 - 1);
      v15 = *v14;
      v3 = *(v14 - 3);
      v6 = *(v14 - 2);

      v17 = v16;

      v19 = MEMORY[0x23188EEB0](v18);
      sub_22B124DC0(v3, v6, v17, v15);
      ++v13;
      objc_autoreleasePoolPop(v19);

      v14 += 4;
      if (v12 == v13)
      {
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
  }
}

uint64_t sub_22B1AC99C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(sub_22B35DE9C() - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v38 = v14;
  v13(v12, a1);
  if (qword_28140AB20 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v38, qword_28140BD68);
  if (sub_22B35DDEC())
  {
    (*(v9 + 24))(v12, v15, v38);
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v5 + 16))(v8, v16, v4);

  v17 = sub_22B36050C();
  v18 = sub_22B360D2C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = v8;
    v20 = v19;
    v33 = swift_slowAlloc();
    v37[0] = v33;
    *v20 = 136315394;
    *(v20 + 4) = sub_22B1A7B20(v35, v36, v37);
    *(v20 + 12) = 2080;
    swift_beginAccess();
    sub_22B1AD180(&qword_28140B488, MEMORY[0x277CC9578]);
    v21 = sub_22B36131C();
    v23 = sub_22B1A7B20(v21, v22, v37);
    v32 = v4;
    v24 = v5;
    v25 = v23;

    *(v20 + 14) = v25;
    _os_log_impl(&dword_22B116000, v17, v18, "Setting alarm %s for %s", v20, 0x16u);
    v26 = v33;
    swift_arrayDestroy();
    MEMORY[0x23188F650](v26, -1, -1);
    MEMORY[0x23188F650](v20, -1, -1);

    (*(v24 + 8))(v34, v32);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  empty = xpc_dictionary_create_empty();
  swift_beginAccess();
  result = sub_22B35DE3C();
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30 = 1000000000 * v29;
  if ((v29 * 1000000000) >> 64 == v30 >> 63)
  {
    xpc_dictionary_set_date(empty, "Date", v30);
    xpc_dictionary_set_BOOL(empty, "ShouldWake", 1);
    sub_22B3608CC();
    sub_22B3608CC();
    swift_unknownObjectRetain();
    xpc_set_event();
    swift_unknownObjectRelease_n();

    return (*(v9 + 8))(v12, v38);
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22B1ACEB0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22B1ACF0C(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(a1, a2, &v15);
    _os_log_impl(&dword_22B116000, v10, v11, "Cancelling alarm %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  sub_22B3608CC();
  sub_22B3608CC();
  xpc_set_event();
}

uint64_t sub_22B1AD180(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22B1AD1C8()
{
  result = qword_281409340;
  if (!qword_281409340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D8BAA80, &qword_22B3653C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281409340);
  }

  return result;
}

uint64_t sub_22B1AD22C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B119A60;

  return sub_22B1AC490();
}

_BYTE *AutoBugCaptureIssue.init(type:subType:subTypeContext:process:payload:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  *a7 = *result;
  *(a7 + 1) = v7;
  *(a7 + 2) = v8;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5;
  *(a7 + 24) = a6;
  return result;
}

uint64_t static AutoBugCaptureManager.sendIssue(_:)(char *a1)
{
  v2 = sub_22B3605EC();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B36062C();
  v19 = *(v6 - 8);
  v20 = v6;
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v14 = *(a1 + 1);
  v13 = *(a1 + 2);
  v15 = *(a1 + 3);
  if (qword_281408CD8 != -1)
  {
    swift_once();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  *(v16 + 17) = v11;
  *(v16 + 18) = v12;
  *(v16 + 24) = v14;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  aBlock[4] = sub_22B1AF3E4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B118A6C;
  aBlock[3] = &block_descriptor_9;
  v17 = _Block_copy(aBlock);

  sub_22B36060C();
  v22 = MEMORY[0x277D84F90];
  sub_22B1B0694(&qword_281409370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B118A18(&qword_281409350, &unk_27D8BA330, &unk_22B363330);
  sub_22B36104C();
  MEMORY[0x23188E6D0](0, v9, v5, v17);
  _Block_release(v17);
  (*(v21 + 8))(v5, v2);
  (*(v19 + 8))(v9, v20);
}

uint64_t AutoBugCaptureDomain.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22B3612FC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_22B1AD690()
{
  sub_22B36149C();
  sub_22B3608FC();
  return sub_22B3614DC();
}

uint64_t sub_22B1AD704()
{
  sub_22B36149C();
  sub_22B3608FC();
  return sub_22B3614DC();
}

uint64_t sub_22B1AD758@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22B3612FC();

  *a2 = v5 != 0;
  return result;
}

HomeEnergyDaemon::AutoBugCaptureType_optional __swiftcall AutoBugCaptureType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22B3612FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AutoBugCaptureType.rawValue.getter()
{
  v1 = 0x6E6F6974636E7546;
  v2 = 0x726576726553;
  if (*v0 != 2)
  {
    v2 = 0x74694B64756F6C43;
  }

  if (*v0)
  {
    v1 = 0x6174614465726F43;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22B1AD8AC()
{
  v1 = *v0;
  sub_22B36149C();
  sub_22B3608FC();

  return sub_22B3614DC();
}

uint64_t sub_22B1AD96C()
{
  *v0;
  *v0;
  *v0;
  sub_22B3608FC();
}

uint64_t sub_22B1ADA18()
{
  v1 = *v0;
  sub_22B36149C();
  sub_22B3608FC();

  return sub_22B3614DC();
}

void sub_22B1ADAE0(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006C61;
  v3 = 0x6E6F6974636E7546;
  v4 = 0xE600000000000000;
  v5 = 0x726576726553;
  if (*v1 != 2)
  {
    v5 = 0x74694B64756F6C43;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x6174614465726F43;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

HomeEnergyDaemon::AutoBugCaptureSubType_optional __swiftcall AutoBugCaptureSubType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22B3612FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AutoBugCaptureSubType.rawValue.getter()
{
  v1 = 0x6F69747265737341;
  v2 = 0x6974707572726F43;
  if (*v0 != 2)
  {
    v2 = 4411480;
  }

  if (*v0)
  {
    v1 = 0x7365636976726553;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22B1ADC4C()
{
  v1 = *v0;
  sub_22B36149C();
  sub_22B3608FC();

  return sub_22B3614DC();
}

uint64_t sub_22B1ADD1C()
{
  *v0;
  *v0;
  *v0;
  sub_22B3608FC();
}

uint64_t sub_22B1ADDD8()
{
  v1 = *v0;
  sub_22B36149C();
  sub_22B3608FC();

  return sub_22B3614DC();
}

void sub_22B1ADEB0(uint64_t *a1@<X8>)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6F69747265737341;
  v4 = 0xEA00000000006E6FLL;
  v5 = 0x6974707572726F43;
  if (*v1 != 2)
  {
    v5 = 4411480;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 0x7365636976726553;
    v2 = 0xED0000726F727245;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

HomeEnergyDaemon::AutoBugCaptureSubTypeContext_optional __swiftcall AutoBugCaptureSubTypeContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22B36136C();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t AutoBugCaptureSubTypeContext.rawValue.getter()
{
  result = 0x7265206C61746146;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD000000000000030;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
    case 0x11:
      result = 0xD00000000000001FLL;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      return result;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xB:
      result = 0xD00000000000001ALL;
      break;
    case 0xD:
    case 0xE:
      result = 0xD00000000000001CLL;
      break;
    case 0xF:
      result = 0xD000000000000022;
      break;
    case 0x10:
      result = 0xD000000000000020;
      break;
    case 0x12:
      result = 0xD000000000000018;
      break;
    case 0x13:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD000000000000024;
      break;
  }

  return result;
}

uint64_t sub_22B1AE2B4(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AutoBugCaptureSubTypeContext.rawValue.getter();
  v4 = v3;
  if (v2 == AutoBugCaptureSubTypeContext.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22B36134C();
  }

  return v7 & 1;
}

uint64_t sub_22B1AE350()
{
  v1 = *v0;
  sub_22B36149C();
  AutoBugCaptureSubTypeContext.rawValue.getter();
  sub_22B3608FC();

  return sub_22B3614DC();
}

uint64_t sub_22B1AE3B8()
{
  v2 = *v0;
  AutoBugCaptureSubTypeContext.rawValue.getter();
  sub_22B3608FC();
}

uint64_t sub_22B1AE41C()
{
  v1 = *v0;
  sub_22B36149C();
  AutoBugCaptureSubTypeContext.rawValue.getter();
  sub_22B3608FC();

  return sub_22B3614DC();
}

unint64_t sub_22B1AE48C@<X0>(unint64_t *a1@<X8>)
{
  result = AutoBugCaptureSubTypeContext.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B1AE4B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = sub_22B35DE9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  sub_22B35DE6C();
  v16 = OBJC_IVAR____TtC16HomeEnergyDaemonP33_FBABD7D47CFD66C266159F9B5A379FD822AutoBugCaptureReporter_lastReportedDate;
  swift_beginAccess();
  sub_22B1B05B4(v0 + v16, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_22B1AFCD8(v7);
    (*(v9 + 32))(v5, v15, v8);
LABEL_6:
    v22 = v5;
    v21 = 1;
    (*(v9 + 56))(v22, 0, 1, v8);
    swift_beginAccess();
    sub_22B1B0624(v22, v0 + v16);
    swift_endAccess();
    return v21;
  }

  v24 = v5;
  v25 = v0;
  v17 = *(v9 + 32);
  v17(v13, v7, v8);
  sub_22B35DD3C();
  v19 = v18;
  v20 = *(v9 + 8);
  v20(v13, v8);
  if (v19 >= 86400.0)
  {
    v5 = v24;
    v0 = v25;
    v17(v24, v15, v8);
    goto LABEL_6;
  }

  v20(v15, v8);
  return 0;
}

void sub_22B1AE764(unsigned __int8 *a1)
{
  v3 = sub_22B36052C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  v11 = *a1;
  v12 = a1[1];
  v52 = a1[2];
  v53 = v12;
  v13 = *(a1 + 2);
  v54 = *(a1 + 1);
  v14 = *(a1 + 3);
  v15 = sub_22B1AE4B4();
  v49 = v11;
  if (v15)
  {
    v50 = *(v1 + 16);
    v16 = sub_22B36081C();
    v48 = v1;
    v51 = v3;
    v17 = sub_22B36081C();

    v18 = sub_22B36081C();

    LOBYTE(aBlock) = v52;
    AutoBugCaptureSubTypeContext.rawValue.getter();
    v19 = sub_22B36081C();

    v20 = sub_22B36081C();
    v47 = [v50 signatureWithDomain:v16 type:v17 subType:v18 subtypeContext:v19 detectedProcess:v20 triggerThresholdValues:0];

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v21 = v51;
    v22 = __swift_project_value_buffer(v51, qword_28140BD10);
    swift_beginAccess();
    (*(v4 + 16))(v8, v22, v21);

    v23 = sub_22B36050C();
    v24 = sub_22B360D2C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v61 = v26;
      *v25 = 136315138;
      LOBYTE(aBlock) = v49;
      BYTE1(aBlock) = v53;
      BYTE2(aBlock) = v52;
      v56 = v54;
      v57 = v13;
      v58 = v14;

      v27 = AutoBugCaptureIssue.description.getter();
      v29 = v28;

      v30 = sub_22B1A7B20(v27, v29, &v61);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_22B116000, v23, v24, "Submitting snapshot request to ABC for signature: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23188F650](v26, -1, -1);
      MEMORY[0x23188F650](v25, -1, -1);

      (*(v4 + 8))(v8, v51);
    }

    else
    {

      (*(v4 + 8))(v8, v21);
    }

    v41 = v47;
    v40 = v48;
    if (v47 && (aBlock = 0, v42 = v47, sub_22B3606DC(), v42, aBlock))
    {
      v43 = sub_22B3606CC();

      if (!v14)
      {
LABEL_14:
        v44 = 0;
LABEL_17:
        v59 = sub_22B1AFD40;
        v60 = v40;
        aBlock = MEMORY[0x277D85DD0];
        v56 = 1107296256;
        v57 = sub_22B1AEF4C;
        v58 = &block_descriptor_36;
        v45 = _Block_copy(&aBlock);

        [v50 snapshotWithSignature:v43 duration:0 event:v44 payload:v45 reply:0.0];
        _Block_release(v45);

        return;
      }
    }

    else
    {
      v43 = 0;
      if (!v14)
      {
        goto LABEL_14;
      }
    }

    sub_22B2A5FD8(v14);
    v44 = sub_22B3606CC();

    goto LABEL_17;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v10, v31, v3);

  v32 = sub_22B36050C();
  v33 = sub_22B360D2C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v61 = v35;
    *v34 = 136315138;
    LOBYTE(aBlock) = v49;
    BYTE1(aBlock) = v53;
    BYTE2(aBlock) = v52;
    v56 = v54;
    v57 = v13;
    v58 = v14;

    v36 = AutoBugCaptureIssue.description.getter();
    v51 = v3;
    v38 = v37;

    v39 = sub_22B1A7B20(v36, v38, &v61);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_22B116000, v32, v33, "Not reporting to AutoBugCapture because we are rate limited: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x23188F650](v35, -1, -1);
    MEMORY[0x23188F650](v34, -1, -1);

    (*(v4 + 8))(v10, v51);
  }

  else
  {

    (*(v4 + 8))(v10, v3);
  }
}

uint64_t sub_22B1AEF4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_22B3606EC();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_22B1AEFDC()
{
  sub_22B1AFCD8(v0 + OBJC_IVAR____TtC16HomeEnergyDaemonP33_FBABD7D47CFD66C266159F9B5A379FD822AutoBugCaptureReporter_lastReportedDate);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_22B1AF048()
{
  v0 = sub_22B360D6C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_22B36062C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_22B360D8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B11870C();
  (*(v5 + 104))(v8, *MEMORY[0x277D85268], v4);
  sub_22B36060C();
  v10[1] = MEMORY[0x277D84F90];
  sub_22B1B0694(&qword_2814092F0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAA80, &qword_22B3653C0);
  sub_22B118A18(&qword_281409340, &unk_27D8BAA80, &qword_22B3653C0);
  sub_22B36104C();
  result = sub_22B360DBC();
  qword_281408CE0 = result;
  return result;
}

uint64_t sub_22B1AF298()
{
  v0 = type metadata accessor for AutoBugCaptureReporter();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = [objc_allocWithZone(MEMORY[0x277D6AFC0]) init];
  v4 = OBJC_IVAR____TtC16HomeEnergyDaemonP33_FBABD7D47CFD66C266159F9B5A379FD822AutoBugCaptureReporter_lastReportedDate;
  v5 = sub_22B35DE9C();
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  qword_281408CC8 = v3;
  return result;
}

void sub_22B1AF338(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_281408CC0 != -1)
  {
    v4 = a1;
    v5 = a2;
    v6 = a4;
    v7 = a3;
    swift_once();
    a1 = v4;
    a2 = v5;
    a3 = v7;
    a4 = v6;
  }

  v8 = a1;
  v9 = BYTE2(a1);
  v10 = a2;
  v11 = a3;
  v12 = a4;
  sub_22B1AE764(&v8);
}

uint64_t AutoBugCaptureIssue.process.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AutoBugCaptureIssue.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  MEMORY[0x23188E270](0x72656E45656D6F48, 0xEA00000000007967);
  MEMORY[0x23188E270](46, 0xE100000000000000);
  v4 = 0x6E6F6974636E7546;
  v5 = 0xE600000000000000;
  v6 = 0x726576726553;
  v7 = 0xE800000000000000;
  if (v1 != 2)
  {
    v6 = 0x74694B64756F6C43;
    v5 = 0xE800000000000000;
  }

  if (v1)
  {
    v4 = 0x6174614465726F43;
  }

  else
  {
    v7 = 0xEA00000000006C61;
  }

  if (v1 <= 1)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (v1 <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  MEMORY[0x23188E270](v8, v9);

  MEMORY[0x23188E270](46, 0xE100000000000000);
  v10 = 0xE90000000000006ELL;
  v11 = 0x6F69747265737341;
  v12 = 0xEA00000000006E6FLL;
  v13 = 0x6974707572726F43;
  if (v2 != 2)
  {
    v13 = 4411480;
    v12 = 0xE300000000000000;
  }

  if (v2)
  {
    v11 = 0x7365636976726553;
    v10 = 0xED0000726F727245;
  }

  if (v2 <= 1)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  if (v2 <= 1)
  {
    v15 = v10;
  }

  else
  {
    v15 = v12;
  }

  MEMORY[0x23188E270](v14, v15);

  MEMORY[0x23188E270](46, 0xE100000000000000);
  sub_22B36122C();
  return 0;
}

unint64_t sub_22B1AF634()
{
  result = qword_27D8BA588;
  if (!qword_27D8BA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA588);
  }

  return result;
}

unint64_t sub_22B1AF68C()
{
  result = qword_27D8BA590;
  if (!qword_27D8BA590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA590);
  }

  return result;
}

unint64_t sub_22B1AF6E4()
{
  result = qword_27D8BA598;
  if (!qword_27D8BA598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA598);
  }

  return result;
}

unint64_t sub_22B1AF73C()
{
  result = qword_27D8BA5A0;
  if (!qword_27D8BA5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA5A0);
  }

  return result;
}

uint64_t sub_22B1AF7D0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_22B1AF860(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoBugCaptureSubTypeContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutoBugCaptureSubTypeContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for AutoBugCaptureReporter()
{
  result = qword_281408CA0;
  if (!qword_281408CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B1AFAC4()
{
  sub_22B180EAC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22B1AFB64(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_22B1AFBB4(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_22B1AFC40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B1AFC88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B1AFCD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22B1AFD44(uint64_t a1)
{
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  if (!a1)
  {
    return;
  }

  v13 = *MEMORY[0x277D6B1A0];
  v57 = sub_22B36084C();
  v58 = v14;
  sub_22B36110C();
  if (*(a1 + 16) && (v15 = sub_22B33B248(v59), (v16 & 1) != 0))
  {
    sub_22B170C58(*(a1 + 56) + 32 * v15, v60);
    sub_22B1B0560(v59);
    if ((swift_dynamicCast() & 1) != 0 && v57 == 1)
    {
      v17 = *MEMORY[0x277D6B190];
      v57 = sub_22B36084C();
      v58 = v18;
      sub_22B36110C();
      if (*(a1 + 16) && (v19 = sub_22B33B248(v59), (v20 & 1) != 0))
      {
        sub_22B170C58(*(a1 + 56) + 32 * v19, v60);
        sub_22B1B0560(v59);
        if (swift_dynamicCast())
        {
          v22 = v57;
          v21 = v58;
LABEL_43:
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v48 = __swift_project_value_buffer(v2, qword_28140BD10);
          swift_beginAccess();
          (*(v3 + 16))(v12, v48, v2);

          v49 = sub_22B36050C();
          v50 = sub_22B360D2C();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v60[0] = v52;
            *v51 = 136315138;
            v53 = sub_22B1A7B20(v22, v21, v60);

            *(v51 + 4) = v53;
            _os_log_impl(&dword_22B116000, v49, v50, "Diagnostic reporter snapshot accepted with sessionID [%s]", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v52);
            MEMORY[0x23188F650](v52, -1, -1);
            MEMORY[0x23188F650](v51, -1, -1);
          }

          else
          {
          }

          (*(v3 + 8))(v12, v2);
          return;
        }
      }

      else
      {
        sub_22B1B0560(v59);
      }

      v22 = 0x6E776F6E6B6E55;
      v21 = 0xE700000000000000;
      goto LABEL_43;
    }
  }

  else
  {
    sub_22B1B0560(v59);
  }

  v23 = *MEMORY[0x277D6B170];
  v57 = sub_22B36084C();
  v58 = v24;
  sub_22B36110C();
  if (*(a1 + 16) && (v25 = sub_22B33B248(v59), (v26 & 1) != 0))
  {
    sub_22B170C58(*(a1 + 56) + 32 * v25, v60);
    sub_22B1B0560(v59);
    if (swift_dynamicCast())
    {
      v27 = v57;
      v28 = *MEMORY[0x277D6B178];
      v57 = sub_22B36084C();
      v58 = v29;
      sub_22B36110C();
      if (*(a1 + 16) && (v30 = sub_22B33B248(v59), (v31 & 1) != 0))
      {
        sub_22B170C58(*(a1 + 56) + 32 * v30, v60);
        sub_22B1B0560(v59);
        if (swift_dynamicCast())
        {
          v32 = v58;
          v56 = v57;
          goto LABEL_27;
        }
      }

      else
      {
        sub_22B1B0560(v59);
      }

      v56 = 0x6E776F6E6B6E55;
      v32 = 0xE700000000000000;
LABEL_27:
      v37 = 0x6465746365707865;
      v38 = 0xE800000000000000;
      if (v27 != *MEMORY[0x277D6B048] && v27 != *MEMORY[0x277D6B050])
      {
        if (v27 == *MEMORY[0x277D6B030] || v27 == *MEMORY[0x277D6B090])
        {
          v38 = 0xE800000000000000;
        }

        else
        {
          v37 = 0x7463657078656E75;
          v38 = 0xEA00000000006465;
        }
      }

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v40 = __swift_project_value_buffer(v2, qword_28140BD10);
      swift_beginAccess();
      (*(v3 + 16))(v9, v40, v2);

      v41 = sub_22B36050C();
      v42 = sub_22B360D2C();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v55 = v32;
        v44 = v43;
        v45 = swift_slowAlloc();
        v60[0] = v45;
        *v44 = 136315650;
        v46 = sub_22B1A7B20(v37, v38, v60);

        *(v44 + 4) = v46;
        *(v44 + 12) = 2048;
        *(v44 + 14) = v27;
        *(v44 + 22) = 2080;
        v47 = sub_22B1A7B20(v56, v55, v60);

        *(v44 + 24) = v47;
        _os_log_impl(&dword_22B116000, v41, v42, "Diagnostic reporter snapshot rejected with%s\nreason: %ld (%s)", v44, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v45, -1, -1);
        MEMORY[0x23188F650](v44, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v9, v2);
      return;
    }
  }

  else
  {
    sub_22B1B0560(v59);
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v6, v33, v2);
  v34 = sub_22B36050C();
  v35 = sub_22B360D2C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_22B116000, v34, v35, "Diagnostic reporter snapshot rejected with unknown reason", v36, 2u);
    MEMORY[0x23188F650](v36, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
}

uint64_t sub_22B1B05B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B1B0624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B1B0694(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static TOUPeaksPreprocessor.padFillTieredPeaks(metadata:tariffProfileID:utilityID:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = v12;
  v9[10] = v8;
  v9[7] = a8;
  v9[8] = v11;
  v9[5] = a4;
  v9[6] = a7;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x2822009F8](sub_22B1B0734, 0, 0);
}

uint64_t sub_22B1B0734()
{
  v1 = v0[10];
  sub_22B1B07E4(v0[3], v0[4], v0[5], 0x546C6C6946646150, 0xED00006465726569, v0[6], v0[7], v0[8], v0[2], v0[9]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22B1B07E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v135 = a5;
  v128 = a3;
  v142 = a7;
  v143 = a8;
  v136 = a4;
  v127 = a2;
  v129 = a1;
  v134 = a9;
  v140 = a10;
  v141 = a6;
  v10 = sub_22B35FF8C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v123 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22B35FFBC();
  v125 = *(v14 - 8);
  v126 = v14;
  v15 = *(v125 + 64);
  MEMORY[0x28223BE20](v14);
  v124 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5A8, &qword_22B3653E8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v131 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v121 = &v119 - v21;
  MEMORY[0x28223BE20](v22);
  v122 = &v119 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v119 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v119 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5B0, qword_22B3653F0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v130 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v119 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v119 - v37;
  v39 = sub_22B36032C();
  v40 = *(v39 - 8);
  v138 = v39;
  v139 = v40;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v120 = &v119 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v119 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v119 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = &v119 - v50;
  v53 = MEMORY[0x28223BE20](v52);
  v137 = &v119 - v54;
  v132 = v11;
  v133 = v10;
  v55 = *(v11 + 56);
  v144 = v38;
  v56 = v10;
  v57 = v135;
  v58 = v136;
  v55(v38, 1, 1, v56, v53);
  if ((v58 != 0x546C6C6946646150 || v57 != 0xED00006465726569) && (sub_22B36134C() & 1) == 0)
  {
    if (v58 == 0x466C6C6946646150 && v57 == 0xEC00000064657869 || (sub_22B36134C() & 1) != 0)
    {
      sub_22B1B19C4(0x6465786946, 0xE500000000000000, 997, v35);
      v73 = v144;
      sub_22B123284(v144, &qword_27D8BA5B0, qword_22B3653F0);
      sub_22B1B1CFC(v35, v73);
      sub_22B170BE0(v129, v26, &qword_27D8BA5A8, &qword_22B3653E8);
      v71 = v138;
      v72 = v139;
      if ((*(v139 + 48))(v26, 1, v138) == 1)
      {
        sub_22B123284(v26, &qword_27D8BA5A8, &qword_22B3653E8);
        v63 = v132;
LABEL_28:
        v70 = v137;
        v87 = v125;
        v86 = v126;
        v88 = v124;
        (*(v125 + 104))(v124, *MEMORY[0x277D18138], v126);

        sub_22B35FFAC();
        v139 = v89;
        (*(v87 + 8))(v88, v86);
        goto LABEL_29;
      }

      v77 = v72;
      v78 = *(v72 + 32);
      v78(v48, v26, v71);
      v79 = sub_22B36030C();
      v81 = v80;

      v82 = HIBYTE(v81) & 0xF;
      if ((v81 & 0x2000000000000000) == 0)
      {
        v82 = v79 & 0xFFFFFFFFFFFFLL;
      }

      v63 = v132;
      if (!v82)
      {
        (*(v77 + 8))(v48, v71);
        v72 = v77;
        goto LABEL_28;
      }

      v70 = v137;
      v78(v137, v48, v71);
LABEL_21:
      v62 = v133;
      v72 = v77;
      goto LABEL_31;
    }

    v71 = v138;
    if ((v58 != 0x466C6C6946646150 || v57 != 0xEB0000000074616CLL) && (sub_22B36134C() & 1) == 0)
    {
      v70 = v137;
      if ((v58 != 0xD000000000000012 || 0x800000022B36BD10 != v57) && (sub_22B36134C() & 1) == 0)
      {
        sub_22B134CDC();
        swift_allocError();
        *v114 = 8;
        swift_willThrow();
        return sub_22B123284(v144, &qword_27D8BA5B0, qword_22B3653F0);
      }

      sub_22B1B19C4(0x726F707075736E55, 0xEB00000000646574, 404, v35);
      v103 = v144;
      sub_22B123284(v144, &qword_27D8BA5B0, qword_22B3653F0);
      sub_22B1B1CFC(v35, v103);
      v104 = v121;
      sub_22B170BE0(v129, v121, &qword_27D8BA5A8, &qword_22B3653E8);
      v72 = v139;
      if ((*(v139 + 48))(v104, 1, v71) == 1)
      {
        sub_22B123284(v104, &qword_27D8BA5A8, &qword_22B3653E8);
        v63 = v132;
      }

      else
      {
        v108 = *(v72 + 32);
        v109 = v120;
        v108(v120, v104, v71);
        v110 = sub_22B36030C();
        v112 = v111;

        v113 = HIBYTE(v112) & 0xF;
        if ((v112 & 0x2000000000000000) == 0)
        {
          v113 = v110 & 0xFFFFFFFFFFFFLL;
        }

        v63 = v132;
        if (v113)
        {
          v108(v70, v109, v71);
          goto LABEL_30;
        }

        (*(v72 + 8))(v109, v71);
      }

      v116 = v125;
      v115 = v126;
      v117 = v124;
      (*(v125 + 104))(v124, *MEMORY[0x277D18120], v126);

      sub_22B35FFAC();
      v136 = v118;
      (*(v116 + 8))(v117, v115);
LABEL_29:
      sub_22B36031C();
LABEL_30:
      v62 = v133;
      goto LABEL_31;
    }

    sub_22B1B19C4(1952541766, 0xE400000000000000, 998, v35);
    v83 = v144;
    sub_22B123284(v144, &qword_27D8BA5B0, qword_22B3653F0);
    sub_22B1B1CFC(v35, v83);
    v84 = v122;
    sub_22B170BE0(v129, v122, &qword_27D8BA5A8, &qword_22B3653E8);
    v77 = v139;
    v85 = (*(v139 + 48))(v84, 1, v71);
    v70 = v137;
    if (v85 == 1)
    {
      sub_22B123284(v84, &qword_27D8BA5A8, &qword_22B3653E8);
      v63 = v132;
    }

    else
    {
      v98 = *(v77 + 32);
      v98(v45, v84, v71);
      v99 = sub_22B36030C();
      v101 = v100;

      v102 = HIBYTE(v101) & 0xF;
      if ((v101 & 0x2000000000000000) == 0)
      {
        v102 = v99 & 0xFFFFFFFFFFFFLL;
      }

      v63 = v132;
      if (v102)
      {
        v98(v70, v45, v71);
        goto LABEL_21;
      }

      (*(v77 + 8))(v45, v71);
    }

    v106 = v125;
    v105 = v126;
    v107 = v124;
    (*(v125 + 104))(v124, *MEMORY[0x277D18130], v126);

    sub_22B35FFAC();
    (*(v106 + 8))(v107, v105);
    sub_22B36031C();
    v62 = v133;
    v72 = v139;
    goto LABEL_31;
  }

  sub_22B1B19C4(0x646572656954, 0xE600000000000000, 999, v35);
  v59 = v144;
  sub_22B123284(v144, &qword_27D8BA5B0, qword_22B3653F0);
  sub_22B1B1CFC(v35, v59);
  sub_22B170BE0(v129, v29, &qword_27D8BA5A8, &qword_22B3653E8);
  v61 = v138;
  v60 = v139;
  if ((*(v139 + 48))(v29, 1, v138) == 1)
  {
    sub_22B123284(v29, &qword_27D8BA5A8, &qword_22B3653E8);
    v63 = v132;
    v62 = v133;
LABEL_16:
    v71 = v61;
    v75 = v125;
    v74 = v126;
    v76 = v124;
    (*(v125 + 104))(v124, *MEMORY[0x277D18140], v126);

    sub_22B35FFAC();
    (*(v75 + 8))(v76, v74);
    v70 = v137;
    sub_22B36031C();
    v72 = v139;
    goto LABEL_31;
  }

  v64 = *(v60 + 32);
  v64(v51, v29, v61);
  v65 = sub_22B36030C();
  v67 = v66;

  v68 = HIBYTE(v67) & 0xF;
  if ((v67 & 0x2000000000000000) == 0)
  {
    v68 = v65 & 0xFFFFFFFFFFFFLL;
  }

  v63 = v132;
  if (!v68)
  {
    (*(v60 + 8))(v51, v61);
    v62 = v133;
    goto LABEL_16;
  }

  v69 = v137;
  v64(v137, v51, v61);
  v70 = v69;
  v62 = v133;
  v71 = v61;
  v72 = v60;
LABEL_31:
  v90 = v130;
  sub_22B170BE0(v144, v130, &qword_27D8BA5B0, qword_22B3653F0);
  if ((*(v63 + 48))(v90, 1, v62) == 1)
  {
    sub_22B123284(v90, &qword_27D8BA5B0, qword_22B3653F0);
    v91 = v131;
    (*(v72 + 16))(v131, v70, v71);
    (*(v72 + 56))(v91, 0, 1, v71);

    sub_22B36020C();
  }

  else
  {
    v92 = v123;
    (*(v63 + 32))(v123, v90, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5B8, &unk_22B367600);
    v93 = *(v63 + 72);
    v94 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_22B3634B0;
    (*(v63 + 16))(v95 + v94, v92, v62);
    v96 = v131;
    (*(v72 + 16))(v131, v70, v71);
    (*(v72 + 56))(v96, 0, 1, v71);

    sub_22B36020C();
    (*(v63 + 8))(v92, v62);
  }

  sub_22B123284(v144, &qword_27D8BA5B0, qword_22B3653F0);
  return (*(v72 + 8))(v70, v71);
}

uint64_t static TOUPeaksPreprocessor.padFillUnsupportedPeaks(metadata:tariffProfileID:utilityID:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = v12;
  v9[10] = v8;
  v9[7] = a8;
  v9[8] = v11;
  v9[5] = a4;
  v9[6] = a7;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x2822009F8](sub_22B1B1754, 0, 0);
}

uint64_t sub_22B1B1754()
{
  v1 = v0[10];
  sub_22B1B07E4(v0[3], v0[4], v0[5], 0xD000000000000012, 0x800000022B36BD10, v0[6], v0[7], v0[8], v0[2], v0[9]);
  v2 = v0[1];

  return v2();
}

uint64_t static TOUPeaksPreprocessor.padFillFlatPeaks(metadata:tariffProfileID:utilityID:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = v12;
  v9[10] = v8;
  v9[7] = a8;
  v9[8] = v11;
  v9[5] = a4;
  v9[6] = a7;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x2822009F8](sub_22B1B1834, 0, 0);
}

uint64_t sub_22B1B1834()
{
  v1 = v0[10];
  sub_22B1B07E4(v0[3], v0[4], v0[5], 0x466C6C6946646150, 0xEB0000000074616CLL, v0[6], v0[7], v0[8], v0[2], v0[9]);
  v2 = v0[1];

  return v2();
}

uint64_t static TOUPeaksPreprocessor.padFillFixedPeaks(metadata:tariffProfileID:utilityID:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = v12;
  v9[10] = v8;
  v9[7] = a8;
  v9[8] = v11;
  v9[5] = a4;
  v9[6] = a7;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x2822009F8](sub_22B1B1918, 0, 0);
}

uint64_t sub_22B1B1918()
{
  v1 = v0[10];
  sub_22B1B07E4(v0[3], v0[4], v0[5], 0x466C6C6946646150, 0xEC00000064657869, v0[6], v0[7], v0[8], v0[2], v0[9]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22B1B19C4@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v25[2] = a2;
  v25[3] = a3;
  v25[1] = a1;
  v26 = a4;
  v4 = sub_22B35DDBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v25 - v14;
  v16 = sub_22B35DE9C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35F58C();
  sub_22B35DD9C();
  v21 = *(v5 + 8);
  v21(v11, v4);
  (*(v17 + 56))(v15, 0, 1, v16);
  (*(v17 + 32))(v20, v15, v16);
  sub_22B35F54C();
  sub_22B35DDAC();
  v21(v8, v4);
  v22 = v26;
  sub_22B35FF6C();
  (*(v17 + 8))(v20, v16);
  v23 = sub_22B35FF8C();
  return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
}

uint64_t sub_22B1B1CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5B0, qword_22B3653F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B1B1D6C(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22B124D88;

  return (v11)(a1 & 1, a2, a3);
}

uint64_t sub_22B1B1E98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656E696C66666FLL;
  }

  else
  {
    v4 = 0x6C62616863616572;
  }

  if (v3)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x656E696C66666FLL;
  }

  else
  {
    v6 = 0x6C62616863616572;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22B36134C();
  }

  return v9 & 1;
}

uint64_t sub_22B1B1F44()
{
  v1 = *v0;
  sub_22B36149C();
  sub_22B3608FC();

  return sub_22B3614DC();
}

uint64_t sub_22B1B1FCC()
{
  *v0;
  sub_22B3608FC();
}

uint64_t sub_22B1B2040()
{
  v1 = *v0;
  sub_22B36149C();
  sub_22B3608FC();

  return sub_22B3614DC();
}

uint64_t sub_22B1B20C4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22B3612FC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_22B1B2124(uint64_t *a1@<X8>)
{
  v2 = 0x6C62616863616572;
  if (*v1)
  {
    v2 = 0x656E696C66666FLL;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_22B1B2168()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  swift_allocObject();
  swift_weakInit();

  sub_22B1B2A70(sub_22B1181F8);
  sub_22B36055C();

  v8 = *(v1 + 16);
  v9 = *(v1 + 24);

  sub_22B36056C();

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v6, v10, v2);
  v11 = sub_22B36050C();
  v12 = sub_22B360D2C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22B116000, v11, v12, "Started reachability monitor", v13, 2u);
    MEMORY[0x23188F650](v13, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22B1B23B0()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);

  sub_22B1B2A70(0);
  sub_22B36055C();

  v8 = *(v1 + 16);

  sub_22B36057C();

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v6, v9, v2);
  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22B116000, v10, v11, "Stopped reachability monitor", v12, 2u);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22B1B25A0()
{
  v1 = *(v0 + 16);

  sub_22B1B2A48(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ReachabilityStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReachabilityStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B1B276C()
{
  result = qword_27D8BA5C0;
  if (!qword_27D8BA5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA5C0);
  }

  return result;
}

void *sub_22B1B27C0()
{
  v1 = *(*(sub_22B360D6C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v2 = *(*(sub_22B36062C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v3 = sub_22B360D8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B36059C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v0[2] = sub_22B36058C();
  v12[0] = sub_22B11870C();
  (*(v4 + 104))(v7, *MEMORY[0x277D85268], v3);
  sub_22B36060C();
  v12[1] = MEMORY[0x277D84F90];
  sub_22B118988(&qword_2814092F0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAA80, &qword_22B3653C0);
  sub_22B118A18(&qword_281409340, &unk_27D8BAA80, &qword_22B3653C0);
  sub_22B36104C();
  v0[3] = sub_22B360DBC();
  v0[5] = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_22B1B2A70(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B1B2A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[43] = a3;
  v4[44] = v3;
  v4[41] = a1;
  v4[42] = a2;
  v5 = sub_22B35F01C();
  v4[45] = v5;
  v6 = *(v5 - 8);
  v4[46] = v6;
  v7 = *(v6 + 64) + 15;
  v4[47] = swift_task_alloc();
  v8 = sub_22B35DF1C();
  v4[48] = v8;
  v9 = *(v8 - 8);
  v4[49] = v9;
  v10 = *(v9 + 64) + 15;
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v11 = sub_22B36052C();
  v4[52] = v11;
  v12 = *(v11 - 8);
  v4[53] = v12;
  v13 = *(v12 + 64) + 15;
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1B2CA4, 0, 0);
}

uint64_t sub_22B1B2CA4()
{
  v49 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[67];
  v2 = v0[52];
  v3 = v0[53];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[68] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[69] = v5;
  v0[70] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v45 = v5;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Got Home and SiteID", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[67];
  v10 = v0[66];
  v11 = v0[52];
  v12 = v0[53];
  v13 = v0[49];
  v42 = v0[48];
  v44 = v0[51];
  v14 = v0[41];

  v15 = *(v12 + 8);
  v0[71] = v15;
  v47 = v15;
  v15(v9, v11);
  v45(v10, v4, v11);
  (*(v13 + 16))(v44, v14, v42);
  v16 = sub_22B36050C();
  v17 = sub_22B360D2C();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[66];
  v20 = v0[52];
  v21 = v0[53];
  v22 = v0[51];
  v24 = v0[48];
  v23 = v0[49];
  if (v18)
  {
    v46 = v0[52];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v48 = v26;
    *v25 = 136315138;
    sub_22B127FBC();
    v27 = sub_22B36131C();
    v43 = v19;
    v29 = v28;
    v41 = v17;
    v30 = *(v23 + 8);
    v30(v22, v24);
    v31 = sub_22B1A7B20(v27, v29, &v48);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_22B116000, v16, v41, "Home: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x23188F650](v26, -1, -1);
    MEMORY[0x23188F650](v25, -1, -1);

    v32 = v43;
    v33 = v46;
  }

  else
  {

    v30 = *(v23 + 8);
    v30(v22, v24);
    v32 = v19;
    v33 = v20;
  }

  v47(v32, v33);
  v0[72] = v30;
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v35 = v0[46];
  v34 = v0[47];
  v36 = v0[45];
  v37 = qword_28140BDD0;
  v0[73] = qword_28140BDD0;
  v38 = *MEMORY[0x277D073C8];
  v39 = *(v35 + 104);
  v0[74] = v39;
  v0[75] = (v35 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v39(v34, v38, v36);

  return MEMORY[0x2822009F8](sub_22B1B3064, v37, 0);
}

uint64_t sub_22B1B3064()
{
  v1 = *(v0 + 584);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  v4 = *(v0 + 360);
  *(v0 + 784) = sub_22B143DD8(*(v0 + 336), *(v0 + 344)) & 1;
  v5 = *(v3 + 8);
  *(v0 + 608) = v5;
  *(v0 + 616) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return MEMORY[0x2822009F8](sub_22B1B3114, 0, 0);
}

uint64_t sub_22B1B3114()
{
  if (*(v0 + 784) == 1)
  {
    v1 = *(v0 + 560);
    (*(v0 + 552))(*(v0 + 520), *(v0 + 544), *(v0 + 416));
    v2 = sub_22B36050C();
    v3 = sub_22B360D2C();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 568);
    v6 = *(v0 + 520);
    v7 = *(v0 + 416);
    v8 = *(v0 + 424);
    if (v4)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B116000, v2, v3, "Site owned by user. Cannot add self to share", v9, 2u);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    v5(v6, v7);
    v10 = *(v0 + 536);
    v11 = *(v0 + 528);
    v12 = *(v0 + 520);
    v14 = *(v0 + 504);
    v13 = *(v0 + 512);
    v16 = *(v0 + 488);
    v15 = *(v0 + 496);
    v17 = *(v0 + 472);
    v18 = *(v0 + 480);
    v19 = *(v0 + 464);
    v24 = *(v0 + 456);
    v25 = *(v0 + 448);
    v26 = *(v0 + 440);
    v27 = *(v0 + 432);
    v28 = *(v0 + 408);
    v29 = *(v0 + 400);
    v30 = *(v0 + 376);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 600);
    v23 = *(v0 + 584);
    (*(v0 + 592))(*(v0 + 376), *MEMORY[0x277D073D0], *(v0 + 360));

    return MEMORY[0x2822009F8](sub_22B1B3370, v23, 0);
  }
}

uint64_t sub_22B1B3370()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 584);
  v4 = *(v0 + 376);
  v5 = *(v0 + 360);
  *(v0 + 785) = sub_22B143DD8(*(v0 + 336), *(v0 + 344)) & 1;
  v2(v4, v5);

  return MEMORY[0x2822009F8](sub_22B1B3414, 0, 0);
}

uint64_t sub_22B1B3414()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 416);
  if (*(v0 + 785) == 1)
  {
    v2(*(v0 + 512), *(v0 + 544), *(v0 + 416));
    v5 = sub_22B36050C();
    v6 = sub_22B360D2C();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 568);
    v9 = *(v0 + 512);
    v10 = *(v0 + 416);
    v11 = *(v0 + 424);
    if (v7)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22B116000, v5, v6, "Site shared to user.", v12, 2u);
      MEMORY[0x23188F650](v12, -1, -1);
    }

    v8(v9, v10);
    v13 = *(v0 + 536);
    v14 = *(v0 + 528);
    v15 = *(v0 + 520);
    v17 = *(v0 + 504);
    v16 = *(v0 + 512);
    v19 = *(v0 + 488);
    v18 = *(v0 + 496);
    v20 = *(v0 + 472);
    v21 = *(v0 + 480);
    v22 = *(v0 + 464);
    v35 = *(v0 + 456);
    v36 = *(v0 + 448);
    v37 = *(v0 + 440);
    v38 = *(v0 + 432);
    v39 = *(v0 + 408);
    v40 = *(v0 + 400);
    v41 = *(v0 + 376);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 504);
    v26 = objc_allocWithZone(type metadata accessor for HomeManager());
    *(v0 + 624) = sub_22B241DC4(1, 0);
    v2(v25, v3, v4);
    v27 = sub_22B36050C();
    v28 = sub_22B360D2C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22B116000, v27, v28, "[ShareManager] Load Homes", v29, 2u);
      MEMORY[0x23188F650](v29, -1, -1);
    }

    v30 = *(v0 + 568);
    v31 = *(v0 + 504);
    v32 = *(v0 + 416);
    v33 = *(v0 + 424);

    v30(v31, v32);
    v34 = swift_task_alloc();
    *(v0 + 632) = v34;
    *v34 = v0;
    v34[1] = sub_22B1B3750;

    return sub_22B242190();
  }
}

uint64_t sub_22B1B3750()
{
  v1 = *(*v0 + 632);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B1B384C, 0, 0);
}

uint64_t sub_22B1B384C()
{
  v1 = v0[78];
  v2 = OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager;
  v3 = [*(v1 + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager) dataSyncState];
  v4 = v0[70];
  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[52];
  if (v3 == 1)
  {
    v5(v0[61], v6, v7);
    v8 = sub_22B36050C();
    v9 = sub_22B360D2C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B116000, v8, v9, "[ShareManager] Loaded Homes", v10, 2u);
      MEMORY[0x23188F650](v10, -1, -1);
    }

    v11 = v0[71];
    v12 = v0[61];
    v13 = v0[52];
    v14 = v0[53];

    v11(v12, v13);
    if ([*(v1 + v2) hasOptedToHH2])
    {
      v15 = swift_task_alloc();
      v0[80] = v15;
      *v15 = v0;
      v15[1] = sub_22B1B3C04;
      v16 = v0[78];

      return sub_22B2430B4();
    }

    v28 = v0[70];
    (v0[69])(v0[60], v0[68], v0[52]);
    v18 = sub_22B36050C();
    v19 = sub_22B360D1C();
    v29 = os_log_type_enabled(v18, v19);
    v21 = v0[78];
    v22 = v0[71];
    v23 = v0[60];
    v24 = v0[52];
    v30 = v0[53];
    if (v29)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "[ShareManager] Not opted into HH2";
      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_14;
  }

  v5(v0[62], v6, v7);
  v18 = sub_22B36050C();
  v19 = sub_22B360D1C();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[78];
  v22 = v0[71];
  v23 = v0[62];
  v24 = v0[52];
  v25 = v0[53];
  if (!v20)
  {
    goto LABEL_13;
  }

  v26 = swift_slowAlloc();
  *v26 = 0;
  v27 = "[ShareManager] Data sync state not good";
LABEL_12:
  _os_log_impl(&dword_22B116000, v18, v19, v27, v26, 2u);
  MEMORY[0x23188F650](v26, -1, -1);

LABEL_14:
  v22(v23, v24);
  v31 = v0[67];
  v32 = v0[66];
  v33 = v0[65];
  v35 = v0[63];
  v34 = v0[64];
  v37 = v0[61];
  v36 = v0[62];
  v38 = v0[59];
  v39 = v0[60];
  v40 = v0[58];
  v42 = v0[57];
  v43 = v0[56];
  v44 = v0[55];
  v45 = v0[54];
  v46 = v0[51];
  v47 = v0[50];
  v48 = v0[47];

  v41 = v0[1];

  return v41();
}

uint64_t sub_22B1B3C04(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 640);
  v7 = *v2;
  *(v3 + 648) = a1;
  *(v3 + 656) = v1;

  if (v1)
  {

    v5 = sub_22B1B4E7C;
  }

  else
  {
    v5 = sub_22B1B3D24;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B1B3D24()
{
  v162 = v0;
  v1 = *(v0 + 560);
  (*(v0 + 552))(*(v0 + 472), *(v0 + 544), *(v0 + 416));
  v2 = sub_22B36050C();
  v3 = sub_22B360D2C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B116000, v2, v3, "[ShareManager] Got homes", v4, 2u);
    MEMORY[0x23188F650](v4, -1, -1);
  }

  v5 = *(v0 + 648);
  v6 = *(v0 + 568);
  v7 = *(v0 + 472);
  v8 = *(v0 + 416);
  v9 = *(v0 + 424);

  v6(v7, v8);
  if (v5 >> 62)
  {
    goto LABEL_59;
  }

  v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 664) = v10;
  if (!v10)
  {
LABEL_62:
    v127 = *(v0 + 648);
    v128 = *(v0 + 624);

    v129 = *(v0 + 536);
    v130 = *(v0 + 528);
    v131 = *(v0 + 520);
    v133 = *(v0 + 504);
    v132 = *(v0 + 512);
    v135 = *(v0 + 488);
    v134 = *(v0 + 496);
    v136 = *(v0 + 472);
    v137 = *(v0 + 480);
    v138 = *(v0 + 464);
    v143 = *(v0 + 456);
    v145 = *(v0 + 448);
    v148 = *(v0 + 440);
    v151 = *(v0 + 432);
    v153 = *(v0 + 408);
    v156 = *(v0 + 400);
    v160 = *(v0 + 376);

    v139 = *(v0 + 8);

    return v139();
  }

LABEL_5:
  v11 = 0;
  v142 = (v0 + 312);
  v157 = *(v0 + 656);
  v12 = &off_2786FB000;
  v13 = &off_2786FB000;
  *(&v14 + 1) = 4;
  *&v14 = 138412290;
  v141 = v14;
  while (1)
  {
    v17 = *(v0 + 648);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x23188EAC0](v11);
    }

    else
    {
      if (v11 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v18 = *(v17 + 8 * v11 + 32);
    }

    v16 = v18;
    *(v0 + 672) = v18;
    *(v0 + 680) = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      if (*(v0 + 648) < 0)
      {
        v125 = *(v0 + 648);
      }

      v126 = sub_22B36109C();
      *(v0 + 664) = v126;
      if (!v126)
      {
        goto LABEL_62;
      }

      goto LABEL_5;
    }

    v19 = *(v0 + 576);
    v20 = *(v0 + 400);
    v21 = *(v0 + 384);
    v22 = *(v0 + 328);
    v23 = *(v0 + 392) + 8;
    v24 = [v18 uniqueIdentifier];
    sub_22B35DEFC();

    LOBYTE(v22) = sub_22B35DEEC();
    v19(v20, v21);
    if (v22)
    {
      v25 = [v16 restrictedGuests];
      sub_22B128014(0, &qword_281408560, 0x277CD1EE0);
      v26 = sub_22B360A5C();

      v27 = [v16 v12[485]];
      *v142 = v27;
      v28 = swift_task_alloc();
      *(v28 + 16) = v142;
      v29 = sub_22B207D24(sub_22B1B7804, v28, v26);

      if ((v29 & 1) == 0)
      {
        break;
      }
    }

LABEL_8:

    v11 = *(v0 + 680);
    if (v11 == *(v0 + 664))
    {
      goto LABEL_62;
    }
  }

  v30 = [v16 owner];
  v31 = [v16 v12[485]];
  v32 = v31;
  if (v30)
  {
    if (v31)
    {
      v33 = sub_22B360FBC();

      if (v33)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

    v32 = v30;
  }

  else if (!v31)
  {
    goto LABEL_8;
  }

LABEL_24:
  v34 = *(v0 + 560);
  (*(v0 + 552))(*(v0 + 464), *(v0 + 544), *(v0 + 416));
  v35 = sub_22B36050C();
  v36 = sub_22B360D2C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_22B116000, v35, v36, "[ShareManager] Not home owner", v37, 2u);
    MEMORY[0x23188F650](v37, -1, -1);
  }

  v38 = *(v0 + 568);
  v39 = *(v0 + 464);
  v40 = *(v0 + 416);
  v41 = *(v0 + 424);

  v38(v39, v40);
  v42 = [v16 residentDevices];
  sub_22B128014(0, &qword_27D8BA5C8, 0x277CD1D68);
  v43 = sub_22B360A5C();
  *(v0 + 688) = v43;

  if (!(v43 >> 62))
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 696) = v44;
    if (v44)
    {
      goto LABEL_28;
    }

    goto LABEL_7;
  }

  v93 = sub_22B36109C();
  *(v0 + 696) = v93;
  if (!v93)
  {
LABEL_7:

    goto LABEL_8;
  }

LABEL_28:
  v45 = 0;
  while (1)
  {
    v46 = *(v0 + 688);
    if ((v46 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x23188EAC0](v45);
    }

    else
    {
      if (v45 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v47 = *(v46 + 8 * v45 + 32);
    }

    v48 = v47;
    *(v0 + 704) = v47;
    *(v0 + 712) = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (([v47 v13[500]] == 3 || objc_msgSend(v48, v13[500]) == 2) && (objc_msgSend(v48, sel_isCurrentDevice, v141) & 1) == 0)
    {
      break;
    }

LABEL_30:
    v45 = *(v0 + 712);
    if (v45 == *(v0 + 696))
    {
      v15 = *(v0 + 688);
      v16 = *(v0 + 672);
      goto LABEL_7;
    }
  }

  v49 = *(v0 + 672);
  v50 = *(v0 + 560);
  (*(v0 + 552))(*(v0 + 456), *(v0 + 544), *(v0 + 416));
  v51 = v48;
  v52 = v49;
  v53 = sub_22B36050C();
  v54 = sub_22B360D2C();

  v152 = v51;
  if (os_log_type_enabled(v53, v54))
  {
    v55 = *(v0 + 672);
    v146 = *(v0 + 456);
    v149 = *(v0 + 568);
    v56 = *(v0 + 416);
    v144 = *(v0 + 424) + 8;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v161[0] = v59;
    *v57 = 138412546;
    v60 = [v51 device];
    *(v57 + 4) = v60;
    *v58 = v60;
    *(v57 + 12) = 2080;
    v61 = [v55 name];
    v62 = sub_22B36084C();
    v64 = v63;

    v65 = sub_22B1A7B20(v62, v64, v161);

    *(v57 + 14) = v65;
    _os_log_impl(&dword_22B116000, v53, v54, "[ShareManager] Found resident at %@ for %s", v57, 0x16u);
    sub_22B12F10C(v58);
    MEMORY[0x23188F650](v58, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x23188F650](v59, -1, -1);
    MEMORY[0x23188F650](v57, -1, -1);

    v149(v146, v56);
  }

  else
  {
    v66 = *(v0 + 568);
    v67 = *(v0 + 456);
    v68 = *(v0 + 416);
    v69 = *(v0 + 424);

    v66(v67, v68);
  }

  v71 = *(v0 + 336);
  v70 = *(v0 + 344);
  v72 = *(v0 + 328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5D0, &qword_22B365580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634C0;
  *(inited + 32) = 0x4449656D6F68;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_22B35DECC();
  *(inited + 56) = v74;
  *(inited + 64) = 0x444965746973;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = v71;
  *(inited + 88) = v70;

  v75 = sub_22B321ED0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5D8, &qword_22B365588);
  swift_arrayDestroy();
  v76 = sub_22B35D82C();
  v77 = *(v76 + 48);
  v78 = *(v76 + 52);
  swift_allocObject();
  sub_22B35D81C();
  *(v0 + 320) = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5E0, &unk_22B365590);
  sub_22B1B786C();
  *(v0 + 720) = sub_22B35D80C();
  *(v0 + 728) = v79;
  v13 = &off_2786FB000;
  if (v157)
  {

    v80 = *(v0 + 560);
    (*(v0 + 552))(*(v0 + 440), *(v0 + 544), *(v0 + 416));
    v81 = v157;
    v82 = sub_22B36050C();
    v83 = sub_22B360D1C();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = v141;
      v86 = v157;
      v87 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 4) = v87;
      *v85 = v87;
      _os_log_impl(&dword_22B116000, v82, v83, "[ShareManager] Failed to send modern message due to %@", v84, 0xCu);
      sub_22B12F10C(v85);
      MEMORY[0x23188F650](v85, -1, -1);
      MEMORY[0x23188F650](v84, -1, -1);
      v88 = v82;
      v82 = *(v0 + 704);
    }

    else
    {
      v88 = *(v0 + 704);
    }

    v12 = &off_2786FB000;
    v89 = *(v0 + 568);
    v90 = *(v0 + 440);
    v91 = *(v0 + 416);
    v92 = *(v0 + 424);

    v89(v90, v91);
    v157 = 0;
    goto LABEL_30;
  }

  v158 = *(v0 + 672);
  v94 = *(v0 + 560);
  v95 = *(v0 + 552);
  v96 = *(v0 + 544);
  v97 = *(v0 + 448);
  v98 = *(v0 + 416);

  v95(v97, v96, v98);
  v99 = v158;
  v100 = sub_22B36050C();
  v101 = sub_22B360D2C();

  if (os_log_type_enabled(v100, v101))
  {
    v102 = *(v0 + 672);
    v159 = *(v0 + 568);
    v154 = *(v0 + 448);
    v147 = *(v0 + 424) + 8;
    v150 = *(v0 + 416);
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v161[0] = v104;
    *v103 = 136315138;
    v105 = [v102 name];
    v106 = sub_22B36084C();
    v108 = v107;

    v109 = sub_22B1A7B20(v106, v108, v161);

    *(v103 + 4) = v109;
    _os_log_impl(&dword_22B116000, v100, v101, "[ShareManager] Send message for %s", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v104);
    MEMORY[0x23188F650](v104, -1, -1);
    MEMORY[0x23188F650](v103, -1, -1);

    v159(v154, v150);
  }

  else
  {
    v110 = *(v0 + 568);
    v111 = *(v0 + 448);
    v112 = *(v0 + 416);
    v113 = *(v0 + 424);

    v110(v111, v112);
  }

  v155 = *(v0 + 672);
  v114 = *(v0 + 352);
  v115 = [v152 device];
  v116 = [v115 hmmmMessageDestination];
  *(v0 + 736) = v116;

  v117 = sub_22B36081C();
  *(v0 + 744) = v117;
  v118 = sub_22B35DCCC();
  *(v0 + 752) = v118;
  sub_22B128014(0, &qword_281409278, 0x277CCABB0);
  v119 = sub_22B360F9C();
  v120 = [objc_allocWithZone(MEMORY[0x277CD1B50]) initWithTimeout:v119 transportRestriction:2];
  *(v0 + 760) = v120;

  v121 = swift_allocObject();
  v121[2] = 0xD000000000000018;
  v121[3] = 0x800000022B36BDC0;
  v121[4] = v114;
  *(v0 + 272) = sub_22B1B78E8;
  *(v0 + 280) = v121;
  *(v0 + 240) = MEMORY[0x277D85DD0];
  *(v0 + 248) = 1107296256;
  *(v0 + 256) = sub_22B1B6578;
  *(v0 + 264) = &block_descriptor_11;
  v122 = _Block_copy((v0 + 240));
  *(v0 + 768) = v122;
  v123 = *(v0 + 280);

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_22B1B4BC8;
  v124 = swift_continuation_init();
  *(v0 + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5F0, &unk_22B3655A0);
  *(v0 + 176) = MEMORY[0x277D85DD0];
  *(v0 + 184) = 1107296256;
  *(v0 + 192) = sub_22B1B6640;
  *(v0 + 200) = &block_descriptor_10;
  *(v0 + 208) = v124;
  [v155 sendModernMessagingRequestWithMessageName:v117 destination:v116 requestPayload:v118 options:v120 responseHandler:v122 completionHandler:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_22B1B4BC8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 776) = v3;
  if (v3)
  {
    v4 = sub_22B1B5078;
  }

  else
  {
    v5 = *(v1 + 688);
    v6 = *(v1 + 648);

    v4 = sub_22B1B4CEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B1B4CEC()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 744);
  v5 = *(v0 + 736);
  v6 = *(v0 + 728);
  v7 = *(v0 + 720);
  v8 = *(v0 + 704);
  v9 = *(v0 + 624);

  sub_22B12F174(v7, v6);
  _Block_release(v1);

  v10 = *(v0 + 536);
  v11 = *(v0 + 528);
  v12 = *(v0 + 520);
  v14 = *(v0 + 504);
  v13 = *(v0 + 512);
  v16 = *(v0 + 488);
  v15 = *(v0 + 496);
  v17 = *(v0 + 472);
  v18 = *(v0 + 480);
  v19 = *(v0 + 464);
  v22 = *(v0 + 456);
  v23 = *(v0 + 448);
  v24 = *(v0 + 440);
  v25 = *(v0 + 432);
  v26 = *(v0 + 408);
  v27 = *(v0 + 400);
  v28 = *(v0 + 376);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_22B1B4E7C()
{
  v1 = *(v0 + 560);
  (*(v0 + 552))(*(v0 + 432), *(v0 + 544), *(v0 + 416));
  v2 = sub_22B36050C();
  v3 = sub_22B360D1C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 624);
  v6 = *(v0 + 568);
  v8 = *(v0 + 424);
  v7 = *(v0 + 432);
  v9 = *(v0 + 416);
  if (v4)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v2, v3, "[ShareManager] Failed to get homes", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
    v11 = v2;
  }

  else
  {
    v11 = *(v0 + 624);
    v5 = v2;
  }

  v6(v7, v9);
  v12 = *(v0 + 536);
  v13 = *(v0 + 528);
  v14 = *(v0 + 520);
  v16 = *(v0 + 504);
  v15 = *(v0 + 512);
  v18 = *(v0 + 488);
  v17 = *(v0 + 496);
  v19 = *(v0 + 472);
  v20 = *(v0 + 480);
  v21 = *(v0 + 464);
  v24 = *(v0 + 456);
  v25 = *(v0 + 448);
  v26 = *(v0 + 440);
  v27 = *(v0 + 432);
  v28 = *(v0 + 408);
  v29 = *(v0 + 400);
  v30 = *(v0 + 376);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_22B1B5078()
{
  v155 = v0;
  v152 = (v0 + 312);
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);
  v4 = *(v0 + 752);
  v5 = *(v0 + 744);
  v6 = *(v0 + 736);
  v7 = *(v0 + 728);
  v8 = *(v0 + 720);
  swift_willThrow();
  sub_22B12F174(v8, v7);

  _Block_release(v2);
  v9 = *(v0 + 776);
  v10 = *(v0 + 560);
  (*(v0 + 552))(*(v0 + 440), *(v0 + 544), *(v0 + 416));
  v11 = v9;
  v12 = sub_22B36050C();
  v13 = sub_22B360D1C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_22B116000, v12, v13, "[ShareManager] Failed to send modern message due to %@", v14, 0xCu);
    sub_22B12F10C(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
    v18 = v12;
    v12 = *(v0 + 704);
  }

  else
  {
    v18 = *(v0 + 704);
  }

  v19 = *(v0 + 568);
  v20 = *(v0 + 440);
  v21 = *(v0 + 416);
  v22 = *(v0 + 424);

  v23 = v19(v20, v21);
  while (1)
  {
    v24 = *(v0 + 712);
    if (v24 == *(v0 + 696))
    {
      break;
    }

LABEL_31:
    v57 = *(v0 + 688);
    if ((v57 & 0xC000000000000001) != 0)
    {
      v58 = MEMORY[0x23188EAC0](v24);
    }

    else
    {
      if (v24 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x282200938](v23);
      }

      v58 = *(v57 + 8 * v24 + 32);
    }

    v59 = v58;
    *(v0 + 704) = v58;
    *(v0 + 712) = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_52:
      v121 = *(v0 + 568);
      v122 = *(v0 + 448);
      v123 = *(v0 + 416);
      v124 = *(v0 + 424);

      v121(v122, v123);
      goto LABEL_53;
    }

    if (([v58 status]== 3 || [v59 status]== 2) && ![v59 isCurrentDevice])
    {
      v60 = *(v0 + 672);
      v61 = *(v0 + 560);
      (*(v0 + 552))(*(v0 + 456), *(v0 + 544), *(v0 + 416));
      v62 = v59;
      v63 = v60;
      v64 = sub_22B36050C();
      v65 = sub_22B360D2C();

      v144 = v62;
      if (os_log_type_enabled(v64, v65))
      {
        v137 = v65;
        v66 = *(v0 + 672);
        v140 = *(v0 + 456);
        v142 = *(v0 + 568);
        v138 = *(v0 + 424) + 8;
        v139 = *(v0 + 416);
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v154[0] = v136;
        *v67 = 138412546;
        v69 = [v62 device];
        *(v67 + 4) = v69;
        *v68 = v69;
        *(v67 + 12) = 2080;
        v70 = [v66 name];
        v71 = sub_22B36084C();
        v73 = v72;

        v74 = sub_22B1A7B20(v71, v73, v154);

        *(v67 + 14) = v74;
        _os_log_impl(&dword_22B116000, v64, v137, "[ShareManager] Found resident at %@ for %s", v67, 0x16u);
        sub_22B12F10C(v68);
        MEMORY[0x23188F650](v68, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v136);
        MEMORY[0x23188F650](v136, -1, -1);
        MEMORY[0x23188F650](v67, -1, -1);

        v142(v140, v139);
      }

      else
      {
        v75 = *(v0 + 568);
        v76 = *(v0 + 456);
        v77 = *(v0 + 416);
        v78 = *(v0 + 424);

        v75(v76, v77);
      }

      v80 = *(v0 + 336);
      v79 = *(v0 + 344);
      v81 = *(v0 + 328);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5D0, &qword_22B365580);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22B3634C0;
      *(inited + 32) = 0x4449656D6F68;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = sub_22B35DECC();
      *(inited + 56) = v83;
      *(inited + 64) = 0x444965746973;
      *(inited + 72) = 0xE600000000000000;
      *(inited + 80) = v80;
      *(inited + 88) = v79;

      v84 = sub_22B321ED0(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5D8, &qword_22B365588);
      swift_arrayDestroy();
      v85 = sub_22B35D82C();
      v86 = *(v85 + 48);
      v87 = *(v85 + 52);
      swift_allocObject();
      sub_22B35D81C();
      *(v0 + 320) = v84;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5E0, &unk_22B365590);
      sub_22B1B786C();
      *(v0 + 720) = sub_22B35D80C();
      *(v0 + 728) = v88;
      goto LABEL_49;
    }
  }

  v25 = *(v0 + 688);
  v26 = *(v0 + 672);

  while (1)
  {
    v27 = *(v0 + 680);
    if (v27 == *(v0 + 664))
    {
      v89 = *(v0 + 648);
      v90 = *(v0 + 624);

      v91 = *(v0 + 536);
      v92 = *(v0 + 528);
      v93 = *(v0 + 520);
      v95 = *(v0 + 504);
      v94 = *(v0 + 512);
      v97 = *(v0 + 488);
      v96 = *(v0 + 496);
      v98 = *(v0 + 472);
      v99 = *(v0 + 480);
      v100 = *(v0 + 464);
      v141 = *(v0 + 456);
      v143 = *(v0 + 448);
      v145 = *(v0 + 440);
      v146 = *(v0 + 432);
      v148 = *(v0 + 408);
      v151 = *(v0 + 400);
      v153 = *(v0 + 376);

      v101 = *(v0 + 8);

      return v101();
    }

    v28 = *(v0 + 648);
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x23188EAC0](*(v0 + 680));
    }

    else
    {
      if (v27 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v29 = *(v28 + 8 * v27 + 32);
    }

    v30 = v29;
    *(v0 + 672) = v29;
    *(v0 + 680) = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    v31 = *(v0 + 576);
    v32 = *(v0 + 400);
    v33 = *(v0 + 384);
    v34 = *(v0 + 328);
    v35 = *(v0 + 392) + 8;
    v36 = [v29 uniqueIdentifier];
    sub_22B35DEFC();

    LOBYTE(v36) = sub_22B35DEEC();
    v31(v32, v33);
    if ((v36 & 1) == 0)
    {
      goto LABEL_7;
    }

    v37 = [v30 restrictedGuests];
    sub_22B128014(0, &qword_281408560, 0x277CD1EE0);
    v38 = sub_22B360A5C();

    v39 = [v30 currentUser];
    *v152 = v39;
    v40 = swift_task_alloc();
    *(v40 + 16) = v152;
    v41 = sub_22B207D24(sub_22B1B7804, v40, v38);

    if (v41)
    {
      goto LABEL_7;
    }

    v42 = [v30 owner];
    v43 = [v30 currentUser];
    v44 = v43;
    if (v42)
    {
      if (v43)
      {
        v45 = sub_22B360FBC();

        if (v45)
        {
          goto LABEL_7;
        }

        goto LABEL_24;
      }

      v44 = v42;
    }

    else if (!v43)
    {
      goto LABEL_7;
    }

LABEL_24:
    v46 = *(v0 + 560);
    (*(v0 + 552))(*(v0 + 464), *(v0 + 544), *(v0 + 416));
    v47 = sub_22B36050C();
    v48 = sub_22B360D2C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_22B116000, v47, v48, "[ShareManager] Not home owner", v49, 2u);
      MEMORY[0x23188F650](v49, -1, -1);
    }

    v50 = *(v0 + 568);
    v51 = *(v0 + 464);
    v52 = *(v0 + 416);
    v53 = *(v0 + 424);

    v50(v51, v52);
    v54 = [v30 residentDevices];
    sub_22B128014(0, &qword_27D8BA5C8, 0x277CD1D68);
    v55 = sub_22B360A5C();
    *(v0 + 688) = v55;

    if (v55 >> 62)
    {
      v23 = sub_22B36109C();
      *(v0 + 696) = v23;
      if (v23)
      {
LABEL_30:
        v24 = 0;
        goto LABEL_31;
      }
    }

    else
    {
      v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 696) = v56;
      if (v56)
      {
        goto LABEL_30;
      }
    }

LABEL_7:
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  v103 = *(v0 + 672);
  v104 = *(v0 + 560);
  v105 = *(v0 + 552);
  v106 = *(v0 + 544);
  v107 = *(v0 + 448);
  v108 = *(v0 + 416);

  v105(v107, v106, v108);
  v109 = v103;
  v59 = sub_22B36050C();
  v110 = sub_22B360D2C();

  if (!os_log_type_enabled(v59, v110))
  {
    goto LABEL_52;
  }

  v111 = *(v0 + 672);
  v149 = *(v0 + 568);
  v112 = *(v0 + 448);
  v113 = *(v0 + 416);
  v147 = *(v0 + 424) + 8;
  v114 = swift_slowAlloc();
  v115 = swift_slowAlloc();
  v154[0] = v115;
  *v114 = 136315138;
  v116 = [v111 name];
  v117 = sub_22B36084C();
  v119 = v118;

  v120 = sub_22B1A7B20(v117, v119, v154);

  *(v114 + 4) = v120;
  _os_log_impl(&dword_22B116000, v59, v110, "[ShareManager] Send message for %s", v114, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v115);
  MEMORY[0x23188F650](v115, -1, -1);
  MEMORY[0x23188F650](v114, -1, -1);

  v149(v112, v113);
LABEL_53:
  v150 = *(v0 + 672);
  v125 = *(v0 + 352);
  v126 = [v144 device];
  v127 = [v126 hmmmMessageDestination];
  *(v0 + 736) = v127;

  v128 = sub_22B36081C();
  *(v0 + 744) = v128;
  v129 = sub_22B35DCCC();
  *(v0 + 752) = v129;
  sub_22B128014(0, &qword_281409278, 0x277CCABB0);
  v130 = sub_22B360F9C();
  v131 = [objc_allocWithZone(MEMORY[0x277CD1B50]) initWithTimeout:v130 transportRestriction:2];
  *(v0 + 760) = v131;

  v132 = swift_allocObject();
  v132[2] = 0xD000000000000018;
  v132[3] = 0x800000022B36BDC0;
  v132[4] = v125;
  *(v0 + 272) = sub_22B1B78E8;
  *(v0 + 280) = v132;
  *(v0 + 240) = MEMORY[0x277D85DD0];
  *(v0 + 248) = 1107296256;
  *(v0 + 256) = sub_22B1B6578;
  *(v0 + 264) = &block_descriptor_11;
  v133 = _Block_copy((v0 + 240));
  *(v0 + 768) = v133;
  v134 = *(v0 + 280);

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_22B1B4BC8;
  v135 = swift_continuation_init();
  *(v0 + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5F0, &unk_22B3655A0);
  *(v0 + 176) = MEMORY[0x277D85DD0];
  *(v0 + 184) = 1107296256;
  *(v0 + 192) = sub_22B1B6640;
  *(v0 + 200) = &block_descriptor_10;
  *(v0 + 208) = v135;
  [v150 sendModernMessagingRequestWithMessageName:v128 destination:v127 requestPayload:v129 options:v131 responseHandler:v133 completionHandler:?];
  v23 = v0 + 16;

  return MEMORY[0x282200938](v23);
}

void sub_22B1B5E94(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v69 = sub_22B36052C();
  v12 = *(v69 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v69);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = v62 - v16;
  MEMORY[0x28223BE20](v18);
  v22 = v62 - v21;
  if (a4)
  {
    v23 = a4;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v24 = v69;
    v25 = __swift_project_value_buffer(v69, qword_28140BD10);
    swift_beginAccess();
    (*(v12 + 16))(v22, v25, v24);
    v26 = a4;
    v27 = sub_22B36050C();
    v28 = sub_22B360D1C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = a4;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_22B116000, v27, v28, "[ShareManager] %@", v29, 0xCu);
      sub_22B12F10C(v30);
      MEMORY[0x23188F650](v30, -1, -1);
      MEMORY[0x23188F650](v29, -1, -1);
    }

    else
    {
    }

    (*(v12 + 8))(v22, v24);
    return;
  }

  v68 = a1;
  if (a2 >> 60 == 15)
  {
    return;
  }

  v62[0] = v19;
  v62[1] = v20;
  v67 = a2;
  sub_22B144B30(v68, a2);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v33 = v69;
  v34 = __swift_project_value_buffer(v69, qword_28140BD10);
  swift_beginAccess();
  v35 = *(v12 + 16);
  v66 = v34;
  v63 = v35;
  v64 = v12 + 16;
  v35(v17, v34, v33);
  v36 = sub_22B36050C();
  v37 = sub_22B360D2C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_22B116000, v36, v37, "[ShareManager] got response", v38, 2u);
    MEMORY[0x23188F650](v38, -1, -1);
  }

  v39 = *(v12 + 8);
  v65 = v12 + 8;
  v39(v17, v69);
  v40 = a3;
  v41 = [a3 messageName];
  v42 = sub_22B36084C();
  v44 = v43;

  if (v42 == a5 && v44 == a6)
  {

LABEL_18:
    v46 = sub_22B35D7FC();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    sub_22B35D7EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5F8, &unk_22B3655B0);
    sub_22B1B790C();
    v49 = v67;
    v50 = v68;
    sub_22B35D7DC();

    sub_22B1CA75C(v70);
    sub_22B11EDC0(v50, v49);

    return;
  }

  v45 = sub_22B36134C();

  if (v45)
  {
    goto LABEL_18;
  }

  v51 = v39;
  v52 = v62[0];
  v53 = v69;
  v63(v62[0], v66, v69);
  v54 = v40;
  v55 = sub_22B36050C();
  v56 = sub_22B360D2C();

  v57 = os_log_type_enabled(v55, v56);
  v58 = v68;
  if (v57)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v59 = 138412290;
    v61 = [v54 peerDestination];
    *(v59 + 4) = v61;
    *v60 = v61;
    _os_log_impl(&dword_22B116000, v55, v56, "[ShareManager] Failed to decode response with destination %@", v59, 0xCu);
    sub_22B12F10C(v60);
    MEMORY[0x23188F650](v60, -1, -1);
    MEMORY[0x23188F650](v59, -1, -1);
  }

  sub_22B11EDC0(v58, v67);

  v51(v52, v53);
}

uint64_t sub_22B1B6578(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_22B35DCDC();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, v12, a4);

  sub_22B11EDC0(v6, v11);
}

uint64_t sub_22B1B6640(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_22B1B6710(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_22B128014(0, &qword_281408560, 0x277CD1EE0);
  return sub_22B360FBC() & 1;
}

uint64_t sub_22B1B6774(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22B35DF1C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v6 = sub_22B36052C();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1B68B4, 0, 0);
}

uint64_t sub_22B1B68B4()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = qword_28140A0C8;
    v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = v0[15];
    v4 = v0[11];
    v5 = v0[12];
    v6 = __swift_project_value_buffer(v4, qword_28140BD10);
    v0[16] = v6;
    swift_beginAccess();
    v7 = *(v5 + 16);
    v0[17] = v7;
    v0[18] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v3, v6, v4);
    v8 = sub_22B36050C();
    v9 = sub_22B360D2C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B116000, v8, v9, "[ShareManager] Got homes", v10, 2u);
      MEMORY[0x23188F650](v10, -1, -1);
    }

    v11 = v0[15];
    v12 = v0[11];
    v13 = v0[12];

    v14 = *(v13 + 8);
    v0[19] = v14;
    v14(v11, v12);
    v15 = swift_task_alloc();
    v0[20] = v15;
    *v15 = v0;
    v15[1] = sub_22B1B6AE8;

    return sub_22B2430B4();
  }

  else
  {
    v18 = v0[14];
    v17 = v0[15];
    v19 = v0[13];
    v21 = v0[9];
    v20 = v0[10];

    v22 = v0[1];

    return v22(0);
  }
}

uint64_t sub_22B1B6AE8(uint64_t a1)
{
  v3 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = a1;

  if (v1)
  {

    v4 = sub_22B1B74F0;
  }

  else
  {
    v4 = sub_22B1B6C04;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B1B6C04()
{
  v68 = v0;
  v1 = v0[21];
  if (v1 >> 62)
  {
    goto LABEL_41;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[21]; v2; v63 = v0)
  {
    v4 = v0[8];
    v5 = 0;
    sub_22B35F45C();
    v62 = v1 & 0xC000000000000001;
    v58 = i + 32;
    v59 = v1 & 0xFFFFFFFFFFFFFF8;
    v60 = v2;
    v61 = (v4 + 8);
    while (1)
    {
      if (v62)
      {
        v6 = MEMORY[0x23188EAC0](v5, v0[21]);
      }

      else
      {
        if (v5 >= *(v59 + 16))
        {
          goto LABEL_40;
        }

        v6 = *(v58 + 8 * v5);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v64 = v5 + 1;
      v9 = v0[9];
      v8 = v0[10];
      v10 = v0[7];
      v11 = v0[5];
      v65 = sub_22B35F3AC();
      v66 = v7;
      v13 = v12;
      v14 = [v7 uniqueIdentifier];
      sub_22B35DEFC();

      sub_22B35DECC();
      v15 = *v61;
      (*v61)(v8, v10);
      sub_22B35F1EC();
      sub_22B35DEAC();
      v16 = sub_22B35DECC();
      v1 = v17;
      v15(v9, v10);
      if (v65 == v16 && v13 == v1)
      {
      }

      else
      {
        v18 = sub_22B36134C();

        if ((v18 & 1) == 0)
        {
          v21 = v66;
LABEL_5:

          v0 = v63;
          goto LABEL_6;
        }
      }

      v19 = [v66 owner];
      v20 = [v66 currentUser];
      v21 = v20;
      if (!v19)
      {

        if (!v21)
        {
          v0 = v63;
LABEL_35:
          v51 = v0[21];
          v50 = v0[6];

          goto LABEL_36;
        }

        goto LABEL_5;
      }

      if (!v20)
      {

        v21 = v19;
        goto LABEL_5;
      }

      sub_22B128014(0, &qword_281408560, 0x277CD1EE0);
      v1 = sub_22B360FBC();

      v0 = v63;
      if (v1)
      {
        goto LABEL_35;
      }

LABEL_6:
      ++v5;
      if (v64 == v60)
      {
        v22 = v0[21];
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v2 = sub_22B36109C();
    i = v0[21];
  }

LABEL_23:
  v23 = v0[5];

  v24 = sub_22B35F3AC();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v28 = v0[18];
    v29 = v0[5];
    (v0[17])(v0[14], v0[16], v0[11]);
    v30 = v29;
    v31 = sub_22B36050C();
    v32 = sub_22B360D1C();

    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[19];
    v35 = v0[14];
    v36 = v0[11];
    v37 = v0[12];
    if (v33)
    {
      v38 = v0[5];
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v67 = v40;
      *v39 = 136315138;
      v41 = sub_22B35F3AC();
      v43 = sub_22B1A7B20(v41, v42, &v67);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_22B116000, v31, v32, "[ShareManager] Home not found for %s. Scheduling delete", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x23188F650](v40, -1, -1);
      MEMORY[0x23188F650](v39, -1, -1);
    }

    v34(v35, v36);
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v44 = v63[5];
    v63[22] = qword_28140BDD8;
    v45 = sub_22B35F3AC();
    v47 = v46;
    v63[23] = v46;
    v48 = swift_task_alloc();
    v63[24] = v48;
    *v48 = v63;
    v48[1] = sub_22B1B716C;

    return sub_22B23653C(v45, v47);
  }

  else
  {
    v50 = v0[6];
LABEL_36:

    v53 = v0[14];
    v52 = v0[15];
    v54 = v0[13];
    v56 = v0[9];
    v55 = v0[10];

    v57 = v0[1];

    return v57(0);
  }
}

uint64_t sub_22B1B716C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  v4[25] = a1;

  v7 = v4[23];
  if (v1)
  {

    v8 = swift_task_alloc();
    v4[27] = v8;
    *v8 = v6;
    v8[1] = sub_22B1B7650;
    v9 = v4[22];
    v10 = v4[5];
  }

  else
  {

    v11 = swift_task_alloc();
    v4[26] = v11;
    *v11 = v6;
    v11[1] = sub_22B1B7334;
    v12 = v4[22];
    v10 = a1;
  }

  return sub_22B23D0CC(v10);
}

uint64_t sub_22B1B7334()
{
  v2 = *(*v1 + 208);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_22B1B79EC;
  }

  else
  {
    v3 = sub_22B1B744C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B1B744C()
{
  v1 = *(v0 + 48);

  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);

  v7 = *(v0 + 8);

  return v7(1);
}

uint64_t sub_22B1B74F0()
{
  v1 = *(v0 + 144);
  (*(v0 + 136))(*(v0 + 104), *(v0 + 128), *(v0 + 88));
  v2 = sub_22B36050C();
  v3 = sub_22B360D1C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 152);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);
  v9 = *(v0 + 48);
  if (v4)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v2, v3, "[ShareManager] Failed to get homes", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  else
  {

    v2 = v9;
  }

  v5(v6, v8);
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);
  v13 = *(v0 + 104);
  v15 = *(v0 + 72);
  v14 = *(v0 + 80);

  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_22B1B7650()
{
  v2 = *(*v1 + 216);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_22B1B7768;
  }

  else
  {
    v3 = sub_22B1B79F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B1B7768()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);

  v6 = *(v0 + 8);

  return v6(1);
}

uint64_t sub_22B1B7804(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_22B128014(0, &qword_281408560, 0x277CD1EE0);
  return sub_22B360FBC() & 1;
}

unint64_t sub_22B1B786C()
{
  result = qword_27D8BA5E8;
  if (!qword_27D8BA5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BA5E0, &unk_22B365590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA5E8);
  }

  return result;
}

unint64_t sub_22B1B790C()
{
  result = qword_27D8BA600;
  if (!qword_27D8BA600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BA5F8, &unk_22B3655B0);
    sub_22B1B7998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA600);
  }

  return result;
}

unint64_t sub_22B1B7998()
{
  result = qword_27D8BA608;
  if (!qword_27D8BA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA608);
  }

  return result;
}

uint64_t sub_22B1B79F4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = xmmword_22B3655C0;
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x800000022B36BF00;
  v1 = OBJC_IVAR____TtC16HomeEnergyDaemon19AMIRecordsProcessor_sharedEKSignPoster;
  if (qword_281408E08 != -1)
  {
    swift_once();
  }

  v2 = sub_22B3604AC();
  v3 = __swift_project_value_buffer(v2, qword_28140BC88);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  if (sub_22B35EEBC())
  {
    if (qword_281408E18 != -1)
    {
      swift_once();
    }

    v4 = qword_28140BCA0;
    if (qword_28140BCA0)
    {
      v5 = sub_22B36081C();
      v6 = [v4 BOOLForKey_];

      if (v6)
      {
        *(v0 + 17) = 1;
      }

      v7 = sub_22B36081C();
      v8 = [v4 BOOLForKey_];

      if (v8)
      {
        *(v0 + 17) = 1;
      }
    }
  }

  return v0;
}

uint64_t sub_22B1B7BB4(uint64_t a1, char a2)
{
  *(v3 + 1141) = a2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v2;
  v4 = sub_22B3604BC();
  *(v3 + 400) = v4;
  v5 = *(v4 - 8);
  *(v3 + 408) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 416) = swift_task_alloc();
  v7 = sub_22B36052C();
  *(v3 + 424) = v7;
  v8 = *(v7 - 8);
  *(v3 + 432) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  *(v3 + 480) = swift_task_alloc();
  *(v3 + 488) = swift_task_alloc();
  *(v3 + 496) = swift_task_alloc();
  *(v3 + 504) = swift_task_alloc();
  *(v3 + 512) = swift_task_alloc();
  v10 = *(type metadata accessor for CDUsagePointRecords() - 8);
  *(v3 + 520) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 536) = swift_task_alloc();
  *(v3 + 544) = swift_task_alloc();
  *(v3 + 552) = swift_task_alloc();
  *(v3 + 560) = swift_task_alloc();
  *(v3 + 568) = swift_task_alloc();
  v12 = sub_22B3604AC();
  *(v3 + 576) = v12;
  v13 = *(v12 - 8);
  *(v3 + 584) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 592) = swift_task_alloc();
  *(v3 + 600) = swift_task_alloc();
  *(v3 + 608) = swift_task_alloc();
  *(v3 + 616) = swift_task_alloc();
  *(v3 + 624) = swift_task_alloc();
  *(v3 + 632) = swift_task_alloc();
  *(v3 + 640) = swift_task_alloc();
  *(v3 + 648) = swift_task_alloc();
  *(v3 + 656) = swift_task_alloc();
  *(v3 + 664) = swift_task_alloc();
  v15 = sub_22B36047C();
  *(v3 + 672) = v15;
  v16 = *(v15 - 8);
  *(v3 + 680) = v16;
  v17 = *(v16 + 64) + 15;
  *(v3 + 688) = swift_task_alloc();
  *(v3 + 696) = swift_task_alloc();
  *(v3 + 704) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1B7F10, 0, 0);
}

uint64_t sub_22B1B7F10()
{
  v1 = v0[48];
  v2 = sub_22B35F12C();
  v0[89] = v2;
  v0[90] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = v0[48];
    v7 = sub_22B35F43C();
    v0[91] = v7;
    v0[92] = v8;
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v11 = v0[48];
      if (sub_22B35F02C())
      {
        v12 = HIBYTE(v5) & 0xF;
        if ((v5 & 0x2000000000000000) == 0)
        {
          v12 = v4 & 0xFFFFFFFFFFFFLL;
        }

        if (v12)
        {
          v13 = HIBYTE(v10) & 0xF;
          if ((v10 & 0x2000000000000000) == 0)
          {
            v13 = v9 & 0xFFFFFFFFFFFFLL;
          }

          if (v13)
          {
            v14 = v0[88];
            v15 = v0[49];
            v0[93] = OBJC_IVAR____TtC16HomeEnergyDaemon19AMIRecordsProcessor_sharedEKSignPoster;
            sub_22B36048C();
            sub_22B36045C();
            v16 = sub_22B36048C();
            v17 = sub_22B360E2C();
            if (sub_22B360FDC())
            {
              v18 = v0[88];
              v19 = swift_slowAlloc();
              *v19 = 0;
              v20 = sub_22B36046C();
              _os_signpost_emit_with_name_impl(&dword_22B116000, v16, v17, v20, "FindGenerationMeters", "", v19, 2u);
              MEMORY[0x23188F650](v19, -1, -1);
            }

            v21 = v0[88];
            v22 = v0[87];
            v23 = v0[85];
            v24 = v0[84];

            (*(v23 + 16))(v22, v21, v24);
            v25 = sub_22B3604EC();
            v26 = *(v25 + 48);
            v27 = *(v25 + 52);
            swift_allocObject();
            v0[94] = sub_22B3604DC();
            v0[45] = MEMORY[0x277D84FA0];
            if (qword_2814096B8 != -1)
            {
              swift_once();
            }

            v28 = qword_28140BCE8;
            v0[95] = qword_28140BCE8;

            return MEMORY[0x2822009F8](sub_22B1B8308, v28, 0);
          }
        }
      }
    }
  }

  v29 = v0[88];
  v30 = v0[87];
  v31 = v0[86];
  v32 = v0[83];
  v33 = v0[82];
  v34 = v0[81];
  v35 = v0[80];
  v36 = v0[79];
  v37 = v0[78];
  v38 = v0[77];
  v41 = v0[76];
  v42 = v0[75];
  v43 = v0[74];
  v44 = v0[71];
  v45 = v0[70];
  v46 = v0[69];
  v47 = v0[68];
  v48 = v0[67];
  v49 = v0[66];
  v50 = v0[64];
  v51 = v0[63];
  v52 = v0[62];
  v53 = v0[61];
  v54 = v0[60];
  v55 = v0[59];
  v56 = v0[58];
  v57 = v0[57];
  v58 = v0[56];
  v59 = v0[55];
  v60 = v0[52];

  v39 = v0[1];

  return v39(0);
}

uint64_t sub_22B1B8308()
{
  v1 = v0[95];
  sub_22B32C2B8(v0[89], v0[90], v0[91], v0[92], 0, 0);
  v0[96] = v2;
  v0[97] = 0;

  return MEMORY[0x2822009F8](sub_22B1B83D0, 0, 0);
}

uint64_t sub_22B1B83D0()
{
  v266 = v0;
  v1 = *(v0 + 768);
  if (!v1)
  {
    v52 = *(v0 + 736);
    v53 = *(v0 + 720);

LABEL_56:
    v194 = *(v0 + 752);
    v195 = *(v0 + 688);
    v196 = *(v0 + 392) + *(v0 + 744);
    v197 = sub_22B36048C();
    sub_22B3604CC();
    v198 = sub_22B360E1C();
    if (sub_22B360FDC())
    {
      v199 = *(v0 + 752);
      v201 = *(v0 + 408);
      v200 = *(v0 + 416);
      v202 = *(v0 + 400);

      sub_22B3604FC();

      if ((*(v201 + 88))(v200, v202) == *MEMORY[0x277D85B00])
      {
        v203 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
        v203 = "";
      }

      v204 = *(v0 + 688);
      v205 = swift_slowAlloc();
      *v205 = 0;
      v206 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v197, v198, v206, "FindGenerationMeters", v203, v205, 2u);
      MEMORY[0x23188F650](v205, -1, -1);
    }

    v207 = *(v0 + 752);
    v208 = *(v0 + 704);
    v209 = *(v0 + 688);
    v210 = *(v0 + 680);
    v211 = *(v0 + 672);

    v212 = *(v210 + 8);
    v212(v209, v211);
    v212(v208, v211);
    swift_beginAccess();
    v264 = *(v0 + 360);
    v213 = *(v0 + 704);
    v214 = *(v0 + 696);
    v215 = *(v0 + 688);
    v216 = *(v0 + 664);
    v217 = *(v0 + 656);
    v218 = *(v0 + 648);
    v219 = *(v0 + 640);
    v220 = *(v0 + 632);
    v221 = *(v0 + 624);
    v222 = *(v0 + 616);
    v232 = *(v0 + 608);
    v233 = *(v0 + 600);
    v234 = *(v0 + 592);
    v235 = *(v0 + 568);
    v236 = *(v0 + 560);
    v237 = *(v0 + 552);
    v238 = *(v0 + 544);
    v239 = *(v0 + 536);
    v240 = *(v0 + 528);
    v241 = *(v0 + 512);
    v242 = *(v0 + 504);
    v243 = *(v0 + 496);
    v244 = *(v0 + 488);
    v245 = *(v0 + 480);
    v246 = *(v0 + 472);
    v247 = *(v0 + 464);
    v248 = *(v0 + 456);
    v252 = *(v0 + 448);
    v256 = *(v0 + 440);
    v260 = *(v0 + 416);

    v223 = *(v0 + 8);

    return v223(v264);
  }

  if (qword_281408E08 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 664);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v5 = __swift_project_value_buffer(v4, qword_28140BC88);
  *(v0 + 784) = v5;
  v6 = *(v3 + 16);
  *(v0 + 792) = v6;
  *(v0 + 800) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = sub_22B36048C();
  v8 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v9 = *(v0 + 704);
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v7, v8, v11, "Start: Loop UsagePoints", "", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  v12 = *(v0 + 664);
  v13 = *(v0 + 584);
  v14 = *(v0 + 576);

  v15 = *(v13 + 8);
  *(v0 + 808) = v15;
  v15(v12, v14);
  v16 = *(v1 + 16);
  *(v0 + 816) = v16;
  if (v16)
  {
    v17 = *(v0 + 568);
    v18 = *(*(v0 + 520) + 80);
    *(v0 + 1136) = v18;
    v19 = *(v0 + 776);
    *(v0 + 832) = 0;
    *(v0 + 824) = v19;
    v20 = *(v0 + 768);
    if (*(v20 + 16))
    {
      v21 = *(v0 + 800);
      v22 = *(v0 + 792);
      v23 = *(v0 + 784);
      v24 = *(v0 + 656);
      v25 = *(v0 + 576);
      sub_22B1CA1F0(v20 + ((v18 + 32) & ~v18), v17, type metadata accessor for CDUsagePointRecords);
      v22(v24, v23, v25);
      v26 = sub_22B36048C();
      v27 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v28 = *(v0 + 704);
        v29 = swift_slowAlloc();
        *v29 = 0;
        v30 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v26, v27, v30, "Start: Processing UsagePoint", "", v29, 2u);
        MEMORY[0x23188F650](v29, -1, -1);
      }

      v31 = *(v0 + 808);
      v32 = *(v0 + 800);
      v33 = *(v0 + 792);
      v34 = *(v0 + 784);
      v35 = *(v0 + 656);
      v36 = *(v0 + 648);
      v37 = *(v0 + 584);
      v38 = *(v0 + 576);

      v31(v35, v38);
      v33(v36, v34, v38);
      v39 = sub_22B36048C();
      v40 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v41 = *(v0 + 704);
        v42 = swift_slowAlloc();
        *v42 = 0;
        v43 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v39, v40, v43, "Start: Get Unique Meter IDs", "", v42, 2u);
        MEMORY[0x23188F650](v42, -1, -1);
      }

      v44 = *(v0 + 808);
      v45 = *(v0 + 648);
      v46 = *(v0 + 584);
      v47 = *(v0 + 576);

      v44(v45, v47);
      if (qword_2814099B0 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_13:
    v48 = *(v0 + 568);
    v49 = *(v0 + 384);
    v50 = qword_28140BCF8;
    *(v0 + 840) = qword_28140BCF8;
    *(v0 + 848) = *(v48 + 16);
    *(v0 + 856) = *(v48 + 24);
    *(v0 + 864) = sub_22B35F04C();
    *(v0 + 872) = v51;

    return MEMORY[0x2822009F8](sub_22B1B98F8, v50, 0);
  }

  v54 = *(v0 + 736);

  v55 = *(v0 + 800);
  (*(v0 + 792))(*(v0 + 608), *(v0 + 784), *(v0 + 576));
  v56 = sub_22B36048C();
  v57 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v58 = *(v0 + 704);
    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v56, v57, v60, "End: Loop UsagePoints", "", v59, 2u);
    MEMORY[0x23188F650](v59, -1, -1);
  }

  v61 = *(v0 + 808);
  v62 = *(v0 + 800);
  v63 = *(v0 + 792);
  v64 = *(v0 + 784);
  v65 = *(v0 + 608);
  v66 = *(v0 + 600);
  v67 = *(v0 + 584);
  v68 = *(v0 + 576);

  v61(v65, v68);
  v63(v66, v64, v68);
  v69 = sub_22B36048C();
  v70 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v71 = *(v0 + 704);
    v72 = swift_slowAlloc();
    *v72 = 0;
    v73 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v69, v70, v73, "Start: Compare Meters", "", v72, 2u);
    MEMORY[0x23188F650](v72, -1, -1);
  }

  v74 = *(v0 + 808);
  v75 = *(v0 + 600);
  v76 = *(v0 + 584);
  v77 = *(v0 + 576);
  v78 = *(v0 + 384);

  v74(v75, v77);
  v79 = sub_22B35F18C();
  if (v79)
  {
    v80 = v79;
    if (*(v79 + 16))
    {

      v82 = sub_22B31A80C(v81);

      v83 = *(v0 + 360);

      v85 = sub_22B1C3A84(v84, v82);

      if (v85)
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v86 = *(v0 + 720);
        v87 = *(v0 + 456);
        v88 = *(v0 + 424);
        v89 = *(v0 + 432);
        v90 = *(v0 + 384);
        v91 = __swift_project_value_buffer(v88, qword_28140BD10);
        swift_beginAccess();
        (*(v89 + 16))(v87, v91, v88);

        v92 = v90;

        v93 = sub_22B36050C();
        v94 = sub_22B360D2C();

        v95 = os_log_type_enabled(v93, v94);
        v96 = *(v0 + 720);
        if (v95)
        {
          v97 = *(v0 + 712);
          v261 = *(v0 + 456);
          v253 = *(v0 + 432);
          v257 = *(v0 + 424);
          v249 = *(v0 + 384);
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v265[0] = v99;
          *v98 = 136315650;
          v100 = MEMORY[0x23188E390](v80, MEMORY[0x277D837D0]);
          v102 = v101;

          v103 = sub_22B1A7B20(v100, v102, v265);

          *(v98 + 4) = v103;
          *(v98 + 12) = 2082;
          v104 = sub_22B1A7B20(v97, v96, v265);

          *(v98 + 14) = v104;
          *(v98 + 22) = 2082;
          v105 = sub_22B35F3AC();
          v107 = sub_22B1A7B20(v105, v106, v265);

          *(v98 + 24) = v107;
          _os_log_impl(&dword_22B116000, v93, v94, "[AMIProcessor] Meters already excluded %s for %{public}s at %{public}s", v98, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23188F650](v99, -1, -1);
          MEMORY[0x23188F650](v98, -1, -1);

          (*(v253 + 8))(v261, v257);
        }

        else
        {
          v169 = *(v0 + 456);
          v170 = *(v0 + 424);
          v171 = *(v0 + 432);

          (*(v171 + 8))(v169, v170);
        }

        goto LABEL_52;
      }

      goto LABEL_38;
    }
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v108 = *(v0 + 720);
  v110 = *(v0 + 432);
  v109 = *(v0 + 440);
  v111 = *(v0 + 424);
  v112 = *(v0 + 384);
  v113 = __swift_project_value_buffer(v111, qword_28140BD10);
  swift_beginAccess();
  (*(v110 + 16))(v109, v113, v111);

  v114 = v112;
  v115 = sub_22B36050C();
  v116 = sub_22B360D2C();

  v117 = os_log_type_enabled(v115, v116);
  v118 = *(v0 + 720);
  if (v117)
  {
    v119 = *(v0 + 712);
    v262 = *(v0 + 440);
    v254 = *(v0 + 432);
    v258 = *(v0 + 424);
    v250 = *(v0 + 384);
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v265[0] = v121;
    *v120 = 136315650;
    swift_beginAccess();
    v122 = *(v0 + 360);

    v123 = sub_22B360C5C();
    v125 = v124;

    v126 = sub_22B1A7B20(v123, v125, v265);

    *(v120 + 4) = v126;
    *(v120 + 12) = 2082;
    v127 = sub_22B1A7B20(v119, v118, v265);

    *(v120 + 14) = v127;
    *(v120 + 22) = 2082;
    v128 = sub_22B35F3AC();
    v130 = sub_22B1A7B20(v128, v129, v265);

    *(v120 + 24) = v130;
    _os_log_impl(&dword_22B116000, v115, v116, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s", v120, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v121, -1, -1);
    MEMORY[0x23188F650](v120, -1, -1);

    (*(v254 + 8))(v262, v258);
  }

  else
  {
    v132 = *(v0 + 432);
    v131 = *(v0 + 440);
    v133 = *(v0 + 424);

    (*(v132 + 8))(v131, v133);
  }

  if (*(v0 + 1141) != 1)
  {
    goto LABEL_52;
  }

  swift_beginAccess();
  v134 = *(v0 + 360);
  v135 = *(v134 + 16);
  if (!v135)
  {
    v83 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v83 = sub_22B32DCA4(*(v134 + 16), 0);
  v136 = sub_22B24FA90(v265, v83 + 4, v135, v134);

  sub_22B1A20B8();
  if (v136 == v135)
  {
LABEL_43:
    *(v0 + 1104) = v83;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v159 = *(v0 + 384);
    v160 = sub_22B35F3AC();
    v162 = v161;
    *(v0 + 1112) = v161;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B3634B0;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x800000022B36C000;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
    *(inited + 48) = v83;

    v164 = sub_22B321AAC(inited);
    *(v0 + 1120) = v164;
    swift_setDeallocating();
    sub_22B123284(inited + 32, &unk_27D8BAD00, &qword_22B3656C0);
    v165 = swift_task_alloc();
    *(v0 + 1128) = v165;
    *v165 = v0;
    v165[1] = sub_22B1C3080;
    v166 = v160;
    v167 = v162;
    v168 = v164;
    goto LABEL_68;
  }

  __break(1u);
LABEL_38:

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v137 = *(v0 + 720);
  v138 = *(v0 + 448);
  v139 = *(v0 + 424);
  v140 = *(v0 + 432);
  v141 = *(v0 + 384);
  v142 = __swift_project_value_buffer(v139, qword_28140BD10);
  swift_beginAccess();
  (*(v140 + 16))(v138, v142, v139);

  v143 = v141;
  v144 = sub_22B36050C();
  v145 = sub_22B360D2C();

  v146 = os_log_type_enabled(v144, v145);
  v147 = *(v0 + 720);
  if (v146)
  {
    v148 = *(v0 + 712);
    v263 = *(v0 + 448);
    v255 = *(v0 + 432);
    v259 = *(v0 + 424);
    v251 = *(v0 + 384);
    v149 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    v265[0] = v150;
    *v149 = 136315650;

    v151 = sub_22B360C5C();
    v153 = v152;

    v154 = sub_22B1A7B20(v151, v153, v265);

    *(v149 + 4) = v154;
    *(v149 + 12) = 2082;
    v155 = sub_22B1A7B20(v148, v147, v265);

    *(v149 + 14) = v155;
    *(v149 + 22) = 2082;
    v156 = sub_22B35F3AC();
    v158 = sub_22B1A7B20(v156, v157, v265);

    *(v149 + 24) = v158;
    _os_log_impl(&dword_22B116000, v144, v145, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s due to difference between stored and detected", v149, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v150, -1, -1);
    MEMORY[0x23188F650](v149, -1, -1);

    (*(v255 + 8))(v263, v259);
  }

  else
  {
    v172 = *(v0 + 448);
    v173 = *(v0 + 424);
    v174 = *(v0 + 432);

    (*(v174 + 8))(v172, v173);
  }

  if (*(v0 + 1141) != 1)
  {
    goto LABEL_52;
  }

  v175 = v83[2];
  if (v175)
  {
    v176 = sub_22B32DCA4(v83[2], 0);
    v177 = sub_22B24FA90(v265, v176 + 4, v175, v83);

    sub_22B1A20B8();
    if (v177 != v175)
    {
      __break(1u);
LABEL_52:
      v178 = *(v0 + 800);
      (*(v0 + 792))(*(v0 + 592), *(v0 + 784), *(v0 + 576));
      v179 = sub_22B36048C();
      v180 = sub_22B360E3C();
      v181 = sub_22B360FDC();
      v182 = *(v0 + 808);
      if (v181)
      {
        v183 = *(v0 + 704);
        v184 = *(v0 + 592);
        v185 = *(v0 + 584);
        v186 = *(v0 + 576);
        v187 = swift_slowAlloc();
        *v187 = 0;
        v188 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v179, v180, v188, "End: Compare Meters", "", v187, 2u);
        MEMORY[0x23188F650](v187, -1, -1);

        v189 = v184;
        v190 = v186;
      }

      else
      {
        v191 = *(v0 + 592);
        v192 = *(v0 + 584);
        v193 = *(v0 + 576);

        v189 = v191;
        v190 = v193;
      }

      v182(v189, v190);
      goto LABEL_56;
    }
  }

  else
  {
    v176 = MEMORY[0x277D84F90];
  }

  *(v0 + 1072) = v176;
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v224 = *(v0 + 384);
  v225 = sub_22B35F3AC();
  v227 = v226;
  *(v0 + 1080) = v226;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
  v228 = swift_initStackObject();
  *(v228 + 16) = xmmword_22B3634B0;
  *(v228 + 32) = 0xD000000000000010;
  *(v228 + 40) = 0x800000022B36C000;
  *(v228 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
  *(v228 + 48) = v176;

  v229 = sub_22B321AAC(v228);
  *(v0 + 1088) = v229;
  swift_setDeallocating();
  sub_22B123284(v228 + 32, &unk_27D8BAD00, &qword_22B3656C0);
  v230 = swift_task_alloc();
  *(v0 + 1096) = v230;
  *v230 = v0;
  v230[1] = sub_22B1C29E4;
  v166 = v225;
  v167 = v227;
  v168 = v229;
LABEL_68:

  return sub_22B2244D0(v166, v167, v168);
}

uint64_t sub_22B1B98F8()
{
  v30 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[90];
  v2 = v0[64];
  v3 = v0[53];
  v4 = v0[54];
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  v0[110] = v5;
  swift_beginAccess();
  v6 = *(v4 + 16);
  v0[111] = v6;
  v0[112] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);

  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[90];
    v10 = v0[89];
    v11 = v0[64];
    v12 = v0[53];
    v13 = v0[54];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136380675;
    *(v14 + 4) = sub_22B1A7B20(v10, v9, &v29);
    _os_log_impl(&dword_22B116000, v7, v8, "Get unique meter ids for %{private}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);

    v16 = *(v13 + 8);
    v16(v11, v12);
  }

  else
  {
    v17 = v0[64];
    v18 = v0[53];
    v19 = v0[54];

    v16 = *(v19 + 8);
    v16(v17, v18);
  }

  v0[113] = v16;
  v20 = v0[105];
  v21 = v20[14];
  v0[114] = v21;
  v22 = v20[15];
  v0[115] = v22;
  if (v21 && (v23 = v20[16], (v0[116] = v23) != 0))
  {
    sub_22B1231A0(v21, v22);
    v24 = v23;
    v25 = sub_22B1B9B78;
  }

  else
  {
    v26 = v0[109];

    v27 = v0[103];
    v0[120] = 0;
    v0[119] = v27;
    v25 = sub_22B1BB5C0;
  }

  return MEMORY[0x2822009F8](v25, 0, 0);
}

uint64_t sub_22B1B9B78()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 856);
  v3 = *(v0 + 848);
  v4 = *(v0 + 824);
  v13 = *(v0 + 728);
  v14 = *(v0 + 864);
  v5 = *(v0 + 912);
  v11 = v5;
  v12 = *(v0 + 712);
  v6 = MEMORY[0x23188EEB0]();
  v7 = swift_task_alloc();
  *(v7 + 16) = v1;
  *(v7 + 24) = v11;
  *(v7 + 40) = v12;
  *(v7 + 56) = v13;
  *(v7 + 72) = v14;
  *(v7 + 88) = v3;
  *(v7 + 96) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA630, qword_22B3656D0);
  sub_22B360E7C();
  *(v0 + 936) = v4;
  v8 = *(v0 + 840);

  objc_autoreleasePoolPop(v6);
  if (v4)
  {
    v9 = sub_22B1B9D5C;
  }

  else
  {
    *(v0 + 944) = *(v0 + 376);
    v9 = sub_22B1B9CC0;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22B1B9CC0()
{
  v1 = v0[116];
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[109];

  v5 = v0[117];
  v0[120] = v0[118];
  v0[119] = v5;

  return MEMORY[0x2822009F8](sub_22B1BB5C0, 0, 0);
}

uint64_t sub_22B1B9D5C()
{
  v1 = *(v0 + 936);
  v2 = *(v0 + 920);
  v3 = *(v0 + 912);
  v4 = *(v0 + 872);

  return MEMORY[0x2822009F8](sub_22B1B9DF8, 0, 0);
}

uint64_t sub_22B1B9DF8()
{
  v300 = v0;
  *(v0 + 968) = 0;
  v1 = *(v0 + 800);
  (*(v0 + 792))(*(v0 + 640), *(v0 + 784), *(v0 + 576));
  v2 = sub_22B36048C();
  v3 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v4 = *(v0 + 704);
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v2, v3, v6, "End: Get Unique Meter IDs", "", v5, 2u);
    MEMORY[0x23188F650](v5, -1, -1);
  }

  v7 = *(v0 + 808);
  v8 = *(v0 + 640);
  v9 = *(v0 + 584);
  v10 = *(v0 + 576);

  v7(v8, v10);
  v11 = *(v0 + 896);
  v12 = *(v0 + 720);
  v13 = *(v0 + 568);
  v14 = *(v0 + 528);
  v15 = *(v0 + 384);
  (*(v0 + 888))(*(v0 + 464), *(v0 + 880), *(v0 + 424));
  sub_22B1CA1F0(v13, v14, type metadata accessor for CDUsagePointRecords);

  v16 = v15;
  v17 = sub_22B36050C();
  v18 = sub_22B360D2C();

  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 904);
  if (v19)
  {
    v21 = *(v0 + 720);
    v22 = *(v0 + 712);
    v23 = *(v0 + 528);
    v289 = *(v0 + 424);
    v294 = *(v0 + 464);
    v24 = *(v0 + 384);
    v284 = *(v0 + 432) + 8;
    v279 = *(v0 + 904);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v299[0] = v26;
    *v25 = 136446722;
    *(v25 + 4) = sub_22B1A7B20(v22, v21, v299);
    *(v25 + 12) = 2082;
    v27 = *(v23 + 16);
    v28 = *(v23 + 24);

    sub_22B1CA258(v23, type metadata accessor for CDUsagePointRecords);
    v29 = sub_22B1A7B20(v27, v28, v299);

    *(v25 + 14) = v29;
    *(v25 + 22) = 2082;
    v30 = sub_22B35F3AC();
    v32 = sub_22B1A7B20(v30, v31, v299);

    *(v25 + 24) = v32;
    _os_log_impl(&dword_22B116000, v17, v18, "[AMIProcessor] Meter count not greater than 1 for %{public}s with usagePoint %{public}s at %{public}s", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v26, -1, -1);
    MEMORY[0x23188F650](v25, -1, -1);

    v279(v294, v289);
  }

  else
  {
    v33 = *(v0 + 528);
    v34 = *(v0 + 464);
    v35 = *(v0 + 424);
    v36 = *(v0 + 432);

    sub_22B1CA258(v33, type metadata accessor for CDUsagePointRecords);
    v20(v34, v35);
  }

  v37 = *(v0 + 800);
  (*(v0 + 792))(*(v0 + 616), *(v0 + 784), *(v0 + 576));
  v38 = sub_22B36048C();
  v39 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v40 = *(v0 + 704);
    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v38, v39, v42, "End: Processing UsagePoint", "", v41, 2u);
    MEMORY[0x23188F650](v41, -1, -1);
  }

  v43 = *(v0 + 832);
  v44 = *(v0 + 816);
  v45 = *(v0 + 808);
  v46 = *(v0 + 616);
  v47 = *(v0 + 584);
  v48 = *(v0 + 576);
  v49 = *(v0 + 568);

  v45(v46, v48);
  sub_22B1CA258(v49, type metadata accessor for CDUsagePointRecords);
  if (v43 + 1 == v44)
  {
    v50 = *(v0 + 768);
    v51 = *(v0 + 736);

    v52 = *(v0 + 800);
    (*(v0 + 792))(*(v0 + 608), *(v0 + 784), *(v0 + 576));
    v53 = sub_22B36048C();
    v54 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v55 = *(v0 + 704);
      v56 = swift_slowAlloc();
      *v56 = 0;
      v57 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v53, v54, v57, "End: Loop UsagePoints", "", v56, 2u);
      MEMORY[0x23188F650](v56, -1, -1);
    }

    v58 = *(v0 + 808);
    v59 = *(v0 + 800);
    v60 = *(v0 + 792);
    v61 = *(v0 + 784);
    v62 = *(v0 + 608);
    v63 = *(v0 + 600);
    v64 = *(v0 + 584);
    v65 = *(v0 + 576);

    v58(v62, v65);
    v60(v63, v61, v65);
    v66 = sub_22B36048C();
    v67 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v68 = *(v0 + 704);
      v69 = swift_slowAlloc();
      *v69 = 0;
      v70 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v66, v67, v70, "Start: Compare Meters", "", v69, 2u);
      MEMORY[0x23188F650](v69, -1, -1);
    }

    v71 = *(v0 + 808);
    v72 = *(v0 + 600);
    v73 = *(v0 + 584);
    v74 = *(v0 + 576);
    v75 = *(v0 + 384);

    v71(v72, v74);
    v76 = sub_22B35F18C();
    if (v76)
    {
      v77 = v76;
      if (*(v76 + 16))
      {

        v79 = sub_22B31A80C(v78);

        v80 = *(v0 + 360);

        v82 = sub_22B1C3A84(v81, v79);

        if (v82)
        {
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v83 = *(v0 + 720);
          v84 = *(v0 + 456);
          v85 = *(v0 + 424);
          v86 = *(v0 + 432);
          v87 = *(v0 + 384);
          v88 = __swift_project_value_buffer(v85, qword_28140BD10);
          swift_beginAccess();
          (*(v86 + 16))(v84, v88, v85);

          v89 = v87;

          v90 = sub_22B36050C();
          v91 = sub_22B360D2C();

          v92 = os_log_type_enabled(v90, v91);
          v93 = *(v0 + 720);
          if (v92)
          {
            v94 = *(v0 + 712);
            v295 = *(v0 + 456);
            v285 = *(v0 + 432);
            v290 = *(v0 + 424);
            v280 = *(v0 + 384);
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            v299[0] = v96;
            *v95 = 136315650;
            v97 = MEMORY[0x23188E390](v77, MEMORY[0x277D837D0]);
            v99 = v98;

            v100 = sub_22B1A7B20(v97, v99, v299);

            *(v95 + 4) = v100;
            *(v95 + 12) = 2082;
            v101 = sub_22B1A7B20(v94, v93, v299);

            *(v95 + 14) = v101;
            *(v95 + 22) = 2082;
            v102 = sub_22B35F3AC();
            v104 = sub_22B1A7B20(v102, v103, v299);

            *(v95 + 24) = v104;
            _os_log_impl(&dword_22B116000, v90, v91, "[AMIProcessor] Meters already excluded %s for %{public}s at %{public}s", v95, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v96, -1, -1);
            MEMORY[0x23188F650](v95, -1, -1);

            (*(v285 + 8))(v295, v290);
          }

          else
          {
            v199 = *(v0 + 456);
            v200 = *(v0 + 424);
            v201 = *(v0 + 432);

            (*(v201 + 8))(v199, v200);
          }

          goto LABEL_53;
        }

        goto LABEL_39;
      }
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v138 = *(v0 + 720);
    v140 = *(v0 + 432);
    v139 = *(v0 + 440);
    v141 = *(v0 + 424);
    v142 = *(v0 + 384);
    v143 = __swift_project_value_buffer(v141, qword_28140BD10);
    swift_beginAccess();
    (*(v140 + 16))(v139, v143, v141);

    v144 = v142;
    v145 = sub_22B36050C();
    v146 = sub_22B360D2C();

    v147 = os_log_type_enabled(v145, v146);
    v148 = *(v0 + 720);
    if (v147)
    {
      v149 = *(v0 + 712);
      v296 = *(v0 + 440);
      v286 = *(v0 + 432);
      v291 = *(v0 + 424);
      v281 = *(v0 + 384);
      v150 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v299[0] = v151;
      *v150 = 136315650;
      swift_beginAccess();
      v152 = *(v0 + 360);

      v153 = sub_22B360C5C();
      v155 = v154;

      v156 = sub_22B1A7B20(v153, v155, v299);

      *(v150 + 4) = v156;
      *(v150 + 12) = 2082;
      v157 = sub_22B1A7B20(v149, v148, v299);

      *(v150 + 14) = v157;
      *(v150 + 22) = 2082;
      v158 = sub_22B35F3AC();
      v160 = sub_22B1A7B20(v158, v159, v299);

      *(v150 + 24) = v160;
      _os_log_impl(&dword_22B116000, v145, v146, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s", v150, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v151, -1, -1);
      MEMORY[0x23188F650](v150, -1, -1);

      (*(v286 + 8))(v296, v291);
    }

    else
    {
      v162 = *(v0 + 432);
      v161 = *(v0 + 440);
      v163 = *(v0 + 424);

      (*(v162 + 8))(v161, v163);
    }

    if (*(v0 + 1141) != 1)
    {
      goto LABEL_53;
    }

    swift_beginAccess();
    v164 = *(v0 + 360);
    v165 = *(v164 + 16);
    if (v165)
    {
      v80 = sub_22B32DCA4(*(v164 + 16), 0);
      v166 = sub_22B24FA90(v299, v80 + 4, v165, v164);

      sub_22B1A20B8();
      if (v166 != v165)
      {
        __break(1u);
LABEL_39:

        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v167 = *(v0 + 720);
        v168 = *(v0 + 448);
        v169 = *(v0 + 424);
        v170 = *(v0 + 432);
        v171 = *(v0 + 384);
        v172 = __swift_project_value_buffer(v169, qword_28140BD10);
        swift_beginAccess();
        (*(v170 + 16))(v168, v172, v169);

        v173 = v171;
        v174 = sub_22B36050C();
        v175 = sub_22B360D2C();

        v176 = os_log_type_enabled(v174, v175);
        v177 = *(v0 + 720);
        if (v176)
        {
          v178 = *(v0 + 712);
          v297 = *(v0 + 448);
          v287 = *(v0 + 432);
          v292 = *(v0 + 424);
          v282 = *(v0 + 384);
          v179 = swift_slowAlloc();
          v180 = swift_slowAlloc();
          v299[0] = v180;
          *v179 = 136315650;

          v181 = sub_22B360C5C();
          v183 = v182;

          v184 = sub_22B1A7B20(v181, v183, v299);

          *(v179 + 4) = v184;
          *(v179 + 12) = 2082;
          v185 = sub_22B1A7B20(v178, v177, v299);

          *(v179 + 14) = v185;
          *(v179 + 22) = 2082;
          v186 = sub_22B35F3AC();
          v188 = sub_22B1A7B20(v186, v187, v299);

          *(v179 + 24) = v188;
          _os_log_impl(&dword_22B116000, v174, v175, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s due to difference between stored and detected", v179, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23188F650](v180, -1, -1);
          MEMORY[0x23188F650](v179, -1, -1);

          (*(v287 + 8))(v297, v292);
        }

        else
        {
          v202 = *(v0 + 448);
          v203 = *(v0 + 424);
          v204 = *(v0 + 432);

          (*(v204 + 8))(v202, v203);
        }

        if (*(v0 + 1141) != 1)
        {
          goto LABEL_53;
        }

        v205 = v80[2];
        if (v205)
        {
          v206 = sub_22B32DCA4(v80[2], 0);
          v207 = sub_22B24FA90(v299, v206 + 4, v205, v80);

          sub_22B1A20B8();
          if (v207 != v205)
          {
            __break(1u);
LABEL_53:
            v208 = *(v0 + 800);
            (*(v0 + 792))(*(v0 + 592), *(v0 + 784), *(v0 + 576));
            v209 = sub_22B36048C();
            v210 = sub_22B360E3C();
            v211 = sub_22B360FDC();
            v212 = *(v0 + 808);
            if (v211)
            {
              v213 = *(v0 + 704);
              v214 = *(v0 + 592);
              v215 = *(v0 + 584);
              v216 = *(v0 + 576);
              v217 = swift_slowAlloc();
              *v217 = 0;
              v218 = sub_22B36046C();
              _os_signpost_emit_with_name_impl(&dword_22B116000, v209, v210, v218, "End: Compare Meters", "", v217, 2u);
              MEMORY[0x23188F650](v217, -1, -1);

              v219 = v214;
              v220 = v216;
            }

            else
            {
              v221 = *(v0 + 592);
              v222 = *(v0 + 584);
              v223 = *(v0 + 576);

              v219 = v221;
              v220 = v223;
            }

            v212(v219, v220);
            v224 = *(v0 + 752);
            v225 = *(v0 + 688);
            v226 = *(v0 + 392) + *(v0 + 744);
            v227 = sub_22B36048C();
            sub_22B3604CC();
            v228 = sub_22B360E1C();
            if (sub_22B360FDC())
            {
              v229 = *(v0 + 752);
              v231 = *(v0 + 408);
              v230 = *(v0 + 416);
              v232 = *(v0 + 400);

              sub_22B3604FC();

              if ((*(v231 + 88))(v230, v232) == *MEMORY[0x277D85B00])
              {
                v233 = "[Error] Interval already ended";
              }

              else
              {
                (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
                v233 = "";
              }

              v234 = *(v0 + 688);
              v235 = swift_slowAlloc();
              *v235 = 0;
              v236 = sub_22B36046C();
              _os_signpost_emit_with_name_impl(&dword_22B116000, v227, v228, v236, "FindGenerationMeters", v233, v235, 2u);
              MEMORY[0x23188F650](v235, -1, -1);
            }

            v237 = *(v0 + 752);
            v238 = *(v0 + 704);
            v239 = *(v0 + 688);
            v240 = *(v0 + 680);
            v241 = *(v0 + 672);

            v242 = *(v240 + 8);
            v242(v239, v241);
            v242(v238, v241);
            swift_beginAccess();
            v298 = *(v0 + 360);
            v243 = *(v0 + 704);
            v244 = *(v0 + 696);
            v245 = *(v0 + 688);
            v246 = *(v0 + 664);
            v247 = *(v0 + 656);
            v248 = *(v0 + 648);
            v249 = *(v0 + 640);
            v250 = *(v0 + 632);
            v251 = *(v0 + 624);
            v252 = *(v0 + 616);
            v262 = *(v0 + 608);
            v263 = *(v0 + 600);
            v264 = *(v0 + 592);
            v265 = *(v0 + 568);
            v266 = *(v0 + 560);
            v267 = *(v0 + 552);
            v268 = *(v0 + 544);
            v269 = *(v0 + 536);
            v270 = *(v0 + 528);
            v271 = *(v0 + 512);
            v272 = *(v0 + 504);
            v273 = *(v0 + 496);
            v274 = *(v0 + 488);
            v275 = *(v0 + 480);
            v276 = *(v0 + 472);
            v277 = *(v0 + 464);
            v278 = *(v0 + 456);
            v283 = *(v0 + 448);
            v288 = *(v0 + 440);
            v293 = *(v0 + 416);

            v253 = *(v0 + 8);

            return v253(v298);
          }
        }

        else
        {
          v206 = MEMORY[0x277D84F90];
        }

        *(v0 + 1072) = v206;
        if (qword_28140B470 != -1)
        {
          swift_once();
        }

        v254 = *(v0 + 384);
        v255 = sub_22B35F3AC();
        v257 = v256;
        *(v0 + 1080) = v256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22B3634B0;
        *(inited + 32) = 0xD000000000000010;
        *(inited + 40) = 0x800000022B36C000;
        *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
        *(inited + 48) = v206;

        v259 = sub_22B321AAC(inited);
        *(v0 + 1088) = v259;
        swift_setDeallocating();
        sub_22B123284(inited + 32, &unk_27D8BAD00, &qword_22B3656C0);
        v260 = swift_task_alloc();
        *(v0 + 1096) = v260;
        *v260 = v0;
        v260[1] = sub_22B1C29E4;
        v196 = v255;
        v197 = v257;
        v198 = v259;
        goto LABEL_68;
      }
    }

    else
    {
      v80 = MEMORY[0x277D84F90];
    }

    *(v0 + 1104) = v80;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v189 = *(v0 + 384);
    v190 = sub_22B35F3AC();
    v192 = v191;
    *(v0 + 1112) = v191;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
    v193 = swift_initStackObject();
    *(v193 + 16) = xmmword_22B3634B0;
    *(v193 + 32) = 0xD000000000000010;
    *(v193 + 40) = 0x800000022B36C000;
    *(v193 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
    *(v193 + 48) = v80;

    v194 = sub_22B321AAC(v193);
    *(v0 + 1120) = v194;
    swift_setDeallocating();
    sub_22B123284(v193 + 32, &unk_27D8BAD00, &qword_22B3656C0);
    v195 = swift_task_alloc();
    *(v0 + 1128) = v195;
    *v195 = v0;
    v195[1] = sub_22B1C3080;
    v196 = v190;
    v197 = v192;
    v198 = v194;
LABEL_68:

    return sub_22B2244D0(v196, v197, v198);
  }

  v105 = *(v0 + 832) + 1;
  *(v0 + 832) = v105;
  *(v0 + 824) = 0;
  v106 = *(v0 + 768);
  if (v105 >= *(v106 + 16))
  {
    __break(1u);
  }

  else
  {
    v107 = *(v0 + 800);
    v108 = *(v0 + 792);
    v109 = *(v0 + 784);
    v110 = *(v0 + 656);
    v111 = *(v0 + 576);
    sub_22B1CA1F0(v106 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 520) + 72) * v105, *(v0 + 568), type metadata accessor for CDUsagePointRecords);
    v108(v110, v109, v111);
    v112 = sub_22B36048C();
    v113 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v114 = *(v0 + 704);
      v115 = swift_slowAlloc();
      *v115 = 0;
      v116 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v112, v113, v116, "Start: Processing UsagePoint", "", v115, 2u);
      MEMORY[0x23188F650](v115, -1, -1);
    }

    v117 = *(v0 + 808);
    v118 = *(v0 + 800);
    v119 = *(v0 + 792);
    v120 = *(v0 + 784);
    v121 = *(v0 + 656);
    v122 = *(v0 + 648);
    v123 = *(v0 + 584);
    v124 = *(v0 + 576);

    v117(v121, v124);
    v119(v122, v120, v124);
    v125 = sub_22B36048C();
    v126 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v127 = *(v0 + 704);
      v128 = swift_slowAlloc();
      *v128 = 0;
      v129 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v125, v126, v129, "Start: Get Unique Meter IDs", "", v128, 2u);
      MEMORY[0x23188F650](v128, -1, -1);
    }

    v130 = *(v0 + 808);
    v131 = *(v0 + 648);
    v132 = *(v0 + 584);
    v133 = *(v0 + 576);

    v130(v131, v133);
    if (qword_2814099B0 == -1)
    {
      goto LABEL_26;
    }
  }

  swift_once();
LABEL_26:
  v134 = *(v0 + 568);
  v135 = *(v0 + 384);
  v136 = qword_28140BCF8;
  *(v0 + 840) = qword_28140BCF8;
  *(v0 + 848) = *(v134 + 16);
  *(v0 + 856) = *(v134 + 24);
  *(v0 + 864) = sub_22B35F04C();
  *(v0 + 872) = v137;

  return MEMORY[0x2822009F8](sub_22B1B98F8, v136, 0);
}