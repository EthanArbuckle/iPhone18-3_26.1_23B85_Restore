uint64_t sub_22C85100C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C36CC74();
  a23 = v25;
  a24 = v26;
  sub_22C379BA4();
  a22 = v24;
  v28 = *(v24 + 184);
  v27 = *(v24 + 192);
  v29 = *(v24 + 176);
  v30 = *(v24 + 88);
  v31 = *(v24 + 64);
  v32 = *MEMORY[0x277D1F180];
  v33 = sub_22C375194();
  v34(v33);
  sub_22C85D4B4();
  v35 = sub_22C38ABE0();
  v36(v35);
  if (v30)
  {
    v37 = *(v24 + 168);
    v38 = *(v24 + 144);
    v39 = *(v24 + 152);
    *(v24 + 16) = 0u;
    *(v24 + 32) = 0u;
    *(v24 + 48) = 0;
    v40 = *MEMORY[0x277D1EC90];
    v41 = *(v39 + 104);
    *(v24 + 208) = v41;
    *(v24 + 216) = (v39 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v41(v37, v40, v38);
    v42 = sub_22C90362C();
    v43 = *(v39 + 8);
    *(v24 + 224) = v43;
    *(v24 + 232) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43(v37, v38);
    if (v42)
    {
      v44 = *(v24 + 80);
      v45 = v44[16];
      v46 = v44[17];
      sub_22C3766E0(v44 + 13, v45);
      if (qword_27D9BA768 != -1)
      {
        swift_once();
      }

      (*(v46 + 8))(&a11, qword_27D9C05E0, v45, v46);
      sub_22C36DD28(v24 + 16, &qword_27D9C0A20, &unk_22C929B60);
      v47 = a12;
      *(v24 + 16) = a11;
      *(v24 + 32) = v47;
      *(v24 + 48) = a13;
    }

    v48 = *(v24 + 200);
    v50 = *(v24 + 128);
    v49 = *(v24 + 136);
    v51 = *(v24 + 120);
    v53 = *(v24 + 72);
    v52 = *(v24 + 80);
    v54 = *(v24 + 64);
    v55 = v54[5];
    v88 = v54[6];
    sub_22C36CD90(v54 + 2);
    (*(v50 + 104))(v49, *MEMORY[0x277D20040], v51);
    v56 = swift_task_alloc();
    *(v24 + 240) = v56;
    v56[2] = v54;
    v56[3] = v52;
    v56[4] = v48;
    v56[5] = v53;
    v57 = swift_task_alloc();
    *(v24 + 248) = v57;
    sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
    sub_22C381898();
    *v57 = v58;
    v57[1] = sub_22C851360;
    v59 = *(v24 + 136);
    v60 = *(v24 + 56);
    sub_22C375E04();

    return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
  }

  else
  {
    v63 = *(v24 + 112);
    sub_22C90400C();
    v64 = sub_22C9063CC();
    v65 = sub_22C90AABC();
    if (sub_22C37B204(v65))
    {
      v66 = sub_22C36D240();
      sub_22C36C890(v66);
      sub_22C36BB14(&dword_22C366000, v67, v68, "Foreground Tool retrieval skipped as not present in servicesExecuted");
      sub_22C372FB0();
    }

    v70 = *(v24 + 104);
    v69 = *(v24 + 112);
    v71 = *(v24 + 96);
    v72 = *(v24 + 56);

    v73 = *(v70 + 8);
    v74 = sub_22C36BAFC();
    v75(v74);
    sub_22C903F4C();
    sub_22C36A748();
    sub_22C36C640(v76, v77, v78, v79);
    sub_22C3730D8();

    sub_22C369C50();
    sub_22C375E04();

    return v81(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, *(&a11 + 1), a12, *(&a12 + 1), a13, a14, a15, a16);
  }
}

uint64_t sub_22C851360()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  v5 = v1[31];
  *v4 = *v2;
  *(v3 + 256) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 240);
  (*(v1[16] + 8))(v1[17], v1[15]);

  sub_22C374448();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C8514C8()
{
  sub_22C36FB38();
  sub_22C85B7F0(v0 + 16);
  sub_22C36DD28(v0 + 16, &qword_27D9C0A20, &unk_22C929B60);
  sub_22C3730D8();

  sub_22C369C50();

  return v1();
}

uint64_t sub_22C851564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  v11 = *(v10 + 256);
  v12 = *(v10 + 216);
  v13 = *(v10 + 160);
  v14 = *(v10 + 88);
  v15 = *(v10 + 64);
  (*(v10 + 208))(v13, *MEMORY[0x277D1EC60], *(v10 + 144));
  v16 = *(v15 + 96);
  sub_22C903C8C();
  v17 = sub_22C85D588();
  sub_22C85D324(v17, 54, v18, v19);
  v20 = *(v10 + 256);
  v22 = *(v10 + 224);
  v21 = *(v10 + 232);
  if (v13)
  {
    v23 = *(v10 + 192);
    v24 = *(v10 + 168);
    v25 = *(v10 + 136);
    v26 = *(v10 + 112);
    v22(*(v10 + 160), *(v10 + 144));

    sub_22C85B7F0(v10 + 16);
    sub_22C36DD28(v10 + 16, &qword_27D9C0A20, &unk_22C929B60);

    sub_22C379B94();
  }

  else
  {
    v27 = *(v10 + 56);
    v22(*(v10 + 160), *(v10 + 144));

    sub_22C903F4C();
    sub_22C598F54();
    sub_22C36A748();
    sub_22C36C640(v28, v29, v30, v31);
    sub_22C85B7F0(v10 + 16);
    sub_22C36DD28(v10 + 16, &qword_27D9C0A20, &unk_22C929B60);
    sub_22C3730D8();

    sub_22C369C50();
  }

  sub_22C36EC14();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

uint64_t sub_22C8516F4()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = *v0;
  v4 = sub_22C90363C();
  v1[7] = v4;
  sub_22C3699B8(v4);
  v1[8] = v5;
  v7 = *(v6 + 64);
  v1[9] = sub_22C3699D4();
  v8 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C369914(v8);
  v10 = *(v9 + 64);
  v1[10] = sub_22C3699D4();
  v11 = sub_22C905A5C();
  v1[11] = v11;
  sub_22C3699B8(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = sub_22C3699D4();
  v15 = sub_22C903E9C();
  v1[14] = v15;
  sub_22C3699B8(v15);
  v1[15] = v16;
  v18 = *(v17 + 64);
  v1[16] = sub_22C3699D4();
  v19 = sub_22C9063DC();
  v1[17] = v19;
  sub_22C3699B8(v19);
  v1[18] = v20;
  v22 = *(v21 + 64);
  v1[19] = sub_22C36D0D4();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v23 = sub_22C903D4C();
  v1[23] = v23;
  sub_22C3699B8(v23);
  v1[24] = v24;
  v26 = *(v25 + 64);
  v1[25] = sub_22C36D0D4();
  v1[26] = swift_task_alloc();
  v27 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_22C851950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C388D74();
  sub_22C381520();
  v19 = *(v16 + 200);
  v18 = *(v16 + 208);
  v20 = *(v16 + 184);
  v21 = *(v16 + 192);
  *(v16 + 216) = *(*(v16 + 24) + 96);
  sub_22C903C7C();
  sub_22C9034EC();
  sub_22C3724F4(&qword_281435728);
  sub_22C36ECB4();
  sub_22C90A56C();
  sub_22C36ECB4();
  sub_22C90A56C();
  v22 = *(v21 + 8);
  *(v16 + 224) = v22;
  *(v16 + 232) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23 = sub_22C36D264();
  v22(v23);
  v24 = sub_22C36D39C();
  v22(v24);
  if (*(v16 + 272) == *(v16 + 276))
  {
    *(v16 + 240) = *(*(v16 + 24) + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_cancellationToken);
    sub_22C36EC40();

    return MEMORY[0x2822009F8](v25, v26, v27);
  }

  else
  {
    sub_22C85D4F4();
    v29 = *MEMORY[0x277D1F178];
    v30 = sub_22C375194();
    v31(v30);
    sub_22C85D4B4();
    v32 = sub_22C38ABE0();
    v33(v32);
    if (v22)
    {
      v69 = sub_22C37E8E0();
      sub_22C36CD90((v17 + 16));
      v34 = *MEMORY[0x277D20070];
      v35 = sub_22C85D354();
      v36(v35);
      v37 = swift_task_alloc();
      *(v16 + 248) = v37;
      *(v37 + 16) = v17;
      *(v37 + 24) = vextq_s8(v69, v69, 8uLL);
      v38 = swift_task_alloc();
      *(v16 + 256) = v38;
      sub_22C903DCC();
      sub_22C381898();
      *v38 = v39;
      v38[1] = sub_22C85205C;
      v40 = *(v16 + 104);
      sub_22C370AB0();
      sub_22C36EC40();

      return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
    }

    else
    {
      v42 = *(v16 + 152);
      sub_22C90400C();
      v43 = sub_22C9063CC();
      v44 = sub_22C90AABC();
      if (sub_22C37B204(v44))
      {
        v45 = sub_22C36D240();
        sub_22C36C890(v45);
        sub_22C36BB14(&dword_22C366000, v46, v47, "runJointResolverServices skipped as Joint Resolver is not enabled or requested");
        sub_22C372FB0();
      }

      v49 = *(v16 + 144);
      v48 = *(v16 + 152);
      v50 = *(v16 + 136);
      v51 = *(v16 + 32);

      v52 = *(v49 + 8);
      v53 = sub_22C36BAFC();
      v54(v53);
      sub_22C85D450();
      v55 = *(v16 + 104);
      v67 = *(v16 + 80);
      v68 = *(v16 + 72);
      v70 = v56;
      v57 = v51;

      sub_22C36D5E0();
      sub_22C36EC40();

      return v60(v58, v59, v60, v61, v62, v63, v64, v65, v67, v68, v70, a12, a13, a14, a15, a16);
    }
  }
}

uint64_t sub_22C851C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C36CC74();
  a25 = v30;
  a26 = v31;
  sub_22C379BA4();
  a24 = v27;
  if (*(v27 + 280))
  {
    sub_22C85D4F4();
    v32 = *MEMORY[0x277D1F178];
    v33 = sub_22C375194();
    v34(v33);
    sub_22C85D4B4();
    v35 = sub_22C38ABE0();
    v36(v35);
    if (v26)
    {
      v95 = sub_22C37E8E0();
      sub_22C36CD90((v29 + 16));
      v37 = *MEMORY[0x277D20070];
      v38 = sub_22C85D354();
      v39(v38);
      v40 = swift_task_alloc();
      *(v27 + 248) = v40;
      *(v40 + 16) = v29;
      *(v40 + 24) = vextq_s8(v95, v95, 8uLL);
      v41 = swift_task_alloc();
      *(v27 + 256) = v41;
      sub_22C903DCC();
      sub_22C381898();
      *v41 = v42;
      v41[1] = sub_22C85205C;
      v43 = *(v27 + 104);
      sub_22C370AB0();
      sub_22C375E04();

      return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
    }

    v63 = *(v27 + 152);
    sub_22C90400C();
    v64 = sub_22C9063CC();
    v65 = sub_22C90AABC();
    if (sub_22C37B204(v65))
    {
      v66 = sub_22C36D240();
      sub_22C36C890(v66);
      sub_22C36BB14(&dword_22C366000, v67, v68, "runJointResolverServices skipped as Joint Resolver is not enabled or requested");
      sub_22C372FB0();
    }

    v70 = *(v27 + 144);
    v69 = *(v27 + 152);
    v71 = *(v27 + 136);
    v72 = *(v27 + 32);

    v73 = *(v70 + 8);
    v74 = sub_22C36BAFC();
    v75(v74);
    v76 = v72;
    v97 = *(v27 + 32);
  }

  else
  {
    v46 = *(v27 + 176);
    v47 = *(v27 + 24);
    sub_22C90400C();

    v48 = sub_22C9063CC();
    v49 = sub_22C90AACC();

    if (os_log_type_enabled(v48, v49))
    {
      a9 = *(v27 + 224);
      a10 = *(v27 + 232);
      v51 = *(v27 + 208);
      v50 = *(v27 + 216);
      v52 = *(v27 + 184);
      a11 = *(v27 + 144);
      a12 = *(v27 + 136);
      v96 = *(v27 + 176);
      sub_22C370060();
      a15 = sub_22C84BEB8();
      *v28 = 136315650;
      v53 = sub_22C903C6C();
      v55 = sub_22C36F9F4(v53, v54, &a15);

      *(v28 + 4) = v55;
      *(v28 + 12) = 2080;
      sub_22C38C518();
      v56 = sub_22C380748();
      *(v28 + 14) = sub_22C36F9F4(v56, v57, v58);
      *(v28 + 22) = 2080;
      sub_22C903C7C();
      sub_22C37890C(&qword_281435720);
      sub_22C90B47C();
      sub_22C385D88();
      a9(v51, v52);
      v59 = sub_22C37170C();
      sub_22C36F9F4(v59, v60, v61);
      sub_22C37FF48();

      *(v28 + 24) = v51;
      sub_22C38B2B8(&dword_22C366000, v62, v49, "QueryDecorator: processing for %s was cancelled. Did not run %s for outdated query for caller: %s");
      swift_arrayDestroy();
      sub_22C36C30C();
      sub_22C370510();

      (*(a11 + 8))(v96, a12);
    }

    else
    {
      v77 = *(v27 + 176);
      v78 = *(v27 + 136);
      v79 = *(v27 + 144);

      v80 = *(v79 + 8);
      v81 = sub_22C37170C();
      v82(v81);
    }

    v97 = *(v27 + 32);
  }

  v84 = *(v27 + 200);
  v83 = *(v27 + 208);
  sub_22C85D4CC();
  v85 = *(v27 + 72);
  v86 = *(v27 + 80);

  sub_22C36D5E0();
  sub_22C375E04();

  return v89(v87, v88, v89, v90, v91, v92, v93, v94, a9, a10, a11, a12, v97, a14, a15, a16, a17, a18);
}

uint64_t sub_22C85205C()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  v5 = v1[32];
  *v4 = *v2;
  *(v3 + 264) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 248);
  (*(v1[12] + 8))(v1[13], v1[11]);

  sub_22C374448();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C8521C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C388D74();
  sub_22C381520();
  v17 = v16[2];
  if (sub_22C903DAC() || sub_22C903DBC())
  {

    goto LABEL_4;
  }

  v49 = v16[10];
  sub_22C903D5C();
  v50 = sub_22C903F4C();
  v51 = sub_22C370B74(v49, 1, v50);
  sub_22C36DD28(v49, &qword_27D9BD290, &qword_22C917EC0);
  if (v51 != 1)
  {
LABEL_4:
    v18 = v16[20];
    sub_22C90400C();
    v19 = v17;
    v20 = sub_22C9063CC();
    v21 = sub_22C90AABC();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v16[20];
    v25 = v16[17];
    v24 = v16[18];
    if (v22)
    {
      a10 = v16[17];
      v26 = sub_22C383050();
      a12 = sub_22C37A180();
      *v26 = 136315394;
      sub_22C36EE00();
      v27 = sub_22C380748();
      *(v26 + 4) = sub_22C36F9F4(v27, v28, v29);
      *(v26 + 12) = 2080;
      a9 = v23;
      v30 = v19;
      v31 = [v30 description];
      sub_22C90A11C();

      v71 = v30;
      v32 = sub_22C369D14();
      v35 = sub_22C36F9F4(v32, v33, v34);

      *(v26 + 14) = v35;
      _os_log_impl(&dword_22C366000, v20, v21, "%s returning QDOutput:%s", v26, 0x16u);
      swift_arrayDestroy();
      sub_22C36C30C();
      sub_22C370510();

      (*(v24 + 8))(a9, a10);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
      v71 = v19;
    }

    goto LABEL_7;
  }

  v52 = v16[21];
  sub_22C90400C();
  v53 = sub_22C9063CC();
  v54 = sub_22C90AABC();
  v55 = sub_22C370048(v54);
  v56 = v16[21];
  v57 = v16[17];
  v58 = v16[18];
  if (v55)
  {
    v59 = sub_22C36FB44();
    a12 = sub_22C370060();
    *v59 = 136315138;
    v60 = sub_22C380748();
    *(v59 + 4) = sub_22C36F9F4(v60, 0x800000022C937A50, v61);
    _os_log_impl(&dword_22C366000, v53, v54, "%s Returning empty error QueryDecorationError.queryDecorationNoResponse", v59, 0xCu);
    sub_22C36FF94(a12);
    sub_22C37B09C();
    sub_22C36C30C();
  }

  (*(v58 + 8))(v56, v57);
  sub_22C839C24();
  v62 = swift_allocError();
  *v63 = 0;
  swift_willThrow();

  v64 = v16[27];
  v65 = v16[9];
  v66 = v16[6];
  (*(v16[8] + 104))(v65, *MEMORY[0x277D1EC60], v16[7]);
  sub_22C903C8C();
  sub_22C858AA4(v62, 0xD00000000000002BLL, 0x800000022C937A50, v65, v67);
  v68 = sub_22C85D53C();
  v69(v68);

  v70 = v66;
  v71 = v16[4];
LABEL_7:
  v37 = v16[25];
  v36 = v16[26];
  sub_22C85D4CC();
  v38 = v16[9];
  v39 = v16[10];

  sub_22C36D5E0();
  sub_22C36EC40();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, v71, a12, a13, a14, a15, a16);
}

uint64_t sub_22C8526A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C388D74();
  sub_22C381520();
  v17 = v16[33];
  v18 = v16[27];
  v19 = v16[9];
  v21 = v16[6];
  v20 = v16[7];
  v22 = *MEMORY[0x277D1EC60];
  v23 = sub_22C36D45C(v16[8]);
  v24(v23);
  sub_22C903C8C();
  v25 = sub_22C85D588();
  sub_22C85D324(v25, 43, v26, v27);
  if (v19)
  {
    v29 = v16[25];
    v28 = v16[26];
    v31 = v16[21];
    v30 = v16[22];
    v33 = v16[19];
    v32 = v16[20];
    v56 = v16[16];
    v58 = v16[13];
    v60 = v16[10];
    (*(v16[8] + 8))(v16[9], v16[7]);

    sub_22C379B94();
    sub_22C36EC40();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, v56, v58, v60, a13, a14, a15, a16);
  }

  else
  {
    v43 = sub_22C85D53C();
    v44(v43);

    sub_22C85D450();
    v45 = v16[13];
    v57 = v16[10];
    v59 = v16[9];
    v61 = v46;
    v47 = v18;

    sub_22C36D5E0();
    sub_22C36EC40();

    return v50(v48, v49, v50, v51, v52, v53, v54, v55, a9, v57, v59, v61, a13, a14, a15, a16);
  }
}

uint64_t QueryDecorator.queryDecorationCollection(qdInput:toolboxResources:qdLookback:toolExecutionSession:sessionId:)()
{
  sub_22C369980();
  v1[114] = v0;
  v1[113] = v2;
  v1[112] = v3;
  v1[111] = v4;
  v1[110] = v5;
  v1[109] = v6;
  v1[115] = *v0;
  v7 = sub_22C905A5C();
  v1[116] = v7;
  sub_22C3699B8(v7);
  v1[117] = v8;
  v10 = *(v9 + 64);
  v1[118] = sub_22C3699D4();
  v11 = sub_22C90622C();
  v1[119] = v11;
  sub_22C3699B8(v11);
  v1[120] = v12;
  v14 = *(v13 + 64);
  v1[121] = sub_22C3699D4();
  v15 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  v1[122] = sub_22C3699D4();
  v18 = sub_22C90292C();
  v1[123] = v18;
  sub_22C3699B8(v18);
  v1[124] = v19;
  v21 = *(v20 + 64);
  v1[125] = sub_22C3699D4();
  v22 = sub_22C90069C();
  v1[126] = v22;
  sub_22C3699B8(v22);
  v1[127] = v23;
  v25 = *(v24 + 64);
  v1[128] = sub_22C3699D4();
  v26 = sub_22C3A5908(&qword_27D9C0250, &unk_22C929510);
  v1[129] = v26;
  sub_22C369914(v26);
  v28 = *(v27 + 64);
  v1[130] = sub_22C36D0D4();
  v1[131] = swift_task_alloc();
  v29 = sub_22C9063DC();
  v1[132] = v29;
  sub_22C3699B8(v29);
  v1[133] = v30;
  v32 = *(v31 + 64);
  v1[134] = sub_22C36D0D4();
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v33 = sub_22C903D4C();
  v1[141] = v33;
  sub_22C3699B8(v33);
  v1[142] = v34;
  v36 = *(v35 + 64);
  v1[143] = sub_22C36D0D4();
  v1[144] = swift_task_alloc();
  v37 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v37, v38, v39);
}

uint64_t sub_22C852BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C383924();
  a31 = v33;
  a32 = v34;
  sub_22C382E34();
  a30 = v32;
  v35 = *(v32 + 1152);
  v36 = *(v32 + 1136);
  v37 = *(v32 + 1128);
  v38 = *(v32 + 1120);
  v39 = *(v32 + 920);
  v40 = *(v32 + 912);
  v127 = *(v32 + 888);
  v131 = *(v32 + 1048);
  v41 = *(v32 + 880);
  v42 = *(v32 + 872);
  sub_22C903C7C();
  sub_22C854DA0((v40 + 104));
  *(v32 + 1160) = *(v36 + 8);
  *(v32 + 1168) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43 = sub_22C36BAFC();
  v135 = v44;
  v44(v43);
  sub_22C90400C();
  sub_22C379DF8(v127, v131, &qword_27D9C0250, &unk_22C929510);

  v45 = v42;
  v46 = sub_22C9063CC();
  v47 = sub_22C90AABC();

  if (os_log_type_enabled(v46, v47))
  {
    v124 = *(v32 + 1064);
    v128 = *(v32 + 1056);
    v132 = *(v32 + 1120);
    v48 = *(v32 + 1048);
    v49 = *(v32 + 1040);
    v50 = *(v32 + 1032);
    v51 = *(v32 + 880);
    v121 = *(v32 + 872);
    swift_slowAlloc();
    v122 = sub_22C84BEB8();
    a16 = v122;
    *v39 = 136315906;
    *(v39 + 4) = sub_22C85D480(v122, 0x800000022C9377C0, &a16);
    *(v39 + 12) = 1024;
    *(v39 + 14) = v51 != 0;

    *(v39 + 18) = 2080;
    v52 = sub_22C369D14();
    sub_22C379DF8(v52, v53, &qword_27D9C0250, &unk_22C929510);
    sub_22C90A1AC();
    sub_22C385D88();
    sub_22C36DD28(v48, &qword_27D9C0250, &unk_22C929510);
    v54 = sub_22C37170C();
    sub_22C36F9F4(v54, v55, v56);
    sub_22C37FF48();

    *(v39 + 20) = v50;
    *(v39 + 28) = 2080;
    *(v32 + 848) = sub_22C903CAC();
    *(v32 + 856) = v57;
    sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
    v58 = sub_22C90A1AC();
    v60 = sub_22C36F9F4(v58, v59, &a16);

    *(v39 + 30) = v60;
    _os_log_impl(&dword_22C366000, v46, v47, "%s running queryDecorationCollection (toolboxPresent: %{BOOL}d, qdLookback: %s), requestId: %s", v39, 0x26u);
    sub_22C375DD4();
    sub_22C37E124();
    sub_22C370510();

    v61 = *(v124 + 8);
    v61(v132, v128);
  }

  else
  {
    v62 = *(v32 + 1120);
    v63 = *(v32 + 1064);
    v64 = *(v32 + 1056);
    v65 = *(v32 + 1048);

    sub_22C36DD28(v65, &qword_27D9C0250, &unk_22C929510);
    v61 = *(v63 + 8);
    v66 = sub_22C37170C();
    (v61)(v66);
  }

  *(v32 + 1176) = v61;
  v67 = *(v32 + 1112);
  v68 = *(v32 + 872);
  sub_22C90400C();
  v69 = v68;
  v70 = sub_22C9063CC();
  v71 = sub_22C90AABC();

  v72 = os_log_type_enabled(v70, v71);
  v73 = *(v32 + 1112);
  v74 = *(v32 + 1064);
  v75 = *(v32 + 1056);
  if (v72)
  {
    v129 = *(v32 + 1112);
    v76 = *(v32 + 872);
    v125 = *(v32 + 1056);
    v77 = sub_22C383050();
    a16 = sub_22C37A180();
    *v77 = 136315394;
    sub_22C36EE00();
    *(v77 + 4) = sub_22C85D480(v78, v79, &a16);
    *(v77 + 12) = 2080;
    v133 = v61;
    v80 = v76;
    v81 = [v80 description];
    v82 = sub_22C90A11C();
    v84 = v83;

    v85 = sub_22C36F9F4(v82, v84, &a16);

    *(v77 + 14) = v85;
    v61 = v133;
    sub_22C374ED0();
    _os_log_impl(v86, v87, v88, v89, v90, 0x16u);
    swift_arrayDestroy();
    sub_22C370510();
    sub_22C36BAE0();

    v91 = v125;
    v92 = v129;
  }

  else
  {

    v92 = v73;
    v91 = v75;
  }

  v61(v92, v91);
  v93 = *(v32 + 1152);
  v94 = *(v32 + 1144);
  v95 = *(v32 + 1128);
  v96 = *(v32 + 872);
  sub_22C903C7C();
  sub_22C9034CC();
  sub_22C3724F4(&qword_281435728);
  sub_22C36ECB4();
  sub_22C90A56C();
  sub_22C36ECB4();
  sub_22C90A56C();
  v97 = sub_22C36D264();
  v135(v97);
  v98 = sub_22C36D39C();
  v135(v98);
  if (*(v32 + 1360) == *(v32 + 1364))
  {
    if (qword_281431278 != -1)
    {
      sub_22C38A0F4();
    }

    *(v32 + 1184) = sub_22C36FAB8();
    sub_22C375C0C();

    return MEMORY[0x2822009F8](v99, v100, v101);
  }

  else
  {
    v103 = *(v32 + 872);
    *(v32 + 1208) = v103;
    v104 = *(v32 + 1024);
    v105 = *(v32 + 1016);
    v106 = *(v32 + 1000);
    v107 = *(v32 + 992);
    v123 = *(v32 + 984);
    v126 = *(v32 + 1008);
    v108 = *(v32 + 912);
    v130 = *(v32 + 904);
    v134 = *(v32 + 976);
    v109 = *(v32 + 896);
    v136 = *(v32 + 880);
    v137 = *(v32 + 1040);
    sub_22C379DF8(*(v32 + 888), v137, &qword_27D9C0250, &unk_22C929510);
    sub_22C379DF8(v109, v32 + 736, &qword_27D9C06A0, &qword_22C929950);
    v111 = v108[11];
    v110 = v108[12];
    sub_22C374168(v108 + 8, v111);
    v112 = v103;
    sub_22C903C9C();
    sub_22C903C0C();
    sub_22C90291C();

    (*(v110 + 8))(&a16, v104, v106, v111, v110);
    (*(v107 + 8))(v106, v123);
    (*(v105 + 8))(v104, v126);
    sub_22C378A4C((v108 + 13), v32 + 776);
    sub_22C379DF8(v130, v134, &qword_27D9C06F8, &qword_22C929520);
    DecorationContext = type metadata accessor for QueryDecorationContext();
    v114 = *(DecorationContext + 48);
    v115 = *(DecorationContext + 52);
    swift_allocObject();

    *(v32 + 1216) = QueryDecorationContext.init(input:toolboxResources:lookback:toolExecutionSession:selfLogger:signposter:intelligenceFlowSessionId:)(v112, v136, v137, v32 + 736, &a16, (v32 + 776), v134);
    v116 = v108[26];
    v117 = swift_task_alloc();
    *(v32 + 1224) = v117;
    *v117 = v32;
    sub_22C37BCE8(v117);
    sub_22C375C0C();

    return sub_22C83B470(v118);
  }
}

