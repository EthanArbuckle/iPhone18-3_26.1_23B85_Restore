uint64_t sub_1CF8D4C38()
{
  v71 = v0;
  if (objc_sync_enter(*(v0 + 80)))
  {
    v1 = sub_1CF1C546C;
    v2 = 343;
    goto LABEL_5;
  }

  v3 = *(v0 + 80);
  v4 = *&v3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];

  if (objc_sync_exit(v3))
  {
    v1 = sub_1CF1C5468;
    v2 = 347;
LABEL_5:
    v5 = *(v0 + 80);
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;

    fp_preconditionFailure(_:file:line:)(v1, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, v2);
  }

  if (!v4)
  {
    v7 = *(v0 + 80);
    v8 = *(v7 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue);
    *(swift_task_alloc() + 16) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4C28, &qword_1CFA17E60);
    sub_1CF9E7398();

    v4 = *(v0 + 64);
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  *(v0 + 216) = v4;
  v9 = *(*(v0 + 80) + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_fpDiagnosticsManager);
  *(v0 + 224) = v9;
  if (!v9)
  {

LABEL_15:
    v34 = *(v0 + 160);
    v35 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v36 = sub_1CF9E6108();
    v37 = sub_1CF9E72A8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1CEFC7000, v36, v37, "Couldn't trigger full feedback flow, fpfs nil", v38, 2u);
      MEMORY[0x1D386CDC0](v38, -1, -1);
    }

    v40 = *(v0 + 152);
    v39 = *(v0 + 160);
    v41 = *(v0 + 144);
    v43 = *(v0 + 104);
    v42 = *(v0 + 112);
    v45 = *(v0 + 88);
    v44 = *(v0 + 96);

    (*(v40 + 8))(v39, v41);
    sub_1CF9E5108();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v43 + 8))(v42, v44);
    swift_willThrow();
    goto LABEL_23;
  }

  v11 = *(v0 + 200);
  v10 = *(v0 + 208);
  v12 = *(v0 + 176);
  v13 = *(v0 + 184);
  v14 = *(v0 + 72);

  sub_1CF010CE0(v14, 1, 1, 0, v10);
  sub_1CEFCCBDC(v10, v11, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v15 = *(v0 + 168);
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v18 = *(v0 + 120);
    v19 = *(v0 + 72);
    sub_1CEFCCC44(*(v0 + 200), &unk_1EC4BEC00, &unk_1CF9FCB60);
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v17 + 16))(v16, v19, v18);
    v21 = sub_1CF9E6108();
    v69 = sub_1CF9E72A8();
    v22 = os_log_type_enabled(v21, v69);
    v23 = *(v0 + 168);
    v24 = *(v0 + 144);
    v25 = *(v0 + 152);
    v27 = *(v0 + 128);
    v26 = *(v0 + 136);
    v28 = *(v0 + 120);
    if (v22)
    {
      log = v21;
      v29 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v70 = v67;
      *v29 = 136315138;
      sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
      v65 = v24;
      v66 = v23;
      v30 = sub_1CF9E7F98();
      v32 = v31;
      (*(v27 + 8))(v26, v28);
      v33 = sub_1CEFD0DF0(v30, v32, &v70);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1CEFC7000, log, v69, "Failed to find VFSItem for domain, from URL: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x1D386CDC0](v67, -1, -1);
      MEMORY[0x1D386CDC0](v29, -1, -1);

      (*(v25 + 8))(v66, v65);
    }

    else
    {

      (*(v27 + 8))(v26, v28);
      (*(v25 + 8))(v23, v24);
    }

    v51 = *(v0 + 208);
    v53 = *(v0 + 104);
    v52 = *(v0 + 112);
    v54 = *(v0 + 88);
    v55 = *(v0 + 96);
    sub_1CF9E50F8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v53 + 8))(v52, v55);
    swift_willThrow();

    sub_1CEFCCC44(v51, &unk_1EC4BEC00, &unk_1CF9FCB60);
LABEL_23:
    v57 = *(v0 + 200);
    v56 = *(v0 + 208);
    v58 = *(v0 + 192);
    v60 = *(v0 + 160);
    v59 = *(v0 + 168);
    v61 = *(v0 + 136);
    v62 = *(v0 + 112);
    v63 = *(v0 + 88);

    v64 = *(v0 + 8);

    return v64();
  }

  v46 = *(v0 + 192);
  sub_1CEFDA0C4(*(v0 + 200), v46, type metadata accessor for VFSItem);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4730, &unk_1CFA16880);
  inited = swift_initStackObject();
  *(v0 + 232) = inited;
  *(inited + 16) = xmmword_1CF9FA450;
  v48 = *(v46 + 8);
  *(inited + 32) = *v46;
  *(inited + 40) = v48;
  *(inited + 41) = 0;
  v49 = swift_task_alloc();
  *(v0 + 240) = v49;
  *v49 = v0;
  v49[1] = sub_1CF8D53B4;

  return sub_1CF7F8760(inited, 0, 0, 0, 0x2000000);
}

uint64_t sub_1CF8D53B4()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 232);
  swift_setDeallocating();
  sub_1CEFCCC44(v5 + 32, &unk_1EC4BFC10, &qword_1CF9FE510);
  if (v0)
  {
    v6 = sub_1CF8D561C;
  }

  else
  {
    v6 = sub_1CF8D5504;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CF8D5504()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[17];
  v9 = v0[14];
  v10 = v0[11];

  sub_1CEFD5338(v5, type metadata accessor for VFSItem);
  sub_1CEFCCC44(v3, &unk_1EC4BEC00, &unk_1CF9FCB60);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1CF8D561C()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[24];

  sub_1CEFD5338(v4, type metadata accessor for VFSItem);
  sub_1CEFCCC44(v3, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v5 = v0[31];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[17];
  v12 = v0[14];
  v13 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t FPDDomainFPFSBackend.requestDiagnosticCollectionForItem(with:errorReason:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a1;
  v10[6] = a2;
  swift_retain_n();
  v11 = v4;
  v12 = a1;
  v13 = a2;
  sub_1CEFD4024("requestDiagnosticCollectionForItem(with:errorReason:completionHandler:)", 71, 2, sub_1CF90324C, v9, sub_1CF8F38A4, v10);
}

void sub_1CF8D5834(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, void *a6)
{
  v8 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_fpDiagnosticsManager);
  if (v8)
  {
    v11 = *(a1 + 16);
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    v14 = swift_allocObject();
    v14[2] = a5;
    v14[3] = a1;
    v14[4] = a3;
    v14[5] = a4;
    v14[6] = v8;
    v14[7] = a6;
    swift_retain_n();
    swift_retain_n();
    v15 = a5;

    v16 = a6;
    sub_1CF7AAF88("requestDiagnosticCollectionForItem(with:errorReason:completionHandler:)", 71, 2, 2, sub_1CF90324C, v13, sub_1CF8F9C94, v14);
  }

  else
  {
    v17 = FPNotSupportedError();
    a3();
  }
}

void sub_1CF8D59CC(void *a1, void *a2, uint64_t a3, void (*a4)(id), uint64_t a5, uint64_t a6, void *a7)
{
  v38 = a6;
  v39 = a7;
  v40 = a4;
  v41 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v36 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1CEFD4E9C([a2 identifier]);
  v17 = *(a3 + 16);
  v18 = v48;
  sub_1CF554678(v17, 0, v16, v14, v15, v46);

  if (!v18)
  {
    v36 = a2;
    v37 = v13;
    v19 = v46[0];
    v20 = LOBYTE(v46[1]);
    v21 = BYTE1(v46[1]);
    v22 = a1[3];
    v48 = a1[4];
    v23 = __swift_project_boxed_opaque_existential_1(a1, v22);
    v24 = *(v17 + 16);
    v25 = v21;
    v26 = v20;
    v27 = v19;
    v43 = v19;
    v44 = v26;
    v45 = v25;

    sub_1CF68DB40(&v43, v23, v22, v48, v46);

    memcpy(v42, v46, sizeof(v42));
    if (sub_1CF08B99C(v42) == 1)
    {
      v28 = [v36 identifier];
      v29 = FPItemNotFoundError();

      v40(v29);
      sub_1CEFD0994(v27, v26, v25);
    }

    else
    {
      memcpy(v47, v42, sizeof(v47));
      v30 = sub_1CF9E6F08();
      v31 = v37;
      (*(*(v30 - 8) + 56))(v37, 1, 1, v30);
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      v33 = v39;
      *(v32 + 32) = v38;
      *(v32 + 40) = v27;
      *(v32 + 48) = v26;
      *(v32 + 49) = v25;
      *(v32 + 56) = v33;
      memcpy((v32 + 64), v47, 0x208uLL);
      v34 = v41;
      *(v32 + 584) = v40;
      *(v32 + 592) = v34;

      v35 = v33;

      sub_1CF81241C(0, 0, v31, &unk_1CFA18120, v32);
    }
  }
}

uint64_t sub_1CF8D5CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = v10;
  *(v8 + 56) = v11;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 80) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1CF8D5CF4, 0, 0);
}

uint64_t sub_1CF8D5CF4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 80);
  v3 = sub_1CF38B634();
  v5 = v4;
  *(v0 + 64) = v4;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1CF8D5DD4;
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = *(v0 + 16);

  return sub_1CF7F92B0(v8, v2 & 0x1FF, v7, v3, v5);
}

uint64_t sub_1CF8D5DD4()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1CF8D5F20, 0, 0);
  }
}

uint64_t sub_1CF8D5F20()
{
  v1 = *(v0 + 56);
  (*(v0 + 48))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t FPDDomainFPFSBackend.triggerFeedbackApprovalRequest(forItemURL:domain:uiOnly:completionHandler:)(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25[-v14];
  v16 = sub_1CF9E6F08();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v11, a1, v8);
  v17 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v26;
  *(v19 + 40) = v5;
  (*(v9 + 32))(v19 + v17, v11, v8);
  v20 = (v19 + v18);
  v21 = v27;
  *v20 = v28;
  v20[1] = a5;
  *(v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v22 = v5;

  v23 = v21;
  sub_1CF6FCFEC(0, 0, v15, &unk_1CFA17B68, v19);
}

uint64_t sub_1CF8D6330(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v10;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 16) = a5;
  *(v8 + 96) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1CF8D6364, 0, 0);
}

uint64_t sub_1CF8D6364()
{
  if (*(v0 + 96) == 1)
  {
    v1 = [*(v0 + 48) provider];
    if (v1)
    {
      v2 = *(v0 + 48);
      v3 = *(v0 + 24);
      v4 = v1;
      v5 = [v1 descriptor];

      v6 = [v5 localizedName];
      v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v9 = v8;

      v10 = [v2 providerDomainID];
      type metadata accessor for FPFeedbackUIManager();
      v11 = swift_allocObject();
      *(v0 + 56) = v11;
      v11[2] = v7;
      v11[3] = v9;
      v11[4] = v10;
      v12 = sub_1CF9E58E8();
      v14 = v13;
      *(v0 + 64) = v13;
      v15 = swift_task_alloc();
      *(v0 + 72) = v15;
      *v15 = v0;
      v15[1] = sub_1CF8D659C;

      return sub_1CF36E168(v12, v14, 0);
    }

    else
    {
      v20 = *(v0 + 40);
      (*(v0 + 32))();
      v21 = *(v0 + 8);

      return v21();
    }
  }

  else
  {
    v17 = swift_task_alloc();
    *(v0 + 80) = v17;
    *v17 = v0;
    v17[1] = sub_1CF8D6738;
    v19 = *(v0 + 16);
    v18 = *(v0 + 24);

    return sub_1CF8D49E8(v18);
  }
}

uint64_t sub_1CF8D659C(char a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 97) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1CF8D66BC, 0, 0);
}

uint64_t sub_1CF8D66BC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  (*(v0 + 32))(*(v0 + 97) == 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1CF8D6738()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1CF8D68B4;
  }

  else
  {
    v3 = sub_1CF8D684C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1CF8D684C()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CF8D68B4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  (*(v0 + 32))(0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t FPDDomainFPFSBackend.launchFeedback(for:itemIdentifier:triggeringError:when:useDiagnostic:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1CF0262EC;

  return (sub_1CF8F5B44)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1CF8D6EA8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, const void *a6, void *a7)
{
  v7[3] = a3;
  v7[4] = a7;
  v7[2] = a1;
  v13 = sub_1CF9E5CF8();
  v7[5] = v13;
  v14 = *(v13 - 8);
  v7[6] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v7[7] = v16;
  v7[8] = _Block_copy(a6);
  v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v18;
  v7[9] = v18;
  sub_1CF9E5CB8();
  v20 = a1;
  v21 = a3;
  v22 = a7;
  v23 = swift_task_alloc();
  v7[10] = v23;
  *v23 = v7;
  v23[1] = sub_1CF8D7044;

  return sub_1CF8F5B44(v20, v17, v19, v21, v16, a5);
}

uint64_t sub_1CF8D7044()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v17 = *(*v0 + 72);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 40);
  v7 = *(*v0 + 32);
  v8 = *(*v0 + 24);
  v9 = *(*v0 + 16);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);

  v11 = *(v1 + 64);
  if (v18)
  {
    v12 = sub_1CF9E57E8();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v1 + 64), 0);
  }

  v14 = v2 + 56;
  v13 = *(v2 + 56);
  _Block_release(*(v14 + 8));

  v15 = *(v10 + 8);

  return v15();
}

void FPDDomainFPFSBackend.getSavedDiagnostics(_:)(void (*a1)(void, id))
{
  v21 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v14 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  v15 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_diagnosticsDirectoryURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v14 + v15, v5, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1CEFCCC44(v5, &unk_1EC4BE310, qword_1CF9FCBE0);
    v16 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
    v21(0, v16);
  }

  else
  {
    v17 = v21;
    (*(v7 + 32))(v13, v5, v6);
    sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
    (*(v7 + 16))(v10, v13, v6);
    v18 = sub_1CF02BFF8(v10, 0);
    v19 = v18;
    v17(v18, 0);

    (*(v7 + 8))(v13, v6);
  }
}

uint64_t FPDDomainFPFSBackend.clearDiagnosticState(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  swift_retain_n();
  v7 = v2;
  sub_1CEFD4024("clearDiagnosticState(_:)", 24, 2, sub_1CF90324C, v5, sub_1CF8F6210, v6);
}

uint64_t sub_1CF8D76D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v16 - v10;
  v12 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_fpDiagnosticsManager);
  if (!v12)
  {
    return a3(0, v9);
  }

  v13 = sub_1CF9E6F08();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  v14[5] = a3;
  v14[6] = a4;

  sub_1CF6FCFEC(0, 0, v11, &unk_1CFA18108, v14);
}

uint64_t sub_1CF8D7818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF8, &unk_1CFA05340);
  sub_1CEFCCCEC(&unk_1EC4BFC00, &qword_1EC4BFBF8, &unk_1CFA05340);
  v8 = sub_1CF9E6EC8();

  return MEMORY[0x1EEE6DFA0](sub_1CF8D78E8, v8, v7);
}

uint64_t sub_1CF8D78E8()
{
  v1 = *(*(v0 + 40) + 40);
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  (*(v3 + 24))(*(v1 + 56), *(v1 + 64), v2, v3);
  *(v0 + 64) = 0;
  v4 = sub_1CF4E3F84(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v5 = *(v1 + 80);
  *(v1 + 80) = v4;

  *(v1 + 72) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1CF8D79E8, 0, 0);
}

uint64_t sub_1CF8D79E8()
{
  v1 = *(v0 + 56);
  (*(v0 + 48))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CF8D7A50()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v1;
  v2(v1);

  v4 = v0[7];
  (v0[6])(0);
  v5 = v0[1];

  return v5();
}

void sub_1CF8D7C30(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v48 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  v4 = *(*(v44 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v44);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC88, &qword_1CFA053D8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE740, &qword_1CFA05940);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - v19;
  sub_1CEFCCBDC(v48, &v43 - v19, &qword_1EC4BE740, &qword_1CFA05940);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1CEFE55D0(v20, v16, &qword_1EC4BFC88, &qword_1CFA053D8);
    sub_1CEFCCBDC(v16, v14, &qword_1EC4BFC88, &qword_1CFA053D8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
      {
        v41 = *(v14 + 3);

        goto LABEL_25;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v34 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E10, &unk_1CFA05920) + 48) + 8];

        v30 = v14;
        goto LABEL_19;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0530, &unk_1CFA05900);
        v28 = *(v27 + 48);
        v29 = *&v14[*(v27 + 80) + 8];

        sub_1CEFCCC44(&v14[v28], &unk_1EC4BE360, &qword_1CF9FE650);
        v30 = v14;
LABEL_19:
        sub_1CEFCCC44(v30, &unk_1EC4BE360, &qword_1CF9FE650);
LABEL_25:
        v42 = *(v45 + 32);
        sub_1CF821E78(v16, v46, v47);
        v38 = &qword_1EC4BFC88;
        v39 = &qword_1CFA053D8;
        v40 = v16;
        goto LABEL_26;
      }
    }

    sub_1CEFCCC44(v16, &qword_1EC4BFC88, &qword_1CFA053D8);
    v32 = *(v14 + 3);

    return;
  }

  sub_1CEFE55D0(v20, v9, &qword_1EC4BFC80, &qword_1CFA053D0);
  sub_1CEFCCBDC(v9, v7, &qword_1EC4BFC80, &qword_1CFA053D0);
  v21 = swift_getEnumCaseMultiPayload();
  if (v21 > 2)
  {
    if (v21 == 3)
    {
      sub_1CEFCCC44(v9, &qword_1EC4BFC80, &qword_1CFA053D0);
      v35 = *(v7 + 2);
      goto LABEL_21;
    }

    if (v21 != 4)
    {
      v36 = *(v7 + 2);

      goto LABEL_23;
    }

LABEL_12:
    sub_1CEFCCC44(v9, &qword_1EC4BFC80, &qword_1CFA053D0);
    v31 = *(v7 + 3);
LABEL_21:

    return;
  }

  if (!v21)
  {
    v33 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05B0, &qword_1CFA05980) + 48) + 8];

    v25 = v7;
    goto LABEL_17;
  }

  if (v21 != 1)
  {
    goto LABEL_12;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E00, &qword_1CFA18000);
  v23 = *(v22 + 48);
  v24 = *&v7[*(v22 + 80) + 8];

  sub_1CEFCCC44(&v7[v23], &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v25 = v7;
LABEL_17:
  sub_1CEFCCC44(v25, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
LABEL_23:
  v37 = *(v45 + 40);
  sub_1CF8228C8(v9, v46, v47);
  v38 = &qword_1EC4BFC80;
  v39 = &qword_1CFA053D0;
  v40 = v9;
LABEL_26:
  sub_1CEFCCC44(v40, v38, v39);
}

void sub_1CF8D80FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v48 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC88, &qword_1CFA053D8);
  v4 = *(*(v44 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v44);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4EA0, &unk_1CFA05930);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - v19;
  sub_1CEFCCBDC(v48, &v43 - v19, &qword_1EC4C4EA0, &unk_1CFA05930);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1CEFE55D0(v20, v16, &qword_1EC4BFC80, &qword_1CFA053D0);
    sub_1CEFCCBDC(v16, v14, &qword_1EC4BFC80, &qword_1CFA053D0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1CEFCCC44(v16, &qword_1EC4BFC80, &qword_1CFA053D0);
        v35 = *(v14 + 2);
        goto LABEL_21;
      }

      if (EnumCaseMultiPayload != 4)
      {
        v41 = *(v14 + 2);

        goto LABEL_25;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v34 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05B0, &qword_1CFA05980) + 48) + 8];

        v30 = v14;
        goto LABEL_19;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E00, &qword_1CFA18000);
        v28 = *(v27 + 48);
        v29 = *&v14[*(v27 + 80) + 8];

        sub_1CEFCCC44(&v14[v28], &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v30 = v14;
LABEL_19:
        sub_1CEFCCC44(v30, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
LABEL_25:
        v42 = *(v45 + 32);
        sub_1CF8228C8(v16, v46, v47);
        v38 = &qword_1EC4BFC80;
        v39 = &qword_1CFA053D0;
        v40 = v16;
        goto LABEL_26;
      }
    }

    sub_1CEFCCC44(v16, &qword_1EC4BFC80, &qword_1CFA053D0);
    v32 = *(v14 + 3);
LABEL_21:

    return;
  }

  sub_1CEFE55D0(v20, v9, &qword_1EC4BFC88, &qword_1CFA053D8);
  sub_1CEFCCBDC(v9, v7, &qword_1EC4BFC88, &qword_1CFA053D8);
  v21 = swift_getEnumCaseMultiPayload();
  if (v21 > 2)
  {
    if (v21 != 3 && v21 != 4)
    {
      v36 = *(v7 + 3);

      goto LABEL_23;
    }

    goto LABEL_12;
  }

  if (!v21)
  {
    v33 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E10, &unk_1CFA05920) + 48) + 8];

    v25 = v7;
    goto LABEL_17;
  }

  if (v21 != 1)
  {
LABEL_12:
    sub_1CEFCCC44(v9, &qword_1EC4BFC88, &qword_1CFA053D8);
    v31 = *(v7 + 3);

    return;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0530, &unk_1CFA05900);
  v23 = *(v22 + 48);
  v24 = *&v7[*(v22 + 80) + 8];

  sub_1CEFCCC44(&v7[v23], &unk_1EC4BE360, &qword_1CF9FE650);
  v25 = v7;
LABEL_17:
  sub_1CEFCCC44(v25, &unk_1EC4BE360, &qword_1CF9FE650);
LABEL_23:
  v37 = *(v45 + 40);
  sub_1CF821E78(v9, v46, v47);
  v38 = &qword_1EC4BFC88;
  v39 = &qword_1CFA053D8;
  v40 = v9;
