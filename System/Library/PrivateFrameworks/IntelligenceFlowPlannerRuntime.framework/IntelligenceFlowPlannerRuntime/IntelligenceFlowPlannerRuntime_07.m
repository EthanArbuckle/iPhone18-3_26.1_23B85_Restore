uint64_t sub_22C3F4BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C369A3C();
  v11 = v10;
  v12 = v10[7];
  v13 = *v5;
  sub_22C369970();
  *v14 = v13;
  v11[8] = v4;

  if (v4)
  {
    v15 = sub_22C3F4D84;
  }

  else
  {
    v11[9] = a4;
    v11[10] = a3;
    v11[11] = a2;
    v11[12] = a1;
    v15 = sub_22C3F4D14;
  }

  return MEMORY[0x2822009F8](v15, 0, 0);
}

uint64_t sub_22C3F4D14()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[4];
  sub_22C59AA70();
  v4 = v0[1];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];

  return v4(v5, v6, v7, v8);
}

uint64_t sub_22C3F4D84()
{
  v1 = v0[8];
  v2 = v0[4];
  sub_22C59B1A0();
  swift_willThrow();
  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_22C3F4E18()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_22C374168(v1, v2);
  v4 = *(v3 + 32);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_22C3F4F3C;

  return v8(v2, v3);
}

uint64_t sub_22C3F4F3C(uint64_t a1, uint64_t a2)
{
  sub_22C369A3C();
  v7 = *(v6 + 24);
  v8 = *v3;
  sub_22C369970();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (!v2)
  {
    v10 = a1;
    v11 = a2;
  }

  return v12(v10, v11);
}

uint64_t sub_22C3F5048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22C3F4378;

  return sub_22C3F4A7C(a1, a2, a3, a4);
}

uint64_t sub_22C3F5104()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3DCFD4;

  return sub_22C3F4E04();
}

uint64_t sub_22C3F5190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v35 = sub_22C9063DC();
  v9 = sub_22C369824(v35);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v16 = v15 - v14;
  v17 = sub_22C90046C();
  v18 = sub_22C369824(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v25 = v24 - v23;
  v26 = type metadata accessor for FullPlannerHTTPClientInterface(0);
  v27 = a5 + *(v26 + 28);
  *v27 = 1;
  *(v27 + 1) = 0x3FF0000000000000;
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = 0x3FF0000000000000;
  *(v27 + 40) = xmmword_22C911480;
  a5[1] = a2;
  a5[2] = a3;
  (*(v20 + 16))(v25, a1, v17);
  v28 = type metadata accessor for PlannerHTTPClient(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *a5 = PlannerHTTPClient.init(with:)(v25);
  sub_22C903F7C();
  v31 = sub_22C9063CC();
  v32 = sub_22C90AACC();
  if (sub_22C370048(v32))
  {
    v33 = sub_22C36D240();
    *v33 = 0;
    _os_log_impl(&dword_22C366000, v31, v32, "Created a FullPlannerModelClient with PlannerHTTPClient", v33, 2u);
    sub_22C3699EC();
  }

  (*(v20 + 8))(a1, v17);
  (*(v11 + 8))(v16, v35);
  return sub_22C3E17AC(a4, a5 + *(v26 + 24));
}

uint64_t sub_22C3F53CC(const char *a1)
{
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  sub_22C903F7C();
  v11 = sub_22C9063CC();
  v12 = sub_22C90AABC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = sub_22C36D240();
    *v13 = 0;
    _os_log_impl(&dword_22C366000, v11, v12, a1, v13, 2u);
    sub_22C3699EC();
  }

  return (*(v5 + 8))(v10, v2);
}

uint64_t sub_22C3F54E4()
{
  sub_22C369980();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v5);
  v7 = *(v6 + 64);
  v1[11] = sub_22C3699D4();
  v8 = type metadata accessor for PlannerHTTPClient.CompletionRequest(0);
  v1[12] = v8;
  sub_22C369914(v8);
  v10 = *(v9 + 64);
  v1[13] = sub_22C3699D4();
  v11 = sub_22C9063DC();
  v1[14] = v11;
  v12 = *(v11 - 8);
  sub_22C369B5C();
  v1[15] = v13;
  v15 = *(v14 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

void sub_22C3F55F8()
{
  v1 = *(v0 + 80);
  v2 = type metadata accessor for FullPlannerHTTPClientInterface(0);
  v3 = v1 + *(v2 + 24);
  v4 = *(type metadata accessor for FullPlannerPreferences() + 108);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  v5 = *(v0 + 136);
  if (*(v0 + 160))
  {
    v6 = *(v0 + 128);
    v7 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = *(v0 + 136);

    sub_22C37FCB8();
    sub_22C381608();

    __asm { BRAA            X3, X16 }
  }

  v12 = *(v0 + 136);
  sub_22C903F7C();
  v13 = sub_22C9063CC();
  v14 = sub_22C90AACC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = sub_22C36D240();
    sub_22C36C890(v15);
    _os_log_impl(&dword_22C366000, v13, v14, "Running completion request using foundation models", v4, 2u);
    sub_22C372FB0();
  }

  v16 = *(v0 + 136);
  v18 = *(v0 + 112);
  v17 = *(v0 + 120);
  v19 = *(v0 + 104);
  v20 = *(v0 + 80);
  v42 = *(v0 + 88);
  v43 = *(v0 + 96);
  v21 = *(v0 + 64);
  v44 = *(v0 + 72);
  v22 = *(v0 + 56);

  (*(v17 + 8))(v16, v18);
  v23 = sub_22C3F9740(v22, v21);
  v40 = v24;
  v41 = v23;
  v25 = v20[1];
  v26 = v20[2];
  v27 = v20 + *(v2 + 28);
  v28 = *v27;
  v29 = *(v27 + 6);
  v39 = *(v27 + 5);
  v30 = sub_22C90046C();
  v37 = *(v27 + 24);
  v38 = *(v27 + 8);
  sub_22C36C640(v42, 1, 1, v30);
  v31 = *(v43 + 36);
  sub_22C36C640(v19 + v31, 1, 1, v30);
  *v19 = v25;
  *(v19 + 8) = v26;
  *(v19 + 16) = v41;
  *(v19 + 24) = v40;
  *(v19 + 32) = v28;
  *(v19 + 56) = v37;
  *(v19 + 40) = v38;
  *(v19 + 72) = v39;
  *(v19 + 80) = v29;
  *(v19 + 88) = 0;
  *(v19 + 96) = 0;
  *(v19 + 104) = 0;

  sub_22C3F94FC(v42, v19 + v31);
  sub_22C59A450();
  v32 = *v20;
  v33 = swift_task_alloc();
  *(v0 + 144) = v33;
  *v33 = v0;
  v33[1] = sub_22C3F58D0;
  v34 = *(v0 + 104);
  sub_22C381608();

  __asm { BR              X4 }
}

uint64_t sub_22C3F58D0()
{
  sub_22C369980();
  v2 = *(*v1 + 144);
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  *(v5 + 152) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C3F59D4()
{
  sub_22C3743E4();
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  sub_22C59AA70();

  if (v4[2])
  {
    v6 = v0[13];
    v7 = v4[4];
    v8 = v4[5];

    sub_22C36A78C();
    sub_22C3F956C(v6, v9);
    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[13];
    v13 = v0[11];

    sub_22C37FCB8();
    v14 = sub_22C36D264();

    return v15(v14);
  }

  else
  {
    v17 = v0[16];

    sub_22C903F7C();
    v18 = sub_22C9063CC();
    v19 = sub_22C90AADC();
    if (sub_22C37B204(v19))
    {
      v20 = sub_22C36D240();
      sub_22C36C890(v20);
      sub_22C36BB14(&dword_22C366000, v21, v22, "No completion results found");
      sub_22C372FB0();
    }

    v24 = v0[15];
    v23 = v0[16];
    v25 = v0[14];

    v26 = *(v24 + 8);
    v27 = sub_22C36BAFC();
    v28(v27);
    sub_22C3F010C();
    sub_22C36FBE4();
    *v29 = 0;
    v31 = v0[16];
    v30 = v0[17];
    v32 = v0[13];
    v33 = v0[11];
    swift_willThrow();
    sub_22C36A78C();
    sub_22C3F956C(v32, v34);

    sub_22C369A24();

    return v35();
  }
}

uint64_t sub_22C3F5BBC()
{
  sub_22C3743E4();
  v1 = v0[19];
  v2 = v0[9];
  sub_22C36BB08();
  sub_22C59B1A0();
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[13];
  v7 = v0[11];
  swift_willThrow();
  sub_22C36A78C();
  sub_22C3F956C(v6, v8);

  sub_22C369A24();

  return v9();
}

uint64_t sub_22C3F5C78(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 480) = a4;
  *(v5 + 112) = a3;
  *(v5 + 120) = v4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  v6 = *(*(sub_22C90A17C() - 8) + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v7 = sub_22C90637C();
  *(v5 + 136) = v7;
  v8 = *(v7 - 8);
  *(v5 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  v10 = sub_22C90634C();
  *(v5 + 160) = v10;
  v11 = *(v10 - 8);
  *(v5 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  v13 = sub_22C90636C();
  *(v5 + 200) = v13;
  v14 = *(v13 - 8);
  *(v5 + 208) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  v16 = *(*(sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70) - 8) + 64) + 15;
  *(v5 + 240) = swift_task_alloc();
  v17 = sub_22C90046C();
  *(v5 + 248) = v17;
  v18 = *(v17 - 8);
  *(v5 + 256) = v18;
  v19 = *(v18 + 64) + 15;
  *(v5 + 264) = swift_task_alloc();
  v20 = sub_22C9063DC();
  *(v5 + 272) = v20;
  v21 = *(v20 - 8);
  *(v5 + 280) = v21;
  v22 = *(v21 + 64) + 15;
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  v23 = sub_22C8FFE7C();
  *(v5 + 352) = v23;
  v24 = *(v23 - 8);
  *(v5 + 360) = v24;
  v25 = *(v24 + 64) + 15;
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3F6000, 0, 0);
}

uint64_t sub_22C3F6000()
{
  v75 = v0;
  v1 = *(v0 + 376);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 480);
  v5 = *(v0 + 104);
  v6 = type metadata accessor for PlannerHTTPClient.CompletionRequest(0);
  sub_22C3F8E28(0xEB00000000736E6FLL, v5, v3, v4 & 1, v5 + *(v6 + 36), v1);
  v8 = *(v0 + 368);
  v7 = *(v0 + 376);
  v9 = *(v0 + 352);
  v10 = *(v0 + 360);
  v11 = *(v0 + 344);
  sub_22C90403C();
  (*(v10 + 16))(v8, v7, v9);
  v12 = sub_22C9063CC();
  v13 = sub_22C90AABC();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 368);
  if (v14)
  {
    v17 = *(v0 + 240);
    v16 = *(v0 + 248);
    v18 = sub_22C36FB44();
    v71 = sub_22C370060();
    v74 = v71;
    *v18 = 136315138;
    sub_22C8FFE4C();
    result = sub_22C370B74(v17, 1, v16);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v20 = *(v0 + 360);
    v21 = *(v0 + 352);
    v66 = v21;
    v67 = *(v0 + 368);
    v68 = *(v0 + 280);
    v69 = *(v0 + 272);
    v70 = *(v0 + 344);
    v23 = *(v0 + 256);
    v22 = *(v0 + 264);
    v24 = *(v0 + 248);
    (*(v23 + 32))(v22, *(v0 + 240), v24);
    sub_22C3F96DC(&qword_281435848, MEMORY[0x277CC9260]);
    v25 = sub_22C90B47C();
    v27 = v26;
    (*(v23 + 8))(v22, v24);
    v28 = *(v20 + 8);
    v28(v67, v66);
    v29 = sub_22C36F9F4(v25, v27, &v74);

    *(v18 + 4) = v29;
    _os_log_impl(&dword_22C366000, v12, v13, "Request URL is : %s", v18, 0xCu);
    sub_22C36FF94(v71);
    sub_22C3699EC();
    sub_22C36D69C();

    v30 = *(v68 + 8);
    v30(v70, v69);
  }

  else
  {
    v31 = *(v0 + 352);
    v32 = *(v0 + 360);
    v33 = *(v0 + 344);
    v34 = *(v0 + 272);
    v35 = *(v0 + 280);

    v28 = *(v32 + 8);
    v28(v15, v31);
    v30 = *(v35 + 8);
    v30(v33, v34);
  }

  *(v0 + 384) = v30;
  *(v0 + 392) = v28;
  v37 = *(v0 + 224);
  v36 = *(v0 + 232);
  v38 = *(v0 + 200);
  v39 = *(v0 + 208);
  v40 = *(v0 + 192);
  sub_22C90369C();
  sub_22C90369C();
  sub_22C90635C();
  sub_22C90631C();
  v41 = *(v39 + 8);
  *(v0 + 400) = v41;
  *(v0 + 408) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41(v37, v38);
  v42 = sub_22C90635C();
  v43 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v44 = *(v0 + 192);
    v45 = sub_22C36D240();
    *v45 = 0;
    v46 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v42, v43, v46, "PlannerHTTPAPISession.data", "", v45, 2u);
    sub_22C36D69C();
  }

  v72 = *(v0 + 232);
  v48 = *(v0 + 192);
  v47 = *(v0 + 200);
  v49 = *(v0 + 184);
  v50 = *(v0 + 160);
  v51 = *(v0 + 168);
  v52 = *(v0 + 120);

  (*(v51 + 16))(v49, v48, v50);
  v53 = sub_22C9063AC();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  *(v0 + 416) = sub_22C90639C();
  v56 = *(v51 + 8);
  *(v0 + 424) = v56;
  *(v0 + 432) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v56(v48, v50);
  v41(v72, v47);
  v58 = *(v52 + 16);
  v57 = *(v52 + 24);
  ObjectType = swift_getObjectType();
  v60 = *(v57 + 8);
  sub_22C369B5C();
  v73 = (v61 + *v61);
  v63 = *(v62 + 4);
  v64 = swift_task_alloc();
  *(v0 + 440) = v64;
  *v64 = v0;
  v64[1] = sub_22C3F65F0;
  v65 = *(v0 + 376);

  return v73(v65, ObjectType, v57);
}

uint64_t sub_22C3F65F0()
{
  sub_22C369980();
  v2 = *v1;
  v3 = *(*v1 + 440);
  v11 = *v1;
  v2[56] = v4;
  v2[57] = v5;
  v2[58] = v6;
  v2[59] = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C3F6700()
{
  v270 = v0;
  v1 = *(v0 + 416);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  sub_22C90369C();
  v4 = sub_22C90635C();
  sub_22C90638C();
  v5 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v6 = *(v0 + 416);
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v9 = *(v0 + 136);

    sub_22C9063BC();

    if ((*(v8 + 88))(v7, v9) == *MEMORY[0x277D85B00])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
      v10 = "";
    }

    v11 = *(v0 + 176);
    v12 = sub_22C36D240();
    *v12 = 0;
    v13 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v4, v5, v13, "PlannerHTTPAPISession.data", v10, v12, 2u);
    sub_22C3699EC();
  }

  v14 = *(v0 + 464);
  v16 = *(v0 + 424);
  v15 = *(v0 + 432);
  v17 = v4;
  v18 = *(v0 + 400);
  v19 = *(v0 + 408);
  v20 = *(v0 + 216);
  v21 = *(v0 + 200);
  v22 = *(v0 + 176);
  v23 = *(v0 + 160);

  v16(v22, v23);
  v24 = sub_22C36D264();
  v18(v24);
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
    goto LABEL_23;
  }

  v26 = v25;
  v27 = *(v0 + 336);
  v28 = *(v0 + 464);
  sub_22C90403C();
  v29 = v28;
  v30 = sub_22C9063CC();
  v31 = sub_22C90AACC();
  if (sub_22C370048(v31))
  {
    v32 = *(v0 + 464);
    v33 = sub_22C36FB44();
    *v33 = 134217984;
    *(v33 + 4) = sub_22C386118();

    sub_22C372114();
    _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
    sub_22C36D69C();
  }

  else
  {

    v30 = *(v0 + 464);
  }

  v39 = *(v0 + 384);
  v40 = *(v0 + 336);
  v41 = *(v0 + 272);
  v42 = *(v0 + 280);

  v43 = sub_22C36D264();
  v39(v43);
  v44 = sub_22C386118();
  if (v44 != 302)
  {
    if (v44 == 429)
    {
      v65 = *(v0 + 320);
      sub_22C90403C();
      v66 = sub_22C9063CC();
      v67 = sub_22C90AADC();
      if (sub_22C37B204(v67))
      {
        v68 = sub_22C36D240();
        sub_22C36C890(v68);
        sub_22C36BB14(&dword_22C366000, v69, v70, "Rate limited!");
        sub_22C372FB0();
      }

      v71 = *(v0 + 456);
      v72 = *(v0 + 464);
      v73 = *(v0 + 448);
      v74 = *(v0 + 416);
      v75 = *(v0 + 384);
      v255 = *(v0 + 376);
      v259 = *(v0 + 392);
      v76 = *(v0 + 360);
      v250 = *(v0 + 352);
      v77 = *(v0 + 320);
      v78 = *(v0 + 272);

      v75(v77, v78);
      sub_22C3F9618();
      sub_22C36FBE4();
      *v79 = xmmword_22C911490;
      swift_willThrow();
      sub_22C38B120(v73, v71);

      goto LABEL_20;
    }

    if (v44 != 401)
    {
      if (v44 >= 300)
      {
        v175 = *(v0 + 448);
        v176 = *(v0 + 456);
        v177 = *(v0 + 120);
        sub_22C5CF7D8(&v266);
        v178 = v268;
        v179 = *(v0 + 464);
        if (v268)
        {
          v263 = v267;
          v180 = *(v0 + 296);
          sub_22C90403C();
          v181 = v179;

          v182 = sub_22C9063CC();
          v183 = sub_22C90AADC();

          v184 = os_log_type_enabled(v182, v183);
          v185 = *(v0 + 464);
          v186 = *(v0 + 384);
          v253 = *(v0 + 296);
          v187 = *(v0 + 272);
          if (v184)
          {
            v188 = swift_slowAlloc();
            v247 = v186;
            v189 = sub_22C370060();
            v269[0] = v189;
            *v188 = 134218242;
            *(v188 + 4) = [v26 0x1FAA064F8];

            *(v188 + 12) = 2080;
            sub_22C3825E4();
            sub_22C90AF5C();

            sub_22C379F84();
            *(v0 + 80) = v190;
            v191 = sub_22C90B47C();
            MEMORY[0x2318B7850](v191);

            sub_22C37FC8C();
            MEMORY[0x2318B7850](v263, v178);
            v192 = sub_22C36F9F4(v266, v267, v269);

            *(v188 + 14) = v192;
            _os_log_impl(&dword_22C366000, v182, v183, "Unhandled HTTP status: %ld error response: %s", v188, 0x16u);
            sub_22C36FF94(v189);
            v193 = &off_278729000;
            sub_22C3699EC();
            sub_22C3699EC();

            v247(v253, v187);
          }

          else
          {

            v186(v253, v187);
            v193 = 0x1FAA06000;
          }

          v205 = *(v0 + 464);
          v206 = *(v0 + 448);
          v231 = *(v0 + 456);
          v234 = *(v0 + 416);
          v248 = *(v0 + 376);
          v254 = *(v0 + 392);
          v237 = *(v0 + 360);
          v242 = *(v0 + 352);
          v266 = 0;
          v267 = 0xE000000000000000;
          sub_22C90AF5C();

          sub_22C3819C0();
          v269[0] = 0xD000000000000017;
          v269[1] = v207;
          *(v0 + 64) = [v26 v193[396]];
          v208 = sub_22C90B47C();
          MEMORY[0x2318B7850](v208);

          MEMORY[0x2318B7850](0xD000000000000011, 0x800000022C9303B0);
          v266 = 0;
          v267 = 0xE000000000000000;
          sub_22C90AF5C();

          sub_22C379F84();
          *(v0 + 72) = v209;
          v210 = sub_22C90B47C();
          MEMORY[0x2318B7850](v210);

          sub_22C37FC8C();
          MEMORY[0x2318B7850](v263, v178);

          MEMORY[0x2318B7850](v266, v267);

          sub_22C3F9618();
          v211 = sub_22C36FBE4();
          sub_22C37B550(v211, v212);
          sub_22C38B120(v206, v231);

          v254(v248, v242);
          goto LABEL_37;
        }

        v194 = *(v0 + 288);
        sub_22C90403C();
        v195 = v179;
        v196 = sub_22C9063CC();
        v197 = sub_22C90AADC();
        if (sub_22C370048(v197))
        {
          v198 = *(v0 + 464);
          v199 = sub_22C36FB44();
          *v199 = 134217984;
          *(v199 + 4) = sub_22C386118();

          sub_22C372114();
          _os_log_impl(v200, v201, v202, v203, v204, 0xCu);
          sub_22C36D69C();
          v53 = *(v0 + 464);
        }

        else
        {

          v53 = *(v0 + 464);
          v196 = v53;
        }

        v213 = *(v0 + 448);
        v238 = *(v0 + 456);
        v243 = *(v0 + 416);
        v214 = *(v0 + 384);
        v255 = *(v0 + 376);
        v259 = *(v0 + 392);
        v249 = *(v0 + 360);
        v250 = *(v0 + 352);
        v215 = *(v0 + 288);
        v216 = *(v0 + 272);

        v214(v215, v216);
        sub_22C3825E4();
        sub_22C90AF5C();

        sub_22C3819C0();
        v266 = 0xD000000000000022;
        v267 = v217;
        *(v0 + 56) = sub_22C386118();
        v218 = sub_22C90B47C();
        MEMORY[0x2318B7850](v218);

        sub_22C3F9618();
        v219 = sub_22C36FBE4();
        sub_22C37B550(v219, v220);
        v63 = v213;
        v64 = v238;
        goto LABEL_16;
      }

LABEL_23:
      v82 = *(v0 + 472);
      v83 = *(v0 + 448);
      v84 = *(v0 + 456);
      v85 = *(*(v0 + 120) + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_decoder);
      sub_22C3F95C4();
      sub_22C8FFEAC();
      if (!v82)
      {
        v111 = *(v0 + 312);
        sub_22C90403C();
        v112 = *(v0 + 16);
        v113 = *(v0 + 24);
        v114 = *(v0 + 40);
        v229 = *(v0 + 32);
        v115 = *(v0 + 48);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v116 = sub_22C9063CC();
        v117 = sub_22C90AACC();
        v118 = os_log_type_enabled(v116, v117);
        v230 = *(v0 + 448);
        v232 = *(v0 + 456);
        v119 = *(v0 + 392);
        v265 = *(v0 + 384);
        v120 = *(v0 + 376);
        v121 = *(v0 + 352);
        v257 = *(v0 + 464);
        v261 = *(v0 + 360);
        v235 = *(v0 + 416);
        v240 = *(v0 + 280);
        v245 = *(v0 + 272);
        v251 = *(v0 + 312);
        if (v118)
        {
          v227 = *(v0 + 376);
          v122 = sub_22C36FB44();
          v224 = v121;
          v123 = sub_22C370060();
          v269[0] = v123;
          *v122 = 136315138;
          sub_22C90AF5C();

          v266 = 3826793;
          v267 = 0xE300000000000000;
          v124 = sub_22C36D264();
          MEMORY[0x2318B7850](v124);
          MEMORY[0x2318B7850](0x3A6C65646F6D20, 0xE700000000000000);
          MEMORY[0x2318B7850](v229, v114);
          MEMORY[0x2318B7850](0x74656C706D6F6320, 0xED00003A736E6F69);
          v125 = MEMORY[0x2318B7AD0](v115, &type metadata for Completion);
          MEMORY[0x2318B7850](v125);

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v126 = sub_22C36F9F4(3826793, 0xE300000000000000, v269);

          *(v122 + 4) = v126;
          _os_log_impl(&dword_22C366000, v116, v117, "Received response from Ajax server: %s", v122, 0xCu);
          sub_22C36FF94(v123);
          sub_22C3699EC();
          sub_22C3699EC();
          sub_22C38B120(v230, v232);

          v135 = sub_22C3F972C(v127, v128, v129, v130, v131, v132, v133, v134, v119, v224, v227, v229, v230, v232, v235, v240, v245, v251);
          v136(v135);
          v222(v228, v225);
        }

        else
        {

          sub_22C38B120(v230, v232);

          v160 = sub_22C3F972C(v152, v153, v154, v155, v156, v157, v158, v159, v221, v223, v226, v229, v230, v232, v235, v240, v245, v251);
          v161(v160);
          v119(v120, v121);
        }

        v163 = *(v0 + 368);
        v162 = *(v0 + 376);
        v165 = *(v0 + 336);
        v164 = *(v0 + 344);
        v167 = *(v0 + 320);
        v166 = *(v0 + 328);
        v169 = *(v0 + 304);
        v168 = *(v0 + 312);
        v171 = *(v0 + 288);
        v170 = *(v0 + 296);
        sub_22C369B78();
        v172 = *(v0 + 96);
        v173 = *(v0 + 32);
        v174 = *(v0 + 40);
        *v172 = *(v0 + 16);
        *(v172 + 16) = v173;
        *(v172 + 24) = v174;

        sub_22C369A24();
        goto LABEL_38;
      }

      v86 = v82;
      v88 = *(v0 + 448);
      v87 = *(v0 + 456);
      v89 = *(v0 + 304);
      v90 = *(v0 + 128);
      sub_22C90A15C();
      v91 = sub_22C90A13C();
      v93 = v92;
      sub_22C3819C0();
      if (v94)
      {
        v96 = v94;
      }

      else
      {
        v96 = v95;
      }

      sub_22C90403C();

      v97 = v86;
      v98 = sub_22C9063CC();
      v99 = sub_22C90AADC();

      v100 = os_log_type_enabled(v98, v99);
      v101 = *(v0 + 384);
      v102 = *(v0 + 304);
      v103 = *(v0 + 280);
      v264 = *(v0 + 272);
      if (v100)
      {
        v260 = *(v0 + 384);
        if (v93)
        {
          v104 = v91;
        }

        else
        {
          v104 = 0xD000000000000016;
        }

        v105 = swift_slowAlloc();
        v256 = v102;
        v106 = swift_slowAlloc();
        v107 = sub_22C370060();
        v266 = v107;
        *v105 = 136315394;
        v108 = sub_22C36F9F4(v104, v96, &v266);

        *(v105 + 4) = v108;
        *(v105 + 12) = 2112;
        v109 = v86;
        v110 = _swift_stdlib_bridgeErrorToNSError();
        *(v105 + 14) = v110;
        *v106 = v110;
        _os_log_impl(&dword_22C366000, v98, v99, "Error decoding Ajax server response: %s. %@", v105, 0x16u);
        sub_22C36DD28(v106, &qword_27D9BB158, qword_22C910FD0);
        sub_22C3699EC();
        sub_22C36FF94(v107);
        sub_22C3699EC();
        sub_22C3699EC();

        v260(v256, v264);
      }

      else
      {

        v101(v102, v264);
      }

      v137 = v86;
      v138 = *(v0 + 456);
      v139 = *(v0 + 464);
      v140 = *(v0 + 448);
      v141 = *(v0 + 416);
      v259 = *(v0 + 392);
      v142 = *(v0 + 376);
      v144 = *(v0 + 352);
      v143 = *(v0 + 360);
      sub_22C3F9618();
      sub_22C36FBE4();
      *v145 = xmmword_22C9114A0;
      swift_willThrow();
      sub_22C38B120(v140, v138);

      v80 = v142;
      v81 = v144;
      goto LABEL_36;
    }
  }

  v45 = *(v0 + 328);
  sub_22C90403C();
  v46 = sub_22C9063CC();
  v47 = sub_22C90AACC();
  if (sub_22C370048(v47))
  {
    *sub_22C36D240() = 0;
    sub_22C372114();
    _os_log_impl(v48, v49, v50, v51, v52, 2u);
    sub_22C36D69C();
  }

  v54 = *(v0 + 456);
  v53 = *(v0 + 464);
  v55 = *(v0 + 448);
  v56 = *(v0 + 384);
  v255 = *(v0 + 376);
  v259 = *(v0 + 392);
  v239 = *(v0 + 416);
  v244 = *(v0 + 360);
  v250 = *(v0 + 352);
  v57 = *(v0 + 328);
  v58 = *(v0 + 272);

  v56(v57, v58);
  sub_22C3825E4();
  sub_22C90AF5C();

  sub_22C3819C0();
  v266 = 0xD000000000000017;
  v267 = v59;
  *(v0 + 88) = [v26 statusCode];
  v60 = sub_22C90B47C();
  MEMORY[0x2318B7850](v60);

  sub_22C3F9618();
  v61 = sub_22C36FBE4();
  sub_22C37B550(v61, v62);
  v63 = v55;
  v64 = v54;
LABEL_16:
  sub_22C38B120(v63, v64);

LABEL_20:
  v81 = v250;
  v80 = v255;
LABEL_36:
  v259(v80, v81);
LABEL_37:
  v147 = *(v0 + 368);
  v146 = *(v0 + 376);
  v148 = *(v0 + 336);
  v149 = *(v0 + 344);
  sub_22C379820();
  v233 = *(v0 + 224);
  v236 = *(v0 + 216);
  v241 = *(v0 + 192);
  v246 = *(v0 + 184);
  v252 = *(v0 + 176);
  v258 = *(v0 + 152);
  v262 = *(v0 + 128);

  sub_22C369A24();
LABEL_38:

  return v150();
}

void sub_22C3F774C()
{
  v1 = v0[52];
  v2 = v0[49];
  v3 = v0[47];
  v4 = v0[44];
  v5 = v0[45];

  v2(v3, v4);
  v19 = v0[59];
  v7 = v0[46];
  v6 = v0[47];
  v9 = v0[42];
  v8 = v0[43];
  sub_22C379820();
  v12 = v0[28];
  v13 = v0[27];
  v14 = v0[24];
  v15 = v0[23];
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[16];

  sub_22C369A24();
  sub_22C381608();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C3F78FC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22C3F79A4;

  return sub_22C3F54E4();
}

uint64_t sub_22C3F79A4()
{
  sub_22C380484();
  v5 = *(v4 + 16);
  v6 = *v3;
  sub_22C369970();
  *v7 = v6;

  sub_22C37FCB8();
  if (!v1)
  {
    v8 = v2;
    v9 = v0;
  }

  return v10(v8, v9);
}

uint64_t sub_22C3F7AF8()
{
  sub_22C3715A0();
  v1 = *(v0 + 8);
  v2 = sub_22C36BAFC();
  return v3(v2);
}

uint64_t sub_22C3F7B38()
{
  sub_22C3715A0();
  v1 = *(v0 + 16);
  v2 = sub_22C36BAFC();
  return v3(v2);
}

uint64_t sub_22C3F7B78()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_22C3A5908(&qword_27D9BBC20, &qword_22C911290);
  sub_22C369914(v5);
  v7 = *(v6 + 64);
  v1[6] = sub_22C3699D4();
  v8 = sub_22C9063DC();
  v1[7] = v8;
  v9 = *(v8 - 8);
  sub_22C369B5C();
  v1[8] = v10;
  v12 = *(v11 + 64);
  v1[9] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22C3F7C54()
{
  v2 = v1[9];
  sub_22C903F7C();
  v3 = sub_22C9063CC();
  v4 = sub_22C90AACC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_22C36D240();
    sub_22C36C890(v5);
    _os_log_impl(&dword_22C366000, v3, v4, "Running completion request using TokenGeneration", v0, 2u);
    sub_22C372FB0();
  }

  v7 = v1[8];
  v6 = v1[9];
  v9 = v1[6];
  v8 = v1[7];
  v11 = v1[4];
  v10 = v1[5];
  v12 = v1[2];

  v13 = *(v7 + 8);
  v14 = sub_22C36BAFC();
  v15(v14);
  v16 = *(v10 + 3);
  sub_22C374168(v10, v16);
  v17 = (*(*(v11 + 24) + 8))(*(v11 + 16));
  v19 = v18;
  v1[10] = v18;
  v20 = *(v11 + 36);
  v21 = sub_22C901B3C();
  sub_22C36985C(v21);
  (*(v22 + 16))(v9, &v10[v20], v21);
  sub_22C36C640(v9, 0, 1, v21);
  v23 = swift_task_alloc();
  v1[11] = v23;
  *v23 = v1;
  v23[1] = sub_22C3F7E38;
  v24 = v1[6];
  v25 = v1[3];

  return sub_22C3EE398(v17, v19, v25, 0, 0, 255, v24, v16);
}

uint64_t sub_22C3F7E38()
{
  sub_22C3743E4();
  sub_22C3819CC();
  v5 = *v3;
  v6 = *v3;
  sub_22C369970();
  *v7 = v6;
  v8 = v5[11];
  *v7 = *v3;
  v6[12] = v1;

  v9 = v5[10];
  v10 = v5[6];
  if (!v1)
  {
    v6[13] = v2;
    v6[14] = v0;
    v6[15] = v4;
  }

  sub_22C36DD28(v10, &qword_27D9BBC20, &qword_22C911290);

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C3F7FBC()
{
  sub_22C369980();
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[6];

  sub_22C37FCB8();
  v6 = v0[14];
  v5 = v0[15];

  return v4(v5, v6);
}

uint64_t sub_22C3F8034()
{
  sub_22C369980();
  v1 = v0[9];
  v2 = v0[6];

  sub_22C369A24();
  v4 = v0[12];

  return v3();
}

uint64_t sub_22C3F80B0()
{
  sub_22C36D5EC();
  v1 = *(v0 + 16);
  v2 = v1[4];
  sub_22C374168(v1, v1[3]);
  sub_22C382F3C();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_22C3F81B8;
  v7 = sub_22C36BAFC();

  return v9(v7);
}

uint64_t sub_22C3F81B8()
{
  sub_22C380484();
  v5 = *(v4 + 24);
  v6 = *v3;
  sub_22C369970();
  *v7 = v6;

  sub_22C37FCB8();
  if (!v1)
  {
    v8 = v2;
    v9 = v0;
  }

  return v10(v8, v9);
}

uint64_t sub_22C3F82B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3F9724;

  return sub_22C3F7B78();
}

uint64_t sub_22C3F8364()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3F9724;

  return sub_22C3F809C();
}