uint64_t sub_22C853428()
{
  sub_22C369980();
  v1 = v0[148];
  v0[149] = sub_22C8316FC();
  v0[150] = v2;
  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C85348C()
{
  v83 = v0;
  v1 = v0[150];
  v2 = v0[109];
  v3 = sub_22C903CAC();
  if (v1)
  {
    if (v4)
    {
      if (v0[149] == v3 && v0[150] == v4)
      {
        v49 = v0[148];

        goto LABEL_17;
      }

      v6 = v0[150];
      v7 = sub_22C90B4FC();

      if (v7)
      {
        v8 = v0[148];
LABEL_17:

LABEL_19:
        v31 = v0[109];
        goto LABEL_20;
      }
    }
  }

  else
  {
    if (!v4)
    {
      v50 = v0[148];

      goto LABEL_19;
    }
  }

  v9 = v0[138];
  sub_22C90400C();
  v10 = sub_22C9063CC();
  v11 = sub_22C90AADC();
  v12 = sub_22C370048(v11);
  v13 = v0[147];
  v14 = v0[138];
  v15 = v0[133];
  v16 = v0[132];
  if (v12)
  {
    v17 = sub_22C36FB44();
    v18 = sub_22C370060();
    v82[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_22C85D480(v18, 0x800000022C9377C0, v82);
    sub_22C374ED0();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    sub_22C36FF94(v18);
    sub_22C370510();
    sub_22C36BAE0();
  }

  v24 = sub_22C36BAFC();
  v13(v24);
  v74 = v0[149];
  v76 = v0[150];
  v25 = v0[144];
  v79 = v0[137];
  v26 = v0[128];
  v27 = v0[109];
  sub_22C903C6C();
  sub_22C903C3C();
  sub_22C903C9C();
  sub_22C903C0C();
  sub_22C903C7C();
  sub_22C903BFC();
  sub_22C903C8C();
  sub_22C903C1C();
  v28 = objc_allocWithZone(sub_22C903CBC());
  v29 = sub_22C903C5C();

  v30 = v29;
  sub_22C90400C();
  v31 = v30;
  v32 = sub_22C9063CC();
  v33 = sub_22C90AABC();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v0[148];
  v36 = v0[147];
  v37 = v0[137];
  v38 = v0[133];
  v39 = v0[132];
  if (v34)
  {
    v80 = v0[132];
    v40 = sub_22C383050();
    v82[0] = sub_22C37A180();
    *v40 = 136315394;
    sub_22C36EE00();
    v43 = sub_22C85D480(v41, v42, v82);
    sub_22C85D430(v43);
    v77 = v36;
    v0[104] = sub_22C903CAC();
    v0[105] = v44;
    sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
    sub_22C90A1AC();

    v45 = sub_22C372164();
    v48 = sub_22C36F9F4(v45, v46, v47);

    *(v40 + 14) = v48;
    _os_log_impl(&dword_22C366000, v32, v33, "%s Mighty requestId replaced with Mini reuqestId %s", v40, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C37B09C();

    v77(v37, v80);
  }

  else
  {

    v36(v37, v39);
  }

LABEL_20:
  v0[151] = v31;
  v51 = v0[128];
  v52 = v0[127];
  v53 = v0[125];
  v54 = v0[124];
  v71 = v0[123];
  v72 = v0[126];
  v55 = v0[114];
  v73 = v0[113];
  v75 = v0[122];
  v56 = v0[112];
  v78 = v0[110];
  v81 = v0[130];
  sub_22C379DF8(v0[111], v81, &qword_27D9C0250, &unk_22C929510);
  sub_22C379DF8(v56, (v0 + 92), &qword_27D9C06A0, &qword_22C929950);
  v58 = v55[11];
  v57 = v55[12];
  sub_22C374168(v55 + 8, v58);
  v31;
  sub_22C903C9C();
  sub_22C903C0C();
  sub_22C90291C();

  (*(v57 + 8))(v82, v51, v53, v58, v57);
  (*(v54 + 8))(v53, v71);
  (*(v52 + 8))(v51, v72);
  sub_22C378A4C((v55 + 13), (v0 + 97));
  sub_22C379DF8(v73, v75, &qword_27D9C06F8, &qword_22C929520);
  DecorationContext = type metadata accessor for QueryDecorationContext();
  v60 = *(DecorationContext + 48);
  v61 = *(DecorationContext + 52);
  swift_allocObject();

  v62 = sub_22C36D39C();
  v0[152] = QueryDecorationContext.init(input:toolboxResources:lookback:toolExecutionSession:selfLogger:signposter:intelligenceFlowSessionId:)(v62, v63, v81, v64, v65, v66, v75);
  v67 = v55[26];
  v68 = swift_task_alloc();
  v0[153] = v68;
  *v68 = v0;
  v69 = sub_22C37BCE8(v68);

  return sub_22C83B470(v69);
}

uint64_t sub_22C853A50()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 1224);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C853B34()
{
  sub_22C3743E4();
  v1 = v0[152];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[114];
  v6 = v1[6];
  sub_22C374168(v1 + 2, v1[5]);
  sub_22C90621C();
  v7 = *(v6 + 24);
  sub_22C36BA00();
  sub_22C383BC8();
  v8();
  v0[154] = *(v3 + 8);
  v0[155] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9 = sub_22C36BAFC();
  v10(v9);
  v12 = *(v5 + 144);
  v11 = *(v5 + 152);
  v13 = swift_task_alloc();
  v0[156] = v13;
  *v13 = v0;
  v13[1] = sub_22C853C4C;
  v14 = v0[114];
  sub_22C36A724();
  sub_22C372E90();

  return sub_22C84C9E0(v15, v16);
}

uint64_t sub_22C853C4C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 1248);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 1256) = v0;

  if (v0)
  {
    v9 = sub_22C8549C0;
  }

  else
  {
    v9 = sub_22C853D48;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22C853D48()
{
  sub_22C3743E4();
  v1 = v0[152];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[116];
  v5 = v0[114];
  v6 = v1[5];
  v7 = v1[6];
  sub_22C36CD90(v1 + 2);
  (*(v3 + 104))(v2, *MEMORY[0x277D20058], v4);
  v8 = swift_task_alloc();
  v0[158] = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v1;
  v9 = swift_task_alloc();
  v0[159] = v9;
  sub_22C903DCC();
  sub_22C381898();
  *v9 = v10;
  v9[1] = sub_22C853E70;
  v11 = v0[118];
  sub_22C372E90();

  return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
}

uint64_t sub_22C853E70()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  v5 = v1[159];
  *v4 = *v2;
  *(v3 + 1280) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 1264);
  (*(v1[117] + 8))(v1[118], v1[116]);

  sub_22C374448();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C853FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_22C36CC74();
  a25 = v27;
  a26 = v28;
  sub_22C379BA4();
  a24 = v26;
  v29 = v26[152];
  v30 = v26[136];
  v31 = v26[108];
  v26[161] = v31;
  sub_22C90400C();

  v32 = v31;
  v33 = sub_22C9063CC();
  v34 = sub_22C90AABC();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = v26[152];
    v60 = v26[145];
    v61 = v26[146];
    v36 = v26[144];
    v37 = v26[141];
    v62 = v26[133];
    v63 = v26[132];
    v64 = v26[136];
    v38 = sub_22C370060();
    a15 = swift_slowAlloc();
    *v38 = 136315650;
    sub_22C38C518();
    *(v38 + 4) = sub_22C85D480(v39, v40, v41);
    *(v38 + 12) = 2080;
    v42 = *(v35 + 96);
    sub_22C903C7C();
    sub_22C37890C(&qword_281435720);
    sub_22C90B47C();
    v44 = v43;
    v60(v36, v37);
    v45 = sub_22C85D3D8();
    v47 = sub_22C36F9F4(v45, v44, v46);

    *(v38 + 14) = v47;
    *(v38 + 22) = 2080;
    v48 = static QueryDecorationLoggingUtils.generateReadableQueryDecorationOutput(_:)(v32);
    v50 = sub_22C36F9F4(v48, v49, &a15);

    *(v38 + 24) = v50;
    _os_log_impl(&dword_22C366000, v33, v34, "Output of QD Collection callQueryDecorationServices| %s for caller: %s\n%s", v38, 0x20u);
    swift_arrayDestroy();
    sub_22C37B09C();
    sub_22C36C30C();

    v51 = *(v62 + 8);
    v51(v64, v63);
  }

  else
  {
    v52 = v26[136];
    v53 = v26[133];
    v54 = v26[132];

    v51 = *(v53 + 8);
    v55 = sub_22C372164();
    (v51)(v55);
  }

  v26[162] = v51;
  v56 = swift_task_alloc();
  v26[163] = v56;
  *v56 = v26;
  v56[1] = sub_22C85424C;
  v57 = v26[114];
  sub_22C386674(v26[152]);
  sub_22C375E04();

  return sub_22C8516F4();
}

uint64_t sub_22C85424C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 1304);
  *v3 = *v1;
  *(v2 + 1312) = v6;
  *(v2 + 1320) = v0;

  if (v0)
  {
    v7 = sub_22C854C50;
  }

  else
  {
    v7 = sub_22C854354;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C854354()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v1 = v0[164];
  v2 = v0[155];
  v3 = v0[154];
  v4 = v0[152];
  v5 = v0[121];
  v6 = v0[119];
  v7 = v0[114];
  sub_22C36D2A8();
  v8 = swift_allocObject();
  v0[166] = v8;
  v8[2] = v7;
  v8[3] = v4;
  v8[4] = v1;
  v9 = swift_task_alloc();
  v0[167] = v9;
  *(v9 + 16) = &unk_22C929A18;
  *(v9 + 24) = v8;

  v10 = v1;
  sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
  swift_asyncLet_begin();
  v11 = v4[6];
  sub_22C3766E0(v4 + 2, v4[5]);
  sub_22C90621C();
  v12 = *(v11 + 32);
  v13 = sub_22C36D39C();
  v14(v13);
  v15 = sub_22C36BAFC();
  v3(v15);
  v16 = swift_task_alloc();
  v0[168] = v16;
  *v16 = v0;
  v16[1] = sub_22C8544DC;
  v17 = v0[114];
  sub_22C386674(v0[164]);
  sub_22C372034();

  return sub_22C857904();
}

uint64_t sub_22C8544DC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v4 = *(v3 + 1344);
  *v2 = *v0;
  *(v1 + 1352) = v5;

  v6 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C8545C4()
{
  v37 = v0;
  v2 = v0[169];
  v3 = v0[152];
  v4 = v0[135];
  sub_22C90400C();

  v5 = v2;
  v6 = sub_22C9063CC();
  v7 = sub_22C90AABC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[152];
    v30 = v0[146];
    v31 = v0[169];
    v29 = v0[145];
    v9 = v0[144];
    v10 = v0[141];
    v34 = v0[135];
    v35 = v0[162];
    v32 = v0[133];
    v33 = v0[132];
    sub_22C370060();
    v36 = sub_22C84BEB8();
    *v1 = 136315650;
    sub_22C36EE00();
    *(v1 + 4) = sub_22C85D480(v11, v12, &v36);
    *(v1 + 12) = 2080;
    v13 = *(v8 + 96);
    sub_22C903C7C();
    sub_22C37890C(&qword_281435720);
    sub_22C90B47C();
    v14 = sub_22C369D14();
    v29(v14);
    v15 = sub_22C372164();
    v18 = sub_22C36F9F4(v15, v16, v17);

    *(v1 + 14) = v18;
    *(v1 + 22) = 2080;
    v19 = static QueryDecorationLoggingUtils.generateReadableQueryDecorationOutput(_:)(v31);
    v21 = sub_22C36F9F4(v19, v20, &v36);

    *(v1 + 24) = v21;
    sub_22C38B2B8(&dword_22C366000, v22, v7, "QDInternal: Final output of QD | %s caller: %s\n%s");
    swift_arrayDestroy();
    sub_22C36C30C();
    sub_22C370510();

    v35(v34, v33);
  }

  else
  {
    v23 = v0[162];
    v24 = v0[135];
    v25 = v0[133];
    v26 = v0[132];

    v27 = sub_22C37170C();
    v23(v27);
  }

  return MEMORY[0x282200920](v0 + 2, v0 + 102, sub_22C85480C, v0 + 82);
}

uint64_t sub_22C854820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  v25 = v24[167];
  v26 = v24[166];
  v27 = v24[164];
  v28 = v24[161];
  v29 = v24[152];
  v30 = v24[151];
  v31 = v24[144];
  v32 = v24[143];
  v33 = v24[140];
  v34 = v24[139];
  v49 = v24[138];
  v50 = v24[137];
  v51 = v24[136];
  v52 = v24[135];
  v53 = v24[134];
  v54 = v24[131];
  v55 = v24[130];
  v56 = v24[128];
  v57 = v24[125];
  v58 = v24[122];
  v59 = v24[121];
  v60 = v24[118];

  v35 = v24[91];
  sub_22C374168(v24 + 87, v24[90]);
  v36 = *(v35 + 8);
  v37 = sub_22C36BAFC();
  v38(v37);
  sub_22C85D550();

  sub_22C36D5E0();
  v39 = v24[169];
  sub_22C375C0C();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, a22, a23, a24);
}

uint64_t sub_22C8549C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  v35 = *(v33 + 1256);
  sub_22C85D19C();
  v36 = sub_22C37B474();
  v37(v36);
  v38 = sub_22C36CA88();
  v32(v38);
  v39 = *(v34 + 96);
  sub_22C903C7C();
  v40 = sub_22C9002FC();
  sub_22C36CBE0(v40);

  v41 = sub_22C85D440();
  v42(v41);
  swift_willThrow();

  v43 = sub_22C85D2AC();
  v44(v43);
  sub_22C85D550();

  sub_22C37F620();
  sub_22C37F7CC();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_22C854B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  v35 = *(v33 + 1280);
  sub_22C85D19C();
  v36 = sub_22C37B474();
  v37(v36);
  v38 = sub_22C36CA88();
  v32(v38);
  v39 = *(v34 + 96);
  sub_22C903C7C();
  v40 = sub_22C9002FC();
  sub_22C36CBE0(v40);

  v41 = sub_22C85D440();
  v42(v41);
  swift_willThrow();

  v43 = sub_22C85D2AC();
  v44(v43);
  sub_22C85D550();

  sub_22C37F620();
  sub_22C37F7CC();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_22C854C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();

  v35 = *(v33 + 1320);
  sub_22C85D19C();
  v36 = sub_22C37B474();
  v37(v36);
  v38 = sub_22C36CA88();
  v32(v38);
  v39 = *(v34 + 96);
  sub_22C903C7C();
  v40 = sub_22C9002FC();
  sub_22C36CBE0(v40);

  v41 = sub_22C85D440();
  v42(v41);
  swift_willThrow();

  v43 = sub_22C85D2AC();
  v44(v43);
  sub_22C85D550();

  sub_22C37F620();
  sub_22C37F7CC();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_22C854DA0(void *a1)
{
  v2 = sub_22C903D4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9034CC();
  sub_22C386908(&qword_281435728);
  sub_22C90A56C();
  sub_22C90A56C();
  (*(v3 + 8))(v6, v2);
  LODWORD(v3) = v12[2];
  v7 = v12[3];
  v8 = a1[3];
  v9 = a1[4];
  sub_22C374168(a1, v8);
  if (v7 == v3)
  {
    if (qword_27D9BA758 != -1)
    {
      swift_once();
    }

    v10 = &qword_27D9C05D0;
  }

  else
  {
    if (qword_281432B10 != -1)
    {
      swift_once();
    }

    v10 = &qword_281432B18;
  }

  return (*(v9 + 8))(*v10, v8, v9);
}

uint64_t sub_22C854F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_22C855020;

  return sub_22C85516C(a3);
}

uint64_t sub_22C855020()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;

  if (v0)
  {
    sub_22C85D364();

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    v13 = sub_22C85D374();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_22C855140()
{
  **(v0 + 16) = *(v0 + 32);
  sub_22C369C50();
  return v1();
}

uint64_t sub_22C85516C(uint64_t a1)
{
  v2[367] = v1;
  v2[361] = a1;
  v3 = sub_22C90622C();
  v2[373] = v3;
  v4 = *(v3 - 8);
  v2[379] = v4;
  v5 = *(v4 + 64) + 15;
  v2[385] = swift_task_alloc();
  v6 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  v2[391] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[397] = swift_task_alloc();
  v2[403] = swift_task_alloc();
  v8 = *(sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868) - 8);
  v2[409] = v8;
  v2[415] = *(v8 + 64);
  v2[421] = swift_task_alloc();
  v2[427] = swift_task_alloc();
  v9 = sub_22C903D4C();
  v2[433] = v9;
  v10 = *(v9 - 8);
  v2[439] = v10;
  v11 = *(v10 + 64) + 15;
  v2[445] = swift_task_alloc();
  v12 = sub_22C9063DC();
  v2[451] = v12;
  v13 = *(v12 - 8);
  v2[457] = v13;
  v14 = *(v13 + 64) + 15;
  v2[463] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8553A8, 0, 0);
}

uint64_t sub_22C8553A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_22C36CC74();
  a25 = v27;
  a26 = v28;
  sub_22C379BA4();
  a24 = v26;
  v29 = v26[463];
  v26[469] = *(v26[361] + 96);
  v30 = sub_22C903C6C();
  v32 = v31;
  sub_22C90400C();

  v33 = sub_22C9063CC();
  v34 = sub_22C90AABC();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v26[463];
  v37 = v26[457];
  if (v35)
  {
    v72 = v26[451];
    v38 = v26[445];
    v39 = v26[439];
    v70 = v26[433];
    sub_22C370060();
    a15 = sub_22C84BEB8();
    *v30 = 136315650;
    sub_22C38C518();
    *(v30 + 4) = sub_22C36F9F4(0xD000000000000027, v40, v41);
    *(v30 + 12) = 2080;
    v71 = v36;
    v42 = sub_22C36F9F4(v30, v32, &a15);

    *(v30 + 14) = v42;
    *(v30 + 22) = 2080;
    sub_22C903C7C();
    sub_22C37890C(&qword_281435720);
    sub_22C90B47C();
    v44 = v43;
    v45 = *(v39 + 8);
    v46 = sub_22C36ECB4();
    v47(v46);
    v48 = sub_22C85D3D8();
    v50 = sub_22C36F9F4(v48, v44, v49);

    *(v30 + 24) = v50;
    sub_22C38B2B8(&dword_22C366000, v51, v34, "QDInternal: %s starting to collect inputs for query: %s for caller: %s");
    sub_22C375DD4();
    sub_22C37E124();
    sub_22C370510();

    (*(v37 + 8))(v71, v72);
  }

  else
  {

    v52 = *(v37 + 8);
    v53 = sub_22C372164();
    v55(v53, v54);
  }

  v56 = v26[367];
  v57 = v26[361];
  sub_22C36A83C();
  v58 = swift_allocObject();
  *(v58 + 16) = v56;
  *(v58 + 24) = v57;
  sub_22C36A83C();
  v59 = swift_allocObject();
  v26[475] = v59;
  sub_22C383A10(v59);

  sub_22C3A5908(&qword_27D9C0A10, &qword_22C9299C8);
  swift_asyncLet_begin();
  sub_22C36A83C();
  v60 = swift_allocObject();
  *(v60 + 16) = v56;
  *(v60 + 24) = v57;
  sub_22C36A83C();
  v61 = swift_allocObject();
  v26[481] = v61;
  sub_22C383A10(v61);

  sub_22C3A5908(&qword_27D9BE358, &qword_22C9299A0);
  swift_asyncLet_begin();
  sub_22C36A83C();
  v62 = swift_allocObject();
  *(v62 + 16) = v56;
  *(v62 + 24) = v57;
  sub_22C36A83C();
  v63 = swift_allocObject();
  v26[487] = v63;
  *(v63 + 16) = &unk_22C929B10;
  *(v63 + 24) = v62;

  swift_asyncLet_begin();
  sub_22C375E04();

  return MEMORY[0x282200930](v64, v65, v66, v67);
}

uint64_t sub_22C855784()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 4040);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 4088) = v0;

  if (v0)
  {
    v9 = sub_22C8563C4;
  }

  else
  {
    v10 = *(v3 + 3992);

    v9 = sub_22C855888;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22C855888()
{
  sub_22C388250();
  sub_22C3743E4();
  v1 = v0[421];
  v2 = v0[415];
  v3 = v0[409];
  v4 = v0[403];
  v5 = v0[391];
  v6 = v0[367];
  v7 = v0[361];
  sub_22C379DF8(v0[427], v1, &qword_27D9C09E0, &qword_22C929868);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[517] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  sub_22C85C364(v1, v9 + v8);

  swift_asyncLet_begin();
  sub_22C3A5908(&qword_27D9C0A18, &qword_22C929B30);
  inited = swift_initStackObject();
  v0[523] = inited;
  *(inited + 16) = xmmword_22C90F870;
  sub_22C36EC14();

  return MEMORY[0x282200930](v11, v12, v13, v14);
}

uint64_t sub_22C8559C8()
{
  *(v1 + 4232) = v0;
  if (v0)
  {
    return sub_22C36B5E0(sub_22C85655C);
  }

  else
  {
    return sub_22C36B5E0(sub_22C8559F4);
  }
}

uint64_t sub_22C8559F4()
{
  sub_22C369980();
  v1 = v0[523];
  v2 = v0[343];
  v0[535] = v2;
  *(v1 + 32) = v2;

  v3 = sub_22C85D25C();

  return MEMORY[0x282200930](v3, v4, v5, v0 + 422);
}

uint64_t sub_22C855A60()
{
  *(v1 + 4328) = v0;
  if (v0)
  {
    return sub_22C36B5E0(sub_22C856770);
  }

  else
  {
    return sub_22C36B5E0(sub_22C855A8C);
  }
}

uint64_t sub_22C855A8C()
{
  sub_22C388250();
  sub_22C3743E4();
  *(v0[523] + 40) = v0[349];

  v5 = 0;
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (2)
  {
    while (2)
    {
      v0[547] = v6;
      do
      {
        if (v5 == 2)
        {
          goto LABEL_18;
        }

        v8 = v0[523] + 8 * v5;
        v9 = *(v8 + 32);
        ++v5;
      }

      while (!v9);
      if (!v6)
      {
        v6 = v7;
      }

      v10 = *(v9 + 16);
      v11 = *(v6 + 16);
      if (__OFADD__(v11, v10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v12 = *(v8 + 32);

      if (!swift_isUniquelyReferenced_nonNull_native() || v11 + v10 > *(v6 + 24) >> 1)
      {
        sub_22C595C60();
        v6 = v13;
      }

      if (*(v9 + 16))
      {
        v14 = (*(v6 + 24) >> 1) - *(v6 + 16);
        v1 = sub_22C90399C();
        v15 = *(v1 - 8);
        if (v14 >= v10)
        {
          v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
          v17 = *(v15 + 72);
          swift_arrayInitWithCopy();

          if (!v10)
          {
            continue;
          }

          v18 = *(v6 + 16);
          v19 = __OFADD__(v18, v10);
          v20 = v18 + v10;
          if (!v19)
          {
            *(v6 + 16) = v20;
            continue;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        return MEMORY[0x282200930](v1, v2, v3, v4);
      }

      break;
    }

    if (!v10)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_18:
  v21 = v0[523];
  swift_setDeallocating();
  sub_22C590144();
  sub_22C36EC14();

  return MEMORY[0x282200930](v1, v2, v3, v4);
}

uint64_t sub_22C855C40()
{
  sub_22C369980();
  v1[548] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C85698C, 0, 0);
  }

  else
  {
    v1[549] = v1[355];

    v2 = sub_22C375C28();

    return MEMORY[0x282200930](v2, v3, v4, v1 + 482);
  }
}

uint64_t sub_22C855CE4()
{
  *(v1 + 4400) = v0;
  if (v0)
  {
    return sub_22C36B5E0(sub_22C856B94);
  }

  else
  {
    return sub_22C36B5E0(sub_22C855D10);
  }
}

uint64_t sub_22C855D10()
{
  sub_22C36D5EC();
  v1 = *(v0 + 4392);
  v2 = *(v0 + 4376);
  v3 = *(v0 + 3752);
  v4 = *(v0 + 2888);
  sub_22C379DF8(*(v0 + 3224), *(v0 + 3176), &qword_27D9BD290, &qword_22C917EC0);
  sub_22C903BFC();
  v5 = objc_allocWithZone(sub_22C903DCC());
  sub_22C36D39C();
  *(v0 + 4408) = sub_22C903D9C();
  sub_22C378A4C(v4 + 16, v0 + 2664);
  v6 = *(v0 + 2688);
  *(v0 + 4416) = v6;
  *(v0 + 4432) = sub_22C374168((v0 + 2664), v6);
  *(v0 + 4440) = sub_22C903DAC();

  return MEMORY[0x282200930](v0 + 1296, v0 + 2744, sub_22C855E1C, v0 + 4096);
}

uint64_t sub_22C855E1C()
{
  *(v1 + 4448) = v0;
  if (v0)
  {
    return sub_22C36B5E0(sub_22C856DA8);
  }

  else
  {
    return sub_22C36B5E0(sub_22C855E48);
  }
}

uint64_t sub_22C855E48()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v1 = v0[555];
  v2 = v0[554];
  v3 = v0[553];
  v4 = v0[552];
  v5 = v0[551];
  v6 = v0[397];
  v7 = v0[385];
  v8 = v0[379];
  v15 = v0[373];
  v9 = v0[343];

  sub_22C903D5C();
  sub_22C90621C();
  (*(v3 + 48))(v1, v9, v6, v7, v4, v3);

  (*(v8 + 8))(v7, v15);
  sub_22C36DD28(v6, &qword_27D9BD290, &qword_22C917EC0);
  sub_22C36FF94(v0 + 333);
  v10 = swift_task_alloc();
  v0[557] = v10;
  *v10 = v0;
  v10[1] = sub_22C855F9C;
  v11 = v0[367];
  sub_22C386674(v0[361]);
  sub_22C372034();

  return sub_22C857DBC(v12);
}

uint64_t sub_22C855F9C()
{
  sub_22C36FB38();
  v1 = *v0;
  v2 = *v0;
  sub_22C369970();
  *v3 = v2;
  v4 = *(v1 + 4456);
  *v3 = *v0;

  v5 = *(v1 + 3224);

  return MEMORY[0x282200920](v2 + 1936, v5, sub_22C8560A8, v2 + 2704);
}

uint64_t sub_22C8560BC()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3416), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C85D25C();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 3088);
}