LABEL_26:
  sub_1CEFCCC44(v40, v38, v39);
}

void sub_1CF8D85C8(__int128 *a1, uint64_t a2)
{
  v4 = a1[1];
  v49 = *a1;
  v50 = v4;
  v5 = a1[5];
  v53 = a1[4];
  v54 = v5;
  v55 = a1[6];
  v56 = *(a1 + 28);
  v6 = a1[3];
  v51 = a1[2];
  v52 = v6;
  v7 = v49;
  v8 = BYTE8(v49);
  v9 = BYTE9(v49);
  v10 = v50;
  v11 = v51;
  v12 = *(a1 + 40);
  *&v42[10] = *(a1 + 98);
  v13 = *(a1 + 88);
  v41 = *(a1 + 72);
  *v42 = v13;
  v14 = *(a1 + 56);
  v39 = v12;
  v40 = v14;
  v15 = BYTE2(v56);
  if (HIBYTE(v56) != 10)
  {
    *&v47 = v49;
    WORD4(v47) = WORD4(v49);
    *(&v47 + 10) = *(a1 + 10);
    HIWORD(v47) = *(a1 + 7);
    *v48 = v50;
    *&v48[16] = v51;
    *&v48[40] = *(a1 + 56);
    *&v48[56] = *(a1 + 72);
    *&v48[72] = *(a1 + 88);
    *&v48[82] = *(a1 + 98);
    *&v48[24] = *(a1 + 40);
    *&v48[98] = HIWORD(v56);
    sub_1CEFCCBDC(&v49, &v45, &qword_1EC4BE6D0, &qword_1CF9FE560);
    v16 = &qword_1EC4BE6D0;
    v17 = &qword_1CF9FE560;
    goto LABEL_5;
  }

  if (BYTE2(v56))
  {
    sub_1CEFCCBDC(&v49, &v47, &qword_1EC4BE6D0, &qword_1CF9FE560);
    sub_1CEFD0994(v7, v8, v9 & 1);
    v47 = v10;
    *v48 = v11;
    *&v48[24] = v40;
    *&v48[40] = v41;
    *&v48[56] = *v42;
    *&v48[66] = *&v42[10];
    *&v48[8] = v39;
    v48[82] = v15;
    v16 = &unk_1EC4BFEE8;
    v17 = &unk_1CFA055B8;
LABEL_5:
    sub_1CEFCCC44(&v47, v16, v17);
    goto LABEL_6;
  }

  if (*(*(v2 + 32) + 32))
  {
    sub_1CEFCCBDC(&v49, &v47, &qword_1EC4BE6D0, &qword_1CF9FE560);
    sub_1CEFD0994(v7, v8, v9 & 1);
  }

  else if ((v50 & a2) != 0)
  {
    v34 = a1[5];
    *&v48[48] = a1[4];
    *&v48[64] = v34;
    *&v48[80] = a1[6];
    *&v48[96] = *(a1 + 28);
    v35 = a1[1];
    v47 = *a1;
    *v48 = v35;
    v36 = a1[3];
    *&v48[16] = a1[2];
    *&v48[32] = v36;
    sub_1CEFCCBDC(&v49, &v45, &qword_1EC4BE6D0, &qword_1CF9FE560);
    sub_1CEFCCC44(&v47, &qword_1EC4BE6D0, &qword_1CF9FE560);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 9) = v9 & 1;
    *(a1 + 2) = v10 & ~a2;
    *(a1 + 3) = *(&v10 + 1);
    *(a1 + 4) = v11;
    *(a1 + 57) = 2560;
  }

  else
  {
    sub_1CEFCCBDC(&v49, &v47, &qword_1EC4BE6D0, &qword_1CF9FE560);
    sub_1CEFD0994(v7, v8, v9 & 1);
  }

LABEL_6:
  v18 = a1[1];
  v47 = *a1;
  *v48 = v18;
  v19 = a1[5];
  v20 = a1[6];
  *&v48[48] = a1[4];
  *&v48[64] = v19;
  v21 = a1[2];
  v22 = a1[3];
  *&v48[80] = v20;
  *&v48[96] = *(a1 + 28);
  *&v48[16] = v21;
  *&v48[32] = v22;
  v23 = v47;
  v24 = BYTE8(v47);
  v25 = BYTE9(v47);
  v26 = *v48;
  v27 = v21;
  *(v44 + 10) = *(a1 + 66);
  v28 = *(a1 + 56);
  v43 = *(a1 + 40);
  v44[0] = v28;
  v29 = v48[66];
  if (HIBYTE(*&v48[96]) == 9)
  {
    if (v48[66])
    {
      sub_1CEFCCBDC(&v47, &v45, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFD0994(v23, v24, v25 & 1);
      v45 = v26;
      *v46 = v27;
      *&v46[8] = v43;
      *&v46[24] = v44[0];
      *&v46[34] = *(v44 + 10);
      v46[50] = v29;
      sub_1CEFCCC44(&v45, &qword_1EC4BFEE0, &qword_1CFA055B0);
    }

    else if ((*(*(v37 + 40) + 32) & 1) != 0 || (*v48 & a2) == 0)
    {
      sub_1CEFCCBDC(&v47, &v45, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFD0994(v23, v24, v25 & 1);
    }

    else
    {
      v31 = a1[5];
      *&v46[48] = a1[4];
      *&v46[64] = v31;
      *&v46[80] = a1[6];
      *&v46[96] = *(a1 + 28);
      v32 = a1[1];
      v45 = *a1;
      *v46 = v32;
      v33 = a1[3];
      *&v46[16] = a1[2];
      *&v46[32] = v33;
      sub_1CEFCCBDC(&v47, &v39, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFCCC44(&v45, &qword_1EC4BE6D0, &qword_1CF9FE560);
      *a1 = v23;
      *(a1 + 8) = v24;
      *(a1 + 9) = v25 & 1;
      *(a1 + 2) = v26 & ~a2;
      *(a1 + 3) = *(&v26 + 1);
      *(a1 + 4) = v27;
      *(a1 + 82) = 0;
      *(a1 + 115) = 9;
    }
  }

  else
  {
    *&v45 = v47;
    WORD4(v45) = WORD4(v47);
    *(&v45 + 10) = *(a1 + 10);
    HIWORD(v45) = *(a1 + 7);
    *v46 = *v48;
    *&v46[16] = v27;
    *&v46[24] = *(a1 + 40);
    *&v46[40] = *(a1 + 56);
    *&v46[50] = *(a1 + 66);
    v46[66] = v48[66];
    v30 = *(a1 + 83);
    *&v46[83] = *(a1 + 99);
    *&v46[67] = v30;
    v46[99] = v48[99];
    sub_1CEFCCBDC(&v47, &v39, &qword_1EC4BE6D0, &qword_1CF9FE560);
    sub_1CEFCCC44(&v45, &qword_1EC4BE6D0, &qword_1CF9FE560);
  }
}

void sub_1CF8D8ACC(__int128 *a1, uint64_t a2)
{
  v4 = a1[1];
  v50 = *a1;
  v51 = v4;
  v5 = a1[5];
  v6 = a1[6];
  v54 = a1[4];
  v55 = v5;
  v7 = a1[2];
  v8 = a1[3];
  v56 = v6;
  v57 = *(a1 + 28);
  v52 = v7;
  v53 = v8;
  v9 = v50;
  v10 = BYTE8(v50);
  v11 = BYTE9(v50);
  v12 = v51;
  v13 = v7;
  *&v41[10] = *(a1 + 66);
  v14 = *(a1 + 56);
  v40 = *(a1 + 40);
  *v41 = v14;
  v15 = BYTE2(v55);
  if (HIBYTE(v57) != 10)
  {
    *&v48 = v50;
    WORD4(v48) = WORD4(v50);
    *(&v48 + 10) = *(a1 + 10);
    HIWORD(v48) = *(a1 + 7);
    *v49 = v51;
    *&v49[16] = v13;
    *&v49[24] = *(a1 + 40);
    *&v49[40] = *(a1 + 56);
    *&v49[50] = *(a1 + 66);
    v49[66] = BYTE2(v55);
    v18 = *(a1 + 83);
    *&v49[83] = *(a1 + 99);
    *&v49[67] = v18;
    v49[99] = HIBYTE(v57);
    sub_1CEFCCBDC(&v50, &v46, &qword_1EC4BE730, &unk_1CFA05490);
    v16 = &qword_1EC4BE730;
    v17 = &unk_1CFA05490;
    goto LABEL_5;
  }

  if (BYTE2(v55))
  {
    sub_1CEFCCBDC(&v50, &v48, &qword_1EC4BE730, &unk_1CFA05490);
    sub_1CF1E53F8(v9, v10, v11 & 1);
    v48 = v12;
    *v49 = v13;
    *&v49[8] = v40;
    *&v49[24] = *v41;
    *&v49[34] = *&v41[10];
    v49[50] = v15;
    v16 = &qword_1EC4BFEE0;
    v17 = &qword_1CFA055B0;
LABEL_5:
    sub_1CEFCCC44(&v48, v16, v17);
    goto LABEL_6;
  }

  if (*(*(v2 + 32) + 32))
  {
    sub_1CEFCCBDC(&v50, &v48, &qword_1EC4BE730, &unk_1CFA05490);
    sub_1CF1E53F8(v9, v10, v11 & 1);
  }

  else if ((v51 & a2) != 0)
  {
    v34 = v51;
    v35 = a1[5];
    *&v49[48] = a1[4];
    *&v49[64] = v35;
    *&v49[80] = a1[6];
    *&v49[96] = *(a1 + 28);
    v36 = a1[1];
    v48 = *a1;
    *v49 = v36;
    v37 = a1[3];
    *&v49[16] = a1[2];
    *&v49[32] = v37;
    sub_1CEFCCBDC(&v50, &v46, &qword_1EC4BE730, &unk_1CFA05490);
    sub_1CEFCCC44(&v48, &qword_1EC4BE730, &unk_1CFA05490);
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 9) = v11 & 1;
    *(a1 + 2) = v34 & ~a2;
    *(a1 + 3) = *(&v12 + 1);
    *(a1 + 4) = v13;
    *(a1 + 82) = 0;
    *(a1 + 115) = 10;
  }

  else
  {
    sub_1CEFCCBDC(&v50, &v48, &qword_1EC4BE730, &unk_1CFA05490);
    sub_1CF1E53F8(v9, v10, v11 & 1);
  }

LABEL_6:
  v19 = a1[1];
  v48 = *a1;
  *v49 = v19;
  v20 = a1[5];
  *&v49[48] = a1[4];
  *&v49[64] = v20;
  *&v49[80] = a1[6];
  *&v49[96] = *(a1 + 28);
  v21 = a1[3];
  *&v49[16] = a1[2];
  *&v49[32] = v21;
  v22 = v48;
  v23 = BYTE8(v48);
  v24 = BYTE9(v48);
  v25 = *v49;
  v26 = *&v49[16];
  v27 = *(a1 + 40);
  *(v45 + 10) = *(a1 + 98);
  v28 = *(a1 + 88);
  v44 = *(a1 + 72);
  v45[0] = v28;
  v29 = *(a1 + 56);
  v42 = v27;
  v43 = v29;
  v30 = v49[98];
  if (v49[99] == 9)
  {
    if (v49[98])
    {
      sub_1CEFCCBDC(&v48, &v46, &qword_1EC4BE730, &unk_1CFA05490);
      sub_1CF1E53F8(v22, v23, v24 & 1);
      v46 = v25;
      *v47 = v26;
      *&v47[24] = v43;
      *&v47[40] = v44;
      *&v47[56] = v45[0];
      *&v47[66] = *(v45 + 10);
      *&v47[8] = v42;
      v47[82] = v30;
      sub_1CEFCCC44(&v46, &qword_1EC4BFEE8, &qword_1CFA055B8);
    }

    else if ((*(*(v38 + 40) + 32) & 1) != 0 || (*v49 & a2) == 0)
    {
      sub_1CEFCCBDC(&v48, &v46, &qword_1EC4BE730, &unk_1CFA05490);
      sub_1CF1E53F8(v22, v23, v24 & 1);
    }

    else
    {
      v31 = a1[5];
      *&v47[48] = a1[4];
      *&v47[64] = v31;
      *&v47[80] = a1[6];
      *&v47[96] = *(a1 + 28);
      v32 = a1[1];
      v46 = *a1;
      *v47 = v32;
      v33 = a1[3];
      *&v47[16] = a1[2];
      *&v47[32] = v33;
      sub_1CEFCCBDC(&v48, &v40, &qword_1EC4BE730, &unk_1CFA05490);
      sub_1CEFCCC44(&v46, &qword_1EC4BE730, &unk_1CFA05490);
      *a1 = v22;
      *(a1 + 8) = v23;
      *(a1 + 9) = v24 & 1;
      *(a1 + 2) = v25 & ~a2;
      *(a1 + 3) = *(&v25 + 1);
      *(a1 + 4) = v26;
      *(a1 + 57) = 2304;
    }
  }

  else
  {
    *&v46 = v48;
    WORD4(v46) = WORD4(v48);
    *(&v46 + 10) = *(a1 + 10);
    HIWORD(v46) = *(a1 + 7);
    *v47 = *v49;
    *&v47[16] = *&v49[16];
    *&v47[40] = *(a1 + 56);
    *&v47[56] = *(a1 + 72);
    *&v47[72] = *(a1 + 88);
    *&v47[82] = *(a1 + 98);
    *&v47[24] = *(a1 + 40);
    v47[98] = v49[98];
    v47[99] = v49[99];
    sub_1CEFCCBDC(&v48, &v40, &qword_1EC4BE730, &unk_1CFA05490);
    sub_1CEFCCC44(&v46, &qword_1EC4BE730, &unk_1CFA05490);
  }
}

void sub_1CF8D8FD4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  v51 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  v4 = *(*(v47 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v47);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC88, &qword_1CFA053D8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE740, &qword_1CFA05940);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  sub_1CEFCCBDC(v51, &v46 - v19, &qword_1EC4BE740, &qword_1CFA05940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFE55D0(v20, v9, &qword_1EC4BFC80, &qword_1CFA053D0);
    sub_1CEFCCBDC(v9, v7, &qword_1EC4BFC80, &qword_1CFA053D0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v22 = 24;
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v22 = 16;
      }

      else if (EnumCaseMultiPayload != 4)
      {
        sub_1CEFCCC44(v9, &qword_1EC4BFC80, &qword_1CFA053D0);
        v35 = *(v7 + 2);

        return;
      }

LABEL_16:
      v40 = *&v7[v22];

      v41 = *(v48 + 40);
      sub_1CF8228C8(v9, v49, v50);
      v32 = &qword_1EC4BFC80;
      v33 = &qword_1CFA053D0;
      v34 = v9;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1CEFCCC44(v9, &qword_1EC4BFC80, &qword_1CFA053D0);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E00, &qword_1CFA18000);
        v24 = *(v23 + 48);
        v25 = *&v7[*(v23 + 80) + 8];

        v26 = &unk_1EC4BFBD0;
        v27 = &unk_1CF9FCBC0;
        sub_1CEFCCC44(&v7[v24], &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v28 = v7;
LABEL_19:
        v37 = v26;
        v38 = v27;
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    sub_1CEFCCC44(v9, &qword_1EC4BFC80, &qword_1CFA053D0);
    v39 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05B0, &qword_1CFA05980) + 48) + 8];

    v37 = &unk_1EC4BFBD0;
    v38 = &unk_1CF9FCBC0;
    v28 = v7;
  }

  else
  {
    sub_1CEFE55D0(v20, v16, &qword_1EC4BFC88, &qword_1CFA053D8);
    sub_1CEFCCBDC(v16, v14, &qword_1EC4BFC88, &qword_1CFA053D8);
    v29 = swift_getEnumCaseMultiPayload();
    if (v29 > 1)
    {
      if ((v29 - 2) >= 3)
      {
        sub_1CEFCCC44(v16, &qword_1EC4BFC88, &qword_1CFA053D8);
        v45 = *(v14 + 3);

        return;
      }

      v30 = *(v14 + 3);

      v31 = *(v48 + 32);
      sub_1CF821E78(v16, v49, v50);
      v32 = &qword_1EC4BFC88;
      v33 = &qword_1CFA053D8;
      v34 = v16;
LABEL_17:
      sub_1CEFCCC44(v34, v32, v33);
      return;
    }

    if (v29)
    {
      sub_1CEFCCC44(v16, &qword_1EC4BFC88, &qword_1CFA053D8);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0530, &unk_1CFA05900);
      v43 = *(v42 + 48);
      v44 = *&v14[*(v42 + 80) + 8];

      v26 = &unk_1EC4BE360;
      v27 = &qword_1CF9FE650;
      sub_1CEFCCC44(&v14[v43], &unk_1EC4BE360, &qword_1CF9FE650);
      v28 = v14;
      goto LABEL_19;
    }

    sub_1CEFCCC44(v16, &qword_1EC4BFC88, &qword_1CFA053D8);
    v36 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E10, &unk_1CFA05920) + 48) + 8];

    v37 = &unk_1EC4BE360;
    v38 = &qword_1CF9FE650;
    v28 = v14;
  }

LABEL_20:
  sub_1CEFCCC44(v28, v37, v38);
}

void sub_1CF8D94B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v52 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC88, &qword_1CFA053D8);
  v4 = *(*(v48 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v48);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4EA0, &unk_1CFA05930);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  sub_1CEFCCBDC(v52, &v47 - v19, &qword_1EC4C4EA0, &unk_1CFA05930);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1CEFE55D0(v20, v16, &qword_1EC4BFC80, &qword_1CFA053D0);
    sub_1CEFCCBDC(v16, v14, &qword_1EC4BFC80, &qword_1CFA053D0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v29 = 24;
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v29 = 16;
      }

      else if (EnumCaseMultiPayload != 4)
      {
        sub_1CEFCCC44(v16, &qword_1EC4BFC80, &qword_1CFA053D0);
        v36 = *(v14 + 2);

        return;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1CEFCCC44(v16, &qword_1EC4BFC80, &qword_1CFA053D0);
        v40 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05B0, &qword_1CFA05980) + 48) + 8];

        v38 = &unk_1EC4BFBD0;
        v39 = &unk_1CF9FCBC0;
        v35 = v14;
        goto LABEL_20;
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_1CEFCCC44(v16, &qword_1EC4BFC80, &qword_1CFA053D0);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E00, &qword_1CFA18000);
        v31 = *(v30 + 48);
        v32 = *&v14[*(v30 + 80) + 8];

        v33 = &unk_1EC4BFBD0;
        v34 = &unk_1CF9FCBC0;
        sub_1CEFCCC44(&v14[v31], &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v35 = v14;
        goto LABEL_19;
      }
    }

    v41 = *&v14[v29];

    v42 = *(v49 + 32);
    sub_1CF8228C8(v16, v50, v51);
    v25 = &qword_1EC4BFC80;
    v26 = &qword_1CFA053D0;
    v27 = v16;
    goto LABEL_17;
  }

  sub_1CEFE55D0(v20, v9, &qword_1EC4BFC88, &qword_1CFA053D8);
  sub_1CEFCCBDC(v9, v7, &qword_1EC4BFC88, &qword_1CFA053D8);
  v21 = swift_getEnumCaseMultiPayload();
  v22 = v7;
  if (v21 <= 1)
  {
    if (!v21)
    {
      sub_1CEFCCC44(v9, &qword_1EC4BFC88, &qword_1CFA053D8);
      v37 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E10, &unk_1CFA05920) + 48) + 8];

      v38 = &unk_1EC4BE360;
      v39 = &qword_1CF9FE650;
      v35 = v7;
LABEL_20:
      sub_1CEFCCC44(v35, v38, v39);
      return;
    }

    sub_1CEFCCC44(v9, &qword_1EC4BFC88, &qword_1CFA053D8);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0530, &unk_1CFA05900);
    v44 = *(v43 + 48);
    v45 = *&v22[*(v43 + 80) + 8];

    v33 = &unk_1EC4BE360;
    v34 = &qword_1CF9FE650;
    sub_1CEFCCC44(&v22[v44], &unk_1EC4BE360, &qword_1CF9FE650);
    v35 = v22;
LABEL_19:
    v38 = v33;
    v39 = v34;
    goto LABEL_20;
  }

  if ((v21 - 2) < 3)
  {
    v23 = *(v7 + 3);

    v24 = *(v49 + 40);
    sub_1CF821E78(v9, v50, v51);
    v25 = &qword_1EC4BFC88;
    v26 = &qword_1CFA053D8;
    v27 = v9;
LABEL_17:
    sub_1CEFCCC44(v27, v25, v26);
    return;
  }

  sub_1CEFCCC44(v9, &qword_1EC4BFC88, &qword_1CFA053D8);
  v46 = *(v7 + 3);
}