uint64_t sub_22C3F83F0()
{
  sub_22C369980();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v7 = sub_22C3A5908(&qword_27D9BBC20, &qword_22C911290);
  sub_22C369914(v7);
  v9 = *(v8 + 64);
  v1[13] = sub_22C3699D4();
  v10 = type metadata accessor for FullPlannerTokenGeneratorConstrainedDecodingInterface(0);
  v1[14] = v10;
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  v1[15] = sub_22C3699D4();
  v13 = sub_22C9063DC();
  v1[16] = v13;
  v14 = *(v13 - 8);
  sub_22C369B5C();
  v1[17] = v15;
  v17 = *(v16 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_22C3F8514()
{
  v64 = v0;
  v1 = *(v0 + 160);
  sub_22C903F7C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (sub_22C37B204(v3))
  {
    v4 = sub_22C36D240();
    sub_22C36C890(v4);
    sub_22C36BB14(&dword_22C366000, v5, v6, "Running completion request using TokenGeneration");
    sub_22C372FB0();
  }

  v7 = *(v0 + 160);
  v8 = *(v0 + 128);
  v9 = *(v0 + 136);
  v10 = *(v0 + 80);

  v11 = *(v9 + 8);
  v12 = sub_22C36BAFC();
  v11(v12);
  if (v10)
  {
    v13 = *(v0 + 152);
    v14 = *(v0 + 120);
    v15 = *(v0 + 96);
    v16 = *(v0 + 80);

    sub_22C903F7C();
    sub_22C3F9498(v15, v14);
    v17 = sub_22C9063CC();
    v18 = sub_22C90AACC();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 152);
    v21 = *(v0 + 128);
    v22 = *(v0 + 136);
    v23 = *(v0 + 120);
    if (v19)
    {
      v62 = *(v0 + 152);
      v24 = sub_22C36FB44();
      v61 = v11;
      v25 = sub_22C370060();
      v63 = v25;
      *v24 = 136315138;
      *(v0 + 208) = *(v23 + 40);
      v26 = sub_22C90A1AC();
      v28 = v27;
      sub_22C36BBD8();
      v29 = sub_22C36F9F4(v26, v28, &v63);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_22C366000, v17, v18, "Sending grammar with completion request. Mode=%s", v24, 0xCu);
      sub_22C36FF94(v25);
      sub_22C3699EC();
      sub_22C3699EC();

      (v61)(v62, v21);
    }

    else
    {

      sub_22C36BBD8();
      (v11)(v20, v21);
    }

    v45 = *(v0 + 104);
    v46 = *(v0 + 112);
    v47 = *(v0 + 96);
    sub_22C378A4C(v47, v0 + 16);
    v48 = *(v0 + 40);
    v49 = *(v0 + 48);
    sub_22C374168((v0 + 16), v48);
    v50 = *(v47 + 40) != 0;
    v51 = *(v46 + 24);
    v52 = sub_22C901B3C();
    sub_22C36985C(v52);
    (*(v53 + 16))(v45, v47 + v51, v52);
    sub_22C36C640(v45, 0, 1, v52);
    v54 = swift_task_alloc();
    *(v0 + 168) = v54;
    *v54 = v0;
    v54[1] = sub_22C3F8900;
    v55 = *(v0 + 104);
    v57 = *(v0 + 80);
    v56 = *(v0 + 88);
    v58 = *(v0 + 64);
    v59 = *(v0 + 72);
    v60 = *(v0 + 56);
    v66 = v49;

    return sub_22C3EE398(v60, v58, v56, v59, v57, v50, v55, v48);
  }

  else
  {
    v30 = *(v0 + 144);
    sub_22C903F7C();
    v31 = sub_22C9063CC();
    v32 = sub_22C90AADC();
    if (sub_22C37B204(v32))
    {
      v33 = sub_22C36D240();
      sub_22C36C890(v33);
      sub_22C36BB14(&dword_22C366000, v34, v35, "Constrained decoding interface is in use but no grammar was generated");
      sub_22C372FB0();
    }

    v37 = *(v0 + 136);
    v36 = *(v0 + 144);
    v38 = *(v0 + 128);

    v39 = sub_22C36BAFC();
    v11(v39);
    sub_22C3F010C();
    sub_22C36FBE4();
    *v40 = 3;
    swift_willThrow();
    v42 = *(v0 + 152);
    v41 = *(v0 + 160);
    sub_22C385564();

    sub_22C369A24();

    return v43();
  }
}

uint64_t sub_22C3F8900()
{
  sub_22C3743E4();
  sub_22C3819CC();
  v5 = *v3;
  v6 = *v3;
  sub_22C369970();
  *v7 = v6;
  v8 = v5[21];
  *v7 = *v3;
  v6[22] = v1;

  v9 = v5[13];
  v10 = v5[10];
  if (!v1)
  {
    v6[23] = v2;
    v6[24] = v0;
    v6[25] = v4;
  }

  sub_22C36DD28(v9, &qword_27D9BBC20, &qword_22C911290);

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C3F8A84()
{
  sub_22C36D5EC();
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];
  sub_22C385564();

  sub_22C36FF94(v0 + 2);

  sub_22C37FCB8();
  v6 = v0[24];
  v5 = v0[25];

  return v4(v5, v6);
}

uint64_t sub_22C3F8B2C()
{
  sub_22C36D5EC();
  sub_22C36FF94(v0 + 2);
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  sub_22C385564();

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C3F8BD8()
{
  sub_22C36D5EC();
  v1 = *(v0 + 16);
  v2 = v1[4];
  sub_22C374168(v1, v1[3]);
  sub_22C382F3C();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_22C3F9728;
  v7 = sub_22C36BAFC();

  return v9(v7);
}

uint64_t sub_22C3F8CE0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22C3F9724;

  return sub_22C3F83F0();
}

uint64_t sub_22C3F8D9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3F9724;

  return sub_22C3F8BC4();
}

uint64_t sub_22C3F8E28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v25 = a4;
  v24[0] = a3;
  v24[1] = a1;
  v26 = a2;
  v9 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v24 - v11;
  v13 = sub_22C90046C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v16);
  v18 = v24 - v17;
  sub_22C3F966C(a5, v12);
  if (sub_22C370B74(v12, 1, v13) == 1)
  {
    (*(v14 + 16))(v18, v6 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_url, v13);
    v19 = v6;
    if (sub_22C370B74(v12, 1, v13) != 1)
    {
      sub_22C36DD28(v12, &qword_27D9BB138, &qword_22C90DB70);
    }
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    v19 = v6;
  }

  sub_22C9003BC();
  sub_22C8FFE3C();
  sub_22C8FFE5C();
  v29 = 0x3D6B63616361;
  v30 = 0xE600000000000000;
  swift_getKeyPath();
  sub_22C901F3C();

  MEMORY[0x2318B7850](v27, v28);

  sub_22C8FFE5C();

  if (v25)
  {
    sub_22C8FFE1C();
  }

  sub_22C8FFE2C();
  sub_22C8FFE0C();
  v20 = *(v19 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_encoder);
  type metadata accessor for PlannerHTTPClient.CompletionRequest(0);
  sub_22C3F96DC(&qword_27D9BBCE0, type metadata accessor for PlannerHTTPClient.CompletionRequest);
  v21 = v31;
  sub_22C8FFF3C();
  if (v21)
  {
    v22 = sub_22C8FFE7C();
    (*(*(v22 - 8) + 8))(a6, v22);
  }

  else
  {
    sub_22C8FFE6C();
  }

  return (*(v14 + 8))(v18, v13);
}

uint64_t sub_22C3F9210()
{
  result = type metadata accessor for PlannerHTTPClient(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FullPlannerPreferences();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22C3F92A4()
{
  result = sub_22C3F9368();
  if (v1 <= 0x3F)
  {
    result = sub_22C901B3C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22C3F9368()
{
  result = qword_2814347A8[0];
  if (!qword_2814347A8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2814347A8);
  }

  return result;
}

unint64_t sub_22C3F940C()
{
  result = sub_22C3F9368();
  if (v1 <= 0x3F)
  {
    result = sub_22C901B3C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C3F9498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullPlannerTokenGeneratorConstrainedDecodingInterface(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3F94FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3F956C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_22C3F95C4()
{
  result = qword_27D9BBCD0;
  if (!qword_27D9BBCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBCD0);
  }

  return result;
}

unint64_t sub_22C3F9618()
{
  result = qword_27D9BBCD8;
  if (!qword_27D9BBCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBCD8);
  }

  return result;
}

uint64_t sub_22C3F966C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3F96DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C3F9740(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  v47 = v6;
  v48 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698E4();
  v46 = v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = sub_22C90363C();
  v14 = sub_22C369824(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v21 = v20 - v19;
  v51[0] = a1;
  v51[1] = a2;
  sub_22C372678();
  v22 = sub_22C37162C();
  v49 = v23;
  v50 = v22;
  v24 = *MEMORY[0x277D1EC40];
  v25 = *(v16 + 104);
  v25(v21, v24, v13);
  LOBYTE(a2) = sub_22C90362C();
  v26 = *(v16 + 8);
  v26(v21, v13);
  if (a2)
  {
    v45 = v25;
    sub_22C903F7C();
    v27 = v49;

    v28 = sub_22C9063CC();
    v29 = sub_22C90AABC();

    v44 = v29;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = sub_22C36FB44();
      v43 = v12;
      v31 = v30;
      v32 = v28;
      v33 = sub_22C370060();
      v51[0] = v33;
      *v31 = 136315138;
      *(v31 + 4) = sub_22C36F9F4(v50, v27, v51);
      _os_log_impl(&dword_22C366000, v32, v44, "Reformatted prompt to be sent to the model follows on the next line:\n%s", v31, 0xCu);
      sub_22C36FF94(v33);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v47 + 8))(v43, v48);
    }

    else
    {

      (*(v47 + 8))(v12, v48);
    }

    v25 = v45;
  }

  v25(v21, v24, v13);
  v34 = sub_22C90362C();
  v26(v21, v13);
  v35 = v49;
  if (v34)
  {
    v36 = v46;
    sub_22C903F7C();

    v37 = sub_22C9063CC();
    v38 = sub_22C90AABC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = sub_22C36FB44();
      v40 = sub_22C370060();
      v51[0] = v40;
      *v39 = 136315138;

      v41 = sub_22C36F9F4(v50, v35, v51);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_22C366000, v37, v38, "Reformatted prompt to be sent to the model follows on the next line:\n%s", v39, 0xCu);
      sub_22C36FF94(v40);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    (*(v47 + 8))(v36, v48);
  }

  return v50;
}

uint64_t sub_22C3F9B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v70 = a3;
  v66 = sub_22C909D9C();
  v5 = sub_22C369824(v66);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698E4();
  v64 = v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  v65 = &v61 - v12;
  sub_22C36BA0C();
  v13 = sub_22C9063DC();
  v14 = sub_22C369824(v13);
  v71 = v15;
  v72 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C3698E4();
  v67 = v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  v21 = &v61 - v20;
  v22 = sub_22C90363C();
  v23 = sub_22C369824(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v30 = v29 - v28;
  v73[0] = a1;
  v73[1] = a2;
  sub_22C372678();
  v31 = sub_22C37162C();
  v33 = v32;
  v34 = *(v25 + 104);
  v69 = *MEMORY[0x277D1EC40];
  v68 = v34;
  v34(v30);
  LOBYTE(a1) = sub_22C90362C();
  v35 = *(v25 + 8);
  v35(v30, v22);
  if (a1)
  {
    v63 = v7;
    sub_22C903F7C();

    v36 = sub_22C9063CC();
    v37 = sub_22C90AABC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = sub_22C36FB44();
      v62 = v21;
      v39 = v38;
      v40 = sub_22C370060();
      v61 = v36;
      v41 = v40;
      v73[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_22C36F9F4(v31, v33, v73);
      v42 = v37;
      v43 = v61;
      _os_log_impl(&dword_22C366000, v61, v42, "Reformatted prompt to be sent to the model follows on the next line:\n%s", v39, 0xCu);
      sub_22C36FF94(v41);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v71 + 8))(v62, v72);
    }

    else
    {

      (*(v71 + 8))(v21, v72);
    }

    v7 = v63;
  }

  v44 = v70;
  sub_22C3FA68C(v31, v33, v70);

  v68(v30, v69, v22);
  v45 = sub_22C90362C();
  result = (v35)(v30, v22);
  if (v45)
  {
    v47 = v67;
    sub_22C903F7C();
    v48 = v7;
    v49 = *(v7 + 16);
    v50 = v65;
    v51 = v66;
    v49(v65, v44, v66);
    v52 = sub_22C9063CC();
    v53 = sub_22C90AABC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = sub_22C36FB44();
      v55 = v64;
      v56 = v54;
      v70 = sub_22C370060();
      v73[0] = v70;
      *v56 = 136315138;
      v49(v55, v50, v51);
      v57 = sub_22C90A1AC();
      v59 = v58;
      (*(v48 + 8))(v50, v51);
      v60 = sub_22C36F9F4(v57, v59, v73);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_22C366000, v52, v53, "Reformatted prompt to be sent to the model follows on the next line:\n%s", v56, 0xCu);
      sub_22C36FF94(v70);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {

      (*(v48 + 8))(v50, v51);
    }

    return (*(v71 + 8))(v47, v72);
  }

  return result;
}

uint64_t sub_22C3F9FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - v7;
  v9 = sub_22C909D6C();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v17 = v16 - v15;
  sub_22C909D3C();
  v18 = sub_22C3FB2B0(v17);
  (*(v12 + 8))(v17, v9);
  sub_22C90A73C();
  v19 = sub_22C90A75C();
  sub_22C36C640(v8, 0, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v18;
  v20[5] = a2;
  v20[6] = a3;

  sub_22C59D038(0, 0, v8, &unk_22C9116D8, v20);

  return sub_22C3FC848(v8);
}