uint64_t sub_22C8561A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[517];
  sub_22C376A88();
  v24 = v12[385];

  sub_22C36D5E0();
  v14 = v12[551];
  sub_22C372034();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_22C856304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v24 = *(v12 + 3944);
  sub_22C376A88();
  v13 = *(v12 + 3080);

  v14 = sub_22C3E3574();
  sub_22C372F94(v14);

  sub_22C369A24();
  sub_22C372034();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_22C8563C4()
{
  sub_22C369980();
  v1 = *(v0 + 3992);

  v2 = sub_22C85D25C();

  return MEMORY[0x282200920](v2, v3, v4, v0 + 2896);
}

uint64_t sub_22C85649C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v24 = *(v12 + 4088);
  sub_22C376A88();
  v13 = *(v12 + 3080);

  v14 = sub_22C3E3574();
  sub_22C372F94(v14);

  sub_22C369A24();
  sub_22C372034();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_22C85655C()
{
  sub_22C369980();
  *(*(v0 + 4184) + 16) = 0;
  swift_setDeallocating();
  sub_22C590144();
  v1 = sub_22C375C28();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 3184);
}

uint64_t sub_22C8565DC()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3416), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C85D25C();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 3232);
}

uint64_t sub_22C8566C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v15 = *(v14 + 4232);
  sub_22C38C204();

  sub_22C372EA8();

  sub_22C369A24();
  sub_22C36D5F8();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22C856770()
{
  sub_22C369980();
  v1 = *(v0 + 4280);
  v2 = *(v0 + 4184);

  *(v2 + 16) = 0;
  swift_setDeallocating();
  sub_22C590144();
  v3 = sub_22C375C28();

  return MEMORY[0x282200920](v3, v4, v5, v0 + 3424);
}

uint64_t sub_22C8567F8()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3416), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C85D25C();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 3472);
}

uint64_t sub_22C8568E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v15 = *(v14 + 4328);
  sub_22C38C204();

  sub_22C372EA8();

  sub_22C369A24();
  sub_22C36D5F8();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22C85698C()
{
  sub_22C369980();
  v1 = *(v0 + 4376);

  v2 = sub_22C375C28();

  return MEMORY[0x282200920](v2, v3, v4, v0 + 3664);
}

uint64_t sub_22C856A00()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3416), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C85D25C();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 3712);
}

uint64_t sub_22C856AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v15 = *(v14 + 4384);
  sub_22C38C204();

  sub_22C372EA8();

  sub_22C369A24();
  sub_22C36D5F8();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22C856B94()
{
  sub_22C369980();
  v1 = *(v0 + 4392);
  v2 = *(v0 + 4376);

  v3 = sub_22C375C28();

  return MEMORY[0x282200920](v3, v4, v5, v0 + 3904);
}

uint64_t sub_22C856C14()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3416), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C85D25C();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 3952);
}

uint64_t sub_22C856D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v15 = *(v14 + 4400);
  sub_22C38C204();

  sub_22C372EA8();

  sub_22C369A24();
  sub_22C36D5F8();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22C856DA8()
{
  sub_22C369980();
  v1 = *(v0 + 4440);

  sub_22C36FF94((v0 + 2664));
  v2 = sub_22C375C28();

  return MEMORY[0x282200920](v2, v3, v4, v0 + 4144);
}

uint64_t sub_22C856E34()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3416), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C85D25C();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 4192);
}

uint64_t sub_22C856F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v15 = *(v14 + 4448);
  sub_22C38C204();

  sub_22C372EA8();

  sub_22C369A24();
  sub_22C36D5F8();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22C856FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22C857078;

  return sub_22C857174(a2, a3);
}

uint64_t sub_22C857078()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = *(v2 + 16);
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = sub_22C36A724();
  }

  return v7(v6);
}

uint64_t sub_22C857174(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v3[17] = *v2;
  v4 = sub_22C903D4C();
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = sub_22C903E9C();
  v3[22] = v7;
  v8 = *(v7 - 8);
  v3[23] = v8;
  v9 = *(v8 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8572C8, 0, 0);
}

uint64_t sub_22C8572C8()
{
  sub_22C3743E4();
  type metadata accessor for TrialManager();
  swift_allocObject();
  *(v0 + 72) = sub_22C36E65C(1);
  *(v0 + 96) = &type metadata for QueryDecorationFeatureControl;
  *(v0 + 104) = &off_283FC14D0;
  type metadata accessor for AppPreLaunchSelectionService();
  inited = swift_initStackObject();
  v2 = *(v0 + 96);
  v3 = sub_22C36BAFC();
  v5 = sub_22C36D1E4(v3, v4);
  sub_22C36A948();
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = sub_22C3699D4();
  (*(v7 + 16))(v10, v5, v2);
  v11 = *v10;
  inited[5] = &type metadata for QueryDecorationFeatureControl;
  inited[6] = &off_283FC14D0;
  inited[2] = v11;
  sub_22C36FF94((v0 + 72));

  LOBYTE(v5) = sub_22C7ADC6C();
  swift_setDeallocating();
  sub_22C36FF94(inited + 2);
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = *(v0 + 184);
  v12 = *(v0 + 192);
  v14 = *(v0 + 176);
  v15 = *(v0 + 136);
  v16 = *(v0 + 112);
  v17 = *MEMORY[0x277D1F180];
  v18 = sub_22C36D45C(v13);
  v19(v18);
  LOBYTE(v15) = sub_22C37D894(v16, v12);
  v20 = *(v13 + 8);
  v21 = sub_22C36D264();
  v22(v21);
  if ((v15 & 1) == 0)
  {
    goto LABEL_8;
  }

  v23 = *(v0 + 112);
  if (sub_22C83AB78())
  {
    goto LABEL_8;
  }

  v25 = *(v0 + 160);
  v24 = *(v0 + 168);
  v26 = *(v0 + 144);
  v27 = *(v0 + 152);
  v28 = *(*(v0 + 112) + 96);
  sub_22C903C7C();
  sub_22C9034CC();
  sub_22C3724F4(&qword_281435728);
  sub_22C36CA88();
  sub_22C90A56C();
  sub_22C36CA88();
  sub_22C90A56C();
  v29 = *(v27 + 8);
  v30 = sub_22C36ECB4();
  v29(v30);
  (v29)(v24, v26);
  if (*(v0 + 208) != *(v0 + 212))
  {
LABEL_8:
    v36 = *(v0 + 192);
    v37 = *(v0 + 160);
    v38 = *(v0 + 168);

    v39 = *(v0 + 8);
    sub_22C3E3574();
    sub_22C372E90();

    __asm { BRAA            X3, X16 }
  }

  v31 = *sub_22C374168((*(v0 + 128) + 24), *(*(v0 + 128) + 48));
  v32 = swift_task_alloc();
  *(v0 + 200) = v32;
  *v32 = v0;
  v32[1] = sub_22C8575B8;
  v33 = *(v0 + 120);
  sub_22C386674(*(v0 + 112));
  sub_22C372E90();

  return sub_22C84A49C();
}

uint64_t sub_22C8575B8()
{
  sub_22C36D5EC();
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;

  v6 = v2[24];
  v7 = v2[21];
  v8 = v2[20];

  v10 = *(v4 + 8);
  if (!v0)
  {
    v9 = sub_22C36A724();
  }

  return v10(v9);
}

uint64_t sub_22C85771C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_22C857808;

  return v6();
}

uint64_t sub_22C857808()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v3 = v2;
  v5 = v4;
  sub_22C369A3C();
  v7 = v6;
  sub_22C36D994();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  sub_22C369970();
  *v12 = v11;

  if (!v0)
  {
    v13 = *(v7 + 16);
    *v13 = v5;
    v13[1] = v3;
  }

  v14 = *(v11 + 8);
  sub_22C7E4ED0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_22C857904()
{
  sub_22C369980();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22C9063DC();
  v1[4] = v3;
  sub_22C3699B8(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = sub_22C3699D4();
  v7 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C369914(v7);
  v9 = *(v8 + 64);
  v1[7] = sub_22C36D0D4();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v10 = sub_22C903F4C();
  v1[10] = v10;
  sub_22C3699B8(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = sub_22C36D0D4();
  v1[13] = swift_task_alloc();
  v14 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22C857A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_22C388D74();
  a23 = v25;
  a24 = v26;
  sub_22C381520();
  a22 = v24;
  v27 = v24[9];
  v28 = v24[10];
  v29 = v24 + 9;
  v30 = v24[2];
  sub_22C903D5C();
  v31 = sub_22C36CCF8();
  sub_22C85D5C8(v31, v32);
  if (v33)
  {
    goto LABEL_5;
  }

  v29 = v24 + 8;
  v34 = v24[8];
  v35 = v24[13];
  v36 = v24[3];
  v37 = *(v24[11] + 32);
  v37(v35, v24[9], v24[10]);
  sub_22C8591E8(v35, v34);
  v38 = sub_22C36CCF8();
  sub_22C85D5C8(v38, v39);
  if (v33)
  {
    (*(v24[11] + 8))(v24[13], v24[10]);
LABEL_5:
    v40 = v24[2];
    sub_22C36DD28(*v29, &qword_27D9BD290, &qword_22C917EC0);
    v41 = v40;
    v42 = v24[2];
    goto LABEL_10;
  }

  v44 = v24[11];
  v43 = v24[12];
  v45 = v24[10];
  v46 = v24[7];
  v47 = v24[6];
  v48 = v24[2];
  v37(v43, v24[8], v45);
  sub_22C903DAC();
  (*(v44 + 16))(v46, v43, v45);
  sub_22C36BECC();
  sub_22C36C640(v49, v50, v51, v45);
  sub_22C903DBC();
  sub_22C903D6C();
  v52 = objc_allocWithZone(sub_22C903DCC());
  v53 = sub_22C903D9C();
  sub_22C90400C();
  v54 = v53;
  v55 = sub_22C9063CC();
  v56 = sub_22C90AACC();

  v57 = os_log_type_enabled(v55, v56);
  v58 = v24[13];
  v59 = v24[10];
  v60 = v24[11];
  v62 = v24[5];
  v61 = v24[6];
  a12 = v24[4];
  if (v57)
  {
    a11 = v24[12];
    v63 = sub_22C383050();
    a10 = v58;
    v64 = swift_slowAlloc();
    a9 = v61;
    v65 = sub_22C370060();
    a13 = v65;
    *v63 = 136315394;
    sub_22C36EE00();
    *(v63 + 4) = sub_22C36F9F4(0xD000000000000032, v66, &a13);
    *(v63 + 12) = 2112;
    *(v63 + 14) = v54;
    *v64 = v54;
    v54;
    _os_log_impl(&dword_22C366000, v55, v56, "%s trimmed QueryDecorationOutput to avoid critical failure: %@", v63, 0x16u);
    sub_22C36DD28(v64, &qword_27D9BB158, qword_22C910FD0);
    sub_22C3699EC();
    sub_22C36FF94(v65);
    sub_22C37E124();
    sub_22C3699EC();

    (*(v62 + 8))(a9, a12);
    v67 = *(v60 + 8);
    v67(a11, v59);
    v67(a10, v59);
  }

  else
  {

    (*(v62 + 8))(v61, a12);
    v68 = *(v60 + 8);
    v69 = sub_22C369D14();
    v68(v69);
    (v68)(v58, v59);
  }

LABEL_10:
  v71 = v24[12];
  v70 = v24[13];
  v73 = v24[8];
  v72 = v24[9];
  v75 = v24[6];
  v74 = v24[7];

  sub_22C36D5E0();
  sub_22C36EC40();

  return v78(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22C857DBC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_22C9063DC();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_22C3A5908(&qword_27D9C01F0, &qword_22C9263C0);
  v2[12] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C857EB8, 0, 0);
}

uint64_t sub_22C857EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C83AB14();
  sub_22C3743E4();
  v11 = *(v10[7] + 96);
  v12 = sub_22C903CAC();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v17 = v10[12];
    v16 = v10[13];
    v18 = v10[8];
    v19 = v17[10];
    sub_22C902DBC();
    sub_22C36A748();
    sub_22C36C640(v20, v21, v22, v23);
    v24 = v17[13];
    sub_22C903D4C();
    sub_22C36A748();
    sub_22C36C640(v25, v26, v27, v28);
    sub_22C3A5908(&qword_27D9C01F8, &qword_22C9263C8);
    sub_22C36A748();
    sub_22C36C640(v29, v30, v31, v32);
    v33 = (v16 + v17[7]);
    *v33 = v14;
    v33[1] = v15;
    v34 = (v16 + v17[8]);
    *v34 = 0x676E6967676F6CLL;
    v34[1] = 0xE700000000000000;
    v35 = (v16 + v17[9]);
    *v35 = 0;
    v35[1] = 0;
    v36 = (v16 + v17[11]);
    *v36 = 0;
    v36[1] = 0;
    *(v16 + v17[12]) = 0;
    sub_22C379DF8(v18 + 168, (v10 + 2), &qword_27D9C01C8, &qword_22C9298B0);
    if (v10[5])
    {
      v37 = v10[6];
      v38 = v10[7];
      sub_22C3766E0(v10 + 2, v10[5]);
      v39 = *(v37 + 16);
      v60 = v39 + *v39;
      v40 = v39[1];
      v41 = swift_task_alloc();
      v10[14] = v41;
      sub_22C3A5908(&qword_27D9C0200, &unk_22C9263D0);
      *v41 = v10;
      v41[1] = sub_22C858154;
      v42 = v10[13];
      sub_22C83AB2C();

      return v48(v43, v44, v45, v46, v47, v48, v49, v50, v37 + 16, v60);
    }

    sub_22C36DD28(v10[13], &qword_27D9C01F0, &qword_22C9263C0);
    sub_22C36DD28((v10 + 2), &qword_27D9C01C8, &qword_22C9298B0);
  }

  sub_22C85D508();

  sub_22C369A24();
  sub_22C83AB2C();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10);
}

uint64_t sub_22C858154()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 120) = v0;

  if (v0)
  {
    v9 = sub_22C8582D0;
  }

  else
  {
    v9 = sub_22C858250;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22C858250()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 104), &qword_27D9C01F0, &qword_22C9263C0);
  sub_22C36FF94((v0 + 16));
  sub_22C85D508();

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C8582D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  v11 = sub_22C85D508();
  sub_22C36DD28(v11, &qword_27D9C01F0, &qword_22C9263C0);
  sub_22C36FF94(v10 + 2);
  sub_22C90400C();
  v12 = sub_22C9063CC();
  v13 = sub_22C90AADC();
  v14 = sub_22C370048(v13);
  v15 = v10[15];
  v17 = v10[10];
  v16 = v10[11];
  v18 = v10[9];
  if (v14)
  {
    v19 = sub_22C36D240();
    *v19 = 0;
    _os_log_impl(&dword_22C366000, v12, v13, "Failed to cache SELF logger (Non fatal)", v19, 2u);
    sub_22C370510();
  }

  v20 = *(v17 + 8);
  v21 = sub_22C36BAFC();
  v22(v21);
  sub_22C85D508();

  sub_22C369A24();
  sub_22C36EC14();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_22C8583D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_22C85844C, 0, 0);
}

uint64_t sub_22C85844C()
{
  sub_22C36D5EC();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = *(v3 + 96);
  sub_22C903C8C();
  v6 = v5;
  sub_22C36D2A8();
  v7 = swift_allocObject();
  v0[7] = v7;
  v7[2] = v1;
  v7[3] = v2;
  v7[4] = v3;
  v8 = *(MEMORY[0x277D61CC0] + 4);

  v9 = v2;

  swift_task_alloc();
  sub_22C36CC90();
  v0[8] = v10;
  *v10 = v11;
  v10[1] = sub_22C858558;
  v12 = v0[6];
  v13 = v0[2];
  v14.n128_u64[0] = v6;

  return MEMORY[0x2821C8618](v13, &unk_22C929BB8, v7, v14);
}

uint64_t sub_22C858558()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C858678, 0, 0);
  }

  else
  {
    v9 = *(v3 + 56);

    sub_22C369A24();

    return v10();
  }
}

uint64_t sub_22C858678()
{
  sub_22C369980();
  v1 = *(v0 + 56);

  sub_22C369A24();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_22C8586D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C858774, 0, 0);
}

uint64_t sub_22C858774()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v1 = v0[6];
  v2 = v0[4];
  v3 = sub_22C374168((v0[3] + 24), *(v0[3] + 48));
  v0[7] = sub_22C903DAC();
  v0[8] = sub_22C903DBC();
  sub_22C903D5C();
  v4 = *v3;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_22C858848;
  v7 = v0[5];
  v6 = v0[6];
  sub_22C36ECB4();
  sub_22C7E4ED0();

  return sub_22C84960C();
}

uint64_t sub_22C858848()
{
  sub_22C388250();
  sub_22C3743E4();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  v7 = v4[9];
  *v6 = *v1;
  v5[10] = v0;

  v8 = v4[8];
  v9 = v4[7];
  v10 = v4[6];
  if (!v0)
  {
    v5[11] = v3;
  }

  sub_22C36DD28(v10, &qword_27D9BD290, &qword_22C917EC0);

  sub_22C36EC14();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C8589E4()
{
  sub_22C369980();
  v1 = *(v0 + 48);
  **(v0 + 16) = *(v0 + 88);

  sub_22C369C50();

  return v2();
}

uint64_t sub_22C858A48()
{
  sub_22C369980();
  v1 = *(v0 + 48);

  sub_22C369A24();
  v3 = *(v0 + 80);

  return v2();
}

id sub_22C858AA4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, double a5)
{
  v51 = a2;
  v52 = a4;
  v8 = sub_22C9063DC();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v50 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v50 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  v21 = sub_22C9018BC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  v26 = a1;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  if (swift_dynamicCast())
  {
    (*(v22 + 8))(v25, v21);
    sub_22C90400C();

    v27 = sub_22C9063CC();
    v28 = sub_22C90AADC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v55 = v30;
      *v29 = 136315650;
      *(v29 + 4) = sub_22C36F9F4(0xD000000000000039, 0x800000022C937A10, &v55);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_22C36F9F4(v51, a3, &v55);
      *(v29 + 22) = 2048;
      *(v29 + 24) = a5;
      _os_log_impl(&dword_22C366000, v27, v28, "%s handling: %s timed out with timeout of %f", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v30, -1, -1);
      MEMORY[0x2318B9880](v29, -1, -1);
    }

    v31 = *(v53 + 8);
    v31(v20, v54);
    if ((sub_22C90362C() & 1) == 0)
    {
      sub_22C90400C();

      v32 = sub_22C9063CC();
      v33 = sub_22C90AADC();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v55 = v35;
        *v34 = 136315394;
        *(v34 + 4) = sub_22C36F9F4(0xD000000000000039, 0x800000022C937A10, &v55);
        *(v34 + 12) = 2080;
        *(v34 + 14) = sub_22C36F9F4(v51, a3, &v55);
        _os_log_impl(&dword_22C366000, v32, v33, "%s handling: %s critical errors suppressed. Proceeding without results", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v35, -1, -1);
        MEMORY[0x2318B9880](v34, -1, -1);
      }

      return (v31)(v18, v54);
    }

LABEL_11:
    swift_willThrow();
    return a1;
  }

  sub_22C90400C();
  v37 = a1;

  v38 = sub_22C9063CC();
  v39 = sub_22C90AADC();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v55 = v42;
    *v40 = 136315650;
    *(v40 + 4) = sub_22C36F9F4(0xD000000000000039, 0x800000022C937A10, &v55);
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_22C36F9F4(v51, a3, &v55);
    *(v40 + 22) = 2112;
    v43 = a1;
    v44 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 24) = v44;
    *v41 = v44;
    _os_log_impl(&dword_22C366000, v38, v39, "%s handling: %s errored out with %@", v40, 0x20u);
    sub_22C36DD28(v41, &qword_27D9BB158, qword_22C910FD0);
    MEMORY[0x2318B9880](v41, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v42, -1, -1);
    MEMORY[0x2318B9880](v40, -1, -1);
  }

  v45 = *(v53 + 8);
  v45(v15, v54);
  if (sub_22C90362C())
  {
    goto LABEL_11;
  }

  sub_22C90400C();

  v46 = sub_22C9063CC();
  v47 = sub_22C90AADC();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v55 = v49;
    *v48 = 136315394;
    *(v48 + 4) = sub_22C36F9F4(0xD000000000000039, 0x800000022C937A10, &v55);
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_22C36F9F4(v51, a3, &v55);
    _os_log_impl(&dword_22C366000, v46, v47, "%s handling: %s critical errors suppressed. Proceeding without results", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v49, -1, -1);
    MEMORY[0x2318B9880](v48, -1, -1);
  }

  return (v45)(v12, v54);
}