id sub_1CF8D9998(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v176 = a2;
  v177 = a3;
  v175 = a1;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v173 = *(v174 - 8);
  v5 = v173[8];
  MEMORY[0x1EEE9AC00](v174);
  v172 = &v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v171 = &v164 - v8;
  v169 = type metadata accessor for VFSItem(0);
  v168 = *(v169 - 8);
  v9 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v166 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v167 = &v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v170 = &v164 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v164 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v164 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v164 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v164 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v164 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v165 = v4;
  v37 = &v164 - v36;
  sub_1CEFCCBDC(v4, &v164 - v36, &unk_1EC4BFCC0, &unk_1CF9FCB50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_1CEFCCBDC(v37, v25, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FA0, &unk_1CFA19770);
        v122 = v121[12];
        v123 = &v25[v121[16]];
        v124 = *(v123 + 1);
        if ((v173[6])(&v25[v122], 1, v174) != 1)
        {
          v125 = *&v25[v121[20]];
          v126 = *v123;
          v127 = v171;
          sub_1CEFE55D0(&v25[v122], v171, &unk_1EC4BE360, &qword_1CF9FE650);
          v128 = v175;
          v129 = [v175 providerDomainID];
          v130 = sub_1CF2CEC2C(v127, v129, v128, 0);

          *&v180 = v126;
          *(&v180 + 1) = v124;
          v178 = 47;
          v179 = 0xE100000000000000;
          v184 = 58;
          v185 = 0xE100000000000000;
          v163 = sub_1CEFE4E68();
          v161[0] = MEMORY[0x1E69E6158];
          v161[1] = v163;
          sub_1CF9E7668();
          v131 = sub_1CF9E6888();

          [v130 setFilename_];

          v132 = objc_allocWithZone(MEMORY[0x1E6967440]);
          v133 = sub_1CF9E6888();
          v50 = [v132 initWithOperationIdentifier:v133 renamedItem:v130 snapshotVersion:v125];

          v51 = v127;
          goto LABEL_28;
        }

        v151 = &qword_1EC4C1B40;
        v152 = &unk_1CF9FCB70;
        v153 = &v25[v122];
LABEL_45:
        v160 = sub_1CEFCCC44(v153, v151, v152);
        MEMORY[0x1EEE9AC00](v160);
        v162 = v165;
        fp_preconditionFailure(_:file:line:)(sub_1CF8FCBCC, v161, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/job/TestingOperation.swift", 110, 2, 199);
      }

      v59 = sub_1CEFCCBDC(v37, v28, &unk_1EC4BFCC0, &unk_1CF9FCB50);
      v61 = *(v28 + 2);
      if (v61)
      {
        v175 = *(v28 + 12);
        v174 = v37;
        if (*(v28 + 5) != 1)
        {
          v62 = *v28;
          v63 = v28[8];
          v64 = *(v28 + 40);
          v180 = *(v28 + 24);
          v181 = v64;
          v65 = *(v28 + 72);
          v182 = *(v28 + 56);
          v183 = v65;
          v66 = v180;
          v67 = *(&v181 + 1);
          v68 = v182;
          v69 = *(&v65 + 1);
          v178 = 0x2F73662F70665F5FLL;
          v179 = 0xE800000000000000;
          v184 = v62;
          LOBYTE(v185) = v63;
          v70 = VFSItemID.description.getter(v59, v60);
          MEMORY[0x1D3868CC0](v70);

          v71 = sub_1CF9E6888();

          v173 = v61;
          v72 = sub_1CF75C4E8(v173, 0);
          sub_1CEFCCBDC(&v180, &v178, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v66, *(&v66 + 1));
          sub_1CEFE42D4(v67, v68);
          v73 = sub_1CF9E5B48();
          v74 = sub_1CF9E5B48();
          if (v69)
          {
            v69 = sub_1CF9E6888();
          }

          v75 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v73 metadataVersion:v74 lastEditorDeviceName:v69];
          sub_1CEFE4714(v67, v68);
          sub_1CEFE4714(v66, *(&v66 + 1));

          sub_1CEFCCC44(&v180, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          v76 = objc_allocWithZone(MEMORY[0x1E6967458]);
          v77 = sub_1CF9E6888();
          v78 = v175;
          v50 = [v76 initWithOperationIdentifier:v77 sourceItemIdentifier:v71 targetItemIdentifier:v72 targetItemBaseVersion:v75 domainVersion:v175];
          sub_1CEFCCC44(&v180, &unk_1EC4BF2D0, &unk_1CF9FEF20);

          goto LABEL_24;
        }
      }

      else
      {
      }

      v154 = *(v28 + 40);
      v180 = *(v28 + 24);
      v181 = v154;
      v155 = *(v28 + 56);
      v156 = *(v28 + 72);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1CEFCCBDC(v37, v34, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
        v40 = v39[12];
        v41 = *&v34[v39[20]];
        if ((v173[6])(&v34[v40], 1, v174) != 1)
        {
          v42 = *&v34[v39[16]];
          v43 = &v34[v40];
          v44 = v171;
          sub_1CEFE55D0(v43, v171, &unk_1EC4BE360, &qword_1CF9FE650);
          v45 = v175;
          v46 = [v175 providerDomainID];
          v47 = sub_1CF2CEC2C(v44, v46, v45, 0);

          v48 = objc_allocWithZone(MEMORY[0x1E6967450]);
          v49 = sub_1CF9E6888();
          v50 = [v48 initWithOperationIdentifier:v49 sourceItem:v47 domainVersion:v41 snapshotVersion:v42];

          v51 = v44;
LABEL_28:
          v134 = &unk_1EC4BE360;
          v135 = &qword_1CF9FE650;
LABEL_33:
          sub_1CEFCCC44(v51, v134, v135);
          goto LABEL_34;
        }

        v151 = &qword_1EC4C1B40;
        v152 = &unk_1CF9FCB70;
        v153 = &v34[v40];
        goto LABEL_45;
      }

      sub_1CEFCCBDC(v37, v31, &unk_1EC4BFCC0, &unk_1CF9FCB50);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
      v88 = v87[12];
      v89 = v87[16];
      v90 = *&v31[v87[24]];
      v91 = *&v31[v87[28]];
      v92 = &v31[v87[20]];
      v93 = *&v31[v87[32]];
      if ((v173[6])(&v31[v88], 1, v174) == 1)
      {

        v157 = *(v92 + 1);
        v180 = *v92;
        v181 = v157;
        v158 = *(v92 + 3);
        v182 = *(v92 + 2);
        v183 = v158;
        sub_1CEFCCC44(&v180, &unk_1EC4BF2D0, &unk_1CF9FEF20);

        v151 = &qword_1EC4C1B40;
        v152 = &unk_1CF9FCB70;
        v153 = &v31[v88];
        goto LABEL_45;
      }

      v94 = *&v31[v89];
      if (v94)
      {
        v170 = v91;
        v171 = v90;
        v173 = v93;
        v174 = v37;
        if (*(v92 + 2) != 1)
        {
          v95 = v172;
          sub_1CEFE55D0(&v31[v88], v172, &unk_1EC4BE360, &qword_1CF9FE650);
          v96 = *(v92 + 1);
          v180 = *v92;
          v181 = v96;
          v97 = *(v92 + 3);
          v182 = *(v92 + 2);
          v183 = v97;
          v98 = v180;
          v99 = *(&v181 + 1);
          v100 = v182;
          v101 = *(&v97 + 1);
          v102 = v175;
          v103 = [v175 providerDomainID];
          v175 = sub_1CF2CEC2C(v95, v103, v102, 0);

          v104 = v94;
          v105 = sub_1CF75C4E8(v104, 0);
          sub_1CEFCCBDC(&v180, &v178, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v98, *(&v98 + 1));
          sub_1CEFE42D4(v99, v100);
          v106 = sub_1CF9E5B48();
          v107 = sub_1CF9E5B48();
          if (v101)
          {
            v101 = sub_1CF9E6888();
          }

          v108 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v106 metadataVersion:v107 lastEditorDeviceName:v101];
          sub_1CEFE4714(v99, v100);
          sub_1CEFE4714(v98, *(&v98 + 1));

          sub_1CEFCCC44(&v180, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          v109 = v171;
          v178 = v171;
          v110 = _sSo24NSFileProviderItemFieldsV04FileB6DaemonEyAbC0D0VcfC_0(&v178);
          v111 = objc_allocWithZone(MEMORY[0x1E6967470]);
          v112 = sub_1CF9E6888();
          v162 = v109;
          v113 = v111;
          v114 = v175;
          v115 = v173;
          v50 = [v113 initWithOperationIdentifier:v112 sourceItem:v175 targetItemIdentifier:v105 targetItemBaseVersion:v108 changedFields:v110 domainVersion:v173 rawFields:v162 snapshotVersion:v170];

          sub_1CEFCCC44(&v180, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFCCC44(v172, &unk_1EC4BE360, &qword_1CF9FE650);
LABEL_24:
          v37 = v174;
          goto LABEL_34;
        }
      }

      else
      {
      }

      sub_1CEFCCC44(&v31[v88], &unk_1EC4BE360, &qword_1CF9FE650);
      v159 = *(v92 + 1);
      v180 = *v92;
      v181 = v159;
      v155 = *(v92 + 2);
      v156 = *(v92 + 3);
    }

    v182 = v155;
    v183 = v156;
    v151 = &unk_1EC4BF2D0;
    v152 = &unk_1CF9FEF20;
    v153 = &v180;
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      sub_1CEFCCBDC(v37, v19, &unk_1EC4BFCC0, &unk_1CF9FCB50);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFEC0, &unk_1CFA05590);
      v80 = *v19;
      v81 = v19[8];
      v82 = v170;
      sub_1CEFE55D0(&v19[*(v79 + 48)], v170, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v83 = v167;
      sub_1CEFCCBDC(v82, v167, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v84 = (*(v168 + 48))(v83, 1, v169);
      if (v84 == 1)
      {
        v86 = 0;
      }

      else
      {
        v143 = v166;
        sub_1CEFDA0C4(v83, v166, type metadata accessor for VFSItem);
        v144 = v175;
        v145 = [v175 providerDomainID];
        v86 = sub_1CF2CDBA4(v143, v145, v144, 1);

        v84 = sub_1CEFD5338(v143, type metadata accessor for VFSItem);
      }

      *&v180 = 0x2F73662F70665F5FLL;
      *(&v180 + 1) = 0xE800000000000000;
      v178 = v80;
      LOBYTE(v179) = v81;
      v146 = VFSItemID.description.getter(v84, v85);
      MEMORY[0x1D3868CC0](v146);

      v147 = sub_1CF9E6888();

      v148 = objc_allocWithZone(MEMORY[0x1E6967460]);
      v149 = sub_1CF9E6888();
      v50 = [v148 initWithOperationIdentifier:v149 itemIdentifier:v147 item:v86];

      v134 = &unk_1EC4BEC00;
      v135 = &unk_1CF9FCB60;
      v51 = v82;
      goto LABEL_33;
    }

    v136 = sub_1CEFCCBDC(v37, v22, &unk_1EC4BFCC0, &unk_1CF9FCB50);
    v137 = *v22;
    v138 = v22[8];
    *&v180 = 0x2F73662F70665F5FLL;
    *(&v180 + 1) = 0xE800000000000000;
    v178 = v137;
    LOBYTE(v179) = v138;
    v140 = VFSItemID.description.getter(v136, v139);
    MEMORY[0x1D3868CC0](v140);

    v57 = sub_1CF9E6888();

    v58 = MEMORY[0x1E6967468];
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v52 = sub_1CEFCCBDC(v37, v22, &unk_1EC4BFCC0, &unk_1CF9FCB50);
    v53 = *v22;
    v54 = v22[8];
    *&v180 = 0x2F73662F70665F5FLL;
    *(&v180 + 1) = 0xE800000000000000;
    v178 = v53;
    LOBYTE(v179) = v54;
    v56 = VFSItemID.description.getter(v52, v55);
    MEMORY[0x1D3868CC0](v56);

    v57 = sub_1CF9E6888();

    v58 = MEMORY[0x1E6967448];
  }

  else
  {
    v116 = sub_1CEFCCBDC(v37, v22, &unk_1EC4BFCC0, &unk_1CF9FCB50);
    v117 = *v22;
    v118 = v22[8];
    *&v180 = 0x2F73662F70665F5FLL;
    *(&v180 + 1) = 0xE800000000000000;
    v178 = v117;
    LOBYTE(v179) = v118;
    v120 = VFSItemID.description.getter(v116, v119);
    MEMORY[0x1D3868CC0](v120);

    v57 = sub_1CF9E6888();

    v58 = MEMORY[0x1E6967438];
  }

  v141 = objc_allocWithZone(v58);
  v142 = sub_1CF9E6888();
  v50 = [v141 initWithOperationIdentifier:v142 itemIdentifier:v57];

LABEL_34:
  sub_1CEFCCC44(v37, &unk_1EC4BFCC0, &unk_1CF9FCB50);
  return v50;
}

id sub_1CF8DAA38(void *a1, uint64_t a2, uint64_t a3)
{
  v140 = a2;
  v141 = a3;
  v139 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v136 = *(v4 - 1);
  v137 = v4;
  v5 = v136[8];
  MEMORY[0x1EEE9AC00](v4);
  v138 = &v132 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v132 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v135 = (&v132 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v132 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v132 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v132 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v134 = v3;
  v27 = &v132 - v26;
  sub_1CEFCCBDC(v3, &v132 - v26, &unk_1EC4BFD70, &qword_1CFA12AC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v59 = v27;
        sub_1CEFCCBDC(v27, v10, &unk_1EC4BFD70, &qword_1CFA12AC0);
        v60 = *v10;
        v61 = v10[1];
        if (v61)
        {
          v62 = v61;
          v63 = v139;
          v64 = [v139 providerDomainID];
          v65 = sub_1CF2CDE20(v62, v64, v63, 1);
        }

        else
        {
          v65 = 0;
        }

        v110 = v60;
        v111 = sub_1CF75C4E8(v110, 0);
        v112 = objc_allocWithZone(MEMORY[0x1E6967460]);
        v113 = sub_1CF9E6888();
        v39 = [v112 initWithOperationIdentifier:v113 itemIdentifier:v111 item:v65];

        v27 = v59;
        goto LABEL_28;
      }

      sub_1CEFCCBDC(v27, v13, &unk_1EC4BFD70, &qword_1CFA12AC0);
      v41 = *v13;
      v42 = sub_1CF75C4E8(v41, 0);
      v43 = MEMORY[0x1E6967468];
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1CEFCCBDC(v27, v13, &unk_1EC4BFD70, &qword_1CFA12AC0);
      v41 = *v13;
      v42 = sub_1CF75C4E8(v41, 0);
      v43 = MEMORY[0x1E6967448];
    }

    else
    {
      sub_1CEFCCBDC(v27, v13, &unk_1EC4BFD70, &qword_1CFA12AC0);
      v41 = *v13;
      v42 = sub_1CF75C4E8(v41, 0);
      v43 = MEMORY[0x1E6967438];
    }

    v108 = objc_allocWithZone(v43);
    v109 = sub_1CF9E6888();
    v39 = [v108 initWithOperationIdentifier:v109 itemIdentifier:v42];

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v133 = v27;
    if (EnumCaseMultiPayload)
    {
      sub_1CEFCCBDC(v27, v21, &unk_1EC4BFD70, &qword_1CFA12AC0);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
      v67 = v66[12];
      v68 = *(v21 + v66[24]);
      v69 = *(v21 + v66[28]);
      v70 = (v21 + v66[20]);
      v71 = *(v21 + v66[32]);
      if ((v136[6])(v21 + v67, 1, v137) == 1)
      {

        v119 = v70[3];
        v154 = v70[2];
        v155 = v119;
        v120 = v70[5];
        v156 = v70[4];
        v157 = v120;
        v121 = v70[1];
        v152 = *v70;
        v153 = v121;
        sub_1CEFCCC44(&v152, &unk_1EC4BECD0, &unk_1CF9FEF80);
        v122 = &unk_1EC4BFBB0;
        v123 = &qword_1CF9FCB90;
        v124 = (v21 + v67);
      }

      else
      {
        v72 = v21 + v66[16];
        if (v72[8] == 255)
        {
          sub_1CEFCCC44(v21 + v67, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        }

        else
        {
          v135 = v69;
          v137 = v71;
          if (*(v70 + 8))
          {
            v73 = v138;
            sub_1CEFE55D0(v21 + v67, v138, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            v74 = *v72;
            v136 = v21;
            v75 = v72[8];
            v76 = v70[3];
            v148 = v70[2];
            v149 = v76;
            v77 = v70[5];
            v150 = v70[4];
            v151 = v77;
            v78 = v70[1];
            v146 = *v70;
            v147 = v78;
            v152 = v146;
            v153 = v78;
            v156 = v150;
            v157 = v77;
            v154 = v148;
            v155 = v76;
            v79 = v139;
            v80 = [v139 providerDomainID];
            v81 = sub_1CF2CEC14(v73, v80, v79, 0);

            v142 = 0x2F73662F70665F5FLL;
            v143 = 0xE800000000000000;
            v144 = v74;
            v145 = v75;
            v84 = VFSItemID.description.getter(v82, v83);
            MEMORY[0x1D3868CC0](v84);

            v85 = sub_1CF9E6888();

            sub_1CEFCCBDC(&v146, &v142, &unk_1EC4BECD0, &unk_1CF9FEF80);
            v86 = sub_1CF8E4F20(&v152);
            sub_1CEFCCC44(&v146, &unk_1EC4BECD0, &unk_1CF9FEF80);
            v142 = v68;
            v87 = _sSo24NSFileProviderItemFieldsV04FileB6DaemonEyAbC0D0VcfC_0(&v142);
            v88 = objc_allocWithZone(MEMORY[0x1E6967470]);
            v89 = sub_1CF9E6888();
            v90 = v68;
            v91 = v89;
            v92 = v88;
            v93 = v137;
            v39 = [v92 initWithOperationIdentifier:v91 sourceItem:v81 targetItemIdentifier:v85 targetItemBaseVersion:v86 changedFields:v87 domainVersion:v137 rawFields:v90 snapshotVersion:v135];

            sub_1CEFCCC44(&v146, &unk_1EC4BECD0, &unk_1CF9FEF80);
            sub_1CEFCCC44(v73, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            v40 = *v136;
            goto LABEL_20;
          }

          sub_1CEFCCC44(v21 + v67, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        }

        v125 = v70[3];
        v154 = v70[2];
        v155 = v125;
        v126 = v70[5];
        v156 = v70[4];
        v157 = v126;
        v127 = v70[1];
        v152 = *v70;
        v153 = v127;
        v122 = &unk_1EC4BECD0;
        v123 = &unk_1CF9FEF80;
        v124 = &v152;
      }

      sub_1CEFCCC44(v124, v122, v123);
      v118 = *v21;
    }

    else
    {
      sub_1CEFCCBDC(v27, v24, &unk_1EC4BFD70, &qword_1CFA12AC0);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
      v30 = v29[12];
      v31 = *(v24 + v29[20]);
      if ((v136[6])(v24 + v30, 1, v137) != 1)
      {
        v32 = *(v24 + v29[16]);
        v33 = v138;
        sub_1CEFE55D0(v24 + v30, v138, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v34 = v139;
        v35 = [v139 providerDomainID];
        v36 = sub_1CF2CEC14(v33, v35, v34, 0);

        v37 = objc_allocWithZone(MEMORY[0x1E6967450]);
        v38 = sub_1CF9E6888();
        v39 = [v37 initWithOperationIdentifier:v38 sourceItem:v36 domainVersion:v31 snapshotVersion:v32];

        sub_1CEFCCC44(v33, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v40 = *v24;
LABEL_20:

        v27 = v133;
        goto LABEL_28;
      }

      sub_1CEFCCC44(v24 + v30, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v118 = *v24;
    }

LABEL_37:

    MEMORY[0x1EEE9AC00](v128);
    v130 = v134;
    fp_preconditionFailure(_:file:line:)(sub_1CF8FCBFC, v129, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/job/TestingOperation.swift", 110, 2, 199);
  }

  if (EnumCaseMultiPayload != 2)
  {
    v94 = v135;
    sub_1CEFCCBDC(v27, v135, &unk_1EC4BFD70, &qword_1CFA12AC0);
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1D0, &unk_1CFA18150);
    v96 = v95[12];
    v97 = (v94 + v95[16]);
    v98 = v97[1];
    if ((v136[6])(v94 + v96, 1, v137) != 1)
    {
      v99 = *(v94 + v95[20]);
      v100 = *v97;
      v101 = v138;
      sub_1CEFE55D0(v94 + v96, v138, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v102 = v139;
      v103 = [v139 providerDomainID];
      v104 = sub_1CF2CEC14(v101, v103, v102, 0);

      *&v152 = v100;
      *(&v152 + 1) = v98;
      *&v146 = 47;
      *(&v146 + 1) = 0xE100000000000000;
      v142 = 58;
      v143 = 0xE100000000000000;
      v130 = sub_1CEFE4E68();
      v131 = v130;
      v129[0] = MEMORY[0x1E69E6158];
      v129[1] = v130;
      sub_1CF9E7668();
      v105 = sub_1CF9E6888();

      [v104 setFilename_];

      v106 = objc_allocWithZone(MEMORY[0x1E6967440]);
      v107 = sub_1CF9E6888();
      v39 = [v106 initWithOperationIdentifier:v107 renamedItem:v104 snapshotVersion:v99];

      sub_1CEFCCC44(v101, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      goto LABEL_28;
    }

    sub_1CEFCCC44(v94 + v96, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v118 = *v94;
    goto LABEL_37;
  }

  sub_1CEFCCBDC(v27, v18, &unk_1EC4BFD70, &qword_1CFA12AC0);
  v44 = *(v18 + 16);
  v45 = v18[16];
  if (v45 == 255 || (v133 = v27, !*(v18 + 11)))
  {

    v115 = *(v18 + 72);
    v154 = *(v18 + 56);
    v155 = v115;
    v116 = *(v18 + 104);
    v156 = *(v18 + 88);
    v157 = v116;
    v117 = *(v18 + 40);
    v152 = *(v18 + 24);
    v153 = v117;
    sub_1CEFCCC44(&v152, &unk_1EC4BECD0, &unk_1CF9FEF80);
    v118 = *v18;
    goto LABEL_37;
  }

  v46 = *v18;
  v47 = *(v18 + 1);
  v48 = *(v18 + 72);
  v148 = *(v18 + 56);
  v149 = v48;
  v49 = *(v18 + 104);
  v150 = *(v18 + 88);
  v151 = v49;
  v50 = *(v18 + 40);
  v146 = *(v18 + 24);
  v147 = v50;
  v152 = v146;
  v153 = v50;
  v156 = v150;
  v157 = v49;
  v154 = v148;
  v155 = v48;
  v51 = v46;
  v52 = sub_1CF75C4E8(v51, 0);
  v142 = 0x2F73662F70665F5FLL;
  v143 = 0xE800000000000000;
  v144 = v47;
  v145 = v45;
  v54 = VFSItemID.description.getter(v52, v53);
  MEMORY[0x1D3868CC0](v54);

  v55 = sub_1CF9E6888();

  sub_1CEFCCBDC(&v146, &v142, &unk_1EC4BECD0, &unk_1CF9FEF80);
  v56 = sub_1CF8E4F20(&v152);
  sub_1CEFCCC44(&v146, &unk_1EC4BECD0, &unk_1CF9FEF80);
  v57 = objc_allocWithZone(MEMORY[0x1E6967458]);
  v58 = sub_1CF9E6888();
  v39 = [v57 initWithOperationIdentifier:v58 sourceItemIdentifier:v52 targetItemIdentifier:v55 targetItemBaseVersion:v56 domainVersion:v44];
  sub_1CEFCCC44(&v146, &unk_1EC4BECD0, &unk_1CF9FEF80);

  v27 = v133;
LABEL_28:
  sub_1CEFCCC44(v27, &unk_1EC4BFD70, &qword_1CFA12AC0);
  return v39;
}

unint64_t sub_1CF8DB6F4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1CF9E7948();

  v4 = a2(v3);
  MEMORY[0x1D3868CC0](v4);

  return 0xD000000000000024;
}

unint64_t sub_1CF8DB784()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - v7;
  sub_1CEFCCBDC(v0, &v37 - v7, &qword_1EC4BFC80, &qword_1CFA053D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v25 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05B0, &qword_1CFA05980) + 48)];
      v26 = *v25;
      v27 = *(v25 + 1);
      sub_1CEFE55D0(v8, v4, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v37 = 0x747265736E69;
      v38 = 0xE600000000000000;
      v28 = sub_1CF814244();
      MEMORY[0x1D3868CC0](v28);

      MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
      MEMORY[0x1D3868CC0](v26, v27);

      v29 = v37;
      sub_1CEFCCC44(v4, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      return v29;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E00, &qword_1CFA18000);
      v11 = *&v8[v10[16]];
      v12 = &v8[v10[20]];
      v14 = *v12;
      v13 = *(v12 + 1);
      sub_1CEFE55D0(&v8[v10[12]], v4, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_1CF9E7948();

      v37 = 0x657461647075;
      v38 = 0xE600000000000000;
      v15 = sub_1CF814244();
      MEMORY[0x1D3868CC0](v15);

      MEMORY[0x1D3868CC0](0x3A736666696420, 0xE700000000000000);
      v16 = sub_1CF071470(v11);
      MEMORY[0x1D3868CC0](v16);

      MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
      MEMORY[0x1D3868CC0](v14, v13);

      v17 = v37;
      sub_1CEFCCC44(v4, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      sub_1CEFCCC44(v8, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      return v17;
    }

    v32 = v8[8];
    v21 = *(v8 + 2);
    v20 = *(v8 + 3);
    v22 = *v8;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();

    v37 = 0x693C6574656C6564;
    v38 = 0xEA00000000003A64;
    v33 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v33);

    v24 = (v32 & 1) == 0;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v21 = *(v8 + 1);
    v20 = *(v8 + 2);
    v22 = *v8;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();

    v30 = 0x614C6574656C6564;
    v31 = 0xEE003A64693C797ALL;
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      v19 = v8[8];
      v21 = *(v8 + 2);
      v20 = *(v8 + 3);
      v22 = *v8;
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_1CF9E7948();

      v37 = 0xD000000000000013;
      v38 = 0x80000001CFA5D2E0;
      v23 = NSFileProviderItemIdentifier.description.getter();
      MEMORY[0x1D3868CC0](v23);

      v24 = v19 == 0;
LABEL_11:
      if (v24)
      {
        v34 = 0;
      }

      else
      {
        v34 = 0x6973727563657220;
      }

      if (v24)
      {
        v35 = 0xE000000000000000;
      }

      else
      {
        v35 = 0xEA00000000006576;
      }

      v36 = v35;
      goto LABEL_20;
    }

    v21 = *(v8 + 1);
    v20 = *(v8 + 2);
    v22 = *v8;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();

    v30 = 0x3A64693C656E6F6ELL;
    v31 = 0xE800000000000000;
  }

  v37 = v30;
  v38 = v31;
  v34 = NSFileProviderItemIdentifier.description.getter();
LABEL_20:
  MEMORY[0x1D3868CC0](v34, v36);

  MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
  MEMORY[0x1D3868CC0](v21, v20);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);

  return v37;
}

unint64_t sub_1CF8DBC58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v48 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC88, &qword_1CFA053D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - v7;
  sub_1CEFCCBDC(v0, &v48 - v7, &qword_1EC4BFC88, &qword_1CFA053D8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v28 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E10, &unk_1CFA05920) + 48)];
      v29 = *v28;
      v30 = *(v28 + 1);
      sub_1CEFE55D0(v8, v4, &unk_1EC4BE360, &qword_1CF9FE650);
      v50 = 0x747265736E69;
      v51 = 0xE600000000000000;
      v31 = sub_1CF814758();
      MEMORY[0x1D3868CC0](v31);

      MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
      MEMORY[0x1D3868CC0](v29, v30);

      v32 = v50;
      sub_1CEFCCC44(v4, &unk_1EC4BE360, &qword_1CF9FE650);
      return v32;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0530, &unk_1CFA05900);
      v11 = *&v8[v10[16]];
      v12 = &v8[v10[20]];
      v14 = *v12;
      v13 = *(v12 + 1);
      sub_1CEFE55D0(&v8[v10[12]], v4, &unk_1EC4BE360, &qword_1CF9FE650);
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_1CF9E7948();

      v50 = 0x657461647075;
      v51 = 0xE600000000000000;
      v15 = sub_1CF814758();
      MEMORY[0x1D3868CC0](v15);

      MEMORY[0x1D3868CC0](0x3A736666696420, 0xE700000000000000);
      v16 = sub_1CF071470(v11);
      MEMORY[0x1D3868CC0](v16);

      MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
      MEMORY[0x1D3868CC0](v14, v13);

      v17 = v50;
      sub_1CEFCCC44(v4, &unk_1EC4BE360, &qword_1CF9FE650);
      sub_1CEFCCC44(v8, &unk_1EC4BE360, &qword_1CF9FE650);
      return v17;
    }

    v39 = v8[9];
    v21 = *(v8 + 2);
    v20 = *(v8 + 3);
    v40 = *v8;
    v41 = v8[8];
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1CF9E7948();

    v50 = 0x693C6574656C6564;
    v51 = 0xEA00000000003A64;
    v48 = v40;
    v49 = v41;
    v44 = VFSItemID.description.getter(v42, v43);
    MEMORY[0x1D3868CC0](v44);

    v27 = (v39 & 1) == 0;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v21 = *(v8 + 2);
    v20 = *(v8 + 3);
    v33 = *v8;
    v34 = v8[8];
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1CF9E7948();

    v37 = 0x614C6574656C6564;
    v38 = 0xEE003A64693C797ALL;
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      v19 = v8[9];
      v21 = *(v8 + 2);
      v20 = *(v8 + 3);
      v22 = *v8;
      v23 = v8[8];
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_1CF9E7948();

      v50 = 0xD000000000000013;
      v51 = 0x80000001CFA5D2E0;
      v48 = v22;
      v49 = v23;
      v26 = VFSItemID.description.getter(v24, v25);
      MEMORY[0x1D3868CC0](v26);

      v27 = v19 == 0;