uint64_t sub_22C3FA19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a4;
  v71 = a3;
  v5 = 0;
  v6 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = &v69 - v8;
  sub_22C36BA0C();
  v9 = sub_22C909D6C();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  v76 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  v79 = &v69 - v17;
  v18 = sub_22C90440C();
  v69 = v19;
  v70 = v18;
  sub_22C3A5908(&qword_27D9BBD00, &qword_22C911690);
  result = sub_22C90B1CC();
  v21 = result;
  v77 = a2;
  v78 = v9;
  v24 = *(a2 + 64);
  v23 = a2 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v80 = result + 64;
  v82 = result;
  v83 = v12;
  v74 = 0;
  v75 = v12 + 32;
  if ((v26 & v22) != 0)
  {
    while (1)
    {
      sub_22C36D6B8();
LABEL_10:
      v31 = v29 | (v5 << 6);
      v32 = *(v77 + 56);
      v33 = (*(v77 + 48) + 16 * v31);
      v34 = v33[1];
      v81 = *v33;
      sub_22C378A4C(v32 + 40 * v31, v84);
      sub_22C374168(v84, v84[3]);

      v35 = v76;
      sub_22C909DBC();
      sub_22C36FF94(v84);
      *(v80 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      v21 = v82;
      v36 = (*(v82 + 48) + 16 * v31);
      *v36 = v81;
      v36[1] = v34;
      v37 = v35;
      v9 = v78;
      result = (*(v83 + 32))(*(v21 + 56) + *(v83 + 72) * v31, v37, v78);
      v38 = *(v21 + 16);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        break;
      }

      *(v21 + 16) = v40;
      if (!v27)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v30 = v5;
    while (1)
    {
      v5 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v28)
      {
        break;
      }

      ++v30;
      if (*(v23 + 8 * v5))
      {
        sub_22C3700F4();
        goto LABEL_10;
      }
    }

    sub_22C3A5908(&qword_27D9BBD08, &qword_22C911698);
    result = sub_22C90B1CC();
    v41 = 0;
    v42 = 1 << *(v21 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & *(v21 + 64);
    v45 = (v42 + 63) >> 6;
    v76 = v83 + 16;
    v77 = v83 + 8;
    v81 = result;
    v75 = result + 64;
    v46 = v74;
    while (1)
    {
      v47 = v79;
      if (!v44)
      {
        break;
      }

      sub_22C36D6B8();
LABEL_23:
      v50 = v48 | (v41 << 6);
      v51 = (*(v82 + 48) + 16 * v50);
      v52 = *v51;
      v53 = v51[1];
      (*(v83 + 16))(v47, *(v82 + 56) + *(v83 + 72) * v50, v9);

      v54 = sub_22C3FB2B0(v47);
      if (v46)
      {

        v67 = sub_22C388EA8();
        v68(v67, v9);

        v81 = 0;
LABEL_27:
        v62 = v72;
        sub_22C90A73C();
        v63 = sub_22C90A75C();
        sub_22C36C640(v62, 0, 1, v63);
        v64 = swift_allocObject();
        v64[2] = 0;
        v64[3] = 0;
        v65 = v70;
        v66 = v71;
        v64[4] = v81;
        v64[5] = v66;
        v64[6] = v73;
        v64[7] = v65;
        v64[8] = v69;

        sub_22C59D038(0, 0, v62, &unk_22C9116A8, v64);

        return sub_22C3FC848(v62);
      }

      v55 = v54;
      v56 = sub_22C388EA8();
      result = v57(v56, v9);
      *(v75 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      v58 = v81;
      v59 = (*(v81 + 48) + 16 * v50);
      *v59 = v52;
      v59[1] = v53;
      *(*(v58 + 56) + 8 * v50) = v55;
      v60 = *(v58 + 16);
      v39 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v39)
      {
        goto LABEL_32;
      }

      *(v81 + 16) = v61;
    }

    v49 = v41;
    while (1)
    {
      v41 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v41 >= v45)
      {

        goto LABEL_27;
      }

      ++v49;
      if (*(v80 + 8 * v41))
      {
        sub_22C3700F4();
        goto LABEL_23;
      }
    }

LABEL_30:
    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_22C3FA68C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C9063DC();
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v61 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22C9043DC();
  v9 = *(v65 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v65);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  v67 = a2;
  sub_22C3858B4();
  v13 = sub_22C90AD9C();
  v14 = *(v13 + 16);
  if (v14)
  {
    v60 = v12;
    v64 = a3;
    v66 = MEMORY[0x277D84F90];
    sub_22C3B5E2C();
    v15 = 0;
    v16 = v66;
    v17 = (v13 + 56);
    while (v15 < *(v13 + 16))
    {
      v18 = *(v17 - 3);
      v19 = *(v17 - 2);
      v21 = *(v17 - 1);
      v20 = *v17;

      v22 = MEMORY[0x2318B76D0](v18, v19, v21, v20);
      v24 = v23;

      v66 = v16;
      v25 = v16[2];
      if (v25 >= v16[3] >> 1)
      {
        sub_22C3B5E2C();
        v16 = v66;
      }

      ++v15;
      v16[2] = v25 + 1;
      v26 = &v16[2 * v25];
      v26[4] = v22;
      v26[5] = v24;
      v17 += 4;
      if (v14 == v15)
      {

        a3 = v64;
        v12 = v60;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_9:
  v27 = v16[2];
  if (v27)
  {
    v28 = v16[4];
    v29 = v16[5];
    if (v27 == 1 || (v30 = sub_22C3A5968(v16), !v31))
    {

      MEMORY[0x28223BE20](v50);
      *(&v59 - 2) = v28;
      *(&v59 - 1) = v29;
      sub_22C909DAC();
    }

    else
    {
      v60 = v30;
      v61 = v31;
      v62 = v28;
      v63 = v29;

      v32 = sub_22C862EFC(1, v16);
      v36 = sub_22C46BC60(1, v32, v33, v34, v35);
      v40 = v39 >> 1;
      v41 = (v39 >> 1) - v38;
      if (__OFSUB__(v39 >> 1, v38))
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v41)
      {
        v42 = v37;
        v43 = v38;
        v59 = v36;
        v64 = a3;
        v66 = MEMORY[0x277D84F90];
        sub_22C3B6324(0, v41 & ~(v41 >> 63), 0);
        if (v41 < 0)
        {
LABEL_31:
          __break(1u);
          return;
        }

        v44 = v66;
        v45 = (v42 + 16 * v43 + 8);
        while (v43 < v40)
        {
          v46 = *(v45 - 1);
          v47 = *v45;

          sub_22C9043EC();
          v66 = v44;
          v49 = v44[2];
          v48 = v44[3];
          if (v49 >= v48 >> 1)
          {
            sub_22C3B6324(v48 > 1, v49 + 1, 1);
            v44 = v66;
          }

          v44[2] = v49 + 1;
          (*(v9 + 32))(v44 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v49, v12, v65);
          ++v43;
          v45 += 2;
          if (v40 == v43)
          {
            v55 = swift_unknownObjectRelease();
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v55 = swift_unknownObjectRelease();
      v44 = MEMORY[0x277D84F90];
LABEL_26:
      MEMORY[0x28223BE20](v55);
      v56 = v63;
      *(&v59 - 6) = v62;
      *(&v59 - 5) = v56;
      v57 = v60;
      v58 = v61;
      *(&v59 - 4) = v44;
      *(&v59 - 3) = v57;
      *(&v59 - 2) = v58;
      sub_22C909DAC();
    }

    return;
  }

  v51 = v61;
  sub_22C903F7C();
  v52 = sub_22C9063CC();
  v53 = sub_22C90AADC();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_22C366000, v52, v53, "Found no splits when separating the prompt on tool definition. This indicates an empty prompt", v54, 2u);
    MEMORY[0x2318B9880](v54, -1, -1);
  }

  (*(v62 + 8))(v51, v63);
  sub_22C909D2C();
}

uint64_t sub_22C3FABF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C909D9C();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v20 = a2;

  v10 = MEMORY[0x277D837D0];
  v11 = sub_22C90A49C();
  v21 = v10;
  v22 = MEMORY[0x277D42EC0];
  v19 = v11;
  v20 = v12;
  v13 = MEMORY[0x277D42E18];
  sub_22C909CFC();
  sub_22C36FF94(&v19);
  sub_22C3A5908(&qword_27D9BBCA8, &qword_22C9113E0);
  v14 = *(v5 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22C90F800;
  (*(v6 + 16))(v16 + v15, v9, v4);
  MEMORY[0x2318B71C0](v16, v4, v13);

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_22C3FADD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v9 = sub_22C909D9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v30 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v29 = &v27 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - v16;
  v36 = MEMORY[0x277D837D0];
  v37 = MEMORY[0x277D42EC0];
  v34 = a1;
  v35 = a2;

  v28 = v17;
  sub_22C909CFC();
  sub_22C36FF94(&v34);
  v36 = sub_22C3A5908(&qword_27D9BBD78, &unk_22C9116E0);
  v37 = sub_22C3FCC54();
  v34 = a3;

  sub_22C909CFC();
  sub_22C36FF94(&v34);
  v36 = MEMORY[0x277D837D0];
  v37 = MEMORY[0x277D42EC0];
  v34 = v31;
  v35 = v32;

  v18 = v30;
  sub_22C909CFC();
  sub_22C36FF94(&v34);
  sub_22C3A5908(&qword_27D9BBCA8, &qword_22C9113E0);
  v19 = *(v10 + 72);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22C90FB40;
  v22 = v21 + v20;
  v23 = *(v10 + 16);
  v23(v22, v17, v9);
  v24 = v29;
  v23(v22 + v19, v29, v9);
  v23(v22 + 2 * v19, v18, v9);
  MEMORY[0x2318B71C0](v21, v9, MEMORY[0x277D42E18]);

  v25 = *(v10 + 8);
  v25(v18, v9);
  v25(v24, v9);
  return (v25)(v28, v9);
}

uint64_t sub_22C3FB0D0()
{
  result = sub_22C3FB0F0();
  qword_27D9BBCE8 = result;
  return result;
}

uint64_t sub_22C3FB0F0()
{
  v0 = sub_22C8FFEFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = sub_22C8FFF5C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_22C8FFF4C();
  sub_22C3A5908(&qword_27D9BBD48, &qword_22C9116C0);
  v7 = *(v1 + 72);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_22C90F870;
  sub_22C8FFEEC();
  sub_22C8FFEDC();
  sub_22C3FCD08(&qword_27D9BBD50, MEMORY[0x277CC8718]);
  sub_22C3A5908(&qword_27D9BBD58, &qword_22C9116C8);
  sub_22C3FC974();
  sub_22C90AE4C();
  sub_22C8FFF0C();
  return v6;
}

uint64_t sub_22C3FB2B0(uint64_t a1)
{
  v108 = sub_22C909D8C();
  v3 = sub_22C369824(v108);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v107 = v9 - v8;
  sub_22C36BA0C();
  v10 = sub_22C909D9C();
  v11 = sub_22C369824(v10);
  v100 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v17 = v16 - v15;
  v109 = sub_22C90748C();
  v18 = sub_22C369824(v109);
  v104 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v105 = v23 - v22;
  sub_22C36BA0C();
  v101 = sub_22C9043DC();
  v24 = sub_22C369824(v101);
  v98 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  v99 = v29 - v28;
  sub_22C36BA0C();
  v30 = sub_22C909D5C();
  v31 = sub_22C369824(v30);
  v102 = v32;
  v103 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  v37 = v36 - v35;
  v38 = sub_22C909D6C();
  v39 = sub_22C369824(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C3698E4();
  v106 = v44;
  sub_22C369930();
  MEMORY[0x28223BE20](v45);
  v47 = (&v97 - v46);
  (*(v41 + 16))(&v97 - v46, a1, v38);
  v48 = (*(v41 + 88))(v47, v38);
  if (v48 != *MEMORY[0x277D42DC8])
  {
    if (v48 == *MEMORY[0x277D42DD0])
    {
      (*(v41 + 96))(v47, v38);
      v78 = *v47;
      v77 = v47[1];
      v79 = HIBYTE(v77) & 0xF;
      if ((v77 & 0x2000000000000000) == 0)
      {
        v79 = *v47 & 0xFFFFFFFFFFFFLL;
      }

      if (v79)
      {
        sub_22C3A5908(&qword_27D9BBCF0, &unk_22C91DC20);
        v80 = *(*(sub_22C9074AC() - 8) + 72);
        sub_22C3FCD74();
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_22C90F800;
        v81 = *MEMORY[0x277D1E020];
        v82 = sub_22C3FCD8C();
        v83(v82);
        sub_22C90749C();
        return v55;
      }

      v93 = v47[1];
    }

    else
    {
      if (v48 == *MEMORY[0x277D42DC0])
      {
        (*(v41 + 96))(v47, v38);
        v85 = v102;
        v84 = v103;
        (*(v102 + 32))(v37, v47, v103);
        sub_22C3A5908(&qword_27D9BBCF0, &unk_22C91DC20);
        v86 = *(*(sub_22C9074AC() - 8) + 72);
        sub_22C3FCD74();
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_22C90F800;
        sub_22C3FCD08(&qword_27D9BBCF8, MEMORY[0x277D0E660]);
        v87 = v99;
        v88 = v101;
        sub_22C909D4C();
        if (v1)
        {
          (*(v85 + 8))(v37, v84);
          *(v55 + 16) = 0;
        }

        else
        {
          sub_22C9043CC();
          (*(v98 + 8))(v87, v88);
          v94 = *MEMORY[0x277D1E018];
          v95 = sub_22C3FCD8C();
          v96(v95);
          sub_22C90749C();
          (*(v85 + 8))(v37, v84);
        }

        return v55;
      }

      (*(v41 + 8))(v47, v38);
    }

    return MEMORY[0x277D84F90];
  }

  v109 = v1;
  v49 = *(v41 + 96);
  v104 = v38;
  v49(v47, v38);
  v50 = v100;
  v51 = *(v100 + 32);
  v99 = v10;
  v51(v17, v47, v10);
  v98 = v17;
  result = sub_22C909D1C();
  v53 = result;
  v54 = 0;
  v105 = *(result + 16);
  v101 = v5 + 16;
  v102 = v41 + 8;
  v103 = v5 + 8;
  v55 = MEMORY[0x277D84F90];
  v56 = v5;
  while (1)
  {
    v57 = v106;
    v58 = v108;
    if (v105 == v54)
    {
      (*(v50 + 8))(v98, v99);

      return v55;
    }

    if (v54 >= *(v53 + 16))
    {
      break;
    }

    v59 = v53;
    (*(v56 + 16))(v107, v53 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v54, v108);
    sub_22C909D7C();
    v60 = v109;
    v61 = sub_22C3FB2B0(v57);
    v109 = v60;
    if (v60)
    {

      v89 = sub_22C37FCC4();
      v90(v89);
      v91 = sub_22C388EA8();
      v92(v91, v58);

      (*(v50 + 8))(v98, v99);
      return v55;
    }

    v62 = v61;
    v63 = sub_22C37FCC4();
    v64(v63);
    v65 = sub_22C388EA8();
    result = v66(v65, v58);
    v67 = *(v62 + 16);
    v68 = *(v55 + 16);
    if (__OFADD__(v68, v67))
    {
      goto LABEL_33;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v68 + v67 > *(v55 + 24) >> 1)
    {
      sub_22C590EF0();
      v55 = v69;
    }

    if (*(v62 + 16))
    {
      v70 = (*(v55 + 24) >> 1) - *(v55 + 16);
      result = sub_22C9074AC();
      v71 = *(result - 8);
      if (v70 < v67)
      {
        goto LABEL_35;
      }

      v72 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v73 = *(v71 + 72);
      swift_arrayInitWithCopy();

      v53 = v59;
      if (v67)
      {
        v74 = *(v55 + 16);
        v75 = __OFADD__(v74, v67);
        v76 = v74 + v67;
        if (v75)
        {
          goto LABEL_36;
        }

        *(v55 + 16) = v76;
      }
    }

    else
    {

      v53 = v59;
      if (v67)
      {
        goto LABEL_34;
      }
    }

    ++v54;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_22C3FBB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = *(*(sub_22C90A17C() - 8) + 64) + 15;
  v8[8] = swift_task_alloc();
  v10 = sub_22C90747C();
  v8[9] = v10;
  v11 = *(v10 - 8);
  v8[10] = v11;
  v12 = *(v11 + 64) + 15;
  v8[11] = swift_task_alloc();
  v13 = sub_22C9063DC();
  v8[12] = v13;
  v14 = *(v13 - 8);
  v8[13] = v14;
  v15 = *(v14 + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3FBCB8, 0, 0);
}

uint64_t sub_22C3FBCB8()
{
  v65 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[11];
    v3 = v0[9];
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[3];

    sub_22C90746C();
    sub_22C900F8C();
    v7 = MEMORY[0x277D1E000];
    sub_22C3FCD08(&qword_27D9BBD10, MEMORY[0x277D1E000]);
    sub_22C3FCD08(&qword_27D9BBD18, v7);

    sub_22C900F7C();

    if (qword_27D9BA5F8 != -1)
    {
      sub_22C3FCD54();
    }

    v0[2] = v1;
    sub_22C3A5908(&qword_27D9BBD20, &qword_22C9116B0);
    sub_22C3FC8B0();
    sub_22C8FFF3C();
    v17 = v0[8];
    sub_22C90A15C();
    sub_22C377B94();
    v18 = sub_22C90A13C();
    if (v19)
    {
      v20 = v19;
      v60 = v18;
      v21 = v0[14];
      v22 = v0[7];
      sub_22C903F7C();

      v23 = sub_22C9063CC();
      v24 = sub_22C90AABC();

      v25 = os_log_type_enabled(v23, v24);
      v26 = v0[13];
      v28 = v0[11];
      v27 = v0[12];
      v61 = v27;
      v62 = v0[14];
      v29 = v0[9];
      v30 = v0[10];
      if (v25)
      {
        v57 = v0[7];
        v59 = v0[9];
        v31 = v0[6];
        v58 = v0[11];
        v32 = swift_slowAlloc();
        v64[0] = swift_slowAlloc();
        *v32 = 136315394;
        *(v32 + 4) = sub_22C36F9F4(v31, v57, v64);
        *(v32 + 12) = 2080;
        v33 = sub_22C36F9F4(v60, v20, v64);

        *(v32 + 14) = v33;
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();
        v34 = sub_22C377B94();
        sub_22C38B120(v34, v35);

        (*(v26 + 8))(v62, v61);
        (*(v30 + 8))(v58, v59);
      }

      else
      {
        v48 = sub_22C377B94();
        sub_22C38B120(v48, v49);

        (*(v26 + 8))(v62, v61);
        (*(v30 + 8))(v28, v29);
      }
    }

    else
    {
      v36 = v0[15];
      sub_22C903F7C();
      v37 = sub_22C9063CC();
      v38 = sub_22C90AADC();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v0[15];
      v42 = v0[12];
      v41 = v0[13];
      v43 = v0[10];
      v44 = v0[11];
      v63 = v0[9];
      if (v39)
      {
        v45 = sub_22C36D240();
        *v45 = 0;
        _os_log_impl(&dword_22C366000, v37, v38, "Couldn't string-encode the structured GMS prompt for logging!", v45, 2u);
        sub_22C3699EC();
      }

      v46 = sub_22C377B94();
      sub_22C38B120(v46, v47);

      (*(v41 + 8))(v40, v42);
      (*(v43 + 8))(v44, v63);
    }
  }

  else
  {
    v8 = v0[16];
    sub_22C903F7C();
    v9 = sub_22C9063CC();
    v10 = sub_22C90AADC();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[16];
    v13 = v0[12];
    v14 = v0[13];
    if (v11)
    {
      *sub_22C36D240() = 0;
      sub_22C369A04(&dword_22C366000, v15, v16, "Couldn't flatten the GMS prompt for logging!");
      sub_22C3699EC();
    }

    (*(v14 + 8))(v12, v13);
  }

  v51 = v0[15];
  v50 = v0[16];
  v52 = v0[14];
  v53 = v0[11];
  v54 = v0[8];

  sub_22C369A24();

  return v55();
}

uint64_t sub_22C3FC224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = *(*(sub_22C90A17C() - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v8 = sub_22C9063DC();
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3FC32C, 0, 0);
}

uint64_t sub_22C3FC32C()
{
  v51 = v0;
  v1 = v0[4];
  if (v1)
  {
    if (v0[6])
    {
      v2 = v0[5];
      v3 = v0[6];
    }

    sub_22C900F8C();
    v0[2] = v1;

    sub_22C3A5908(&qword_27D9BBD38, &qword_22C9116B8);
    sub_22C3FCB78(&qword_27D9BBD68, &qword_27D9BBD70);
    sub_22C3FCB78(&qword_27D9BBD30, &qword_27D9BBD40);
    sub_22C900F7C();

    if (qword_27D9BA5F8 != -1)
    {
      sub_22C3FCD54();
    }

    v0[3] = v1;
    sub_22C8FFF3C();
    v13 = v0[7];
    sub_22C90A15C();
    sub_22C377B94();
    v14 = sub_22C90A13C();
    if (v15)
    {
      v16 = v14;
      v17 = v15;
      v18 = v0[10];
      sub_22C903F7C();

      v19 = sub_22C9063CC();
      v20 = sub_22C90AABC();

      v21 = os_log_type_enabled(v19, v20);
      v23 = v0[9];
      v22 = v0[10];
      v24 = v0[8];
      if (v21)
      {
        v49 = v0[8];
        v25 = sub_22C36FB44();
        v48 = v22;
        v26 = sub_22C370060();
        v50 = v26;
        *v25 = 136315138;
        v27 = sub_22C36F9F4(v16, v17, &v50);

        *(v25 + 4) = v27;
        sub_22C36FF94(v26);
        sub_22C3699EC();
        sub_22C3699EC();
        v28 = sub_22C377B94();
        sub_22C38B120(v28, v29);

        (*(v23 + 8))(v48, v49);
      }

      else
      {

        v40 = sub_22C377B94();
        sub_22C38B120(v40, v41);

        (*(v23 + 8))(v22, v24);
      }
    }

    else
    {
      v30 = v0[11];
      sub_22C903F7C();
      v31 = sub_22C9063CC();
      v32 = sub_22C90AADC();
      v33 = os_log_type_enabled(v31, v32);
      v34 = v0[11];
      v35 = v0[8];
      v36 = v0[9];
      if (v33)
      {
        v37 = sub_22C36D240();
        *v37 = 0;
        _os_log_impl(&dword_22C366000, v31, v32, "Couldn't string-encode the structured GMS prompt for logging!", v37, 2u);
        sub_22C3699EC();
      }

      v38 = sub_22C377B94();
      sub_22C38B120(v38, v39);

      (*(v36 + 8))(v34, v35);
    }
  }

  else
  {
    v4 = v0[12];
    sub_22C903F7C();
    v5 = sub_22C9063CC();
    v6 = sub_22C90AADC();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[12];
    v9 = v0[8];
    v10 = v0[9];
    if (v7)
    {
      *sub_22C36D240() = 0;
      sub_22C369A04(&dword_22C366000, v11, v12, "Couldn't flatten the GMS prompt for logging!");
      sub_22C3699EC();
    }

    (*(v10 + 8))(v8, v9);
  }

  v43 = v0[11];
  v42 = v0[12];
  v44 = v0[10];
  v45 = v0[7];

  sub_22C369A24();

  return v46();
}

uint64_t sub_22C3FC784()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v10 = sub_22C38B7E4(v9);

  return sub_22C3FBB50(v10, v11, v12, v13, v14, v6, v7, v8);
}

uint64_t sub_22C3FC848(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C3FC8B0()
{
  result = qword_27D9BBD28;
  if (!qword_27D9BBD28)
  {
    sub_22C3AC1A0(&qword_27D9BBD20, &qword_22C9116B0);
    sub_22C3FCB78(&qword_27D9BBD30, &qword_27D9BBD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBD28);
  }

  return result;
}

unint64_t sub_22C3FC974()
{
  result = qword_27D9BBD60;
  if (!qword_27D9BBD60)
  {
    sub_22C3AC1A0(&qword_27D9BBD58, &qword_22C9116C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBD60);
  }

  return result;
}

uint64_t sub_22C3FC9D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v8 = sub_22C38B7E4(v7);

  return sub_22C3FC224(v8, v9, v10, v11, v12, v6);
}

uint64_t sub_22C3FCA88()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C3FCB78(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9BBD38, &qword_22C9116B8);
    sub_22C3FCD08(a2, MEMORY[0x277D1E028]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C3FCC54()
{
  result = qword_27D9BBD80;
  if (!qword_27D9BBD80)
  {
    sub_22C3AC1A0(&qword_27D9BBD78, &unk_22C9116E0);
    sub_22C3FCD08(&qword_27D9BBD88, MEMORY[0x277D0E660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBD80);
  }

  return result;
}

uint64_t sub_22C3FCD08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C3FCD54()
{

  return swift_once();
}

uint64_t sub_22C3FCD8C()
{
  v1 = *(*(v0 - 120) + 104);
  result = *(v0 - 112);
  v3 = *(v0 - 72);
  return result;
}

unint64_t sub_22C3FCDA0()
{
  v0 = sub_22C90414C();
  v1 = sub_22C369824(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  if (sub_22C90875C())
  {
    sub_22C90410C();

LABEL_5:
    v4 = sub_22C9040EC();
    v5 = 0;
    return v4 | (v5 << 32);
  }

  sub_22C90874C();
  if ((v7 & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = 0;
  v5 = 1;
  return v4 | (v5 << 32);
}

uint64_t sub_22C3FCEFC()
{
  v0 = sub_22C90035C();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90046C();
  v9 = sub_22C369824(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v23 - v18;
  sub_22C3F0160(v17, qword_27D9E3EA8);
  v26 = sub_22C37AA60(v8, qword_27D9E3EA8);
  sub_22C903F5C();
  v27 = 0x65686361434D4C4CLL;
  v28 = 0xE800000000000000;
  v25 = *MEMORY[0x277CC91D8];
  v24 = *(v3 + 104);
  v24(v7);
  sub_22C3858B4();
  sub_22C90043C();
  v20 = *(v3 + 8);
  v23 = v3 + 8;
  v20(v7, v0);
  v21 = *(v11 + 8);
  v21(v16, v8);
  v27 = 0x6E616C506C6C7546;
  v28 = 0xEB0000000072656ELL;
  (v24)(v7, v25, v0);
  sub_22C90043C();
  v20(v7, v0);
  return (v21)(v19, v8);
}

_BYTE *storeEnumTagSinglePayload for FullPlannerModelClientError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C3FD27C()
{
  v1 = *v0;
  sub_22C90B62C();
  sub_22C38C740(v3, v1);
  return sub_22C90B66C();
}

uint64_t sub_22C3FD2C0(uint64_t a1)
{
  v2 = sub_22C3FD3B4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C3FD2FC(uint64_t a1)
{
  v2 = sub_22C3FD3B4();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_22C3FD360()
{
  result = qword_27D9BBD90;
  if (!qword_27D9BBD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBD90);
  }

  return result;
}

unint64_t sub_22C3FD3B4()
{
  result = qword_27D9BBD98;
  if (!qword_27D9BBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBD98);
  }

  return result;
}

uint64_t sub_22C3FD408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v188 = a5;
  v191 = a4;
  v194 = a2;
  v180 = a1;
  v6 = *(*(sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00) - 8) + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C36D5B4();
  sub_22C3698F8(v8);
  v9 = sub_22C90745C();
  v10 = sub_22C36A7A4(v9, v203);
  v185 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C36D234(&v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v182 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C36D234(&v163 - v17);
  v18 = *(*(sub_22C3A5908(&qword_27D9BBDA0, &qword_22C911840) - 8) + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v19);
  sub_22C36D5B4();
  sub_22C3698F8(v20);
  v21 = sub_22C9073FC();
  v22 = sub_22C36A7A4(v21, v201);
  v176 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C3698A8();
  sub_22C3698F8(v26);
  v27 = sub_22C90741C();
  v28 = sub_22C36A7A4(v27, &v204);
  v181 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C3698A8();
  sub_22C36D234(v32);
  v33 = sub_22C3A5908(&qword_27D9BBDA8, &qword_22C911848);
  sub_22C36A7A4(v33, &v196);
  v165 = v34;
  v36 = *(v35 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v37);
  sub_22C36D5B4();
  sub_22C36D234(v38);
  v39 = sub_22C3A5908(&qword_27D9BBBC0, &qword_22C92C1C0);
  sub_22C36A7A4(v39, &v199);
  v167 = v40;
  v42 = *(v41 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v43);
  sub_22C36D5B4();
  sub_22C3698F8(v44);
  v45 = sub_22C909D6C();
  v46 = sub_22C36A7A4(v45, &v205);
  v192 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C3698A8();
  sub_22C3698F8(v50);
  v51 = sub_22C90441C();
  v52 = sub_22C36A7A4(v51, v200);
  v174 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22C3698A8();
  sub_22C36D234(v56);
  v197 = 0;
  v57 = type metadata accessor for CompletionPromptProperty(0);
  v58 = sub_22C369824(v57);
  v60 = *(v59 + 64);
  v61 = MEMORY[0x28223BE20](v58);
  v63 = (&v163 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = MEMORY[0x28223BE20](v61);
  v66 = (&v163 - v65);
  v67 = MEMORY[0x28223BE20](v64);
  v169 = &v163 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v72 = &v163 - v71;
  v73 = *(a3 + 16);
  v199 = v69;
  v170 = a3;
  v168 = v70;
  if (v73)
  {
    v74 = a3 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v75 = *(v70 + 72);
    v76 = MEMORY[0x277D84F90];
    v77 = v73;
    v195 = v75;
    do
    {
      sub_22C3E8EF4(v74, v72);
      sub_22C3F02F0(v72, v66);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_22C3E8F58(v66);
      }

      else
      {
        v78 = *v66;
        v79 = v66[1];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v198 = v78;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v83 = *(v76 + 16);
          sub_22C590270();
          v76 = v84;
        }

        v81 = *(v76 + 16);
        if (v81 >= *(v76 + 24) >> 1)
        {
          sub_22C590270();
          v76 = v85;
        }

        *(v76 + 16) = v81 + 1;
        v82 = v76 + 16 * v81;
        *(v82 + 32) = v198;
        *(v82 + 40) = v79;
        v75 = v195;
      }

      v74 += v75;
      --v77;
    }

    while (v77);
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
  }

  v172 = sub_22C3A5968(v76);
  v171 = v86;

  if (v73)
  {
    v87 = v170 + ((*(v168 + 80) + 32) & ~*(v168 + 80));
    v88 = *(v168 + 72);
    v89 = MEMORY[0x277D84F90];
    v90 = v169;
    do
    {
      sub_22C3E8EF4(v87, v90);
      sub_22C3F02F0(v90, v63);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v91 = *v63;
        v92 = v63[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = *(v89 + 16);
          sub_22C590270();
          v89 = v96;
        }

        v93 = *(v89 + 16);
        if (v93 >= *(v89 + 24) >> 1)
        {
          sub_22C590270();
          v89 = v97;
        }

        *(v89 + 16) = v93 + 1;
        v94 = v89 + 16 * v93;
        *(v94 + 32) = v91;
        *(v94 + 40) = v92;
      }

      else
      {
        sub_22C3E8F58(v63);
      }

      v87 += v88;
      --v73;
    }

    while (v73);
  }

  else
  {
    v89 = MEMORY[0x277D84F90];
  }

  v170 = sub_22C3A5968(v89);
  v169 = v98;

  sub_22C3A5908(&qword_27D9BBD08, &qword_22C911698);
  v99 = v194;
  result = sub_22C90B1CC();
  v198 = result;
  v101 = 0;
  v104 = *(v99 + 64);
  v103 = v99 + 64;
  v102 = v104;
  v105 = 1 << *(v103 - 32);
  v106 = -1;
  if (v105 < 64)
  {
    v106 = ~(-1 << v105);
  }

  v107 = v106 & v102;
  v108 = (v105 + 63) >> 6;
  v195 = (v192 + 8);
  v192 = result + 64;
  if ((v106 & v102) == 0)
  {
LABEL_29:
    v110 = v101;
    while (1)
    {
      v101 = v110 + 1;
      if (__OFADD__(v110, 1))
      {
        __break(1u);
        goto LABEL_57;
      }

      if (v101 >= v108)
      {
        break;
      }

      v111 = *(v103 + 8 * v101);
      ++v110;
      if (v111)
      {
        v109 = __clz(__rbit64(v111));
        v107 = (v111 - 1) & v111;
        goto LABEL_34;
      }
    }

    v126 = v173;
    sub_22C90443C();
    v127 = v174;
    v128 = v175;
    v129 = (*(v174 + 88))(v126, v175);
    if (v129 == *MEMORY[0x277D0E688])
    {
      (*(v127 + 96))(v126, v128);
      v130 = v167;
      v131 = *(v167 + 32);
      v132 = v166;
      v133 = v166;
      v134 = v126;
      v135 = &v199;
    }

    else
    {
      if (v129 != *MEMORY[0x277D0E690])
      {
        (*(v127 + 8))(v126, v128);
        goto LABEL_46;
      }

      (*(v127 + 96))(v126, v128);
      v130 = v165;
      v131 = *(v165 + 32);
      v132 = v164;
      v133 = v164;
      v134 = v126;
      v135 = &v196;
    }

    v136 = *(v135 - 32);
    v131(v133, v134, v136);
    sub_22C90126C();
    (*(v130 + 8))(v132, v136);
LABEL_46:
    sub_22C90440C();
    (*(v176 + 104))(v178, *MEMORY[0x277D1DFE0], v177);
    v137 = *MEMORY[0x277D1DFE8];
    v138 = sub_22C90742C();
    v139 = v179;
    (*(*(v138 - 8) + 104))(v179, v137, v138);
    sub_22C36C640(v139, 0, 1, v138);
    sub_22C3A5908(&qword_27D9BAB38, &qword_22C92C1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F870;
    *(inited + 32) = 0x6574616C706D6574;
    *(inited + 40) = 0xEF746E65746E6F43;
    v141 = sub_22C9043FC();
    if (v142)
    {
      v143 = v141;
    }

    else
    {
      v143 = 0;
    }

    v144 = 0xE000000000000000;
    if (v142)
    {
      v145 = v142;
    }

    else
    {
      v145 = 0xE000000000000000;
    }

    *(inited + 48) = v143;
    *(inited + 56) = v145;
    strcpy((inited + 64), "interactionId");
    *(inited + 78) = -4864;
    v146 = v188;
    v147 = v191;
    if (v188)
    {
      v144 = v188;
    }

    else
    {
      v147 = 0;
    }

    *(inited + 80) = v147;
    *(inited + 88) = v144;

    sub_22C909F0C();
    v148 = v189;
    sub_22C90740C();
    sub_22C3A5908(&qword_27D9BBDB0, &qword_22C911850);
    v149 = v181;
    v150 = *(v181 + 72);
    v151 = (*(v181 + 80) + 32) & ~*(v181 + 80);
    v152 = swift_allocObject();
    *(v152 + 16) = xmmword_22C90F800;
    (*(v149 + 16))(v152 + v151, v148, v190);
    v153 = v184;
    sub_22C90743C();
    v154 = v187;
    sub_22C90A73C();
    v155 = sub_22C90A75C();
    sub_22C36C640(v154, 0, 1, v155);
    v156 = v185;
    v157 = v183;
    v158 = v186;
    (*(v185 + 16))(v183, v153, v186);
    v159 = (*(v156 + 80) + 32) & ~*(v156 + 80);
    v160 = (v182 + v159 + 7) & 0xFFFFFFFFFFFFFFF8;
    v161 = swift_allocObject();
    *(v161 + 16) = 0;
    *(v161 + 24) = 0;
    (*(v156 + 32))(v161 + v159, v157, v158);
    v162 = (v161 + v160);
    *v162 = v191;
    v162[1] = v146;

    sub_22C59D038(0, 0, v154, &unk_22C911860, v161);

    sub_22C3FC848(v154);
    (*(v156 + 8))(v153, v158);
    return (*(v149 + 8))(v189, v190);
  }

  while (1)
  {
    v109 = __clz(__rbit64(v107));
    v107 &= v107 - 1;
LABEL_34:
    v112 = v109 | (v101 << 6);
    v113 = *(v194 + 56);
    v114 = (*(v194 + 48) + 16 * v112);
    v115 = v114[1];
    v199 = *v114;
    sub_22C378A4C(v113 + 40 * v112, v202);
    sub_22C374168(v202, v202[3]);

    v116 = v196;
    sub_22C909DBC();
    v117 = v116;
    v118 = v197;
    v119 = sub_22C3FB2B0(v117);
    if (v118)
    {

      v197 = 0;
      v120 = MEMORY[0x277D84F90];
    }

    else
    {
      v120 = v119;
      v197 = 0;
    }

    v121 = v198;
    (*v195)(v196, v193);
    result = sub_22C36FF94(v202);
    *(v192 + ((v112 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v112;
    v122 = (v121[6] + 16 * v112);
    *v122 = v199;
    v122[1] = v115;
    *(v121[7] + 8 * v112) = v120;
    v123 = v121[2];
    v124 = __OFADD__(v123, 1);
    v125 = v123 + 1;
    if (v124)
    {
      break;
    }

    v121[2] = v125;
    if (!v107)
    {
      goto LABEL_29;
    }
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_22C3FE290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_22C9063DC();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v10 = sub_22C90363C();
  v6[9] = v10;
  v11 = *(v10 - 8);
  v6[10] = v11;
  v12 = *(v11 + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3FE3BC, 0, 0);
}

uint64_t sub_22C3FE3BC()
{
  v37 = v0;
  v1 = v0[2];
  v2 = sub_22C90744C();
  v3 = v0[11];
  v4 = v2;
  v6 = v5;
  v7 = v0[9];
  v8 = v0[10];
  (*(v8 + 104))(v3, *MEMORY[0x277D1EC40], v7);
  v9 = sub_22C90362C();
  (*(v8 + 8))(v3, v7);
  if (v9)
  {
    v10 = v0[8];
    sub_22C903F7C();

    v11 = sub_22C9063CC();
    v12 = sub_22C90AABC();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[8];
    v15 = v0[5];
    v16 = v0[6];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36 = v18;
      *v17 = 136380675;
      v19 = sub_22C36F9F4(v4, v6, &v36);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_22C366000, v11, v12, "AutomationJSON for replay:\n%{private}s", v17, 0xCu);
      sub_22C36FF94(v18);
      MEMORY[0x2318B9880](v18, -1, -1);
      MEMORY[0x2318B9880](v17, -1, -1);
    }

    else
    {
    }

    (*(v16 + 8))(v14, v15);
  }

  else
  {
    v20 = v0[7];

    sub_22C903F7C();
    v21 = sub_22C9063CC();
    v22 = sub_22C90AABC();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[6];
    v24 = v0[7];
    v26 = v0[5];
    if (v23)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22C366000, v21, v22, "AutomationJSON logging disabled due to redaction policy.", v27, 2u);
      MEMORY[0x2318B9880](v27, -1, -1);
    }

    (*(v25 + 8))(v24, v26);
  }

  v28 = v0[11];
  v34 = v0[8];
  v35 = v0[7];
  v29 = v0[2];
  if (v0[4])
  {
    v30 = v0[3];
    v31 = v0[4];
  }

  sub_22C900F8C();
  sub_22C90745C();
  sub_22C3FE878(&qword_27D9BBDB8);
  sub_22C3FE878(qword_27D9BBDC0);

  sub_22C900F7C();

  v32 = v0[1];

  return v32();
}

uint64_t sub_22C3FE748(uint64_t a1)
{
  v4 = *(sub_22C90745C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22C3B00E8;

  return sub_22C3FE290(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_22C3FE878(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22C90745C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C3FE8BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for FullPlannerPreferences();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  FullPlannerPreferences.init()(v8);
  v9 = sub_22C4DE310();
  if (v2)
  {
    return sub_22C3FEA64(v8);
  }

  v11 = off_278729438[v9];
  v12 = off_278729468[v9];
  v13 = *(&off_278729498 + v9);
  v14 = type metadata accessor for ToolFetcher(0);
  a2[3] = v14;
  a2[4] = &off_283FB6BE0;
  v15 = sub_22C36D548(a2);
  v15[3] = v11;
  v15[4] = v12;
  v16 = swift_allocObject();
  *v15 = v16;
  v17 = type metadata accessor for AppNameRenderer_v1_0(0);
  v16[5] = v17;
  v16[6] = &off_283FB8878;
  v18 = sub_22C36D548(v16 + 2);
  sub_22C9006AC();
  sub_22C3E17AC(v8, v18 + *(v17 + 20));
  v19 = *(v14 + 20);
  v20 = sub_22C908AEC();
  return (*(*(v20 - 8) + 16))(v15 + v19, a1, v20);
}

uint64_t sub_22C3FEA64(uint64_t a1)
{
  v2 = type metadata accessor for FullPlannerPreferences();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C3FEAC0()
{
  v0 = 0;
  v3 = MEMORY[0x277D84F98];
  while (v0 != 5)
  {
    v2 = byte_283FAF020[v0 + 32];
    result = sub_22C3FEB54(&v3, &v2);
    ++v0;
  }

  qword_2814335C8 = v3;
  return result;
}

uint64_t sub_22C3FEB54(uint64_t *a1, char *a2)
{
  v3 = *a2;
  sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C90FB40;
  *(v4 + 32) = 0x6E655F6E7275743CLL;
  *(v4 + 40) = 0xEB00000000203E64;
  *(v4 + 48) = sub_22C45CFCC(v3);
  *(v4 + 56) = v5;
  *(v4 + 64) = 4091452;
  *(v4 + 72) = 0xE300000000000000;
  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C3F035C();
  sub_22C90A04C();

  v6 = *a1;
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *a1;
  sub_22C62C7D4();

  *a1 = v11;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22C90D070;
  *(v7 + 32) = 0x6E655F6E7275743CLL;
  *(v7 + 40) = 0xEA00000000003E64;
  strcpy((v7 + 48), "<turn_start> ");
  *(v7 + 62) = -4864;
  *(v7 + 64) = sub_22C45CFCC(v3);
  *(v7 + 72) = v8;
  *(v7 + 80) = 4091452;
  *(v7 + 88) = 0xE300000000000000;
  sub_22C90A04C();

  v9 = *a1;
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *a1;
  sub_22C62C7D4();

  *a1 = v12;
  return result;
}

unint64_t sub_22C3FED78(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  sub_22C3A5908(&qword_27D9BBF48, qword_22C911948);
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = a2;
  v34 = inited;
  v35 = 15;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_22:

    v24 = sub_22C90A43C();

    if (v24)
    {
      v25 = sub_22C90A30C();
      sub_22C3FF5F8(v25);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C36A7BC();
      v10 = v32;
    }

    v26 = *(v10 + 16);
    if (v26 >= *(v10 + 24) >> 1)
    {
      sub_22C592574();
      v10 = v33;
    }

    *(v10 + 16) = v26 + 1;
    v27 = v10 + 24 * v26;
    *(v27 + 32) = 0;
    *(v27 + 40) = 0xE000000000000000;
    *(v27 + 48) = 1;

    return v10;
  }

  v36 = v4;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = sub_22C3FF11C(&v34, a3);
    if (!v12)
    {
      break;
    }

    v13 = v11;
    v14 = v12;
    if (qword_2814335C0 != -1)
    {
      swift_once();
    }

    v15 = sub_22C605514(v13, v14, qword_2814335C8);

    if (v15 == 5)
    {

      v28 = 0;
      goto LABEL_31;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C36A7BC();
      v10 = v22;
    }

    v16 = *(v10 + 16);
    if (v16 >= *(v10 + 24) >> 1)
    {
      sub_22C592574();
      v10 = v23;
    }

    *(v10 + 16) = v16 + 1;
    v17 = v10 + 24 * v16;
    *(v17 + 32) = v15;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
LABEL_17:
    v20 = *(inited + 24);
    v21 = *(inited + 16) & 0xFFFFFFFFFFFFLL;
    if ((v20 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v20) & 0xF;
    }

    if (v35 >> 14 >= 4 * v21)
    {
      goto LABEL_22;
    }
  }

  v18 = sub_22C3FF360();
  if (v19)
  {
    MEMORY[0x2318B7840](v18);

    goto LABEL_17;
  }

  v28 = 3;
  v10 = 0xE000000000000000;
LABEL_31:

  sub_22C3FF9F8();
  swift_allocError();
  *v29 = v28;
  swift_willThrow();
  swift_setDeallocating();
  v30 = *(inited + 24);

  return v10;
}

uint64_t sub_22C3FF11C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];

  v6 = v5;
  while (!a2[4])
  {
    v7 = *(v4 + 24);
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = *(v4 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (v6 >> 14 == 4 * v8)
    {

      goto LABEL_18;
    }

    v9 = sub_22C90A46C();
    v11 = v10;

    v12 = *(v4 + 16);
    v13 = *(v4 + 24);

    v6 = sub_22C90A31C();

    v14 = a2[2];
    if (!*(v14 + 16) || (v15 = sub_22C628790(v9, v11), (v16 & 1) == 0))
    {

LABEL_18:

      return 0;
    }

    v17 = *(*(v14 + 56) + 8 * v15);

    a2 = v17;
  }

  v18 = a2[3];
  v25 = a2[4];
  swift_bridgeObjectRetain_n();
  while (1)
  {
    sub_22C90A3AC();
    if (!v19)
    {
      break;
    }

    v20 = *(v4 + 24);
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = *(v4 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (v5 >> 14 != 4 * v21)
    {

      sub_22C90A46C();

      v22 = *(v4 + 16);
      v23 = *(v4 + 24);

      v5 = sub_22C90A31C();

      a1[1] = v5;
    }
  }

  return v18;
}

uint64_t sub_22C3FF360()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *(*v0 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v0[1] >> 14 == 4 * v3)
  {
    return 0;
  }

  v5 = *v0;

  v4 = sub_22C90A46C();

  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  v8 = sub_22C90A31C();

  v0[1] = v8;
  return v4;
}

uint64_t sub_22C3FF430(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      v8 = 0x6D6574737973;
      v9 = 0xE600000000000000;
      v10 = a1;
      v11 = 0x6D6574737973;
      switch(v10)
      {
        case 1:
          v11 = 0x6E61747369737361;
          v9 = 0xE900000000000074;
          break;
        case 2:
          v9 = 0xE400000000000000;
          v11 = 1919251317;
          break;
        case 3:
          v11 = 0x746C75736572;
          break;
        case 4:
          v9 = 0xE400000000000000;
          v11 = 1819242356;
          break;
        default:
          break;
      }

      v12 = 0xE600000000000000;
      switch(a4)
      {
        case 1:
          v8 = 0x6E61747369737361;
          v12 = 0xE900000000000074;
          break;
        case 2:
          v12 = 0xE400000000000000;
          v8 = 1919251317;
          break;
        case 3:
          v8 = 0x746C75736572;
          break;
        case 4:
          v12 = 0xE400000000000000;
          v8 = 1819242356;
          break;
        default:
          break;
      }

      if (v11 != v8 || v9 != v12)
      {
        v14 = sub_22C90B4FC();

        return v14 & 1;
      }

      return 1;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_22C90B4FC();
}

uint64_t sub_22C3FF5F8(uint64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v1[1];
      if ((v2 & 0x2000000000000000) != 0)
      {
        v3 = HIBYTE(v2) & 0xF;
      }

      else
      {
        v3 = *v1 & 0xFFFFFFFFFFFFLL;
      }

      *v1;
      v4 = sub_22C90A33C();
      if (v5)
      {
        goto LABEL_14;
      }

      if (4 * v3 >= v4 >> 14)
      {

        return MEMORY[0x2821FBD18]();
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBD18]();
  }

  return result;
}

uint64_t sub_22C3FF6C4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_22C90AC6C();
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

char *sub_22C3FF768()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(*v0 + 112);
  v4 = *(v1 + 80);
  v5 = sub_22C90AC6C();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  return v0;
}

uint64_t sub_22C3FF7FC()
{
  sub_22C3FF768();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22C3FF86C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

uint64_t sub_22C3FF970()
{
  sub_22C3FF900();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_22C3FF9F8()
{
  result = qword_27D9BBF50[0];
  if (!qword_27D9BBF50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D9BBF50);
  }

  return result;
}

uint64_t sub_22C3FFA58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C3FFA98(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22C3FFB08()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *storeEnumTagSinglePayload for FullPlannerResponseParsingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C3FFCA8()
{
  result = qword_27D9BBFD8;
  if (!qword_27D9BBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBFD8);
  }

  return result;
}

uint64_t sub_22C3FFCFC(uint64_t a1)
{
  v2 = sub_22C3FFD74();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C3FFD38(uint64_t a1)
{
  v2 = sub_22C3FFD74();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_22C3FFD74()
{
  result = qword_27D9BBFE0;
  if (!qword_27D9BBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBFE0);
  }

  return result;
}

unint64_t sub_22C3FFDDC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_22C9063DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22C3FED78(a1, a2, a3);
  if (!v4)
  {
    v15 = result;
    v16 = sub_22C3A5BD0(result);
    if (v18 == -1 || (v19 = v18, (v18 & 1) == 0))
    {

      sub_22C3FF9F8();
      swift_allocError();
      v31 = 1;
LABEL_9:
      *v30 = v31;
      return swift_willThrow();
    }

    v20 = v16;
    v48 = v17;
    v42 = a4;
    if (*(v15 + 16) < 2uLL)
    {
    }

    else
    {
      v21 = sub_22C46BD18(1, v15);
      sub_22C3A5C2C(v21, v22, v23, v24);
      v40 = v26;
      v41 = v25;
      v28 = v27;
      v29 = ~v27;
      swift_unknownObjectRelease();
      if (!v29)
      {
LABEL_16:
        sub_22C40016C(v20, v48, v19);
        sub_22C3FF9F8();
        swift_allocError();
        v31 = 2;
        goto LABEL_9;
      }

      if (v28)
      {
        sub_22C40016C(v41, v40, v28);
        goto LABEL_16;
      }

      if (v41 != 1)
      {
        goto LABEL_16;
      }
    }

    v32 = v48;
    v47[0] = v20;
    v47[1] = v48;
    v45 = 4091452;
    v46 = 0xE300000000000000;
    v43 = 10;
    v44 = 0xE100000000000000;
    sub_22C3858B4();
    v41 = sub_22C90AD4C();
    v34 = v33;
    sub_22C40016C(v20, v32, v19);
    sub_22C903F7C();

    v35 = sub_22C9063CC();
    v36 = sub_22C90AACC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v47[0] = v38;
      *v37 = 136380675;
      *(v37 + 4) = sub_22C36F9F4(v41, v34, v47);
      _os_log_impl(&dword_22C366000, v35, v36, "Model response, parsed for role-content pairs, and newline formatting, follows on next line:\n%{private}s", v37, 0xCu);
      sub_22C36FF94(v38);
      MEMORY[0x2318B9880](v38, -1, -1);
      MEMORY[0x2318B9880](v37, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    sub_22C90870C();
  }

  return result;
}

uint64_t sub_22C40016C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22C400184(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_22C400184(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22C400194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = sub_22C9070DC();
  v5 = *(v73 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v73);
  v72 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22C3A5908(&qword_27D9BC018, &qword_22C911CA8);
  v8 = *(*(v62 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v62);
  v61 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = v48 - v11;
  v59 = sub_22C3A5908(&qword_27D9BC020, &unk_22C911CB0);
  v12 = *(*(v59 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v59);
  v58 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v57 = v48 - v16;
  MEMORY[0x28223BE20](v15);
  v56 = v48 - v17;
  v18 = *(a3 + 16);
  v74 = MEMORY[0x277D84F90];
  sub_22C3B6D88();
  v19 = v74;
  v55 = v18;
  if (!v18)
  {
    return v19;
  }

  result = sub_22C901FAC();
  v21 = 0;
  v71 = result;
  v22 = *(result - 8);
  v51 = a2 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v50 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v49 = a3 + v50;
  v54 = *(a2 + 16);
  v48[3] = v22 + 16;
  v70 = v5 + 16;
  v52 = v22;
  v48[2] = v22 + 32;
  v53 = v5;
  v69 = v5 + 32;
  while (v54 != v21)
  {
    v23 = v62;
    v24 = *(v62 + 48);
    v25 = v52;
    v26 = v51 + *(v52 + 72) * v21;
    v27 = *(v52 + 16);
    v68 = v19;
    v28 = v60;
    v29 = v71;
    v27(v60, v26, v71);
    v67 = *(v5 + 72);
    v65 = *(v5 + 16);
    v30 = &v28[v24];
    v31 = v73;
    v65(v30, v49 + v67 * v21, v73);
    v32 = v61;
    sub_22C407C2C();
    v33 = *(v23 + 48);
    v34 = v59;
    v66 = v21;
    v35 = *(v59 + 48);
    v36 = *(v25 + 32);
    v63 = v33;
    v64 = v36;
    v37 = v56;
    v36(v56, v32, v29);
    v38 = *(v5 + 32);
    v39 = v37 + v35;
    v40 = v31;
    v41 = v72;
    v38(v39, &v32[v63], v31);
    v42 = v57;
    sub_22C3A7214();
    v43 = *(v34 + 48);
    v44 = v58;
    v64(v58, v42, v71);
    v38(&v44[v43], &v42[v43], v40);
    v65(v41, &v44[v43], v40);
    v45 = v44;
    v19 = v68;
    sub_22C36DD28(v45, &qword_27D9BC020, &unk_22C911CB0);
    sub_22C36DD28(v37, &qword_27D9BC020, &unk_22C911CB0);
    v74 = v19;
    v46 = *(v19 + 16);
    if (v46 >= *(v19 + 24) >> 1)
    {
      sub_22C3B6D88();
      v19 = v74;
    }

    v47 = v67;
    v21 = v66 + 1;
    *(v19 + 16) = v46 + 1;
    result = (v38)(v19 + v50 + v46 * v47, v72, v73);
    v5 = v53;
    if (v55 == v21)
    {
      return v19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C4006B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v282 = a2;
  v296 = a1;
  v5 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v7);
  v9 = (&v278 - v8);
  v10 = sub_22C9070DC();
  v11 = sub_22C369824(v10);
  v309 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA64();
  v288 = v19;
  v316 = sub_22C3A5908(&qword_27D9BBFE8, &qword_22C911C48);
  v20 = sub_22C36985C(v316);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C3698E4();
  v315 = v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA64();
  v321 = v25;
  v26 = sub_22C3A5908(&qword_27D9BBFF0, &unk_22C911C50);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA64();
  v328 = v31;
  sub_22C36BA0C();
  v327 = sub_22C901FAC();
  v32 = sub_22C369824(v327);
  v322 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA58();
  v318 = v37;
  sub_22C369930();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA64();
  KeyPath = v40;
  sub_22C36BA0C();
  v299 = sub_22C906ECC();
  v41 = sub_22C369824(v299);
  v279 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v298 = (&v278 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22C36BA0C();
  v324 = sub_22C9089DC();
  v46 = sub_22C369824(v324);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  v53 = &v278 - v52;
  v326 = sub_22C9088CC();
  v54 = sub_22C369824(v326);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22C3698E4();
  v314 = v59;
  sub_22C369930();
  MEMORY[0x28223BE20](v60);
  sub_22C36BA64();
  v301 = v61;
  sub_22C36BA0C();
  v62 = sub_22C908A0C();
  v63 = sub_22C369824(v62);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22C3698E4();
  v319 = v68;
  sub_22C369930();
  MEMORY[0x28223BE20](v69);
  sub_22C37FCD8();
  v291 = a3;
  v70 = sub_22C9087DC();
  v71 = v56;
  v72 = *(v70 + 16);
  v325 = v10;
  v320 = v9;
  v323 = v62;
  v302 = v65;
  v295 = v71;
  v289 = v48;
  if (v72)
  {
    v307 = *(v65 + 16);
    v73 = *(v65 + 80);
    sub_22C36BA94();
    v284 = v74;
    v76 = v74 + v75;
    v306 = *(v77 + 56);
    v308 = v77;
    v305 = v77 - 8;
    v78 = (v48 + 88);
    LODWORD(v304) = *MEMORY[0x277D1E6F8];
    v293 = v48 + 8;
    v292 = v48 + 96;
    v303 = (v79 + 32);
    v80 = MEMORY[0x277D84F90];
    do
    {
      (v307)(v3, v76, v62);
      sub_22C9089EC();
      sub_22C388574();
      v81(v3, v62);
      v82 = v324;
      v83 = (*v78)(v53, v324);
      if (v83 == v304)
      {
        sub_22C36BA4C(&v324);
        v84(v53, v82);
        v85 = *v303;
        (*v303)(v314, v53, v326);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v86 = v80;
        }

        else
        {
          v93 = *(v80 + 16);
          sub_22C36D270();
          sub_22C5925A4();
          v86 = v94;
        }

        v87 = *(v86 + 16);
        if (v87 >= *(v86 + 24) >> 1)
        {
          sub_22C5925A4();
          v86 = v95;
        }

        *(v86 + 16) = v87 + 1;
        sub_22C37054C();
        v80 = v88;
        v85(v88 + v89 + *(v90 + 72) * v87, v314, v326);
        v62 = v323;
      }

      else
      {
        sub_22C36BA4C(&v325);
        v91(v53, v82);
      }

      sub_22C37B968();
      v76 += v92;
      --v72;
    }

    while (v72);

    v96 = v80;
  }

  else
  {

    v96 = MEMORY[0x277D84F90];
  }

  v97 = *(v96 + 16);
  if (v97)
  {
    v314 = *(v295 + 16);
    v98 = *(v295 + 80);
    sub_22C36BA94();
    v307 = v100;
    v102 = v100 + v101;
    v308 = *(v99 + 56);
    v103 = (v99 - 8);
    v104 = MEMORY[0x277D84F90];
    while (1)
    {
      v105 = v301;
      v106 = v326;
      v107 = v99;
      (v314)(v301, v102, v326);
      v108 = sub_22C90887C();
      (*v103)(v105, v106);
      v109 = *(v108 + 16);
      v110 = *(v104 + 16);
      if (__OFADD__(v110, v109))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v110 + v109 > *(v104 + 24) >> 1)
      {
        sub_22C5916E4();
        v104 = v111;
      }

      if (*(v108 + 16))
      {
        if ((*(v104 + 24) >> 1) - *(v104 + 16) < v109)
        {
          goto LABEL_91;
        }

        v112 = (*(v309 + 80) + 32) & ~*(v309 + 80);
        v113 = *(v309 + 72);
        swift_arrayInitWithCopy();

        v99 = v107;
        if (v109)
        {
          v114 = *(v104 + 16);
          v115 = __OFADD__(v114, v109);
          v116 = v114 + v109;
          if (v115)
          {
            goto LABEL_93;
          }

          *(v104 + 16) = v116;
        }
      }

      else
      {

        v99 = v107;
        if (v109)
        {
          goto LABEL_84;
        }
      }

      v102 += v308;
      if (!--v97)
      {
        sub_22C37B56C();

        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
  }

  else
  {

    v104 = MEMORY[0x277D84F90];
LABEL_29:
    v332 = v104;

    sub_22C3CD204(v117);

    v118 = v290;
    v119 = sub_22C401F34(v284);
    v120 = sub_22C40235C(v119);

    v280 = sub_22C40292C(v120);
    v283 = v118;

    v326 = *(sub_22C9087DC() + 16);
    if (!v326)
    {
      v126 = MEMORY[0x277D84F98];
      sub_22C370108();
      v146 = v328;
LABEL_47:
      v299 = v126;

      v160 = v283;
      sub_22C4056BC(v284);
      v300 = v161;
      v308 = v162;
      v164 = v163;
      v301 = v160;
      KeyPath = swift_getKeyPath();
      sub_22C406978(MEMORY[0x277D84F90]);
      v303 = v165;
      v166 = 0;
      v332 = v167;
      v333 = v168;
      v314 = (v322 + 16);
      v306 = v164 + 32;
      v307 = v164;
      v319 = *(v164 + 16);
      v326 = (v322 + 32);
      v304 = v309 + 32;
      v305 = v309 + 16;
      v302 = v309 + 8;
      v324 = v322 + 8;
      v169 = &qword_27D9BC000;
      v170 = &qword_22C911C98;
      v171 = v321;
      while (1)
      {
        if (v166 >= v319)
        {
          v186 = sub_22C36CC9C();
          v188 = sub_22C3A5908(v186, v187);
          sub_22C36C640(v120, 1, 1, v188);
          v185 = v327;
        }

        else
        {
          if ((v166 & 0x8000000000000000) != 0)
          {
            goto LABEL_86;
          }

          if (v166 >= *(v308 + 2))
          {
            goto LABEL_87;
          }

          v172 = v316;
          v173 = *(v316 + 48);
          sub_22C37054C();
          v176 = sub_22C407CB4(v175 + v174);
          v177(v176);
          if (v166 >= *(v307 + 16))
          {
            goto LABEL_88;
          }

          sub_22C37B968();
          *(v171 + v173) = *(v178 + 8 * v166);
          sub_22C372124();
          sub_22C407C2C();
          v179 = *(v172 + 48);
          v180 = sub_22C36CC9C();
          v182 = sub_22C3A5908(v180, v181);
          v183 = *(v182 + 48);
          (*v326)(v120, v171, v327);
          v184 = *(v171 + v179);
          v171 = v321;
          *(v120 + v183) = v184;
          v185 = v327;
          sub_22C36C640(v120, 0, 1, v182);
          v146 = v328;
        }

        sub_22C407C2C();
        v189 = sub_22C36CC9C();
        v191 = sub_22C3A5908(v189, v190);
        if (sub_22C370B74(v146, 1, v191) == 1)
        {
          break;
        }

        v323 = v166;
        v192 = v171;
        v193 = v170;
        v194 = v169;
        v195 = *(v191 + 48);
        v196 = v318;
        (*v326)(v318, v328, v185);
        v197 = *(v328 + v195);
        v146 = v328;
        v336 = v197;

        v198 = v320;
        swift_getAtKeyPath();

        if (sub_22C370B74(v198, 1, v325) == 1)
        {
          sub_22C38A894();
          v199(v196, v185);

          sub_22C36DD28(v198, &qword_27D9BAA18, &qword_22C911C40);
          v169 = v194;
          v170 = v193;
          v171 = v192;
          v166 = v323;
        }

        else
        {
          sub_22C407CC8();
          v201 = *v200;
          v202 = v325;
          (*v200)(v288, v198, v325);
          sub_22C405D48(v196);
          sub_22C388574();
          v203(v286, v288, v202);
          v204 = v303;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v330 = v204;
          v298 = v201;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v206 = v204[2];
            sub_22C3B6D88();
            v204 = v330;
          }

          v169 = v194;
          v171 = v192;
          v207 = v204[2];
          v120 = v297;
          v170 = v193;
          v166 = v323;
          if (v207 >= v204[3] >> 1)
          {
            sub_22C3B6D88();
          }

          v208 = v309;
          v209 = *(v309 + 8);
          v210 = sub_22C37F05C();
          v211(v210);
          sub_22C38A894();
          v212(v318, v327);
          v330[2] = (v207 + 1);
          v213 = *(v208 + 80);
          sub_22C36BA94();
          v303 = v214;
          v215 = *(v208 + 72);
          sub_22C407CC8();
          v298();
          v146 = v328;
        }
      }

      sub_22C37B56C();

      v308 = v332;
      v307 = v333;

      v217 = v301;
      sub_22C4056BC(v216);
      v306 = v218;
      v220 = v219;
      v222 = v221;
      v320 = v217;
      v323 = swift_getKeyPath();
      sub_22C406978(MEMORY[0x277D84F90]);
      v330 = v223;
      v331 = v224;
      KeyPath = v225;
      v318 = (v222 + 32);
      v319 = v222;
      v328 = *(v222 + 16);
      while (1)
      {
        if (v328 <= 0)
        {
          sub_22C36C640(v313, 1, 1, v191);
        }

        else
        {
          if (!*(v220 + 16))
          {
            goto LABEL_89;
          }

          v226 = v316;
          v227 = *(v316 + 48);
          sub_22C37054C();
          v229 = sub_22C407CB4(v220 + v228);
          v230(v229);
          if (!*(v319 + 16))
          {
            goto LABEL_90;
          }

          *(v171 + v227) = *v318;
          sub_22C372124();
          sub_22C407C2C();
          v231 = *(v226 + 48);
          v232 = *(v191 + 48);
          v233 = v185;
          v234 = v313;
          (*v326)(v313, v171, v233);
          v235 = *(v171 + v231);
          v171 = v321;
          *(v234 + v232) = v235;
          sub_22C36C640(v234, 0, 1, v191);
        }

        v236 = v312;
        sub_22C407C2C();
        if (sub_22C370B74(v236, 1, v191) == 1)
        {
          break;
        }

        v237 = v171;
        v238 = v220;
        v239 = *(v191 + 48);
        v240 = v327;
        v241 = v311;
        (*v326)(v311, v236, v327);
        v329 = *(v236 + v239);

        v242 = v310;
        swift_getAtKeyPath();

        v243 = v325;
        if (sub_22C370B74(v242, 1, v325) == 1)
        {
          sub_22C38A894();
          v244(v241, v240);

          sub_22C36DD28(v242, &qword_27D9BAA18, &qword_22C911C40);
          v185 = v240;
          v220 = v238;
          v171 = v237;
        }

        else
        {
          sub_22C407CC8();
          v246 = *v245;
          (*v245)(v287, v242, v243);
          sub_22C405D48(v241);
          sub_22C388574();
          v247(v285, v287, v243);
          v248 = KeyPath;
          v249 = swift_isUniquelyReferenced_nonNull_native();
          v336 = v248;
          v301 = v246;
          if ((v249 & 1) == 0)
          {
            v250 = *(v248 + 16);
            sub_22C377BA0();
            sub_22C3B6D88();
            v248 = v336;
          }

          v185 = v327;
          v220 = v238;
          v251 = *(v248 + 16);
          v171 = v237;
          if (v251 >= *(v248 + 24) >> 1)
          {
            sub_22C3B6D88();
          }

          v252 = v309;
          v253 = *(v309 + 8);
          v254 = sub_22C37F05C();
          v255(v254);
          sub_22C38A894();
          v256(v311, v185);
          *(v336 + 16) = v251 + 1;
          v257 = *(v252 + 80);
          sub_22C36BA94();
          KeyPath = v258;
          v259 = *(v252 + 72);
          sub_22C407CC8();
          v301();
        }
      }

      v260 = 0;
      v332 = v330;
      v333 = v331;
      v334 = KeyPath;
      v261 = *(v296 + 16);
      v262 = v282;
      v263 = v281;
      v264 = v325;
      v265 = v280;
      v266 = v299;
      v267 = v302;
      while (v261 != v260)
      {
        sub_22C37054C();
        (*(v269 + 16))(v263, v296 + v268 + *(v269 + 72) * v260, v264);
        v270 = v320;
        v271 = sub_22C403030(v263, v265, v266, &v332);
        if (v270)
        {
          v272 = v271;

          sub_22C406E04();
          swift_allocError();
          *v273 = v272;
          sub_22C37B56C();

          sub_22C379838();

          (*v267)(v263, v264);

          return v272;
        }

        sub_22C403D60(v263, v262, &v332);
        v320 = 0;
        (*v267)(v263, v264);
        ++v260;
      }

      v274 = v334;
      v275 = sub_22C36FBFC();
      v272 = sub_22C400194(v275, v276, v274);

      sub_22C379838();

      sub_22C37B56C();

      return v272;
    }

    v121 = 0;
    sub_22C37054C();
    v314 = (v122 + v123);
    v308 = (v124 + 16);
    v307 = v125 + 88;
    LODWORD(v306) = *MEMORY[0x277D1E798];
    v305 = v124 + 8;
    v303 = (v125 + 8);
    v301 = (v125 + 96);
    v295 = v279 + 32;
    v291 = v322 + 16;
    v290 = v322 + 32;
    v293 = v322 + 8;
    v292 = v279 + 8;
    v126 = MEMORY[0x277D84F98];
    v289 = v322 + 40;
    sub_22C370108();
    v128 = v294;
    v304 = v127;
    while (v121 < *(v127 + 16))
    {
      v129 = v319;
      v130 = v323;
      (*(v302 + 16))(v319, &v314[*(v302 + 72) * v121], v323);
      sub_22C9089EC();
      sub_22C36BA4C(&v337);
      v131 = v324;
      v133 = v132(v128, v324);
      if (v133 == v306)
      {
        sub_22C36BA4C(&v333);
        v134(v128, v131);
        sub_22C36BA4C(&v327);
        v135(v298, v128, v299);
        sub_22C906E1C();
        sub_22C906DFC();
        swift_isUniquelyReferenced_nonNull_native();
        v332 = v126;
        sub_22C628274();
        v138 = *(v126 + 2);
        v139 = (v137 & 1) == 0;
        v120 = v138 + v139;
        if (__OFADD__(v138, v139))
        {
          goto LABEL_92;
        }

        v140 = v136;
        v141 = v137;
        sub_22C3A5908(&qword_27D9BC010, &qword_22C911CA0);
        if (sub_22C90B15C())
        {
          sub_22C628274();
          v120 = v297;
          if ((v141 & 1) != (v143 & 1))
          {
            goto LABEL_95;
          }

          v140 = v142;
        }

        else
        {
          sub_22C370108();
        }

        v126 = v332;
        if (v141)
        {
          v147 = v322;
          v148 = v327;
          (*(v322 + 40))(*(v332 + 7) + *(v322 + 72) * v140, v300, v327);
          (*(v147 + 8))(KeyPath, v148);
          sub_22C36BA4C(&v324);
          v149 = sub_22C407CA0();
          v150(v149);
          sub_22C388574();
          v151(v319, v323);
        }

        else
        {
          *(v332 + (v140 >> 6) + 8) |= 1 << v140;
          v120 = v322;
          v152 = *(v322 + 72) * v140;
          v153 = KeyPath;
          v154 = v327;
          (*(v322 + 16))(*(v126 + 6) + v152, KeyPath, v327);
          (*(v120 + 32))(*(v126 + 7) + v152, v300, v154);
          (*(v120 + 8))(v153, v154);
          sub_22C36BA4C(&v324);
          v155 = sub_22C407CA0();
          v156(v155);
          sub_22C388574();
          v157(v319, v323);
          v158 = *(v126 + 2);
          v115 = __OFADD__(v158, 1);
          v159 = v158 + 1;
          if (v115)
          {
            goto LABEL_94;
          }

          *(v126 + 2) = v159;
          sub_22C370108();
        }

        v146 = v328;
        v128 = v294;
      }

      else
      {
        sub_22C388574();
        v144(v129, v130);
        sub_22C36BA4C(v335);
        v145(v128, v131);
        v146 = v328;
      }

      v127 = v304;
      if (v326 == ++v121)
      {
        goto LABEL_47;
      }
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C401F34(uint64_t a1)
{
  v2 = sub_22C901FAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v52 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22C9070DC();
  v6 = *(*(v51 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v51);
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v37 - v9;
  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  v53 = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  v47 = v13;
  v48 = v12;
  v46 = v13 + 16;
  v49 = (v13 + 32);
  v40 = v3 + 32;
  v41 = v3;
  v39 = (v3 + 8);
  v38 = xmmword_22C90F800;
  v42 = v2;
  v43 = a1;
  while (1)
  {
    if (v48 == v10)
    {

      return v11;
    }

    if (v10 >= *(a1 + 16))
    {
      break;
    }

    v14 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v15 = *(v47 + 72);
    (*(v47 + 16))(v50, a1 + v14 + v15 * v10, v51);
    sub_22C9068FC();
    sub_22C628274();
    v18 = v17;
    v19 = v11[2];
    v20 = (v16 & 1) == 0;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_19;
    }

    v21 = v16;
    if (v11[3] < v19 + v20)
    {
      sub_22C88E1DC();
      v11 = v53;
      sub_22C628274();
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

      v18 = v22;
    }

    if (v21)
    {
      (*v39)(v52, v2);
      v24 = v11[7];
      v25 = *v49;
      (*v49)(v45, v50, v51);
      v26 = *(v24 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v18) = v26;
      v44 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = *(v26 + 16);
        sub_22C5916E4();
        v26 = v34;
        *(v24 + 8 * v18) = v34;
      }

      v28 = *(v26 + 16);
      if (v28 >= *(v26 + 24) >> 1)
      {
        sub_22C5916E4();
        v26 = v35;
        *(v24 + 8 * v18) = v35;
      }

      v2 = v42;
      *(v26 + 16) = v28 + 1;
      v44((v26 + v14 + v28 * v15), v45, v51);
      a1 = v43;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
      v29 = swift_allocObject();
      *(v29 + 16) = v38;
      (*v49)((v29 + v14), v50, v51);
      v11[(v18 >> 6) + 8] |= 1 << v18;
      (*(v41 + 32))(v11[6] + *(v41 + 72) * v18, v52, v2);
      *(v11[7] + 8 * v18) = v29;
      v30 = v11[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_20;
      }

      v11[2] = v32;
    }

    ++v10;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C40235C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v73 = &v61 - v4;
  v75 = sub_22C9070DC();
  v5 = *(v75 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v75);
  v65 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v63 = &v61 - v9;
  v10 = &qword_22C911C98;
  v74 = sub_22C3A5908(&qword_27D9BC000, &qword_22C911C98);
  v11 = *(*(v74 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v74);
  v66 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v72 = &v61 - v15;
  MEMORY[0x28223BE20](v14);
  v71 = &v61 - v16;
  v18 = a1 + 64;
  v17 = *(a1 + 64);
  v67 = MEMORY[0x277D84F98];
  v78 = MEMORY[0x277D84F98];
  v19 = 1 << *(a1 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v17;
  v22 = (v19 + 63) >> 6;
  v62 = v5;
  v64 = (v5 + 32);
  v76 = a1;

  v24 = 0;
  v69 = v22;
  for (i = a1 + 64; ; v18 = i)
  {
    v25 = v24;
    if (!v21)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v26 = v10;
      v24 = v25;
LABEL_11:
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v28 = v27 | (v24 << 6);
      v29 = v76;
      v30 = *(v76 + 48);
      v31 = sub_22C901FAC();
      v68 = *(v31 - 8);
      v32 = *(v68 + 72);
      v33 = v71;
      (*(v68 + 16))(v71, v30 + v32 * v28, v31);
      v34 = v74;
      *&v33[*(v74 + 48)] = *(*(v29 + 56) + 8 * v28);
      v10 = v26;
      v35 = v72;
      sub_22C407C2C();
      v36 = *(v34 + 48);
      swift_getKeyPath();
      v77 = *(v35 + v36);

      v37 = v73;
      swift_getAtKeyPath();

      if (sub_22C370B74(v37, 1, v75) != 1)
      {
        break;
      }

      sub_22C36DD28(v35, &qword_27D9BC000, v10);
      result = sub_22C36DD28(v37, &qword_27D9BAA18, &qword_22C911C40);
      v25 = v24;
      v22 = v69;
      v18 = i;
      if (!v21)
      {
LABEL_7:
        while (1)
        {
          v24 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v24 >= v22)
          {

            return v67;
          }

          v21 = *(v18 + 8 * v24);
          ++v25;
          if (v21)
          {
            v26 = v10;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    v61 = v32;
    v38 = v63;
    v39 = *v64;
    v40 = v37;
    v41 = v75;
    (*v64)(v63, v40, v75);
    sub_22C407C2C();
    v39(v65, v38, v41);
    if (v67[3] <= v67[2])
    {
      sub_22C88DF64();
    }

    v42 = v78;
    v43 = *(v78 + 40);
    sub_22C4075B8();
    v44 = v31;
    result = sub_22C909F7C();
    v45 = v42 + 64;
    v67 = v42;
    v46 = -1 << *(v42 + 32);
    v47 = result & ~v46;
    v48 = v47 >> 6;
    if (((-1 << v47) & ~*(v42 + 64 + 8 * (v47 >> 6))) == 0)
    {
      break;
    }

    v49 = v39;
    v50 = __clz(__rbit64((-1 << v47) & ~*(v42 + 64 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
    v51 = v68;
    v52 = v61;
LABEL_25:
    v57 = *(v74 + 48);
    *(v45 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
    v58 = v67;
    v59 = v66;
    (*(v51 + 32))(v67[6] + v50 * v52, v66, v44);
    v49((v58[7] + *(v62 + 72) * v50), v65, v75);
    ++v58[2];
    v60 = *&v59[v57];

    v22 = v69;
  }

  v53 = 0;
  v54 = (63 - v46) >> 6;
  v51 = v68;
  v52 = v61;
  while (++v48 != v54 || (v53 & 1) == 0)
  {
    v55 = v48 == v54;
    if (v48 == v54)
    {
      v48 = 0;
    }

    v53 |= v55;
    v56 = *(v45 + 8 * v48);
    if (v56 != -1)
    {
      v49 = v39;
      v50 = __clz(__rbit64(~v56)) + (v48 << 6);
      goto LABEL_25;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_22C40292C(uint64_t a1)
{
  v91 = sub_22C90654C();
  v2 = *(v91 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v91 - 8);
  v90 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_22C90832C();
  v5 = *(v76 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v76);
  v75 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v73 = &v68 - v10;
  MEMORY[0x28223BE20](v9);
  v77 = &v68 - v11;
  v92 = sub_22C3A5908(&qword_27D9BC020, &unk_22C911CB0);
  v12 = *(*(v92 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v92);
  v78 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v89 = &v68 - v16;
  MEMORY[0x28223BE20](v15);
  v88 = &v68 - v17;
  v19 = a1 + 64;
  v18 = *(a1 + 64);
  v79 = MEMORY[0x277D84F98];
  v94 = MEMORY[0x277D84F98];
  v20 = 1 << *(a1 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v87 = (v2 + 88);
  v86 = *MEMORY[0x277D1DA48];
  v83 = (v2 + 8);
  v72 = (v2 + 96);
  v71 = v5;
  v74 = (v5 + 32);
  v93 = a1;

  v25 = 0;
  v84 = v23;
  for (i = a1 + 64; ; v19 = i)
  {
    v26 = v25;
    if (!v22)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v25 = v26;
LABEL_10:
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = v27 | (v25 << 6);
      v29 = v93;
      v30 = *(v93 + 48);
      v31 = sub_22C901FAC();
      v82 = *(v31 - 8);
      v81 = *(v82 + 72);
      v32 = v30 + v81 * v28;
      v33 = *(v82 + 16);
      v34 = v88;
      v80 = v31;
      v33(v88, v32);
      v35 = *(v29 + 56);
      v36 = sub_22C9070DC();
      v37 = *(v36 - 8);
      v38 = v35 + *(v37 + 72) * v28;
      v39 = v92;
      (*(v37 + 16))(&v34[*(v92 + 48)], v38, v36);
      v40 = v89;
      sub_22C407C2C();
      v41 = v40 + *(v39 + 48);
      v42 = v90;
      sub_22C90702C();
      v43 = v91;
      v44 = (*v87)(v42, v91);
      if (v44 == v86)
      {
        break;
      }

      (*v83)(v42, v43);
      result = sub_22C36DD28(v40, &qword_27D9BC020, &unk_22C911CB0);
      v26 = v25;
      v23 = v84;
      v19 = i;
      if (!v22)
      {
LABEL_7:
        while (1)
        {
          v25 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v25 >= v23)
          {

            return v79;
          }

          v22 = *(v19 + 8 * v25);
          ++v26;
          if (v22)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    v70 = v37;
    v69 = v36;
    (*v72)(v42, v43);
    v45 = *v74;
    v46 = v73;
    v47 = v42;
    v48 = v76;
    (*v74)(v73, v47, v76);
    v45(v77, v46, v48);
    sub_22C407C2C();
    v68 = v45;
    v45(v75, v77, v48);
    if (v79[3] <= v79[2])
    {
      sub_22C88DCEC();
    }

    v49 = v94;
    v50 = *(v94 + 40);
    sub_22C4075B8();
    v51 = v80;
    result = sub_22C909F7C();
    v52 = v49 + 64;
    v79 = v49;
    v53 = -1 << *(v49 + 32);
    v54 = result & ~v53;
    v55 = v54 >> 6;
    v56 = v69;
    if (((-1 << v54) & ~*(v49 + 64 + 8 * (v54 >> 6))) == 0)
    {
      break;
    }

    v57 = __clz(__rbit64((-1 << v54) & ~*(v49 + 64 + 8 * (v54 >> 6)))) | v54 & 0x7FFFFFFFFFFFFFC0;
    v59 = v81;
    v58 = v82;
    v60 = v70;
LABEL_24:
    v65 = *(v92 + 48);
    *(v52 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
    v66 = v79;
    v67 = v78;
    (*(v58 + 32))(v79[6] + v57 * v59, v78, v51);
    v68((v66[7] + *(v71 + 72) * v57), v75, v76);
    ++v66[2];
    result = (*(v60 + 8))(&v67[v65], v56);
    v23 = v84;
  }

  v61 = 0;
  v62 = (63 - v53) >> 6;
  v59 = v81;
  v58 = v82;
  v60 = v70;
  while (++v55 != v62 || (v61 & 1) == 0)
  {
    v63 = v55 == v62;
    if (v55 == v62)
    {
      v55 = 0;
    }

    v61 |= v63;
    v64 = *(v52 + 8 * v55);
    if (v64 != -1)
    {
      v57 = __clz(__rbit64(~v64)) + (v55 << 6);
      goto LABEL_24;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22C403030(uint64_t a1, char *a2, uint64_t a3, uint64_t *a4)
{
  v126 = a4;
  v131 = a3;
  v132 = a2;
  v4 = sub_22C90827C();
  v5 = *(v4 - 8);
  v135 = v4;
  v136 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v134 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v120 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v125 = &v111 - v12;
  v127 = sub_22C9070DC();
  v123 = *(v127 - 8);
  v13 = *(v123 + 64);
  v14 = MEMORY[0x28223BE20](v127);
  v119 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v124 = &v111 - v16;
  v17 = sub_22C3A5908(&qword_27D9BC038, &unk_22C922590);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v129 = &v111 - v19;
  v137 = sub_22C901FAC();
  v139 = *(v137 - 8);
  v20 = *(v139 + 64);
  v21 = MEMORY[0x28223BE20](v137);
  v130 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v111 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v111 - v26;
  v138 = sub_22C90832C();
  v128 = *(v138 - 8);
  v28 = *(v128 + 64);
  MEMORY[0x28223BE20](v138);
  v133 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22C90654C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v118 = (&v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = MEMORY[0x28223BE20](v33);
  v122 = &v111 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v111 - v37;
  v39 = sub_22C906D7C();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = &v111 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90702C();
  v121 = *(v31 + 88);
  if ((v121)(v38, v30) == *MEMORY[0x277D1DA98])
  {
    v117 = v31 + 88;
    v115 = v31;
    v44 = *(v31 + 96);
    v116 = v30;
    v114 = v31 + 96;
    v113 = v44;
    v44(v38, v30);
    v45 = (*(v40 + 32))(v43, v38, v39);
    MEMORY[0x2318B4220](v45);
    sub_22C4051E0(v25, v131, v27);
    v47 = v139 + 8;
    v46 = *(v139 + 8);
    v48 = v137;
    (v46)(v25, v137);
    v49 = v129;
    sub_22C6055A4(v27, v132);
    v132 = v46;
    (v46)(v27, v48);
    v50 = v138;
    if (sub_22C370B74(v49, 1, v138) == 1)
    {
      (*(v40 + 8))(v43, v39);
      v51 = &qword_27D9BC038;
      v52 = &unk_22C922590;
      v53 = v49;
LABEL_10:
      sub_22C36DD28(v53, v51, v52);
      return 1;
    }

    v139 = v47;
    v111 = v25;
    v112 = v40;
    v131 = v39;
    v54 = v128;
    (*(v128 + 32))(v133, v49, v50);
    v55 = v130;
    v56 = sub_22C906D6C();
    v58 = *v126;
    v57 = v126[1];
    v59 = v126[2];
    MEMORY[0x28223BE20](v56);
    *(&v111 - 4) = v61;
    *(&v111 - 3) = v60;
    *(&v111 - 2) = v55;
    v62 = v141;
    v63 = sub_22C7D5C98(sub_22C407C84, (&v111 - 6), v60);
    v141 = v62;
    v64 = v43;
    if (v65)
    {
      v66 = 1;
      v67 = v127;
      v68 = v131;
      v69 = v112;
      v70 = v125;
    }

    else
    {
      v70 = v125;
      sub_22C4054E8(v63, v59);
      v66 = 0;
      v67 = v127;
      v68 = v131;
      v69 = v112;
    }

    v71 = v137;
    sub_22C36C640(v70, v66, 1, v67);
    (v132)(v130, v71);
    if (sub_22C370B74(v70, 1, v67) == 1)
    {
      (*(v54 + 8))(v133, v138);
      (*(v69 + 8))(v64, v68);
      v51 = &qword_27D9BAA18;
      v52 = &qword_22C911C40;
      v53 = v70;
      goto LABEL_10;
    }

    v132 = v64;
    v74 = v123;
    v73 = v124;
    (*(v123 + 32))(v124, v70, v67);
    v75 = v122;
    sub_22C90702C();
    v76 = v116;
    v77 = (v121)(v75, v116);
    if (v77 == *MEMORY[0x277D1DAA8])
    {
      LODWORD(v130) = v77;
      v113(v75, v76);
      v78 = sub_22C906F2C();
      v79 = *(v78 - 8);
      v80 = (*(v79 + 88))(v75, v78);
      if (v80 == *MEMORY[0x277D1DEF8])
      {
        LODWORD(v117) = v80;
        v121 = v79;
        v81 = *(v79 + 96);
        v125 = v78;
        v81(v75, v78);
        v82 = *v75;
        v83 = v75[1];
        v84 = sub_22C90A27C();
        v129 = v85;

        v86 = sub_22C9082EC();
        v87 = *(v86 + 16);
        if (v87)
        {
          v122 = v84;
          v140[0] = MEMORY[0x277D84F90];
          sub_22C3B5E2C();
          v88 = v140[0];
          v139 = *(v136 + 16);
          v89 = (*(v136 + 80) + 32) & ~*(v136 + 80);
          v114 = v86;
          v90 = v86 + v89;
          v91 = *(v136 + 72);
          v136 += 16;
          v137 = v91;
          v92 = (v136 - 8);
          do
          {
            v93 = v134;
            v94 = v135;
            (v139)(v134, v90, v135);
            v95 = sub_22C90825C();
            v97 = v96;
            (*v92)(v93, v94);
            v140[0] = v88;
            v98 = *(v88 + 16);
            if (v98 >= *(v88 + 24) >> 1)
            {
              sub_22C3B5E2C();
              v88 = v140[0];
            }

            *(v88 + 16) = v98 + 1;
            v99 = v88 + 16 * v98;
            *(v99 + 32) = v95;
            *(v99 + 40) = v97;
            v90 += v137;
            --v87;
          }

          while (v87);

          v67 = v127;
          v54 = v128;
          v84 = v122;
          v74 = v123;
          v69 = v112;
        }

        else
        {

          v88 = MEMORY[0x277D84F90];
        }

        v101 = v129;
        v140[0] = v84;
        v140[1] = v129;
        MEMORY[0x28223BE20](v100);
        *(&v111 - 2) = v140;
        v102 = v141;
        v103 = sub_22C5EC08C(sub_22C3AC11C, (&v111 - 4), v88);
        v141 = v102;

        if (v103)
        {
          v104 = *(v74 + 16);
          v105 = v119;
          v104(v119, v124, v67);
          v106 = v104;
          v107 = v118;
          *v118 = v84;
          v107[1] = v101;
          (*(v121 + 104))(v107, v117, v125);
          (*(v115 + 104))(v107, v130, v116);
          sub_22C90703C();
          v108 = v132;
          sub_22C906D6C();
          v109 = v120;
          v106(v120, v105, v67);
          sub_22C36C640(v109, 0, 1, v67);
          sub_22C7C6728();
          v110 = *(v74 + 8);
          v110(v105, v67);
          v110(v124, v67);
          (*(v128 + 8))(v133, v138);
          (*(v69 + 8))(v108, v131);
        }

        else
        {

          LOBYTE(v140[0]) = 1;
          sub_22C406E04();
          swift_willThrowTypedImpl();
          (*(v74 + 8))(v124, v67);
          (*(v54 + 8))(v133, v138);
          (*(v69 + 8))(v132, v131);
        }
      }

      else
      {
        (*(v74 + 8))(v73, v67);
        (*(v54 + 8))(v133, v138);
        (*(v69 + 8))(v132, v68);
        (*(v79 + 8))(v75, v78);
      }
    }

    else
    {
      (*(v74 + 8))(v73, v67);
      (*(v54 + 8))(v133, v138);
      (*(v69 + 8))(v132, v68);
      (*(v115 + 8))(v75, v76);
    }
  }

  else
  {
    (*(v31 + 8))(v38, v30);
  }

  return 1;
}

uint64_t sub_22C403D60(uint64_t a1, uint64_t a2, void (**a3)(uint64_t *, uint64_t))
{
  v203 = a3;
  v188 = a2;
  v4 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v185 = &v157 - v6;
  v176 = sub_22C9094EC();
  v175 = *(v176 - 8);
  v7 = *(v175 + 64);
  MEMORY[0x28223BE20](v176);
  v174 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_22C90952C();
  v179 = *(v178 - 8);
  v9 = *(v179 + 64);
  MEMORY[0x28223BE20](v178);
  v177 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v184 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v187 = &v157 - v15;
  v192 = sub_22C90941C();
  v190 = *(v192 - 8);
  v16 = *(v190 + 64);
  v17 = MEMORY[0x28223BE20](v192);
  v180 = &v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v191 = &v157 - v19;
  v204 = sub_22C9070DC();
  v200 = *(v204 - 8);
  v20 = v200[8];
  v21 = MEMORY[0x28223BE20](v204);
  v183 = &v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v194 = &v157 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v195 = &v157 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v199 = &v157 - v28;
  MEMORY[0x28223BE20](v27);
  v202 = &v157 - v29;
  v30 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v197 = &v157 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v157 - v34;
  v36 = sub_22C901FAC();
  v206 = *(v36 - 8);
  v37 = v206[8];
  v38 = MEMORY[0x28223BE20](v36);
  v182 = &v157 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v196 = &v157 - v41;
  MEMORY[0x28223BE20](v40);
  v205 = &v157 - v42;
  v43 = sub_22C90654C();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x28223BE20](v43);
  v181 = &v157 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v193 = &v157 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v198 = (&v157 - v51);
  MEMORY[0x28223BE20](v50);
  v53 = &v157 - v52;
  v54 = sub_22C90832C();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  v57 = MEMORY[0x28223BE20](v54);
  v189 = &v157 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v60 = &v157 - v59;
  v186 = a1;
  sub_22C90702C();
  v61 = v43;
  v62 = v44 + 88;
  v201 = *(v44 + 88);
  v63 = v201(v53, v61);
  if (v63 != *MEMORY[0x277D1DA48])
  {
    (*(v44 + 8))(v53, v61);
    return v62;
  }

  v208 = v63;
  v64 = *(v44 + 96);
  v173 = v61;
  v172 = v44 + 96;
  v171 = v64;
  v64(v53, v61);
  v65 = (*(v55 + 32))(v60, v53, v54);
  v66 = MEMORY[0x2318B57A0](v65);
  sub_22C90752C();
  sub_22C6053E0(v66, v35);

  if (sub_22C370B74(v35, 1, v36) == 1)
  {
    (*(v55 + 8))(v60, v54);
    sub_22C36DD28(v35, &qword_27D9BC030, &unk_22C911CC0);
    return v62;
  }

  v167 = v44;
  v168 = v60;
  v169 = v55;
  v170 = v54;
  v69 = v205;
  v68 = v206;
  v70 = v206 + 4;
  v165 = v206[4];
  v71 = v165(v205, v35, v36);
  v73 = *v203;
  v72 = v203[1];
  v74 = v203[2];
  MEMORY[0x28223BE20](v71);
  *(&v157 - 4) = v73;
  *(&v157 - 3) = v72;
  *(&v157 - 2) = v69;
  v75 = v207;
  v76 = sub_22C7D5C98(sub_22C3E33E8, (&v157 - 6), v72);
  v207 = v75;
  if (v77)
  {
    (*(v169 + 8))(v168, v170);
    (v68[1])(v69, v36);
    return v62;
  }

  v164 = v70;
  v166 = v36;
  v78 = v199;
  sub_22C4054E8(v76, v74);
  v79 = v200;
  v80 = v200 + 4;
  v81 = v202;
  v199 = v200[4];
  (v199)(v202, v78, v204);
  v82 = v198;
  sub_22C90702C();
  v83 = v173;
  v84 = v201(v82, v173);
  if (v84 != *MEMORY[0x277D1DAA8])
  {
    (*(v167 + 8))(v82, v83);
    goto LABEL_16;
  }

  v161 = v84;
  v162 = v80;
  v163 = v74;
  v171(v82, v83);
  v85 = sub_22C906F2C();
  v86 = *(v85 - 8);
  v160 = *(v86 + 88);
  if (v160(v82, v85) != *MEMORY[0x277D1DEE8])
  {
    (*(v86 + 8))(v82, v85);
    goto LABEL_16;
  }

  v158 = v86;
  v87 = *(v86 + 96);
  v159 = v85;
  v157 = v87;
  v87(v82, v85);
  v88 = *v82;
  if (*(*v82 + 16) != 1)
  {
    v91 = *v82;

    goto LABEL_16;
  }

  v89 = v197;
  sub_22C58B0E0(v88, v197);

  v90 = v166;
  if (sub_22C370B74(v89, 1, v166) == 1)
  {
    sub_22C36DD28(v89, &qword_27D9BC030, &unk_22C911CC0);
LABEL_16:
    v92 = v204;
    v93 = v206;
LABEL_17:
    v94 = v205;
    v62 = 3;
    v210 = 3;
    sub_22C406E04();
    swift_willThrowTypedImpl();
    (v79[1])(v81, v92);
    (*(v169 + 8))(v168, v170);
    (v93[1])(v94, v166);
    return v62;
  }

  v95 = v196;
  v96 = v165(v196, v89, v90);
  MEMORY[0x28223BE20](v96);
  *(&v157 - 4) = v73;
  *(&v157 - 3) = v72;
  *(&v157 - 2) = v95;
  v97 = v207;
  v98 = sub_22C7D5C98(sub_22C407C84, (&v157 - 6), v72);
  v207 = v97;
  if (v99)
  {
    v93 = v206;
    (v206[1])(v95, v90);
    v92 = v204;
LABEL_27:
    v81 = v202;
    goto LABEL_17;
  }

  v100 = v194;
  sub_22C4054E8(v98, v163);
  v101 = v195;
  v102 = v204;
  (v199)(v195, v100, v204);
  v103 = v193;
  sub_22C90702C();
  v104 = v173;
  v105 = v201(v103, v173);
  if (v105 != v161)
  {
    (v79[1])(v101, v102);
    v93 = v206;
    (v206[1])(v196, v166);
    (*(v167 + 8))(v103, v104);
    v92 = v102;
    goto LABEL_27;
  }

  v171(v103, v104);
  v106 = v159;
  v107 = v160(v103, v159);
  v108 = v196;
  if (v107 != *MEMORY[0x277D1DEF8])
  {
    v92 = v204;
    (v79[1])(v101, v204);
    v93 = v206;
    (v206[1])(v108, v166);
    (*(v158 + 8))(v103, v106);
    goto LABEL_27;
  }

  v157(v103, v106);
  v109 = *v103;
  v110 = v103[1];
  v111 = v187;
  sub_22C6055D0(v188, v187);

  v112 = v192;
  v113 = sub_22C370B74(v111, 1, v192);
  v114 = v204;
  v115 = v202;
  if (v113 == 1)
  {
    sub_22C36DD28(v111, &qword_27D9BC028, &unk_22C9134B0);
    v62 = 4;
    v209 = 4;
    sub_22C406E04();
    swift_willThrowTypedImpl();
    v116 = v79[1];
    v116(v101, v114);
    v116(v115, v114);
    (*(v169 + 8))(v168, v170);
    v117 = v206[1];
    v118 = v166;
    v117(v108, v166);
    v117(v205, v118);
  }

  else
  {
    v119 = v190;
    v120 = v191;
    (*(v190 + 32))(v191, v111, v112);
    v121 = *(v119 + 16);
    v122 = v180;
    v121(v180, v120, v112);
    v123 = (*(v119 + 88))(v122, v112);
    v124 = v169;
    v125 = v112;
    if (v123 == *MEMORY[0x277D72AD0])
    {
      v126 = v123;
      (*(v119 + 96))(v122, v112);
      v127 = *v122;
      v128 = swift_projectBox();
      v129 = v179;
      v130 = v177;
      v131 = v178;
      (*(v179 + 16))(v177, v128, v178);
      if ((*(v129 + 88))(v130, v131) == *MEMORY[0x277D72D50])
      {
        LODWORD(v198) = v126;
        (*(v129 + 96))(v130, v131);
        v132 = *v130;
        v133 = swift_projectBox();
        v201 = v121;
        v134 = v175;
        v135 = v174;
        v136 = v176;
        (*(v175 + 16))(v174, v133, v176);
        LODWORD(v199) = (*(v134 + 88))(v135, v136);
        v137 = *MEMORY[0x277D72CD8];
        (*(v134 + 8))(v135, v136);
        v121 = v201;

        v125 = v192;
        if (v199 == v137)
        {
          v199 = swift_allocBox();
          v139 = v138;
          v140 = swift_allocObject();
          *(v140 + 16) = 0xD00000000000001BLL;
          *(v140 + 24) = 0x800000022C92EBF0;
          v141 = v190;
          v142 = v125;
          v143 = v191;
          (*(v190 + 8))(v191, v142);
          strcpy((v140 + 32), "ContactEntity");
          *(v140 + 46) = -4864;
          *v139 = v140;
          (*(v179 + 104))(v139, *MEMORY[0x277D72D28], v131);
          *v143 = v199;
          v144 = v143;
          v125 = v142;
          (*(v141 + 104))(v144, v198, v142);
        }
      }

      else
      {
        (*(v129 + 8))(v130, v131);
      }
    }

    else
    {
      (*(v119 + 8))(v122, v112);
    }

    v201 = *(v124 + 16);
    v145 = v189;
    v146 = v170;
    (v201)(v189, v168, v170);
    v147 = v184;
    v121(v184, v191, v125);
    sub_22C36C640(v147, 0, 1, v125);
    sub_22C90830C();
    v148 = v200;
    v199 = v200[2];
    v149 = v183;
    v150 = v204;
    (v199)(v183, v186, v204);
    v151 = v181;
    (v201)(v181, v145, v146);
    (*(v167 + 104))(v151, v208, v173);
    sub_22C90703C();
    sub_22C9068FC();
    v152 = v185;
    (v199)(v185, v149, v150);
    sub_22C36C640(v152, 0, 1, v150);
    sub_22C7C6728();
    v153 = v148[1];
    v153(v149, v150);
    v154 = *(v169 + 8);
    v155 = v170;
    v154(v189, v170);
    (*(v190 + 8))(v191, v192);
    v153(v195, v150);
    v153(v202, v150);
    v154(v168, v155);
    v62 = v206[1];
    v156 = v166;
    (v62)(v196, v166);
    (v62)(v205, v156);
  }

  return v62;
}

void sub_22C4051E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C901FAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 16);
  v11(a3, a1, v6);
  while (*(a2 + 16))
  {
    sub_22C628274();
    if ((v13 & 1) == 0)
    {
      break;
    }

    v11(v10, *(a2 + 56) + *(v7 + 72) * v12, v6);
    (*(v7 + 8))(a3, v6);
    (*(v7 + 32))(a3, v10, v6);
  }
}

uint64_t sub_22C40538C(uint64_t a1)
{
  v2 = sub_22C407BD8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C4053C8(uint64_t a1)
{
  v2 = sub_22C407BD8();

  return MEMORY[0x28211F4A8](a1, v2);
}

void sub_22C405404(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22C374A2C(a1, a2);
    if (!v4 & v3)
    {
      v5 = sub_22C36FBFC();
      v7 = sub_22C3A5908(v5, v6);
      sub_22C3699B8(v7);
      v9 = v8;
      v11 = v10;
      v12 = v2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v13 = *(v11 + 72);
      sub_22C3A7214();
      return;
    }
  }

  __break(1u);
}

void sub_22C4054E8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  sub_22C374A2C(a1, a2);
  if (!(!v7 & v6))
  {
    goto LABEL_8;
  }

  v8 = v5(0);
  v9 = sub_22C36985C(v8);
  v11 = *(v10 + 16);
  v12 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v3;

  v11(v2, v12, v9);
}

unint64_t sub_22C405578(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v2 = *(a2 + 8 * result + 32);

    return v2;
  }

  __break(1u);
  return result;
}

void sub_22C4055C0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22C374A2C(a1, a2);
    if (!v4 & v3)
    {
      v5 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
      sub_22C3699B8(v5);
      v7 = v6;
      v9 = v8;
      v10 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v11 = *(v9 + 72);
      sub_22C369BAC();
      sub_22C40799C();
      return;
    }
  }

  __break(1u);
}

unint64_t sub_22C405658()
{
  result = qword_27D9BBFF8;
  if (!qword_27D9BBFF8)
  {
    sub_22C3AC1A0(&qword_27D9BAC38, &qword_22C9190B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBFF8);
  }

  return result;
}

void sub_22C4056BC(uint64_t a1)
{
  v60 = sub_22C901FAC();
  v2 = sub_22C369824(v60);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C9070DC();
  v10 = sub_22C369824(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  v61 = v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA58();
  v55 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  v18 = &v54 - v17;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v69 = 0;
  v70 = MEMORY[0x277D84F90];
  v68 = v21 + 16;
  v22 = *(a1 + 16);
  v63 = v4;
  v64 = v22;
  v58 = (v4 + 8);
  v59 = v21 + 32;
  v62 = v21;
  v56 = a1;
  v57 = (v21 + 8);
  v65 = v8;
  while (1)
  {
    if (v64 == v19)
    {

      return;
    }

    if (v19 >= *(a1 + 16))
    {
      break;
    }

    sub_22C37054C();
    v66 = *(v23 + 72);
    v67 = v24;
    v25 = *(v23 + 16);
    v25(v18, a1 + v24 + v66 * v19, v9);
    sub_22C9068FC();
    v26 = *(v63 + 80);
    v27 = *(v70 + 16);
    if (v69)
    {

      sub_22C7DBC48();
      v29 = v28;
      v31 = v30;

      if (v31)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v32 = *(v70 + 16);
      sub_22C7D9A98();
      if (v34)
      {
LABEL_8:
        sub_22C7D4F14();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = *(v20 + 16);
          sub_22C377BA0();
          sub_22C3B6E5C();
          v20 = v71;
        }

        v37 = *(v20 + 16);
        if (v37 >= *(v20 + 24) >> 1)
        {
          sub_22C379FA0();
          sub_22C3B6E5C();
          v20 = v71;
        }

        *(v20 + 16) = v37 + 1;
        v38 = v20 + 32;
        *(v20 + 32 + 8 * v37) = MEMORY[0x277D84F90];
        v25(v61, v18, v9);
        v39 = *(v20 + 32 + 8 * v37);
        v40 = swift_isUniquelyReferenced_nonNull_native();
        *(v20 + 32 + 8 * v37) = v39;
        if ((v40 & 1) == 0)
        {
          v48 = *(v39 + 16);
          sub_22C36D270();
          sub_22C5916E4();
          v39 = v49;
          *(v38 + 8 * v37) = v49;
        }

        v41 = *(v39 + 16);
        v42 = v41 + 1;
        if (v41 >= *(v39 + 24) >> 1)
        {
          sub_22C379FA0();
          sub_22C5916E4();
          v39 = v50;
          *(v38 + 8 * v37) = v50;
        }

        goto LABEL_26;
      }

      v29 = v33;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C56C300(v20);
      v20 = v43;
    }

    if ((v29 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    if (v29 >= *(v20 + 16))
    {
      goto LABEL_30;
    }

    v44 = v20 + 32;
    v25(v55, v18, v9);
    v39 = *(v20 + 32 + 8 * v29);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *(v20 + 32 + 8 * v29) = v39;
    if ((v45 & 1) == 0)
    {
      v51 = *(v39 + 16);
      sub_22C36D270();
      sub_22C5916E4();
      v39 = v52;
      *(v44 + 8 * v29) = v52;
    }

    v46 = *(v39 + 16);
    v42 = v46 + 1;
    if (v46 >= *(v39 + 24) >> 1)
    {
      sub_22C379FA0();
      sub_22C5916E4();
      v39 = v53;
      *(v44 + 8 * v29) = v53;
    }

LABEL_26:
    a1 = v56;
    *(v39 + 16) = v42;
    sub_22C38A894();
    v47();
    (*v58)(v65, v60);
    (*v57)(v18, v9);
    ++v19;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_22C405B44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  sub_22C3699B8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C3A7214();
  v10 = v1 + 1;
  v11 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v11 + 16);
    v14 = sub_22C36D270();
    sub_22C3B6D28(v14, v15, v16);
    v11 = *v10;
  }

  v18 = *(v11 + 16);
  v17 = *(v11 + 24);
  if (v18 >= v17 >> 1)
  {
    sub_22C3B6D28(v17 > 1, v18 + 1, 1);
    v11 = *v10;
  }

  *(v11 + 16) = v18 + 1;
  v19 = *(v6 + 80);
  sub_22C36BA94();
  v20 = *(v6 + 72);
  result = sub_22C407C2C();
  v2[1] = v11;
  v22 = *v2;
  if (!*v2)
  {
    if (v18 <= 0xE)
    {
      return result;
    }

    goto LABEL_14;
  }

  sub_22C36CA70();
  if (MEMORY[0x2318B0640](*(v22 + 16) & 0x3FLL) <= v18)
  {
    if (v18 <= 0xE && (*(v22 + 24) & 0x3FLL) == 0)
    {

      *v2 = 0;
      return result;
    }

LABEL_14:
    MEMORY[0x2318B0670](v18 + 1);
    return sub_22C7D5F44();
  }

  result = sub_22C7E4358();
  v23 = *v2;
  if (*v2)
  {
    v24 = *v2;

    sub_22C407408((v23 + 16), v23 + 32, a1, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22C405D48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22C901FAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v11 = v1[1];
  v9 = v1 + 1;
  v10 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v10 + 16);
    sub_22C3B6EDC();
    v10 = *v9;
  }

  v14 = *(v10 + 16);
  if (v14 >= *(v10 + 24) >> 1)
  {
    sub_22C3B6EDC();
    v10 = *v9;
  }

  *(v10 + 16) = v14 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v8, v4);
  v2[1] = v10;
  v16 = *v2;
  if (!*v2)
  {
    if (v14 <= 0xE)
    {
      return result;
    }

    goto LABEL_14;
  }

  swift_beginAccess();
  if (MEMORY[0x2318B0640](*(v16 + 16) & 0x3FLL) <= v14)
  {
    if (v14 <= 0xE && (*(v16 + 24) & 0x3FLL) == 0)
    {

      *v2 = 0;
      return result;
    }

LABEL_14:
    MEMORY[0x2318B0670](v14 + 1);
    return sub_22C7D5F5C();
  }

  result = sub_22C7E4358();
  v17 = *v2;
  if (*v2)
  {
    v18 = *v2;

    sub_22C4074D8((v17 + 16), v17 + 32, a1, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22C405F74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v7 + 16);
    sub_22C36D270();
    sub_22C3B5E2C();
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  if (v11 >= *(v7 + 24) >> 1)
  {
    sub_22C3B5E2C();
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (!*v3)
  {
    if (v11 <= 0xE)
    {
      return;
    }

    goto LABEL_15;
  }

  sub_22C36CA70();
  if (MEMORY[0x2318B0640](*(v13 + 16) & 0x3FLL) <= v11)
  {
    if (v11 <= 0xE && (*(v13 + 24) & 0x3FLL) == 0)
    {

      *v3 = 0;
      return;
    }

LABEL_15:
    MEMORY[0x2318B0670](v11 + 1);
    sub_22C7D5E80();
    return;
  }

  sub_22C7E4358();
  v14 = *v3;
  if (*v3)
  {
    v15 = *v3;

    sub_22C407610((v14 + 16), v14 + 32, a1, a2, v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_22C4060D8(uint64_t a1)
{
  v3 = sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770);
  v4 = sub_22C3699B8(v3);
  v50[2] = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  v58 = v12;
  v13 = sub_22C36BA0C();
  v14 = type metadata accessor for PromptTreeIdentifier(v13);
  v15 = sub_22C3699B8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  sub_22C37FCD8();
  v24 = sub_22C3A5908(&qword_27D9BC040, &unk_22C911CD0);
  v25 = sub_22C369824(v24);
  v53 = v26;
  v54 = v25;
  v28 = *(v27 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  v52 = v50 - v30;
  v31 = MEMORY[0x277D84F90];
  v60 = 0;
  v61 = MEMORY[0x277D84F90];
  sub_22C4077AC(*(a1 + 16), 0, sub_22C3B5B44, sub_22C7D5EB0, sub_22C7E4358);
  v59 = v31;
  sub_22C36D6CC();
  sub_22C3B661C();
  v32 = 0;
  v33 = v59;
  v55 = *(a1 + 16);
  v51 = a1;
  v50[1] = v10;
  while (1)
  {
    if (v32 == v55)
    {

      return;
    }

    if (v32 >= *(a1 + 16))
    {
      break;
    }

    v56 = v33;
    sub_22C37054C();
    v35 = *(v34 + 72);
    sub_22C3A7214();
    v36 = *(v54 + 48);
    sub_22C4079F4();
    sub_22C407C2C();
    v37 = *(v17 + 80);
    v38 = *(v61 + 16);
    if (v60)
    {

      sub_22C7DAB7C();
      v40 = v39;

      if ((v40 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v41 = 0;
      while (v38 != v41)
      {
        v42 = *(v17 + 72);
        sub_22C40799C();
        sub_22C36CC9C();
        sub_22C488E5C();
        v44 = v43;
        sub_22C407A4C(v22, type metadata accessor for PromptTreeIdentifier);
        ++v41;
        if (v44)
        {
          goto LABEL_16;
        }
      }
    }

    sub_22C7D4550();
    v45 = v58;
    sub_22C3A7214();
    v33 = v56;
    v59 = v56;
    v47 = *(v56 + 16);
    v46 = *(v56 + 24);
    v57 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      sub_22C3B661C();
      v33 = v59;
    }

    ++v32;
    sub_22C36DD28(v45, &qword_27D9BAEC8, &unk_22C90D770);
    *(v33 + 16) = v57;
    sub_22C37054C();
    v49 = *(v48 + 72);
    sub_22C407C2C();
    sub_22C407A4C(v1, type metadata accessor for PromptTreeIdentifier);
    a1 = v51;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_22C406550(uint64_t a1)
{
  v3 = sub_22C9081CC();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  sub_22C37FCD8();
  v13 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  sub_22C3699B8(v13);
  v72 = v14;
  v16 = *(v15 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  v20 = sub_22C3A5908(&qword_27D9BC060, &unk_22C911E50);
  v21 = sub_22C369824(v20);
  v70 = v22;
  v71 = v21;
  v24 = *(v23 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v25);
  v69 = &v62 - v26;
  v27 = MEMORY[0x277D84F90];
  v76 = 0;
  v77 = MEMORY[0x277D84F90];
  sub_22C4077AC(*(a1 + 16), 0, sub_22C3B5B74, sub_22C7D5F44, sub_22C7E4358);
  v75 = v27;
  v28 = v3;
  v29 = sub_22C36D6CC();
  sub_22C3B6170(v29, v30, v31);
  v32 = 0;
  v33 = v75;
  v73 = *(a1 + 16);
  v74 = (v6 + 32);
  v67 = v6;
  v68 = a1;
  v63 = v6 + 8;
  v64 = (v6 + 16);
  v65 = v19;
  v66 = v11;
  while (1)
  {
    if (v73 == v32)
    {

      return;
    }

    if (v32 >= *(a1 + 16))
    {
      break;
    }

    sub_22C37054C();
    v35 = *(v34 + 72);
    v36 = v69;
    sub_22C3A7214();
    v37 = *(v71 + 48);
    sub_22C407C2C();
    v38 = *v74;
    v39 = v28;
    (*v74)(v1, v36 + v37, v28);
    v40 = v76;
    v41 = v77;
    v42 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v43 = *(v77 + 16);
    if (v76)
    {

      sub_22C7DB87C(v19, v41 + v42, v43, v40 + 16, v40 + 32, v44, v45, v46, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
      v48 = v47;

      if ((v48 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v49 = *(v77 + 16);
      sub_22C7D9774();
      if ((v50 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v28 = v39;
    v19 = v65;
    sub_22C7D4D7C();
    v51 = *v64;
    v52 = v66;
    v53 = sub_22C36CC9C();
    v54(v53);
    v75 = v33;
    v55 = *(v33 + 16);
    if (v55 >= *(v33 + 24) >> 1)
    {
      sub_22C379FA0();
      sub_22C3B6170(v59, v60, v61);
    }

    v56 = v67;
    (*(v67 + 8))(v1, v28);
    v33 = v75;
    *(v75 + 16) = v55 + 1;
    v57 = *(v56 + 80);
    sub_22C36BA94();
    v38(v33 + v58 + *(v56 + 72) * v55, v52, v28);
    sub_22C36DD28(v19, &qword_27D9BB0C0, &qword_22C90D960);
    ++v32;
    a1 = v68;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_22C406978(uint64_t a1)
{
  v2 = sub_22C9070DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v40 - v8;
  v54 = sub_22C901FAC();
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v54);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BC018, &qword_22C911CA8);
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v47 = &v40 - v15;
  v16 = MEMORY[0x277D84F90];
  v56 = 0;
  v57 = MEMORY[0x277D84F90];
  sub_22C4077AC(*(a1 + 16), 0, sub_22C3B5B8C, sub_22C7D5F5C, sub_22C7E4358);
  v55 = v16;
  sub_22C3B6D88();
  v17 = 0;
  v18 = v55;
  v45 = a1;
  v46 = v9 + 32;
  v19 = *(a1 + 16);
  v51 = v7;
  v52 = v19;
  v20 = (v3 + 32);
  v43 = (v3 + 16);
  v44 = v3;
  v50 = v9;
  v41 = (v9 + 8);
  v42 = v3 + 8;
  while (1)
  {
    if (v52 == v17)
    {

      return;
    }

    if (v17 >= *(a1 + 16))
    {
      break;
    }

    v21 = v47;
    v22 = a1 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v23 = *(v48 + 72);
    sub_22C3A7214();
    v24 = v50;
    v25 = *(v49 + 48);
    (*(v50 + 32))(v12, v21, v54);
    v26 = *v20;
    v27 = v2;
    (*v20)(v53, &v21[v25], v2);
    v28 = *(v24 + 80);
    v29 = *(v57 + 16);
    if (v56)
    {

      sub_22C7DBC48();
      v31 = v30;

      if ((v31 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v32 = *(v57 + 16);
      sub_22C7D9A98();
      if ((v33 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v34 = v53;
    sub_22C7D4F14();
    v35 = v51;
    (*v43)(v51, v34, v27);
    v55 = v18;
    v37 = *(v18 + 16);
    v36 = *(v18 + 24);
    v38 = v34;
    if (v37 >= v36 >> 1)
    {
      sub_22C3B6D88();
      v35 = v51;
    }

    v39 = v44;
    (*(v44 + 8))(v38, v27);
    v18 = v55;
    *(v55 + 16) = v37 + 1;
    v26((v18 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v37), v35, v27);
    (*v41)(v12, v54);
    ++v17;
    a1 = v45;
    v2 = v27;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

unint64_t sub_22C406E04()
{
  result = qword_27D9BC008;
  if (!qword_27D9BC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC008);
  }

  return result;
}

uint64_t sub_22C406E58(uint64_t a1)
{
  v2 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  v3 = sub_22C369824(v2);
  v71 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v9 = (v7 - v8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v60 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = (&v60 - v14);
  v64 = sub_22C3A5908(&qword_27D9BC048, &qword_22C91AC70);
  sub_22C369824(v64);
  v63 = v16;
  v18 = *(v17 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v19);
  v62 = &v60 - v20;
  v21 = MEMORY[0x277D84F90];
  v77 = 0;
  v78 = MEMORY[0x277D84F90];
  sub_22C4077AC(*(a1 + 16), 0, sub_22C3B5BA4, sub_22C7D5FA4, sub_22C7E4358);
  v76 = v21;
  sub_22C36D6CC();
  sub_22C3B63D4();
  v22 = 0;
  v23 = v76;
  v65 = *(a1 + 16);
  v70 = v2;
  v61 = a1;
  while (1)
  {
    if (v22 == v65)
    {

      return v77;
    }

    if (v22 >= *(a1 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      sub_22C36A7E0();
      sub_22C407A4C(v13, v58);
      sub_22C379838();

      goto LABEL_27;
    }

    sub_22C37054C();
    v25 = *(v24 + 72);
    v26 = v62;
    sub_22C3A7214();
    v27 = *(v64 + 48);
    sub_22C369BAC();
    sub_22C4079F4();
    v68 = *&v26[v27];
    v28 = v77;
    v29 = v78 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v69 = v23;
    if (!v77)
    {
      break;
    }

    v66 = v22;
    v31 = v77 + 16;
    v30 = *(v77 + 16);
    sub_22C90B62C();
    v32 = *v15;

    sub_22C48A828(&v72, v32);
    v33 = *(v2 + 20);
    v67 = sub_22C901FAC();
    sub_22C4075B8();
    sub_22C909F8C();
    v34 = *(v15 + *(v2 + 24));
    sub_22C48A9B4(&v72, v34);
    v35 = sub_22C90B66C();
    v36 = 1 << *(v28 + 16);
    v37 = __OFSUB__(v36, 1);
    v38 = v36 - 1;
    if (v37)
    {
      goto LABEL_24;
    }

    v67 = v28;
    v39 = v38 & v35;
    v40 = sub_22C9030FC();
    *&v83 = v31;
    *(&v83 + 1) = v28 + 32;
    *&v84 = v39;
    *(&v84 + 1) = v40;
    v2 = v70;
    *&v85 = v41;
    *(&v85 + 1) = v42;
    v86 = 0;
    sub_22C90313C();
    v72 = v83;
    v73 = v84;
    v74 = v85;
    v75 = v86;
    if ((v43 & 1) == 0)
    {
      do
      {
        v44 = *(v71 + 72);
        sub_22C369BAC();
        sub_22C40799C();
        if (sub_22C48865C(*v13, v32))
        {
          v45 = *(v2 + 20);
          if (sub_22C901F6C() & 1) != 0 && (sub_22C48819C(*(v13 + *(v2 + 24)), v34))
          {
            goto LABEL_25;
          }
        }

        sub_22C36A7E0();
        sub_22C407A4C(v13, v46);
        sub_22C90315C();
        v79 = v72;
        v80 = v73;
        v81 = v74;
        v82 = v75;
        sub_22C90313C();
      }

      while ((v47 & 1) == 0);
    }

    sub_22C379838();

    a1 = v61;
    v22 = v66;
LABEL_19:
    sub_22C7D5308();
    v23 = v69;
    v76 = v69;
    v55 = *(v69 + 16);
    if (v55 >= *(v69 + 24) >> 1)
    {
      sub_22C379FA0();
      sub_22C3B63D4();
      v23 = v76;
    }

    ++v22;
    *(v23 + 16) = v55 + 1;
    *(v23 + 8 * v55 + 32) = v68;
    sub_22C36A7E0();
    sub_22C407A4C(v15, v56);
  }

  v48 = *(v78 + 16);
  if (!v48)
  {
    goto LABEL_19;
  }

  v49 = *v15;
  v50 = *(v71 + 72);
  while (1)
  {
    sub_22C369BAC();
    sub_22C40799C();
    if (sub_22C48865C(*v9, v49))
    {
      sub_22C37B968();
      v52 = *(v51 + 20);
      if (sub_22C901F6C())
      {
        sub_22C37B968();
        if (sub_22C48819C(*(v9 + *(v53 + 24)), *(v15 + *(v53 + 24))))
        {
          break;
        }
      }
    }

    sub_22C36A7E0();
    sub_22C407A4C(v9, v54);
    v29 += v50;
    if (!--v48)
    {
      v2 = v70;
      goto LABEL_19;
    }
  }

  sub_22C36A7E0();
  result = sub_22C407A4C(v9, v59);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22C407408(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  sub_22C90B62C();
  sub_22C7E3060(&v25, v8, v9, v10, v11, v12, v13, v14, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  result = sub_22C90B66C();
  v16 = 1 << *a1;
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v19 = v18 & result;
    v20 = sub_22C9030FC();
    v25 = a1;
    v26 = a2;
    v27 = v19;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    LOBYTE(v31) = 0;
    while (v28)
    {
      sub_22C90315C();
    }

    v23 = *(*(a4 + 8) + 16);
    return sub_22C90314C();
  }

  return result;
}

uint64_t sub_22C4074D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  sub_22C901FAC();
  sub_22C4075B8();
  result = sub_22C909F7C();
  if (__OFSUB__(1 << *a1, 1))
  {
    __break(1u);
  }

  else
  {
    if (sub_22C9030FC())
    {
      while (1)
      {
        sub_22C90315C();
      }
    }

    v8 = *(*(a4 + 8) + 16);
    return sub_22C90314C();
  }

  return result;
}

unint64_t sub_22C4075B8()
{
  result = qword_2814357B0;
  if (!qword_2814357B0)
  {
    sub_22C901FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814357B0);
  }

  return result;
}

uint64_t sub_22C407610(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  sub_22C90B62C();
  sub_22C909FFC();
  result = sub_22C90B66C();
  if (__OFSUB__(1 << *a1, 1))
  {
    __break(1u);
  }

  else
  {
    if (sub_22C9030FC())
    {
      while (1)
      {
        sub_22C90315C();
      }
    }

    v9 = *(*(a5 + 8) + 16);
    return sub_22C90314C();
  }

  return result;
}

uint64_t sub_22C4077AC(uint64_t result, char a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void))
{
  if (result < 0)
  {
    goto LABEL_25;
  }

  v8 = v5;
  v10 = result;
  a3();
  v11 = *v5;
  if (*v5)
  {
    sub_22C36CA70();
    v12 = *(v11 + 16) & 0x3FLL;
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x2318B0670](v10);
  v14 = v13;
  if (a2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v11 && (a2 & 1) == 0)
  {
    sub_22C36CA70();
    v15 = *(v11 + 24) & 0x3FLL;
  }

  if (v12 < v14)
  {
    v16 = v14;
    return a4(v16, v15);
  }

  if (v15 > v14)
  {
    v14 = v15;
  }

  v16 = MEMORY[0x2318B0670](*(v8[1] + 16));
  if (v16 <= v14)
  {
    v16 = v14;
  }

  if (v16 < v12)
  {
    return a4(v16, v15);
  }

  result = a5();
  v17 = *v8;
  if (!v17)
  {
    if (!v15)
    {
      return result;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  if ((*(v17 + 24) & 0x3FLL) != v15)
  {
    *(v17 + 24) = *(v17 + 24) & 0xFFFFFFFFFFFFFFC0 | v15 & 0x3F;
  }

  return result;
}

void sub_22C4078F4(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (a1)
  {

    sub_22C36FBFC();
    sub_22C7DBC48();
    v4 = v3;
    v6 = v5;
    v8 = v7;
  }

  else
  {
    sub_22C36FBFC();
    sub_22C7D9A98();
    v4 = v9;
    v6 = v10;
    v8 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v6 & 1;
  *(a2 + 16) = v8;
}

uint64_t sub_22C40799C()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 16);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C4079F4()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 32);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C407A4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for BuiltinPostProcessing.BuiltinPostProcessingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C407B84()
{
  result = qword_27D9BC050;
  if (!qword_27D9BC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC050);
  }

  return result;
}

unint64_t sub_22C407BD8()
{
  result = qword_27D9BC058;
  if (!qword_27D9BC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC058);
  }

  return result;
}

uint64_t sub_22C407C2C()
{
  sub_22C36986C();
  v3 = sub_22C3A5908(v1, v2);
  sub_22C36985C(v3);
  v5 = *(v4 + 32);
  v6 = sub_22C36BA00();
  v7(v6);
  return v0;
}

uint64_t sub_22C407CA0()
{
  result = *(v0 - 384);
  v2 = *(v0 - 376);
  return result;
}

uint64_t sub_22C407CB4@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 + *(v1 + 72) * v3;
  v5 = *(v1 + 16);
  return v2;
}

void sub_22C407CD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a2;
  v21 = sub_22C3A5908(&qword_27D9BAE60, &unk_22C911F20);
  v5 = *(v21 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v21);
  v8 = &v20 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v24 = MEMORY[0x277D84F90];
    sub_22C3B6E7C();
    v10 = v24;
    v11 = *(v5 + 72);
    v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v11 * (v9 - 1);
    v20 = -v11;
    while (1)
    {
      sub_22C3DB138(v12, v8, &qword_27D9BAE60, &unk_22C911F20);
      v13 = *&v8[*(v21 + 48)];
      v14 = sub_22C40A630(v12);
      if (v3)
      {
        break;
      }

      v15 = v14;
      v23 = 0;
      v16 = sub_22C9070DC();
      (*(*(v16 - 8) + 8))(v8, v16);
      v24 = v10;
      v17 = *(v10 + 16);
      if (v17 >= *(v10 + 24) >> 1)
      {
        sub_22C3B6E7C();
        v10 = v24;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v12 += v20;
      --v9;
      v3 = v23;
      if (!v9)
      {
        return;
      }
    }

    v19 = sub_22C9070DC();
    (*(*(v19 - 8) + 8))(v8, v19);
  }
}

uint64_t sub_22C407F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a3;
  v93 = a2;
  v6 = sub_22C901FAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v96 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v88 = &v76 - v12;
  MEMORY[0x28223BE20](v11);
  v95 = &v76 - v13;
  v14 = sub_22C3A5908(&qword_27D9BC0E8, &qword_22C911FC8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v82 = &v76 - v19;
  v20 = a4 + 64;
  v21 = 1 << *(a4 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(a4 + 64);
  v76 = (v21 + 63) >> 6;
  v87 = (v7 + 32);
  v92 = v7;
  v97 = v7 + 16;
  v98 = (v7 + 8);
  v84 = a4;

  v25 = 0;
  v83 = v18;
  v77 = a4 + 64;
  v79 = a1;
  v99 = v6;
  if (v23)
  {
    while (2)
    {
      v81 = v25;
      v26 = v25;
LABEL_11:
      v80 = (v23 - 1) & v23;
      v28 = __clz(__rbit64(v23)) | (v26 << 6);
      v29 = v84;
      v30 = v92;
      v31 = v95;
      (*(v92 + 16))(v95, *(v84 + 48) + *(v92 + 72) * v28, v6);
      v32 = *(*(v29 + 56) + 8 * v28);
      v33 = sub_22C3A5908(&qword_27D9BC0F0, &qword_22C911FD0);
      v34 = *(v33 + 48);
      v35 = *(v30 + 32);
      v18 = v83;
      v35(v83, v31, v6);
      *&v18[v34] = v32;
      sub_22C36C640(v18, 0, 1, v33);

      v27 = v82;
LABEL_12:
      sub_22C3DB08C(v18, v27, &qword_27D9BC0E8, &qword_22C911FC8);
      v36 = sub_22C3A5908(&qword_27D9BC0F0, &qword_22C911FD0);
      v37 = sub_22C370B74(v27, 1, v36);
      v38 = v93;
      if (v37 == 1)
      {
        v73 = v84;

        swift_retain_n();
        swift_retain_n();
        v74 = v78;
        swift_retain_n();
        sub_22C41D7D4(v73, a1, v38, v74);
      }

      else
      {
        v39 = *(v27 + *(v36 + 48));
        v40 = v88;
        v41 = (*v87)(v88, v27, v6);
        MEMORY[0x28223BE20](v41);
        *(&v76 - 4) = a1;
        *(&v76 - 3) = v38;
        *(&v76 - 2) = v40;

        v42 = v89;
        sub_22C7D5C98(sub_22C3E33E8, (&v76 - 6), v38);
        LOBYTE(v40) = v43;

        if ((v40 & 1) == 0)
        {
          v89 = v42;
          v44 = 0;
          v45 = *(v39 + 56);
          v86 = v39 + 56;
          v46 = 1 << *(v39 + 32);
          if (v46 < 64)
          {
            v47 = ~(-1 << v46);
          }

          else
          {
            v47 = -1;
          }

          v48 = v47 & v45;
          v85 = (v46 + 63) >> 6;
          v49 = v96;
          v91 = v39;
LABEL_18:
          while (v48)
          {
LABEL_23:
            v51 = __clz(__rbit64(v48));
            v48 &= v48 - 1;
            v52 = v92;
            v53 = *(v92 + 72);
            v54 = *(v92 + 16);
            v54(v49, *(v39 + 48) + v53 * (v51 | (v44 << 6)), v99);
            v55 = v93 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
            v56 = *(v93 + 16);
            v57 = v98;
            v90 = v98 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            if (!a1)
            {
              v94 = v54;

              v61 = v56 + 1;
              v72 = v99;
              while (--v61)
              {
                v62 = v55 + v53;
                v63 = v53;
                v64 = v95;
                v94(v95, v55, v72);
                sub_22C4208F4(&qword_27D9BAA28, MEMORY[0x277D1C338]);
                v65 = sub_22C90A0BC();
                v72 = v99;
                v66 = v65;
                v67 = *v98;
                v68 = v64;
                v53 = v63;
                (*v98)(v68, v99);
                v55 = v62;
                if (v66)
                {

                  a1 = v79;

                  v69 = v96;
                  result = v67(v96, v72);
                  v49 = v69;
                  v39 = v91;
                  goto LABEL_18;
                }
              }

              a1 = v79;

              v60 = *v98;
              (*v98)(v96, v72);
              goto LABEL_34;
            }

            sub_22C7DBC48();
            v59 = v58;

            v60 = *v57;
            result = (*v57)(v49, v99);
            v39 = v91;
            if (v59)
            {
              v72 = v99;
LABEL_34:

              sub_22C3A5908(&qword_27D9BC0F8, &qword_22C911FD8);
              sub_22C3D32C8(&qword_27D9BC100, &qword_27D9BC0F8, &qword_22C911FD8);
              swift_allocError();
              *v71 = 0;
              swift_willThrow();

              v60(v88, v72);
              return a1;
            }
          }

          while (1)
          {
            v50 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              __break(1u);
              goto LABEL_39;
            }

            if (v50 >= v85)
            {
              break;
            }

            v48 = *(v86 + 8 * v50);
            ++v44;
            if (v48)
            {
              v44 = v50;
              goto LABEL_23;
            }
          }

          v6 = v99;
          (*v98)(v88, v99);

          v20 = v77;
          v23 = v80;
          v25 = v81;
          v18 = v83;
          if (v80)
          {
            continue;
          }

          break;
        }

        sub_22C3A5908(&qword_27D9BC0F8, &qword_22C911FD8);
        sub_22C3D32C8(&qword_27D9BC100, &qword_27D9BC0F8, &qword_22C911FD8);
        swift_allocError();
        *v75 = 0;
        swift_willThrow();

        (*v98)(v88, v6);
      }

      return a1;
    }
  }

  v27 = v82;
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v76)
    {
      v81 = v25;
      v70 = sub_22C3A5908(&qword_27D9BC0F0, &qword_22C911FD0);
      sub_22C36C640(v18, 1, 1, v70);
      v80 = 0;
      goto LABEL_12;
    }

    v23 = *(v20 + 8 * v26);
    ++v25;
    if (v23)
    {
      v81 = v26;
      goto LABEL_11;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}

void *sub_22C408814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v14 = a4;
  v15 = a1;
  result = sub_22C7D5C98(sub_22C407C84, v12, a4);
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    MEMORY[0x28223BE20](result);
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = a2;
    result = sub_22C7D5C98(sub_22C407C84, v11, a4);
    if ((v10 & 1) == 0)
    {
      return (result < v9);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C4088E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = sub_22C901FAC();
  v8 = *(v75 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v75);
  v76 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v78 = &v56 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v68 = &v56 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - v16;
  v64 = *(a2 + 16);
  v58 = a2;
  v59 = a3;
  v57 = a1;
  if (v64)
  {
    v19 = *(v8 + 16);
    v18 = v8 + 16;
    v62 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v63 = a2 + v62;
    v73 = *(v18 + 56);
    v74 = v19;
    v20 = (v18 - 8);

    v21 = 0;
    v77 = 0;
    v22 = 0;
    v23 = MEMORY[0x277D84F98];
    a1 = v75;
    v61 = a4;
    v70 = v17;
    v71 = v18;
    v69 = (v18 - 8);
    while (1)
    {
      v66 = v22;
      v74(v17, v63 + v73 * v22, a1);
      if (*(a4 + 16) && (sub_22C628274(), (v25 & 1) != 0))
      {
        v26 = (*(a4 + 56) + 16 * v24);
        v27 = v26[1];
        v67 = *v26;
      }

      else
      {
        sub_22C7F5258();
        v67 = v28;
        v27 = v29;
      }

      v30 = *(v27 + 16);
      v72 = v27;
      if (v30)
      {
        break;
      }

      v50 = *v20;
      v51 = v66;
LABEL_20:
      v52 = v51 + 1;
      a1 = v75;
      v50(v17, v75);

      v22 = v52;
      if (v52 == v64)
      {
        goto LABEL_23;
      }
    }

    v65 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31 = 0;
    v32 = v27 + v62;
    v33 = v75;
    while (v31 < v30)
    {
      v34 = v74;
      v74(v78, v32, v33);
      sub_22C372F94(v21);
      v34(v76, v70, v33);
      v35 = swift_allocObject();
      *(v35 + 16) = sub_22C408E58;
      *(v35 + 24) = 0;
      sub_22C372F94(v77);
      swift_isUniquelyReferenced_nonNull_native();
      v79 = v23;
      sub_22C628274();
      if (__OFADD__(v23[2], (v37 & 1) == 0))
      {
        goto LABEL_27;
      }

      v38 = v36;
      v39 = v37;
      sub_22C3A5908(&qword_27D9BC0D8, &qword_22C911FB8);
      v40 = sub_22C90B15C();
      v23 = v79;
      if (v40)
      {
        sub_22C628274();
        if ((v39 & 1) != (v42 & 1))
        {
          goto LABEL_29;
        }

        v38 = v41;
      }

      if ((v39 & 1) == 0)
      {
        v43 = *(v35 + 24);
        v44 = (*(v35 + 16))();
        v23[(v38 >> 6) + 8] |= 1 << v38;
        v74((v23[6] + v38 * v73), v78, v75);
        *(v23[7] + 8 * v38) = v44;
        v45 = v23[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_28;
        }

        v23[2] = v47;
      }

      ++v31;
      v48 = v23[7] + 8 * v38;
      v49 = v68;
      sub_22C6A54FC();
      v50 = *v69;
      v33 = v75;
      (*v69)(v78, v75);
      v50(v49, v33);
      v30 = *(v72 + 16);
      v32 += v73;
      v77 = sub_22C420FE0;
      v21 = sub_22C408E58;
      if (v31 == v30)
      {
        a4 = v61;
        v20 = v69;
        v17 = v70;
        v51 = v66;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    result = sub_22C90B54C();
    __break(1u);
  }

  else
  {

    v21 = 0;
    v77 = 0;
    v23 = MEMORY[0x277D84F98];
LABEL_23:
    v53 = v60;
    v54 = sub_22C407F20(v57, v58, v59, v23);
    if (!v53)
    {
      a1 = v54;
    }

    sub_22C372F94(v21);
    sub_22C372F94(v77);
    return a1;
  }

  return result;
}

uint64_t sub_22C408E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v158 = a3;
  v169 = a2;
  v146 = sub_22C3A5908(&qword_27D9BAE70, &unk_22C90FA90);
  v145 = *(v146 - 8);
  v4 = *(v145 + 64);
  MEMORY[0x28223BE20](v146);
  v149 = &v145 - v5;
  v155 = sub_22C3A5908(&qword_27D9BC0C8, &qword_22C911FB0);
  v6 = *(*(v155 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v155);
  v154 = (&v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v153 = &v145 - v10;
  MEMORY[0x28223BE20](v9);
  v152 = (&v145 - v11);
  v12 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v159 = &v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v145 - v16;
  v17 = sub_22C901FAC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v147 = &v145 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v156 = &v145 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v151 = (&v145 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v145 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v145 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v145 - v32;
  v34 = sub_22C9070DC();
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v148 = &v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v165 = &v145 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v145 - v41;
  v43 = 0;
  v178 = 0;
  v179 = MEMORY[0x277D84F90];
  v180 = MEMORY[0x277D84F90];
  v166 = a1;
  v167 = v40;
  v171 = *(a1 + 16);
  v172 = v44 + 16;
  v174 = (v18 + 16);
  v175 = v18;
  v176 = (v18 + 8);
  v170 = v44;
  v168 = (v44 + 8);
  v162 = v28;
  v173 = v31;
  v163 = &v145 - v41;
  v45 = v18;
  while (v43 != v171)
  {
    v46 = v43;
    v47 = v166 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v43;
    v177 = *(v170 + 16);
    (v177)(v42, v47, v34);
    swift_getAtKeyPath();
    v160 = v180;
    v48 = v179 + ((v175[80] + 32) & ~v175[80]);
    v161 = v179;
    v49 = *(v179 + 16);
    if (v178)
    {

      sub_22C7DBC48();
      i = v50;
      v53 = v52;

      if ((v53 & 1) == 0)
      {
LABEL_10:
        v58 = v164;
        sub_22C4054D0(i, v160);
        v59 = v167;
        sub_22C36C640(v58, 0, 1, v167);
        sub_22C36DD28(v58, &qword_27D9BAA18, &qword_22C911C40);
        sub_22C420F8C();
        swift_allocError();
        swift_willThrow();
        (*v176)(v33, v17);
        (*v168)(v163, v59);

        goto LABEL_11;
      }
    }

    else
    {
      for (i = 0; v49 != i; ++i)
      {
        v56 = v173;
        (*(v45 + 16))(v173, v48 + *(v45 + 72) * i, v17);
        sub_22C4208F4(&qword_27D9BAA28, MEMORY[0x277D1C338]);
        v57 = sub_22C90A0BC();
        (*(v45 + 8))(v56, v17);
        if (v57)
        {
          goto LABEL_10;
        }
      }
    }

    v54 = v164;
    v34 = v167;
    sub_22C36C640(v164, 1, 1, v167);
    sub_22C36DD28(v54, &qword_27D9BAA18, &qword_22C911C40);
    (*v174)(v173, v33, v17);
    v55 = v159;
    v42 = v163;
    (v177)(v159, v163, v34);
    sub_22C36C640(v55, 0, 1, v34);
    sub_22C7C6728();
    (*v176)(v33, v17);
    (*v168)(v42, v34);
    v43 = v46 + 1;
    v28 = v162;
  }

  v61 = 0;
  v63 = v178;
  v62 = v179;
  v64 = v180;
  v164 = MEMORY[0x277D84F98];
  v160 = v178;
  v161 = v179;
  v59 = v151;
  for (j = v180; ; v64 = j)
  {
    if (v61 == v171)
    {

      v90 = v150;
      v91 = sub_22C407F20(v63, v62, v64, v164);
      if (v90)
      {

        goto LABEL_11;
      }

      v177 = v91;
      v95 = sub_22C4088E4(v91, v92, v93, v94);
      v97 = v96;
      v99 = v98;
      v165 = v100;

      v101 = v97;
      v102 = v99;
      v103 = v165;

      sub_22C3E2748(MEMORY[0x277D84F90], v95, v101, v102, v103);
      v162 = v102;
      v163 = v101;
      v164 = v95;
      v159 = 0;
      sub_22C5AD878();
      v173 = v104;
      sub_22C4208F4(&qword_2814357B0, MEMORY[0x277D1C338]);
      v105 = sub_22C909F0C();
      for (k = 0; v171 != k; k = v177 + 1)
      {
        v107 = v170;
        v108 = v166 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * k;
        v109 = v155;
        v110 = *(v155 + 48);
        v111 = v152;
        v177 = k;
        *v152 = k;
        (*(v107 + 16))(&v111[v110], v108, v34);
        sub_22C3DB138(v111, v153, &qword_27D9BC0C8, &qword_22C911FB0);
        v112 = *(v109 + 48);
        swift_getAtKeyPath();
        v113 = v154;
        sub_22C3DB138(v111, v154, &qword_27D9BC0C8, &qword_22C911FB0);
        v114 = *v113;
        swift_isUniquelyReferenced_nonNull_native();
        v178 = v105;
        sub_22C628274();
        if (__OFADD__(v105[2], (v116 & 1) == 0))
        {
          goto LABEL_57;
        }

        v117 = v115;
        v118 = v116;
        sub_22C3A5908(&qword_27D9BC0E0, &qword_22C911FC0);
        if (sub_22C90B15C())
        {
          sub_22C628274();
          if ((v118 & 1) != (v120 & 1))
          {
            goto LABEL_60;
          }

          v117 = v119;
        }

        v105 = v178;
        if (v118)
        {
          *(*(v178 + 56) + 8 * v117) = v114;
        }

        else
        {
          *(v178 + 8 * (v117 >> 6) + 64) |= 1 << v117;
          (*(v175 + 2))(v105[6] + *(v175 + 9) * v117, v156, v17);
          *(v105[7] + 8 * v117) = v114;
          v121 = v105[2];
          v88 = __OFADD__(v121, 1);
          v122 = v121 + 1;
          if (v88)
          {
            goto LABEL_58;
          }

          v105[2] = v122;
        }

        v34 = v167;
        v123 = *(v155 + 48);
        (*v176)(v156, v17);
        v124 = *v168;
        (*v168)(v154 + v123, v34);
        v124((v153 + v112), v34);
        sub_22C36DD28(v152, &qword_27D9BC0C8, &qword_22C911FB0);
      }

      v125 = v173;
      v126 = *(v173 + 2);
      if (!v126)
      {
LABEL_51:

        sub_22C8D5374();
        v59 = v144;

        return v59;
      }

      v178 = MEMORY[0x277D84F90];
      sub_22C3B6EBC(0, v126, 0);
      v127 = 0;
      v128 = v178;
      v175 = &v125[(*(v170 + 80) + 32) & ~*(v170 + 80)];
      while (1)
      {
        v177 = v128;
        if (v127 >= *(v125 + 2))
        {
          goto LABEL_59;
        }

        v129 = *(v170 + 16);
        v130 = v148;
        v129(v148, &v175[*(v170 + 72) * v127], v34);
        v129(v149, v130, v34);
        v131 = v147;
        swift_getAtKeyPath();
        if (!v105[2])
        {
          goto LABEL_54;
        }

        sub_22C628274();
        v133 = *v176;
        if ((v134 & 1) == 0)
        {
          goto LABEL_55;
        }

        v135 = *(v146 + 48);
        v136 = v34;
        v137 = *(v105[7] + 8 * v132);
        v133(v131, v17);
        v138 = v149;
        *&v149[v135] = v137;
        (*v168)(v148, v136);
        v128 = v177;
        v178 = v177;
        v140 = *(v177 + 16);
        v139 = *(v177 + 24);
        if (v140 >= v139 >> 1)
        {
          sub_22C3B6EBC(v139 > 1, v140 + 1, 1);
          v128 = v178;
        }

        ++v127;
        *(v128 + 16) = v140 + 1;
        sub_22C3DB08C(v138, v128 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v140, &qword_27D9BAE70, &unk_22C90FA90);
        v34 = v167;
        v125 = v173;
        if (v126 == v127)
        {
          goto LABEL_51;
        }
      }
    }

    v65 = v166 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
    v66 = *(v170 + 72);
    v163 = v61;
    (*(v170 + 16))(v165, v65 + v66 * v61, v34);
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    v34 = v178;
    v67 = *(v178 + 16);
    v68 = sub_22C4208F4(&qword_2814357B0, MEMORY[0x277D1C338]);
    v69 = MEMORY[0x2318B7DB0](v67, v17, v68);
    v184 = v69;
    v70 = *(v34 + 16);
    if (v70)
    {
      v71 = (v175[80] + 32) & ~v175[80];
      v159 = v34;
      v34 += v71;
      v177 = *(v175 + 9);
      v72 = *(v175 + 2);
      v73 = v176;
      v74 = v173;
      do
      {
        v72(v59, v34, v17);
        sub_22C6A54FC();
        (*v73)(v74, v17);
        v34 += v177;
        --v70;
      }

      while (v70);

      v75 = v184;
      v63 = v160;
      v62 = v161;
      v28 = v162;
    }

    else
    {
      v75 = v69;
    }

    v76 = sub_22C420A2C(v63, v62, v75);
    v77 = v164;
    swift_isUniquelyReferenced_nonNull_native();
    v178 = v77;
    sub_22C628274();
    if (__OFADD__(*(v77 + 16), (v79 & 1) == 0))
    {
      break;
    }

    v80 = v78;
    v81 = v79;
    sub_22C3A5908(&qword_27D9BC0D8, &qword_22C911FB8);
    if (sub_22C90B15C())
    {
      sub_22C628274();
      v62 = v161;
      if ((v81 & 1) != (v83 & 1))
      {
        goto LABEL_60;
      }

      v80 = v82;
    }

    else
    {
      v62 = v161;
    }

    v84 = v178;
    v164 = v178;
    if (v81)
    {
      v85 = *(v178 + 56);
      v86 = *(v85 + 8 * v80);
      *(v85 + 8 * v80) = v76;

      goto LABEL_29;
    }

    *(v178 + 8 * (v80 >> 6) + 64) |= 1 << v80;
    (*(v175 + 2))(v84[6] + *(v175 + 9) * v80, v28, v17);
    *(v84[7] + 8 * v80) = v76;
    v87 = v84[2];
    v88 = __OFADD__(v87, 1);
    v89 = v87 + 1;
    if (v88)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      result = sub_22C90B54C();
      __break(1u);
      return result;
    }

    v84[2] = v89;
LABEL_29:
    v61 = v163 + 1;
    (*v176)(v28, v17);
    v34 = v167;
    (*v168)(v165, v167);
    v63 = v160;
  }

  __break(1u);
LABEL_54:
  v133 = *v176;
LABEL_55:
  v133(v147, v17);
  sub_22C90735C();
  sub_22C3A5F00();
  swift_allocError();
  v141 = v183;
  v142 = v182;
  *v143 = v181;
  *(v143 + 16) = v142;
  *(v143 + 32) = v141;
  swift_willThrow();
  v59 = *v168;
  (*v168)(v149, v34);

  v59(v148, v34);
LABEL_11:

  return v59;
}

uint64_t PlanPostProcessor.init(toolbox:planStatements:sessionState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = MEMORY[0x277D84F98];
  v8 = type metadata accessor for PlanPostProcessor(0);
  v9 = v8[5];
  v10 = sub_22C908AEC();
  sub_22C3699C8(v10);
  v12 = v11;
  (*(v11 + 16))(&a4[v9], a1, v10);
  *&a4[v8[8]] = a2;
  v13 = v8[6];
  v14 = sub_22C9087BC();
  sub_22C3699C8(v14);
  v16 = v15;
  (*(v15 + 16))(&a4[v13], a3, v14);
  v17 = &a4[v8[7]];
  sub_22C90878C();
  sub_22C901FAC();
  sub_22C908C5C();
  sub_22C4208F4(&qword_2814357B0, MEMORY[0x277D1C338]);
  v18 = sub_22C909F0C();
  (*(v16 + 8))(a3, v14);
  (*(v12 + 8))(a1, v10);
  result = type metadata accessor for TranscriptValueFetcher(0);
  *&v17[*(result + 20)] = v18;
  return result;
}

uint64_t PlanPostProcessor.process()()
{
  v2 = v0;
  v3 = *(v0 + *(type metadata accessor for PlanPostProcessor(0) + 32));
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = sub_22C408E64(v3, KeyPath, v5);

  if (v1)
  {
    sub_22C371664();
    return v3;
  }

  else
  {
    sub_22C407CD4(v6, v2);
    v8 = v7;

    v22 = v8;

    sub_22C41DC30(&v22);

    v10 = v22;
    v11 = *(v22 + 16);
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v22 = MEMORY[0x277D84F90];
      sub_22C3B6E5C();
      v13 = 40;
      v14 = v22;
      do
      {
        v15 = *(v10 + v13);
        v22 = v14;
        v16 = *(v14 + 16);
        v17 = *(v14 + 24);

        if (v16 >= v17 >> 1)
        {
          sub_22C3B6E5C();
          v14 = v22;
        }

        *(v14 + 16) = v16 + 1;
        *(v14 + 8 * v16 + 32) = v15;
        v13 += 16;
        --v11;
      }

      while (v11);

      v12 = MEMORY[0x277D84F90];
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    v18 = 0;
    v22 = v12;
    v19 = *(v14 + 16);
    while (1)
    {
      if (v19 == v18)
      {

        v3 = v22;
        sub_22C371664();
        return v3;
      }

      if (v18 >= *(v14 + 16))
      {
        break;
      }

      v20 = v18 + 1;
      v21 = *(v14 + 8 * v18 + 32);

      sub_22C3CD9A4();
      v18 = v20;
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_22C40A56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = sub_22C369824(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a1);
  return a6(v13);
}

uint64_t sub_22C40A630(uint64_t a1)
{
  v925 = sub_22C906FBC();
  v924 = *(v925 - 8);
  v2 = *(v924 + 64);
  MEMORY[0x28223BE20](v925);
  v980 = &v914 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v946 = sub_22C90731C();
  v945 = *(v946 - 8);
  v4 = *(v945 + 64);
  MEMORY[0x28223BE20](v946);
  v1004 = &v914 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1064 = sub_22C906DDC();
  v1072 = *(v1064 - 8);
  v6 = *(v1072 + 64);
  MEMORY[0x28223BE20](v1064);
  v1063 = &v914 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1080 = sub_22C906FFC();
  v1079 = *(v1080 - 1);
  v8 = *(v1079 + 8);
  MEMORY[0x28223BE20](v1080);
  v1078 = &v914 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1049 = sub_22C9083DC();
  v1048 = *(v1049 - 8);
  v10 = *(v1048 + 64);
  MEMORY[0x28223BE20](v1049);
  v1052 = &v914 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1055 = sub_22C906D7C();
  v1065 = *(v1055 - 8);
  v12 = v1065[8];
  MEMORY[0x28223BE20](v1055);
  v1057 = &v914 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C3A5908(&qword_27D9BC068, &qword_22C920590);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v1024 = &v914 - v16;
  v1034 = sub_22C9088CC();
  v1016 = *(v1034 - 8);
  v17 = *(v1016 + 64);
  MEMORY[0x28223BE20](v1034);
  v1015 = &v914 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1071 = sub_22C90880C();
  v1074 = *(v1071 - 8);
  v19 = *(v1074 + 64);
  MEMORY[0x28223BE20](v1071);
  v1070 = &v914 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v964 = sub_22C90734C();
  v963 = *(v964 - 8);
  v21 = *(v963 + 64);
  MEMORY[0x28223BE20](v964);
  v962 = &v914 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1047 = type metadata accessor for PlanPostProcessor.ImplicitSearchRequest(0);
  v23 = *(*(v1047 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v1047);
  v1027 = (&v914 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v1013 = (&v914 - v26);
  v1085 = type metadata accessor for PlanPostProcessor(0);
  v27 = *(*(v1085 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v1085);
  v1026 = &v914 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v1012 = &v914 - v30;
  v31 = sub_22C3A5908(&qword_27D9BC070, &qword_22C911F30);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v928 = &v914 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v916 = &v914 - v36;
  MEMORY[0x28223BE20](v35);
  v977 = &v914 - v37;
  v1031 = sub_22C9063DC();
  v1030 = *(v1031 - 8);
  v38 = *(v1030 + 64);
  v39 = MEMORY[0x28223BE20](v1031);
  v971 = &v914 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v1036 = &v914 - v42;
  MEMORY[0x28223BE20](v41);
  v943 = &v914 - v43;
  v44 = sub_22C90700C();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v1032 = &v914 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v999 = sub_22C90827C();
  v1000 = *(v999 - 8);
  v47 = *(v1000 + 64);
  v48 = MEMORY[0x28223BE20](v999);
  v997 = &v914 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v917 = &v914 - v50;
  v1087 = sub_22C90941C();
  v1081 = *(v1087 - 8);
  v51 = *(v1081 + 64);
  v52 = MEMORY[0x28223BE20](v1087);
  v1067 = &v914 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v967 = &v914 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v927 = &v914 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v926 = &v914 - v59;
  MEMORY[0x28223BE20](v58);
  v918 = &v914 - v60;
  v61 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x28223BE20](v61 - 8);
  v1056 = &v914 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63);
  v970 = &v914 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v1044 = &v914 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v1046 = &v914 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v1061 = &v914 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v1062 = &v914 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v1043 = &v914 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v1045 = &v914 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v944 = &v914 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v966 = &v914 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v965 = &v914 - v84;
  MEMORY[0x28223BE20](v83);
  v986 = &v914 - v85;
  v1100 = type metadata accessor for PlanPostProcessor.ExpressionContext(0);
  v1093 = *(v1100 - 1);
  v86 = *(v1093 + 8);
  v87 = MEMORY[0x28223BE20](v1100);
  v998 = &v914 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x28223BE20](v87);
  v979 = &v914 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v919 = &v914 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v1028 = &v914 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v1003 = &v914 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v931 = &v914 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v1042 = &v914 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v1060 = &v914 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v960 = &v914 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v961 = &v914 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v957 = &v914 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v958 = &v914 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v1029 = &v914 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v1090 = (&v914 - v114);
  v115 = MEMORY[0x28223BE20](v113);
  v941 = &v914 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v1068 = (&v914 - v118);
  v119 = MEMORY[0x28223BE20](v117);
  v1106 = (&v914 - v120);
  v121 = MEMORY[0x28223BE20](v119);
  v1020 = &v914 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  *&v1098 = &v914 - v124;
  v125 = MEMORY[0x28223BE20](v123);
  v1073 = &v914 - v126;
  v127 = MEMORY[0x28223BE20](v125);
  v1088 = &v914 - v128;
  MEMORY[0x28223BE20](v127);
  v981 = &v914 - v129;
  v130 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v131 = *(*(v130 - 8) + 64);
  v132 = MEMORY[0x28223BE20](v130 - 8);
  v1021 = &v914 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = MEMORY[0x28223BE20](v132);
  v1018 = &v914 - v135;
  v136 = MEMORY[0x28223BE20](v134);
  v1023 = &v914 - v137;
  v138 = MEMORY[0x28223BE20](v136);
  v1017 = &v914 - v139;
  v140 = MEMORY[0x28223BE20](v138);
  v952 = &v914 - v141;
  v142 = MEMORY[0x28223BE20](v140);
  v1059 = &v914 - v143;
  MEMORY[0x28223BE20](v142);
  v942 = &v914 - v144;
  v145 = sub_22C9070DC();
  v146 = *(v145 - 1);
  v1096 = v145;
  v1097 = v146;
  v147 = *(v146 + 64);
  v148 = MEMORY[0x28223BE20](v145);
  v1022 = &v914 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = MEMORY[0x28223BE20](v148);
  v1009 = &v914 - v151;
  v152 = MEMORY[0x28223BE20](v150);
  v950 = &v914 - v153;
  v154 = MEMORY[0x28223BE20](v152);
  v987 = &v914 - v155;
  v156 = MEMORY[0x28223BE20](v154);
  v930 = &v914 - v157;
  v158 = MEMORY[0x28223BE20](v156);
  v1076 = &v914 - v159;
  v160 = MEMORY[0x28223BE20](v158);
  v1054 = &v914 - v161;
  v162 = MEMORY[0x28223BE20](v160);
  v1038 = &v914 - v163;
  v164 = MEMORY[0x28223BE20](v162);
  v1019 = &v914 - v165;
  v166 = MEMORY[0x28223BE20](v164);
  v915 = &v914 - v167;
  v168 = MEMORY[0x28223BE20](v166);
  v948 = &v914 - v169;
  MEMORY[0x28223BE20](v168);
  v922 = &v914 - v170;
  v171 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v172 = *(*(v171 - 8) + 64);
  v173 = MEMORY[0x28223BE20](v171 - 8);
  v972 = &v914 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = MEMORY[0x28223BE20](v173);
  v955 = &v914 - v176;
  MEMORY[0x28223BE20](v175);
  v1010 = &v914 - v177;
  v1053 = sub_22C90832C();
  v1039 = *(v1053 - 8);
  v178 = *(v1039 + 64);
  v179 = MEMORY[0x28223BE20](v1053);
  v1051 = &v914 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = MEMORY[0x28223BE20](v179);
  v1006 = &v914 - v182;
  MEMORY[0x28223BE20](v181);
  v996 = &v914 - v183;
  v1066 = sub_22C90769C();
  v1069 = *(v1066 - 8);
  v184 = *(v1069 + 64);
  v185 = MEMORY[0x28223BE20](v1066);
  v976 = &v914 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = MEMORY[0x28223BE20](v185);
  v1033 = &v914 - v188;
  v189 = MEMORY[0x28223BE20](v187);
  v985 = &v914 - v190;
  v191 = MEMORY[0x28223BE20](v189);
  v1035 = &v914 - v192;
  MEMORY[0x28223BE20](v191);
  v994 = &v914 - v193;
  v1008 = sub_22C906ACC();
  v1007 = *(v1008 - 8);
  v194 = *(v1007 + 64);
  v195 = MEMORY[0x28223BE20](v1008);
  v975 = &v914 - ((v196 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v195);
  v992 = &v914 - v197;
  v1099 = sub_22C90654C();
  v1095 = *(v1099 - 8);
  v198 = *(v1095 + 8);
  v199 = MEMORY[0x28223BE20](v1099);
  v995 = &v914 - ((v200 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = MEMORY[0x28223BE20](v199);
  v974 = (&v914 - v202);
  v203 = MEMORY[0x28223BE20](v201);
  v1001 = &v914 - v204;
  v205 = MEMORY[0x28223BE20](v203);
  v929 = &v914 - v206;
  v207 = MEMORY[0x28223BE20](v205);
  v1075 = &v914 - v208;
  v209 = MEMORY[0x28223BE20](v207);
  v1041 = &v914 - v210;
  v211 = MEMORY[0x28223BE20](v209);
  v968 = (&v914 - v212);
  v213 = MEMORY[0x28223BE20](v211);
  v969 = (&v914 - v214);
  v215 = MEMORY[0x28223BE20](v213);
  v939 = &v914 - v216;
  v217 = MEMORY[0x28223BE20](v215);
  v940 = &v914 - v218;
  v219 = MEMORY[0x28223BE20](v217);
  v1050 = (&v914 - v220);
  v221 = MEMORY[0x28223BE20](v219);
  v959 = &v914 - v222;
  v223 = MEMORY[0x28223BE20](v221);
  v921 = &v914 - v224;
  MEMORY[0x28223BE20](v223);
  v226 = (&v914 - v225);
  v227 = sub_22C901FAC();
  v1107 = *(v227 - 8);
  v228 = *(v1107 + 8);
  v229 = MEMORY[0x28223BE20](v227);
  v978 = &v914 - ((v230 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = MEMORY[0x28223BE20](v229);
  v1002 = &v914 - v232;
  v233 = MEMORY[0x28223BE20](v231);
  v936 = &v914 - v234;
  v235 = MEMORY[0x28223BE20](v233);
  v1084 = &v914 - v236;
  v237 = MEMORY[0x28223BE20](v235);
  v949 = &v914 - v238;
  v239 = MEMORY[0x28223BE20](v237);
  v951 = &v914 - v240;
  v241 = MEMORY[0x28223BE20](v239);
  v1091 = &v914 - v242;
  v243 = MEMORY[0x28223BE20](v241);
  v984 = &v914 - v244;
  v245 = MEMORY[0x28223BE20](v243);
  v991 = &v914 - v246;
  v247 = MEMORY[0x28223BE20](v245);
  v993 = &v914 - v248;
  v249 = MEMORY[0x28223BE20](v247);
  v1094 = &v914 - v250;
  v251 = MEMORY[0x28223BE20](v249);
  v983 = &v914 - v252;
  v253 = MEMORY[0x28223BE20](v251);
  v990 = &v914 - v254;
  v255 = MEMORY[0x28223BE20](v253);
  v1005 = &v914 - v256;
  v257 = MEMORY[0x28223BE20](v255);
  v1025 = &v914 - v258;
  v259 = MEMORY[0x28223BE20](v257);
  v1011 = &v914 - v260;
  v261 = MEMORY[0x28223BE20](v259);
  v1037 = &v914 - v262;
  v263 = MEMORY[0x28223BE20](v261);
  v937 = &v914 - v264;
  v265 = MEMORY[0x28223BE20](v263);
  v938 = &v914 - v266;
  v267 = MEMORY[0x28223BE20](v265);
  v954 = &v914 - v268;
  v269 = MEMORY[0x28223BE20](v267);
  v923 = &v914 - v270;
  v271 = MEMORY[0x28223BE20](v269);
  v982 = &v914 - v272;
  v273 = MEMORY[0x28223BE20](v271);
  v947 = &v914 - v274;
  v275 = MEMORY[0x28223BE20](v273);
  v956 = &v914 - v276;
  v277 = MEMORY[0x28223BE20](v275);
  v935 = &v914 - v278;
  MEMORY[0x28223BE20](v277);
  v280 = &v914 - v279;
  v281 = sub_22C3A5908(&qword_27D9BC078, &unk_22C922810);
  v282 = *(*(v281 - 8) + 64);
  v283 = MEMORY[0x28223BE20](v281 - 8);
  v920 = &v914 - ((v284 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = MEMORY[0x28223BE20](v283);
  v932 = &v914 - v286;
  v287 = MEMORY[0x28223BE20](v285);
  v1058 = &v914 - v288;
  v289 = MEMORY[0x28223BE20](v287);
  v1077 = &v914 - v290;
  v291 = MEMORY[0x28223BE20](v289);
  v934 = &v914 - v292;
  v293 = MEMORY[0x28223BE20](v291);
  v1040 = &v914 - v294;
  v295 = MEMORY[0x28223BE20](v293);
  v1014 = &v914 - v296;
  v297 = MEMORY[0x28223BE20](v295);
  v299 = &v914 - v298;
  v300 = MEMORY[0x28223BE20](v297);
  v1086 = &v914 - v301;
  v302 = MEMORY[0x28223BE20](v300);
  v953 = &v914 - v303;
  v304 = MEMORY[0x28223BE20](v302);
  v989 = &v914 - v305;
  v306 = MEMORY[0x28223BE20](v304);
  v308 = &v914 - v307;
  v309 = MEMORY[0x28223BE20](v306);
  v311 = &v914 - v310;
  v312 = MEMORY[0x28223BE20](v309);
  v988 = &v914 - v313;
  v314 = MEMORY[0x28223BE20](v312);
  v316 = &v914 - v315;
  v317 = MEMORY[0x28223BE20](v314);
  v973 = &v914 - v318;
  MEMORY[0x28223BE20](v317);
  v320 = &v914 - v319;
  sub_22C9068FC();
  v321 = *v1108;
  v1104 = v320;
  v322 = v1099;
  v933 = v321;
  sub_22C605618(v280, v321);
  v323 = *(v1107 + 1);
  v1089 = v280;
  v1105 = v227;
  v1101 = v323;
  v1102 = v1107 + 8;
  v323(v280, v227);
  v1092 = a1;
  sub_22C90702C();
  v324 = v1095;
  v325 = *(v1095 + 11);
  v1083 = v1095 + 88;
  v1082 = v325;
  v326 = v325(v226, v322);
  v327 = *MEMORY[0x277D1DAA8];
  v328 = MEMORY[0x277D1DEE8];
  if (v326 != *MEMORY[0x277D1DAA8])
  {
    v338 = v226;
    v339 = MEMORY[0x277D1DED8];
    if (v326 == *MEMORY[0x277D1D9F8])
    {
      v340 = MEMORY[0x277D1DA48];
      v341 = (v324 + 96);
      v342 = *(v324 + 12);
      v1106 = v341;
      v342(v338, v322);
      v343 = (v1107 + 32);
      v344 = v1091;
      v345 = v1105;
      *&v1098 = *(v1107 + 4);
      (v1098)(v1091, v338, v1105);
      sub_22C3DB138(v1104, v299, &qword_27D9BC078, &unk_22C922810);
      if (sub_22C370B74(v299, 1, v1100) == 1)
      {
        sub_22C36DD28(v299, &qword_27D9BC078, &unk_22C922810);
        v346 = v1096;
        goto LABEL_154;
      }

      v1093 = v342;
      LODWORD(v1094) = v327;
      v367 = sub_22C42074C(v299, v1090);
      v368 = v1085;
      v369 = *(v1108 + *(v1085 + 32));
      MEMORY[0x28223BE20](v367);
      *(&v914 - 2) = v344;
      v370 = v1103;
      v372 = sub_22C5EC5FC(sub_22C4211C0, (&v914 - 4), v371);
      v346 = v1096;
      v1103 = v370;
      if (v372)
      {
        goto LABEL_22;
      }

      v1073 = *(v368 + 24);
      v400 = v1070;
      sub_22C90878C();
      v401 = v1059;
      sub_22C646D68(v344, v402, v403, v404, v405, v406, v407, v408, v914, v915, v916, v917, v918, v919, v920, v921, v922, v923, v924, v925);
      v409 = v1074 + 8;
      v1072 = *(v1074 + 8);
      (v1072)(v400, v1071);
      if (sub_22C370B74(v401, 1, v346) == 1)
      {
        sub_22C36DD28(v401, &qword_27D9BAA18, &qword_22C911C40);
      }

      else
      {
        v1074 = v409;
        v438 = v1097;
        v439 = *(v1097 + 32);
        v440 = v1054;
        v1069 = v1097 + 32;
        v1068 = v439;
        (v439)(v1054, v401, v346);
        v441 = v1041;
        sub_22C90702C();
        if (v1082(v441, v322) == *v340)
        {
          v1093(v441, v322);
          v442 = v1039;
          (*(v1039 + 32))(v1051, v441, v1053);
          v443 = v1070;
          sub_22C90878C();
          v1109 = sub_22C9087DC();
          MEMORY[0x28223BE20](v1109);
          *(&v914 - 2) = v1091;
          sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
          sub_22C3D32C8(&qword_27D9BC090, &qword_27D9BA9F0, &qword_22C912420);
          v444 = v1024;
          v445 = v1034;
          v446 = v1103;
          sub_22C907D9C();
          v1103 = v446;

          (v1072)(v443, v1071);
          v447 = sub_22C370B74(v444, 1, v445);
          v448 = v1084;
          if (v447 == 1)
          {
            (*(v442 + 8))(v1051, v1053);
            v346 = v1096;
            (*(v1097 + 8))(v1054, v1096);
            sub_22C36DD28(v444, &qword_27D9BC068, &qword_22C920590);
          }

          else
          {
            (*(v1016 + 32))(v1015, v444, v445);
            v549 = sub_22C90887C();
            v550 = 0;
            v1080 = *(v549 + 16);
            v1085 = v1097 + 16;
            v1088 = v1097 + 8;
            LODWORD(v1078) = *MEMORY[0x277D1DA50];
            LODWORD(v1077) = *MEMORY[0x277D1DA78];
            v1079 = v1095 + 8;
            v1066 = v343;
            while (v1080 != v550)
            {
              if (v550 >= *(v549 + 16))
              {
                __break(1u);
LABEL_289:
                __break(1u);
                goto LABEL_290;
              }

              v551 = v1096;
              v552 = v1097;
              v553 = (*(v552 + 80) + 32) & ~*(v552 + 80);
              v554 = v549;
              v555 = *(v1097 + 16);
              v556 = v1076;
              (v555)(v1076, v549 + v553 + *(v1097 + 72) * v550, v1096);
              v557 = v1075;
              sub_22C90702C();
              v558 = *(v552 + 8);
              v558(v556, v551);
              v559 = v1099;
              v560 = v1082(v557, v1099);
              if (v560 == v1078 || v560 == v1077)
              {
                v1084 = v553;
                v1065 = v555;

                v651 = *v1079;
                v652 = (*v1079)(v557, v559);
                v653 = v1051;
                v654 = MEMORY[0x2318B57A0](v652);
                v655 = v972;
                sub_22C6053E0(v654, v972);

                v656 = v1105;
                if (sub_22C370B74(v655, 1, v1105) == 1)
                {
                  v657 = &qword_27D9BC030;
                  v658 = &unk_22C911CC0;
                  v659 = v655;
                  goto LABEL_191;
                }

                v1080 = v651;
                v707 = v951;
                (v1098)(v951, v655, v656);
                v708 = v1070;
                sub_22C90878C();
                v709 = v952;
                sub_22C646D68(v707, v710, v711, v712, v713, v714, v715, v716, v914, v915, v916, v917, v918, v919, v920, v921, v922, v923, v924, v925);
                (v1072)(v708, v1071);
                v346 = v1096;
                if (sub_22C370B74(v709, 1, v1096) == 1)
                {
                  v1101(v707, v656);
                  v657 = &qword_27D9BAA18;
                  v658 = &qword_22C911C40;
                  v659 = v709;
LABEL_191:
                  sub_22C36DD28(v659, v657, v658);
                  v717 = v558;
LABEL_192:
                  v718 = v1065;
LABEL_193:
                  v719 = v971;
                  sub_22C90402C();
                  v720 = sub_22C9063CC();
                  v721 = sub_22C90AACC();
                  if (os_log_type_enabled(v720, v721))
                  {
                    v722 = swift_slowAlloc();
                    *v722 = 0;
                    _os_log_impl(&dword_22C366000, v720, v721, "inserting pickOne expression into plan", v722, 2u);
                    MEMORY[0x2318B9880](v722, -1, -1);
                  }

                  (*(v1030 + 8))(v719, v1031);
                  sub_22C9068FC();
                  v723 = v982;
                  v1106 = *(v1107 + 2);
                  (v1106)(v982, v1091, v1105);
                  v724 = v1050;
                  MEMORY[0x2318B4810](v723);
                  v725 = *MEMORY[0x277D1DAE8];
                  v726 = *(v1095 + 13);
                  v1095 += 104;
                  v726(v724, v725, v559);
                  sub_22C9070BC();
                  LOBYTE(v1109) = 1;
                  v727 = v987;
                  sub_22C90708C();
                  v728 = v977;
                  v718(v977, v727, v1096);
                  sub_22C5916E4();
                  v311 = v729;
                  v1109 = v729;
                  sub_22C41D500(0, 0, 1, v728);
                  v730 = v970;
                  sub_22C3DB138(v1090, v970, &qword_27D9BC028, &unk_22C9134B0);
                  v731 = v1087;
                  if (sub_22C370B74(v730, 1, v1087) == 1)
                  {
                    sub_22C36DD28(v730, &qword_27D9BC028, &unk_22C9134B0);
                    goto LABEL_225;
                  }

                  v732 = v1081;
                  v733 = v967;
                  (*(v1081 + 32))(v967, v730, v731);
                  if (sub_22C5FB484())
                  {
                    *&v1098 = v717;
                    sub_22C9087AC();
                    v734 = v949;
                    sub_22C90882C();

                    v735 = v1089;
                    v736 = v1105;
                    v737 = v1106;
                    (v1106)(v1089, v734, v1105);
                    sub_22C5C89CC(0, v311);
                    sub_22C90707C();
                    sub_22C9068FC();
                    sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
                    v738 = *(v1107 + 9);
                    v739 = (v1107[80] + 32) & ~v1107[80];
                    v740 = swift_allocObject();
                    *(v740 + 16) = xmmword_22C90F800;
                    (v737)(v740 + v739, v734, v736);
                    v741 = v1050;
                    *v1050 = v740;
                    v742 = *MEMORY[0x277D1DEE8];
                    v743 = sub_22C906F2C();
                    (*(*(v743 - 8) + 104))(v741, v742, v743);
                    v726(v741, v1094, v1099);
                    sub_22C9070BC();
                    v1110 = 1;
                    v744 = v950;
                    sub_22C90708C();
                    v745 = v928;
                    (v1065)(v928, v744, v1096);
                    v746 = *(v311 + 16);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v1109 = v311;
                    if (!isUniquelyReferenced_nonNull_native || v746 >= *(v311 + 24) >> 1)
                    {
                      sub_22C5916E4();
                      v311 = v748;
                      v1109 = v748;
                    }

                    v749 = v1081;
                    v750 = v1053;
                    v717 = v1098;
                    sub_22C41D500(0, 0, 1, v745);
                    v717(v950, v1096);
                    v1101(v949, v1105);
                    (*(v749 + 8))(v967, v1087);
                  }

                  else
                  {
                    (*(v732 + 8))(v733, v731);
LABEL_225:
                    v735 = v1089;
                    v750 = v1053;
                  }

                  v793 = v1091;
                  v794 = v1105;
                  (v1106)(v735, v1091, v1105);
                  v795 = v1090;
                  v796 = v1086;
                  sub_22C420958(v1090, v1086, type metadata accessor for PlanPostProcessor.ExpressionContext);
                  sub_22C36C640(v796, 0, 1, v1100);
                  sub_22C6029B4();
                  v797 = v1096;
                  v717(v987, v1096);
                  (*(v1016 + 8))(v1015, v1034);
                  (*(v1039 + 8))(v1051, v750);
                  v717(v1054, v797);
                  sub_22C4207B0(v795, type metadata accessor for PlanPostProcessor.ExpressionContext);
                  sub_22C36DD28(v1104, &qword_27D9BC078, &unk_22C922810);
                  v645 = v793;
                  v646 = v794;
LABEL_227:
                  v1101(v645, v646);
                  return v311;
                }

                v787 = v930;
                (v1068)(v930, v709, v346);
                v788 = v929;
                sub_22C90702C();
                *&v1098 = v558;
                v558(v787, v346);
                v1101(v707, v656);
                v789 = v1082(v788, v559);
                if (v789 != v1094)
                {
                  v1080(v788, v559);
                  v717 = v1098;
                  goto LABEL_192;
                }

                v1093(v788, v559);
                v790 = sub_22C906F2C();
                v791 = *(v790 - 8);
                v792 = (*(v791 + 88))(v788, v790);
                v718 = v1065;
                if (v792 != *MEMORY[0x277D1DED8])
                {
                  (*(v791 + 8))(v788, v790);
                  v717 = v1098;
                  goto LABEL_193;
                }

                (*(v791 + 96))(v788, v790);
                v717 = v1098;
                if (*v788 == 1)
                {
                  goto LABEL_193;
                }

                (*(v1016 + 8))(v1015, v1034);
                (*(v1039 + 8))(v653, v1053);
                v717(v1054, v346);
LABEL_22:
                v373 = v1100;
                v311 = v1090;
LABEL_153:
                v344 = v1091;
                v345 = v1105;
                (*(v1107 + 2))(v1089, v1091, v1105);
                v629 = v1086;
                sub_22C420958(v311, v1086, type metadata accessor for PlanPostProcessor.ExpressionContext);
                sub_22C36C640(v629, 0, 1, v373);
                sub_22C6029B4();
                sub_22C4207B0(v311, type metadata accessor for PlanPostProcessor.ExpressionContext);
LABEL_154:
                v1101(v344, v345);
LABEL_155:
                sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
                v630 = v1097;
                v631 = *(v1097 + 72);
                v632 = (*(v1097 + 80) + 32) & ~*(v1097 + 80);
                v311 = swift_allocObject();
                *(v311 + 16) = xmmword_22C90F800;
                (*(v630 + 16))(v311 + v632, v1092, v346);
LABEL_156:
                sub_22C36DD28(v1104, &qword_27D9BC078, &unk_22C922810);
                return v311;
              }

              ++v550;
              (*v1079)(v557, v559);
              v448 = v1084;
              v549 = v554;
            }

            (*(v1016 + 8))(v1015, v1034);
            (*(v1039 + 8))(v1051, v1053);
            v346 = v1096;
            (*v1088)(v1054, v1096);
          }

          v311 = v1090;
          v506 = v1056;
LABEL_147:
          sub_22C3DB138(v311, v506, &qword_27D9BC028, &unk_22C9134B0);
          v621 = v1087;
          v622 = sub_22C370B74(v506, 1, v1087);
          v623 = v1081;
          v373 = v1100;
          v624 = v1067;
          if (v622 == 1)
          {
            sub_22C36DD28(v506, &qword_27D9BC028, &unk_22C9134B0);
          }

          else
          {
            (*(v1081 + 32))(v1067, v506, v621);
            if (sub_22C5FB484())
            {
              v625 = v1105;
              v1106 = *(v1107 + 2);
              (v1106)(v448, v1091, v1105);
              v626 = v1014;
              v627 = v1103;
              sub_22C4177E0(v1014);
              v1103 = v627;
              if (!v627)
              {
                sub_22C36C640(v626, 0, 1, v373);
                sub_22C6029B4();
                sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
                v634 = *(v1097 + 72);
                v635 = v625;
                v636 = (*(v1097 + 80) + 32) & ~*(v1097 + 80);
                v311 = swift_allocObject();
                v1108 = xmmword_22C90F800;
                *(v311 + 16) = xmmword_22C90F800;
                sub_22C9068FC();
                sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
                v637 = *(v1107 + 9);
                v638 = (v1107[80] + 32) & ~v1107[80];
                v639 = swift_allocObject();
                *(v639 + 16) = v1108;
                v640 = v1091;
                (v1106)(v639 + v638, v1091, v635);
                v641 = v1050;
                *v1050 = v639;
                v642 = *MEMORY[0x277D1DEE8];
                v643 = sub_22C906F2C();
                (*(*(v643 - 8) + 104))(v641, v642, v643);
                v644 = (*(v1095 + 13))(v641, v1094, v1099);
                MEMORY[0x2318B4570](v644);
                sub_22C9070BC();
                LOBYTE(v1109) = 1;
                sub_22C90708C();
                (*(v623 + 8))(v1067, v1087);
                sub_22C4207B0(v1090, type metadata accessor for PlanPostProcessor.ExpressionContext);
                sub_22C36DD28(v1104, &qword_27D9BC078, &unk_22C922810);
                v645 = v640;
                v646 = v635;
                goto LABEL_227;
              }

              v628 = v1101;
              v1101(v448, v625);
              (*(v623 + 8))(v624, v1087);
              sub_22C4207B0(v311, type metadata accessor for PlanPostProcessor.ExpressionContext);
              sub_22C36DD28(v1104, &qword_27D9BC078, &unk_22C922810);
              v628(v1091, v625);
              return v311;
            }

            (*(v623 + 8))(v624, v621);
          }

          goto LABEL_153;
        }

        (*(v438 + 8))(v440, v346);
        (*(v1095 + 1))(v441, v322);
      }

      v311 = v1090;
      v506 = v1056;
      v448 = v1084;
      goto LABEL_147;
    }

    v352 = v1105;
    if (v326 == *MEMORY[0x277D1DAC0])
    {
      (*(v324 + 12))(v226, v322);
      v353 = v1079;
      v354 = v1078;
      v355 = v1080;
      (*(v1079 + 4))(v1078, v226, v1080);
      v356 = v1077;
      sub_22C3DB138(v1104, v1077, &qword_27D9BC078, &unk_22C922810);
      v357 = v1100;
      if (sub_22C370B74(v356, 1, v1100) == 1)
      {
        (*(v353 + 1))(v354, v355);
        v335 = &qword_27D9BC078;
        v336 = &unk_22C922810;
        v337 = v356;
        goto LABEL_97;
      }

      v393 = v1060;
      sub_22C42074C(v356, v1060);
      sub_22C906FDC();
      v394 = v1086;
      sub_22C420958(v393, v1086, type metadata accessor for PlanPostProcessor.ExpressionContext);
      sub_22C36C640(v394, 0, 1, v357);
      sub_22C6029B4();
      sub_22C4207B0(v393, type metadata accessor for PlanPostProcessor.ExpressionContext);
      (*(v353 + 1))(v354, v355);
LABEL_105:
      v346 = v1096;
      goto LABEL_155;
    }

    v380 = v1100;
    if (v326 == *MEMORY[0x277D1DAA0])
    {
      v381 = v226;
      (*(v324 + 12))(v226, v322);
      v382 = v1072;
      v383 = v1063;
      v384 = v1064;
      (*(v1072 + 32))(v1063, v381, v1064);
      v385 = v1058;
      sub_22C3DB138(v1104, v1058, &qword_27D9BC078, &unk_22C922810);
      v386 = sub_22C370B74(v385, 1, v380);
      v346 = v1096;
      if (v386 == 1)
      {
        (*(v382 + 8))(v383, v384);
        v387 = v385;
        goto LABEL_28;
      }

      v416 = v1042;
      sub_22C42074C(v385, v1042);
      sub_22C906DAC();
      v417 = v1086;
      sub_22C420958(v416, v1086, type metadata accessor for PlanPostProcessor.ExpressionContext);
      sub_22C36C640(v417, 0, 1, v380);
      sub_22C6029B4();
      sub_22C906DBC();
      sub_22C420958(v416, v417, type metadata accessor for PlanPostProcessor.ExpressionContext);
      sub_22C36C640(v417, 0, 1, v1100);
      sub_22C6029B4();
      sub_22C4207B0(v416, type metadata accessor for PlanPostProcessor.ExpressionContext);
      v414 = *(v1072 + 8);
      v415 = v383;
LABEL_48:
      v414(v415, v384);
      goto LABEL_155;
    }

    if (v326 == *MEMORY[0x277D1DA98])
    {
      v411 = *(v324 + 12);
      v411(v226, v322);
      v311 = v1057;
      v412 = v226;
      v384 = v1055;
      (v1065[4])(v1057, v412, v1055);
      v413 = v1040;
      sub_22C3DB138(v1104, v1040, &qword_27D9BC078, &unk_22C922810);
      if (sub_22C370B74(v413, 1, v380) == 1)
      {
        sub_22C36DD28(v413, &qword_27D9BC078, &unk_22C922810);
        v346 = v1096;
LABEL_46:
        v414 = v1065[1];
        v415 = v1057;
        goto LABEL_48;
      }

      v1107 = v411;
      v495 = v327;
      v392 = v1029;
      v496 = sub_22C42074C(v413, v1029);
      v497 = *(v1108 + *(v1085 + 32));
      MEMORY[0x28223BE20](v496);
      *(&v914 - 2) = v311;
      v498 = v1017;
      v499 = v1103;
      sub_22C6B0590();
      v1103 = v499;
      v346 = v1096;
      if (sub_22C370B74(v498, 1, v1096) == 1)
      {
        sub_22C36DD28(v498, &qword_27D9BAA18, &qword_22C911C40);
        type metadata accessor for PlanPostProcessorError(0);
        sub_22C4208F4(&qword_27D9BC088, type metadata accessor for PlanPostProcessorError);
        v500 = swift_allocError();
        sub_22C9068FC();
        swift_storeEnumTagMultiPayload();
        v1103 = v500;
        swift_willThrow();
        sub_22C4207B0(v392, type metadata accessor for PlanPostProcessor.ExpressionContext);
        sub_22C36DD28(v1104, &qword_27D9BC078, &unk_22C922810);
        v501 = v1065[1];
        v502 = v311;
LABEL_205:
        v501(v502, v1055);
        return v311;
      }

      v570 = v1097;
      v571 = v1009;
      (*(v1097 + 32))(v1009, v498, v346);
      v350 = v1001;
      sub_22C90702C();
      if (v1082(v350, v322) == v495)
      {
        v572 = v974;
        (*(v1095 + 2))(v974, v350, v322);
        (v1107)(v572, v322);
        v573 = sub_22C906F2C();
        v574 = *(v573 - 8);
        v575 = (*(v574 + 88))(v572, v573);
        if (v575 == *MEMORY[0x277D1DED0])
        {
          v576 = v958;
          v577 = sub_22C417F2C(v958);
          MEMORY[0x2318B4220](v577);
          v578 = v1086;
          sub_22C420958(v576, v1086, type metadata accessor for PlanPostProcessor.ExpressionContext);
          v579 = v1100;
          sub_22C36C640(v578, 0, 1, v1100);
          sub_22C6029B4();
          sub_22C906D6C();
          v580 = v957;
          sub_22C41840C(v957);
          sub_22C4186E4(v578);
          sub_22C4207B0(v580, type metadata accessor for PlanPostProcessor.ExpressionContext);
          sub_22C36C640(v578, 0, 1, v579);
          v392 = v1029;
          sub_22C6029B4();
          v581 = v576;
          v350 = v1001;
LABEL_246:
          sub_22C4207B0(v581, type metadata accessor for PlanPostProcessor.ExpressionContext);
          (*(v1097 + 8))(v1009, v346);
          sub_22C4207B0(v392, type metadata accessor for PlanPostProcessor.ExpressionContext);
          (*(v1095 + 1))(v350, v322);
          v384 = v1055;
          goto LABEL_46;
        }

        v388 = v1100;
        if (v575 == *MEMORY[0x277D1DEF8])
        {
          (*(v574 + 96))(v572, v573);
          v679 = v572[1];
          v1107 = *v572;
          v680 = v961;
          sub_22C41840C(v961);
          v681 = v680;
          v311 = v960;
          v682 = sub_22C420958(v681, v960, type metadata accessor for PlanPostProcessor.ExpressionContext);
          v683 = v936;
          MEMORY[0x2318B4220](v682);
          v419 = v934;
          sub_22C605618(v683, v933);
          v1101(v683, v352);
          if (sub_22C370B74(v419, 1, v388) == 1)
          {
            sub_22C36DD28(v419, &qword_27D9BC078, &unk_22C922810);
          }

          else
          {
LABEL_240:
            sub_22C4207B0(v311, type metadata accessor for PlanPostProcessor.ExpressionContext);
            sub_22C42074C(v419, v311);
          }

          v812 = *(v388 + 5);
          v813 = v1033;
          sub_22C907D5C();
          v814 = sub_22C90768C();
          v816 = v815;
          (*(v1069 + 8))(v813, v1066);
          v817 = sub_22C907D2C();
          v819 = v818;
          v820 = sub_22C90704C();
          if (v820 == 2 || (v820 & 1) == 0)
          {
            MEMORY[0x2318B4220]();
            v1107 = sub_22C90A27C();

            v824 = sub_22C4165AC(v814, v816, v817, v819, v1029);

            v823 = v1086;
            v825 = v960;
            sub_22C4189AC(v1107, v824, v1086);

            v822 = v825;
            v392 = v1029;
          }

          else
          {

            MEMORY[0x2318B4220](v821);
            v822 = v960;
            v823 = v1086;
            sub_22C420958(v960, v1086, type metadata accessor for PlanPostProcessor.ExpressionContext);
          }

          v826 = v1100;
          sub_22C36C640(v823, 0, 1, v1100);
          sub_22C6029B4();
          sub_22C906D6C();
          v581 = v961;
          sub_22C4186E4(v823);
          sub_22C36C640(v823, 0, 1, v826);
          sub_22C6029B4();
          sub_22C4207B0(v822, type metadata accessor for PlanPostProcessor.ExpressionContext);
          v346 = v1096;
          v322 = v1099;
          goto LABEL_246;
        }

        (*(v574 + 8))(v572, v573);
        v570 = v1097;
        v571 = v1009;
      }

      type metadata accessor for PlanPostProcessorError(0);
      sub_22C4208F4(&qword_27D9BC088, type metadata accessor for PlanPostProcessorError);
      v754 = swift_allocError();
      sub_22C9068FC();
      swift_storeEnumTagMultiPayload();
      v1103 = v754;
      swift_willThrow();
      v755 = *(v570 + 8);
      v311 = v570 + 8;
      v755(v571, v346);
      sub_22C4207B0(v392, type metadata accessor for PlanPostProcessor.ExpressionContext);
      sub_22C36DD28(v1104, &qword_27D9BC078, &unk_22C922810);
      (*(v1095 + 1))(v350, v322);
      v501 = v1065[1];
      v502 = v1057;
      goto LABEL_205;
    }

    if (v326 == *MEMORY[0x277D1DA50])
    {
      v452 = *(v324 + 12);
      v452(v226, v322);
      v453 = v226;
      v454 = v1052;
      v455 = (*(v1048 + 32))(v1052, v453, v1049);
      v456 = v1085;
      v457 = v1108;
      v458 = *(v1108 + *(v1085 + 32));
      MEMORY[0x28223BE20](v455);
      *(&v914 - 2) = v454;
      v459 = v1018;
      v460 = v1103;
      sub_22C6B0590();
      v1103 = v460;
      v346 = v1096;
      if (sub_22C370B74(v459, 1, v1096) == 1)
      {
        v461 = v457 + *(v456 + 24);
        v462 = v1070;
        v463 = sub_22C90878C();
        v464 = v1089;
        MEMORY[0x2318B5880](v463);
        v465 = v1023;
        sub_22C646D68(v464, v466, v467, v468, v469, v470, v471, v472, v914, v915, v916, v917, v918, v919, v920, v921, v922, v923, v924, v925);
        v1101(v464, v352);
        (*(v1074 + 8))(v462, v1071);
        v473 = sub_22C370B74(v459, 1, v346);
        v474 = v1022;
        if (v473 != 1)
        {
          sub_22C36DD28(v459, &qword_27D9BAA18, &qword_22C911C40);
        }
      }

      else
      {
        v465 = v1023;
        (*(v1097 + 32))(v1023, v459, v346);
        sub_22C36C640(v465, 0, 1, v346);
        v474 = v1022;
      }

      v562 = v1021;
      sub_22C3DB138(v465, v1021, &qword_27D9BAA18, &qword_22C911C40);
      if (sub_22C370B74(v562, 1, v346) == 1)
      {
        sub_22C36DD28(v465, &qword_27D9BAA18, &qword_22C911C40);
        sub_22C36DD28(v562, &qword_27D9BAA18, &qword_22C911C40);
      }

      else
      {
        v311 = v1097;
        (*(v1097 + 32))(v474, v562, v346);
        v612 = v995;
        sub_22C90702C();
        v613 = v1099;
        if (v1082(v612, v1099) == *MEMORY[0x277D1DA78])
        {
          v452(v612, v613);
          v614 = v1007;
          v615 = v975;
          v616 = v1008;
          (*(v1007 + 32))(v975, v612, v1008);
          v617 = v976;
          sub_22C906ABC();
          v618 = v1103;
          v619 = sub_22C418E5C(v1052, v617, v1092);
          v1103 = v618;
          if (!v618)
          {
            v311 = v619;
          }

          (*(v1069 + 8))(v617, v1066);
          (*(v614 + 8))(v615, v616);
          (*(v1097 + 8))(v474, v346);
          sub_22C36DD28(v465, &qword_27D9BAA18, &qword_22C911C40);
          sub_22C36DD28(v1104, &qword_27D9BC078, &unk_22C922810);
          (*(v1048 + 8))(v1052, v1049);
          return v311;
        }

        (*(v311 + 8))(v474, v346);
        sub_22C36DD28(v465, &qword_27D9BAA18, &qword_22C911C40);
        (*(v1095 + 1))(v612, v613);
      }

      (*(v1048 + 8))(v1052, v1049);
      goto LABEL_155;
    }

    LODWORD(v1094) = *MEMORY[0x277D1DAA8];
    v346 = v1096;
    if (v326 == *MEMORY[0x277D1DA78])
    {
      (*(v324 + 12))(v226, v322);
      v507 = v1007;
      v508 = v992;
      v509 = v1008;
      (*(v1007 + 32))(v992, v226, v1008);
      v510 = sub_22C906A8C();
      v511 = v994;
      sub_22C906ABC();
      v512 = v1103;
      v513 = sub_22C412664(v510, v511, v1092);
      v1103 = v512;
      if (!v512)
      {
        v311 = v513;
      }

      (*(v1069 + 8))(v511, v1066);
      (*(v507 + 8))(v508, v509);
      goto LABEL_156;
    }

    if (v326 != *MEMORY[0x277D1DA48])
    {
      if (v326 == *MEMORY[0x277D1DAE8])
      {
        (*(v324 + 12))(v226, v322);
        v647 = v963;
        v648 = v962;
        v649 = v964;
        (*(v963 + 32))(v962, v338, v964);
        v650 = v953;
        sub_22C3DB138(v1104, v953, &qword_27D9BC078, &unk_22C922810);
        if (sub_22C370B74(v650, 1, v380) != 1)
        {
          v751 = v941;
          v752 = sub_22C42074C(v650, v941);
          MEMORY[0x2318B4800](v752);
          v753 = v1086;
          sub_22C417F2C(v1086);
          sub_22C36C640(v753, 0, 1, v380);
          sub_22C6029B4();
          sub_22C4207B0(v751, type metadata accessor for PlanPostProcessor.ExpressionContext);
          (*(v647 + 8))(v648, v649);
          goto LABEL_155;
        }

        (*(v647 + 8))(v648, v649);
        v387 = v650;
      }

      else
      {
        if (v326 == *MEMORY[0x277D1DAE0])
        {
          (*(v324 + 12))(v226, v322);
          v687 = v945;
          v311 = v1004;
          v688 = v946;
          (*(v945 + 32))(v1004, v226, v946);
          v427 = v932;
          sub_22C3DB138(v1104, v932, &qword_27D9BC078, &unk_22C922810);
          if (sub_22C370B74(v427, 1, v380) != 1)
          {
            sub_22C42074C(v427, v931);
            v689 = sub_22C41840C(v1003);
            v1106 = MEMORY[0x2318B47E0](v689);
            v690 = v1108;
            v691 = v1002;
            v1100 = v1106[2];
            if (v1100)
            {
              v692 = 0;
              v1099 = v1106 + ((v1107[80] + 32) & ~v1107[80]);
              do
              {
                if (v692 >= v1106[2])
                {
                  goto LABEL_289;
                }

                v693 = *(v1107 + 9);
                v694 = *(v1107 + 2);
                v694(v691, v1099 + v693 * v692, v352);
                sub_22C420958(v1003, v1028, type metadata accessor for PlanPostProcessor.ExpressionContext);
                v695 = *v690;
                swift_isUniquelyReferenced_nonNull_native();
                v696 = *v690;
                v1109 = v696;
                sub_22C628274();
                if (__OFADD__(*(v696 + 16), (v698 & 1) == 0))
                {
LABEL_290:
                  __break(1u);
                  goto LABEL_291;
                }

                v699 = v697;
                v700 = v698;
                sub_22C3A5908(&qword_27D9BC080, &qword_22C911F38);
                if (sub_22C90B15C())
                {
                  v691 = v1002;
                  sub_22C628274();
                  v352 = v1105;
                  if ((v700 & 1) != (v702 & 1))
                  {
                    goto LABEL_295;
                  }

                  v699 = v701;
                }

                else
                {
                  v352 = v1105;
                  v691 = v1002;
                }

                v703 = v1109;
                if (v700)
                {
                  sub_22C420808(v1028, v1109[7] + *(v1093 + 9) * v699);
                  v1101(v691, v352);
                }

                else
                {
                  v1109[(v699 >> 6) + 8] |= 1 << v699;
                  v694((v703[6] + v699 * v693), v691, v352);
                  sub_22C42074C(v1028, v703[7] + *(v1093 + 9) * v699);
                  v1101(v691, v352);
                  v704 = v703[2];
                  v432 = __OFADD__(v704, 1);
                  v705 = v704 + 1;
                  if (v432)
                  {
                    goto LABEL_293;
                  }

                  v703[2] = v705;
                }

                v311 = v1004;
                ++v692;
                v706 = v1108;
                *v1108 = v703;
                v690 = v706;
              }

              while (v1100 != v692);
            }

            sub_22C4207B0(v1003, type metadata accessor for PlanPostProcessor.ExpressionContext);
            sub_22C4207B0(v931, type metadata accessor for PlanPostProcessor.ExpressionContext);
            (*(v945 + 8))(v311, v946);
            goto LABEL_105;
          }
        }

        else
        {
          if (v326 != *MEMORY[0x277D1DAB8])
          {
            sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
            v834 = v324;
            v835 = v1097;
            v836 = *(v1097 + 72);
            v837 = (*(v1097 + 80) + 32) & ~*(v1097 + 80);
            v311 = swift_allocObject();
            *(v311 + 16) = xmmword_22C90F800;
            (*(v835 + 16))(v311 + v837, v1092, v346);
            sub_22C36DD28(v1104, &qword_27D9BC078, &unk_22C922810);
            (*(v834 + 1))(v226, v322);
            return v311;
          }

          (*(v324 + 12))(v226, v322);
          v687 = v924;
          v311 = v980;
          v688 = v925;
          (*(v924 + 32))(v980, v226, v925);
          v427 = v920;
          sub_22C3DB138(v1104, v920, &qword_27D9BC078, &unk_22C922810);
          if (sub_22C370B74(v427, 1, v380) != 1)
          {
            goto LABEL_266;
          }
        }

        (*(v687 + 8))(v311, v688);
        v387 = v427;
      }

LABEL_28:
      sub_22C36DD28(v387, &qword_27D9BC078, &unk_22C922810);
      goto LABEL_155;
    }

    LODWORD(v1091) = v326;
    v598 = v1105;
    v1093 = *(v324 + 12);
    v1090 = (v324 + 96);
    v1093(v226, v322);
    v599 = v1039;
    v600 = v996;
    v601 = v1053;
    (*(v1039 + 32))(v996, v226, v1053);
    v602 = *(v599 + 16);
    v1106 = (v599 + 16);
    *&v1098 = v602;
    v603 = v602(v1006, v600, v601);
    v604 = MEMORY[0x2318B57A0](v603);
    v605 = v1010;
    sub_22C6053E0(v604, v1010);

    v606 = sub_22C9082BC();
    sub_22C602B1C(v605, 0x726575715F776172, 0xE900000000000079);
    v606(&v1109, 0);
    sub_22C36C640(v605, 1, 1, v598);
    v607 = sub_22C9082BC();
    sub_22C602B1C(v605, 0x7972657571, 0xE500000000000000);
    v607(&v1109, 0);
    if (sub_22C370B74(v1104, 1, v1100) == 1)
    {
      LODWORD(v1086) = 0;
      v608 = v1108;
      v609 = v598;
      v610 = v1099;
      v611 = v1081;
      goto LABEL_210;
    }

    v684 = MEMORY[0x2318B57A0]();
    v685 = v955;
    sub_22C6053E0(v684, v955);

    v686 = sub_22C370B74(v685, 1, v598);
    v611 = v1081;
    if (v686 == 1)
    {
      sub_22C36DD28(v685, &qword_27D9BC030, &unk_22C911CC0);
      LODWORD(v1086) = 1;
      v608 = v1108;
    }

    else
    {
      v756 = v935;
      v757 = (*(v1107 + 4))(v935, v685, v598);
      v608 = v1108;
      v758 = *(v1108 + *(v1085 + 32));
      MEMORY[0x28223BE20](v757);
      *(&v914 - 2) = v756;
      v759 = v942;
      v760 = v1103;
      sub_22C6B0590();
      v1103 = v760;
      v761 = v1096;
      if (sub_22C370B74(v759, 1, v1096) != 1)
      {
        v827 = v1097;
        v828 = v922;
        (*(v1097 + 32))(v922, v759, v761);
        v829 = v921;
        sub_22C90702C();
        (*(v827 + 8))(v828, v761);
        v610 = v1099;
        v830 = v1082(v829, v1099);
        if (v830 != v1094)
        {
          (*(v1095 + 1))(v829, v610);
          v911 = v756;
          v609 = v1105;
          v1101(v911, v1105);
          LODWORD(v1086) = 1;
          v608 = v1108;
LABEL_210:
          v762 = v1100;
          v763 = v973;
          sub_22C3DB138(v1104, v973, &qword_27D9BC078, &unk_22C922810);
          v764 = sub_22C370B74(v763, 1, v762);
          v765 = v1087;
          if (v764 == 1)
          {
            sub_22C36DD28(v763, &qword_27D9BC078, &unk_22C922810);
            if (v1086)
            {
              v766 = v608 + *(v1085 + 24);
              sub_22C9087AC();
              v767 = v954;
              sub_22C90882C();

              sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
              *&v1108 = *(v1097 + 72);
              v768 = (*(v1097 + 80) + 32) & ~*(v1097 + 80);
              v311 = swift_allocObject();
              *(v311 + 16) = xmmword_22C90F870;
              sub_22C9068FC();
              v1107 = *(v1107 + 2);
              v769 = v609;
              v770 = v982;
              (v1107)(v982, v767, v769);
              v771 = v1050;
              MEMORY[0x2318B4810](v770);
              (*(v1095 + 13))(v771, *MEMORY[0x277D1DAE8], v610);
              sub_22C9070BC();
              LOBYTE(v1109) = 1;
              sub_22C90708C();
              v772 = v767;
              v773 = v1105;
              (v1107)(v938, v772, v1105);
              sub_22C90702C();
              sub_22C9070CC();
              MEMORY[0x2318B4580]();
              sub_22C9070BC();
              LOBYTE(v1109) = 1;
              sub_22C90708C();
              v1101(v954, v773);
              v774 = *(v1039 + 8);
              v775 = v1053;
              v774(v1006, v1053);
              v776 = v996;
              v777 = v775;
            }

            else
            {
              sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
              v782 = *(v1097 + 72);
              v783 = (*(v1097 + 80) + 32) & ~*(v1097 + 80);
              v311 = swift_allocObject();
              *(v311 + 16) = xmmword_22C90F800;
              sub_22C9068FC();
              v784 = v939;
              v785 = v1006;
              v786 = v1053;
              (v1098)(v939, v1006, v1053);
              (*(v1095 + 13))(v784, v1091, v610);
              sub_22C9070CC();
              MEMORY[0x2318B4580]();
              sub_22C9070BC();
              LOBYTE(v1109) = 1;
              sub_22C90708C();
              v774 = *(v1039 + 8);
              v774(v785, v786);
              v776 = v996;
              v777 = v786;
            }

            v774(v776, v777);
            goto LABEL_156;
          }

          v778 = v981;
          sub_22C42074C(v763, v981);
          v779 = v986;
          sub_22C3DB138(v778, v986, &qword_27D9BC028, &unk_22C9134B0);
          if (sub_22C370B74(v779, 1, v765))
          {
            v780 = v965;
            sub_22C36C640(v965, 1, 1, v765);
            v781 = v1097;
          }

          else
          {
            v798 = v926;
            (*(v611 + 16))(v926, v779, v765);
            v799 = v965;
            sub_22C5FB388(v965);
            v800 = v798;
            v780 = v799;
            (*(v611 + 8))(v800, v765);
            v801 = sub_22C370B74(v799, 1, v765);
            v781 = v1097;
            if (v801 != 1)
            {
              v838 = v780;
              v839 = *(v611 + 32);
              v840 = v918;
              v839(v918, v838, v765);
              sub_22C36DD28(v779, &qword_27D9BC028, &unk_22C9134B0);
              v839(v779, v840, v765);
              sub_22C36C640(v779, 0, 1, v765);
LABEL_230:
              if (!*(sub_22C9082EC() + 16))
              {
                v802 = *(v981 + v762[7]);
                if (*(v802 + 16))
                {

                  v803 = *(v802 + 16);
                  if (v803)
                  {
                    v1109 = MEMORY[0x277D84F90];
                    sub_22C3B7040(0, v803, 0);
                    v804 = v1109;
                    v1100 = *(v1000 + 16);
                    *&v1098 = (*(v1000 + 80) + 32) & ~*(v1000 + 80);
                    v805 = v802 + v1098;
                    v1093 = *(v1000 + 72);
                    v1090 = (v1000 + 8);
                    v1000 += 16;
                    v1088 = v1000 + 16;
                    v806 = v999;
                    v807 = v917;
                    do
                    {
                      v1106 = v803;
                      v808 = v997;
                      (v1100)(v997, v805, v806);
                      sub_22C90825C();
                      sub_22C90826C();
                      sub_22C90823C();
                      v806 = v999;
                      sub_22C90824C();
                      (*v1090)(v808, v806);
                      v1109 = v804;
                      v810 = *(v804 + 16);
                      v809 = *(v804 + 24);
                      if (v810 >= v809 >> 1)
                      {
                        sub_22C3B7040(v809 > 1, v810 + 1, 1);
                        v804 = v1109;
                      }

                      *(v804 + 16) = v810 + 1;
                      v811 = v1093;
                      (*v1088)(v804 + v1098 + v810 * v1093, v807, v806);
                      v805 += v811;
                      v803 = v1106 - 1;
                    }

                    while (v1106 != 1);
                  }
                }

                v781 = v1097;
              }

              sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
              v841 = *(v781 + 72);
              v842 = ((*(v781 + 80) + 32) & ~*(v781 + 80));
              v311 = swift_allocObject();
              v1098 = xmmword_22C90F800;
              *(v311 + 16) = xmmword_22C90F800;
              v843 = sub_22C9068FC();
              v844 = v1006;
              MEMORY[0x2318B57A0](v843);
              sub_22C3DB138(v986, v966, &qword_27D9BC028, &unk_22C9134B0);
              v845 = v959;
              sub_22C90829C();
              v846 = *(v1095 + 13);
              v1095 += 104;
              v1106 = v846;
              (v846)(v845, v1091, v1099);
              sub_22C9070CC();
              MEMORY[0x2318B4580]();
              sub_22C9070BC();
              LOBYTE(v1109) = 1;
              v1100 = v842;
              sub_22C90708C();
              if (v1086)
              {
                v847 = v943;
                sub_22C90402C();
                v848 = sub_22C9063CC();
                v849 = sub_22C90AACC();
                if (os_log_type_enabled(v848, v849))
                {
                  v850 = swift_slowAlloc();
                  *v850 = 0;
                  _os_log_impl(&dword_22C366000, v848, v849, "inserting pickOne expression into plan", v850, 2u);
                  MEMORY[0x2318B9880](v850, -1, -1);
                }

                (*(v1030 + 8))(v847, v1031);
                v1088 = *(v1085 + 24);
                sub_22C9087AC();
                v851 = v947;
                sub_22C90882C();

                v852 = (v1107 + 16);
                v853 = *(v1107 + 2);
                v854 = v1105;
                v853(v1089, v851, v1105);
                sub_22C5C89CC(0, v311);
                sub_22C90707C();
                sub_22C9068FC();
                v855 = v982;
                v1093 = v852;
                v1091 = v853;
                v853(v982, v851, v854);
                v856 = v1050;
                MEMORY[0x2318B4810](v855);
                (v1106)(v856, *MEMORY[0x277D1DAE8], v1099);
                sub_22C9070BC();
                LOBYTE(v1109) = 1;
                v857 = v948;
                sub_22C90708C();
                v859 = v1096;
                v858 = v1097;
                v860 = v977;
                v1090 = *(v1097 + 16);
                (v1090)(v977, v857, v1096);
                swift_isUniquelyReferenced_nonNull_native();
                sub_22C5916E4();
                v311 = v861;
                v1109 = v861;
                sub_22C41D500(0, 0, 1, v860);
                v862 = v944;
                sub_22C3DB138(v981, v944, &qword_27D9BC028, &unk_22C9134B0);
                v863 = v1087;
                if (sub_22C370B74(v862, 1, v1087) == 1)
                {
                  (*(v858 + 8))(v857, v859);
                  v1101(v851, v1105);
                  v864 = *(v1039 + 8);
                  v865 = v1053;
                  v864(v1006, v1053);
                  v864(v996, v865);
                  sub_22C36DD28(v1104, &qword_27D9BC078, &unk_22C922810);
                  v866 = &qword_27D9BC028;
                  v867 = &unk_22C9134B0;
                  v868 = v862;
LABEL_284:
                  sub_22C36DD28(v868, v866, v867);
                  sub_22C36DD28(v986, &qword_27D9BC028, &unk_22C9134B0);
                  sub_22C4207B0(v981, type metadata accessor for PlanPostProcessor.ExpressionContext);
                  return v311;
                }

                v871 = v1081;
                v872 = v927;
                (*(v1081 + 32))(v927, v862, v863);
                if (sub_22C5FB484())
                {
                  sub_22C9087AC();
                  v873 = v923;
                  sub_22C90882C();

                  v874 = v1105;
                  v875 = v1091;
                  (v1091)(v1089, v873, v1105);
                  sub_22C5C89CC(0, v311);
                  sub_22C90707C();
                  sub_22C9068FC();
                  sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
                  v876 = *(v1107 + 9);
                  v877 = (v1107[80] + 32) & ~v1107[80];
                  v878 = swift_allocObject();
                  *(v878 + 16) = v1098;
                  (v875)(v878 + v877, v873, v874);
                  v879 = v1050;
                  *v1050 = v878;
                  v880 = *MEMORY[0x277D1DEE8];
                  v881 = sub_22C906F2C();
                  (*(*(v881 - 8) + 104))(v879, v880, v881);
                  (v1106)(v879, v1094, v1099);
                  sub_22C9070BC();
                  v1110 = 1;
                  v882 = v915;
                  sub_22C90708C();
                  v883 = v916;
                  v884 = v1096;
                  (v1090)(v916, v882, v1096);
                  v885 = *(v311 + 16);
                  v886 = swift_isUniquelyReferenced_nonNull_native();
                  v1109 = v311;
                  if (!v886 || v885 >= *(v311 + 24) >> 1)
                  {
                    sub_22C5916E4();
                    v311 = v887;
                    v1109 = v887;
                  }

                  v888 = v1097;
                  v889 = v1081;
                  sub_22C41D500(0, 0, 1, v883);
                  v890 = *(v888 + 8);
                  v890(v882, v884);
                  v891 = v1105;
                  v892 = v1101;
                  v1101(v923, v1105);
                  (*(v889 + 8))(v927, v1087);
                  v890(v948, v884);
                  v892(v947, v891);
                }

                else
                {
                  (*(v871 + 8))(v872, v863);
                  (*(v1097 + 8))(v948, v1096);
                  v1101(v947, v1105);
                }

                v869 = *(v1039 + 8);
                v870 = v1006;
              }

              else
              {
                v869 = *(v1039 + 8);
                v870 = v844;
              }

              v912 = v1053;
              v869(v870, v1053);
              v869(v996, v912);
              v866 = &qword_27D9BC078;
              v867 = &unk_22C922810;
              v868 = v1104;
              goto LABEL_284;
            }
          }

          sub_22C36DD28(v780, &qword_27D9BC028, &unk_22C9134B0);
          goto LABEL_230;
        }

        v1093(v829, v610);
        v831 = sub_22C906F2C();
        v832 = *(v831 - 8);
        if ((*(v832 + 88))(v829, v831) == *v339)
        {
          (*(v832 + 96))(v829, v831);
          LODWORD(v1086) = *v829;
          v833 = v756;
          v609 = v1105;
          v1101(v833, v1105);
        }

        else
        {
          (*(v832 + 8))(v829, v831);
          v913 = v756;
          v609 = v1105;
          v1101(v913, v1105);
          LODWORD(v1086) = 1;
        }

        v608 = v1108;
LABEL_209:
        v610 = v1099;
        goto LABEL_210;
      }

      sub_22C36DD28(v759, &qword_27D9BAA18, &qword_22C911C40);
      v1101(v756, v598);
      LODWORD(v1086) = 1;
    }

    v609 = v598;
    goto LABEL_209;
  }

  LODWORD(v1091) = v326;
  v329 = MEMORY[0x277D1DEF8];
  (*(v324 + 12))(v226, v322);
  v330 = sub_22C906F2C();
  v331 = *(v330 - 8);
  v332 = (*(v331 + 88))(v226, v330);
  if (v332 == *v329)
  {
    v333 = v332;
    (*(v331 + 96))(v226, v330);
    v334 = v226[1];
    v1106 = *v226;
    sub_22C3DB138(v1104, v316, &qword_27D9BC078, &unk_22C922810);
    v311 = v1100;
    if (sub_22C370B74(v316, 1, v1100) == 1)
    {

      v335 = &qword_27D9BC078;
      v336 = &unk_22C922810;
      v337 = v316;
LABEL_97:
      sub_22C36DD28(v337, v335, v336);
      goto LABEL_105;
    }

    v358 = v330;
    v359 = v331;
    *&v1098 = v358;
    v360 = v1088;
    sub_22C42074C(v316, v1088);
    if (*(v360 + *(v311 + 24)) == 1)
    {
      v361 = v1106;
      v362 = sub_22C90A27C();
      v364 = v363;
      v365 = v362 == v361 && v363 == v334;
      if (v365 || (v366 = v362, (sub_22C90B4FC() & 1) != 0))
      {
        sub_22C4207B0(v1088, type metadata accessor for PlanPostProcessor.ExpressionContext);

        goto LABEL_105;
      }

      v475 = v1036;
      sub_22C903F8C();

      v476 = sub_22C9063CC();
      v477 = sub_22C90AACC();

      *&v1108 = v476;
      if (os_log_type_enabled(v476, v477))
      {
        v478 = swift_slowAlloc();
        v479 = swift_slowAlloc();
        v1109 = v479;
        *v478 = 136315138;
        v480 = sub_22C36F9F4(v361, v334, &v1109);

        *(v478 + 4) = v480;
        v481 = v1108;
        _os_log_impl(&dword_22C366000, v1108, v477, "converting property index to camelCase: '%s'", v478, 0xCu);
        sub_22C36FF94(v479);
        MEMORY[0x2318B9880](v479, -1, -1);
        MEMORY[0x2318B9880](v478, -1, -1);

        (*(v1030 + 8))(v1036, v1031);
      }

      else
      {

        (*(v1030 + 8))(v475, v1031);
      }

      v563 = v1095;
      v564 = v1096;
      v565 = v1097;
      v566 = v1019;
      (*(v1097 + 16))(v1019, v1092, v1096);
      v567 = v1050;
      *v1050 = v366;
      v567[1] = v364;
      (*(v359 + 104))(v567, v333, v1098);
      (*(v563 + 13))(v567, v1091, v1099);
      sub_22C90703C();
      sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
      v568 = *(v565 + 72);
      v569 = (*(v565 + 80) + 32) & ~*(v565 + 80);
      v311 = swift_allocObject();
      *(v311 + 16) = xmmword_22C90F800;
      (*(v565 + 32))(v311 + v569, v566, v564);
LABEL_127:
      v505 = v1088;
      goto LABEL_128;
    }

    v395 = v324;
    if ((sub_22C4161D4() & 1) == 0)
    {

      v435 = v1043;
      sub_22C3DB138(v360, v1043, &qword_27D9BC028, &unk_22C9134B0);
      v436 = v1087;
      if (sub_22C370B74(v435, 1, v1087) == 1)
      {
        sub_22C4207B0(v360, type metadata accessor for PlanPostProcessor.ExpressionContext);
        sub_22C36DD28(v435, &qword_27D9BC028, &unk_22C9134B0);
        v437 = v1045;
        sub_22C36C640(v1045, 1, 1, v436);
      }

      else
      {
        v437 = v1045;
        sub_22C5FB388(v1045);
        (*(v1081 + 8))(v435, v436);
        if (sub_22C370B74(v437, 1, v436) != 1)
        {
          sub_22C36DD28(v437, &qword_27D9BC028, &unk_22C9134B0);
          v582 = v1108 + *(v1085 + 24);
          sub_22C9087AC();
          v583 = v1005;
          sub_22C90882C();

          v584 = *(v1107 + 2);
          v585 = v990;
          v586 = v1105;
          v1106 = (v1107 + 16);
          v1096 = v584;
          v584(v990, v583);
          v587 = v988;
          v588 = v1103;
          sub_22C4177E0(v988);
          v1103 = v588;
          if (v588)
          {
            v589 = v1101;
            v1101(v585, v586);
            v589(v583, v586);
            v505 = v1088;
            goto LABEL_128;
          }

          sub_22C36C640(v587, 0, 1, v311);
          sub_22C6029B4();
          sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
          *&v1108 = *(v1097 + 72);
          v660 = (*(v1097 + 80) + 32) & ~*(v1097 + 80);
          v311 = swift_allocObject();
          *(v311 + 16) = xmmword_22C90F870;
          v1100 = (v311 + v660);
          sub_22C9068FC();
          sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
          v661 = *(v1107 + 9);
          v662 = (v1107[80] + 32) & ~v1107[80];
          v663 = swift_allocObject();
          *(v663 + 16) = xmmword_22C90F800;
          v664 = v1096;
          v1096(v663 + v662, v583, v586);
          v665 = v969;
          *v969 = v663;
          (*(v359 + 104))(v665, *MEMORY[0x277D1DEE8], v1098);
          (*(v395 + 13))(v665, v1091, v1099);
          sub_22C9070CC();
          sub_22C9070BC();
          LOBYTE(v1109) = 1;
          sub_22C90708C();
          v666 = v1005;
          v667 = v1105;
          v664(v1089, v1005, v1105);
          v668 = sub_22C90702C();
          MEMORY[0x2318B4580](v668);
          sub_22C9070BC();
          LOBYTE(v1109) = 1;
          sub_22C90708C();
          v1101(v666, v667);
          goto LABEL_127;
        }

        sub_22C4207B0(v360, type metadata accessor for PlanPostProcessor.ExpressionContext);
      }

      v335 = &qword_27D9BC028;
      v336 = &unk_22C9134B0;
      v337 = v437;
      goto LABEL_97;
    }

    v396 = *(v311 + 20);
    if (sub_22C907D2C() == 0x6E45686372616573 && v397 == 0xEC00000079746974)
    {
    }

    else
    {
      v399 = sub_22C90B4FC();

      if ((v399 & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    v482 = v1035;
    sub_22C907D5C();
    v483 = sub_22C90768C();
    v485 = v484;
    v486 = *(v1069 + 8);
    v1069 += 8;
    v486(v482, v1066);
    if (v483 == 0x657461676976616ELL && v485 == 0xEB000000006F745FLL)
    {
      goto LABEL_110;
    }

    v488 = sub_22C90B4FC();

    if (v488)
    {
      goto LABEL_111;
    }

    v489 = v985;
    sub_22C907D5C();
    v490 = sub_22C90768C();
    v492 = v491;
    v486(v489, v1066);
    if (v490 == 0x64656D5F79616C70 && v492 == 0xEA00000000006169)
    {
LABEL_110:
    }

    else
    {
      v494 = sub_22C90B4FC();

      if ((v494 & 1) == 0)
      {
LABEL_113:
        v545 = v1026;
        sub_22C420958(v1108, v1026, type metadata accessor for PlanPostProcessor);
        v546 = v1025;
        sub_22C9068FC();
        v547 = sub_22C9070CC();
        v548 = v1027;
        *v1027 = v1106;
        *(v548 + 8) = v334;
        swift_storeEnumTagMultiPayload();
        v311 = sub_22C416734(v548, v546, v360, v547 & 1);
        sub_22C4207B0(v548, type metadata accessor for PlanPostProcessor.ImplicitSearchRequest);
        v1101(v546, v1105);
        sub_22C4207B0(v545, type metadata accessor for PlanPostProcessor);
        v505 = v360;
        goto LABEL_128;
      }
    }

LABEL_111:
    v514 = v1033;
    sub_22C907D5C();
    v515 = sub_22C90768C();
    v517 = v516;
    v486(v514, v1066);
    v518 = sub_22C907D2C();
    v520 = sub_22C4165AC(v515, v517, v518, v519, v360);
    v522 = v521;

    if (v522)
    {

      v523 = *(v1085 + 24);
      v524 = v1108;
      v1099 = v522;
      sub_22C9087AC();
      v525 = v1037;
      sub_22C90882C();

      v526 = v1097;
      v527 = *(v1097 + 16);
      v1100 = (v1097 + 16);
      v1106 = v527;
      (v527)(v1038, v1092, v1096);
      *&v1098 = v520;
      v528 = *(v1107 + 2);
      v528(v1089, v525, v1105);
      sub_22C90707C();
      v529 = v524;
      v530 = v1012;
      sub_22C420958(v529, v1012, type metadata accessor for PlanPostProcessor);
      v531 = *(sub_22C3A5908(&qword_27D9BC098, &unk_22C911F50) + 48);
      v532 = v1013;
      v533 = v1099;
      *v1013 = v1098;
      *(v532 + 8) = v533;
      v534 = v525;
      v535 = v1105;
      v528((v532 + v531), v534, v1105);
      swift_storeEnumTagMultiPayload();
      v536 = v1011;
      sub_22C9068FC();
      v537 = sub_22C9070CC();
      v538 = sub_22C416734(v532, v536, v1088, v537 & 1);
      v539 = v1101;
      v1101(v536, v535);
      sub_22C4207B0(v532, type metadata accessor for PlanPostProcessor.ImplicitSearchRequest);
      sub_22C4207B0(v530, type metadata accessor for PlanPostProcessor);
      sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
      v540 = *(v526 + 72);
      v541 = (*(v526 + 80) + 32) & ~*(v526 + 80);
      v542 = swift_allocObject();
      *(v542 + 16) = xmmword_22C90F800;
      v543 = v1038;
      v544 = v1096;
      (v1106)(v542 + v541, v1038, v1096);
      v1109 = v538;
      sub_22C3CD204(v542);
      (*(v526 + 8))(v543, v544);
      v539(v1037, v535);
      sub_22C4207B0(v1088, type metadata accessor for PlanPostProcessor.ExpressionContext);
      v311 = v1109;
      goto LABEL_156;
    }

    goto LABEL_113;
  }

  v347 = v331;
  v1090 = v226;
  v348 = *v328;
  if (v332 != v348)
  {
    sub_22C3DB138(v1104, v308, &qword_27D9BC078, &unk_22C922810);
    v374 = v1100;
    v375 = sub_22C370B74(v308, 1, v1100);
    v376 = v1105;
    if (v375 == 1)
    {
      v377 = &qword_27D9BC078;
      v378 = &unk_22C922810;
      v379 = v308;
    }

    else
    {
      v410 = v1068;
      sub_22C42074C(v308, v1068);
      if (v410[v374[6]] == 1)
      {
        sub_22C4207B0(v410, type metadata accessor for PlanPostProcessor.ExpressionContext);
LABEL_104:
        (*(v347 + 8))(v1090, v330);
        goto LABEL_105;
      }

      v449 = v1044;
      sub_22C3DB138(v410, v1044, &qword_27D9BC028, &unk_22C9134B0);
      v450 = v1087;
      if (sub_22C370B74(v449, 1, v1087) == 1)
      {
        sub_22C4207B0(v410, type metadata accessor for PlanPostProcessor.ExpressionContext);
        sub_22C36DD28(v449, &qword_27D9BC028, &unk_22C9134B0);
        v451 = v1046;
        sub_22C36C640(v1046, 1, 1, v450);
      }

      else
      {
        v451 = v1046;
        sub_22C5FB388(v1046);
        (*(v1081 + 8))(v449, v450);
        if (sub_22C370B74(v451, 1, v450) != 1)
        {
          sub_22C36DD28(v451, &qword_27D9BC028, &unk_22C9134B0);
          v590 = v1108 + *(v1085 + 24);
          sub_22C9087AC();
          v591 = v993;
          sub_22C90882C();

          v592 = v376;
          v593 = *(v1107 + 2);
          v594 = v991;
          v1106 = (v1107 + 16);
          *&v1098 = v593;
          v593(v991, v591, v592);
          v595 = v989;
          v596 = v1103;
          sub_22C4177E0(v989);
          v1103 = v596;
          if (v596)
          {
            v311 = v1105;
            v597 = v1101;
            v1101(v594, v1105);
            v597(v591, v311);
          }

          else
          {
            sub_22C36C640(v595, 0, 1, v374);
            sub_22C6029B4();
            sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
            *&v1108 = *(v1097 + 72);
            v669 = (*(v1097 + 80) + 32) & ~*(v1097 + 80);
            v311 = swift_allocObject();
            *(v311 + 16) = xmmword_22C90F870;
            v1100 = (v311 + v669);
            sub_22C9068FC();
            sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
            v670 = *(v1107 + 9);
            v671 = v591;
            v672 = (v1107[80] + 32) & ~v1107[80];
            v673 = swift_allocObject();
            *(v673 + 16) = xmmword_22C90F800;
            v674 = v673 + v672;
            v675 = v671;
            v676 = v1098;
            (v1098)(v674, v671, v1105);
            v677 = v968;
            *v968 = v673;
            (*(v347 + 104))(v677, v348, v330);
            (*(v1095 + 13))(v677, v1091, v1099);
            sub_22C9070CC();
            sub_22C9070BC();
            LOBYTE(v1109) = 1;
            sub_22C90708C();
            v676(v1089, v675, v1105);
            v678 = sub_22C90702C();
            MEMORY[0x2318B4580](v678);
            sub_22C9070BC();
            LOBYTE(v1109) = 1;
            sub_22C90708C();
            v1101(v675, v1105);
          }

          sub_22C4207B0(v1068, type metadata accessor for PlanPostProcessor.ExpressionContext);
          sub_22C36DD28(v1104, &qword_27D9BC078, &unk_22C922810);
          (*(v347 + 8))(v1090, v330);
          return v311;
        }

        sub_22C4207B0(v410, type metadata accessor for PlanPostProcessor.ExpressionContext);
      }

      v377 = &qword_27D9BC028;
      v378 = &unk_22C9134B0;
      v379 = v451;
    }

    sub_22C36DD28(v379, v377, v378);
    goto LABEL_104;
  }

  v349 = v1090;
  (*(v331 + 96))(v1090, v330);
  v350 = *v349;
  sub_22C3DB138(v1104, v311, &qword_27D9BC078, &unk_22C922810);
  v351 = sub_22C370B74(v311, 1, v1100);
  v352 = v1105;
  if (v351 == 1)
  {

    v335 = &qword_27D9BC078;
    v336 = &unk_22C922810;
    v337 = v311;
    goto LABEL_97;
  }

  v388 = v1073;
  sub_22C42074C(v311, v1073);
  sub_22C420958(v388, v1098, type metadata accessor for PlanPostProcessor.ExpressionContext);
  v389 = v1061;
  sub_22C3DB138(v388, v1061, &qword_27D9BC028, &unk_22C9134B0);
  v390 = v1087;
  if (sub_22C370B74(v389, 1, v1087) == 1)
  {
    sub_22C36DD28(v389, &qword_27D9BC028, &unk_22C9134B0);
    v391 = v1062;
    sub_22C36C640(v1062, 1, 1, v390);
    v392 = v1094;
  }

  else
  {
    v391 = v1062;
    sub_22C5FB388(v1062);
    (*(v1081 + 8))(v389, v390);
    v418 = sub_22C370B74(v391, 1, v390);
    v392 = v1094;
    if (v418 != 1)
    {
      sub_22C36DD28(v391, &qword_27D9BC028, &unk_22C9134B0);
      v503 = v1020;
      v504 = v1103;
      sub_22C4177E0(v1020);
      v1103 = v504;
      if (v504)
      {

        sub_22C4207B0(v1098, type metadata accessor for PlanPostProcessor.ExpressionContext);
        v505 = v388;
LABEL_128:
        sub_22C4207B0(v505, type metadata accessor for PlanPostProcessor.ExpressionContext);
        goto LABEL_156;
      }

      v620 = v1098;
      sub_22C4207B0(v1098, type metadata accessor for PlanPostProcessor.ExpressionContext);
      sub_22C42074C(v503, v620);
      goto LABEL_51;
    }
  }

  sub_22C36DD28(v391, &qword_27D9BC028, &unk_22C9134B0);
LABEL_51:
  v419 = v1108;
  v1099 = *(v350 + 2);
  if (!v1099)
  {
LABEL_64:

    sub_22C4207B0(v1098, type metadata accessor for PlanPostProcessor.ExpressionContext);
    sub_22C4207B0(v1073, type metadata accessor for PlanPostProcessor.ExpressionContext);
    goto LABEL_105;
  }

  v420 = 0;
  v1095 = &v350[(v1107[80] + 32) & ~v1107[80]];
  v1100 = v1107 + 16;
  while (1)
  {
    if (v420 >= *(v350 + 2))
    {
      __break(1u);
LABEL_239:
      __break(1u);
      goto LABEL_240;
    }

    v421 = *(v1107 + 9);
    v388 = *(v1107 + 2);
    v388(v392, &v1095[v421 * v420], v352);
    sub_22C420958(v1098, v1106, type metadata accessor for PlanPostProcessor.ExpressionContext);
    v422 = *v419;
    swift_isUniquelyReferenced_nonNull_native();
    v419 = *v419;
    v1109 = v419;
    sub_22C628274();
    v425 = v419[2];
    v426 = (v424 & 1) == 0;
    v392 = v425 + v426;
    if (__OFADD__(v425, v426))
    {
      goto LABEL_239;
    }

    v311 = v423;
    v427 = v424;
    sub_22C3A5908(&qword_27D9BC080, &qword_22C911F38);
    if (sub_22C90B15C())
    {
      v392 = v1094;
      sub_22C628274();
      v352 = v1105;
      if ((v427 & 1) != (v429 & 1))
      {
        goto LABEL_295;
      }

      v311 = v428;
    }

    else
    {
      v352 = v1105;
      v392 = v1094;
    }

    v430 = v1109;
    if ((v427 & 1) == 0)
    {
      break;
    }

    sub_22C420808(v1106, v1109[7] + *(v1093 + 9) * v311);
    v1101(v392, v352);
LABEL_63:
    ++v420;
    v434 = v1108;
    *v1108 = v430;
    v419 = v434;
    if (v1099 == v420)
    {
      goto LABEL_64;
    }
  }

  v1109[(v311 >> 6) + 8] |= 1 << v311;
  v388(v430[6] + v311 * v421, v392, v352);
  sub_22C42074C(v1106, v430[7] + *(v1093 + 9) * v311);
  v1101(v392, v352);
  v431 = v430[2];
  v432 = __OFADD__(v431, 1);
  v433 = v431 + 1;
  if (!v432)
  {
    v430[2] = v433;
    goto LABEL_63;
  }

  __break(1u);
LABEL_266:
  sub_22C42074C(v427, v919);
  v893 = sub_22C41840C(v979);
  v1106 = MEMORY[0x2318B4480](v893);
  v894 = v1108;
  v895 = v978;
  v1100 = v1106[2];
  if (!v1100)
  {
LABEL_279:

    sub_22C4207B0(v979, type metadata accessor for PlanPostProcessor.ExpressionContext);
    sub_22C4207B0(v919, type metadata accessor for PlanPostProcessor.ExpressionContext);
    (*(v924 + 8))(v311, v925);
    goto LABEL_105;
  }

  v896 = 0;
  v1099 = v1106 + ((v1107[80] + 32) & ~v1107[80]);
  while (v896 < v1106[2])
  {
    v897 = *(v1107 + 9);
    v898 = *(v1107 + 2);
    v898(v895, v1099 + v897 * v896, v352);
    sub_22C420958(v979, v998, type metadata accessor for PlanPostProcessor.ExpressionContext);
    v899 = *v894;
    swift_isUniquelyReferenced_nonNull_native();
    v900 = *v894;
    v1109 = v900;
    sub_22C628274();
    if (__OFADD__(*(v900 + 16), (v902 & 1) == 0))
    {
      goto LABEL_292;
    }

    v903 = v901;
    v904 = v902;
    sub_22C3A5908(&qword_27D9BC080, &qword_22C911F38);
    if (sub_22C90B15C())
    {
      v895 = v978;
      sub_22C628274();
      v352 = v1105;
      if ((v904 & 1) != (v906 & 1))
      {
        goto LABEL_295;
      }

      v903 = v905;
    }

    else
    {
      v352 = v1105;
      v895 = v978;
    }

    v907 = v1109;
    if (v904)
    {
      sub_22C420808(v998, v1109[7] + *(v1093 + 9) * v903);
      v1101(v895, v352);
    }

    else
    {
      v1109[(v903 >> 6) + 8] |= 1 << v903;
      v898((v907[6] + v903 * v897), v895, v352);
      sub_22C42074C(v998, v907[7] + *(v1093 + 9) * v903);
      v1101(v895, v352);
      v908 = v907[2];
      v432 = __OFADD__(v908, 1);
      v909 = v908 + 1;
      if (v432)
      {
        goto LABEL_294;
      }

      v907[2] = v909;
    }

    v311 = v980;
    ++v896;
    v910 = v1108;
    *v1108 = v907;
    v894 = v910;
    if (v1100 == v896)
    {
      goto LABEL_279;
    }
  }

LABEL_291:
  __break(1u);
LABEL_292:
  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  __break(1u);
LABEL_295:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}