void sub_22C8591E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = sub_22C90377C();
  v4 = sub_22C369824(v96);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v87 - v13;
  v15 = sub_22C9037EC();
  v16 = sub_22C369824(v15);
  v111 = v17;
  v112 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  v99 = (v20 - v21);
  MEMORY[0x28223BE20](v22);
  v95 = &v87 - v23;
  v24 = sub_22C9063DC();
  v25 = sub_22C369824(v24);
  v94 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369ABC();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v33 = sub_22C859A08();
  v34 = *(sub_22C903F1C() + 16);

  if (v33 >= v34)
  {
    sub_22C903F4C();
    sub_22C36A748();
    sub_22C37BF60();

    sub_22C36C640(v46, v47, v48, v49);
  }

  else
  {
    v110 = v6;
    v88 = v33;
    v90 = v31;
    v35 = sub_22C903F1C();
    sub_22C90400C();

    v36 = sub_22C9063CC();
    v37 = sub_22C90AADC();
    v38 = sub_22C370048(v37);
    v105 = v14;
    v106 = v11;
    v93 = a2;
    v92 = a1;
    v91 = v24;
    if (v38)
    {
      v39 = v36;
      v40 = sub_22C383050();
      v41 = sub_22C370060();
      v114 = v41;
      v42 = &unk_22C90F000;
      *v40 = 136315394;
      *(v40 + 4) = sub_22C36F9F4(0xD00000000000003ALL, 0x800000022C9378E0, &v114);
      *(v40 + 12) = 2048;
      *(v40 + 14) = *(v35 + 16);

      _os_log_impl(&dword_22C366000, v39, v37, "%s final count of tools %ld exceeds the expected count of prompt tools. Please clone off a radar to IntelligenceFlow | Query Decoration", v40, 0x16u);
      sub_22C36FF94(v41);
      sub_22C3699EC();
      sub_22C37E124();

      v43 = sub_22C383E74();
      v44(v43);
      v45 = v95;
    }

    else
    {

      v51 = sub_22C383E74();
      v52(v51);
      v45 = v95;
      v42 = &unk_22C90F000;
    }

    v53 = v35;
    v54 = 0;
    v108 = *(v35 + 16);
    v104 = v111 + 16;
    v103 = *MEMORY[0x277D1ED28];
    v55 = (v110 + 104);
    v56 = (v110 + 8);
    v57 = *MEMORY[0x277D1ED30];
    v101 = *MEMORY[0x277D1ED40];
    v102 = v57;
    v100 = (v111 + 8);
    v97 = (v111 + 32);
    v98 = MEMORY[0x277D84F90];
    v58 = v96;
    v107 = v53;
    while (v108 != v54)
    {
      if (v54 >= *(v53 + 16))
      {
        __break(1u);
        return;
      }

      v110 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v59 = v54;
      v109 = *(v111 + 72);
      (*(v111 + 16))(v45, v53 + v110 + v109 * v54, v112);
      v60 = v105;
      sub_22C90378C();
      v61 = *v55;
      v62 = v106;
      (*v55)(v106, v103, v58);
      v63 = sub_22C90376C();
      v64 = *v56;
      v65 = sub_22C372158();
      v64(v65);
      (v64)(v60, v58);
      if (v63)
      {
        goto LABEL_15;
      }

      sub_22C90378C();
      v61(v62, v102, v58);
      v66 = sub_22C90376C();
      v67 = sub_22C372158();
      v64(v67);
      (v64)(v60, v58);
      if (v66 & 1) != 0 || (sub_22C90378C(), v61(v62, v101, v58), v68 = sub_22C90376C(), v69 = sub_22C372158(), v64(v69), (v64)(v60, v58), (v68))
      {
LABEL_15:
        v70 = *v97;
        (*v97)(v99, v45, v112);
        v71 = v98;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v114 = v71;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C3B60C0(0, *(v71 + 16) + 1, 1);
          v45 = v95;
          v71 = v114;
        }

        v42 = &unk_22C90F000;
        v74 = *(v71 + 16);
        v73 = *(v71 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_22C3B60C0(v73 > 1, v74 + 1, 1);
          v45 = v95;
          v71 = v114;
        }

        v54 = v59 + 1;
        *(v71 + 16) = v74 + 1;
        v98 = v71;
        v70(v71 + v110 + v74 * v109, v99, v112);
        v58 = v96;
        v53 = v107;
      }

      else
      {
        (*v100)(v45, v112);
        v54 = v59 + 1;
        v42 = &unk_22C90F000;
        v53 = v107;
      }
    }

    v114 = v98;
    v75 = sub_22C7C524C(v88);

    v76 = v90;
    sub_22C90400C();

    v77 = sub_22C9063CC();
    v78 = sub_22C90AACC();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = sub_22C383050();
      v113 = sub_22C37A180();
      *v79 = v42[363];
      *(v79 + 4) = sub_22C36F9F4(0xD00000000000003ALL, 0x800000022C9378E0, &v113);
      *(v79 + 12) = 2080;
      v80 = static QueryDecorationLoggingUtils.generateReadableToolList(_:)(v75);
      v82 = sub_22C36F9F4(v80, v81, &v113);

      *(v79 + 14) = v82;
      _os_log_impl(&dword_22C366000, v77, v78, "%s trimmed tools down to expected count. Returning these tools: %s", v79, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C372FB0();
    }

    v89(v76, v91);
    sub_22C903EEC();
    sub_22C903EFC();
    sub_22C903F0C();
    sub_22C903F3C();
    sub_22C383BC8();
    sub_22C903EDC();
    sub_22C903F4C();
    sub_22C36BECC();
    sub_22C36C640(v83, v84, v85, v86);
    sub_22C37BF60();
  }
}

uint64_t sub_22C859A08()
{
  v1 = *sub_22C374168((v0 + 216), *(v0 + 240));
  sub_22C37931C();
  v3 = v2;
  v4 = *sub_22C374168((v0 + 216), *(v0 + 240));
  sub_22C37931C();
  v6 = v5;
  v7 = *sub_22C374168((v0 + 216), *(v0 + 240));
  sub_22C37931C();
  if (v3 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v3;
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22C859AE4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22C3C0980;

  return sub_22C84DCEC(a2);
}

uint64_t sub_22C859B80()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    v9 = sub_22C859CE8;
  }

  else
  {
    v10 = *(v3 + 64);

    v9 = sub_22C859C84;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22C859C84()
{
  sub_22C369980();
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);

  sub_22C36D5E0();

  return v3(v1);
}

uint64_t sub_22C859CE8()
{
  sub_22C369980();
  v2 = v0[7];
  v1 = v0[8];

  sub_22C369A24();
  v4 = v0[10];

  return v3();
}

uint64_t sub_22C859D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(*(sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C859DF8, 0, 0);
}

uint64_t sub_22C859DF8()
{
  sub_22C36FB38();
  sub_22C379DF8(v0[6], v0[8], &qword_27D9C09E0, &qword_22C929868);
  v1 = type metadata accessor for RetrievedToolContext();
  v2 = sub_22C36CCF8();
  v4 = sub_22C370B74(v2, v3, v1);
  v5 = v0[8];
  if (v4 == 1)
  {
    sub_22C36DD28(v0[8], &qword_27D9C09E0, &qword_22C929868);
    v6 = 0;
  }

  else
  {
    v6 = *v5;

    sub_22C84B5D8(v5);
  }

  v7 = v0[6];
  v8 = v0[7];
  v0[2] = v6;
  sub_22C379DF8(v7, v8, &qword_27D9C09E0, &qword_22C929868);
  v9 = sub_22C36CCF8();
  v11 = sub_22C370B74(v9, v10, v1);
  v12 = v0[7];
  if (v11 == 1)
  {
    sub_22C36DD28(v0[7], &qword_27D9C09E0, &qword_22C929868);
    v13 = 0;
  }

  else
  {
    v13 = *(v12 + 8);

    sub_22C84B5D8(v12);
  }

  v0[9] = v13;
  swift_task_alloc();
  sub_22C36CC90();
  v0[10] = v14;
  *v14 = v15;
  v16 = sub_22C387CEC(v14);

  return sub_22C850DF8(v16, v17, v18, v19);
}

uint64_t sub_22C859F6C()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *(v5 + 72);
  v8 = *v1;
  sub_22C369970();
  *v9 = v8;
  v3[11] = v0;

  v10 = v3[2];

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C85A0C8, 0, 0);
  }

  else
  {
    v12 = v3[7];
    v11 = v3[8];

    sub_22C369C50();

    return v13();
  }
}

uint64_t sub_22C85A0C8()
{
  sub_22C369980();
  v2 = v0[7];
  v1 = v0[8];

  sub_22C369A24();
  v4 = v0[11];

  return v3();
}

uint64_t sub_22C85A12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22C85A150, 0, 0);
}

uint64_t sub_22C85A150()
{
  sub_22C36D5EC();
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v2 + 96);
  sub_22C903C8C();
  sub_22C36A83C();
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277D61CC0] + 4);

  v6 = swift_task_alloc();
  v0[6] = v6;
  sub_22C3A5908(&qword_27D9C0A10, &qword_22C9299C8);
  sub_22C85D2E4();
  *v6 = v7;
  sub_22C85D57C();
  v11.n128_f64[0] = sub_22C37C000();

  return MEMORY[0x2821C8618](v8, v9, v10, v11);
}

uint64_t sub_22C85A250()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C85A370, 0, 0);
  }

  else
  {
    v9 = *(v3 + 40);

    sub_22C369A24();

    return v10();
  }
}

uint64_t sub_22C85A370()
{
  sub_22C369980();
  v1 = *(v0 + 40);

  sub_22C369A24();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_22C85A3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22C85A3F0, 0, 0);
}

uint64_t sub_22C85A3F0()
{
  sub_22C369980();
  sub_22C386E4C();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_22C85A480;
  sub_22C386674(*(v0 + 32));

  return sub_22C840B48();
}

uint64_t sub_22C85A480()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;

  if (v0)
  {
    sub_22C85D364();

    return v11();
  }

  else
  {
    *(v5 + 48) = v3;
    v13 = sub_22C85D374();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_22C85A5A0()
{
  **(v0 + 16) = *(v0 + 48);
  sub_22C369C50();
  return v1();
}

uint64_t sub_22C85A5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22C85A5F0, 0, 0);
}

uint64_t sub_22C85A5F0()
{
  sub_22C369980();
  sub_22C386E4C();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_22C85A680;
  sub_22C386674(*(v0 + 32));

  return sub_22C84881C();
}

uint64_t sub_22C85A680()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;

  if (v0)
  {
    sub_22C85D364();

    return v11();
  }

  else
  {
    *(v5 + 48) = v3;
    v13 = sub_22C85D374();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_22C85A7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22C85A7C4, 0, 0);
}

uint64_t sub_22C85A7C4()
{
  sub_22C36D5EC();
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v2 + 96);
  sub_22C903C8C();
  sub_22C36A83C();
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277D61CC0] + 4);

  v6 = swift_task_alloc();
  v0[6] = v6;
  sub_22C3A5908(&qword_27D9BE358, &qword_22C9299A0);
  sub_22C85D2E4();
  *v6 = v7;
  sub_22C85D57C();
  v11.n128_f64[0] = sub_22C37C000();

  return MEMORY[0x2821C8618](v8, v9, v10, v11);
}

uint64_t sub_22C85A8C4()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C85D130, 0, 0);
  }

  else
  {
    v9 = *(v3 + 40);

    sub_22C369A24();

    return v10();
  }
}

uint64_t sub_22C85A9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_22C3A5908(&qword_27D9BB670, &unk_22C90FA40) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_22C90399C();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C85AAF8, 0, 0);
}

uint64_t sub_22C85AAF8()
{
  sub_22C369980();
  sub_22C386E4C();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_22C85AB8C;
  sub_22C386674(*(v0 + 32));

  return sub_22C842224();
}

uint64_t sub_22C85AB8C()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 88);
  *v4 = *v1;
  v3[12] = v7;
  v3[13] = v0;

  if (v0)
  {
    v9 = v3[9];
    v8 = v3[10];
    v10 = v3[8];
    v11 = v3[5];

    sub_22C369A24();

    return v12();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22C85ACE0, 0, 0);
  }
}

void sub_22C85ACE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  sub_22C379BA4();
  v19 = 0;
  v20 = v18[7];
  v21 = v18[13];
  v60 = v18[12];
  v22 = *(v60 + 16);
  v23 = (v20 + 8);
  v58 = (v20 + 32);
  v59 = MEMORY[0x277D84F90];
  while (v22 != v19)
  {
    if (v19 >= *(v60 + 16))
    {
      __break(1u);
      return;
    }

    v24 = v18[10];
    v25 = v18[5];
    v26 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v27 = *(v20 + 72);
    (*(v20 + 16))(v24, v18[12] + v26 + v27 * v19, v18[6]);
    sub_22C85AF80(v24, v25);
    v28 = v21;
    v29 = v18[10];
    v30 = v18[6];
    if (v28)
    {

      (*v23)(v29, v30);
      sub_22C375E04();

      return;
    }

    v31 = v18[5];
    (*v23)(v18[10], v18[6]);
    sub_22C85D5C8(v31, 1);
    if (v32)
    {
      sub_22C36DD28(v18[5], &qword_27D9BB670, &unk_22C90FA40);
      v21 = 0;
      ++v19;
    }

    else
    {
      a9 = v18[9];
      a10 = v18[8];
      v33 = v18[5];
      v34 = v18[6];
      v35 = *v58;
      (*v58)();
      (v35)(a10, a9, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = *(v59 + 16);
        sub_22C595C60();
        v59 = v41;
      }

      v37 = *(v59 + 16);
      if (v37 >= *(v59 + 24) >> 1)
      {
        sub_22C595C60();
        v59 = v42;
      }

      ++v19;
      v38 = v18[8];
      v39 = v18[6];
      *(v59 + 16) = v37 + 1;
      (v35)(v59 + v26 + v37 * v27, v38, v39);
      v21 = 0;
    }
  }

  v43 = v18[12];
  v45 = v18[9];
  v44 = v18[10];
  v46 = v18[8];
  v47 = v18[5];
  v48 = v18[2];

  *v48 = v59;

  sub_22C369C50();
  sub_22C375E04();

  v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, v58, v59, v20 + 16, v60, a15, a16, a17, a18);
}

uint64_t sub_22C85AF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = sub_22C90952C();
  v80 = *(v82 - 8);
  v5 = *(v80 + 64);
  MEMORY[0x28223BE20](v82);
  v79 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C9063DC();
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](v7);
  v87 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C90399C();
  v11 = *(v10 - 8);
  v90 = v10;
  v91 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v89 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v83 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v69 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = (&v69 - v21);
  v23 = sub_22C9093BC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v81 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v86 = &v69 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v69 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v88 = &v69 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v69 - v35;
  sub_22C90391C();
  if (sub_22C370B74(v22, 1, v23) == 1)
  {
    v20 = v22;
LABEL_5:
    sub_22C36DD28(v20, &qword_27D9BB908, &qword_22C910960);
    v38 = v90;
    (*(v91 + 16))(a2, a1, v90);
    return sub_22C36C640(a2, 0, 1, v38);
  }

  v77 = a2;
  v78 = v2;
  v37 = *(v24 + 32);
  v37(v36, v22, v23);
  sub_22C82AA1C(v36, v20);
  if (sub_22C370B74(v20, 1, v23) == 1)
  {
    (*(v24 + 8))(v36, v23);
    a2 = v77;
    goto LABEL_5;
  }

  v39 = v88;
  v37(v88, v20, v23);
  v38 = v90;
  (*(v91 + 16))(v89, a1, v90);
  v40 = v87;
  sub_22C90400C();
  v41 = *(v24 + 16);
  v41(v32, v39, v23);
  v42 = v86;
  v75 = v41;
  v76 = v24 + 16;
  v41(v86, v36, v23);
  v43 = sub_22C9063CC();
  v44 = sub_22C90AACC();
  v45 = os_log_type_enabled(v43, v44);
  v74 = v36;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v69 = v46;
    v73 = swift_slowAlloc();
    v92 = v73;
    *v46 = 136315394;
    v47 = v79;
    v72 = v43;
    sub_22C90935C();
    v48 = sub_22C9094FC();
    v50 = v49;
    v71 = v44;
    v70 = *(v80 + 8);
    v70(v47, v82);
    v51 = *(v24 + 8);
    v80 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v51(v32, v23);
    v52 = sub_22C36F9F4(v48, v50, &v92);

    v53 = v69;
    *(v69 + 1) = v52;
    *(v53 + 6) = 2080;
    v54 = v86;
    sub_22C90935C();
    v55 = sub_22C9094FC();
    v57 = v56;
    v70(v47, v82);
    v86 = v51;
    v51(v54, v23);
    v58 = sub_22C36F9F4(v55, v57, &v92);
    v38 = v90;

    *(v53 + 14) = v58;
    v59 = v72;
    _os_log_impl(&dword_22C366000, v72, v71, "corrected bundle id to %s. Was %s", v53, 0x16u);
    v60 = v73;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v60, -1, -1);
    MEMORY[0x2318B9880](v53, -1, -1);

    (*(v84 + 8))(v87, v85);
  }

  else
  {

    v61 = *(v24 + 8);
    v80 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v61(v42, v23);
    v86 = v61;
    v61(v32, v23);
    (*(v84 + 8))(v40, v85);
  }

  a2 = v77;
  v62 = v88;
  v63 = v75;
  v75(v81, v88, v23);
  v64 = v89;
  sub_22C90396C();
  v65 = v83;
  v63(v83, v62, v23);
  sub_22C36C640(v65, 0, 1, v23);
  sub_22C90392C();
  v66 = v62;
  v67 = v86;
  (v86)(v66, v23);
  v67(v74, v23);
  (*(v91 + 32))(a2, v64, v38);
  return sub_22C36C640(a2, 0, 1, v38);
}

uint64_t sub_22C85B738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22C85B75C, 0, 0);
}

uint64_t sub_22C85B75C()
{
  sub_22C369980();
  sub_22C386E4C();
  swift_task_alloc();
  sub_22C36CC90();
  v0[6] = v1;
  *v1 = v2;
  v1[1] = sub_22C5DF1B0;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];

  return sub_22C840000();
}

uint64_t sub_22C85B7F0(uint64_t result)
{
  if (*(result + 24))
  {
    sub_22C378A4C(result, v3);
    v1 = v4;
    v2 = v5;
    sub_22C374168(v3, v4);
    (*(v2 + 8))(v1, v2);
    return sub_22C36FF94(v3);
  }

  return result;
}

uint64_t sub_22C85B868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22C85B890, 0, 0);
}

uint64_t sub_22C85B890()
{
  sub_22C3743E4();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v4 + 96);
  sub_22C903C8C();
  v6 = swift_allocObject();
  v0[7] = v6;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v4;
  v7 = *(MEMORY[0x277D61CC0] + 4);

  v8 = swift_task_alloc();
  v0[8] = v8;
  sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C85D2E4();
  *v8 = v9;
  sub_22C85D57C();
  v13.n128_f64[0] = sub_22C37C000();

  return MEMORY[0x2821C8618](v10, v11, v12, v13);
}

uint64_t sub_22C85B9B4()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C85D134, 0, 0);
  }

  else
  {
    v9 = *(v3 + 56);

    sub_22C369A24();

    return v10();
  }
}

uint64_t sub_22C85BAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return MEMORY[0x2822009F8](sub_22C85BAFC, 0, 0);
}

uint64_t sub_22C85BAFC()
{
  sub_22C36D5EC();
  v1 = v0[11];
  sub_22C378A4C(v0[10] + 24, (v0 + 2));
  v2 = sub_22C374168(v0 + 2, v0[5]);
  v3 = v0[11];
  if (v1)
  {
    v0[7] = v3;
    v4 = v3;
  }

  else
  {
    sub_22C80E0F0(MEMORY[0x277D84FA0], v0 + 7);
    v4 = v0[7];
  }

  v0[8] = v4;
  if (v0[12])
  {
    v5 = v0[12];
  }

  v6 = *v2;

  swift_task_alloc();
  sub_22C36CC90();
  v0[14] = v7;
  *v7 = v8;
  v7[1] = sub_22C85BC20;
  v9 = v0[13];
  v10 = v0[9];

  return sub_22C83FB5C();
}

uint64_t sub_22C85BC20()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *(v5 + 96);
  v8 = *v1;
  sub_22C369970();
  *v9 = v8;
  *(v3 + 120) = v0;

  v10 = *(v3 + 64);

  if (v0)
  {
    v11 = sub_22C85BDB0;
  }

  else
  {
    v11 = sub_22C85BD58;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_22C85BD58()
{
  sub_22C369980();
  sub_22C36FF94((v0 + 16));
  sub_22C369C50();

  return v1();
}

uint64_t sub_22C85BDB0()
{
  sub_22C369980();
  sub_22C36FF94((v0 + 16));
  sub_22C369A24();
  v2 = *(v0 + 120);

  return v1();
}

uint64_t sub_22C85BE0C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v63 = a3;
  v66 = a1;
  v67 = sub_22C90622C();
  v6 = sub_22C369824(v67);
  v65 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v64 = v11 - v10;
  v12 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  v13 = sub_22C369914(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v62 = &v58 - v16;
  v61 = sub_22C90292C();
  v17 = sub_22C369824(v61);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v24 = v23 - v22;
  v60 = sub_22C90069C();
  v25 = sub_22C369824(v60);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  v32 = v31 - v30;
  v33 = sub_22C3A5908(&qword_27D9C0250, &unk_22C929510);
  v34 = sub_22C369914(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v58 - v37;
  sub_22C903DEC();
  sub_22C36A748();
  sub_22C36C640(v39, v40, v41, v42);
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  v44 = v4[11];
  v43 = v4[12];
  sub_22C374168(v4 + 8, v44);
  v59 = a2;
  sub_22C903C9C();
  sub_22C903C0C();
  sub_22C90291C();

  (*(v43 + 8))(v69, v32, v24, v44, v43);
  (*(v19 + 8))(v24, v61);
  (*(v27 + 8))(v32, v60);
  sub_22C378A4C((v4 + 13), v68);
  v45 = v62;
  sub_22C85C794(v63, v62);
  sub_22C902DBC();
  sub_22C598F54();
  sub_22C36BECC();
  sub_22C36C640(v46, v47, v48, v49);
  DecorationContext = type metadata accessor for QueryDecorationContext();
  v51 = *(DecorationContext + 48);
  v52 = *(DecorationContext + 52);
  swift_allocObject();
  v53 = QueryDecorationContext.init(input:toolboxResources:lookback:toolExecutionSession:selfLogger:signposter:intelligenceFlowSessionId:)(v59, 0, v38, v70, v69, v68, v45);
  v54 = v53[5];
  v55 = v53[6];
  sub_22C3766E0(v53 + 2, v54);
  v56 = v64;
  sub_22C90621C();
  (*(v55 + 104))(v66, v56, v54, v55);

  return (*(v65 + 8))(v56, v67);
}

uint64_t sub_22C85C1C4()
{
  sub_22C369980();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22C374D1C(v3);
  *v4 = v5;
  v6 = sub_22C37BCE8(v4);

  return sub_22C8504F8(v6, v2);
}

uint64_t sub_22C85C24C()
{
  sub_22C369980();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22C374D1C(v3);
  *v4 = v5;
  v6 = sub_22C37BCE8(v4);

  return sub_22C850684(v6, v2);
}

uint64_t sub_22C85C2D4()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C36AC74(v1);

  return v4(v3);
}

uint64_t sub_22C85C364(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C85C3D4()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v1 = sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868);
  sub_22C369914(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = sub_22C36D860(v6);
  *v7 = v8;
  v7[1] = sub_22C46BC08;
  sub_22C36DBB4();
  sub_22C7E4ED0();

  return sub_22C850A7C(v9, v10, v11, v12);
}

uint64_t sub_22C85C4AC()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v1[1] = sub_22C46BC08;
  v3 = sub_22C36C51C();

  return sub_22C854F80(v3, v4, v5);
}

uint64_t sub_22C85C53C()
{
  sub_22C36FB38();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_22C374D1C(v4);
  *v5 = v6;
  v7 = sub_22C37BCE8(v5);

  return sub_22C856FCC(v7, v2, v3);
}

uint64_t sub_22C85C5D4()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = sub_22C36A724();

  return v7(v6);
}

uint64_t sub_22C85C6CC()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C36AC74(v1);

  return v4(v3);
}

uint64_t sub_22C85C794(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C902DBC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C85C7F8()
{
  sub_22C369980();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22C374D1C(v3);
  *v4 = v5;
  v6 = sub_22C37BCE8(v4);

  return sub_22C850684(v6, v2);
}

uint64_t sub_22C85C880()
{
  sub_22C369980();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22C374D1C(v3);
  *v4 = v5;
  v6 = sub_22C37BCE8(v4);

  return sub_22C859AE4(v6, v2);
}

uint64_t sub_22C85C908()
{
  v1 = sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868);
  sub_22C3699B8(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);

  v8 = *(v0 + 24);

  v9 = (v0 + v4);
  v10 = type metadata accessor for RetrievedToolContext();
  v11 = sub_22C36CCF8();
  if (!sub_22C370B74(v11, v12, v10))
  {
    v13 = *v9;

    v14 = *(v9 + 1);

    v15 = *(v10 + 24);
    v16 = sub_22C903E7C();
    sub_22C36985C(v16);
    (*(v17 + 8))(&v9[v15]);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_22C85CA1C()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v1 = sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868);
  sub_22C369914(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = sub_22C36D860(v6);
  *v7 = v8;
  v7[1] = sub_22C382AF4;
  sub_22C36DBB4();
  sub_22C7E4ED0();

  return sub_22C859D4C(v9, v10, v11, v12);
}

uint64_t sub_22C85CAF4()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_22C36D860(v5);
  *v6 = v7;
  sub_22C36DBE8(v6);
  sub_22C383BC8();
  sub_22C7E4ED0();

  return sub_22C85B868(v8, v9, v10, v11, v12);
}

uint64_t sub_22C85CB90()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_22C36D860(v5);
  *v6 = v7;
  sub_22C36DBE8(v6);
  sub_22C383BC8();
  sub_22C7E4ED0();

  return sub_22C85BAD4(v8, v9, v10, v11, v12);
}

uint64_t sub_22C85CC2C()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v1[1] = sub_22C46BC08;
  v3 = sub_22C36C51C();

  return sub_22C85A5CC(v3, v4, v5);
}

uint64_t sub_22C85CCBC()
{
  sub_22C36FB38();
  sub_22C85D420();
  v2 = swift_task_alloc();
  v3 = sub_22C36D860(v2);
  *v3 = v4;
  v5 = sub_22C36DBE8(v3);

  return sub_22C8583D8(v5, v6, v1, v0);
}

uint64_t sub_22C85CD50()
{
  sub_22C36FB38();
  sub_22C85D420();
  v2 = swift_task_alloc();
  v3 = sub_22C36D860(v2);
  *v3 = v4;
  v5 = sub_22C36DBE8(v3);

  return sub_22C8586D4(v5, v6, v1, v0);
}

uint64_t sub_22C85CDE4()
{
  sub_22C36FB38();
  sub_22C85D420();
  v2 = swift_task_alloc();
  v3 = sub_22C36D860(v2);
  *v3 = v4;
  v5 = sub_22C36DBE8(v3);

  return sub_22C85B738(v5, v6, v1, v0);
}

uint64_t sub_22C85CE78()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v1[1] = sub_22C46BC08;
  v3 = sub_22C36C51C();

  return sub_22C85A7A0(v3, v4, v5);
}

uint64_t sub_22C85CF08()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v1[1] = sub_22C46BC08;
  v3 = sub_22C36C51C();

  return sub_22C85A9E4(v3, v4, v5);
}

uint64_t sub_22C85CF98()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v1[1] = sub_22C46BC08;
  v3 = sub_22C36C51C();

  return sub_22C85A12C(v3, v4, v5);
}

uint64_t sub_22C85D028()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_22C85D064()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v1[1] = sub_22C46BC08;
  v3 = sub_22C36C51C();

  return sub_22C85A3CC(v3, v4, v5);
}

uint64_t sub_22C85D154(uint64_t a1)
{
  sub_22C372F94(a1);
  sub_22C372F94(&unk_22C9299E0);
}