LABEL_11:
      if (v27)
      {
        v45 = 0;
      }

      else
      {
        v45 = 0x6973727563657220;
      }

      if (v27)
      {
        v46 = 0xE000000000000000;
      }

      else
      {
        v46 = 0xEA00000000006576;
      }

      v47 = v46;
      goto LABEL_20;
    }

    v21 = *(v8 + 2);
    v20 = *(v8 + 3);
    v33 = *v8;
    v34 = v8[8];
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1CF9E7948();

    v37 = 0x3A64693C656E6F6ELL;
    v38 = 0xE800000000000000;
  }

  v50 = v37;
  v51 = v38;
  v48 = v33;
  v49 = v34;
  v45 = VFSItemID.description.getter(v35, v36);
LABEL_20:
  MEMORY[0x1D3868CC0](v45, v47);

  MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
  MEMORY[0x1D3868CC0](v21, v20);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return v50;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1CF8DC15C(uint64_t a1, int a2)
{
  LODWORD(v22) = a2;
  sub_1CEFE55D0(&v21, &v17, &qword_1EC4C4EE8, &qword_1CFA180F8);
  v2 = v21;
  v3 = v22;
  v4 = BYTE1(v22);
  v5 = v20;
  v6 = v17;
  v7 = v18;
  if (v19)
  {
    v21 = 14959;
    v22 = 0xE200000000000000;
    v8 = sub_1CF48034C(v2, v3, v4);
    v10 = VFSItemID.description.getter(v8, v9);
    MEMORY[0x1D3868CC0](v10);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v11 = sub_1CF19FA9C(v5);
    v13 = (*(v11 + 176))(v11, v12);
    MEMORY[0x1D3868CC0](v13);
  }

  else
  {
    v21 = 14953;
    v22 = 0xE200000000000000;
    sub_1CF48034C(v2, v3, v4);
    v14 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v14);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v15 = sub_1CF19FA9C(v5);
    v16 = (*(v15 + 176))();
    MEMORY[0x1D3868CC0](v16);

    sub_1CF1E53F8(v6, v7, 0);
  }
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1CF8DC2D4(uint64_t a1, int a2)
{
  LODWORD(v22) = a2;
  sub_1CEFE55D0(&v21, &v17, &unk_1EC4C4D50, &qword_1CFA17F60);
  v2 = v21;
  v3 = v22;
  v4 = BYTE1(v22);
  v5 = v20;
  v6 = v17;
  v7 = v18;
  if (v19)
  {
    v21 = 14959;
    v22 = 0xE200000000000000;
    sub_1CEFD0988(v2, v3, v4);
    v8 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v8);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v9 = sub_1CF19FA9C(v5);
    v10 = (*(v9 + 176))();
    MEMORY[0x1D3868CC0](v10);

    sub_1CEFD0994(v6, v7, 1);
  }

  else
  {
    v21 = 14953;
    v22 = 0xE200000000000000;
    v11 = sub_1CEFD0988(v2, v3, v4);
    v13 = VFSItemID.description.getter(v11, v12);
    MEMORY[0x1D3868CC0](v13);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v14 = sub_1CF19FA9C(v5);
    v16 = (*(v14 + 176))(v14, v15);
    MEMORY[0x1D3868CC0](v16);
  }
}

uint64_t sub_1CF8DC44C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CF343AC4();
  *a2 = result;
  return result;
}

uint64_t sub_1CF8DC478(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1CF343AD8();
}

uint64_t sub_1CF8DC4A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  *a2 = v5;
  return result;
}

uint64_t sub_1CF8DC520(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_1CF9E62A8();
}

unint64_t sub_1CF8DC590(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1CF8DC5B0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CF8DC5D4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1CF0264D8;

  return v7();
}

uint64_t sub_1CF8DC6BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1CF0264D8;

  return v8();
}

uint64_t sub_1CF8DC7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1CEFCCBDC(a3, v25 - v11, &qword_1EC4BFBA8, &qword_1CFA12B20);
  v13 = sub_1CF9E6F08();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1CEFCCC44(v12, &qword_1EC4BFBA8, &qword_1CFA12B20);
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

  sub_1CF9E6EF8();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1CF9E6EC8();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1CF9E6978() + 32;
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

    sub_1CEFCCC44(a3, &qword_1EC4BFBA8, &qword_1CFA12B20);

    return v23;
  }

LABEL_8:
  sub_1CEFCCC44(a3, &qword_1EC4BFBA8, &qword_1CFA12B20);
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

uint64_t sub_1CF8DCAE8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  if (swift_isClassType() && v6)
  {
    v7 = &unk_1EC4BEC20;
    v8 = &qword_1CF9FE480;
  }

  else
  {
    v7 = a3;
    v8 = a4;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
}

void sub_1CF8DCB7C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_1CF8DCBB4(uint64_t *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v10 = *a1;

      sub_1CEFE4714(v5, v4);
      *&v23 = v5;
      *(&v23 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1CF9FA380;
      sub_1CEFE4714(0, 0xC000000000000000);
      sub_1CF9E5A68();
      v11 = *(&v23 + 1);
      result = sub_1CF8DCF70(*(v23 + 16), *(v23 + 24));
      *a1 = v23;
      a1[1] = v11 | 0x8000000000000000;
    }

    else
    {
      *(&v23 + 7) = 0;
      *&v23 = 0;
      MEMORY[0x1EEE9AC00](a1);
      result = sub_1CF5162A0(sub_1CF9033AC);
    }

    goto LABEL_16;
  }

  if (!v6)
  {
    v21 = a2;
    v20[1] = HIWORD(v5);
    v20[2] = HIBYTE(v5);
    v20[3] = v4 >> 8;
    v20[4] = v4 >> 16;
    v20[7] = HIDWORD(v4);
    v20[8] = v2;
    v20[5] = v4 >> 24;
    v20[6] = v4 >> 40;
    v7 = sub_1CEFE4714(v5, v4);
    v22 = v20;
    *&v23 = v5;
    WORD4(v23) = v4;
    BYTE10(v23) = BYTE2(v4);
    BYTE11(v23) = BYTE3(v4);
    BYTE12(v23) = BYTE4(v4);
    BYTE13(v23) = BYTE5(v4);
    BYTE14(v23) = BYTE6(v4);
    MEMORY[0x1EEE9AC00](v7);
    result = sub_1CF5162A0(sub_1CF8FD9C0);
    v9 = DWORD2(v23) | ((WORD6(v23) | (BYTE14(v23) << 16)) << 32);
    *a1 = v23;
    a1[1] = v9;
    goto LABEL_16;
  }

  v12 = v4 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1CEFE4714(v5, v4);
  *a1 = xmmword_1CF9FA380;
  sub_1CEFE4714(0, 0xC000000000000000);
  v13 = v5 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = (v13 - v5);
    if (v13 < v5)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (sub_1CF9E5498() && __OFSUB__(v5, sub_1CF9E54C8()))
    {
LABEL_19:
      __break(1u);
    }

    v14 = sub_1CF9E54F8();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = sub_1CF9E5478();

    v12 = v17;
  }

  if (v13 < v5)
  {
    __break(1u);
    goto LABEL_18;
  }

  v18 = sub_1CF8DCF70(v5, v5 >> 32);

  *a1 = v5;
  a1[1] = v12 | 0x4000000000000000;
  if (!v2)
  {
    result = v18;
  }

LABEL_16:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF8DCF70(uint64_t a1, uint64_t a2)
{
  result = sub_1CF9E5498();
  if (result)
  {
    result = sub_1CF9E54C8();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
    }

    else if (!__OFSUB__(a2, a1))
    {
      v5 = sub_1CF9E54B8();
      MEMORY[0x1EEE9AC00](v5);
      return sub_1CF5162A0(sub_1CF9033AC);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF8DD07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1CF9E81D8();
  MEMORY[0x1D386A4A0](a1);
  sub_1CF9E69C8();
  v10 = sub_1CF9E8228();
  v11 = v8 + 56;
  v12 = -1 << *(v8 + 32);
  v13 = v10 & ~v12;
  if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  v15 = *(v8 + 48);
  while (1)
  {
    v16 = (v15 + 24 * v13);
    if (*v16 == a1)
    {
      v17 = v16[1] == a2 && v16[2] == a3;
      if (v17 || (sub_1CF9E8048() & 1) != 0)
      {
        break;
      }
    }

    v13 = (v13 + 1) & v14;
    if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v4;
  v26 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CF6EF0F4();
    v20 = v26;
  }

  v21 = (*(v20 + 48) + 24 * v13);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  sub_1CF8DE328(v13);
  result = v22;
  *v4 = v26;
  return result;
}

uint64_t sub_1CF8DD230(void *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *v5;

    v13 = a1;
    v14 = sub_1CF9E7848();

    if (v14)
    {
      v15 = sub_1CF8DDF8C(v11, v13, a5, a2, a3);

      return v15;
    }

    return 0;
  }

  v18 = v5;
  sub_1CEFD57E0(0, a2, a3);
  v19 = *(v7 + 40);
  v20 = sub_1CF9E7558();
  v21 = -1 << *(v7 + 32);
  v22 = v20 & ~v21;
  if (((*(v7 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
    return 0;
  }

  v23 = ~v21;
  while (1)
  {
    v24 = *(*(v7 + 48) + 8 * v22);
    v25 = sub_1CF9E7568();

    if (v25)
    {
      break;
    }

    v22 = (v22 + 1) & v23;
    if (((*(v7 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      return 0;
    }
  }

  v26 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v18;
  v30 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v28 = v30;
  }

  v29 = *(*(v28 + 48) + 8 * v22);
  sub_1CF02B564(v22);
  result = v29;
  *v18 = v30;
  return result;
}

unint64_t sub_1CF8DD3D8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1CF9E81D8();
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](a1);
    }

    else
    {
      if (a1)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      MEMORY[0x1D386A470](v9);
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    sub_1CF9E8208();
  }

  result = sub_1CF9E8228();
  v11 = -1 << *(v7 + 32);
  v12 = result & ~v11;
  if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_31:
    *a3 = 0;
    *(a3 + 8) = -1;
    return result;
  }

  v13 = ~v11;
  v14 = a2 == 2;
  v15 = a1 == 1 && a2 == 2;
  if (a1)
  {
    v14 = 0;
  }

  while (1)
  {
    v16 = *(v7 + 48) + 16 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    if (!v18)
    {
      break;
    }

    if (v18 == 1)
    {
      if (a2 == 1 && v17 == a1)
      {
        goto LABEL_28;
      }
    }

    else if (v17)
    {
      if (v15)
      {
        goto LABEL_28;
      }
    }

    else if (v14)
    {
      goto LABEL_28;
    }

LABEL_17:
    v12 = (v12 + 1) & v13;
    if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if (a2 || v17 != a1)
  {
    goto LABEL_17;
  }

LABEL_28:
  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v3;
  v24 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CF6EEF8C();
    v21 = v24;
  }

  v22 = *(v21 + 48) + 16 * v12;
  v23 = *v22;
  LOBYTE(v22) = *(v22 + 8);
  *a3 = v23;
  *(a3 + 8) = v22;
  result = sub_1CF8DE530(v12);
  *v3 = v24;
  return result;
}

uint64_t sub_1CF8DD5B4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 40);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  v4 = sub_1CF9E8228();

  v5 = -1 << *(v2 + 32);
  v6 = v4 & ~v5;
  if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {
    v8 = *(*(v2 + 48) + 8 * v6);
    v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v11 = v10;
    if (v9 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v11 == v12)
    {
      break;
    }

    v14 = sub_1CF9E8048();

    if (v14)
    {
      goto LABEL_11;
    }

    v6 = (v6 + 1) & v7;
    if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  v16 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v1;
  v20 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CF6EFA88();
    v18 = v20;
  }

  v15 = *(*(v18 + 48) + 8 * v6);
  sub_1CF8DE744(v6);
  *v1 = v20;
  return v15;
}

unint64_t sub_1CF8DD744(unint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 40);
  sub_1CF9E81D8();
  sub_1CF82009C(v17, a1);
  v6 = sub_1CF9E8228();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0xF000000000000007;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = *(*(v4 + 48) + 8 * v8);
    sub_1CEFD09A0(v10);
    v11 = sub_1CF81C5BC(v10, a1);
    sub_1CEFD0A98(v10);
    if (v11)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0xF000000000000007;
    }
  }

  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  v17[0] = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CF6EFC04();
    v15 = v17[0];
  }

  v16 = *(*(v15 + 48) + 8 * v8);
  sub_1CF8DE924(v8);
  result = v16;
  *v2 = v17[0];
  return result;
}

uint64_t sub_1CF8DD86C(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = sub_1CF9E7848();

    if (v6)
    {
      v7 = sub_1CF8DE0FC(v4, a1);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  v10 = *(v3 + 40);
  sub_1CF9E81D8();
  v11 = *(a1 + 16);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E69C8();

  v12 = sub_1CF9E8228();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(*(v3 + 48) + 8 * v14) + 16);
    v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v19 = v18;
    if (v17 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v19 == v20)
    {
      break;
    }

    v22 = sub_1CF9E8048();

    if (v22)
    {
      goto LABEL_19;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_19:
  v23 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v9;
  v27 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CF6EFF7C();
    v25 = v27;
  }

  v26 = *(*(v25 + 48) + 8 * v14);
  sub_1CF8DEAE0(v14);
  result = v26;
  *v9 = v27;
  return result;
}