uint64_t sub_22C85D19C()
{
  v2 = v0[154];
  v3 = v0[152];
  v15 = v0[146];
  v16 = v0[151];
  v14 = v0[145];
  v4 = v0[144];
  v12 = v0[155];
  v13 = v0[141];
  v17 = v0[143];
  v18 = v0[140];
  v19 = v0[139];
  v20 = v0[138];
  v21 = v0[137];
  v22 = v0[136];
  v23 = v0[135];
  v24 = v0[134];
  v25 = v0[131];
  v26 = v0[130];
  v5 = v0[125];
  *(v1 - 112) = v0[128];
  *(v1 - 104) = v5;
  v6 = v0[121];
  v7 = v0[119];
  v8 = v0[118];
  *(v1 - 96) = v0[122];
  *(v1 - 88) = v8;
  v9 = v3[6];
  sub_22C374168(v3 + 2, v3[5]);

  return sub_22C90621C();
}

uint64_t sub_22C85D26C()
{
  v2 = *(v0 + 2456);
  v3 = *(v0 + 2408);
  v4 = v1[6];
  sub_22C374168(v1 + 2, v1[5]);

  return sub_22C90621C();
}

uint64_t sub_22C85D2AC()
{
  v1 = v0[90];
  v2 = v0[91];
  sub_22C374168(v0 + 87, v1);
  v3 = *(v2 + 8);
  return v1;
}

uint64_t sub_22C85D304()
{
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[8];
}

id sub_22C85D324(void *a1, uint64_t a2, unint64_t a3, double a4)
{
  v6 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_22C858AA4(a1, v6, a3, v4, a4);
}

uint64_t sub_22C85D364()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_22C85D388()
{
  *(v2 + 48) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 16) = 0u;

  return sub_22C84C6D8(v3, 0, v0, v2 + 16, v1);
}

uint64_t sub_22C85D3E4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[6];
  v5 = *(v0[7] + 8);
  return v0[8];
}

void sub_22C85D420()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_22C85D430(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void sub_22C85D450()
{
  v1 = v0[4];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[16];
}

uint64_t sub_22C85D480(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_22C36F9F4(0xD00000000000005ELL, a2, a3);
}

uint64_t sub_22C85D498()
{
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[9];
}

BOOL sub_22C85D4B4()
{

  return sub_22C37D894(v1, v0);
}

void sub_22C85D4CC()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[16];
  v6 = v0[13];
}

void sub_22C85D4E0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[5];
  v5 = v0[3];
}

void sub_22C85D4F4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[6];
  v5 = v0[3];
}

uint64_t sub_22C85D508()
{
  result = *(v0 + 104);
  v2 = *(v0 + 88);
  return result;
}

__n128 sub_22C85D514(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(v9 + 144) = a1;
  result = a9;
  a1[1] = a9;
  return result;
}

uint64_t sub_22C85D528()
{
  *(v2 + 14) = v0;
  *(v2 + 22) = 2080;
  return v1;
}

uint64_t sub_22C85D53C()
{
  result = v0[9];
  v2 = v0[7];
  v3 = v0[4];
  v4 = *(v0[8] + 8);
  return result;
}

uint64_t sub_22C85D550()
{
  sub_22C36FF94((v0 + 696));
}

void sub_22C85D594()
{
  v1 = v0[20];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
}

uint64_t sub_22C85D5A8()
{
  v2 = v0[19];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  return sub_22C903DEC();
}

uint64_t RetrievedTool.withAttribution(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_22C9037EC();
  sub_22C369A9C(v4);
  v6 = *(v5 + 16);
  v7 = sub_22C36BA00();
  v8(v7);
  result = type metadata accessor for RetrievedToolWithAttribution();
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t RetrievedTool.withEmptyAttribution()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22C9037EC();
  sub_22C369A9C(v2);
  v4 = *(v3 + 16);
  v5 = sub_22C36BA00();
  v6(v5);
  result = type metadata accessor for RetrievedToolWithAttribution();
  *(a1 + *(result + 20)) = 6;
  return result;
}

uint64_t RetrievedToolWithAttribution.id.getter()
{
  v0 = sub_22C9036EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90371C();
  RetrievedTool.Definition.toCandidateIdentifier()();
  (*(v1 + 8))(v4, v0);

  return sub_22C36BA00();
}

uint64_t RetrievedToolWithAttribution.init(_:selectionCriteria:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_22C9037EC();
  sub_22C369A9C(v6);
  (*(v7 + 32))(a3, a1);
  result = type metadata accessor for RetrievedToolWithAttribution();
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t type metadata accessor for RetrievedToolWithAttribution()
{
  result = qword_281431430;
  if (!qword_281431430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RetrievedToolWithAttribution.value.getter()
{
  v0 = *(*(sub_22C9037EC() - 8) + 16);
  v1 = sub_22C36BA00();

  return v2(v1);
}

uint64_t RetrievedToolWithAttribution.selectionCriteria.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RetrievedToolWithAttribution();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t RetrievedToolWithAttribution.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C9037EC();
  sub_22C369A9C(v4);
  (*(v5 + 32))(a2, a1);
  result = type metadata accessor for RetrievedToolWithAttribution();
  *(a2 + *(result + 20)) = 6;
  return result;
}

uint64_t static RetrievedToolWithAttribution.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_22C90375C() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for RetrievedToolWithAttribution() + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 == 6)
  {
    if (v6 != 6)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  return 1;
}

uint64_t ToolSelectionCriteria.hashValue.getter()
{
  v1 = *v0;
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v1);
  return sub_22C90B66C();
}

unint64_t sub_22C85DA48()
{
  result = qword_27D9C0A28;
  if (!qword_27D9C0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0A28);
  }

  return result;
}

void sub_22C85DAC4()
{
  sub_22C9037EC();
  if (v0 <= 0x3F)
  {
    sub_22C85DB48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C85DB48()
{
  if (!qword_281433348[0])
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, qword_281433348);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ToolSelectionCriteria(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t ModularQueryDecorationService.__allocating_init(clientApplicationIdentifier:toolboxResources:toolExecutionSession:queryDecorator:)()
{
  sub_22C862E44();
  v0 = swift_allocObject();
  sub_22C3806B8();
  ModularQueryDecorationService.init(clientApplicationIdentifier:toolboxResources:toolExecutionSession:queryDecorator:)();
  return v0;
}

uint64_t sub_22C85DCF4()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_22C9063DC();
  v1[6] = v4;
  sub_22C3699B8(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = sub_22C3699D4();
  v8 = sub_22C9072BC();
  v1[9] = v8;
  sub_22C3699B8(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = sub_22C3699D4();
  v12 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C369914(v12);
  v14 = *(v13 + 64);
  v1[12] = sub_22C3699D4();
  v15 = sub_22C903F4C();
  v1[13] = v15;
  sub_22C3699B8(v15);
  v1[14] = v16;
  v18 = *(v17 + 64);
  v1[15] = sub_22C3856B8();
  v1[16] = swift_task_alloc();
  v19 = sub_22C90771C();
  v1[17] = v19;
  sub_22C3699B8(v19);
  v1[18] = v20;
  v22 = *(v21 + 64);
  v1[19] = sub_22C3699D4();
  v23 = sub_22C9089DC();
  v1[20] = v23;
  sub_22C3699B8(v23);
  v1[21] = v24;
  v26 = *(v25 + 64);
  v1[22] = sub_22C3856B8();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v27 = sub_22C90880C();
  v1[25] = v27;
  sub_22C3699B8(v27);
  v1[26] = v28;
  v30 = *(v29 + 64);
  v1[27] = sub_22C3699D4();
  v31 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v31);
  v33 = *(v32 + 64);
  v1[28] = sub_22C3699D4();
  v34 = sub_22C908A0C();
  v1[29] = v34;
  sub_22C3699B8(v34);
  v1[30] = v35;
  v37 = *(v36 + 64);
  v1[31] = sub_22C3699D4();
  v38 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v38, v39, v40);
}

uint64_t sub_22C85DFE0()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v6 = v0[3];
  sub_22C90878C();
  v7 = sub_22C9087DC();
  v8 = *(v4 + 8);
  v9 = sub_22C36ECB4();
  v10(v9);
  v0[2] = v7;
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3AC13C();
  sub_22C907F4C();

  if (sub_22C370B74(v2, 1, v1) == 1)
  {
    v12 = v0 + 8;
    v11 = v0[8];
    sub_22C36DD28(v0[28], &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C90408C();
    v13 = sub_22C9063CC();
    sub_22C90AADC();
    sub_22C37E84C();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[7];
    if (v15)
    {
      v17 = sub_22C36D240();
      sub_22C36C890(v17);
      sub_22C38C43C(&dword_22C366000, v13, v1, "No contextRetrievalRequest / toolRetrievalRequest / spanMatchRequest found in transcript");
      sub_22C372FB0();
    }

    sub_22C381414();
    v19 = v0 + 6;
LABEL_5:
    v20 = *v12;
    v21 = *v19;
    v22 = v0[31];
    v24 = v0[27];
    v23 = v0[28];
    v26 = v0[23];
    v25 = v0[24];
    v27 = v0[22];
    v28 = v0[19];
    v30 = v0[15];
    v29 = v0[16];
    v70 = v0[12];
    v71 = v0[11];
    v72 = v0[8];
    (*v18)(v20, v21);

    sub_22C36D5E0();
    sub_22C36D5F8();

    __asm { BRAA            X2, X16 }
  }

  v12 = v0 + 24;
  v33 = v0[24];
  v34 = v0[21];
  v19 = v0 + 20;
  v35 = v0[20];
  (*(v0[30] + 32))(v0[31], v0[28], v0[29]);
  sub_22C9089EC();
  v36 = *(v34 + 88);
  v37 = sub_22C36BAFC();
  v39 = v38(v37);
  if (v39 == *MEMORY[0x277D1E7D0])
  {
    v41 = v0[18];
    v40 = v0[19];
    v42 = v0[17];
    (*(v0[21] + 96))(v0[24], v0[20]);
    v43 = sub_22C372838();
    v44(v43);
    sub_22C9072AC();
    v0[35] = v45;
    v46 = swift_task_alloc();
    v0[36] = v46;
    *v46 = v0;
    v46[1] = sub_22C85E820;
    v47 = v0[12];
    v48 = v0[4];
    v49 = v0[5];
    v50 = v0[3];
    sub_22C36D5F8();

    return sub_22C8607BC();
  }

  else if (v39 == *MEMORY[0x277D1E818])
  {
    v53 = swift_task_alloc();
    v0[32] = v53;
    *v53 = v0;
    v53[1] = sub_22C85E498;
    v54 = v0[4];
    v55 = v0[5];
    v56 = v0[3];
    sub_22C36D5F8();

    return sub_22C860070();
  }

  else
  {
    if (v39 != *MEMORY[0x277D1E780])
    {
      v69 = v0[21];
      (*(v0[30] + 8))(v0[31], v0[29]);
      sub_22C381414();
      goto LABEL_5;
    }

    v59 = v0[10];
    v58 = v0[11];
    v60 = v0[9];
    (*(v0[21] + 96))(v0[24], v0[20]);
    v61 = sub_22C372838();
    v62(v61);
    sub_22C9072AC();
    v0[38] = v63;
    v64 = swift_task_alloc();
    v0[39] = v64;
    *v64 = v0;
    v64[1] = sub_22C85EE34;
    v65 = v0[4];
    v66 = v0[5];
    v67 = v0[3];
    sub_22C3818A8();
    sub_22C36D5F8();

    return sub_22C85F934();
  }
}

uint64_t sub_22C85E498()
{
  sub_22C36FB38();
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v5 = *(v2 + 256);
  v6 = *v1;
  sub_22C369A30();
  *v7 = v6;
  *(v9 + 264) = v8;
  *(v9 + 272) = v0;

  v10 = *(v2 + 40);
  if (v0)
  {
    v11 = sub_22C85F1A0;
  }

  else
  {
    v11 = sub_22C85E5C0;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_22C85E5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  sub_22C379BA4();
  if (v18[33])
  {
    v19 = v18[34];
    v20 = v18[30];
    v48 = v18[31];
    v50 = v18[29];
    v21 = v18[23];
    v22 = v18[21];
    v46 = v18[20];
    v23 = v18[3];
    sub_22C3A5908(&qword_27D9BAE10, &unk_22C91DB10);
    v24 = *(v20 + 72);
    v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_22C90F800;
    *(swift_task_alloc() + 16) = v23;
    sub_22C3B2784();

    sub_22C906F6C();
    (*(v22 + 104))(v21, *MEMORY[0x277D1E760], v46);
    v52 = v26;
    sub_22C90893C();
    v27 = *(v22 + 8);
    v27(v21, v46);
    (*(v20 + 8))(v48, v50);
  }

  else
  {
    v28 = v18[21];
    (*(v18[30] + 8))(v18[31], v18[29]);
    v27 = *(v28 + 8);
    v52 = MEMORY[0x277D84F90];
  }

  v29 = v18[23];
  v30 = v18[31];
  v32 = v18[27];
  v31 = v18[28];
  v33 = v18[22];
  v34 = v18[19];
  v44 = v18[16];
  v45 = v18[15];
  v47 = v18[12];
  v49 = v18[11];
  v51 = v18[8];
  v27(v18[24], v18[20]);

  sub_22C36D5E0();
  sub_22C375E04();

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, v44, v45, v47, v49, v51, v52, a15, a16, a17, a18);
}

uint64_t sub_22C85E820()
{
  sub_22C36FB38();
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v5 = v2[36];
  *v4 = *v1;
  *(v3 + 296) = v0;

  v6 = v2[35];
  v7 = v2[5];

  if (v0)
  {
    v8 = sub_22C85F2AC;
  }

  else
  {
    v8 = sub_22C85E960;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22C85E960()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = sub_22C3707B4();
  v5 = sub_22C370B74(v3, v4, v1);
  v6 = v0[30];
  if (v5 == 1)
  {
    v8 = v0[18];
    v7 = v0[19];
    v9 = v0[17];
    sub_22C36DD28(v2, &qword_27D9BD290, &qword_22C917EC0);
    v10 = *(v8 + 8);
    v11 = sub_22C36BAFC();
    v12(v11);
    sub_22C381414();
    v53 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v0[14] + 32))(v0[16], v2, v1);
    v14 = *(sub_22C903F1C() + 16);

    sub_22C3A5908(&qword_27D9BAE10, &unk_22C91DB10);
    v15 = *(v6 + 72);
    v51 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_22C90F800;
    v16 = v0[31];
    v17 = v0[23];
    v18 = v0[21];
    v49 = v0[20];
    v19 = v0[18];
    v20 = v0[19];
    v21 = v0[17];
    v47 = v0[16];
    if (v14)
    {
      v45 = v0[30];
      v22 = v0[14];
      v23 = v0[15];
      v44 = v0[13];
      (*(v22 + 16))(v23, v0[16]);
      sub_22C903EEC();
      sub_22C903EFC();
      sub_22C903F0C();
      sub_22C903F1C();
      sub_22C903F3C();
      sub_22C907C7C();
      v24 = *(v22 + 8);
      v24(v23, v44);
      (*(v18 + 104))(v17, *MEMORY[0x277D1E740], v49);
      sub_22C862EB0();
      (*(v18 + 8))(v17, v49);
      v24(v47, v44);
    }

    else
    {
      v25 = v0[14];
      v46 = v0[13];
      v26 = sub_22C9068EC();
      sub_22C8626EC(&qword_27D9C0A30, 255, MEMORY[0x277D1DCC0]);
      swift_allocError();
      v27 = *MEMORY[0x277D1DCB8];
      sub_22C36BBA8(v26);
      (*(v28 + 104))();
      sub_22C901E9C();
      v29 = *MEMORY[0x277D1DCE0];
      v30 = sub_22C90694C();
      sub_22C36985C(v30);
      (*(v31 + 104))(v17, v29);
      v32 = *MEMORY[0x277D1DC58];
      v33 = sub_22C90688C();
      sub_22C36985C(v33);
      (*(v34 + 104))(v17, v32);
      (*(v18 + 104))(v17, *MEMORY[0x277D1E718], v49);
      sub_22C862EB0();
      (*(v18 + 8))(v17, v49);
      (*(v25 + 8))(v47, v46);
    }

    (*(v19 + 8))(v20, v21);
    sub_22C381414();
  }

  v35 = v0[31];
  v37 = v0[28];
  v36 = v0[29];
  v38 = *v13;
  sub_22C37ADC0();
  v39 = v0[15];
  v40 = v0[16];
  v48 = v0[12];
  v50 = v0[11];
  v52 = v0[8];
  v41(v35);

  sub_22C36D5E0();

  return v42(v53);
}

uint64_t sub_22C85EE34()
{
  sub_22C36FB38();
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v5 = v2[39];
  v6 = *v1;
  sub_22C369A30();
  *v7 = v6;
  *(v9 + 320) = v8;
  *(v9 + 328) = v0;

  v10 = v2[38];
  v11 = v2[5];

  if (v0)
  {
    v12 = sub_22C85F3BC;
  }

  else
  {
    v12 = sub_22C85EF78;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_22C85EF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  sub_22C379BA4();
  if (v18[40])
  {
    v19 = v18[41];
    v20 = v18[3];
    *(swift_task_alloc() + 16) = v20;
    sub_22C3B27D8();
  }

  v21 = v18[30];
  v22 = v18[31];
  v24 = v18[21];
  v23 = v18[22];
  v25 = v18[20];
  v26 = v18[10];
  v47 = v18[9];
  v49 = v18[11];
  sub_22C3A5908(&qword_27D9BAE10, &unk_22C91DB10);
  v27 = *(v21 + 72);
  v28 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22C90F800;
  sub_22C90679C();
  (*(v24 + 104))(v23, *MEMORY[0x277D1E788], v25);
  sub_22C90893C();
  (*(v24 + 8))(v23, v25);
  (*(v26 + 8))(v49, v47);
  v30 = *(v21 + 8);
  v31 = v18[31];
  v33 = v18[28];
  v32 = v18[29];
  sub_22C37ADC0();
  v34 = v18[15];
  v45 = v34;
  v46 = v18[12];
  v48 = v18[11];
  v50 = v18[8];
  v35(v31);

  sub_22C36D5E0();
  sub_22C375E04();

  return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, v46, v48, v50, v29, a15, a16, a17, a18);
}

uint64_t sub_22C85F1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  sub_22C379BA4();
  v41 = v18[34];
  v19 = v18[31];
  v21 = v18[28];
  v20 = v18[29];
  v22 = v18[27];
  v24 = v18[23];
  v23 = v18[24];
  v25 = v18[21];
  v26 = v18[22];
  v27 = v18[19];
  v28 = v18[20];
  v29 = v18[15];
  v30 = v18[16];
  sub_22C36FEF0(v18[30]);
  v31(v19);
  (*(v25 + 8))(v23, v28);

  sub_22C369A24();
  sub_22C375E04();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, v41, a16, a17, a18);
}

uint64_t sub_22C85F2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  sub_22C379BA4();
  v41 = v18[37];
  v19 = v18[30];
  v20 = v18[31];
  v22 = v18[28];
  v21 = v18[29];
  v23 = v18[19];
  v25 = v18[16];
  v24 = v18[17];
  v26 = v18[27];
  v28 = v18[23];
  v27 = v18[24];
  v29 = v18[22];
  v30 = v18[15];
  sub_22C36FEF0(v18[18]);
  v31(v23);
  (*(v19 + 8))(v20, v21);

  sub_22C369A24();
  sub_22C375E04();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, v41, a16, a17, a18);
}

uint64_t sub_22C85F3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  sub_22C379BA4();
  v45 = v18[41];
  v19 = v18[30];
  v20 = v18[31];
  v22 = v18[28];
  v21 = v18[29];
  v23 = v18[27];
  v25 = v18[23];
  v24 = v18[24];
  v26 = v18[22];
  v40 = v18[19];
  v41 = v18[16];
  v42 = v18[15];
  v27 = v18[12];
  v43 = v27;
  v44 = v18[8];
  (*(v18[10] + 8))(v18[11], v18[9]);
  v28 = *(v19 + 8);
  v29 = sub_22C36ECB4();
  v30(v29);

  sub_22C369A24();
  sub_22C375E04();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, v41, v42, v43, v44, v45, a16, a17, a18);
}

uint64_t sub_22C85F4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, char *))
{
  v7 = a4(0);
  sub_22C369824(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = sub_22C901FAC();
  v16 = sub_22C369914(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v21 = v20 - v19;
  sub_22C9087AC();
  sub_22C90882C();

  (*(v9 + 16))(v14, a1, v7);
  return a5(v21, v14);
}

void ModularQueryDecorationService.init(clientApplicationIdentifier:toolboxResources:toolExecutionSession:queryDecorator:)()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v33 = sub_22C90B0EC();
  v12 = sub_22C369824(v33);
  v32 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v18 = v17 - v16;
  v31 = sub_22C90B10C();
  v19 = sub_22C369824(v31);
  v30 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v25 = v24 - v23;
  swift_defaultActor_initialize();
  v0[15] = v11;
  v0[16] = v9;
  v0[17] = v7;
  sub_22C3E8FB4(v5, (v0 + 18), &qword_27D9C06A0, &qword_22C929950);
  v26 = sub_22C9043BC();
  sub_22C3856A0(v26);

  v0[23] = sub_22C9043AC();
  v0[26] = v26;
  v0[27] = &protocol witness table for ContextRetrieval;
  if (v3)
  {

    sub_22C36DD28(v5, &qword_27D9C06A0, &qword_22C929950);
  }

  else
  {
    sub_22C378AB0((v0 + 23), v37);
    DecorationSignposter = type metadata accessor for QueryDecorationSignposter(0);
    v28 = sub_22C3856A0(DecorationSignposter);
    sub_22C90B0FC();
    v36[3] = DecorationSignposter;
    v36[4] = &off_283FC1370;
    v36[0] = v28;

    sub_22C90B0FC();
    sub_22C90B0CC();
    type metadata accessor for QueryDecorator();
    sub_22C377A58(v36);
    sub_22C378AB0(v37, &v34);
    swift_allocObject();

    sub_22C36EFB8();
    v3 = v29;
    sub_22C389A50(v35, v7);

    sub_22C36DD28(v5, &qword_27D9C06A0, &qword_22C929950);
    sub_22C36FF94(v35);
    (*(v32 + 8))(v18, v33);
    (*(v30 + 8))(v25, v31);
    sub_22C36FF94(v37);
    sub_22C36FF94(v36);
  }

  v1[14] = v3;
  sub_22C36CC48();
}

uint64_t sub_22C85F934()
{
  sub_22C369980();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_22C90069C();
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  v1[7] = sub_22C3699D4();
  v9 = sub_22C90880C();
  v1[8] = v9;
  sub_22C3699B8(v9);
  v1[9] = v10;
  v12 = *(v11 + 64);
  v1[10] = sub_22C3699D4();
  v13 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C369914(v13);
  v15 = *(v14 + 64);
  v1[11] = sub_22C3699D4();
  v16 = sub_22C903E9C();
  v1[12] = v16;
  sub_22C3699B8(v16);
  v1[13] = v17;
  v19 = *(v18 + 64);
  v1[14] = sub_22C3699D4();
  v20 = sub_22C9063DC();
  v1[15] = v20;
  sub_22C3699B8(v20);
  v1[16] = v21;
  v23 = *(v22 + 64);
  v1[17] = sub_22C3856B8();
  v1[18] = swift_task_alloc();
  v24 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_22C85FAD0()
{
  v2 = v1[18];
  sub_22C90408C();
  v3 = sub_22C9063CC();
  sub_22C90AACC();
  sub_22C37E84C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_22C36D240();
    sub_22C36C890(v5);
    sub_22C38C43C(&dword_22C366000, v3, v0, "ModularQueryDecorationService getSpanMatches is being run.");
    sub_22C372FB0();
  }

  v6 = v1[18];
  v8 = v1[15];
  v7 = v1[16];
  v10 = v1[13];
  v9 = v1[14];
  v11 = v1[12];
  v53 = v1[5];
  v54 = v1[6];
  v12 = v1[3];
  v52 = v1[4];
  v13 = v1[2];

  v14 = *(v7 + 8);
  v15 = sub_22C36BAFC();
  v14(v15);
  (*(v10 + 104))(v9, *MEMORY[0x277D1F170], v11);
  sub_22C8619D4();
  v17 = v16;
  v1[19] = v16;
  v18 = *(v10 + 8);
  v19 = sub_22C36ECB4();
  v20(v19);
  if (!v17)
  {
    v35 = v1[17];
    sub_22C90408C();
    v36 = sub_22C9063CC();
    v37 = sub_22C90AADC();
    v38 = sub_22C36D08C(v37);
    v40 = v1[16];
    v39 = v1[17];
    v41 = v1[15];
    if (v38)
    {
      *sub_22C36D240() = 0;
      sub_22C374ED0();
      _os_log_impl(v42, v43, v44, v45, v46, 2u);
      sub_22C36BAE0();
    }

    v47 = sub_22C36BAFC();
    v14(v47);
LABEL_12:
    v49 = v1[17];
    v48 = v1[18];
    sub_22C37B490();

    sub_22C371EA8();
    sub_22C36D5F8();

    __asm { BRAA            X2, X16 }
  }

  if (!*(v1[6] + 112))
  {

    goto LABEL_12;
  }

  v22 = v1[10];
  v21 = v1[11];
  v23 = v1[8];
  v24 = v1[9];
  v25 = v1[7];
  v26 = v1[4];
  sub_22C90878C();
  sub_22C9087FC();
  (*(v24 + 8))(v22, v23);
  sub_22C902DAC();
  sub_22C902DBC();
  sub_22C36BECC();
  sub_22C36C640(v27, v28, v29, v30);
  v31 = swift_task_alloc();
  v1[20] = v31;
  *v31 = v1;
  v31[1] = sub_22C85FDBC;
  v32 = v1[11];
  sub_22C36D5F8();

  return QueryDecorator.getSpanMatches(queryDecorationInput:sessionId:)();
}

uint64_t sub_22C85FDBC()
{
  sub_22C36D5EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  v7 = v4[20];
  *v6 = *v1;
  v5[21] = v0;

  v8 = v4[11];
  v9 = v4[6];
  if (v0)
  {
    sub_22C36DD28(v8, &qword_27D9C06F8, &qword_22C929520);
    v10 = sub_22C85FFCC;
  }

  else
  {
    v5[22] = v3;
    sub_22C36DD28(v8, &qword_27D9C06F8, &qword_22C929520);
    v10 = sub_22C85FF2C;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22C85FF2C()
{
  sub_22C36D5EC();

  v1 = *(v0 + 176);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  sub_22C37B490();

  v4 = sub_22C371EA8();

  return v5(v4);
}

uint64_t sub_22C85FFCC()
{
  sub_22C36D5EC();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_22C37B490();

  sub_22C369A24();
  v6 = v0[21];

  return v5();
}

uint64_t sub_22C860070()
{
  sub_22C369980();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22C90069C();
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  v1[5] = sub_22C3699D4();
  v7 = sub_22C90880C();
  v1[6] = v7;
  sub_22C3699B8(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = sub_22C3699D4();
  v11 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C369914(v11);
  v13 = *(v12 + 64);
  v1[9] = sub_22C3699D4();
  v14 = sub_22C903E9C();
  v1[10] = v14;
  sub_22C3699B8(v14);
  v1[11] = v15;
  v17 = *(v16 + 64);
  v1[12] = sub_22C3699D4();
  v18 = sub_22C9063DC();
  v1[13] = v18;
  sub_22C3699B8(v18);
  v1[14] = v19;
  v21 = *(v20 + 64);
  v1[15] = sub_22C3856B8();
  v1[16] = swift_task_alloc();
  v22 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_22C860208()
{
  v2 = v1[16];
  sub_22C90408C();
  v3 = sub_22C9063CC();
  sub_22C90AACC();
  sub_22C37E84C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_22C36D240();
    sub_22C36C890(v5);
    sub_22C38C43C(&dword_22C366000, v3, v0, "ModularQueryDecorationService getContext is being run.");
    sub_22C372FB0();
  }

  v6 = v1[16];
  v7 = v1[13];
  v8 = v1[14];
  v10 = v1[11];
  v9 = v1[12];
  v11 = v1[10];
  v12 = v1[3];
  v51 = v1[4];
  v13 = v1[2];

  v14 = *(v8 + 8);
  v15 = sub_22C36BAFC();
  v14(v15);
  (*(v10 + 104))(v9, *MEMORY[0x277D1F188], v11);
  sub_22C8619D4();
  v17 = v16;
  v1[17] = v16;
  v18 = *(v10 + 8);
  v19 = sub_22C36ECB4();
  v20(v19);
  if (v17)
  {
    if (*(v1[4] + 112))
    {
      v22 = v1[8];
      v21 = v1[9];
      v23 = v1[6];
      v24 = v1[7];
      v25 = v1[5];
      v26 = v1[2];
      sub_22C90878C();
      sub_22C9087FC();
      (*(v24 + 8))(v22, v23);
      sub_22C902DAC();
      sub_22C902DBC();
      sub_22C36BECC();
      sub_22C36C640(v27, v28, v29, v30);
      v31 = swift_task_alloc();
      v1[18] = v31;
      *v31 = v1;
      v31[1] = sub_22C860508;
      v32 = v1[9];

      return QueryDecorator.getContext(queryDecorationInput:sessionId:)();
    }
  }

  else
  {
    v34 = v1[15];
    sub_22C90408C();
    v35 = sub_22C9063CC();
    v36 = sub_22C90AADC();
    v37 = sub_22C36D08C(v36);
    v39 = v1[14];
    v38 = v1[15];
    v40 = v1[13];
    if (v37)
    {
      *sub_22C36D240() = 0;
      sub_22C374ED0();
      _os_log_impl(v41, v42, v43, v44, v45, 2u);
      sub_22C36BAE0();
    }

    v46 = sub_22C36BAFC();
    v14(v46);
  }

  v48 = v1[15];
  v47 = v1[16];
  sub_22C862DEC();

  v49 = sub_22C371EA8();

  return v50(v49);
}

uint64_t sub_22C860508()
{
  sub_22C36D5EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  v7 = v4[18];
  *v6 = *v1;
  v5[19] = v0;

  v8 = v4[9];
  v9 = v4[4];
  if (v0)
  {
    sub_22C36DD28(v8, &qword_27D9C06F8, &qword_22C929520);
    v10 = sub_22C860718;
  }

  else
  {
    v5[20] = v3;
    sub_22C36DD28(v8, &qword_27D9C06F8, &qword_22C929520);
    v10 = sub_22C860678;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22C860678()
{
  sub_22C36D5EC();

  v1 = *(v0 + 160);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  sub_22C862DEC();

  v4 = sub_22C371EA8();

  return v5(v4);
}

uint64_t sub_22C860718()
{
  sub_22C36D5EC();
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_22C862DEC();

  sub_22C369A24();
  v6 = v0[19];

  return v5();
}

uint64_t sub_22C8607BC()
{
  sub_22C369980();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v7 = sub_22C903F4C();
  v1[9] = v7;
  sub_22C3699B8(v7);
  v1[10] = v8;
  v10 = *(v9 + 64);
  v1[11] = sub_22C3856B8();
  v1[12] = swift_task_alloc();
  v11 = sub_22C9036EC();
  v1[13] = v11;
  sub_22C3699B8(v11);
  v1[14] = v12;
  v14 = *(v13 + 64);
  v1[15] = sub_22C3699D4();
  v15 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  v1[16] = sub_22C3699D4();
  v18 = sub_22C9037EC();
  v1[17] = v18;
  sub_22C3699B8(v18);
  v1[18] = v19;
  v21 = *(v20 + 64);
  v1[19] = sub_22C3856B8();
  v1[20] = swift_task_alloc();
  v22 = sub_22C90069C();
  sub_22C369914(v22);
  v24 = *(v23 + 64);
  v1[21] = sub_22C3699D4();
  v25 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C369914(v25);
  v27 = *(v26 + 64);
  v1[22] = sub_22C3699D4();
  v28 = sub_22C90880C();
  v1[23] = v28;
  sub_22C3699B8(v28);
  v1[24] = v29;
  v31 = *(v30 + 64);
  v1[25] = sub_22C3699D4();
  v32 = sub_22C3A5908(&qword_27D9C0250, &unk_22C929510);
  sub_22C369914(v32);
  v34 = *(v33 + 64);
  v1[26] = sub_22C3699D4();
  v35 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C369914(v35);
  v37 = *(v36 + 64);
  v1[27] = sub_22C3856B8();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v38 = sub_22C9063DC();
  v1[30] = v38;
  sub_22C3699B8(v38);
  v1[31] = v39;
  v41 = *(v40 + 64);
  v1[32] = sub_22C3856B8();
  v1[33] = swift_task_alloc();
  v42 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v42, v43, v44);
}

uint64_t sub_22C860AA4()
{
  v1 = *(v0 + 264);
  sub_22C90408C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_22C36D240();
    *v4 = 0;
    _os_log_impl(&dword_22C366000, v2, v3, "ModularQueryDecorationService getRetrievedTools is being run.", v4, 2u);
    sub_22C3699EC();
  }

  v5 = *(v0 + 264);
  v6 = *(v0 + 240);
  v7 = *(v0 + 248);
  v162 = *(v0 + 56);
  v164 = *(v0 + 64);
  v8 = *(v0 + 40);
  v160 = *(v0 + 48);
  v9 = *(v0 + 32);

  v10 = *(v7 + 8);
  (v10)(v5, v6);
  sub_22C3A5908(&qword_27D9C0A38, &qword_22C929D48);
  v11 = sub_22C903E9C();
  sub_22C369824(v11);
  v13 = v12;
  v15 = *(v14 + 72);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22C90F870;
  v18 = v17 + v16;
  v20 = *(v13 + 104);
  v19 = v13 + 104;
  v20(v18, *MEMORY[0x277D1F180], v11);
  v20(v18 + v15, *MEMORY[0x277D1F198], v11);
  sub_22C3806B8();
  sub_22C861ACC();
  v22 = v21;
  *(v0 + 272) = v21;

  if (!v22)
  {
    v46 = v10;
    v47 = *(v0 + 256);
    sub_22C90408C();
    v48 = sub_22C9063CC();
    sub_22C90AADC();
    sub_22C37E84C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = sub_22C36D240();
      sub_22C36C890(v50);
      sub_22C38C43C(&dword_22C366000, v48, OS_LOG_TYPE_DEFAULT, "Failed to generate Query Decoration Input");
      sub_22C372FB0();
    }

    v52 = *(v0 + 248);
    v51 = *(v0 + 256);
    v53 = *(v0 + 240);
    v54 = *(v0 + 72);
    v55 = *(v0 + 24);

    v56 = sub_22C36BAFC();
    (v46)(v56);
    sub_22C36A748();
    sub_22C36C640(v57, v58, v59, v54);
LABEL_47:
    sub_22C862D78();

    sub_22C369A24();
    sub_22C5CAD40();

    __asm { BRAA            X1, X16 }
  }

  v23 = *(v0 + 64);
  v24 = *(v23 + 112);
  *(v0 + 280) = v24;
  if (!v24)
  {
    v60 = *(v0 + 232);
    v61 = *(v0 + 72);
    sub_22C36A748();
    sub_22C36C640(v62, v63, v64, v65);
    v66 = *(v0 + 232);
    v67 = *(v0 + 72);
    v68 = sub_22C3707B4();
    if (!sub_22C370B74(v68, v69, v70))
    {
      v10 = *(v0 + 144);
      v71 = *(v0 + 112);
      v72 = sub_22C903F1C();
      result = sub_22C38761C(v72);
      v161 = v10;
      v151 = (v10 + 32);
      v153 = MEMORY[0x277D84F90];
LABEL_13:
      while (v8 != v162)
      {
        if (v8 >= *(v17 + 16))
        {
          __break(1u);
          return result;
        }

        v80 = sub_22C36C530(result, v73, v74, v75, v76, v77, v78, v79, v145, v148, v151, v153, v155, v158, v161);
        v81(v80);
        ++v8;
        sub_22C90371C();
        v82 = v18;
        v83 = sub_22C9036BC();
        v91 = sub_22C386BE0(v83, v84, v85, v86, v87, v88, v89, v90, v146, v149, v152, v154, v157);
        v92(v91);
        v93 = sub_22C908EAC();
        sub_22C862ED0(v93);
        if (v99)
        {
          v112 = sub_22C36DD28(v18, &qword_27D9BC1E8, &qword_22C9123B0);
        }

        else
        {
          v18 = sub_22C908E7C();
          v11 = v94;
          sub_22C36BBA8(v19);
          (*(v95 + 8))(v82, v19);
          if (qword_27D9BA7B8 != -1)
          {
            sub_22C862D64();
            swift_once();
          }

          v19 = qword_27D9E4020;
          if (*(qword_27D9E4020 + 16))
          {
            sub_22C3866CC();
            sub_22C909FFC();
            sub_22C90B66C();
            sub_22C862E14();
            while (1)
            {
              sub_22C862DFC(v96);
              if ((v97 & 1) == 0)
              {
                break;
              }

              sub_22C862E9C();
              v99 = v99 && v98 == v11;
              if (!v99)
              {
                v100 = sub_22C90B4FC();
                v96 = v17 + 1;
                if ((v100 & 1) == 0)
                {
                  continue;
                }
              }

              v101 = *(v0 + 160);
              v18 = *(v0 + 136);

              v110 = sub_22C376068(v102, v103, v104, v105, v106, v107, v108, v109, v147, v150);
              result = v111(v110);
              v17 = v9;
              goto LABEL_13;
            }

            v17 = v9;
            v9 = v164;
          }

          else
          {
          }
        }

        v120 = sub_22C36EE98(v112, v113, v114, v115, v116, v117, v118, v119, v147, v150, v151);
        (v18)(v120);
        v121 = v153;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C862E5C();
          v121 = v153;
        }

        v10 = *(v121 + 16);
        v122 = *(v121 + 24);
        v11 = v10 + 1;
        if (v10 >= v122 >> 1)
        {
          sub_22C37EE20(v122);
        }

        v123 = sub_22C372518();
        result = (v18)(v123);
      }

      v124 = *(v0 + 232);
      v8 = *(v0 + 72);

      v125 = sub_22C3707B4();
      if (sub_22C370B74(v125, v126, v8))
      {
      }

      else
      {
        v127 = *(v0 + 232);
        sub_22C903F2C();
      }
    }

    v128 = *(v0 + 72);
    sub_22C3E8FB4(*(v0 + 232), *(v0 + 224), &qword_27D9BD290, &qword_22C917EC0);
    v129 = sub_22C3707B4();
    v131 = sub_22C370B74(v129, v130, v128);
    v132 = *(v0 + 224);
    if (v131 == 1)
    {

      v133 = v132;
    }

    else
    {
      v134 = sub_22C862E2C();
      (v17)(v134);
      if (v128)
      {
        sub_22C381C20();

        (*(v18 + 8))(v10, v8);
        if (sub_22C370B74(v128, 1, v8) != 1)
        {
          v135 = sub_22C862DD0();
          (v17)(v135);
          sub_22C36DD28(v132, &qword_27D9BD290, &qword_22C917EC0);
          (v17)(v132, v128, v10);
          sub_22C36BECC();
          sub_22C36C640(v136, v137, v138, v10);
LABEL_46:
          sub_22C862624(*(v0 + 232), *(v0 + 24));
          goto LABEL_47;
        }
      }

      else
      {
        v139 = sub_22C862DB4();
        v140(v139);

        v141 = sub_22C3707B4();
        sub_22C36C640(v141, v142, 1, 0);
      }

      v133 = *(v0 + 216);
    }

    sub_22C36DD28(v133, &qword_27D9BD290, &qword_22C917EC0);
    goto LABEL_46;
  }

  v26 = *(v0 + 200);
  v25 = *(v0 + 208);
  v27 = *(v0 + 184);
  v28 = *(v0 + 192);
  v159 = *(v0 + 176);
  v156 = *(v0 + 168);
  v29 = *(v0 + 48);
  v163 = *(v23 + 136);
  sub_22C90878C();
  v30 = sub_22C9087DC();
  v31 = *(v28 + 8);
  v31(v26, v27);
  *(v0 + 16) = v30;
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3AC13C();
  sub_22C907EDC();

  sub_22C903DEC();
  sub_22C36BECC();
  sub_22C36C640(v32, v33, v34, v35);
  sub_22C90878C();
  sub_22C9087FC();
  v31(v26, v27);
  sub_22C902DAC();
  sub_22C902DBC();
  sub_22C36BECC();
  sub_22C36C640(v36, v37, v38, v39);
  v40 = swift_task_alloc();
  *(v0 + 288) = v40;
  *v40 = v0;
  v40[1] = sub_22C8612DC;
  v41 = *(v0 + 232);
  v42 = *(v0 + 208);
  v43 = *(v0 + 176);
  sub_22C5CAD40();

  return QueryDecorator.getRetrievedTools(queryDecorationInput:toolboxResources:qdLookback:toolExecutionSession:sessionId:)();
}

uint64_t sub_22C8612DC()
{
  sub_22C36D5EC();
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v5 = v2[36];
  v6 = v2[26];
  v7 = v2[22];
  *v4 = *v1;
  *(v3 + 296) = v0;

  sub_22C36DD28(v7, &qword_27D9C06F8, &qword_22C929520);
  sub_22C36DD28(v6, &qword_27D9C0250, &unk_22C929510);
  v8 = v2[8];
  if (v0)
  {
    v9 = sub_22C8618CC;
  }

  else
  {
    v9 = sub_22C861460;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22C861460()
{
  v8 = *(v1 + 232);
  v9 = *(v1 + 72);
  v10 = sub_22C3707B4();
  if (sub_22C370B74(v10, v11, v12))
  {
LABEL_28:
    v71 = *(v1 + 72);
    sub_22C3E8FB4(*(v1 + 232), *(v1 + 224), &qword_27D9BD290, &qword_22C917EC0);
    v72 = sub_22C3707B4();
    v74 = sub_22C370B74(v72, v73, v71);
    v75 = *(v1 + 224);
    if (v74 == 1)
    {

      v76 = v75;
    }

    else
    {
      v77 = sub_22C862E2C();
      (v4)(v77);
      if (v71)
      {
        sub_22C381C20();

        (*(v6 + 8))(v0, v2);
        if (sub_22C370B74(v71, 1, v2) != 1)
        {
          v78 = sub_22C862DD0();
          (v4)(v78);
          sub_22C36DD28(v75, &qword_27D9BD290, &qword_22C917EC0);
          (v4)(v75, v71, v0);
          sub_22C36BECC();
          sub_22C36C640(v79, v80, v81, v0);
          goto LABEL_36;
        }
      }

      else
      {
        v82 = sub_22C862DB4();
        v83(v82);

        v84 = sub_22C3707B4();
        sub_22C36C640(v84, v85, 1, 0);
      }

      v76 = *(v1 + 216);
    }

    sub_22C36DD28(v76, &qword_27D9BD290, &qword_22C917EC0);
LABEL_36:
    sub_22C862624(*(v1 + 232), *(v1 + 24));
    sub_22C862D78();

    sub_22C369A24();
    sub_22C5CAD40();

    __asm { BRAA            X1, X16 }
  }

  v0 = *(v1 + 144);
  v13 = *(v1 + 112);
  v14 = sub_22C903F1C();
  result = sub_22C38761C(v14);
  v101 = v0;
  v94 = v0 + 4;
  v96 = MEMORY[0x277D84F90];
  while (1)
  {
LABEL_3:
    if (v2 == v102)
    {
      v67 = *(v1 + 232);
      v2 = *(v1 + 72);

      v68 = sub_22C3707B4();
      if (sub_22C370B74(v68, v69, v2))
      {
      }

      else
      {
        v70 = *(v1 + 232);
        sub_22C903F2C();
      }

      goto LABEL_28;
    }

    if (v2 >= *(v4 + 16))
    {
      break;
    }

    v23 = sub_22C36C530(result, v16, v17, v18, v19, v20, v21, v22, v88, v91, v94, v96, v98, v100, v101);
    v24(v23);
    ++v2;
    sub_22C90371C();
    v25 = v6;
    v26 = sub_22C9036BC();
    v34 = sub_22C386BE0(v26, v27, v28, v29, v30, v31, v32, v33, v89, v92, v95, v97, v99);
    v35(v34);
    v36 = sub_22C908EAC();
    sub_22C862ED0(v36);
    if (v42)
    {
      v55 = sub_22C36DD28(v6, &qword_27D9BC1E8, &qword_22C9123B0);
    }

    else
    {
      v6 = sub_22C908E7C();
      v5 = v37;
      sub_22C36BBA8(v7);
      (*(v38 + 8))(v25, v7);
      if (qword_27D9BA7B8 != -1)
      {
        sub_22C862D64();
        swift_once();
      }

      v7 = qword_27D9E4020;
      if (*(qword_27D9E4020 + 16))
      {
        sub_22C3866CC();
        sub_22C909FFC();
        sub_22C90B66C();
        sub_22C862E14();
        while (1)
        {
          sub_22C862DFC(v39);
          if ((v40 & 1) == 0)
          {
            break;
          }

          sub_22C862E9C();
          v42 = v42 && v41 == v5;
          if (!v42)
          {
            v43 = sub_22C90B4FC();
            v39 = v4 + 1;
            if ((v43 & 1) == 0)
            {
              continue;
            }
          }

          v44 = *(v1 + 160);
          v6 = *(v1 + 136);

          v53 = sub_22C376068(v45, v46, v47, v48, v49, v50, v51, v52, v90, v93);
          result = v54(v53);
          v4 = v3;
          goto LABEL_3;
        }

        v4 = v3;
        v3 = v103;
      }

      else
      {
      }
    }

    v63 = sub_22C36EE98(v55, v56, v57, v58, v59, v60, v61, v62, v90, v93, v94);
    (v6)(v63);
    v64 = v96;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C862E5C();
      v64 = v96;
    }

    v0 = *(v64 + 16);
    v65 = *(v64 + 24);
    v5 = v0 + 1;
    if (v0 >= v65 >> 1)
    {
      sub_22C37EE20(v65);
    }

    v66 = sub_22C372518();
    result = (v6)(v66);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C8618CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  sub_22C379BA4();
  v19 = *(v18 + 264);
  v20 = *(v18 + 256);
  v22 = *(v18 + 224);
  v21 = *(v18 + 232);
  v24 = *(v18 + 208);
  v23 = *(v18 + 216);
  v25 = *(v18 + 200);
  v26 = *(v18 + 168);
  v27 = *(v18 + 176);
  v38 = *(v18 + 160);
  v39 = *(v18 + 152);
  v40 = *(v18 + 128);
  v41 = *(v18 + 120);
  v42 = *(v18 + 96);
  v43 = *(v18 + 88);

  sub_22C369A24();
  v28 = *(v18 + 296);
  sub_22C375E04();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, v40, v41, v42, v43, a16, a17, a18);
}

void sub_22C8619D4()
{
  sub_22C36BA7C();
  sub_22C862E44();
  sub_22C3A5908(&qword_27D9C0A38, &qword_22C929D48);
  v1 = sub_22C903E9C();
  sub_22C369824(v1);
  v3 = v2;
  v5 = *(v4 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22C90F800;
  (*(v3 + 16))(v7 + v6, v0, v1);
  sub_22C3806B8();
  sub_22C861ACC();

  sub_22C36CC48();
}

void sub_22C861ACC()
{
  sub_22C36BA7C();
  v83 = v0;
  v84 = v1;
  v81 = v3;
  v82 = v2;
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  object = v6;
  countAndFlagsBits = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v85 = v76 - v13;
  v14 = sub_22C903D4C();
  v15 = sub_22C369914(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v80 = v19 - v18;
  v20 = sub_22C90069C();
  v21 = sub_22C369824(v20);
  v77 = v22;
  v78 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v79 = v26 - v25;
  v27 = sub_22C3A5908(&qword_27D9BE068, &qword_22C91CE40);
  sub_22C369914(v27);
  v29 = *(v28 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v30);
  v32 = v76 - v31;
  v33 = sub_22C3A5908(&qword_27D9BEB48, &unk_22C91FF10);
  sub_22C369914(v33);
  v35 = *(v34 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v36);
  v38 = v76 - v37;
  v39 = sub_22C9068CC();
  v40 = sub_22C369824(v39);
  v86 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C369838();
  v46 = v45 - v44;
  v47 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v47);
  v49 = *(v48 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v50);
  v52 = v76 - v51;
  v53 = sub_22C908A0C();
  v54 = sub_22C369824(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22C369838();
  v61 = v60 - v59;
  sub_22C862100();
  if (sub_22C370B74(v52, 1, v53) == 1)
  {
    sub_22C36DD28(v52, &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C90408C();
    v62 = sub_22C9063CC();
    v63 = sub_22C90AADC();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = sub_22C36D240();
      *v64 = 0;
      _os_log_impl(&dword_22C366000, v62, v63, "No query event found in transcript. QDInput will be nil", v64, 2u);
      sub_22C3699EC();
    }

    object[1](v11, countAndFlagsBits);
  }

  else
  {
    v76[2] = v56;
    (*(v56 + 32))(v61, v52, v53);
    sub_22C90877C();
    sub_22C36BECC();
    sub_22C36C640(v65, v66, v67, v39);
    (*(v86 + 32))(v46, v38, v39);
    v68 = Session.Event.getSessionScopedLoggingSalt()();
    object = v68._object;
    countAndFlagsBits = v68._countAndFlagsBits;
    v85 = sub_22C90891C();
    v76[1] = v69;
    sub_22C9068AC();
    v70 = sub_22C90212C();
    v71 = sub_22C370B74(v32, 1, v70);
    if (v71 == 1)
    {
      sub_22C36DD28(v32, &qword_27D9BE068, &qword_22C91CE40);
    }

    else
    {
      sub_22C90211C();
      sub_22C36BBA8(v70);
      (*(v72 + 8))(v32, v70);
    }

    (*(v77 + 16))(v79, v81, v78);

    sub_22C9034DC();
    v73 = objc_allocWithZone(sub_22C903CBC());
    sub_22C903C4C();
    (*(v86 + 8))(v46, v39);
    v74 = sub_22C38845C();
    v75(v74);
  }

  sub_22C36CC48();
}

void sub_22C862100()
{
  sub_22C36BA7C();
  v34 = v0;
  v1 = sub_22C9063DC();
  v2 = sub_22C369824(v1);
  v33 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C90880C();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v17 = v16 - v15;
  sub_22C90878C();
  sub_22C9087DC();
  v18 = *(v12 + 8);
  v18(v17, v9);
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3AC13C();
  sub_22C907ECC();

  if (!v36)
  {
    sub_22C90408C();
    v26 = sub_22C9063CC();
    v27 = sub_22C90AABC();
    if (sub_22C36D08C(v27))
    {
      *sub_22C36D240() = 0;
      sub_22C374ED0();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      sub_22C36BAE0();
    }

    (*(v33 + 8))(v8, v1);
    sub_22C908A0C();
    sub_22C36A748();
    goto LABEL_8;
  }

  sub_22C90878C();
  v19 = sub_22C9087DC();
  v18(v17, v9);
  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v35 < *(v19 + 16))
  {
    v20 = sub_22C908A0C();
    sub_22C36985C(v20);
    (*(v21 + 16))(v34, v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v35, v20);

    sub_22C36BECC();
    v25 = v20;
LABEL_8:
    sub_22C36C640(v22, v23, v24, v25);
    sub_22C36CC48();
    return;
  }

  __break(1u);
}

void *ModularQueryDecorationService.deinit()
{
  v1 = v0[14];

  v2 = v0[16];

  v3 = v0[17];

  sub_22C36DD28((v0 + 18), &qword_27D9C06A0, &qword_22C929950);
  sub_22C36FF94(v0 + 23);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ModularQueryDecorationService.__deallocating_deinit()
{
  ModularQueryDecorationService.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22C86245C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C382AF4;

  return sub_22C85DCD0();
}

uint64_t sub_22C8624E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C3C0980;

  return sub_22C85DCF4();
}

uint64_t sub_22C862624(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C862694(uint64_t a1, uint64_t a2)
{
  result = sub_22C8626EC(&qword_27D9C0A40, a2, type metadata accessor for ModularQueryDecorationService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C8626EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t dispatch thunk of ModularQueryDecorationService.setup(sessionState:)()
{
  sub_22C36FB38();
  v1 = v0;
  sub_22C36C89C();
  v3 = *(v2 + 128);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = sub_22C374D1C(v5);
  *v6 = v7;
  v6[1] = sub_22C46BC08;

  return v9(v1);
}

uint64_t dispatch thunk of ModularQueryDecorationService.handle(_:plannerServiceContext:)()
{
  sub_22C36D5EC();
  sub_22C36C89C();
  v1 = *(v0 + 136);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_22C374D1C(v3);
  *v4 = v5;
  v4[1] = sub_22C85D11C;
  v6 = sub_22C3818A8();

  return v8(v6);
}

uint64_t dispatch thunk of ModularQueryDecorationService.getSpanMatches(query:_:plannerServiceContext:)()
{
  sub_22C36C89C();
  v1 = *(v0 + 160);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_22C374D1C(v3);
  *v4 = v5;
  v4[1] = sub_22C85D11C;
  v6 = sub_22C3806B8();

  return v8(v6);
}

uint64_t dispatch thunk of ModularQueryDecorationService.getContext(_:plannerServiceContext:)()
{
  sub_22C36D5EC();
  sub_22C36C89C();
  v1 = *(v0 + 168);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_22C374D1C(v3);
  *v4 = v5;
  v4[1] = sub_22C7D8F18;
  v6 = sub_22C3818A8();

  return v8(v6);
}

uint64_t dispatch thunk of ModularQueryDecorationService.getRetrievedTools(query:_:plannerServiceContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C36C89C();
  v11 = *(v10 + 176);
  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v14 = sub_22C374D1C(v13);
  *v14 = v15;
  v14[1] = sub_22C382AF4;

  return v17(a1, a2, a3, a4, a5);
}

uint64_t sub_22C862D78()
{
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[20];
  v13 = v0[19];
  v14 = v0[16];
  v15 = v0[15];
  v16 = v0[12];
  v17 = v0[11];
}

uint64_t sub_22C862DB4()
{
  v1 = v0[34];
  v2 = v0[27];
  result = v0[12];
  v4 = v0[9];
  v5 = *(v0[10] + 8);
  return result;
}

uint64_t sub_22C862DD0()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[9];
  return v0[11];
}

void sub_22C862DEC()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
}

uint64_t sub_22C862E2C()
{
  v1 = v0[35];
  result = v0[12];
  v3 = v0[9];
  v4 = *(v0[10] + 32);
  return result;
}

void sub_22C862E5C()
{
  v2 = *(v0 + 16) + 1;

  sub_22C3B60C0(0, v2, 1);
}

uint64_t sub_22C862E80()
{

  return swift_slowAlloc();
}

uint64_t sub_22C862E9C()
{
  v2 = (*(v1 + 48) + 16 * v0);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_22C862EB0()
{

  return sub_22C90893C();
}

uint64_t sub_22C862ED0(uint64_t a1)
{
  result = sub_22C370B74(v2, 1, a1);
  v4 = *(v1 + 128);
  return result;
}

unint64_t sub_22C862F28(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_22C90A33C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_22C90A4AC();
      sub_22C8236DC();
      return sub_22C86812C();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22C862FDC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_22C90AC9C();
    if (v4)
    {
      result = a3;
    }

    if (a3 >> 14 >= result >> 14)
    {
      sub_22C90ACCC();
      sub_22C8236DC();
      return sub_22C86812C();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C863074(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      result = v5;
    }

    if (v5 >= result)
    {
      a4();
      sub_22C8236DC();
      return sub_22C86812C();
    }
  }

  __break(1u);
  return result;
}

uint64_t ToolRetrievalResponse.init(_:)(uint64_t a1)
{
  sub_22C903EEC();
  sub_22C903EFC();
  sub_22C903F0C();
  sub_22C903F1C();
  sub_22C903F3C();
  sub_22C907C7C();
  v2 = sub_22C903F4C();
  v3 = sub_22C36985C(v2);
  v5 = *(v4 + 8);

  return v5(a1, v3);
}

Swift::String __swiftcall Session.Event.getSessionScopedLoggingSalt()()
{
  v0 = sub_22C90069C();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v6 = sub_22C9088EC();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {

    v10 = sub_22C9088EC();
  }

  else
  {
    sub_22C9089FC();
    v12 = sub_22C90065C();
    v14 = v13;
    v15 = *(v3 + 8);
    v16 = sub_22C36A724();
    v17(v16);
    v10 = v12;
    v11 = v14;
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t sub_22C8632E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3C0980;
  sub_22C36A724();

  return sub_22C863384();
}

uint64_t sub_22C863384()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = *v0;
  v4 = sub_22C903D4C();
  v1[7] = v4;
  sub_22C3699B8(v4);
  v1[8] = v5;
  v7 = *(v6 + 64);
  v1[9] = sub_22C3699D4();
  v8 = sub_22C90637C();
  v1[10] = v8;
  sub_22C3699B8(v8);
  v1[11] = v9;
  v11 = *(v10 + 64);
  v1[12] = sub_22C3856B8();
  v1[13] = swift_task_alloc();
  v12 = sub_22C9063DC();
  v1[14] = v12;
  sub_22C3699B8(v12);
  v1[15] = v13;
  v15 = *(v14 + 64);
  v1[16] = sub_22C3856B8();
  v1[17] = swift_task_alloc();
  v16 = sub_22C90069C();
  sub_22C369914(v16);
  v18 = *(v17 + 64);
  v1[18] = sub_22C3699D4();
  v19 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C369914(v19);
  v21 = *(v20 + 64);
  v1[19] = sub_22C3856B8();
  v1[20] = swift_task_alloc();
  v22 = sub_22C90880C();
  v1[21] = v22;
  sub_22C3699B8(v22);
  v1[22] = v23;
  v25 = *(v24 + 64);
  v1[23] = sub_22C3699D4();
  v26 = sub_22C3A5908(&qword_27D9C0250, &unk_22C929510);
  sub_22C369914(v26);
  v28 = *(v27 + 64);
  v1[24] = sub_22C3699D4();
  v29 = sub_22C90634C();
  v1[25] = v29;
  sub_22C3699B8(v29);
  v1[26] = v30;
  v32 = *(v31 + 64);
  v1[27] = sub_22C3856B8();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v33 = sub_22C90636C();
  v1[31] = v33;
  sub_22C3699B8(v33);
  v1[32] = v34;
  v36 = *(v35 + 64);
  v1[33] = sub_22C3856B8();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8636BC, v0, 0);
}

uint64_t sub_22C8636BC()
{
  v1 = v0[5];
  sub_22C866B0C(v0[3], v0[4]);
  v0[37] = v2;
  if (!v2)
  {
    v48 = v0[16];
    sub_22C90400C();
    v49 = sub_22C9063CC();
    v50 = sub_22C90AADC();
    v51 = sub_22C370048(v50);
    v53 = v0[15];
    v52 = v0[16];
    v54 = v0[14];
    if (v51)
    {
      v55 = sub_22C36D240();
      sub_22C37585C(v55);
      sub_22C369A04(&dword_22C366000, v56, v57, "Failed to generate Query Decoration Input");
      sub_22C36BAE0();
    }

    (*(v53 + 8))(v52, v54);
    v59 = v0[35];
    v58 = v0[36];
    v61 = v0[33];
    v60 = v0[34];
    v63 = v0[29];
    v62 = v0[30];
    v64 = v0[27];
    v65 = v0[28];
    v67 = v0[23];
    v66 = v0[24];
    v103 = v0[20];
    v105 = v0[19];
    v107 = v0[18];
    v110 = v0[17];
    sub_22C375C38();
    v118 = v0[9];

    sub_22C36D5E0();
    sub_22C381608();

    __asm { BRAA            X2, X16 }
  }

  v114 = v2;
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[31];
  v6 = v0[32];
  v7 = v0[30];
  sub_22C90367C();
  sub_22C90367C();
  sub_22C90635C();
  sub_22C90631C();
  v8 = *(v6 + 8);
  v0[38] = v8;
  v0[39] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v116 = v8;
  v8(v3, v5);
  v9 = sub_22C90635C();
  v10 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v11 = v0[30];
    v12 = sub_22C36D240();
    sub_22C37585C(v12);
    v13 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v9, v10, v13, "QueryDecoration.mightyCollection", "", v7, 2u);
    sub_22C36BAE0();
  }

  v14 = v0[36];
  v16 = v0[30];
  v15 = v0[31];
  v17 = v0[29];
  v19 = v0[25];
  v18 = v0[26];
  v20 = v0[5];

  (*(v18 + 16))(v17, v16, v19);
  v21 = sub_22C9063AC();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v0[40] = sub_22C90639C();
  v24 = *(v18 + 8);
  v0[41] = v24;
  v0[42] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25 = v16;
  v26 = v24;
  v24(v25, v19);
  v116(v14, v15);
  v27 = *(v20 + 112);
  v0[43] = v27;
  if (!v27)
  {
    v113 = v26;
    v70 = v0[33];
    v71 = v0[27];
    sub_22C90367C();
    v72 = sub_22C90635C();
    sub_22C90638C();
    v73 = sub_22C90AB5C();
    if (sub_22C90AC5C())
    {
      v75 = v0[11];
      v74 = v0[12];
      v76 = v0[10];

      sub_22C9063BC();

      if ((*(v75 + 88))(v74, v76) == *MEMORY[0x277D85B00])
      {
        v77 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[11] + 8))(v0[12], v0[10]);
        v77 = "";
      }

      v78 = v0[27];
      v79 = sub_22C36D240();
      *v79 = 0;
      v80 = sub_22C90632C();
      _os_signpost_emit_with_name_impl(&dword_22C366000, v72, v73, v80, "QueryDecoration.mightyCollection", v77, v79, 2u);
      sub_22C3699EC();
    }

    v81 = v0[33];
    v82 = v0[31];
    v83 = v0[27];
    v84 = v0[25];
    v85 = v72;
    v86 = v0[8];
    v87 = v0[9];
    v112 = v0[7];

    v113(v83, v84);
    v116(v81, v82);
    sub_22C903C7C();
    v88 = sub_22C903CEC();
    static AutoBugCaptureHelper.snapshot(caseType:subType:subTypeContext:)(0x4670757465534451, 0xED000064656C6961, v88, v89, 0, 0xE000000000000000);

    (*(v86 + 8))(v87, v112);
    sub_22C867FB4();
    swift_allocError();
    swift_willThrow();

    v91 = v0[35];
    v90 = v0[36];
    v93 = v0[33];
    v92 = v0[34];
    v94 = v0[29];
    v95 = v0[30];
    v97 = v0[27];
    v96 = v0[28];
    v99 = v0[23];
    v98 = v0[24];
    v102 = v0[20];
    v104 = v0[19];
    v106 = v0[18];
    v108 = v0[17];
    sub_22C375C38();
    v115 = v0[9];

    sub_22C369A24();
    sub_22C381608();

    __asm { BRAA            X1, X16 }
  }

  v29 = v0[23];
  v28 = v0[24];
  v30 = v0[21];
  v31 = v0[22];
  v109 = v0[18];
  v111 = v0[20];
  v32 = v0[3];
  v117 = *(v0[5] + 136);

  sub_22C90878C();
  v33 = sub_22C9087DC();
  v34 = *(v31 + 8);
  v0[44] = v34;
  v0[45] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(v29, v30);
  v0[2] = v33;
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3AC13C();
  sub_22C907EDC();

  sub_22C903DEC();
  sub_22C36BECC();
  sub_22C36C640(v35, v36, v37, v38);
  sub_22C90878C();
  sub_22C9087FC();
  v34(v29, v30);
  sub_22C902DAC();
  v0[46] = sub_22C902DBC();
  sub_22C36BECC();
  sub_22C36C640(v39, v40, v41, v42);
  v43 = swift_task_alloc();
  v0[47] = v43;
  *v43 = v0;
  v43[1] = sub_22C863E6C;
  v44 = v0[24];
  v45 = v0[20];
  sub_22C381608();

  return QueryDecorator.queryDecorationCollection(qdInput:toolboxResources:qdLookback:toolExecutionSession:sessionId:)();
}

uint64_t sub_22C863E6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *v2;
  v4[48] = a1;
  v4[49] = v1;

  v7 = v3[43];
  v8 = v3[24];
  v9 = v3[20];
  v10 = v3[5];

  sub_22C36DD28(v9, &qword_27D9C06F8, &qword_22C929520);
  sub_22C36DD28(v8, &qword_27D9C0250, &unk_22C929510);
  if (v1)
  {
    v11 = sub_22C864400;
  }

  else
  {
    v11 = sub_22C86401C;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_22C86401C()
{
  v2 = v1[17];
  sub_22C90400C();
  v3 = sub_22C9063CC();
  v4 = sub_22C90AACC();
  if (sub_22C370048(v4))
  {
    v5 = sub_22C36D240();
    sub_22C36C890(v5);
    _os_log_impl(&dword_22C366000, v3, v4, "handleQueryDecoration has completed", v0, 2u);
    sub_22C372FB0();
  }

  v6 = v1[40];
  v7 = v1[34];
  v8 = v1[28];
  v9 = v1[17];
  v10 = v1[14];
  v11 = v1[15];

  (*(v11 + 8))(v9, v10);
  sub_22C90367C();
  v12 = sub_22C90635C();
  sub_22C90638C();
  v13 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v14 = v1[40];
    v15 = v1[13];
    v17 = v1[10];
    v16 = v1[11];

    sub_22C9063BC();

    if ((*(v16 + 88))(v15, v17) == *MEMORY[0x277D85B00])
    {
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[11] + 8))(v1[13], v1[10]);
      v18 = "";
    }

    v19 = v1[28];
    v20 = sub_22C36D240();
    sub_22C37585C(v20);
    v21 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v12, v13, v21, "QueryDecoration.mightyCollection", v18, v17, 2u);
    sub_22C36BAE0();
  }

  v62 = v1[48];
  v65 = v1[46];
  v58 = v1[44];
  v60 = v1[45];
  v49 = v1[41];
  v50 = v1[42];
  v63 = v1[40];
  v22 = v1[37];
  v51 = v1[38];
  v52 = v1[39];
  v23 = v1[34];
  v24 = v1[31];
  v25 = v1[28];
  v26 = v12;
  v27 = v1[25];
  v28 = v1[23];
  v29 = v1[19];
  v54 = v1[18];
  v56 = v1[21];
  v30 = v1[5];
  v61 = v1[6];
  v31 = v1[3];

  v49(v25, v27);
  v51(v23, v24);
  v32 = *(v30 + 112);

  v33 = v22;
  sub_22C90878C();
  sub_22C9087FC();
  v58(v28, v56);
  sub_22C902DAC();
  sub_22C36BECC();
  sub_22C36C640(v34, v35, v36, v65);
  v66 = static QueryDecorationService.events(for:sessionState:queryDecorator:qdInput:sessionId:)(v62, v31, v32, v22, v29);

  sub_22C36DD28(v29, &qword_27D9C06F8, &qword_22C929520);
  v38 = v1[35];
  v37 = v1[36];
  v40 = v1[33];
  v39 = v1[34];
  v41 = v1[29];
  v42 = v1[30];
  v44 = v1[27];
  v43 = v1[28];
  v46 = v1[23];
  v45 = v1[24];
  v53 = v1[20];
  v55 = v1[19];
  v57 = v1[18];
  v59 = v1[17];
  sub_22C375C38();
  v64 = v1[9];

  sub_22C36D5E0();

  return v47(v66);
}