void sub_1CF8DDA6C(id a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_1CF9E81D8();
  sub_1CEFF47E0(v39, a1, a2 & 0x1FF);
  v8 = sub_1CF9E8228();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_33:
    *a3 = 0;
    *(a3 + 8) = -256;
    return;
  }

  v38 = ~v9;
  v11 = a2 == 2;
  v12 = a1 == 1 && a2 == 2;
  if (a1)
  {
    v11 = 0;
  }

  v34 = v11;
  v35 = v12;
  while (1)
  {
    v16 = 16 * v10;
    v17 = *(v6 + 48) + 16 * v10;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 9);
    if ((v20 & 1) == 0)
    {
      break;
    }

    if ((a2 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v22;
    if (v21 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v23 == v24)
    {
      sub_1CEFD0988(v18, v19, 1);
      sub_1CEFD0988(v18, v19, 1);
      sub_1CEFD0988(a1, a2, 1);

      sub_1CEFD0994(a1, a2, 1);
LABEL_35:
      sub_1CEFD0994(v18, v19, 1);
      sub_1CEFD0994(v18, v19, 1);
      v27 = v36;
      v16 = 16 * v10;
      goto LABEL_38;
    }

    v26 = sub_1CF9E8048();
    sub_1CEFD0988(v18, v19, 1);
    sub_1CEFD0988(v18, v19, 1);
    sub_1CEFD0988(a1, a2, 1);

    sub_1CEFD0994(a1, a2, 1);
    if (v26)
    {
      goto LABEL_35;
    }

    sub_1CEFD0994(v18, v19, 1);
    sub_1CEFD0994(v18, v19, 1);
LABEL_10:
    v10 = (v10 + 1) & v38;
    if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if ((a2 & 0x100) != 0)
  {
LABEL_8:
    sub_1CEFD0988(*v17, *(v17 + 8), *(v17 + 9));
    sub_1CEFD0988(a1, a2, BYTE1(a2) & 1);
    sub_1CEFD0994(v18, v19, v20);
    v13 = a1;
    v14 = a2;
    v15 = (a2 >> 8) & 1;
LABEL_9:
    sub_1CEFD0994(v13, v14, v15);
    goto LABEL_10;
  }

  if (!*(v17 + 8))
  {
    if (!a2 && v18 == a1)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v19 == 1)
  {
    if (a2 == 1 && v18 == a1)
    {
      v18 = a1;
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v18)
  {
    if (v35)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (!v34)
  {
LABEL_32:
    sub_1CEFD0988(v18, v19, 0);
    sub_1CEFD0988(a1, a2, 0);
    v13 = v18;
    v14 = v19;
    LOBYTE(v15) = 0;
    goto LABEL_9;
  }

  v18 = 0;
LABEL_37:
  sub_1CEFD0988(v18, v19, 0);
  sub_1CEFD0988(a1, a2, 0);
  sub_1CEFD0994(v18, v19, 0);
  v27 = v36;
LABEL_38:
  v28 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v27;
  v39[0] = *v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CF6EF4FC();
    v30 = v39[0];
  }

  v31 = *(v30 + 48) + v16;
  v32 = *v31;
  v33 = *(v31 + 8);
  LOBYTE(v31) = *(v31 + 9);
  *a3 = v32;
  *(a3 + 8) = v33;
  *(a3 + 9) = v31;
  sub_1CF8DECC0(v10);
  *v27 = v39[0];
}

uint64_t sub_1CF8DDE34()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_1CF9E7818();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1CF4768B4(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_1CF9E7558();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for FSChangesEnumerator();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_1CF9E7568();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_1CF02B564(v9);
  result = sub_1CF9E7568();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF8DDF8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, uint64_t *a5)
{
  v9 = v5;
  v10 = *v5;

  v11 = sub_1CF9E7818();
  v12 = swift_unknownObjectRetain();
  v13 = a3(v12, v11);
  v23 = v13;
  v14 = *(v13 + 40);

  v15 = sub_1CF9E7558();
  v16 = -1 << *(v13 + 32);
  v17 = v15 & ~v16;
  if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    sub_1CEFD57E0(0, a4, a5);
    while (1)
    {
      v19 = *(*(v13 + 48) + 8 * v17);
      v20 = sub_1CF9E7568();

      if (v20)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v21 = *(*(v13 + 48) + 8 * v17);
  sub_1CF02B564(v17);
  result = sub_1CF9E7568();
  if (result)
  {
    *v9 = v23;
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF8DE0FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;

  v6 = sub_1CF9E7818();
  v7 = swift_unknownObjectRetain();
  v8 = sub_1CF476C84(v7, v6);
  v31 = v8;
  v9 = *(v8 + 40);
  sub_1CF9E81D8();
  v10 = *(a2 + 16);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  sub_1CF9E69C8();

  v11 = sub_1CF9E8228();
  v12 = -1 << *(v8 + 32);
  v13 = v11 & ~v12;
  if ((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = *(*(*(v8 + 48) + 8 * v13) + 16);
      v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v18 = v17;
      if (v16 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v18 == v19)
      {
        break;
      }

      v21 = sub_1CF9E8048();

      if (v21)
      {

        goto LABEL_12;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

LABEL_12:
  v22 = *(*(v8 + 48) + 8 * v13);
  sub_1CF8DEAE0(v13);
  v23 = *(v22 + 16);
  v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v26 = v25;
  if (v24 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v26 == v27)
  {
    goto LABEL_18;
  }

  v29 = sub_1CF9E8048();

  if ((v29 & 1) == 0)
  {
    __break(1u);
LABEL_18:
  }

  *v3 = v31;
  return v22;
}

unint64_t sub_1CF8DE328(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1CF9E77D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v12 = v4;
        v13 = *(v3 + 40);
        v14 = (*(v3 + 48) + 24 * v6);
        v15 = *v14;
        v16 = v14[1];
        v17 = v14[2];
        sub_1CF9E81D8();
        MEMORY[0x1D386A4A0](v15);

        sub_1CF9E69C8();
        v18 = sub_1CF9E8228();

        v19 = v18 & v7;
        if (v2 >= v10)
        {
          if (v19 < v10)
          {
            v4 = v12;
          }

          else
          {
            v4 = v12;
            if (v2 >= v19)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v4 = v12;
          if (v19 >= v10 || v2 >= v19)
          {
LABEL_12:
            v20 = *(v3 + 48);
            v21 = v20 + 24 * v2;
            v22 = (v20 + 24 * v6);
            if (v2 != v6 || v21 >= v22 + 24)
            {
              v11 = *v22;
              *(v21 + 16) = *(v22 + 2);
              *v21 = v11;
              v2 = v6;
            }
          }
        }

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

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1CF8DE530(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1CF9E77D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = 16 * v6;
        v12 = *(v3 + 40);
        v13 = *(v3 + 48) + 16 * v6;
        v14 = *v13;
        v15 = *(v13 + 8);
        sub_1CF9E81D8();
        if (v15)
        {
          if (v15 == 1)
          {
            MEMORY[0x1D386A470](1);
            MEMORY[0x1D386A4A0](v14);
          }

          else
          {
            if (v14)
            {
              v16 = 3;
            }

            else
            {
              v16 = 2;
            }

            MEMORY[0x1D386A470](v16);
          }
        }

        else
        {
          MEMORY[0x1D386A470](0);
          sub_1CF9E8208();
        }

        v17 = sub_1CF9E8228() & v7;
        if (v2 >= v10)
        {
          if (v17 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v17 >= v10)
        {
          goto LABEL_19;
        }

        if (v2 >= v17)
        {
LABEL_19:
          v18 = *(v3 + 48);
          v19 = (v18 + 16 * v2);
          v20 = (v18 + v11);
          if (16 * v2 != v11 || (v2 = v6, v19 >= v20 + 1))
          {
            *v19 = *v20;
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

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1CF8DE744(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1CF9E77D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        sub_1CF9E81D8();
        v13 = v12;
        sub_1CF9E69C8();
        v14 = sub_1CF9E8228();

        v15 = v14 & v7;
        if (v2 >= v10)
        {
          if (v15 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v15)
        {
LABEL_11:
          v16 = *(v3 + 48);
          v17 = (v16 + 8 * v2);
          v18 = (v16 + 8 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1CF8DE924(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1CF9E77D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_1CF9E81D8();
        sub_1CEFD09A0(v12);
        sub_1CF82009C(v21, v12);
        v13 = sub_1CF9E8228();
        sub_1CEFD0A98(v12);
        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 8 * v2);
          v17 = (v15 + 8 * v6);
          if (v2 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1CF8DEAE0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1CF9E77D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_1CF9E81D8();
        v13 = *(v12 + 16);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

        sub_1CF9E69C8();

        v14 = sub_1CF9E8228();

        v15 = v14 & v7;
        if (v2 >= v10)
        {
          if (v15 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v15)
        {
LABEL_11:
          v16 = *(v3 + 48);
          v17 = (v16 + 8 * v2);
          v18 = (v16 + 8 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1CF8DECC0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1CF9E77D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      v27 = v4;
      do
      {
        v11 = 16 * v6;
        v12 = *(v3 + 40);
        v13 = *(v3 + 48) + 16 * v6;
        v14 = *v13;
        v15 = *(v13 + 8);
        v16 = *(v13 + 9);
        sub_1CF9E81D8();
        if (v16)
        {
          MEMORY[0x1D386A470](1);
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v17 = v14;
          sub_1CF9E69C8();
          v11 = 16 * v6;
        }

        else
        {
          MEMORY[0x1D386A470](0);
          if (v15)
          {
            if (v15 == 1)
            {
              MEMORY[0x1D386A470](1);
              MEMORY[0x1D386A4A0](v14);
            }

            else
            {
              if (v14)
              {
                v18 = 3;
              }

              else
              {
                v18 = 2;
              }

              MEMORY[0x1D386A470](v18);
            }
          }

          else
          {
            MEMORY[0x1D386A470](0);
            sub_1CF9E8208();
          }
        }

        v19 = sub_1CF9E8228();
        sub_1CEFD0994(v14, v15, v16);
        v20 = v19 & v7;
        if (v2 >= v10)
        {
          v4 = v27;
          if (v20 < v10)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v4 = v27;
          if (v20 >= v10)
          {
            goto LABEL_21;
          }
        }

        if (v2 >= v20)
        {
LABEL_21:
          v21 = *(v3 + 48);
          v22 = (v21 + 16 * v2);
          v23 = (v21 + v11);
          if (16 * v2 != v11 || (v2 = v6, v22 >= v23 + 1))
          {
            *v22 = *v23;
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

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1CF8DEF70(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x1D386CDE0](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_1CF8DEF70(v6, a2, a3);
  }

  return result;
}

uint64_t sub_1CF8DF014(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1CF8DF174(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_1CF8DF454(v9, v4, v2);
  result = MEMORY[0x1D386CDC0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF8DF174(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v18 = 0;
  v3 = 0;
  v24 = a3;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = *(*(v24 + 48) + 8 * v12);
    sub_1CEFF6FC0(*(v24 + 56) + 16 * v12, v23);
    v21 = v13;
    sub_1CEFF6FC0(v23, &v22);
    sub_1CEFCCBDC(&v21, v19, &qword_1EC4C4C38, &qword_1CFA17E88);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1CEFCCC44(&v21, &qword_1EC4C4C38, &qword_1CFA17E88);
    sub_1CEFF70F4(&v20);
    if (Strong)
    {
      swift_unknownObjectRelease();
      result = sub_1CEFF70F4(v23);
      *(v17 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        return sub_1CF4F5CF4(v17, a2, v18, v24);
      }
    }

    else
    {
      result = sub_1CEFF70F4(v23);
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_1CF4F5CF4(v17, a2, v18, v24);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1CF8DF328(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1CF8E60B8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_1CF8DF3C4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1CF8E1840(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1CF8DF454(void *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_1CF8DF174(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1CF8DF4CC(uint64_t (*a1)(void *), uint64_t a2)
{
  v5 = *v2;
  result = sub_1CF82639C(a1, a2, *v2);
  if (!v3)
  {
    if (v7)
    {
      return *(v5 + 16);
    }

    v8 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v10 = (v5 + 16);
      v9 = *(v5 + 16);
      if (v8 == v9)
      {
        return result;
      }

      v26 = a1;
      v11 = 16 * result;
      while (v8 < v9)
      {
        v28 = result;
        v12 = v5;
        v13 = v5 + v11;
        v14 = *(v5 + v11 + 48);
        v15 = *(v5 + v11 + 56);
        v27[0] = v14;
        v27[1] = v15;

        v16 = v26(v27);

        if (v16)
        {
          result = v28;
          v5 = v12;
        }

        else
        {
          result = v28;
          v5 = v12;
          if (v8 != v28)
          {
            if ((v28 & 0x8000000000000000) != 0)
            {
              goto LABEL_22;
            }

            if (v28 >= *v10)
            {
              goto LABEL_23;
            }

            if (v8 >= *v10)
            {
              goto LABEL_24;
            }

            v17 = &v12[16 * v28 + 32];
            v19 = *v17;
            v18 = *(v17 + 1);
            v20 = *(v13 + 48);
            v21 = *(v13 + 56);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_1CF772298(v12);
            }

            v22 = &v12[16 * v28];
            v23 = *(v22 + 5);
            *(v22 + 4) = v20;
            *(v22 + 5) = v21;
            v5 = v12;

            if (v8 >= *(v12 + 2))
            {
              goto LABEL_25;
            }

            v24 = &v12[v11];
            v25 = *&v12[v11 + 56];
            *(v24 + 6) = v19;
            *(v24 + 7) = v18;

            *v2 = v12;
            result = v28;
          }

          ++result;
        }

        ++v8;
        v10 = (v5 + 16);
        v9 = *(v5 + 16);
        v11 += 16;
        if (v8 == v9)
        {
          return result;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1CF8DF6A8(uint64_t (*a1)(id *), uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1CF8264E0(a1, a2, *v2);
  if (!v3)
  {
    if (v7)
    {
      v8 = *(v5 + 16);
      return;
    }

    v9 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      v11 = (v5 + 16);
      v10 = *(v5 + 16);
      if (v9 == v10)
      {
        return;
      }

      v37 = a1;
      v28 = v2;
      v12 = 2 * v6;
      while (v9 < v10)
      {
        v13 = v6;
        v14 = v5;
        v15 = v5 + v12 * 8;
        v16 = *(v15 + 57);
        v17 = *(v15 + 56);
        v34 = *(v15 + 48);
        v35 = v17;
        v36 = v16;
        sub_1CEFD0988(v34, v17, v16);
        v18 = v37(&v34);
        sub_1CEFD0994(v34, v35, v36);
        if (v18)
        {
          v6 = v13;
          v5 = v14;
        }

        else
        {
          v19 = v13;
          if (v9 == v13)
          {
            v5 = v14;
          }

          else
          {
            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            if (v13 >= *v11)
            {
              goto LABEL_25;
            }

            if (v9 >= *v11)
            {
              goto LABEL_26;
            }

            v20 = &v14[2 * v13 + 4];
            v21 = *(v15 + 48);
            v22 = *(v15 + 56);
            v23 = *(v15 + 57);
            v31 = *v20;
            v32 = 2 * v13;
            v29 = *(v20 + 9);
            v30 = *(v20 + 8);
            sub_1CEFD0988(*v20, v30, v29);
            v33 = v21;
            v24 = v21;
            v25 = v22;
            sub_1CEFD0988(v24, v22, v23);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_1CF77234C(v14);
            }

            if (v13 >= v14[2])
            {
              goto LABEL_27;
            }

            v26 = &v14[v32];
            sub_1CEFD0994(v14[v32 + 4], LOBYTE(v14[v32 + 5]), BYTE1(v14[v32 + 5]));
            v26[4] = v33;
            *(v26 + 40) = v25;
            *(v26 + 41) = v23;
            if (v9 >= v14[2])
            {
              goto LABEL_28;
            }

            v5 = v14;
            v27 = &v14[v12];
            sub_1CEFD0994(v14[v12 + 6], LOBYTE(v14[v12 + 7]), BYTE1(v14[v12 + 7]));
            v27[6] = v31;
            *(v27 + 56) = v30;
            *(v27 + 57) = v29;
            *v28 = v14;
            v19 = v13;
          }

          v6 = v19 + 1;
        }

        ++v9;
        v11 = (v5 + 16);
        v10 = *(v5 + 16);
        v12 += 2;
        if (v9 == v10)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1CF8DF904(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1CF6F37A8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1CF8DF9B8(v5);
  *a1 = v3;
}

void sub_1CF8DF9B8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1CF9E7F88();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
        v6 = sub_1CF9E6DB8();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1CF8DFD5C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1CF8DFAFC(0, v2, 1, a1);
  }
}

void sub_1CF8DFAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v9 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v34 = -v19;
    v35 = v18;
    v21 = a1 - a3;
    v28 = v19;
    v22 = v18 + v19 * a3;
LABEL_4:
    v32 = v20;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    v23 = v20;
    while (1)
    {
      sub_1CEFCCBDC(v22, v17, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CEFCCBDC(v23, v13, &unk_1EC4BF650, &unk_1CF9FCB40);
      v24 = sub_1CF81BCDC(v17, v13);
      sub_1CEFCCC44(v13, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CEFCCC44(v17, &unk_1EC4BF650, &unk_1CF9FCB40);
      if (v4)
      {
        break;
      }

      if (v24)
      {
        if (!v35)
        {
          __break(1u);
          return;
        }

        v25 = v36;
        sub_1CEFE55D0(v22, v36, &unk_1EC4BF650, &unk_1CF9FCB40);
        swift_arrayInitWithTakeFrontToBack();
        sub_1CEFE55D0(v25, v23, &unk_1EC4BF650, &unk_1CF9FCB40);
        v23 += v34;
        v22 += v34;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v20 = v32 + v28;
      v21 = v31 - 1;
      v22 = v30 + v28;
      if (v33 + 1 != v29)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1CF8DFD5C(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v197 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4FB0, &unk_1CFA17180);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v193 - v9;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v207 = *(v225 - 8);
  v11 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v225);
  v199 = &v193 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v219 = &v193 - v14;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v214 = (&v193 - v17);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v213 = &v193 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v222 = (&v193 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v221 = &v193 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v224 = &v193 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v223 = &v193 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v193 - v30;
  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v193 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v209 = a3;
  v41 = a3[1];
  if (v41 >= 1)
  {
    v195 = &v193 - v37;
    v196 = v35;
    v203 = v40;
    v211 = v39;
    v212 = v38;
    v194 = a4;
    v42 = 0;
    v43 = MEMORY[0x1E69E7CC0];
    v44 = &unk_1EC4BF650;
    v220 = v7;
    v45 = v225;
    while (1)
    {
      v46 = v42;
      v47 = v42 + 1;
      v201 = v43;
      v198 = v46;
      if (v47 >= v41)
      {
        v62 = v47;
      }

      else
      {
        v210 = v41;
        v48 = *v209;
        v49 = *(v207 + 72);
        v50 = v46;
        v51 = *v209 + v49 * v47;
        v52 = v195;
        sub_1CEFCCBDC(v51, v195, &unk_1EC4BF650, &unk_1CF9FCB40);
        v53 = v48 + v49 * v50;
        v54 = v196;
        sub_1CEFCCBDC(v53, v196, &unk_1EC4BF650, &unk_1CF9FCB40);
        v55 = v215;
        LODWORD(v217) = sub_1CF81BCDC(v52, v54);
        v215 = v55;
        if (v55)
        {
          sub_1CEFCCC44(v54, &unk_1EC4BF650, &unk_1CF9FCB40);
          v188 = v52;
LABEL_151:
          sub_1CEFCCC44(v188, &unk_1EC4BF650, &unk_1CF9FCB40);
LABEL_152:

          return;
        }

        sub_1CEFCCC44(v54, &unk_1EC4BF650, &unk_1CF9FCB40);
        sub_1CEFCCC44(v52, &unk_1EC4BF650, &unk_1CF9FCB40);
        v56 = v198 + 2;
        v4 = v48 + v49 * (v198 + 2);
        v57 = v49;
        v218 = v49;
        while (v210 != v56)
        {
          v58 = v203;
          sub_1CEFCCBDC(v4, v203, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCBDC(v51, v31, &unk_1EC4BF650, &unk_1CF9FCB40);
          v59 = v215;
          v60 = sub_1CF81BCDC(v58, v31);
          v215 = v59;
          if (v59)
          {
            sub_1CEFCCC44(v31, &unk_1EC4BF650, &unk_1CF9FCB40);
            v188 = v58;
            goto LABEL_151;
          }

          v61 = v60;
          sub_1CEFCCC44(v31, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v58, &unk_1EC4BF650, &unk_1CF9FCB40);
          ++v56;
          v57 = v218;
          v4 += v218;
          v51 += v218;
          if ((v217 ^ v61))
          {
            v62 = v56 - 1;
            goto LABEL_12;
          }
        }

        v62 = v210;
LABEL_12:
        v45 = v225;
        v46 = v198;
        if (v217)
        {
          if (v62 < v198)
          {
            goto LABEL_176;
          }

          if (v198 < v62)
          {
            v193 = v31;
            v63 = v57 * (v62 - 1);
            v4 = v62;
            v64 = v62 * v57;
            v210 = v62;
            v65 = v198;
            v66 = v198 * v57;
            do
            {
              if (v65 != --v4)
              {
                v67 = *v209;
                if (!*v209)
                {
                  goto LABEL_180;
                }

                sub_1CEFE55D0(v67 + v66, v199, &unk_1EC4BF650, &unk_1CF9FCB40);
                if (v66 < v63 || v67 + v66 >= (v67 + v64))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v66 != v63)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1CEFE55D0(v199, v67 + v63, &unk_1EC4BF650, &unk_1CF9FCB40);
                v45 = v225;
                v57 = v218;
              }

              ++v65;
              v63 -= v57;
              v64 -= v57;
              v66 += v57;
            }

            while (v65 < v4);
            v31 = v193;
            v44 = &unk_1EC4BF650;
            v46 = v198;
            v62 = v210;
          }
        }
      }

      v68 = v209[1];
      if (v62 >= v68)
      {
        goto LABEL_35;
      }

      if (__OFSUB__(v62, v46))
      {
        goto LABEL_172;
      }

      if (v62 - v46 >= v194)
      {
LABEL_35:
        v4 = v62;
        if (v62 < v46)
        {
          goto LABEL_171;
        }

        goto LABEL_36;
      }

      if (__OFADD__(v46, v194))
      {
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      if (v46 + v194 >= v68)
      {
        v69 = v209[1];
      }

      else
      {
        v69 = v46 + v194;
      }

      if (v69 < v46)
      {
        goto LABEL_175;
      }

      if (v62 == v69)
      {
        goto LABEL_35;
      }

      v193 = v31;
      v118 = *v209;
      v119 = *(v207 + 72);
      v120 = *v209 + v119 * (v62 - 1);
      v216 = -v119;
      v217 = v118;
      v121 = v46 - v62;
      v200 = v119;
      v122 = v118 + v62 * v119;
      v202 = v69;
      while (2)
      {
        v210 = v62;
        v204 = v122;
        v205 = v121;
        v206 = v120;
        v126 = v120;
        while (1)
        {
          v127 = v223;
          sub_1CEFCCBDC(v122, v223, &unk_1EC4BF650, &unk_1CF9FCB40);
          v128 = v224;
          sub_1CEFCCBDC(v126, v224, &unk_1EC4BF650, &unk_1CF9FCB40);
          v129 = *(v220 + 48);
          v130 = v127;
          v44 = &unk_1EC4BF650;
          sub_1CEFCCBDC(v130, v10, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCBDC(v128, &v10[v129], &unk_1EC4BF650, &unk_1CF9FCB40);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_1CEFCCBDC(v10, v221, &unk_1EC4BF650, &unk_1CF9FCB40);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
            if (swift_getEnumCaseMultiPayload() != 6)
            {
              v123 = v221;
              v124 = &unk_1EC4BFCC0;
              v125 = &unk_1CF9FCB50;
              goto LABEL_91;
            }

            v218 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFEC0, &unk_1CFA05590) + 48);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v137 = v211;
              sub_1CEFCCBDC(&v10[v129], v211, &unk_1EC4BF650, &unk_1CF9FCB40);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              if (EnumCaseMultiPayload)
              {
                if (EnumCaseMultiPayload != 1)
                {
                  v175 = v211;
                  v176 = &unk_1EC4BFD70;
                  v177 = &qword_1CFA12AC0;
LABEL_132:
                  sub_1CEFCCC44(v175, v176, v177);
                  v123 = v221 + v218;
                  v124 = &unk_1EC4BEC00;
                  v125 = &unk_1CF9FCB60;
LABEL_91:
                  sub_1CEFCCC44(v123, v124, v125);
                  goto LABEL_92;
                }

                v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
                v140 = v139[12];
                v141 = v211;
                v142 = (v211 + v139[20]);

                v190 = v142[10];
                v192 = v142[11];
                sub_1CF1D5750(*v142, v142[1], v142[2], v142[3], v142[4], v142[5], v142[6], v142[7], v142[8]);
                sub_1CEFCCC44(v141 + v140, &unk_1EC4BFBB0, &qword_1CF9FCB90);
                v143 = *v141;
                v44 = &unk_1EC4BF650;
              }

              else
              {
                v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
                v167 = *(v166 + 48);

                sub_1CEFCCC44(v137 + v167, &unk_1EC4BFBB0, &qword_1CF9FCB90);
                v143 = *v137;
              }
            }

            else
            {
              v154 = v213;
              sub_1CEFCCBDC(&v10[v129], v213, &unk_1EC4BF650, &unk_1CF9FCB40);
              v155 = swift_getEnumCaseMultiPayload();
              if (v155)
              {
                if (v155 != 1)
                {
                  v175 = v213;
                  v176 = &unk_1EC4BFCC0;
                  v177 = &unk_1CF9FCB50;
                  goto LABEL_132;
                }

                v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
                v208 = v156[12];
                v157 = v156[16];
                v158 = v213;
                v159 = (v213 + v156[20]);

                v160 = v159[5];
                v161 = v159[6];
                v162 = v159[7];
                sub_1CF1D56D0(*v159, v159[1], v159[2], v159[3], v159[4]);

                v163 = v158 + v208;
              }

              else
              {
                v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
                v172 = *(v171 + 48);

                v163 = v154 + v172;
              }

              sub_1CEFCCC44(v163, &qword_1EC4C1B40, &unk_1CF9FCB70);
            }

            sub_1CEFCCC44(v221 + v218, &unk_1EC4BEC00, &unk_1CF9FCB60);
            goto LABEL_122;
          }

          sub_1CEFCCBDC(v10, v222, &unk_1EC4BF650, &unk_1CF9FCB40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
          if (swift_getEnumCaseMultiPayload() != 6)
          {
            v123 = v222;
            v124 = &unk_1EC4BFD70;
            v125 = &qword_1CFA12AC0;
            goto LABEL_91;
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v131 = v214;
            sub_1CEFCCBDC(&v10[v129], v214, &unk_1EC4BF650, &unk_1CF9FCB40);
            v132 = swift_getEnumCaseMultiPayload();
            if (v132)
            {
              if (v132 != 1)
              {
                v178 = v214;
                v179 = &unk_1EC4BFD70;
                v180 = &qword_1CFA12AC0;
                goto LABEL_130;
              }

              v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
              v218 = v133[12];
              v134 = v214;
              v135 = (v214 + v133[20]);

              v189 = v135[10];
              v191 = v135[11];
              sub_1CF1D5750(*v135, v135[1], v135[2], v135[3], v135[4], v135[5], v135[6], v135[7], v135[8]);
              sub_1CEFCCC44(v134 + v218, &unk_1EC4BFBB0, &qword_1CF9FCB90);
              v136 = *v134;
            }

            else
            {
              v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
              v165 = *(v164 + 48);

              sub_1CEFCCC44(v131 + v165, &unk_1EC4BFBB0, &qword_1CF9FCB90);
              v136 = *v131;
            }

            goto LABEL_118;
          }

          v144 = v212;
          sub_1CEFCCBDC(&v10[v129], v212, &unk_1EC4BF650, &unk_1CF9FCB40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
          v145 = swift_getEnumCaseMultiPayload();
          if (!v145)
          {
            v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
            v169 = *(v168 + 48);

            v153 = v144 + v169;
            goto LABEL_117;
          }

          if (v145 != 1)
          {
            break;
          }

          v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
          v218 = v146[12];
          v147 = v146[16];
          v148 = v212;
          v149 = (v212 + v146[20]);

          v150 = v149[5];
          v151 = v149[6];
          v152 = v149[7];
          sub_1CF1D56D0(*v149, v149[1], v149[2], v149[3], v149[4]);

          v153 = v148 + v218;
          v44 = &unk_1EC4BF650;
LABEL_117:
          sub_1CEFCCC44(v153, &qword_1EC4C1B40, &unk_1CF9FCB70);
LABEL_118:
          v170 = v222;

LABEL_122:
          sub_1CEFCCC44(&v10[v129], &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v10, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v224, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v223, &unk_1EC4BF650, &unk_1CF9FCB40);
          v45 = v225;
          if (!v217)
          {
            goto LABEL_177;
          }

          v173 = v219;
          sub_1CEFE55D0(v122, v219, &unk_1EC4BF650, &unk_1CF9FCB40);
          swift_arrayInitWithTakeFrontToBack();
          sub_1CEFE55D0(v173, v126, &unk_1EC4BF650, &unk_1CF9FCB40);
          v126 += v216;
          v122 += v216;
          if (__CFADD__(v121++, 1))
          {
            goto LABEL_93;
          }
        }

        v178 = v212;
        v179 = &unk_1EC4BFCC0;
        v180 = &unk_1CF9FCB50;
LABEL_130:
        sub_1CEFCCC44(v178, v179, v180);
        v181 = v222;

LABEL_92:
        v45 = v225;
        sub_1CEFCCC44(v10, &qword_1EC4C4FB0, &unk_1CFA17180);
        sub_1CEFCCC44(v224, &unk_1EC4BF650, &unk_1CF9FCB40);
        sub_1CEFCCC44(v223, &unk_1EC4BF650, &unk_1CF9FCB40);
LABEL_93:
        v62 = v210 + 1;
        v120 = v206 + v200;
        v121 = v205 - 1;
        v122 = v204 + v200;
        v4 = v202;
        if (v210 + 1 != v202)
        {
          continue;
        }

        break;
      }

      v31 = v193;
      if (v202 < v198)
      {
        goto LABEL_171;
      }

LABEL_36:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v43 = v201;
      }

      else
      {
        v43 = sub_1CF1F6594(0, *(v201 + 2) + 1, 1, v201);
      }

      v71 = *(v43 + 2);
      v70 = *(v43 + 3);
      v72 = v71 + 1;
      if (v71 >= v70 >> 1)
      {
        v43 = sub_1CF1F6594((v70 > 1), v71 + 1, 1, v43);
      }

      *(v43 + 2) = v72;
      v73 = &v43[16 * v71];
      *(v73 + 4) = v198;
      *(v73 + 5) = v4;
      v74 = *v197;
      if (!*v197)
      {
        goto LABEL_181;
      }

      v202 = v4;
      if (v71)
      {
        v75 = v74;
        v45 = v225;
        while (1)
        {
          v4 = v72 - 1;
          if (v72 >= 4)
          {
            break;
          }

          if (v72 == 3)
          {
            v76 = *(v43 + 4);
            v77 = *(v43 + 5);
            v86 = __OFSUB__(v77, v76);
            v78 = v77 - v76;
            v79 = v86;
LABEL_56:
            if (v79)
            {
              goto LABEL_160;
            }

            v92 = &v43[16 * v72];
            v94 = *v92;
            v93 = *(v92 + 1);
            v95 = __OFSUB__(v93, v94);
            v96 = v93 - v94;
            v97 = v95;
            if (v95)
            {
              goto LABEL_163;
            }

            v98 = &v43[16 * v4 + 32];
            v100 = *v98;
            v99 = *(v98 + 1);
            v86 = __OFSUB__(v99, v100);
            v101 = v99 - v100;
            if (v86)
            {
              goto LABEL_166;
            }

            if (__OFADD__(v96, v101))
            {
              goto LABEL_167;
            }

            if (v96 + v101 >= v78)
            {
              if (v78 < v101)
              {
                v4 = v72 - 2;
              }

              goto LABEL_77;
            }

            goto LABEL_70;
          }

          v102 = &v43[16 * v72];
          v104 = *v102;
          v103 = *(v102 + 1);
          v86 = __OFSUB__(v103, v104);
          v96 = v103 - v104;
          v97 = v86;
LABEL_70:
          if (v97)
          {
            goto LABEL_162;
          }

          v105 = &v43[16 * v4];
          v107 = *(v105 + 4);
          v106 = *(v105 + 5);
          v86 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v86)
          {
            goto LABEL_165;
          }

          if (v108 < v96)
          {
            goto LABEL_87;
          }

LABEL_77:
          v45 = v4 - 1;
          if (v4 - 1 >= v72)
          {
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            v183 = sub_1CF6F3368(v45);
            goto LABEL_140;
          }

          if (!*v209)
          {
            goto LABEL_178;
          }

          v44 = v31;
          v113 = v43;
          v114 = *&v43[16 * v45 + 32];
          v115 = *&v43[16 * v4 + 40];
          v116 = v215;
          sub_1CF8E0FB0(*v209 + *(v207 + 72) * v114, *v209 + *(v207 + 72) * *&v43[16 * v4 + 32], *v209 + *(v207 + 72) * v115, v75);
          v215 = v116;
          if (v116)
          {
            goto LABEL_152;
          }

          if (v115 < v114)
          {
            goto LABEL_156;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = sub_1CF6F3368(v113);
          }

          if (v45 >= *(v113 + 2))
          {
            goto LABEL_157;
          }

          v117 = &v113[16 * v45];
          *(v117 + 4) = v114;
          *(v117 + 5) = v115;
          v226 = v113;
          sub_1CF6F32DC(v4);
          v43 = v226;
          v72 = *(v226 + 2);
          v45 = v225;
          v31 = v44;
          v44 = &unk_1EC4BF650;
          if (v72 <= 1)
          {
            goto LABEL_87;
          }
        }

        v80 = &v43[16 * v72 + 32];
        v81 = *(v80 - 64);
        v82 = *(v80 - 56);
        v86 = __OFSUB__(v82, v81);
        v83 = v82 - v81;
        if (v86)
        {
          goto LABEL_158;
        }

        v85 = *(v80 - 48);
        v84 = *(v80 - 40);
        v86 = __OFSUB__(v84, v85);
        v78 = v84 - v85;
        v79 = v86;
        if (v86)
        {
          goto LABEL_159;
        }

        v87 = &v43[16 * v72];
        v89 = *v87;
        v88 = *(v87 + 1);
        v86 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v86)
        {
          goto LABEL_161;
        }

        v86 = __OFADD__(v78, v90);
        v91 = v78 + v90;
        if (v86)
        {
          goto LABEL_164;
        }

        if (v91 >= v83)
        {
          v109 = &v43[16 * v4 + 32];
          v111 = *v109;
          v110 = *(v109 + 1);
          v86 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v86)
          {
            goto LABEL_170;
          }

          if (v78 < v112)
          {
            v4 = v72 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_56;
      }

      v45 = v225;
LABEL_87:
      v41 = v209[1];
      v42 = v202;
      if (v202 >= v41)
      {
        goto LABEL_137;
      }
    }
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_137:
  v44 = *v197;
  if (*v197)
  {
    v45 = v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v215;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_173;
    }

    v183 = v45;
LABEL_140:
    v226 = v183;
    v45 = *(v183 + 2);
    if (v45 < 2)
    {
      goto LABEL_152;
    }

    while (*v209)
    {
      v184 = *&v183[16 * v45];
      v185 = v183;
      v186 = *&v183[16 * v45 + 24];
      sub_1CF8E0FB0(*v209 + *(v207 + 72) * v184, *v209 + *(v207 + 72) * *&v183[16 * v45 + 16], *v209 + *(v207 + 72) * v186, v44);
      if (v4)
      {
        goto LABEL_152;
      }

      if (v186 < v184)
      {
        goto LABEL_168;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v185 = sub_1CF6F3368(v185);
      }

      if (v45 - 2 >= *(v185 + 2))
      {
        goto LABEL_169;
      }

      v187 = &v185[16 * v45];
      *v187 = v184;
      *(v187 + 1) = v186;
      v226 = v185;
      sub_1CF6F32DC(v45 - 1);
      v183 = v226;
      v45 = *(v226 + 2);
      if (v45 <= 1)
      {
        goto LABEL_152;
      }
    }

LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
  }

  __break(1u);
}

void sub_1CF8E0FB0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v10 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v63 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v23 = a2;
  v24 = a1;
  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_67;
  }

  v25 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v22 != -1)
  {
    v26 = (a2 - a1) / v22;
    v77 = a1;
    v27 = a4;
    v76 = a4;
    if (v26 < v25 / v22)
    {
      v28 = v26 * v22;
      if (a4 < v24 || v24 + v28 <= a4)
      {
        v29 = v24;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == v24)
        {
          goto LABEL_17;
        }

        v29 = v24;
        swift_arrayInitWithTakeBackToFront();
      }

      v24 = v29;
      v27 = a4;
      v23 = a2;
LABEL_17:
      v73 = v4;
      v71 = v27 + v28;
      v75 = v27 + v28;
      if (v28 >= 1 && v23 < a3)
      {
        v69 = v16;
        v70 = v20;
        v68 = a3;
        while (1)
        {
          v74 = v24;
          v34 = v22;
          v35 = v23;
          v36 = v70;
          sub_1CEFCCBDC(v23, v70, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCBDC(v27, v16, &unk_1EC4BF650, &unk_1CF9FCB40);
          v37 = v73;
          v38 = sub_1CF81BCDC(v36, v16);
          v73 = v37;
          if (v37)
          {
            sub_1CEFCCC44(v16, &unk_1EC4BF650, &unk_1CF9FCB40);
            sub_1CEFCCC44(v36, &unk_1EC4BF650, &unk_1CF9FCB40);
            goto LABEL_65;
          }

          v39 = v38;
          sub_1CEFCCC44(v16, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v36, &unk_1EC4BF650, &unk_1CF9FCB40);
          if ((v39 & 1) == 0)
          {
            v22 = v34;
            v41 = v27;
            v27 += v34;
            v40 = v74;
            if (v74 < v41 || v74 >= v27)
            {
              swift_arrayInitWithTakeFrontToBack();
              v40 = v74;
            }

            else if (v74 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
              v40 = v74;
            }

            v76 = v27;
            v23 = v35;
            goto LABEL_37;
          }

          v22 = v34;
          v40 = v74;
          if (v74 < v35 || v74 >= v35 + v34)
          {
            break;
          }

          if (v74 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_33:
            v40 = v74;
          }

          v23 = v35 + v34;
LABEL_37:
          v24 = v40 + v22;
          v77 = v24;
          if (v27 < v71)
          {
            v16 = v69;
            if (v23 < v68)
            {
              continue;
            }
          }

          goto LABEL_65;
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_33;
      }

      goto LABEL_65;
    }

    v30 = v25 / v22 * v22;
    v70 = v18;
    if (a4 < v23 || v23 + v30 <= a4)
    {
      v31 = v23;
      v32 = v24;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == v23)
      {
LABEL_42:
        v42 = v27 + v30;
        if (v30 < 1)
        {
LABEL_60:
          v73 = v5;
          v77 = v23;
          v75 = v42;
          goto LABEL_65;
        }

        v43 = -v22;
        v44 = &unk_1EC4BF650;
        v45 = v27 + v30;
        v46 = &unk_1CF9FCB40;
        v66 = v27;
        v74 = v24;
        v69 = -v22;
LABEL_44:
        v64 = v42;
        v47 = v23 + v43;
        v67 = v23 + v43;
        v68 = v23;
        while (1)
        {
          if (v23 <= v24)
          {
            v73 = v5;
            v77 = v23;
            v75 = v64;
            goto LABEL_65;
          }

          v48 = a3;
          v65 = v42;
          v50 = v69;
          v49 = v70;
          v71 = v45;
          v51 = v45 + v69;
          v52 = v5;
          v53 = v44;
          v54 = v46;
          sub_1CEFCCBDC(v45 + v69, v70, v44, v46);
          sub_1CEFCCBDC(v47, v12, v53, v54);
          v55 = sub_1CF81BCDC(v49, v12);
          v56 = v12;
          if (v52)
          {
            break;
          }

          v57 = v55;
          a3 = v48 + v50;
          v58 = v56;
          sub_1CEFCCC44(v56, v53, v54);
          sub_1CEFCCC44(v49, v53, v54);
          if (v57)
          {
            v73 = 0;
            if (v48 < v68 || a3 >= v68)
            {
              v62 = v67;
              swift_arrayInitWithTakeFrontToBack();
              v12 = v58;
              v23 = v62;
              v24 = v74;
            }

            else
            {
              v12 = v58;
              v23 = v67;
              v24 = v74;
              if (v48 != v68)
              {
                v60 = v67;
                v61 = v74;
                swift_arrayInitWithTakeBackToFront();
                v24 = v61;
                v23 = v60;
              }
            }

            v42 = v65;
            v45 = v71;
            v43 = v69;
            v44 = v53;
            v46 = v54;
            v5 = v73;
            if (v71 <= v66)
            {
              goto LABEL_60;
            }

            goto LABEL_44;
          }

          v42 = v51;
          if (v48 < v71 || a3 >= v71)
          {
            swift_arrayInitWithTakeFrontToBack();
            v42 = v51;
            v12 = v58;
            v24 = v74;
          }

          else
          {
            v12 = v58;
            v24 = v74;
            if (v48 != v71)
            {
              v59 = v74;
              swift_arrayInitWithTakeBackToFront();
              v24 = v59;
              v42 = v51;
            }
          }

          v45 = v42;
          v47 = v67;
          v44 = v53;
          v46 = v54;
          v5 = 0;
          v23 = v68;
          if (v51 <= v66)
          {
            goto LABEL_60;
          }
        }

        sub_1CEFCCC44(v12, &unk_1EC4BF650, &unk_1CF9FCB40);
        sub_1CEFCCC44(v49, &unk_1EC4BF650, &unk_1CF9FCB40);
        v77 = v68;
        v75 = v65;
LABEL_65:
        sub_1CF31720C(&v77, &v76, &v75);
        return;
      }

      v31 = v23;
      v32 = v24;
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = v32;
    v27 = a4;
    v23 = v31;
    goto LABEL_42;
  }

LABEL_68:
  __break(1u);
}

uint64_t sub_1CF8E167C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1CF8E1840(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_1CF8DF3C4(v12, v6, a2, a1);

    MEMORY[0x1D386CDC0](v12, -1, -1);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sub_1CF8E1840(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v55 = result;
  v57 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v30 = 0;
    v31 = a3 + 56;
    v32 = 1 << *(a3 + 32);
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v34 = v33 & *(a3 + 56);
    v35 = (v32 + 63) >> 6;
    v36 = a4 + 56;
    v56 = 0;
    while (1)
    {
LABEL_46:
      if (v34)
      {
        v37 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
      }

      else
      {
        v38 = v30;
        do
        {
          v30 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          if (v30 >= v35)
          {
LABEL_82:

            return sub_1CF8E2168(v55, a2, v56, v4);
          }

          v39 = *(v31 + 8 * v30);
          ++v38;
        }

        while (!v39);
        v37 = __clz(__rbit64(v39));
        v34 = (v39 - 1) & v39;
      }

      v40 = v37 | (v30 << 6);
      v41 = *(v4 + 48) + 16 * v40;
      v42 = *v41;
      v43 = *(v41 + 8);
      v44 = *(a4 + 40);
      sub_1CF9E81D8();
      if (v43)
      {
        if (v43 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v42);
        }

        else
        {
          if (v42)
          {
            v45 = 3;
          }

          else
          {
            v45 = 2;
          }

          MEMORY[0x1D386A470](v45);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      result = sub_1CF9E8228();
      a4 = v57;
      v46 = -1 << *(v57 + 32);
      v47 = result & ~v46;
      v4 = a3;
      if ((*(v36 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
      {
        v48 = ~v46;
        v49 = v43 == 2;
        v50 = v42 == 1 && v43 == 2;
        if (v42)
        {
          v49 = 0;
        }

        while (1)
        {
          v51 = *(v57 + 48) + 16 * v47;
          v52 = *v51;
          v53 = *(v51 + 8);
          if (v53)
          {
            if (v53 == 1)
            {
              if (v43 == 1 && v52 == v42)
              {
                goto LABEL_80;
              }
            }

            else if (v52)
            {
              if (v50)
              {
                goto LABEL_80;
              }
            }

            else if (v49)
            {
              goto LABEL_80;
            }
          }

          else if (!v43 && v52 == v42)
          {
LABEL_80:
            *(v55 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
            if (!__OFADD__(v56, 1))
            {
              ++v56;
              goto LABEL_46;
            }

LABEL_85:
            __break(1u);
            goto LABEL_86;
          }

          v47 = (v47 + 1) & v48;
          if (((*(v36 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
          {
            goto LABEL_46;
          }
        }
      }
    }
  }

  v5 = 0;
  v6 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a3 + 56;
  v56 = 0;
  do
  {
LABEL_6:
    if (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
    }

    else
    {
      v13 = v5;
      do
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_84;
        }

        if (v5 >= v10)
        {
          goto LABEL_82;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
      }

      while (!v14);
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
    }

    v15 = *(a4 + 48) + 16 * (v12 | (v5 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v4 + 40);
    sub_1CF9E81D8();
    if (v17)
    {
      if (v17 == 1)
      {
        MEMORY[0x1D386A470](1);
        MEMORY[0x1D386A4A0](v16);
      }

      else
      {
        if (v16)
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        MEMORY[0x1D386A470](v19);
      }
    }

    else
    {
      MEMORY[0x1D386A470](0);
      sub_1CF9E8208();
    }

    result = sub_1CF9E8228();
    v4 = a3;
    v20 = -1 << *(a3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    a4 = v57;
  }

  while (((1 << v21) & *(v11 + 8 * (v21 >> 6))) == 0);
  v24 = ~v20;
  v25 = v17 == 2;
  v26 = v16 == 1 && v17 == 2;
  if (v16)
  {
    v25 = 0;
  }

  while (1)
  {
    v27 = *(a3 + 48) + 16 * v21;
    v28 = *v27;
    v29 = *(v27 + 8);
    if (!v29)
    {
      break;
    }

    if (v29 == 1)
    {
      if (v17 == 1 && v28 == v16)
      {
        goto LABEL_40;
      }
    }

    else if (v28)
    {
      if (v26)
      {
        goto LABEL_40;
      }
    }

    else if (v25)
    {
      goto LABEL_40;
    }

LABEL_29:
    v21 = (v21 + 1) & v24;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if ((*(v11 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v17 || v28 != v16)
  {
    goto LABEL_29;
  }

LABEL_40:
  v55[v22] |= v23;
  if (!__OFADD__(v56, 1))
  {
    ++v56;
    goto LABEL_6;
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_1CF8E1C98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27B8, &qword_1CFA129C8);
  result = sub_1CF9E7908();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v30 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CF9E81D8();
    v18 = v16;
    sub_1CF9E69C8();
    v19 = sub_1CF9E8228();

    v20 = -1 << *(v9 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    v10 = v30;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v30 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1CF8E1EDC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_30:

    return v11;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E70, &qword_1CFA18030);
  result = sub_1CF9E7908();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  v32 = result;
  v33 = v4;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v34 = (v10 - 1) & v10;
LABEL_15:
    v17 = *(v4 + 48) + 24 * (v14 | (v12 << 6));
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v9 + 40);
    sub_1CF9E81D8();
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v35 = v18;
    sub_1CF9E69C8();

    sub_1CF9E81F8();
    if (v20 != 1)
    {
      MEMORY[0x1D386A470](v19);
    }

    result = sub_1CF9E8228();
    v9 = v32;
    v4 = v33;
    v22 = -1 << *(v32 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v13 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_33;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v32 + 48) + 24 * v25;
    *v30 = v35;
    *(v30 + 8) = v19;
    *(v30 + 16) = v20;
    ++*(v32 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_34;
    }

    v10 = v34;
    if (!v5)
    {
LABEL_29:
      v11 = v9;
      goto LABEL_30;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_29;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v34 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1CF8E2168(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2768, &qword_1CFA12980);
  result = sub_1CF9E7908();
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
  v12 = result + 56;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 16 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v9 + 40);
    sub_1CF9E81D8();
    if (v18)
    {
      if (v18 == 1)
      {
        MEMORY[0x1D386A470](1);
        MEMORY[0x1D386A4A0](v17);
      }

      else
      {
        if (v17)
        {
          v20 = 3;
        }

        else
        {
          v20 = 2;
        }

        MEMORY[0x1D386A470](v20);
      }
    }

    else
    {
      MEMORY[0x1D386A470](0);
      sub_1CF9E8208();
    }

    result = sub_1CF9E8228();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_35;
        }
      }

      goto LABEL_39;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_35:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v9 + 48) + 16 * v24;
    *v29 = v17;
    *(v29 + 8) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_40;
    }

    v4 = v31;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1CF8E23D0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v65[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v3 = a1;
    v65[0] = a1;
    v4 = *(a1 + 16);

    v60 = v4;
    if (!v4)
    {
      goto LABEL_41;
    }

    v5 = 0;
    v6 = v3 + 32;
    v7 = (v2 + 56);
    v64 = (v2 + 56);
    v61 = v3 + 32;
    while (1)
    {
      v8 = *(v6 + 8 * v5);
      v62 = v5 + 1;
      v65[1] = v5 + 1;
      v9 = *(v2 + 40);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v10 = v2;
      sub_1CF9E81D8();
      v63 = v8;
      sub_1CF9E69C8();
      v11 = sub_1CF9E8228();

      v12 = -1 << *(v2 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) != 0)
      {
        break;
      }

LABEL_4:

      v5 = v62;
      v6 = v61;
      if (v62 == v60)
      {
        goto LABEL_41;
      }
    }

    v16 = ~v12;
    while (1)
    {
      v17 = *(*(v2 + 48) + 8 * v13);
      v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v20 = v19;
      if (v18 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v20 == v21)
      {

        goto LABEL_17;
      }

      v23 = sub_1CF9E8048();

      if (v23)
      {
        break;
      }

      v13 = (v13 + 1) & v16;
      v14 = v13 >> 6;
      v7 = v64;
      v15 = 1 << v13;
      v2 = v10;
      if (((1 << v13) & v64[v13 >> 6]) == 0)
      {
        goto LABEL_4;
      }
    }

    v7 = v64;
LABEL_17:
    v25 = v10;
    v26 = *(v10 + 32);
    v56[0] = ((1 << v26) + 63) >> 6;
    v27 = 8 * v56[0];
    v60 = v3;
    if ((v26 & 0x3Fu) > 0xD)
    {
LABEL_45:
      v52 = v27;

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v53 = swift_slowAlloc();
        memcpy(v53, v7, v52);
        sub_1CF8E2FB0(v53, v56[0], v25, v13, v65);
        v55 = v54;

        MEMORY[0x1D386CDC0](v53, -1, -1);

        v2 = v55;
        goto LABEL_42;
      }

      v3 = v60;
    }

    v56[1] = v56;
    MEMORY[0x1EEE9AC00](v24);
    v13 = v56 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v13, v7, v28);
    v29 = *(v25 + 16);
    *(v13 + 8 * v14) &= ~v15;
    v30 = v29 - 1;
    v31 = *(v3 + 16);
    v32 = v62;
    v58 = v13;
    v59 = v31;
LABEL_19:
    v57 = v30;
    if (v32 != v31)
    {
      v33 = v32;
      v62 = v32;
      do
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        if (v33 >= *(v3 + 16))
        {
          goto LABEL_44;
        }

        v34 = *(v61 + 8 * v33++);
        v35 = *(v25 + 40);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v15 = v36;
        sub_1CF9E81D8();
        v63 = v34;
        sub_1CF9E69C8();
        v13 = sub_1CF9E8228();

        v37 = -1 << *(v25 + 32);
        v14 = v13 & ~v37;
        v38 = v14 >> 6;
        v39 = v7[v14 >> 6];
        v40 = 1 << v14;
        if (((1 << v14) & v39) != 0)
        {
          v41 = ~v37;
          while (1)
          {
            v42 = *(*(v10 + 48) + 8 * v14);
            v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v15 = v44;
            v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v13 = v46;
            if (v43 == v45 && v15 == v46)
            {

              goto LABEL_36;
            }

            v48 = sub_1CF9E8048();

            if (v48)
            {
              break;
            }

            v14 = (v14 + 1) & v41;
            v38 = v14 >> 6;
            v40 = 1 << v14;
            if (((1 << v14) & v64[v14 >> 6]) == 0)
            {
              goto LABEL_21;
            }
          }

LABEL_36:
          v31 = v59;
          v49 = v58[v38];
          v58[v38] = v49 & ~v40;
          v3 = v60;
          if ((v49 & v40) != 0)
          {
            v30 = v57 - 1;
            v7 = v64;
            if (__OFSUB__(v57, 1))
            {
              __break(1u);
            }

            v25 = v10;
            v32 = v33;
            if (v57 == 1)
            {

              v2 = MEMORY[0x1E69E7CD0];
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
LABEL_21:

          v31 = v59;
          v3 = v60;
        }

        v7 = v64;
        v25 = v10;
        v32 = v62;
      }

      while (v33 != v31);
    }

    v2 = sub_1CF8E1C98(v58, v56[0], v57, v25);
LABEL_41:
  }

  else
  {

    v2 = MEMORY[0x1E69E7CD0];
  }

LABEL_42:
  v50 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1CF8E2944(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v81[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v81[0] = a1;
    v3 = *(a1 + 16);
    v71 = a1;

    v74 = v3;
    if (!v3)
    {
      goto LABEL_53;
    }

    v4 = 0;
    v72 = v71 + 32;
    v78 = v2;
    v79 = (v2 + 56);
    while (1)
    {
      v5 = v72 + 24 * v4;
      v7 = *v5;
      v6 = *(v5 + 8);
      v8 = *(v5 + 16);
      v81[1] = v4 + 1;
      v9 = *(v2 + 40);
      sub_1CF9E81D8();
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v10 = v7;
      sub_1CF9E69C8();

      v77 = v8;
      v73 = v4 + 1;
      v75 = v10;
      v76 = v6;
      sub_1CF9E81F8();
      if (v8 != 1)
      {
        MEMORY[0x1D386A470](v6);
      }

      v11 = sub_1CF9E8228();
      v12 = -1 << *(v2 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v79[v13 >> 6]) != 0)
      {
        break;
      }

LABEL_4:

      v4 = v73;
      if (v73 == v74)
      {
        goto LABEL_53;
      }
    }

    v16 = ~v12;
    while (1)
    {
      v18 = *(v2 + 48) + 24 * v13;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v24 = v23;
      if (v22 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v24 == v25)
      {
        break;
      }

      v27 = sub_1CF9E8048();

      v2 = v78;
      if ((v27 & 1) == 0)
      {
        goto LABEL_12;
      }

      if ((v21 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_21:
      if (v77)
      {
        goto LABEL_22;
      }

LABEL_12:
      v13 = (v13 + 1) & v16;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if ((v79[v13 >> 6] & (1 << v13)) == 0)
      {
        goto LABEL_4;
      }
    }

    v2 = v78;
    if (v21)
    {
      goto LABEL_21;
    }

LABEL_9:
    v17 = v77;
    if (v20 != v76)
    {
      v17 = 1;
    }

    if (v17)
    {
      goto LABEL_12;
    }

LABEL_22:

    v29 = *(v2 + 32);
    v67[0] = ((1 << v29) + 63) >> 6;
    v30 = 8 * v67[0];
    if ((v29 & 0x3Fu) > 0xD)
    {
LABEL_57:
      v63 = v30;

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v64 = swift_slowAlloc();
        memcpy(v64, v79, v63);
        sub_1CF8E31EC(v64, v67[0], v2, v13, v81);
        v66 = v65;

        MEMORY[0x1D386CDC0](v64, -1, -1);

        v2 = v66;
        goto LABEL_54;
      }
    }

    v67[1] = v67;
    MEMORY[0x1EEE9AC00](v28);
    v32 = v67 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v79, v31);
    v33 = *&v32[8 * v14] & ~v15;
    v69 = v32;
    *&v32[8 * v14] = v33;
    v34 = *(v2 + 16) - 1;
    v35 = v71;
    v36 = *(v71 + 16);
    v37 = v73;
    v70 = v36;
LABEL_24:
    v68 = v34;
    if (v37 != v36)
    {
      v38 = v37;
      v73 = v37;
      do
      {
        if ((v37 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if (v38 >= *(v35 + 16))
        {
          goto LABEL_56;
        }

        v39 = v72 + 24 * v38;
        v41 = *v39;
        v40 = *(v39 + 8);
        v42 = *(v39 + 16);
        v43 = *(v2 + 40);
        sub_1CF9E81D8();
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v74 = v41;
        sub_1CF9E69C8();

        v77 = v42;
        v76 = v40;
        v13 = &v80;
        sub_1CF9E81F8();
        if (v42 != 1)
        {
          MEMORY[0x1D386A470](v40);
        }

        v75 = (v38 + 1);
        v44 = sub_1CF9E8228();
        v45 = -1 << *(v2 + 32);
        v14 = v44 & ~v45;
        v15 = v14 >> 6;
        v46 = 1 << v14;
        if (((1 << v14) & v79[v14 >> 6]) == 0)
        {
LABEL_26:

          goto LABEL_27;
        }

        v47 = ~v45;
        while (1)
        {
          v49 = *(v2 + 48) + 24 * v14;
          v50 = *v49;
          v51 = *(v49 + 8);
          v52 = *(v49 + 16);
          v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v55 = v54;
          v56 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v13 = v57;
          if (v53 == v56 && v55 == v57)
          {
            break;
          }

          v59 = sub_1CF9E8048();

          if ((v59 & 1) == 0)
          {
            goto LABEL_37;
          }

          if ((v52 & 1) == 0)
          {
            goto LABEL_34;
          }

LABEL_46:
          if (v77)
          {
            goto LABEL_47;
          }

LABEL_37:
          v14 = (v14 + 1) & v47;
          v15 = v14 >> 6;
          v2 = v78;
          v46 = 1 << v14;
          if ((v79[v14 >> 6] & (1 << v14)) == 0)
          {
            goto LABEL_26;
          }
        }

        if (v52)
        {
          goto LABEL_46;
        }

LABEL_34:
        v48 = v77;
        if (v51 != v76)
        {
          v48 = 1;
        }

        if (v48)
        {
          goto LABEL_37;
        }

LABEL_47:

        v60 = v69[v15];
        v69[v15] = v60 & ~v46;
        v2 = v78;
        if ((v60 & v46) != 0)
        {
          v34 = v68 - 1;
          v35 = v71;
          v36 = v70;
          v37 = v75;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            v2 = MEMORY[0x1E69E7CD0];
            goto LABEL_53;
          }

          goto LABEL_24;
        }

LABEL_27:
        v38 = v75;
        v35 = v71;
        v37 = v73;
      }

      while (v75 != v70);
    }

    v2 = sub_1CF8E1EDC(v69, v67[0], v68, v2);
LABEL_53:
  }

  else
  {

    v2 = MEMORY[0x1E69E7CD0];
  }

LABEL_54:
  v61 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1CF8E2FB0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v31 = a3 + 56;
  v29 = a5;
  while (2)
  {
    v27 = v7;
    do
    {
      while (1)
      {
        v8 = a5[1];
        v9 = *(*a5 + 16);
        if (v8 == v9)
        {

          sub_1CF8E1C98(a1, a2, v27, a3);
          return;
        }

        if (v8 >= v9)
        {
          __break(1u);
          goto LABEL_23;
        }

        v10 = *(*a5 + 8 * v8 + 32);
        a5[1] = v8 + 1;
        v11 = *(a3 + 40);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        sub_1CF9E81D8();
        v30 = v10;
        sub_1CF9E69C8();
        v12 = sub_1CF9E8228();

        v13 = -1 << *(a3 + 32);
        v14 = v12 & ~v13;
        v15 = v14 >> 6;
        v16 = 1 << v14;
        if (((1 << v14) & *(v31 + 8 * (v14 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        a5 = v29;
      }

      v17 = ~v13;
      while (1)
      {
        v18 = *(*(a3 + 48) + 8 * v14);
        v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v21 = v20;
        if (v19 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v21 == v22)
        {

          goto LABEL_17;
        }

        v24 = sub_1CF9E8048();

        if (v24)
        {
          break;
        }

        v14 = (v14 + 1) & v17;
        v15 = v14 >> 6;
        v16 = 1 << v14;
        if (((1 << v14) & *(v31 + 8 * (v14 >> 6))) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_17:
      a5 = v29;
      v25 = a1[v15];
      a1[v15] = v25 & ~v16;
    }

    while ((v25 & v16) == 0);
    v7 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return;
    }

    if (v27 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1CF8E31EC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v39 = a3 + 56;
  v35 = a5;
  while (2)
  {
    v33 = v6;
    while (2)
    {
      while (2)
      {
        v7 = a5[1];
        v8 = *(*a5 + 16);
        if (v7 == v8)
        {

          sub_1CF8E1EDC(a1, a2, v33, a3);
          return;
        }

        if (v7 >= v8)
        {
          __break(1u);
          goto LABEL_30;
        }

        v9 = *a5 + 24 * v7;
        v10 = *(v9 + 32);
        v11 = *(v9 + 40);
        v12 = *(v9 + 48);
        a5[1] = v7 + 1;
        v13 = *(a3 + 40);
        sub_1CF9E81D8();
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v36 = v10;
        sub_1CF9E69C8();

        v38 = v12;
        v37 = v11;
        sub_1CF9E81F8();
        if (v12 != 1)
        {
          MEMORY[0x1D386A470](v11);
        }

        v14 = sub_1CF9E8228();
        v15 = -1 << *(a3 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v39 + 8 * (v16 >> 6))) == 0)
        {
LABEL_3:

          a5 = v35;
          continue;
        }

        break;
      }

      v19 = ~v15;
      while (1)
      {
        v21 = *(a3 + 48) + 24 * v16;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v27 = v26;
        if (v25 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v27 == v28)
        {
          break;
        }

        v30 = sub_1CF9E8048();

        if ((v30 & 1) == 0)
        {
          goto LABEL_13;
        }

        if ((v24 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_22:
        if (v38)
        {
          goto LABEL_23;
        }

LABEL_13:
        v16 = (v16 + 1) & v19;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if ((*(v39 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
        {
          goto LABEL_3;
        }
      }

      if (v24)
      {
        goto LABEL_22;
      }

LABEL_10:
      v20 = v38;
      if (v23 != v37)
      {
        v20 = 1;
      }

      if (v20)
      {
        goto LABEL_13;
      }

LABEL_23:

      v31 = a1[v17];
      a1[v17] = v31 & ~v18;
      if ((v31 & v18) == 0)
      {
        a5 = v35;
        continue;
      }

      break;
    }

    v6 = v33 - 1;
    a5 = v35;
    if (__OFSUB__(v33, 1))
    {
LABEL_30:
      __break(1u);
      return;
    }

    if (v33 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1CF8E34A4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v10 = sub_1CF7BFED0(a2);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v11;
  if (v9[3] < v15)
  {
    sub_1CF7CBE18(v15, isUniquelyReferenced_nonNull_native);
    v10 = sub_1CF7BFED0(a2);
    if ((v3 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
    v10 = sub_1CF9E8108();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = v10;
    sub_1CF7D34F0();
    v10 = v19;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1CF1D5A08(v10, a2, a1, v9);

    v18 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v17 = v9[7];
  v18 = *(v17 + 8 * v10);
  *(v17 + 8 * v10) = a1;
LABEL_11:
  *v4 = v9;
  return v18;
}

uint64_t sub_1CF8E35C8(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v10 = sub_1CF7BF8D8(a2);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v11;
  if (v9[3] < v15)
  {
    sub_1CF7CBBA8(v15, isUniquelyReferenced_nonNull_native);
    v10 = sub_1CF7BF8D8(a2);
    if ((v3 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v10 = sub_1CF9E8108();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = v10;
    sub_1CF7D338C();
    v10 = v19;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1CF1D5A08(v10, a2, a1, v9);
    v20 = a2;
    v18 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v17 = v9[7];
  v18 = *(v17 + 8 * v10);
  *(v17 + 8 * v10) = a1;
LABEL_11:
  *v4 = v9;
  return v18;
}

void (*sub_1CF8E36EC(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D3869C30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1CF902E94;
  }

  __break(1u);
  return result;
}

void (*sub_1CF8E376C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D3869C30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1CF8E37EC;
  }

  __break(1u);
  return result;
}

unint64_t sub_1CF8E37F4(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_1CF0BA900(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 64 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 72 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF8E3958(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v16 - v8;
  v10 = *(v3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v9, v2, v14);
  sub_1CF9E5E98();
  (*(v10 + 8))(v13, v3);
  return sub_1CF9E75C8();
}

void *sub_1CF8E3AB0@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, _BYTE *a3@<X8>)
{
  result = a2(&v10);
  if (!v3)
  {
    v7 = a1[3];
    v8 = a1[4];
    v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
    result = sub_1CF5A62B4(v9, v7, v8);
    *a3 = v10;
  }

  return result;
}

uint64_t sub_1CF8E3B30(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF8E3BE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

void sub_1CF8E3C48(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_1CF7F8CA8(a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), a3, a4, a5);
  if (!v6)
  {
    *a6 = v8;
  }
}

uint64_t sub_1CF8E3C90(_OWORD *a1, uint64_t a2)
{
  v2 = a1[3];
  v13[2] = a1[2];
  v13[3] = v2;
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  sub_1CEFCCBDC(v13, v12, &qword_1EC4BE6B8, &unk_1CF9FE530);

  v8 = *&v13[0];
  v9 = BYTE8(v13[0]);
  v10 = BYTE9(v13[0]);
  sub_1CEFD0988(*&v13[0], BYTE8(v13[0]), SBYTE9(v13[0]));
  sub_1CEFD0994(v8, v9, v10);

  LOBYTE(v5) = sub_1CF7BC790(v8, v9 | (v10 << 8), v5, v6 | (v7 << 8));
  sub_1CEFD0994(v8, v9, v10);
  return v5 & 1;
}

uint64_t sub_1CF8E3D98(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  v14 = *a2;
  v15[0] = v6;
  *(v15 + 11) = *(a2 + 27);
  if (v4 == *(a2 + 6) && v5 == *(a2 + 7))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1CF9E8048();
  }

  v9 = a2[1];
  v12 = *a2;
  v13[0] = v9;
  *(v13 + 11) = *(a2 + 27);
  sub_1CEFCCBDC(&v14, &v11, &qword_1EC4BE1A0, &unk_1CFA17130);
  sub_1CEFCCC44(&v12, &qword_1EC4BE1A0, &unk_1CFA17130);
  return v8 & 1;
}

uint64_t sub_1CF8E3E58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = *(a3 + 8);
  v8 = *(a3 + 9);
  v9 = *(a3 + 10);
  v16 = *a3;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v13 = sub_1CF2C9F28();
  v14 = *(a2 + 16);
  result = sub_1CF2C0070(&v16, v13, v12, v10, v11);
  if (!v4)
  {
    *a4 = result & 1;
  }

  return result;
}

uint64_t sub_1CF8E3F4C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  v11 = *(a2 + 16);

  v13 = sub_1CF8E43C8(v12);

  v14 = (*(*v11 + 512))(a3, v13, v10, v8, v9);

  if (!v4)
  {
    *a4 = v14;
  }

  return result;
}

uint64_t sub_1CF8E4038@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 40);
  result = sub_1CF1A722C();
  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v4 + 80);

    v8 = sub_1CF7F00D4(v7);

    v9 = sub_1CF8E48FC(v8);

    *a2 = v9;
  }

  return result;
}

void sub_1CF8E40CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *a4;
  v8 = *(a4 + 8);
  v9 = objc_autoreleasePoolPush();
  if (v6 < 0)
  {
    (*(*a2 + 176))();
    sub_1CF7EA114(v6 & 0x7FFFFFFFFFFFFFFFLL, a3, v7, v8);
  }

  else
  {
    sub_1CF7EA114(v6, a3, v7, v8);
  }

  objc_autoreleasePoolPop(v9);
}

uint64_t sub_1CF8E41A0(char a1, void *a2, uint64_t a3, void **a4, unint64_t a5, uint64_t (*a6)(void *), uint64_t a7)
{
  if ((a1 & 1) == 0)
  {
    return a6(a2);
  }

  v12 = *a4;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a6;
  v13[4] = a7;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = v12;
  v14[4] = a5;
  v14[5] = sub_1CF901D00;
  v14[6] = v13;
  v15 = a2;

  v16 = v12;
  sub_1CEFD09A0(a5);

  sub_1CF817EE4(v16, a5, sub_1CF90343C, v14);
}

unint64_t sub_1CF8E42DC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF8E43C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1CF4C6170();
  result = MEMORY[0x1D3869250](v2, &type metadata for VFSItemID, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 16;
      sub_1CF6E9500(v8, v6, v7);
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1CF8E4440(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  v4 = v3;
  v5 = sub_1CEFCCCA4(&qword_1EDEA3660, type metadata accessor for URLResourceKey);
  result = MEMORY[0x1D3869250](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1CF6E94D8(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1CF8E44FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D3869250](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1CF6E9AF0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1CF8E4594(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0670, &qword_1CFA129D0);
  v4 = sub_1CEFCCCEC(&qword_1EC4C0678, &qword_1EC4C0670, &qword_1CFA129D0);
  result = MEMORY[0x1D3869250](v2, v3, v4);
  v13 = result;
  if (v2)
  {
    v6 = (a1 + 56);
    do
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v9 = *(v6 - 3);
      v10 = *v6;
      v6 += 32;
      sub_1CF1FB2C0(v9, v8, v7, v10);
      sub_1CF6EA118(v11, v9, v8, v7, v10);
      sub_1CF484340(v11[0], v11[1], v11[2], v12);
      --v2;
    }

    while (v2);
    return v13;
  }

  return result;
}

uint64_t sub_1CF8E4694(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4EF0, &unk_1CFA05A90);
  v4 = sub_1CEFCCCEC(qword_1EDEAA350, &unk_1EC4C4EF0, &unk_1CFA05A90);
  result = MEMORY[0x1D3869250](v2, v3, v4);
  v9 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = v6[1];
      v10 = *v6;
      v11[0] = v7;
      *(v11 + 10) = *(v6 + 26);
      sub_1CF6EA310(v8, &v10);
      v6 += 3;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1CF8E4764(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BD0, &unk_1CF9FE500);
  v4 = sub_1CEFCCCEC(&qword_1EC4C4E78, &unk_1EC4C4BD0, &unk_1CF9FE500);
  result = MEMORY[0x1D3869250](v2, v3, v4);
  v8 = result;
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      sub_1CF6EA8A8(v7, *(v6 - 2), *(v6 - 1), *v6);

      v6 += 24;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1CF8E4840(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v4 = v3;
  v5 = sub_1CEFCCCA4(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier);
  result = MEMORY[0x1D3869250](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1CF6EA6C4(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1CF8E48FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFC10, &qword_1CF9FE510);
  v4 = sub_1CEFCCCEC(qword_1EDEA7220, &unk_1EC4BFC10, &qword_1CF9FE510);
  result = MEMORY[0x1D3869250](v2, v3, v4);
  v13 = result;
  if (v2)
  {
    v6 = (a1 + 41);
    do
    {
      v7 = *v6;
      v8 = *(v6 - 1);
      v9 = *(v6 - 9);
      sub_1CEFD0988(v9, *(v6 - 1), *v6);
      sub_1CF6E9D5C(&v10, v9, v8 | (v7 << 8));
      sub_1CEFD0994(v10, v11, v12);
      v6 += 16;
      --v2;
    }

    while (v2);
    return v13;
  }

  return result;
}

uint64_t sub_1CF8E49EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1CEFCCCEC(&unk_1EC4C4F80, &unk_1EC4BF650, &unk_1CF9FCB40);
  result = MEMORY[0x1D3869250](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1CEFCCBDC(v13, v6, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CF6EAC38(v9, v6);
      sub_1CEFCCC44(v9, &unk_1EC4BF650, &unk_1CF9FCB40);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

void sub_1CF8E4B7C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(unint64_t *))
{
  v32 = a4;
  v8 = sub_1CF9E5248();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1CF9E5268();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v15 = sub_1CF7D55FC(sub_1CF355FA4, v28, a2, a3);
  if (v4)
  {
    return;
  }

  v16 = v15;
  v17 = v32;
  v27 = v14;
  if (![v15 next])
  {
    goto LABEL_15;
  }

  v25 = v11;
  v26 = v10;
  v18 = v17;
  while (1)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = [v16 longAtIndex_];
    if (v20 == 0x8000000000000000)
    {
      v21 = 2;
      v20 = 1;
      goto LABEL_12;
    }

    if (v20)
    {
      break;
    }

    v21 = 2;
LABEL_12:
    v30 = v20;
    v31 = v21;
    v18(&v30);
    objc_autoreleasePoolPop(v19);
    if (([v16 next] & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = 1;
    goto LABEL_12;
  }

  v20 = -v20;
  if (!HIDWORD(v20))
  {
    v21 = 0;
    goto LABEL_12;
  }

  sub_1CF9E51B8();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
  v22 = v26;
  v23 = v27;
  sub_1CF9E57D8();
  sub_1CF9E50D8();
  (*(v25 + 8))(v23, v22);
  swift_willThrow();
  objc_autoreleasePoolPop(v19);
LABEL_15:
}

uint64_t sub_1CF8E4E8C()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF83204C(v3, v0 + v2, v4);
}

uint64_t sub_1CF8E4F20(uint64_t a1)
{
  v2 = sub_1CF9E6938();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v24 = *a1;
  *&v24[9] = *(a1 + 9);
  sub_1CF9E6948();
  sub_1CF9E6918();
  v7 = sub_1CF9E68C8();
  v9 = v8;

  v10 = *(v3 + 8);
  result = v10(v6, v2);
  if (v9 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = *(a1 + 56);
  *v24 = *(a1 + 40);
  *&v24[16] = v12;
  v22 = *v24;
  v23 = v12;
  sub_1CEFCCBDC(v24, v21, &qword_1EC4BEA18, &qword_1CF9FFB00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA18, &qword_1CF9FFB00);
  sub_1CF9E6948();
  sub_1CF9E6918();
  v13 = sub_1CF9E68C8();
  v15 = v14;

  result = v10(v6, v2);
  if (v15 >> 60 == 15)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v16 = sub_1CF9E5B48();
  v17 = sub_1CF9E5B48();
  if (*(a1 + 88))
  {
    v18 = *(a1 + 80);
    v19 = sub_1CF9E6888();
  }

  else
  {
    v19 = 0;
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v16 metadataVersion:v17 lastEditorDeviceName:v19];
  sub_1CEFE48D8(v13, v15);
  sub_1CEFE48D8(v7, v9);

  return v20;
}

uint64_t sub_1CF8E518C(uint64_t a1, void *a2)
{
  v3 = v2;
  v100 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v99 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v98 = &v83 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v97 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v83 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v95 = *(v15 - 8);
  v16 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v83 - v20;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v83 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v83 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v35 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v103 = &v83 - v31;
    v85 = v30;
    v86 = v21;
    v94 = v34;
    v87 = v33;
    v88 = v32;
    v83 = v3;
    v108 = MEMORY[0x1E69E7CC0];
    sub_1CF9E7A48();
    v37 = -1 << *(a1 + 32);
    v104 = a1 + 56;
    result = sub_1CF9E77C8();
    v38 = result;
    v39 = 0;
    v105 = *(a1 + 36);
    v84 = a1 + 64;
    v92 = v15;
    v93 = v25;
    v90 = v35;
    v91 = v28;
    v101 = a1;
    while ((v38 & 0x8000000000000000) == 0 && v38 < 1 << *(a1 + 32))
    {
      v42 = v38 >> 6;
      if ((*(v104 + 8 * (v38 >> 6)) & (1 << v38)) == 0)
      {
        goto LABEL_36;
      }

      if (v105 != *(a1 + 36))
      {
        goto LABEL_37;
      }

      v102 = 1 << v38;
      v43 = v103;
      sub_1CEFCCBDC(*(a1 + 48) + *(v95 + 72) * v38, v103, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CEFCCBDC(v43, v28, &unk_1EC4BF650, &unk_1CF9FCB40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v89 = v39;
        sub_1CEFE55D0(v28, v99, &unk_1EC4BFD70, &qword_1CFA12AC0);
        v44 = v43;
        v45 = v87;
        sub_1CEFCCBDC(v44, v87, &unk_1EC4BF650, &unk_1CF9FCB40);
        v46 = swift_getEnumCaseMultiPayload() == 1;
        v47 = v45;
        if (v46)
        {
          v48 = v98;
          sub_1CEFE55D0(v47, v98, &unk_1EC4BFD70, &qword_1CFA12AC0);
          v54 = v94;
          sub_1CF46AEEC(1, v94);
          sub_1CEFCCC44(v48, &unk_1EC4BFD70, &qword_1CFA12AC0);
        }

        else
        {
          v53 = v97;
          sub_1CEFE55D0(v47, v97, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          v54 = v94;
          sub_1CF46A9E4(1, v94);
          sub_1CEFCCC44(v53, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        }

        swift_storeEnumTagMultiPayload();
        v55 = v88;
        sub_1CEFCCBDC(v54, v88, &unk_1EC4BF650, &unk_1CF9FCB40);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v56 = v98;
          sub_1CEFE55D0(v55, v98, &unk_1EC4BFD70, &qword_1CFA12AC0);
          v106 = 0x205046206D6F7266;
          v107 = 0xE800000000000000;
          v57 = sub_1CF467CBC();
          MEMORY[0x1D3868CC0](v57);

          v58 = v106;
          v59 = v107;
          sub_1CEFCCC44(v56, &unk_1EC4BFD70, &qword_1CFA12AC0);
        }

        else
        {
          v67 = v97;
          sub_1CEFE55D0(v55, v97, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          v106 = 0x205346206D6F7266;
          v107 = 0xE800000000000000;
          v68 = sub_1CF46879C();
          MEMORY[0x1D3868CC0](v68);

          v58 = v106;
          v59 = v107;
          sub_1CEFCCC44(v67, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        }

        sub_1CEFCCC44(v94, &unk_1EC4BF650, &unk_1CF9FCB40);
        v69 = v58;
        v70 = v99;
        sub_1CF8DAA38(v100, v69, v59);

        sub_1CEFCCC44(v70, &unk_1EC4BFD70, &qword_1CFA12AC0);
        v39 = v89;
      }

      else
      {
        v89 = v38 >> 6;
        sub_1CEFE55D0(v28, v96, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        v49 = v43;
        v50 = v85;
        sub_1CEFCCBDC(v49, v85, &unk_1EC4BF650, &unk_1CF9FCB40);
        v46 = swift_getEnumCaseMultiPayload() == 1;
        v51 = v50;
        if (v46)
        {
          v52 = v98;
          sub_1CEFE55D0(v51, v98, &unk_1EC4BFD70, &qword_1CFA12AC0);
          v61 = v93;
          sub_1CF46AEEC(1, v93);
          sub_1CEFCCC44(v52, &unk_1EC4BFD70, &qword_1CFA12AC0);
        }

        else
        {
          v60 = v97;
          sub_1CEFE55D0(v51, v97, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          v61 = v93;
          sub_1CF46A9E4(1, v93);
          sub_1CEFCCC44(v60, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        }

        swift_storeEnumTagMultiPayload();
        v62 = v86;
        sub_1CEFCCBDC(v61, v86, &unk_1EC4BF650, &unk_1CF9FCB40);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v63 = v98;
          sub_1CEFE55D0(v62, v98, &unk_1EC4BFD70, &qword_1CFA12AC0);
          v106 = 0x205046206D6F7266;
          v107 = 0xE800000000000000;
          v64 = sub_1CF467CBC();
          MEMORY[0x1D3868CC0](v64);

          v65 = v106;
          v66 = v107;
          sub_1CEFCCC44(v63, &unk_1EC4BFD70, &qword_1CFA12AC0);
        }

        else
        {
          v71 = v97;
          sub_1CEFE55D0(v62, v97, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          v106 = 0x205346206D6F7266;
          v107 = 0xE800000000000000;
          v72 = sub_1CF46879C();
          MEMORY[0x1D3868CC0](v72);

          v65 = v106;
          v66 = v107;
          sub_1CEFCCC44(v71, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        }

        sub_1CEFCCC44(v93, &unk_1EC4BF650, &unk_1CF9FCB40);
        v73 = v65;
        v74 = v96;
        sub_1CF8D9998(v100, v73, v66);

        sub_1CEFCCC44(v74, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        v42 = v89;
      }

      sub_1CEFCCC44(v103, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CF9E7A18();
      v75 = *(v108 + 16);
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      result = sub_1CF9E7A28();
      a1 = v101;
      v40 = 1 << *(v101 + 32);
      if (v38 >= v40)
      {
        goto LABEL_38;
      }

      v76 = *(v104 + 8 * v42);
      if ((v76 & v102) == 0)
      {
        goto LABEL_39;
      }

      if (v105 != *(v101 + 36))
      {
        goto LABEL_40;
      }

      v77 = v76 & (-2 << (v38 & 0x3F));
      if (v77)
      {
        v40 = __clz(__rbit64(v77)) | v38 & 0x7FFFFFFFFFFFFFC0;
        v41 = v90;
      }

      else
      {
        v78 = v42 << 6;
        v79 = v42 + 1;
        v80 = (v84 + 8 * v42);
        v41 = v90;
        while (v79 < (v40 + 63) >> 6)
        {
          v82 = *v80++;
          v81 = v82;
          v78 += 64;
          ++v79;
          if (v82)
          {
            result = sub_1CF0663D8(v38, v105, 0);
            a1 = v101;
            v40 = __clz(__rbit64(v81)) + v78;
            goto LABEL_4;
          }
        }

        result = sub_1CF0663D8(v38, v105, 0);
        a1 = v101;
      }

LABEL_4:
      ++v39;
      v38 = v40;
      v28 = v91;
      if (v39 == v41)
      {
        return v108;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  return result;
}

unint64_t sub_1CF8E5BBC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFC10, &qword_1CF9FE510);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  v14 = 16 * v12;
  v15 = &v13[16 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF8E5C8C()
{
  swift_weakInit();
  swift_weakAssign();
  v1 = objc_opt_self();
  v2 = [v1 defaultStore];
  v3 = [v2 targetedSPSErrorsPayload];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  v4 = sub_1CF2C8330();

  *(v0 + 24) = v4;
  v5 = [v1 defaultStore];
  [v5 addObserver_];

  return v0;
}

uint64_t sub_1CF8E5D7C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (fpfs_is_internal_build() && (v8 = objc_allocWithZone(MEMORY[0x1E695E000]), v9 = sub_1CF9E6888(), v10 = [v8 initWithSuiteName_], v9, v10))
  {
    v11 = sub_1CF9E6888();
    v12 = [v10 objectForKey_];

    if (v12)
    {
      sub_1CF9E7728();
      swift_unknownObjectRelease();
      sub_1CEFCCC44(v23, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      v13 = sub_1CF9E6888();
      v14 = [v10 stringForKey_];

      if (v14)
      {
        v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v17 = v16;

        v18 = HIBYTE(a4);
        if (HIBYTE(a4))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v15 = 0;
        v17 = 0;
        v18 = HIBYTE(a4);
        if (HIBYTE(a4))
        {
LABEL_6:
          if (v18 == 1)
          {
            if (v17)
            {
              if (v15 != 0x687370616E737066 || v17 != 0xEA0000000000746FLL)
              {
                goto LABEL_36;
              }

              goto LABEL_34;
            }

LABEL_35:

            v19 = 0;
            return v19 & 1;
          }

          v22 = a4 & 0xFFFFFF;
          if (!(a3 | a2 | a1) && !v22)
          {
            if (!v17)
            {
              goto LABEL_35;
            }

            if (v15 != 1801678950 || v17 != 0xE400000000000000)
            {
              goto LABEL_36;
            }

LABEL_34:

            v19 = 1;
            return v19 & 1;
          }

          if (a1 != 1 || a3 | a2 || v22)
          {
            if (!v17)
            {
              goto LABEL_35;
            }

            if (v15 != 0x72656469766F7270 || v17 != 0xE800000000000000)
            {
              goto LABEL_36;
            }

            goto LABEL_34;
          }

          if (!v17)
          {
            goto LABEL_35;
          }

          v21 = 0x80000001CFA3DCA0;
          if (v15 != 0xD000000000000014)
          {
LABEL_36:
            v19 = sub_1CF9E8048();

            return v19 & 1;
          }

LABEL_17:
          if (v17 == v21)
          {
            goto LABEL_34;
          }

          goto LABEL_36;
        }
      }

      if (!v17)
      {
        goto LABEL_35;
      }

      v21 = 0xED000073726F7272;
      if (v15 != 0x4563696D616E7964)
      {
        goto LABEL_36;
      }

      goto LABEL_17;
    }

    memset(v23, 0, sizeof(v23));
    sub_1CEFCCC44(v23, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v19 = 1;
  }

  else
  {
    v19 = 1;
  }

  return v19 & 1;
}

void sub_1CF8E60B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = 0;
  v27 = a4;
  v24 = a2;
  v25 = a1;
  v4 = 0;
  v28 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v30 = (v8 - 1) & v8;
LABEL_11:
    v29 = &v23;
    v13 = v10 | (v4 << 6);
    v14 = *(v28 + 48) + 16 * v13;
    v16 = *(v14 + 9);
    v17 = *(*(v28 + 56) + 16 * v13 + 8);
    v18 = *(v14 + 8);
    v31 = *v14;
    v15 = v31;
    v32 = v18;
    v33 = v16;
    MEMORY[0x1EEE9AC00](a1);
    v22[2] = &v31;
    sub_1CEFD0988(v15, v18, v16);
    swift_bridgeObjectRetain_n();
    sub_1CEFD0988(v15, v18, v16);
    v19 = v34;
    v20 = sub_1CF7F74E4(sub_1CF902DE4, v22, v27);
    v34 = v19;
    sub_1CEFD0994(v15, v18, v16);
    swift_bridgeObjectRelease_n();
    sub_1CEFD0994(v15, v18, v16);
    v8 = v30;
    if (v20)
    {
      *(v25 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1CF4F59C0(v25, v24, v26, v28);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v30 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1CF8E62D8(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v11 = sub_1CF8DF328(v14, v7, a1, a2);
      MEMORY[0x1D386CDC0](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_1CF8E60B8((v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

unint64_t sub_1CF8E6498(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}