uint64_t sub_22C864400()
{
  v1 = v0[40];
  v2 = v0[37];

  v20 = v0[49];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[29];
  v8 = v0[30];
  v10 = v0[27];
  v9 = v0[28];
  v12 = v0[23];
  v11 = v0[24];
  v15 = v0[20];
  v16 = v0[19];
  v17 = v0[18];
  v18 = v0[17];
  sub_22C375C38();
  v19 = v0[9];

  sub_22C369A24();

  return v13();
}

uint64_t static QueryDecorationService.events(for:sessionState:queryDecorator:qdInput:sessionId:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v217 = a5;
  v226 = a4;
  v206 = a3;
  v234 = a1;
  v244 = sub_22C901FAC();
  v7 = sub_22C369824(v244);
  v205 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  v243 = v11;
  sub_22C36BA0C();
  v242 = sub_22C9081CC();
  v12 = sub_22C369824(v242);
  v245 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v241 = v16;
  v17 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C369914(v17);
  v19 = *(v18 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  sub_22C36D5B4();
  sub_22C3698F8(v21);
  v215 = sub_22C902DBC();
  v22 = sub_22C36985C(v215);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C3698A8();
  sub_22C3698F8(v25);
  v26 = sub_22C9063DC();
  v27 = sub_22C369824(v26);
  v235 = v28;
  v236 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C3698E4();
  v249 = v31;
  sub_22C369930();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA64();
  sub_22C3698F8(v34);
  v211 = sub_22C907C8C();
  v35 = sub_22C369824(v211);
  v210 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698A8();
  v220 = v39;
  v40 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  v41 = sub_22C369914(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA64();
  sub_22C3698F8(v45);
  v228 = sub_22C903F4C();
  v46 = sub_22C369824(v228);
  v209 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA64();
  sub_22C3698F8(v51);
  v238 = sub_22C9089DC();
  v52 = sub_22C369824(v238);
  v240 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA64();
  sub_22C3698F8(v57);
  v233 = sub_22C90795C();
  v58 = sub_22C369824(v233);
  v232 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22C3698A8();
  v231 = v62;
  v63 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v64 = sub_22C3699B8(v63);
  v218 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  sub_22C3834F0();
  v69 = MEMORY[0x28223BE20](v68);
  v71 = v204 - v70;
  MEMORY[0x28223BE20](v69);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v72);
  sub_22C36BA58();
  v239 = v73;
  sub_22C369930();
  MEMORY[0x28223BE20](v74);
  v76 = v204 - v75;
  v77 = sub_22C90880C();
  v78 = sub_22C369824(v77);
  v80 = v79;
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v78);
  sub_22C369838();
  v85 = v84 - v83;
  v86 = sub_22C908A0C();
  v87 = sub_22C369824(v86);
  v246 = v88;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v87);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v91);
  sub_22C36BA58();
  v250 = v92;
  sub_22C369930();
  v94 = MEMORY[0x28223BE20](v93);
  v96 = v204 - v95;
  MEMORY[0x28223BE20](v94);
  sub_22C36BA64();
  v237 = v97;
  v98 = a2;
  sub_22C90878C();
  v99 = sub_22C9087DC();
  (*(v80 + 8))(v85, v77);
  sub_22C3A5950(v99);

  v247 = v86;
  if (sub_22C370B74(v76, 1, v86) == 1)
  {
    sub_22C36DD28(v76, &qword_27D9BA808, &qword_22C90C6E0);
    v100 = v249;
    sub_22C90408C();
    v101 = sub_22C9063CC();
    v102 = sub_22C90AADC();
    if (sub_22C369E90(v102))
    {
      v103 = sub_22C36D240();
      sub_22C36C890(v103);
      sub_22C86810C(&dword_22C366000, v104, v105, "Unable to find any events in the transcript");
      sub_22C372FB0();
    }

    (*(v235 + 8))(v100, v236);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v248 = *(v246 + 32);
    v249 = v246 + 32;
    (v248)(v237, v76, v247);
    v107 = sub_22C903DAC();
    MEMORY[0x28223BE20](v107);
    sub_22C36FF0C();
    *(v108 - 256) = v98;
    *(v109 - 16) = v98;
    sub_22C3B27D8();
    v204[1] = 0;

    v110 = v231;
    sub_22C90679C();
    v111 = sub_22C868140(v232);
    v112(v111, v110, v233);
    v113 = *MEMORY[0x277D1E788];
    v114 = v240;
    v115 = v240 + 104;
    v116 = v238;
    v213 = *(v240 + 104);
    v213(0, v113, v238);
    v223 = v96;
    sub_22C90893C();
    v117 = *(v114 + 8);
    (v117)(0, v116);
    v118 = v239;
    sub_22C36C640(v239, 1, 1, v247);
    v119 = v229;
    sub_22C903D5C();
    v120 = v228;
    v121 = sub_22C370B74(v119, 1, v228);
    v122 = v246;
    v240 = v114 + 8;
    v204[2] = v115;
    v212 = v117;
    if (v121 == 1)
    {
      sub_22C36DD28(v229, &qword_27D9BD290, &qword_22C917EC0);
      v123 = v247;
    }

    else
    {
      v124 = v209;
      v125 = v219;
      (*(v209 + 32))(v219, v229, v120);
      v126 = v208;
      (*(v124 + 16))(v208, v125, v120);
      v229 = sub_22C903EEC();
      v204[0] = v127;
      sub_22C903EFC();
      sub_22C903F0C();
      v128 = sub_22C903F1C();
      sub_22C903F3C();
      v129 = v220;
      sub_22C907C7C();
      v229 = *(v124 + 8);
      (v229)(v126, v120);
      v130 = v210;
      v131 = sub_22C868140(v210);
      v132 = v211;
      v133(v131, v129, v211);
      v134 = v238;
      v213(v128, *MEMORY[0x277D1E740], v238);
      v135 = v207;
      sub_22C90893C();
      v212(v128, v134);
      v118 = v239;
      (*(v130 + 8))(v220, v132);
      (v229)(v219, v228);
      v122 = v246;
      sub_22C36DD28(v118, &qword_27D9BA808, &qword_22C90C6E0);
      sub_22C36BECC();
      v123 = v247;
      sub_22C36C640(v136, v137, v138, v247);
      sub_22C3DB08C(v135, v118, &qword_27D9BA808, &qword_22C90C6E0);
    }

    sub_22C3A5908(&qword_27D9BE098, &qword_22C91CE70);
    v139 = *(v218 + 72);
    v140 = (*(v218 + 80) + 32) & ~*(v218 + 80);
    v141 = swift_allocObject();
    *(v141 + 16) = xmmword_22C90F870;
    v229 = v141;
    v142 = v141 + v140;
    v143 = *(v122 + 16);
    v228 = v122 + 16;
    v227 = v143;
    v143(v141 + v140, v223, v123);
    sub_22C36BECC();
    sub_22C36C640(v144, v145, v146, v123);
    sub_22C3DB138(v118, v142 + v139, &qword_27D9BA808, &qword_22C90C6E0);
    v147 = 0;
    v148 = 0;
    v149 = MEMORY[0x277D84F90];
    do
    {
      v150 = v147;
      sub_22C3DB138(v142 + v148 * v139, v71, &qword_27D9BA808, &qword_22C90C6E0);
      sub_22C3DB08C(v71, v5, &qword_27D9BA808, &qword_22C90C6E0);
      if (sub_22C370B74(v5, 1, v123) == 1)
      {
        sub_22C36DD28(v5, &qword_27D9BA808, &qword_22C90C6E0);
      }

      else
      {
        (v248)(v250, v5, v123);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v153 = *(v149 + 16);
          sub_22C590488();
          v149 = v154;
        }

        v151 = *(v149 + 16);
        if (v151 >= *(v149 + 24) >> 1)
        {
          sub_22C590488();
          v149 = v155;
        }

        *(v149 + 16) = v151 + 1;
        v152 = v149 + ((*(v246 + 80) + 32) & ~*(v246 + 80)) + *(v246 + 72) * v151;
        v123 = v247;
        (v248)(v152, v250, v247);
      }

      v147 = 1;
      v148 = 1;
    }

    while ((v150 & 1) == 0);
    swift_setDeallocating();
    sub_22C590000();
    v156 = sub_22C903D8C();
    MEMORY[0x28223BE20](v156);
    sub_22C36FF0C();
    *(v158 - 16) = *(v157 - 256);
    sub_22C3B5384();
    v160 = v159;

    v161 = v221;
    sub_22C90400C();

    v162 = sub_22C9063CC();
    v163 = sub_22C90AABC();

    v164 = os_log_type_enabled(v162, v163);
    v220 = v160;
    if (v164)
    {
      v165 = swift_slowAlloc();
      v251 = swift_slowAlloc();
      *v165 = 136315394;
      *(v165 + 4) = sub_22C36F9F4(0xD00000000000003ALL, 0x800000022C937CD0, &v251);
      *(v165 + 12) = 2080;
      type metadata accessor for QueryDecorationService();
      v166 = sub_22C8658EC(v160);
      v168 = sub_22C36F9F4(v166, v167, &v251);

      *(v165 + 14) = v168;
      _os_log_impl(&dword_22C366000, v162, v163, "QDInternal: dynamicEnumerationEntities with statementId's in %s\n%s", v165, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C36BAE0();
    }

    v169 = v236;
    v221 = *(v235 + 8);
    v221(v161, v236);
    v170 = v226;
    v171 = v246;
    v172 = sub_22C903DBC();
    v229 = sub_22C86602C(v172, v222);

    v173 = v247;
    if (v170)
    {
      v174 = v216;
      sub_22C3DB138(v217, v216, &qword_27D9C06F8, &qword_22C929520);
      if (sub_22C370B74(v174, 1, v215) == 1)
      {
        sub_22C36DD28(v174, &qword_27D9C06F8, &qword_22C929520);
      }

      else
      {
        v175 = v214;
        sub_22C867B78(v174, v214);
        if (v206)
        {
          v176 = v229;
          v177 = *(v229 + 16);
          if (v177)
          {
            v251 = MEMORY[0x277D84F90];
            v178 = v170;

            sub_22C3B7754();
            v179 = v251;
            v180 = *(v245 + 16);
            v181 = v176 + ((*(v245 + 80) + 32) & ~*(v245 + 80));
            v249 = *(v245 + 72);
            v250 = v180;
            v248 = (v205 + 8);
            v245 += 16;
            v182 = (v245 - 8);
            do
            {
              v183 = v241;
              v184 = v242;
              v250(v241, v181, v242);
              v185 = v243;
              sub_22C9068FC();
              v186 = sub_22C901F9C();
              (*v248)(v185, v244);
              (*v182)(v183, v184);
              v251 = v179;
              v187 = *(v179 + 16);
              if (v187 >= *(v179 + 24) >> 1)
              {
                sub_22C3B7754();
                v179 = v251;
              }

              *(v179 + 16) = v187 + 1;
              *(v179 + 4 * v187 + 32) = v186;
              v181 += v249;
              --v177;
            }

            while (v177);
            v169 = v236;
            v170 = v226;
            v171 = v246;
          }

          else
          {
            v188 = v170;

            v179 = MEMORY[0x277D84F90];
          }

          v189 = v214;
          sub_22C85BE0C(v179, v170, v214);

          sub_22C867BDC(v189);
          v173 = v247;
        }

        else
        {
          sub_22C867BDC(v175);
        }
      }
    }

    sub_22C903DAC();
    sub_22C903D5C();
    sub_22C9079BC();
    sub_22C9079CC();
    v190 = v224;
    sub_22C9079AC();
    v213(v190, *MEMORY[0x277D1E808], v238);
    v191 = v237;
    sub_22C90893C();
    v192 = sub_22C36A724();
    (v212)(v192);
    v193 = v225;
    sub_22C90408C();
    v194 = sub_22C9063CC();
    v195 = sub_22C90AACC();
    if (sub_22C369E90(v195))
    {
      v196 = sub_22C36D240();
      sub_22C36C890(v196);
      sub_22C86810C(&dword_22C366000, v197, v198, "Finished generating QueryDecorationService events");
      sub_22C372FB0();
    }

    v221(v193, v169);
    sub_22C3A5908(&qword_27D9BAE10, &unk_22C91DB10);
    v199 = *(v171 + 72);
    v200 = (*(v171 + 80) + 32) & ~*(v171 + 80);
    v201 = swift_allocObject();
    *(v201 + 16) = xmmword_22C90F800;
    v202 = v230;
    v227(v201 + v200, v230, v173);
    v251 = v149;
    sub_22C3CF0B0(v201);
    v203 = *(v171 + 8);
    v203(v202, v173);
    sub_22C36DD28(v239, &qword_27D9BA808, &qword_22C90C6E0);
    v203(v223, v173);
    (*(v232 + 8))(v231, v233);
    v203(v191, v173);
    return v251;
  }
}

uint64_t sub_22C8658EC(uint64_t a1)
{
  v69 = sub_22C9093BC();
  v2 = *(v69 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v69);
  v68 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22C903E2C();
  v5 = *(v67 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v67);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_22C901FAC();
  v9 = *(v66 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_22C9084CC();
  v12 = *(v73 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v73);
  v64 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C3A5908(&qword_27D9C0A58, &qword_22C929F68);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v53 = (v52 - v17);
  v18 = sub_22C3A5908(&qword_27D9C0A60, &unk_22C929F70);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v70 = (v52 - v23);
  v78 = 0;
  v79 = 0xE000000000000000;
  v52[1] = v12 + 16;
  v61 = (v12 + 32);
  v24 = *(a1 + 16);
  v59 = (v5 + 8);
  v58 = (v2 + 8);
  v57 = (v9 + 8);
  v54 = v12;
  v56 = (v12 + 8);
  v55 = a1;

  v26 = 0;
  v62 = v22;
  v63 = v15;
  v60 = v24;
  v27 = v64;
  v28 = v65;
  while (1)
  {
    if (v26 == v24)
    {
      v29 = 1;
      v30 = v24;
      goto LABEL_7;
    }

    if (v26 >= v24)
    {
      break;
    }

    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_11;
    }

    v31 = v54;
    v32 = v55 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26;
    v33 = *(v15 + 48);
    v34 = v53;
    *v53 = v26;
    (*(v31 + 16))(v34 + v33, v32, v73);
    sub_22C3DB08C(v34, v22, &qword_27D9C0A58, &qword_22C929F68);
    v29 = 0;
LABEL_7:
    v35 = v70;
    sub_22C36C640(v22, v29, 1, v15);
    sub_22C3DB08C(v22, v35, &qword_27D9C0A60, &unk_22C929F70);
    if (sub_22C370B74(v35, 1, v15) == 1)
    {

      return v78;
    }

    v72 = v30;
    v36 = *v35;
    (*v61)(v27, v35 + *(v15 + 48), v73);
    sub_22C9068FC();
    sub_22C9084AC();
    v71 = sub_22C90381C();
    v38 = v37;
    v39 = *v59;
    v40 = v67;
    (*v59)(v8, v67);
    sub_22C9084AC();
    v41 = v68;
    sub_22C903E0C();
    v39(v8, v40);
    v76 = v36;
    v76 = sub_22C90B47C();
    v77 = v42;
    v74 = 32;
    v75 = 0xE100000000000000;
    sub_22C3858B4();
    v43 = sub_22C90AD7C();
    v45 = v44;

    v76 = 0;
    v77 = 0xE000000000000000;
    sub_22C90AF5C();
    MEMORY[0x2318B7850](8202, 0xE200000000000000);
    MEMORY[0x2318B7850](v43, v45);

    MEMORY[0x2318B7850](0x656D657461747320, 0xEE00203A6449746ELL);
    sub_22C867F24(&qword_27D9BAA48, 255, MEMORY[0x277D1C338]);
    v46 = v66;
    v47 = sub_22C90B47C();
    MEMORY[0x2318B7850](v47);

    MEMORY[0x2318B7850](0x6669746E65646920, 0xED0000203A726569);
    MEMORY[0x2318B7850](v71, v38);

    MEMORY[0x2318B7850](0x6156646570797420, 0xED0000203A65756CLL);
    v48 = v69;
    sub_22C90B12C();
    MEMORY[0x2318B7850](v76, v77);
    v26 = v72;

    v49 = v41;
    v50 = v48;
    v22 = v62;
    v15 = v63;
    (*v58)(v49, v50);
    v51 = v46;
    v24 = v60;
    (*v57)(v28, v51);
    result = (*v56)(v27, v73);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_22C86602C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9063DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v7);
  v20[-2] = a2;
  sub_22C3B2784();
  v11 = v10;
  sub_22C90400C();

  v12 = sub_22C9063CC();
  v13 = sub_22C90AABC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_22C36F9F4(0xD000000000000029, 0x800000022C937D70, v20);
    *(v14 + 12) = 2080;
    type metadata accessor for QueryDecorationService();
    v16 = sub_22C8663D0(v11);
    v18 = sub_22C36F9F4(v16, v17, v20);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_22C366000, v12, v13, "QDInternal: retrievedContext with statementId's in %s\n%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v15, -1, -1);
    MEMORY[0x2318B9880](v14, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  return v11;
}

uint64_t sub_22C866290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, char *))
{
  v7 = a4(0);
  sub_22C369824(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = sub_22C901FAC();
  v16 = sub_22C369914(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v21 = v20 - v19;
  sub_22C9087AC();
  sub_22C90882C();

  (*(v9 + 16))(v14, a1, v7);
  return a5(v21, v14);
}

uint64_t sub_22C8663D0(uint64_t a1)
{
  v65 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v2 = *(*(v65 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v65);
  v64 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v63 = &v53 - v5;
  v62 = sub_22C90355C();
  v6 = *(v62 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22C90399C();
  v9 = *(v60 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v60);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22C901FAC();
  v13 = *(v59 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v59);
  v70 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22C9081CC();
  v16 = *(v69 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v69);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22C3A5908(&qword_27D9C0A68, &unk_22C929F80);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v66 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = (&v53 - v24);
  v78 = 0;
  v79 = 0xE000000000000000;
  v76 = 0;
  v77 = 0;
  v58 = (v16 + 32);
  v57 = (v9 + 8);
  v55 = (v6 + 8);
  v54 = (v13 + 8);
  v53 = (v16 + 8);
  v75 = a1;

  v56 = v25;
  while (1)
  {
    v34 = v66;
    sub_22C80EE78(v26, v27, v28, v29, v30, v31, v32, v33, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
    sub_22C3DB08C(v34, v25, &qword_27D9C0A68, &unk_22C929F80);
    v35 = sub_22C3A5908(&qword_27D9BF300, &unk_22C922550);
    if (sub_22C370B74(v25, 1, v35) == 1)
    {
      break;
    }

    v36 = *v25;
    (*v58)(v19, v25 + *(v35 + 48), v69);
    sub_22C9068FC();
    sub_22C9081AC();
    v37 = v61;
    sub_22C90394C();
    v38 = *v57;
    v39 = v60;
    (*v57)(v12, v60);
    v67 = sub_22C90354C();
    v41 = v40;
    (*v55)(v37, v62);
    sub_22C9081AC();
    v68 = sub_22C90390C();
    v43 = v42;
    v38(v12, v39);
    sub_22C9081AC();
    v44 = v63;
    sub_22C90391C();
    v38(v12, v39);
    v73 = v36;
    v73 = sub_22C90B47C();
    v74 = v45;
    v71 = 32;
    v72 = 0xE100000000000000;
    sub_22C3858B4();
    v46 = sub_22C90AD7C();
    v48 = v47;

    v73 = 0;
    v74 = 0xE000000000000000;
    sub_22C90AF5C();
    MEMORY[0x2318B7850](8202, 0xE200000000000000);
    MEMORY[0x2318B7850](v46, v48);
    v25 = v56;

    MEMORY[0x2318B7850](0x656D657461747320, 0xEE00203A6449746ELL);
    v49 = v70;
    LODWORD(v71) = sub_22C901F9C();
    v50 = sub_22C90B47C();
    MEMORY[0x2318B7850](v50);

    MEMORY[0x2318B7850](0x747865746E6F6320, 0xEE00203A65707954);
    MEMORY[0x2318B7850](v67, v41);

    MEMORY[0x2318B7850](0x6669746E65646920, 0xED0000203A726569);
    MEMORY[0x2318B7850](v68, v43);

    MEMORY[0x2318B7850](0x6156646570797420, 0xED0000203A65756CLL);
    sub_22C3DB138(v44, v64, &qword_27D9BB908, &qword_22C910960);
    v51 = sub_22C90A1AC();
    MEMORY[0x2318B7850](v51);

    MEMORY[0x2318B7850](v73, v74);

    sub_22C36DD28(v44, &qword_27D9BB908, &qword_22C910960);
    (*v54)(v49, v59);
    v26 = (*v53)(v19, v69);
  }

  return v78;
}

void sub_22C866B0C(uint64_t a1, uint64_t a2)
{
  v148 = a2;
  v4 = sub_22C903D4C();
  v5 = sub_22C369914(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v10 = v9 - v8;
  v146 = sub_22C90069C();
  v11 = sub_22C369824(v146);
  v145 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  v147 = v15;
  v16 = sub_22C3A5908(&qword_27D9BE068, &qword_22C91CE40);
  sub_22C369914(v16);
  v18 = *(v17 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v19);
  sub_22C36D5B4();
  v153 = v20;
  v21 = sub_22C3A5908(&qword_27D9BEB48, &unk_22C91FF10);
  sub_22C369914(v21);
  v23 = *(v22 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  sub_22C36D5B4();
  countAndFlagsBits = v25;
  sub_22C36BA0C();
  v158 = sub_22C9068CC();
  v26 = sub_22C369824(v158);
  v155 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C3698A8();
  v154 = v30;
  v31 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v31);
  v33 = *(v32 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v34);
  sub_22C36D5B4();
  object = v35;
  sub_22C36BA0C();
  v36 = sub_22C908A0C();
  v163 = sub_22C369824(v36);
  v164 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v163);
  sub_22C3698A8();
  v162 = v40;
  sub_22C36BA0C();
  v165 = sub_22C9063DC();
  v41 = sub_22C369824(v165);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C3834F0();
  MEMORY[0x28223BE20](v46);
  sub_22C36BA58();
  v157 = v47;
  sub_22C369930();
  v49 = MEMORY[0x28223BE20](v48);
  v51 = &v137 - v50;
  MEMORY[0x28223BE20](v49);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v52);
  v54 = &v137 - v53;
  v55 = sub_22C90880C();
  v56 = sub_22C369824(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22C369838();
  v63 = v62 - v61;
  v161 = a1;
  sub_22C90878C();
  v64 = sub_22C9087DC();
  v65 = *(v58 + 8);
  v151 = v58 + 8;
  v152 = v55;
  v150 = v65;
  v65(v63, v55);
  v166[0] = v64;
  v66 = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  v149 = sub_22C3AC13C();
  v67 = sub_22C907E9C();

  if (v67[2])
  {
    v141 = v66;
    v142 = v51;
    v68 = v67[6];
    v139 = v67[5];
    v156 = v68;

    sub_22C90400C();

    v69 = sub_22C9063CC();
    v70 = sub_22C90AACC();

    v71 = os_log_type_enabled(v69, v70);
    v140 = v10;
    if (v71)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v166[0] = v73;
      *v72 = 136315138;
      v74 = sub_22C3A5908(&qword_27D9C0A50, &qword_22C929F60);
      v75 = MEMORY[0x2318B7AD0](v67, v74);
      v143 = v43;
      v76 = v75;
      v78 = v77;

      v79 = sub_22C36F9F4(v76, v78, v166);
      v80 = v164;

      *(v72 + 4) = v79;
      v43 = v143;
      _os_log_impl(&dword_22C366000, v69, v70, "Tool Retrieval queries: %s", v72, 0xCu);
      sub_22C36FF94(v73);
      v81 = v165;
      sub_22C3699EC();
      sub_22C3699EC();

      v82 = *(v43 + 8);
      v82(v54, v81);
    }

    else
    {

      v82 = *(v43 + 8);
      v81 = v165;
      v82(v54, v165);
      v80 = v164;
    }

    v86 = object;
    sub_22C86775C(object);
    v87 = v163;
    v88 = sub_22C370B74(v86, 1, v163);
    v89 = countAndFlagsBits;
    if (v88 == 1)
    {

      sub_22C36DD28(v86, &qword_27D9BA808, &qword_22C90C6E0);
      v90 = v157;
      sub_22C90400C();
      v91 = sub_22C9063CC();
      v92 = sub_22C90AADC();
      if (sub_22C369E90(v92))
      {
        v93 = sub_22C36D240();
        sub_22C36C890(v93);
        sub_22C86810C(&dword_22C366000, v94, v95, "No query event found in transcript. QDInput will be nil");
        sub_22C372FB0();
      }

      v82(v90, v81);
      return;
    }

    (*(v80 + 32))(v162, v86, v87);
    sub_22C90877C();
    sub_22C36BECC();
    v96 = v89;
    v97 = v158;
    sub_22C36C640(v98, v99, v100, v158);
    (*(v155 + 32))(v154, v96, v97);
    v101 = Session.Event.getSessionScopedLoggingSalt()();
    object = v101._object;
    countAndFlagsBits = v101._countAndFlagsBits;
    v102 = sub_22C90891C();
    v142 = v103;
    v104 = v153;
    sub_22C9068AC();
    v105 = sub_22C90212C();
    v106 = sub_22C370B74(v104, 1, v105);
    v143 = v43;
    v157 = v102;
    if (v106 == 1)
    {
      sub_22C36DD28(v104, &qword_27D9BE068, &qword_22C91CE40);
      v138 = 0;
      v137 = 0;
    }

    else
    {
      v138 = sub_22C90211C();
      v137 = v107;
      (*(*(v105 - 8) + 8))(v104, v105);
    }

    v108 = v152;
    sub_22C90878C();
    v109 = sub_22C9087DC();
    v150(v63, v108);
    v166[0] = v109;
    v110 = sub_22C907F5C();

    v111 = sub_22C863074(1, v110, sub_22C88842C, sub_22C633A28);
    v115 = v114 >> 1;
    v116 = (v114 >> 1) - v113;
    if (__OFSUB__(v114 >> 1, v113))
    {
      goto LABEL_29;
    }

    if (v116)
    {
      v117 = v112;
      v118 = v113;
      v161 = v111;
      v166[0] = MEMORY[0x277D84F90];
      sub_22C3B5E2C();
      if (v116 < 0)
      {
LABEL_30:
        __break(1u);
        return;
      }

      v119 = v166[0];
      v120 = (v117 + 24 * v118 + 16);
      while (v118 < v115)
      {
        v121 = *(v120 - 1);
        v122 = *v120;
        v166[0] = v119;
        v124 = *(v119 + 16);
        v123 = *(v119 + 24);

        if (v124 >= v123 >> 1)
        {
          sub_22C3B5E2C();
          v119 = v166[0];
        }

        *(v119 + 16) = v124 + 1;
        v125 = v119 + 16 * v124;
        *(v125 + 32) = v121;
        *(v125 + 40) = v122;
        ++v118;
        v120 += 3;
        if (v115 == v118)
        {
          swift_unknownObjectRelease();
          v81 = v165;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    swift_unknownObjectRelease();
    v119 = MEMORY[0x277D84F90];
LABEL_25:
    v126 = v144;
    sub_22C90400C();

    v127 = sub_22C9063CC();
    v128 = sub_22C90AACC();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v166[0] = v130;
      *v129 = 136315138;
      v131 = MEMORY[0x2318B7AD0](v119, MEMORY[0x277D837D0]);
      v133 = sub_22C36F9F4(v131, v132, v166);

      *(v129 + 4) = v133;
      _os_log_impl(&dword_22C366000, v127, v128, "Tool Retrieval previousQueries: %s", v129, 0xCu);
      sub_22C36FF94(v130);
      sub_22C3699EC();
      sub_22C36BAE0();
    }

    v82(v126, v81);
    v135 = v162;
    v134 = v163;
    (*(v145 + 16))(v147, v148, v146);
    sub_22C9034CC();
    v136 = objc_allocWithZone(sub_22C903CBC());
    sub_22C903C5C();
    (*(v155 + 8))(v154, v158);
    (*(v164 + 8))(v135, v134);
  }

  else
  {

    sub_22C90400C();
    v83 = sub_22C9063CC();
    v84 = sub_22C90AADC();
    if (sub_22C370048(v84))
    {
      v85 = sub_22C36D240();
      *v85 = 0;
      _os_log_impl(&dword_22C366000, v83, v84, "No query found in transcript. QDInput will be nil", v85, 2u);
      sub_22C3699EC();
    }

    (*(v43 + 8))(v2, v165);
  }
}

uint64_t sub_22C86775C@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_22C9063DC();
  v2 = sub_22C369824(v1);
  v32 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C90880C();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v17 = v16 - v15;
  sub_22C90878C();
  sub_22C9087DC();
  v18 = *(v12 + 8);
  v18(v17, v9);
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3AC13C();
  sub_22C907ECC();

  if (!v35)
  {
    sub_22C90400C();
    v27 = sub_22C9063CC();
    v28 = sub_22C90AABC();
    if (sub_22C370048(v28))
    {
      v29 = sub_22C36D240();
      sub_22C37585C(v29);
      sub_22C369A04(&dword_22C366000, v30, v31, "No query found in transcript");
      sub_22C36BAE0();
    }

    (*(v32 + 8))(v8, v1);
    v26 = sub_22C908A0C();
    v23 = a1;
    v24 = 1;
    v25 = 1;
    return sub_22C36C640(v23, v24, v25, v26);
  }

  sub_22C90878C();
  v19 = sub_22C9087DC();
  result = (v18)(v17, v9);
  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v34 < *(v19 + 16))
  {
    v21 = sub_22C908A0C();
    sub_22C36985C(v21);
    (*(v22 + 16))(a1, v19 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v34, v21);

    sub_22C36BECC();
    v26 = v21;
    return sub_22C36C640(v23, v24, v25, v26);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C867A40()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C85D138;

  return sub_22C8632E4();
}

uint64_t sub_22C867B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C902DBC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C867BDC(uint64_t a1)
{
  v2 = sub_22C902DBC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C867C38(uint64_t a1, uint64_t a2)
{
  result = sub_22C867F24(qword_2814330C8, a2, type metadata accessor for QueryDecorationService);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of QueryDecorationService.setup(sessionState:)(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22C382AF4;

  return v8(a1);
}

uint64_t dispatch thunk of QueryDecorationService.handle(_:plannerServiceContext:)()
{
  v2 = *(*v0 + 168);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22C7D8F18;
  v5 = sub_22C36A724();

  return v7(v5);
}

uint64_t sub_22C867F24(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_22C867FB4()
{
  result = qword_27D9C0A70;
  if (!qword_27D9C0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0A70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryDecorationServiceError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C8680B8()
{
  result = qword_27D9C0A78;
  if (!qword_27D9C0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0A78);
  }

  return result;
}

void sub_22C86810C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_22C868154()
{
  sub_22C869124(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue7Builder_type);
  sub_22C869124(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue7Builder_string);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22C8681E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v14 || (sub_22C373BCC() & 1) != 0)
  {
    sub_22C869250(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_type, v13);
    v15 = sub_22C902FBC();
    if (sub_22C370B74(v13, 1, v15) == 1)
    {
      v16 = v13;
LABEL_8:
      result = sub_22C869124(v16);
LABEL_9:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v15;
    v18 = sub_22C36D548(a3);
    return (*(*(v15 - 8) + 32))(v18, v13, v15);
  }

  else
  {
    v19 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
    if (v19 || (sub_22C373BCC() & 1) != 0)
    {
      sub_22C869250(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_string, v11);
      v20 = sub_22C902FBC();
      if (sub_22C370B74(v11, 1, v20) == 1)
      {
        v16 = v11;
        goto LABEL_8;
      }

      *(a3 + 24) = v20;
      v21 = sub_22C36D548(a3);
      return (*(*(v20 - 8) + 32))(v21, v11, v20);
    }

    else
    {
      result = 0x7265626D756ELL;
      v22 = a1 == 0x7265626D756ELL && a2 == 0xE600000000000000;
      if (v22 || (result = sub_22C373BCC(), (result & 1) != 0))
      {
        if (*(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_number + 8))
        {
          goto LABEL_9;
        }

        v23 = *(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_number);
        *(a3 + 24) = MEMORY[0x277D839F8];
        *a3 = v23;
      }

      else
      {
        result = 0x6E61656C6F6F62;
        if (a1 != 0x6E61656C6F6F62 || a2 != 0xE700000000000000)
        {
          result = sub_22C373BCC();
          if ((result & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v25 = *(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_BOOLean);
        *(a3 + 24) = MEMORY[0x277D839B0];
        *a3 = v25;
      }
    }
  }

  return result;
}

uint64_t sub_22C868484()
{
  v0 = sub_22C90B21C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22C8684D0(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x676E69727473;
      break;
    case 2:
      result = 0x7265626D756ELL;
      break;
    case 3:
      result = 0x6E61656C6F6F62;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C868568@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22C868484();
  *a2 = result;
  return result;
}

uint64_t sub_22C868598@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C8684D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22C8685CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C868484();
  *a1 = result;
  return result;
}

uint64_t sub_22C868600(uint64_t a1)
{
  v2 = sub_22C86918C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C86863C(uint64_t a1)
{
  v2 = sub_22C86918C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C868678()
{
  sub_22C869124(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_type);
  sub_22C869124(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_string);
  return v0;
}

uint64_t sub_22C8686B8()
{
  sub_22C868678();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_22C868738()
{
  sub_22C868A24();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22C8687E8(void *a1)
{
  v3 = v1;
  v5 = sub_22C3A5908(&qword_27D9C0AD8, &qword_22C92A1A0);
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20[-v11];
  v13 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C86918C();
  sub_22C90B6CC();
  v20[15] = 0;
  sub_22C902FBC();
  sub_22C36B850();
  sub_22C8690DC(v14, v15);
  sub_22C36A49C();
  if (!v2)
  {
    v20[14] = 1;
    sub_22C36A49C();
    v16 = *(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_number);
    v17 = *(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_number + 8);
    v20[13] = 2;
    sub_22C90B39C();
    v18 = *(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_BOOLean);
    v20[12] = 3;
    sub_22C90B3DC();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_22C8689D4(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_22C868B48(a1);
  return v5;
}

void sub_22C868A24()
{
  if (!qword_27D9C0A90)
  {
    sub_22C902FBC();
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9C0A90);
    }
  }
}

void sub_22C868AA4()
{
  sub_22C868A24();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id *sub_22C868B48(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v34 = sub_22C3A5908(&qword_27D9C0AC0, &qword_22C92A198);
  v12 = sub_22C369824(v34);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v3[2] = 0;
  v17 = a1[3];
  v18 = a1[4];
  v35 = a1;
  sub_22C374168(a1, v17);
  sub_22C86918C();
  sub_22C90B6BC();
  if (v2)
  {

    type metadata accessor for ResponseGenerationValue(0);
    v21 = *(*v3 + 12);
    v22 = *(*v3 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = v14;
    sub_22C902FBC();
    v39 = 0;
    sub_22C36B850();
    sub_22C8690DC(v19, v20);
    sub_22C8694A4();
    sub_22C8691E0(v11, v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_type);
    v38 = 1;
    sub_22C8694A4();
    sub_22C8691E0(v9, v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_string);
    v37 = 2;
    v24 = sub_22C90B28C();
    v25 = v33;
    v26 = v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_number;
    *v26 = v24;
    v26[8] = v27 & 1;
    v36 = 3;
    v28 = sub_22C90B2EC();
    v29 = *(v25 + 8);
    v30 = sub_22C371510();
    v31(v30);
    *(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_BOOLean) = v28 & 1;
  }

  sub_22C36FF94(v35);
  return v3;
}

void *sub_22C868EF0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_22C868F38(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t (*sub_22C868F84())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t sub_22C868FFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22C8689D4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22C8690DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C869124(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C86918C()
{
  result = qword_27D9C0AC8;
  if (!qword_27D9C0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0AC8);
  }

  return result;
}

uint64_t sub_22C8691E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C869250(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationValue.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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